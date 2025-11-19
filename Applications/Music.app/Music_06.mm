uint64_t sub_10008DF34()
{

  return swift_deallocObject();
}

uint64_t sub_10008DF84()
{

  return swift_deallocObject();
}

uint64_t sub_10008DFBC()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008E09C()
{
  v1 = *(sub_10010FC20(&qword_101184718) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008E1D0()
{
  v1 = *(sub_10010FC20(&qword_101184718) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008E2FC()
{

  return swift_deallocObject();
}

uint64_t sub_10008E334()
{

  return swift_deallocObject();
}

uint64_t sub_10008E36C()
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

uint64_t sub_10008E400()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008E438()
{
  v1 = sub_10010FC20(&qword_10118D1C0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10008E5A8()
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

uint64_t sub_10008E6D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008E710()
{
  v1 = type metadata accessor for Song();
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

uint64_t sub_10008E864()
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

uint64_t sub_10008E99C()
{

  return swift_deallocObject();
}

uint64_t sub_10008E9D4()
{

  return swift_deallocObject();
}

uint64_t sub_10008EA0C()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008EAF8()
{
  v1 = *(sub_10010FC20(&qword_101193E08) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008EC2C()
{
  v1 = *(sub_10010FC20(&qword_101193E08) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008ED58()
{

  return swift_deallocObject();
}

uint64_t sub_10008ED90()
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

uint64_t sub_10008EEB0()
{

  return swift_deallocObject();
}

uint64_t sub_10008F07C()
{

  return swift_deallocObject();
}

uint64_t sub_10008F0C4()
{

  return swift_deallocObject();
}

uint64_t sub_10008F130()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
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

uint64_t sub_10008F24C()
{
  v1 = sub_10010FC20(&qword_101194000);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10008F2E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008F31C()
{
  v1 = _s11ArtworkInfoV10PropertiesVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 28);
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_10008F480()
{
  v1 = _s11ArtworkInfoV10PropertiesVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for UIView.Corner();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_10008F5F8()
{

  return swift_deallocObject();
}

uint64_t sub_10008F630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s11ArtworkInfoV10PropertiesVMa(0);
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

uint64_t sub_10008F6F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s11ArtworkInfoV10PropertiesVMa(0);
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

uint64_t sub_10008F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101188920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UIView.Corner();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10008F8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_101188920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UIView.Corner();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10008F9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194498);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194498);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008FAA8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v1);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008FB38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1005418BC(v1, v2);
}

uint64_t sub_10008FB78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008FBB0()
{

  return swift_deallocObject();
}

uint64_t sub_10008FBF4(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v8 = *(a1 + 128);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  sub_1000089F8(v7, v6, &qword_10117FF40);
  return sub_1005415F4(v7);
}

uint64_t sub_10008FC6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008FD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008FD7C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008FDE4()
{
  v1 = *(type metadata accessor for ReportConcern.ContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_10010FC20(&qword_101194498);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10008FF40()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10008FF78()
{

  sub_10000959C(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10008FFD0()
{

  swift_unknownObjectRelease();

  sub_10000959C(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_100090038()
{

  return swift_deallocObject();
}

uint64_t sub_1000900B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000900F0()
{

  return swift_deallocObject();
}

uint64_t sub_10009012C()
{
  sub_10000959C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10009016C()
{

  return swift_deallocObject();
}

uint64_t sub_1000901A4()
{

  return swift_deallocObject();
}

uint64_t sub_100090210(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000902CC(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10009037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DragDropToFolder.Origin(0);
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

uint64_t sub_100090434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DragDropToFolder.Origin(0);
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

uint64_t sub_1000904EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100090558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000905C8()
{
  v1 = type metadata accessor for DragDropToFolder.Destination(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v2 + *(v1 + 24);
  swift_unknownObjectWeakDestroy();
  v7 = *(v6 + 48);
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

uint64_t sub_100090748()
{
  v1 = type metadata accessor for Playlist.Folder();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000907E4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10009081C()
{

  return swift_deallocObject();
}

uint64_t sub_10009085C()
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

uint64_t sub_100090994()
{

  return swift_deallocObject();
}

uint64_t sub_1000909CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100090A04(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_100090AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of SongFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100090AE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100090B20()
{
  if (*(v0 + 40))
  {
    sub_10000959C(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_100090B78()
{

  return swift_deallocObject();
}

uint64_t sub_100090BB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100090BF8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100090C30()
{

  return swift_deallocObject();
}

uint64_t sub_100090C70()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100090CD0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100090D0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100090D54()
{

  return swift_deallocObject();
}

uint64_t sub_100090E04()
{
  v1 = type metadata accessor for MetricsEvent.Page(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = *(v1 + 24);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100090F84()
{

  return swift_deallocObject();
}

uint64_t sub_100090FCC()
{
  sub_1001109D0(&qword_1011950D0);
  _s14SheetPresenterV10DataSourceCMa();
  sub_1001109D0(&qword_1011950E8);
  type metadata accessor for Track();
  sub_100561A90();
  sub_100561B14(&qword_1011950F8, &type metadata accessor for Track);
  swift_getOpaqueTypeConformance2();
  sub_100561B14(&qword_1011950C8, _s14SheetPresenterV10DataSourceCMa);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009111C()
{
  v1 = (type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for Artwork();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = type metadata accessor for Artwork.CropStyle();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_100091274()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000912AC()
{
  v1 = (type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for Artwork();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  v5 = type metadata accessor for Artwork.CropStyle();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_100091424()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009145C()
{

  return swift_deallocObject();
}

uint64_t sub_10009149C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000914DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_101195458);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100091598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_101195458);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000916A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000916DC()
{

  return swift_deallocObject();
}

uint64_t sub_100091724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000917E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000918A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000918F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Album();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000919A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Album();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100091A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101195BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091BD0()
{

  return swift_deallocObject();
}

uint64_t sub_100091D10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_100091D4C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1005848A4(v1);
}

uint64_t sub_100091D7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100091DCC()
{

  return swift_deallocObject();
}

uint64_t sub_100091E20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100091E58()
{

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100091EC8()
{

  return swift_deallocObject();
}

uint64_t sub_100091F00()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100091F70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100091FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119A070);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100092028(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119A070);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000920A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_101196320);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100092160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_101196320);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100092310(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101196768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000923C0()
{
  sub_1001109D0(&qword_101196790);
  sub_100596530(&qword_101196798, &qword_101196790, &unk_100ED5270, sub_1005965B4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Playlist();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100092510(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Playlist();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009260C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100092644()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100092684()
{

  return swift_deallocObject();
}

uint64_t sub_1000926BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000926F4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009273C()
{

  return swift_deallocObject();
}

uint64_t sub_100092774()
{

  return swift_deallocObject();
}

uint64_t sub_1000927BC()
{

  return swift_deallocObject();
}

uint64_t sub_100092804()
{

  return swift_deallocObject();
}

uint64_t sub_100092844()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100092950()
{

  return swift_deallocObject();
}

uint64_t sub_100092990()
{

  return swift_deallocObject();
}

id sub_1000929F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

uint64_t sub_100092A38()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100092A70()
{

  return swift_deallocObject();
}

uint64_t sub_100092AB8()
{

  return swift_deallocObject();
}

uint64_t sub_100092BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100092C18()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100092C50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100092C88()
{
  v1 = *(sub_10010FC20(&qword_101196FA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_10010FC20(&unk_101196F90);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100092DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100092E10()
{
  v1 = *(sub_10010FC20(&qword_101196FA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_10010FC20(&unk_101196F90);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100092F50()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100092FCC()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
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

        v7 = _s16ActionButtonViewV5ModelVMa(0);
        v8 = v3 + *(v7 + 48);
        v9 = _s12ClickMetricsVMa(0);
        v10 = *(*(v9 - 8) + 48);
        if (!v10(v8, 1, v9))
        {
          v18 = *(v9 + 20);
          v11 = type metadata accessor for URL();
          v16 = *(v11 - 8);
          v17 = v11;
          if (!(*(v16 + 48))(&v8[v18], 1))
          {
            (*(v16 + 8))(&v8[v18], v17);
          }

          if (*&v8[*(v9 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        v12 = v3 + *(v7 + 52);
        if (!v10(v12, 1, v9))
        {
          v13 = *(v9 + 20);
          v14 = type metadata accessor for URL();
          v15 = *(v14 - 8);
          if (!(*(v15 + 48))(&v12[v13], 1, v14))
          {
            (*(v15 + 8))(&v12[v13], v14);
          }

          if (*&v12[*(v9 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        break;
      case 0:

        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100093370()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
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

        v7 = _s16ActionButtonViewV5ModelVMa(0);
        v8 = v3 + *(v7 + 48);
        v9 = _s12ClickMetricsVMa(0);
        v10 = *(*(v9 - 8) + 48);
        if (!v10(v8, 1, v9))
        {
          v18 = *(v9 + 20);
          v11 = type metadata accessor for URL();
          v16 = *(v11 - 8);
          v17 = v11;
          if (!(*(v16 + 48))(&v8[v18], 1))
          {
            (*(v16 + 8))(&v8[v18], v17);
          }

          if (*&v8[*(v9 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        v12 = v3 + *(v7 + 52);
        if (!v10(v12, 1, v9))
        {
          v13 = *(v9 + 20);
          v14 = type metadata accessor for URL();
          v15 = *(v14 - 8);
          if (!(*(v15 + 48))(&v12[v13], 1, v14))
          {
            (*(v15 + 8))(&v12[v13], v14);
          }

          if (*&v12[*(v9 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        break;
      case 0:

        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100093728()
{
  v1 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000937B0()
{
  v1 = type metadata accessor for RecentlyAddedMusicItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6, 1, v14))
  {
    (*(v15 + 8))(v0 + v6, v14);
  }

  (*(v9 + 8))(v0 + v10, v8);
  v16 = v0 + v13;
  v17 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v17 - 8) + 48))(v0 + v13, 1, v17))
  {
    if (*(v16 + 8) >= 0xDuLL)
    {
    }

    v18 = v16 + *(v17 + 20);
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
  }

  return swift_deallocObject();
}

uint64_t sub_100093BF0()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100093CCC()
{

  return swift_deallocObject();
}

id sub_100093D04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100093D4C()
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

uint64_t sub_100093DC8()
{

  return swift_deallocObject();
}

uint64_t sub_100093E10()
{

  return swift_deallocObject();
}

uint64_t sub_100093E98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100093F54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009400C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100094044()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009408C()
{

  return swift_deallocObject();
}

uint64_t sub_1000940CC()
{

  return swift_deallocObject();
}

uint64_t sub_100094104()
{

  return swift_deallocObject();
}

uint64_t sub_10009414C()
{

  return swift_deallocObject();
}

uint64_t sub_100094188()
{

  return swift_deallocObject();
}

uint64_t sub_100094230()
{

  return swift_deallocObject();
}

uint64_t sub_100094278()
{

  return swift_deallocObject();
}

uint64_t sub_1000942C0()
{

  return swift_deallocObject();
}

uint64_t sub_100094330()
{

  return swift_deallocObject();
}

uint64_t sub_100094368()
{

  return swift_deallocObject();
}

uint64_t sub_100094408(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101197920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100094470()
{

  sub_1002AC8A4(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000944D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100094508()
{

  return swift_deallocObject();
}

uint64_t sub_100094540()
{

  return swift_deallocObject();
}

uint64_t sub_100094580()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000945BC()
{

  return swift_deallocObject();
}

uint64_t sub_10009462C()
{

  return swift_deallocObject();
}

uint64_t sub_100094674()
{

  return swift_deallocObject();
}

uint64_t sub_1000946B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000946EC()
{

  return swift_deallocObject();
}

uint64_t sub_10009473C()
{

  return swift_deallocObject();
}

uint64_t sub_10009478C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009494C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100094A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8MetadataV13ConfigurationOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_100094AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8MetadataV13ConfigurationOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_100094BB4@<X0>(_BYTE *a1@<X8>)
{
  sub_1005FF400();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100094C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10119A070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100094D0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119A070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100094E30()
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

uint64_t sub_100094F68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100094FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArtworkImage.Info(0);
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
    v11 = *(a1 + a3[11] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10010FC20(&unk_10118D2F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[16];
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
    v15 = a3[23];
    goto LABEL_11;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[24];

  return v18(v19, a2, v17);
}

uint64_t sub_100095184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArtworkImage.Info(0);
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
    *(a1 + a4[11] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10010FC20(&unk_10118D2F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[16];
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
    v15 = a4[23];
    goto LABEL_9;
  }

  v17 = sub_10010FC20(&qword_1011854E0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[24];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100095368(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for SymbolRenderingMode();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119A070);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_10010FC20(&qword_10119F0B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1000954EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SymbolRenderingMode();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119A070);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_10119F0B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100095670(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ArtworkImage.Info(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10010FC20(&unk_10118D2F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_10010FC20(&qword_10119F0B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_1000957F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ArtworkImage.Info(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&unk_10118D2F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_10119F0B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100095978(uint64_t a1, uint64_t a2, int *a3)
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
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10010FC20(&unk_10118D2F0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = sub_10010FC20(&qword_10119F0B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100095B08(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10010FC20(&unk_10118D2F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = sub_10010FC20(&qword_10119F0B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100095CEC()
{
  v1 = type metadata accessor for SplitPercentageLayout();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100095D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10118F518);
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_10010FC20(&qword_10119A070);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100095EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_10118F518);
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
    v11 = sub_10010FC20(&qword_10119A070);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100095FF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10010FC20(&qword_10119A070);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000960BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119A070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009616C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100096228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000962D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10119A070);
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
    v12 = sub_10010FC20(&qword_1011991A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000963E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10010FC20(&qword_10119A070);
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
    v14 = sub_10010FC20(&qword_1011991A8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_100096540()
{
  sub_1001109D0(&qword_101198C08);
  _s17ContextMenuButtonVMa(255);
  sub_100615550(&qword_101198C38, &qword_101198C08, &unk_100ED7788, sub_100615DF4);
  sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100096624()
{
  sub_1001109D0(&qword_101198E18);
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184C80);
  sub_1001109D0(&qword_101198E20);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198E28);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_101198E30);
  sub_1001109D0(&qword_101198E38);
  sub_1001109D0(&qword_101198E40);
  sub_1001109D0(&qword_101198E48);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30);
  type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198C48);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s17ContextMenuButtonVMa(255);
  swift_getOpaqueTypeConformance2();
  sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100020674(&unk_1011914C0, &unk_101184E90);
  return swift_getWitnessTable();
}

uint64_t sub_100096D38()
{
  sub_1001109D0(&qword_101199518);
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1006190C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100096E30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100096E80()
{
  v1 = type metadata accessor for TVEpisode();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100096F08()
{
  v1 = type metadata accessor for TVEpisode();
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

uint64_t sub_100097058()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100097094()
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

uint64_t sub_1000971CC()
{

  return swift_deallocObject();
}

uint64_t sub_100097204()
{
  v1 = type metadata accessor for TVEpisode();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000972D8@<X0>(uint64_t a1@<X8>)
{
  result = TVSeason.number.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10009730C()
{

  return swift_deallocObject();
}

uint64_t sub_100097344()
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

uint64_t sub_1000973C8(char *a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Playlist();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for Playlist.Entry();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Song();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_100097534(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Playlist();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for Playlist.Entry();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Song();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100097704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DragDropToLibrary.Origin(0);
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

uint64_t sub_1000977BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DragDropToLibrary.Origin(0);
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

uint64_t sub_100097874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000978E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100097950()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100097990()
{

  return swift_deallocObject();
}

uint64_t sub_1000979C8()
{
  v1 = sub_10010FC20(&qword_101194000);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100097A5C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100097A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10010FC20(&qword_101199B50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100097B5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10010FC20(&qword_101199B50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100097C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101183A20);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100097CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101183A20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100097E20()
{

  return swift_deallocObject();
}

uint64_t sub_100097E58()
{
  v1 = *(*(_s16ActionButtonViewVMa(0) - 8) + 80);

  v2 = (v0 + ((v1 + 32) & ~v1));

  if (v2[8])
  {
  }

  if (v2[10])
  {
  }

  if (v2[16])
  {
  }

  v3 = _s16ActionButtonViewV5ModelVMa(0);
  v4 = v2 + *(v3 + 48);
  v5 = _s12ClickMetricsVMa(0);
  v6 = *(*(v5 - 8) + 48);
  if (!v6(v4, 1, v5))
  {
    v7 = *(v5 + 20);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(&v4[v7], 1, v8))
    {
      (*(v9 + 8))(&v4[v7], v8);
    }

    if (*&v4[*(v5 + 28) + 8] >= 0xDuLL)
    {
    }
  }

  v10 = v2 + *(v3 + 52);
  if (!v6(v10, 1, v5))
  {
    v11 = *(v5 + 20);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(&v10[v11], 1, v12))
    {
      (*(v13 + 8))(&v10[v11], v12);
    }

    if (*&v10[*(v5 + 28) + 8] >= 0xDuLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100098180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s16ActionButtonViewV5ModelVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10010FC20(&qword_10119A070);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000982A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s16ActionButtonViewV5ModelVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10010FC20(&qword_10119A070);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000983DC()
{
  v1 = _s11CloseButtonVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));

  if (*(v3 + 8))
  {
  }

  if (*(v3 + 10))
  {
  }

  if (*(v3 + 16))
  {
  }

  v4 = _s16ActionButtonViewV5ModelVMa(0);
  v5 = &v3[*(v4 + 48)];
  v6 = _s12ClickMetricsVMa(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {
    v8 = *(v6 + 20);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }

    if (*&v5[*(v6 + 28) + 8] >= 0xDuLL)
    {
    }
  }

  v11 = &v3[*(v4 + 52)];
  if (!v7(v11, 1, v6))
  {
    v12 = *(v6 + 20);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v11[v12], 1, v13))
    {
      (*(v14 + 8))(&v11[v12], v13);
    }

    if (*&v11[*(v6 + 28) + 8] >= 0xDuLL)
    {
    }
  }

  v15 = *(v1 + 24);
  v16 = sub_10010FC20(&qword_10119A070);
  (*(*(v16 - 8) + 8))(&v3[v15], v16);

  return swift_deallocObject();
}

uint64_t sub_10009876C()
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

uint64_t sub_100098BE8()
{

  return swift_deallocObject();
}

uint64_t sub_100098CD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100098D0C()
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

uint64_t sub_100098E54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100098E98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100098EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of StationFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100098F4C()
{
  v1 = sub_10010FC20(&qword_10119A9C8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_100098FE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_100099018()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000991C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100099230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000992A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10009935C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100099414()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009944C()
{

  return swift_deallocObject();
}

uint64_t sub_1000994A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000994E4()
{

  return swift_deallocObject();
}

uint64_t sub_10009951C()
{

  return swift_deallocObject();
}

uint64_t sub_100099554()
{
  sub_1001109D0(&qword_101180F00);
  type metadata accessor for Track();
  sub_10011881C();
  sub_100651210(&qword_1011950F8, &type metadata accessor for Track);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100099608(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s10TVEpisodesV5ScopeOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000996B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s10TVEpisodesV5ScopeOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100099788@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTVEpisodeFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000997D0()
{
  sub_1005F94A8();

  return swift_deallocObject();
}

uint64_t sub_100099824@<X0>(_BYTE *a1@<X8>)
{
  sub_10028F250();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000998E8()
{
  sub_1005F94A8();

  return swift_deallocObject();
}

uint64_t sub_100099934(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000999EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100099AA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10010FC20(&qword_10118E2F8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

void *sub_100099B6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10010FC20(&qword_10118E2F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100099C30()
{
  type metadata accessor for Button();
  type metadata accessor for BorderlessButtonStyle();
  swift_getWitnessTable();
  sub_100656AC0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  sub_1001109D0(&qword_1011879C8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100020674(&unk_101199EA0, &qword_1011879C8);
  swift_getWitnessTable();
  sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100099EC8()
{

  return swift_deallocObject();
}

uint64_t sub_100099F00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100099F38()
{

  return swift_deallocObject();
}

uint64_t sub_100099FB4()
{

  return swift_deallocObject();
}

uint64_t sub_100099FEC()
{

  return swift_deallocObject();
}

uint64_t sub_10009A07C()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011879E8);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1006634C0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009A250@<X0>(void *a1@<X8>)
{
  result = LayoutSubview.priority.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10009A27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LayoutSubviews();
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009A33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LayoutSubviews();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
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
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009A4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009A574(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for DynamicTypeSize();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 36)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10009A624(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for DynamicTypeSize();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009A6C4()
{
  type metadata accessor for AdaptativeContainerStack._LayoutProvider();
  type metadata accessor for LayoutProviderStack();
  return swift_getWitnessTable();
}

uint64_t sub_10009A734()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009A770()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009A7B0()
{

  return swift_deallocObject();
}

uint64_t sub_10009A7E8()
{

  return swift_deallocObject();
}

uint64_t sub_10009A820()
{

  return swift_deallocObject();
}

uint64_t sub_10009A858()
{

  return swift_deallocObject();
}

uint64_t sub_10009A8A0()
{

  return swift_deallocObject();
}

uint64_t sub_10009A8E0()
{

  return swift_deallocObject();
}

uint64_t sub_10009A9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101190D20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009AA70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_101190D20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_10009AB38@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009ABAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119CBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AC3C()
{

  return swift_deallocObject();
}

uint64_t sub_10009AC84()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009ACBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_10009AD68(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10009AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 80);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_1011854E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10009AF48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_10119F0B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 80);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_1011854E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10009B084(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = sub_10010FC20(&qword_10119A070);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[6];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(&a1[v13], a2, v11);
  }

  v14 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v16 = sub_10010FC20(&qword_1011854E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[11]];

  return v17(v18, a2, v16);
}

_BYTE *sub_10009B214(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_10010FC20(&qword_10119A070);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_1011854E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10009B3A8()
{
  v1 = type metadata accessor for Tracklist.EmptyCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[6];
  v4 = sub_10010FC20(&qword_10119A070);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[7], v4);
  v5(v2 + v1[8], v4);
  v5(v2 + v1[9], v4);
  v6 = v1[10];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009B64C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009B708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009B874(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009B92C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[18];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10010FC20(&qword_1011854E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[19];
    goto LABEL_9;
  }

  v14 = sub_10010FC20(&qword_10119A070);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[20];

  return v15(v16, a2, v14);
}

uint64_t sub_10009BABC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[18];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_1011854E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[19];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_10119A070);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[20];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10009BC4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_10010FC20(&qword_10119A070);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[9];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_10010FC20(&qword_1011854E0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_10009BDE8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
    return result;
  }

  v8 = sub_10010FC20(&qword_10119A070);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10010FC20(&qword_10119F0B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_10010FC20(&qword_1011854E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10009BF78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArtworkImage.Info(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_10010FC20(&qword_101186E00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_10010FC20(&qword_101195458);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = sub_10010FC20(&qword_10119F0B0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_10009C168(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ArtworkImage.Info(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_10010FC20(&qword_101186E00);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v16 = sub_10010FC20(&qword_101195458);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_10010FC20(&qword_10119F0B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10009C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119A070);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 36);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10010FC20(&qword_10119F0B0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 44);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10009C488(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v8 = sub_10010FC20(&qword_10119A070);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_10119F0B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10009C5C4()
{
  type metadata accessor for Tracklist.LeadingIcon(255);
  sub_1001109D0(&qword_10119D110);
  sub_1001109D0(&qword_10119D118);
  sub_1001109D0(&qword_10119D120);
  type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Tracklist.VerticalTextStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_1001109D0(&qword_10119D128);
  sub_1001109D0(&qword_10119D130);
  sub_1001109D0(&qword_10119D138);
  type metadata accessor for Tracklist.HorizontalTextStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101199330);
  type metadata accessor for Tracklist.TrailingIcons();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s17ContextMenuButtonVMa(255);
  swift_getOpaqueTypeConformance2();
  sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10068DDB4(&qword_101198C40, _s17ContextMenuButtonVMa);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011879E8);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184D00);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100020674(&qword_1011879E0, &qword_1011879E8);
  swift_getWitnessTable();
  sub_100020674(&unk_1011914B0, &qword_101184D00);
  return swift_getWitnessTable();
}

uint64_t sub_10009CDB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&unk_101188920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10009CE74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&unk_101188920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009CF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharePlayProxCard.ViewModel(0);
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

uint64_t sub_10009CFE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(0);
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

void sub_10009D0AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100692C90(v1);
}

uint64_t sub_10009D0E0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009D138@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009D190@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009D1EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009D2A4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10009D308()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 64);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009D368()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009D3A8()
{
  sub_1001109D0(&qword_10119DF38);
  sub_1001109D0(&qword_10119DF60);
  sub_10069A2BC();
  sub_100009838();
  sub_100020674(&qword_10119DF78, &qword_10119DF60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009D498()
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

uint64_t sub_10009D60C()
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

uint64_t sub_10009DA88()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10009DAC0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009DB28()
{
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009DC08()
{
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009DCE0()
{
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009DDC0()
{

  return swift_deallocObject();
}

uint64_t sub_10009DE14()
{

  return swift_deallocObject();
}

uint64_t sub_10009DE4C()
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

uint64_t sub_10009DED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 28));
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
    v12 = sub_10010FC20(&qword_10119F0B0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10009E00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MusicPin();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  else
  {
    v11 = sub_10010FC20(&qword_10119F0B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009E13C()
{

  return swift_deallocObject();
}

uint64_t sub_10009E17C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009E218()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009E2E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009E31C()
{

  return swift_deallocObject();
}

uint64_t sub_10009E35C()
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

uint64_t sub_10009E7DC()
{

  return swift_deallocObject();
}

uint64_t sub_10009E818()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  v6 = type metadata accessor for LibraryImport.ViewModel(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:

        if (v5[8])
        {
        }

        if (v5[10])
        {
        }

        if (v5[16])
        {
        }

        v36 = _s16ActionButtonViewV5ModelVMa(0);
        v12 = v5 + *(v36 + 48);
        v13 = _s12ClickMetricsVMa(0);
        v33 = *(*(v13 - 8) + 48);
        if (!v33(v12, 1, v13))
        {
          v31 = *(v13 + 20);
          v14 = type metadata accessor for URL();
          v29 = *(v14 - 8);
          v30 = v14;
          if (!(*(v29 + 48))(&v12[v31], 1))
          {
            (*(v29 + 8))(&v12[v31], v30);
          }

          if (*&v12[*(v13 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        v15 = v5 + *(v36 + 52);
        if (!v33(v15, 1, v13))
        {
          v16 = *(v13 + 20);
          v17 = type metadata accessor for URL();
          v34 = *(v17 - 8);
          v37 = v16;
          v18 = &v15[v16];
          v19 = v17;
          if (!(*(v34 + 48))(v18, 1, v17))
          {
            (*(v34 + 8))(&v15[v37], v19);
          }

          if (*&v15[*(v13 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        break;
      case 0:

        break;
    }
  }

  v8 = (v0 + v4);
  if (!v7((v0 + v4), 1, v6))
  {
    v11 = swift_getEnumCaseMultiPayload();
    switch(v11)
    {
      case 2:

        break;
      case 1:

        if (v8[8])
        {
        }

        if (v8[10])
        {
        }

        if (v8[16])
        {
        }

        v20 = _s16ActionButtonViewV5ModelVMa(0);
        v21 = v8 + *(v20 + 48);
        v22 = _s12ClickMetricsVMa(0);
        v23 = *(*(v22 - 8) + 48);
        if (!v23(v21, 1, v22))
        {
          v38 = *(v22 + 20);
          v24 = type metadata accessor for URL();
          v32 = *(v24 - 8);
          v35 = v24;
          if (!(*(v32 + 48))(&v21[v38], 1))
          {
            (*(v32 + 8))(&v21[v38], v35);
          }

          if (*&v21[*(v22 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        v25 = v8 + *(v20 + 52);
        if (!v23(v25, 1, v22))
        {
          v26 = *(v22 + 20);
          v27 = type metadata accessor for URL();
          v28 = *(v27 - 8);
          if (!(*(v28 + 48))(&v25[v26], 1, v27))
          {
            (*(v28 + 8))(&v25[v26], v27);
          }

          if (*&v25[*(v22 + 28) + 8] >= 0xDuLL)
          {
          }
        }

        break;
      case 0:

        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10009EEA4()
{

  return swift_deallocObject();
}

uint64_t sub_10009EEDC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009EF1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009EF80()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009EFB8()
{

  return swift_deallocObject();
}

uint64_t sub_10009EFF0()
{

  return swift_deallocObject();
}

uint64_t sub_10009F038()
{

  return swift_deallocObject();
}

uint64_t sub_10009F09C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009F1A8()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009F284()
{
  v1 = sub_10010FC20(&unk_10119F040);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009F364()
{
  v1 = sub_10010FC20(&unk_10119F040);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10009F40C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_10010FC20(&qword_10119F0B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10009F508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_10010FC20(&qword_10119F0B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10009F610()
{
  sub_1001109D0(&qword_10119EEF8);
  type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(255);
  sub_1001109D0(&qword_101180F00);
  type metadata accessor for Track();
  sub_10011881C();
  sub_1006E1788(&qword_1011950F8, &type metadata accessor for Track);
  swift_getOpaqueTypeConformance2();
  sub_1006E1788(&unk_10119EEE0, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009F778(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_1011854E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10009F834(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011854E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009F8EC()
{
  sub_1001109D0(&qword_10119F2C0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  sub_1006E4100();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10009FA44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009FA7C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009FB48()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10009FC0C()
{
  v1 = type metadata accessor for Album();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10009FC94()
{
  v1 = type metadata accessor for Album();
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

uint64_t sub_10009FDE4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009FE1C()
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

uint64_t sub_1000A0240()
{

  return swift_deallocObject();
}

uint64_t sub_1000A0284()
{
  v1 = *(sub_10010FC20(&unk_101184720) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A03B8()
{
  v1 = *(sub_10010FC20(&unk_101184720) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A04E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A051C()
{

  return swift_deallocObject();
}

uint64_t sub_1000A0554()
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

uint64_t sub_1000A05E4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ItemCell();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  v4 = v2[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3 + v4, AssociatedTypeWitness);
  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);
  v6 = v3 + v2[11];
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_10010FC20(&qword_10119F470);

  sub_1000D8F20(*(v3 + v2[13]), *(v3 + v2[13] + 8));
  v9 = v2[14];
  sub_10010FC20(&unk_10118F250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A086C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000A0914()
{
  sub_1001109D0(&qword_10118F330);
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101195B40);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_10119F720);
  type metadata accessor for ModifiedContent();
  sub_1006FBD04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100020674(&qword_101195B58, &qword_101195B40);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100020674(qword_10119F740, &qword_10119F720);
  return swift_getWitnessTable();
}

uint64_t sub_1000A0B24()
{
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000A0BE0()
{
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000A0CE8()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000A0D7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s11MusicVideosV5ScopeOMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A0E28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s11MusicVideosV5ScopeOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A0ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
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

uint64_t sub_1000A0F38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Artist();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A0FE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryMusicVideoSortProperties.title.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000A1060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryMusicVideoSortProperties.trackNumber.getter();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000A10CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000A110C()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  v8 = (v0 + v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v10 = *(sub_10010FC20(&unk_10118CE00) + 48);
    v11 = type metadata accessor for UITraitOverrides();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v7(v0 + v6, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A1350()
{
  v1 = *(sub_10010FC20(&unk_10119F3A0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8) + 80);
  if (*(v0 + 16))
  {
  }

  v5 = type metadata accessor for UITraitOverrides();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v8 = (v3 + v4 + 16) & ~v4;
  if (*(v0 + v3))
  {
  }

  v9 = (v0 + v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v12 = *(sub_10010FC20(&unk_10118CE00) + 48);
    if (!v7(v9 + v12, 1, v5))
    {
      (*(v6 + 8))(v9 + v12, v5);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = type metadata accessor for Artist();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A15E4()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  if (*(v0 + 24))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v6 = *(sub_10010FC20(&unk_10118CE00) + 48);
    v7 = type metadata accessor for UITraitOverrides();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = type metadata accessor for Artist();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A178C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  if (*(v0 + 24))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v6 = *(sub_10010FC20(&unk_10118CE00) + 48);
    v7 = type metadata accessor for UITraitOverrides();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = type metadata accessor for Artist();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A193C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A1974()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
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

uint64_t sub_1000A1A8C()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
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

uint64_t sub_1000A1B68()
{
  v1 = sub_10010FC20(&unk_1011841D0);
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

uint64_t sub_1000A1C8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A1CC4()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000A1D6C()
{
  v1 = *(sub_10010FC20(&qword_10119FD30) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for SearchScope();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A1EB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A1EF4()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A1FE4()
{
  v1 = type metadata accessor for Playlist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000A2094()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
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

  return swift_deallocObject();
}

uint64_t sub_1000A223C()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
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

  return swift_deallocObject();
}

uint64_t sub_1000A23EC()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
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

uint64_t sub_1000A2504()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A2554()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

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

  return swift_deallocObject();
}

uint64_t sub_1000A2700()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10010FC20(&unk_10118F670) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  v10 = v0 + v7;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v7 + 48);
  if (v11 != 255)
  {
    sub_10012B804(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A28F0()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10010FC20(&unk_10118F670) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  v10 = v0 + v7;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v7 + 48);
  if (v11 != 255)
  {
    sub_10012B804(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A2AE8()
{
  v1 = *(*(type metadata accessor for AppInterfaceContext.Activity(0) - 8) + 80);

  swift_unknownObjectWeakDestroy();
  v2 = *(v0 + 72);
  if (v2 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v2);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  v3 = (v1 + 144) & ~v1;
  if (*(v0 + 128))
  {
  }

  v4 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_30:

      goto LABEL_36;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_36;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v6 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      if (*(v4 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v10 = type metadata accessor for Playlist.Folder();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v0 + v3, 1, v10))
    {
      (*(v11 + 8))(v0 + v3, v10);
    }

    v12 = type metadata accessor for PlaylistCreation.Context(0);

    v13 = *(v12 + 24);
    v14 = sub_10010FC20(&unk_1011841D0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v4 + v13, 1, v14))
    {
      (*(v15 + 8))(v4 + v13, v14);
    }

    v16 = *(v12 + 28);
    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 4)
    {

      v19 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v20 = type metadata accessor for UITraitOverrides();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v4 + v19, 1, v20))
      {
        (*(v21 + 8))(v4 + v19, v20);
      }
    }

    else if (v17 == 3)
    {
      v18 = type metadata accessor for Artist();
      (*(*(v18 - 8) + 8))(v0 + v3, v18);
    }

    v16 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_34:
    if (*(v4 + v16))
    {
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_10010FC20(&unk_10118A290) + 48);
    v8 = type metadata accessor for SearchScope();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }
  }

LABEL_36:

  return swift_deallocObject();
}

uint64_t sub_1000A2FB0()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_22:

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_28;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
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
    goto LABEL_26;
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
LABEL_26:
    if (*(v3 + v15))
    {
    }

    goto LABEL_28;
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

LABEL_28:

  return swift_deallocObject();
}

uint64_t sub_1000A34AC()
{
  v1 = type metadata accessor for RecentlyPlayedMusicItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A3578()
{
  v1 = type metadata accessor for WidgetDiskCache();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v8 = *(v1 + 24);
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  (*(v5 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000A3754()
{
  v1 = type metadata accessor for WidgetDiskCache();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v0 + 16);
  if (v7 != 1)
  {
  }

  v8 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v9 = *(v1 + 24);
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  (*(v5 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000A3938()
{
  v1 = *(sub_10010FC20(&qword_10118F120) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v28 = *(*(v4 - 8) + 64);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v27 = *(v8 + 80);
  v9 = v0 + v2;
  v10 = v0;
  v11 = type metadata accessor for WidgetMusicItem();
  if (!(*(*(v11 - 1) + 48))(v9, 1, v11))
  {
    v25 = v6;
    v26 = v4;

    (*(v8 + 8))(v9 + v11[7], v7);

    v12 = v11[17];
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (!v15(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }

    v16 = v11[18];
    if (!v15(v9 + v16, 1, v13))
    {
      (*(v14 + 8))(v9 + v16, v13);
    }

    v17 = v11[23];
    v18 = sub_10010FC20(&unk_101182950);
    v4 = v26;
    if (!(*(*(v18 - 8) + 48))(v9 + v17, 11, v18))
    {
      v19 = type metadata accessor for Playlist.Variant();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v9 + v17, 1, v19))
      {
        (*(v20 + 8))(v9 + v17, v19);
      }
    }

    v6 = v25;
    v10 = v0;
  }

  v21 = v10 + v6;
  if (!(*(v8 + 48))(v10 + v6, 1, v7))
  {
    (*(v8 + 8))(v10 + v6, v7);
  }

  v22 = *(v4 + 24);
  v23 = type metadata accessor for Logger();
  (*(*(v23 - 8) + 8))(v21 + v22, v23);

  (*(v8 + 8))(v10 + ((((v28 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & ~v27), v7);

  return swift_deallocObject();
}

uint64_t sub_1000A3E68()
{
  v1 = *(sub_10010FC20(&qword_10118F130) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 80);
  v23 = (v2 + v3 + v5) & ~v5;
  v24 = v4;
  v22 = *(*(v4 - 8) + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v2;
  v10 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = type metadata accessor for Date();
    v21 = v6;
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v9, v11);
    v20 = v13;
    v13(v9 + *(v10 + 20), v11);
    v6 = v21;
    v14 = *(v10 + 24);
    if (!(*(v12 + 48))(v9 + v14, 1, v11))
    {
      v20(v9 + v14, v11);
    }
  }

  v15 = v0 + v23;
  if (!(*(v7 + 48))(v0 + v23, 1, v6))
  {
    (*(v7 + 8))(v15, v6);
  }

  v16 = (((v22 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

  v17 = *(v24 + 24);
  v18 = type metadata accessor for Logger();
  (*(*(v18 - 8) + 8))(v15 + v17, v18);

  (*(v7 + 8))(v0 + v16, v6);

  return swift_deallocObject();
}

uint64_t sub_1000A41D8()
{
  v1 = *(sub_10010FC20(&qword_10118DA20) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v17 = *(*(v4 - 8) + 64);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v2;
  v11 = type metadata accessor for WidgetMusicRecommendation(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = v0 + v6;
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  v14 = *(v4 + 24);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  (*(v8 + 8))(v0 + ((((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_1000A44D8()
{
  v1 = *(type metadata accessor for DragDropToFolder(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000A45B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A45F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118F260);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118F260);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A471C(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_100452A3C(v3);
}

uint64_t sub_1000A4764()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A47AC()
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

uint64_t sub_1000A48E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A4924()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000A495C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A49B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A4AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10119F0B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_1011854E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A4BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10010FC20(&qword_10119F0B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10010FC20(&qword_1011854E0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1000A4CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A06E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4D5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A4E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A4F70(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_101195458);
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
      v13 = sub_10010FC20(&qword_1011A0920);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A50AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10010FC20(&qword_101195458);
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
      v13 = sub_10010FC20(&qword_1011A0920);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A51E8@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000A521C()
{
  v1 = type metadata accessor for Uber();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_10010FC20(&qword_101194F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 24);
  v6 = sub_10010FC20(&qword_1011A0A58);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_10010FC20(&qword_1011A0920);

  return swift_deallocObject();
}

uint64_t sub_1000A53B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000A5504()
{
  sub_1001109D0(&qword_1011A09E0);
  type metadata accessor for MotionViewStateObserver.State();
  sub_100733C40(&qword_1011A0A60, &qword_1011A09E0, &unk_100EDFFA8, sub_100733C10);
  sub_10073411C(&qword_1011A0A68, &type metadata accessor for MotionViewStateObserver.State);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A55F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9PlaylistsVMa(0);
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

uint64_t sub_1000A56BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9PlaylistsVMa(0);
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

uint64_t sub_1000A5774()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A57C0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A58B0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A597C()
{

  return swift_deallocObject();
}

uint64_t sub_1000A59B4()
{
  v14 = _s19PlaylistTabsRequestVMa();
  v12 = *(*(v14 - 8) + 80);
  v1 = (v12 + 32) & ~v12;
  v11 = *(*(v14 - 8) + 64);
  v13 = sub_10010FC20(&qword_1011828F8);
  v2 = *(v13 - 8);
  v3 = *(v2 + 80);
  v10 = *(v2 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v1 + *(_s9PlaylistsVMa(0) + 32);

  v5 = *(_s9PlaylistsV5ScopeVMa(0) + 20);
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v8 = (((((v11 + v1 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;

  (*(v2 + 8))(v0 + v8, v13);

  return swift_deallocObject();
}

uint64_t sub_1000A5C34()
{

  return swift_deallocObject();
}

uint64_t sub_1000A5C6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000A5CA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A5DBC()
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

uint64_t sub_1000A627C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A62C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6308()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6340()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6378()
{
  v1 = (type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A64B0()
{
  v16 = sub_10010FC20(&unk_1011A0FE0);
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v14 = (v2 + 24) & ~v2;
  v3 = *(v1 + 64);
  v15 = sub_10010FC20(&qword_1011A0FD8);
  v4 = *(v15 - 8);
  v13 = (v14 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  v6 = sub_10010FC20(&qword_1011A0FD0);
  v7 = *(v6 - 8);
  v8 = (v13 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v2 + v8) & ~v2;
  v10 = (v3 + v2 + v9) & ~v2;

  v11 = *(v1 + 8);
  v11(v0 + v14, v16);
  (*(v4 + 8))(v0 + v13, v15);
  (*(v7 + 8))(v0 + v8, v6);
  v11(v0 + v9, v16);
  v11(v0 + v10, v16);

  return swift_deallocObject();
}

uint64_t sub_1000A6708()
{
  v1 = sub_10010FC20(&unk_10118A650);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1000A67E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000A682C()
{

  return swift_deallocObject();
}

uint64_t sub_1000A686C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A68C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6930()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A6994()
{

  return swift_deallocObject();
}

uint64_t sub_1000A69D0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A6A28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A6AE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6B94(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SharePlayTogetherSession.Participant(0);
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

void *sub_1000A6CC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SharePlayTogetherSession.Participant(0);
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

uint64_t sub_1000A6DF4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A6EB0(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6F60()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + v2 + 24))
  {
  }

  v4 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  v6 = v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10002C064(*(v6 + 8), *(v6 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000A70B8()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A7214(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_10119A070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A72D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119A070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A7454()
{
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for Button();
  return swift_getWitnessTable();
}

uint64_t sub_1000A7534()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A756C()
{
  v1 = type metadata accessor for Artist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000A75F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A762C()
{
  v1 = type metadata accessor for Artist();
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

uint64_t sub_1000A777C()
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

uint64_t sub_1000A7B88()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000A7C58()
{

  return swift_deallocObject();
}

uint64_t sub_1000A7C90()
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

uint64_t sub_1000A7D08()
{
  v1 = *(sub_10010FC20(&qword_1011A1988) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_10118D0F8);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A7E3C()
{
  v1 = *(sub_10010FC20(&qword_1011A1988) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10010FC20(&qword_10118D0F8);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000A7F68()
{

  return swift_deallocObject();
}

uint64_t sub_1000A7FB0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000A7FE8()
{

  return swift_deallocObject();
}

uint64_t sub_1000A8020()
{

  return swift_deallocObject();
}

uint64_t sub_1000A8058()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A80B0()
{
  v1 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for MusicLibrarySectionedRequest();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (*(v5 + 80) + ((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  (*(v5 + 8))(v0 + v6, v1);
  return swift_deallocObject();
}

uint64_t sub_1000A82B4@<X0>(uint64_t *a1@<X8>)
{
  result = TitledSection.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A82E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A8318()
{

  return swift_deallocObject();
}

uint64_t sub_1000A8350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for MusicLibrarySectionedResponse();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1000A84A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for MusicLibrarySectionedResponse();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = (a2 - 1);
  return result;
}

uint64_t sub_1000A85FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_1011A1C88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A86B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011A1C88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A8768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
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

uint64_t sub_1000A87D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000A896C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A8A78()
{
  v1 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v3;

  v8 = v0 + v3 + *(v1 + 20);
  v9 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v17 = (v2 + 32) & ~v2;
    v18 = v4;
    v10 = type metadata accessor for Playlist();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 20);
    v12 = type metadata accessor for IndexPath();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v8 + v11, 1, v12))
    {
      (*(v13 + 8))(v8 + v11, v12);
    }

    v3 = v17;
    v4 = v18;
    if (*(v8 + *(v9 + 24)))
    {
    }
  }

  v14 = v7 + *(v1 + 24);
  swift_unknownObjectWeakDestroy();
  v15 = *(v14 + 48);
  if (v15 != 255)
  {
    sub_10012B804(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v19 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000A8D64()
{

  return swift_deallocObject();
}

uint64_t sub_1000A8D9C()
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

uint64_t sub_1000A9218()
{
  v1 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v24 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v24 - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v25 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v8 = *(*(v25 - 8) + 80);
  v22 = v6 + v7 + v8;
  v23 = v6;
  swift_unknownObjectRelease();
  v26 = v0;
  v9 = v0 + v3;
  v10 = type metadata accessor for Playlist();
  v21 = *(*(v10 - 8) + 8);
  v21(v0 + v3, v10);
  v11 = *(v1 + 20);
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v20 = *(v13 + 48);
  if (!v20(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  if (*(v9 + *(v1 + 24)))
  {
  }

  (*(v5 + 8))(v26 + v23, v24);
  v14 = v26 + (v22 & ~v8);

  v15 = v14 + *(v25 + 20);
  if (!(*(v2 + 48))(v15, 1, v1))
  {
    v21(v15, v10);
    v16 = *(v1 + 20);
    if (!v20(v15 + v16, 1, v12))
    {
      (*(v13 + 8))(v15 + v16, v12);
    }

    if (*(v15 + *(v1 + 24)))
    {
    }
  }

  v17 = v14 + *(v25 + 24);
  swift_unknownObjectWeakDestroy();
  v18 = *(v17 + 48);
  if (v18 != 255)
  {
    sub_10012B804(*(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), v18);
  }

  if (*(v17 + 64))
  {
  }

  if (*(v17 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000A95E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000A9620()
{

  return swift_deallocObject();
}

uint64_t sub_1000A9658(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_10010FC20(&qword_10119F0B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A9714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A97C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_10010FC20(&qword_10119F0B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A9880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A9950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A2258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A99C8()
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

uint64_t sub_1000A9A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A9A9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A9AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DragDropToQueue.Origin(0);
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

uint64_t sub_1000A9B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DragDropToQueue.Origin(0);
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

uint64_t sub_1000A9C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenericMusicItem();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000A9D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenericMusicItem();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A9DB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A9DF0()
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

uint64_t sub_1000A9F38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000A9F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of AlbumFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000A9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_101188C20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000AA098(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_101188C20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AA148()
{

  return swift_deallocObject();
}

uint64_t sub_1000AA1B8()
{
  sub_10000959C(v0 + 16);
  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000AA210()
{

  return swift_deallocObject();
}

uint64_t sub_1000AA2DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_10118F260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000AA398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10118F260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AA598()
{
  v1 = type metadata accessor for Header(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 24);
  sub_10010FC20(&unk_10118F250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1000D8F20(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000AA87C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1005F94C0(*a1, v2, v3);
  return sub_1005F4744(v1, v2, v3);
}

uint64_t sub_1000AA928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1005F42E0(v1, v2);
}

uint64_t sub_1000AAAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000AAB34(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000AAC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000AAD68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10010FC20(&qword_10118F260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000AAE24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_10118F260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AAED8()
{
  v1 = type metadata accessor for Header.Content();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 60);
  sub_10010FC20(&unk_10118F250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000D8F20(*(v2 + *(v1 + 64)), *(v2 + *(v1 + 64) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000AB024()
{
  v1 = type metadata accessor for Header.Content();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 60);
  sub_10010FC20(&unk_10118F250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000D8F20(*(v2 + *(v1 + 64)), *(v2 + *(v1 + 64) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000AB178()
{
  type metadata accessor for Header.TextVStack.TitleAttributionStack();
  type metadata accessor for Header.TextVStack.MetadataContainer();
  type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  type metadata accessor for Header.TextVStack.DescriptionContainer();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for Header.TextVStack.TitleAttributionStack();
  type metadata accessor for Header.TextVStack.MetadataContainer();
  sub_1001109D0(&qword_1011A2EE0);
  type metadata accessor for Header.TextVStack.DescriptionContainer();
  type metadata accessor for Header.TextVStack.PlaybackControlContainer();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000AB424()
{
  sub_1001109D0(&qword_1011A2EF0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for AdaptativeContainerStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for AdaptativeContainer();
  return swift_getWitnessTable();
}

uint64_t sub_1000AB5A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000AB5E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Font.TextStyle();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 100)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10010FC20(&qword_10119F0B0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 108)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000AB718(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Font.TextStyle();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 100)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10010FC20(&qword_10119F0B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 108)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000AB858()
{
  type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.Before();
  type metadata accessor for Optional();
  type metadata accessor for BaselineSpacer(255);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_1011993F8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  sub_1001109D0(&qword_101199330);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.After();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000ABB0C()
{
  type metadata accessor for BaselineSpacer(255);
  sub_1001109D0(&qword_1011993F8);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  sub_100020674(&qword_1011993F0, &qword_1011993F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000ABC90()
{
  type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.Before();
  sub_1001109D0(&qword_1011993F8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.After();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000ABDCC()
{
  type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.Before();
  type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.After();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  return swift_getWitnessTable();
}

uint64_t sub_1000ABF5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibrarySongSortProperties.title.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000ABFC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000ABFFC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000AC034()
{

  return swift_deallocObject();
}

uint64_t sub_1000AC06C()
{
  v1 = type metadata accessor for TVShow();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000AC130()
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

uint64_t sub_1000AC2E8()
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