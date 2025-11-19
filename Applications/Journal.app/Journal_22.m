uint64_t sub_10025BEA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8E0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8E8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8E8);
  v13 = sub_1000F24EC(&qword_100AD6F70);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD6F70);
  }

  sub_100004F84(v11, &qword_100ADA8E8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA8E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for MusicAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for MusicAssetMetadata();
    sub_10004A6D8(&qword_100AD6F28, &type metadata accessor for MusicAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD6F70);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8E8);
  return swift_endAccess();
}

uint64_t sub_10025C244@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA958);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA960);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA960);
  v13 = sub_1000F24EC(&qword_100AD2A70);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD2A70);
  }

  sub_100004F84(v11, &qword_100ADA960);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA958);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for PodcastAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for PodcastAssetMetadata();
    sub_10004A6D8(&qword_100ADA968, &type metadata accessor for PodcastAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD2A70);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA960);
  return swift_endAccess();
}

uint64_t sub_10025C5E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8C0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8C8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8C8);
  v13 = sub_1000F24EC(&qword_100AD4318);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD4318);
  }

  sub_100004F84(v11, &qword_100ADA8C8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for BookAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for BookAssetMetadata();
    sub_10004A6D8(&qword_100AD42D0, &type metadata accessor for BookAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD4318);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8C8);
  return swift_endAccess();
}

uint64_t sub_10025C98C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA870);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA878);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA878);
  v13 = sub_1000F24EC(&qword_100AD50C0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD50C0);
  }

  sub_100004F84(v11, &qword_100ADA878);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA870);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ThirdPartyMediaAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for ThirdPartyMediaAssetMetadata();
    sub_10004A6D8(&qword_100ADA880, &type metadata accessor for ThirdPartyMediaAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD50C0);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA878);
  return swift_endAccess();
}

uint64_t sub_10025CD30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA908);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA910);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA910);
  v13 = sub_1000F24EC(&qword_100ADA918);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100ADA918);
  }

  sub_100004F84(v11, &qword_100ADA910);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA908);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ReflectionAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for ReflectionAssetMetadata();
    sub_10004A6D8(&qword_100ADA920, &type metadata accessor for ReflectionAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100ADA918);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA910);
  return swift_endAccess();
}

uint64_t sub_10025D0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD6C98);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8D8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8D8);
  v13 = sub_1000F24EC(&qword_100AD6C90);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD6C90);
  }

  sub_100004F84(v11, &qword_100ADA8D8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD6C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for DrawingAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for DrawingAssetMetadata();
    sub_10004A6D8(&qword_100AD6C48, &type metadata accessor for DrawingAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD6C90);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8D8);
  return swift_endAccess();
}

uint64_t sub_10025D478@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA948);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA950);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA950);
  v13 = sub_1000F24EC(&unk_100AEED20);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &unk_100AEED20);
  }

  sub_100004F84(v11, &qword_100ADA950);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA948);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for VisitAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for VisitAssetMetadata();
    sub_10004A6D8(&qword_100ADA608, &type metadata accessor for VisitAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v8, &unk_100AEED20);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v8, v1 + v12, &qword_100ADA950);
  return swift_endAccess();
}

uint64_t sub_10025D81C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8F0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8F8);
  v13 = sub_1000F24EC(&qword_100AD8440);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD8440);
  }

  sub_100004F84(v11, &qword_100ADA8F8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ContactAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for ContactAssetMetadata();
    sub_10004A6D8(&qword_100AD83F8, &type metadata accessor for ContactAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD8440);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8F8);
  return swift_endAccess();
}

uint64_t sub_10025DBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA970);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA978);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA978);
  v13 = sub_1000F24EC(&qword_100ADA980);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100ADA980);
  }

  sub_100004F84(v11, &qword_100ADA978);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ConfettiAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for ConfettiAssetMetadata();
    sub_10004A6D8(&qword_100ADA988, &type metadata accessor for ConfettiAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100ADA980);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA978);
  return swift_endAccess();
}

uint64_t sub_10025DF64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8B30);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA900);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA900);
  v13 = sub_1000F24EC(&qword_100AD8740);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD8740);
  }

  sub_100004F84(v11, &qword_100ADA900);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD8B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for MotionActivityAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for MotionActivityAssetMetadata();
    sub_10004A6D8(&qword_100AD8AE8, &type metadata accessor for MotionActivityAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD8740);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA900);
  return swift_endAccess();
}

uint64_t sub_10025E308@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD7A38);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA868);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA868);
  v13 = sub_1000F24EC(&qword_100AD50C8);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD50C8);
  }

  sub_100004F84(v11, &qword_100ADA868);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD7A38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for LinkAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for LinkAssetMetadata();
    sub_10004A6D8(&qword_100AD79F0, &type metadata accessor for LinkAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD50C8);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA868);
  return swift_endAccess();
}

uint64_t sub_10025E6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA628);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA990);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA990);
  v13 = sub_1000F24EC(&qword_100ADA630);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100ADA630);
  }

  sub_100004F84(v11, &qword_100ADA990);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for StreakEvent();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for StreakEvent();
    sub_10004A6D8(&qword_100ADA998, &type metadata accessor for StreakEvent);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100ADA630);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA990);
  return swift_endAccess();
}

void sub_10025EA50()
{
  v0 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView);

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = *(v6 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  v8 = v6;
  v9 = v7;

  if (v7)
  {
    v7 = *&v9[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
    if (!v7)
    {

      goto LABEL_11;
    }

    sub_100046ADC(v2);

    v10 = type metadata accessor for PhotoLibraryAssetMetadata();
    if ((*(*(v10 - 8) + 48))(v2, 1, v10))
    {

      sub_100004F84(v2, &qword_100AD5B20);
    }

    else
    {
      PhotoLibraryAssetMetadata.placeName.getter();
      v12 = v11;

      sub_100004F84(v2, &qword_100AD5B20);
      if (v12)
      {
        v7 = String._bridgeToObjectiveC()();

        goto LABEL_11;
      }
    }

    goto LABEL_7;
  }

LABEL_11:
  [v5 setAccessibilityValue:v7];

LABEL_12:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100070F50();
  }
}

id sub_10025EC78(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v1[OBJC_IVAR____TtC7Journal14PhotoAssetView_needsCropRectUpdate] = 0;
  *&v1[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset] = 0;
  v4 = OBJC_IVAR____TtC7Journal14PhotoAssetView_latestImageRequestID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhotoAssetView();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1000701DC();
  }

  return v7;
}

id sub_10025EE08()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView) image];

  return v1;
}

uint64_t sub_10025EE48(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate;
  *(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if ((*(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = v2;
      v7 = (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = *(v6 + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView);
        [v8 setImage:v7];
        [v8 setAlpha:1.0];
        v9 = *(v6 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
        [v9 setHidden:1];
      }
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10025EF6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v33 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_100260360;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A62748;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10004A6D8(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v25 = v36;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_10025F440(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v6 = type metadata accessor for Date();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = __chkstk_darwin(v6);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v58 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v58 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (a2)
    {
      v60 = a2;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC7Journal14PhotoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_1000082B4(v25, v19, &qword_100AD1420);
      sub_1000082B4(&v27[v28], &v19[v29], &qword_100AD1420);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v60;
        v32 = v60;
        sub_100004F84(v25, &qword_100AD1420);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_100004F84(v19, &qword_100AD1420);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1000082B4(v19, v23, &qword_100AD1420);
        v34 = v30(&v19[v29], 1, v14);
        v31 = v60;
        if (v34 != 1)
        {
          v36 = &v19[v29];
          v37 = v64;
          (*(v15 + 32))(v64, v36, v14);
          sub_10004A6D8(&qword_100AD9220, &type metadata accessor for UUID);
          v59 = v31;
          v38 = dispatch thunk of static Equatable.== infix(_:_:)();
          v39 = *(v15 + 8);
          v39(v37, v14);
          sub_100004F84(v25, &qword_100AD1420);
          v39(v23, v14);
          v31 = v60;
          sub_100004F84(v19, &qword_100AD1420);
          if ((v38 & 1) == 0)
          {

            return;
          }

LABEL_13:
          sub_10025FF04();
          v40 = OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView;
          [*&v27[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView] setImage:v31];
          v27[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
          v41 = *&v27[v40];
          v42 = v27;
          [v41 setContentMode:2];
          v43 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v44 = v42[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];

          if (v44 > 3)
          {
            v45 = v68;
            v46 = v66;
            if (v44 > 5 && v44 != 6)
            {

              v57 = v67;
              (*(v46 + 16))(v45, v65, v67);
              (*(v46 + 56))(v45, 0, 1, v57);
              goto LABEL_25;
            }
          }

          else
          {
            v45 = v68;
            v46 = v66;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v48 = v67;
          (*(v46 + 16))(v45, v65, v67);
          (*(v46 + 56))(v45, 0, 1, v48);
          if ((v47 & 1) == 0)
          {
            v49 = v63;
            sub_1000082B4(v45, v63, &unk_100AD4790);
            if ((*(v46 + 48))(v49, 1, v48) == 1)
            {
              sub_100004F84(v49, &unk_100AD4790);
LABEL_23:
              v55 = objc_opt_self();
              aBlock[4] = sub_100260430;
              aBlock[5] = v43;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100006C7C;
              aBlock[3] = &unk_100A62770;
              v56 = _Block_copy(aBlock);

              [v55 animateWithDuration:0x10000 delay:v56 options:0 animations:0.1 completion:0.0];
              _Block_release(v56);
LABEL_26:

              sub_100004F84(v45, &unk_100AD4790);

              return;
            }

            v50 = v61;
            (*(v46 + 32))(v61, v49, v48);
            v51 = v62;
            static Date.now.getter();
            Date.timeIntervalSince(_:)();
            v53 = v52;
            v54 = *(v46 + 8);
            v54(v51, v48);
            v54(v50, v48);
            if (v53 >= 0.1)
            {
              goto LABEL_23;
            }
          }

LABEL_25:
          sub_10025FE28();
          goto LABEL_26;
        }

        v35 = v60;
        sub_100004F84(v25, &qword_100AD1420);
        (*(v15 + 8))(v23, v14);
      }

      sub_100004F84(v19, &unk_100AEEE20);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  }
}

void sub_10025FE28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView);

    [v2 setAlpha:1.0];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);

    [v5 setHidden:1];
  }
}

void sub_10025FF04()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    if (CGRectGetWidth(v23) <= 0.0 || ([v0 frame], CGRectGetHeight(v24) <= 0.0))
    {
      v4 = 1;
    }

    else
    {
      sub_10073139C(v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType], v2, v21);
      if (v22)
      {
        v3 = [*&v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView] layer];
        [v3 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
      }

      else
      {
        v6 = *&v21[2];
        v5 = *&v21[3];
        v8 = *v21;
        v7 = *&v21[1];
        sub_100067B84();
        v9 = *&v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView];
        v12 = v10 / v11;
        [v9 frame];
        v14 = v13;
        [v9 frame];
        v16 = v14 / v15;
        v3 = [v9 layer];
        sub_1003AE85C(v12, v16, v8, v7, v6, v5);
        [v3 setContentsRect:{v17, v18, v19, v20}];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_needsCropRectUpdate] = v4;
}

void sub_1002600B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(0, v3);

  sub_100070F50();
}

void *sub_10026015C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  v2 = v1;
  return v1;
}

id sub_1002601E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100260288(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10025EF6C(a1, v7, v1 + v4, v8);
}

void sub_100260360()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10025F440(v5, v6, v0 + v2, v7);
}

id sub_100260444()
{
  if ((_UISolariumEnabled() & 1) != 0 || (v0 = [objc_opt_self() effectWithStyle:10]) == 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = v0;
  }

  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  v3 = v2;
  v4 = [v3 layer];
  [v4 setMasksToBounds:1];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v5 = [v3 layer];
    if (qword_100ACFB68 != -1)
    {
      swift_once();
    }

    [v5 setCornerRadius:*&qword_100ADA9A0];
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

id sub_10026058C()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [v0 layer];
  if (qword_100ACFB68 != -1)
  {
    swift_once();
  }

  [v1 setCornerRadius:*&qword_100ADA9A0];

  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v0 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor:v5];
  v6 = [v0 layer];
  LODWORD(v7) = 1036831949;
  [v6 setShadowOpacity:v7];

  v8 = [v0 layer];
  [v8 setShadowRadius:3.0];

  v9 = [v0 layer];
  [v9 setShadowPathIsBounds:1];

  v10 = [v0 layer];
  [v10 setShadowOffset:{0.0, 0.0}];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_1002607AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_blurredBackgroundView;
  *&v4[v9] = sub_100260444();
  v10 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_shadowView;
  *&v4[v10] = sub_10026058C();
  v11 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_platterStackView;
  v12 = [objc_allocWithZone(UIStackView) init];
  [v12 setAxis:0];
  [v12 setDistribution:0];
  [v12 setAlignment:3];
  [v12 setSpacing:8.0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MapOptionsPlatterView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100260908();
  sub_100260A44();

  return v13;
}

void sub_100260908()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_shadowView]];
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    [*&v0[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_blurredBackgroundView] setEffect:0];
    v3 = [*&v0[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_shadowView] layer];
    [v3 setOpacity:0.0];
  }

  v4 = *&v0[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_blurredBackgroundView];
  [v0 addSubview:v4];
  v5 = [v4 contentView];
  [v5 addSubview:*&v0[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_platterStackView]];
}

uint64_t sub_100260A44()
{
  v1 = v0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1000F24EC(&unk_100AD4780);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100941830;
    v3 = *&v1[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_shadowView];
    v4 = [v3 topAnchor];
    v5 = [v1 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    *(v2 + 32) = v6;
    v7 = [v3 bottomAnchor];
    v8 = [v1 bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v2 + 40) = v9;
    v10 = [v3 leadingAnchor];
    v11 = [v1 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v2 + 48) = v12;
    v13 = [v3 trailingAnchor];
    v14 = [v1 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v2 + 56) = v15;
  }

  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941830;
  v17 = *&v1[OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_blurredBackgroundView];
  v18 = [v17 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(inited + 32) = v20;
  v21 = [v17 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(inited + 40) = v23;
  v24 = [v17 leadingAnchor];
  v25 = [v1 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(inited + 48) = v26;
  v27 = [v17 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(inited + 56) = v29;
  sub_1006AD658(inited);
  v30 = objc_opt_self();
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  sub_100013178(0.0);
}

double sub_100260E88()
{
  result = _UISheetCornerRadius;
  qword_100ADA9A0 = _UISheetCornerRadius;
  return result;
}

id sub_100260EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapOptionsPlatterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100260F54()
{
  v1 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_blurredBackgroundView;
  *(v0 + v1) = sub_100260444();
  v2 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_shadowView;
  *(v0 + v2) = sub_10026058C();
  v3 = OBJC_IVAR____TtC7Journal21MapOptionsPlatterView_platterStackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:0];
  [v4 setDistribution:0];
  [v4 setAlignment:3];
  [v4 setSpacing:8.0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100261060()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADA9E8);
  sub_10000617C(v0, qword_100ADA9E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002610E0()
{
  v0 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100ADA6B0);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  static NSManagedObjectContext.ObjectIDNotification.makeMessage(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v7 = v25[0];
  LOBYTE(v25[0]) = 0;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  v9 = v8;

  if (v9)
  {
    if (qword_100ACFB70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100ADA9E8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to update the journal list sidebar section before it exists!", v13, 2u);
    }
  }

  else
  {
    if (sub_100261600(v6))
    {
      sub_10014EF04();
    }

    if (sub_100263E98(v6))
    {
      sub_10002B13C(1);
    }

    if (sub_10014F7B4())
    {
      if (qword_100ACFE00 != -1)
      {
        swift_once();
      }

      v14 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v14, qword_100B2F9A8);
      v26 = 1;
    }

    else
    {
      if (qword_100ACFDF8 != -1)
      {
        swift_once();
      }

      v15 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v15, qword_100B2F990);
      v26 = 0;
    }

    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    v16 = sub_1002619F4(v6);
    if (v16)
    {
      v17 = v16;
      if (!*(v16 + 2))
      {
        sub_100004F84(v6, &qword_100ADA6B0);
      }

      sub_100150158(v16);
      v18 = sub_1000F24EC(&qword_100AD47A0);
      (*(*(v18 - 8) + 56))(v3, 2, 2, v18);
      swift_storeEnumTagMultiPayload();
      v19 = 0;
      v20 = *(v17 + 2);
      do
      {
        if (v20 == v19)
        {

          sub_10026468C(v3, type metadata accessor for AppNavigationSidebarController.Item);
          return sub_100004F84(v6, &qword_100ADA6B0);
        }

        v21 = v19 + 1;
        v22 = sub_100029D48(&v17[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v3);
        v19 = v21;
      }

      while ((v22 & 1) == 0);

      sub_10026468C(v3, type metadata accessor for AppNavigationSidebarController.Item);
      if (qword_100ACFE00 != -1)
      {
        swift_once();
      }

      v23 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v23, qword_100B2F9A8);
      v26 = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
    }
  }

  return sub_100004F84(v6, &qword_100ADA6B0);
}

uint64_t sub_100261600(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100ADA6B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026461C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &qword_100ADA6B0);
    type metadata accessor for AppStorageMO();
    if (qword_100ACFE28 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for AppStorageMO();
  v15 = NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)();
  v2 = v15;
  v28 = v8;
  v29 = v7;
  v27 = v10;
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_23:

    (*(v28 + 8))(v27, v29);
    return 0;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_7:
  v17 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v18 = *(v2 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v21 = [v18 changedValuesForCurrentEvent];
    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v22 + 16))
    {

      (*(v28 + 8))(v27, v29);
      return 1;
    }

    v23 = sub_100094E98(0xD000000000000013, 0x80000001008DC390);
    if (v24)
    {
      v25 = v23;

      sub_10000BA20(*(v22 + 56) + 32 * v25, v30);

      (*(v28 + 8))(v27, v29);
      sub_100004F84(v30, &qword_100AD13D0);
      return 1;
    }

    memset(v30, 0, sizeof(v30));
    sub_100004F84(v30, &qword_100AD13D0);
    ++v17;
    if (v20 == v16)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_3:
  v11 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v12 = static AppStorageMO.sharedStorage(context:)();

  v13 = *(v2 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage);
  *(v2 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage) = v12;
  sub_10015DB5C(v13);
  return 1;
}

char *sub_1002619F4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v237 = &v206 - v3;
  v217 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v4 = __chkstk_darwin(v217);
  v220 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v239 = &v206 - v6;
  v7 = sub_1000F24EC(&qword_100AD4B90);
  v8 = __chkstk_darwin(v7 - 8);
  v218 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v224 = &v206 - v11;
  v12 = __chkstk_darwin(v10);
  v216 = &v206 - v13;
  v14 = __chkstk_darwin(v12);
  v241 = &v206 - v15;
  __chkstk_darwin(v14);
  v236 = &v206 - v16;
  v17 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v229 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v212 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v211 = &v206 - v21;
  v22 = __chkstk_darwin(v20);
  v219 = &v206 - v23;
  v24 = __chkstk_darwin(v22);
  v210 = &v206 - v25;
  v26 = __chkstk_darwin(v24);
  v238 = &v206 - v27;
  __chkstk_darwin(v26);
  v213 = &v206 - v28;
  v29 = sub_1000F24EC(&qword_100AD1420);
  v30 = __chkstk_darwin(v29 - 8);
  v249 = &v206 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v206 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v206 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = (&v206 - v39);
  __chkstk_darwin(v38);
  v42 = &v206 - v41;
  v256 = type metadata accessor for UUID();
  v251 = *(v256 - 8);
  v43 = __chkstk_darwin(v256);
  v235 = &v206 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v254 = &v206 - v46;
  v47 = __chkstk_darwin(v45);
  v248 = &v206 - v48;
  v49 = __chkstk_darwin(v47);
  v214 = &v206 - v50;
  __chkstk_darwin(v49);
  v215 = &v206 - v51;
  v52 = sub_1000F24EC(&qword_100ADA6B0);
  v53 = __chkstk_darwin(v52 - 8);
  v223 = &v206 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v206 - v55;
  v57 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v206 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = &_swiftEmptySetSingleton;
  sub_10026461C(a1, v56);
  v61 = *(v58 + 48);
  v222 = v58 + 48;
  v221 = v61;
  v62 = v61(v56, 1, v57);
  v240 = v17;
  if (v62 == 1)
  {
    sub_100004F84(v56, &qword_100ADA6B0);
    LODWORD(v42) = 0;
    LODWORD(v244) = 0;
    LODWORD(v250) = 1;
    goto LABEL_98;
  }

  v246 = v40;
  v206 = v58;
  v63 = *(v58 + 32);
  v207 = v57;
  v63(v60, v56, v57);
  type metadata accessor for JournalEntryMO();
  v64 = NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)();
  v65 = v64;
  if (v64 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v208 = a1;
  v233 = v66;
  if (!v66)
  {
    LODWORD(v42) = 0;
    LODWORD(v250) = 0;
    goto LABEL_97;
  }

  v245 = v42;
  v243 = v34;
  LODWORD(v42) = 0;
  LODWORD(v250) = 0;
  v67 = 0;
  v247 = v65 & 0xC000000000000001;
  v232 = v65 & 0xFFFFFFFFFFFFFF8;
  v231 = v65 + 32;
  v234 = "        \nHas sync metadata: ";
  v253 = v251 + 56;
  v252 = (v251 + 48);
  v209 = (v251 + 32);
  v244 = v37;
  v228 = v60;
  v227 = v65;
  v68 = v233;
LABEL_8:
  while (2)
  {
    while (2)
    {
      if (v247)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v70 = __OFADD__(v67++, 1);
        if (v70)
        {
          goto LABEL_168;
        }
      }

      else
      {
        if (v67 >= *(v232 + 16))
        {
          goto LABEL_169;
        }

        v69 = *(v231 + 8 * v67);
        v70 = __OFADD__(v67++, 1);
        if (v70)
        {
          goto LABEL_168;
        }
      }

      i = v69;
      v71 = [v69 changedValuesForCurrentEvent];
      v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v72 + 16) || (v73 = sub_100094E98(0x4F646574656C6564, 0xED0000657461446ELL), (v74 & 1) == 0))
      {
        v257 = 0u;
        v258 = 0u;
        sub_100004F84(&v257, &qword_100AD13D0);
        if (!*(v72 + 16) || (v73 = sub_100094E98(0xD000000000000012, v234 | 0x8000000000000000), (v75 & 1) == 0))
        {
          v257 = 0u;
          v258 = 0u;
          sub_100004F84(&v257, &qword_100AD13D0);
          if (*(v72 + 16))
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }
      }

      sub_10000BA20(*(v72 + 56) + 32 * v73, &v257);
      sub_100004F84(&v257, &qword_100AD13D0);
      v76 = [i journals];
      if (!v76 || (v77 = v76, *&v257 = 0, v78 = type metadata accessor for JournalMO(), sub_1002647BC(), v242 = v78, static Set._conditionallyBridgeFromObjectiveC(_:result:)(), v77, (v79 = v257) == 0))
      {
        LODWORD(v42) = 1;
        LODWORD(v250) = 1;
        if (*(v72 + 16))
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if ((v257 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
          v226 = v79;
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v80 = v261;
          v81 = v262;
          v82 = v263;
          v83 = v264;
          v84 = v265;
          goto LABEL_32;
        }

LABEL_54:

        LODWORD(v42) = 1;
        LODWORD(v250) = 1;
        goto LABEL_55;
      }

      if (!*(v257 + 16))
      {
        goto LABEL_54;
      }

      v85 = -1 << *(v257 + 32);
      v81 = v257 + 56;
      v82 = ~v85;
      v86 = -v85;
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      else
      {
        v87 = -1;
      }

      v84 = v87 & *(v257 + 56);

      v83 = 0;
      v226 = v79;
      v80 = v79;
LABEL_32:
      v225 = v82;
      v60 = (v82 + 64) >> 6;
      v230 = _swiftEmptyArrayStorage;
      v250 = v80;
LABEL_33:
      v42 = v83;
      v88 = v84;
      if (v80 < 0)
      {
        while (1)
        {
          v92 = __CocoaSet.Iterator.next()();
          if (!v92)
          {
            break;
          }

          v259 = v92;
          swift_dynamicCast();
          v91 = v257;
          v83 = v42;
          v84 = v88;
          if (!v257)
          {
            break;
          }

LABEL_42:
          v93 = [v91 id];
          if (v93)
          {
            v94 = v246;
            v95 = v93;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v96 = 0;
            v97 = v256;
          }

          else
          {
            v96 = 1;
            v97 = v256;
            v94 = v246;
          }

          (*v253)(v94, v96, 1, v97);
          v98 = v245;
          sub_100024EC0(v94, v245);
          if ((*v252)(v98, 1, v97) != 1)
          {
            v99 = *v209;
            (*v209)(v215, v98, v97);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v230 = sub_100055CEC(0, *(v230 + 2) + 1, 1, v230);
            }

            v101 = *(v230 + 2);
            v100 = *(v230 + 3);
            if (v101 >= v100 >> 1)
            {
              v230 = sub_100055CEC(v100 > 1, v101 + 1, 1, v230);
            }

            v102 = v230;
            *(v230 + 2) = v101 + 1;
            v99(&v102[((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v101], v215, v256);
            v80 = v250;
            goto LABEL_33;
          }

          sub_100004F84(v98, &qword_100AD1420);
          v42 = v83;
          v88 = v84;
          v80 = v250;
          if ((v250 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        v89 = v42;
        v90 = v88;
        v83 = v42;
        if (v88)
        {
LABEL_38:
          v84 = (v90 - 1) & v90;
          v91 = *(*(v80 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v90)))));
          if (v91)
          {
            goto LABEL_42;
          }
        }

        else
        {
          while (1)
          {
            v83 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }

            if (v83 >= v60)
            {
              break;
            }

            v90 = *(v81 + 8 * v83);
            ++v89;
            if (v90)
            {
              goto LABEL_38;
            }
          }
        }
      }

      sub_100014FF8();

      sub_100785FB0(v230);

      LODWORD(v42) = 1;
      LODWORD(v250) = 1;
      v60 = v228;
LABEL_55:
      v68 = v233;
      if (*(v72 + 16))
      {
LABEL_56:
        v103 = sub_100094E98(0x74666172447369, 0xE700000000000000);
        if (v104)
        {
          break;
        }
      }

LABEL_57:
      v257 = 0u;
      v258 = 0u;
      sub_100004F84(&v257, &qword_100AD13D0);
      if (!*(v72 + 16) || (v103 = sub_100094E98(0x736C616E72756F6ALL, 0xE800000000000000), (v105 & 1) == 0))
      {

        v257 = 0u;
        v258 = 0u;
        sub_100004F84(&v257, &qword_100AD13D0);
        if (v67 == v68)
        {
          goto LABEL_97;
        }

        continue;
      }

      break;
    }

    sub_10000BA20(*(v72 + 56) + 32 * v103, &v257);

    sub_100004F84(&v257, &qword_100AD13D0);
    v106 = i;
    v107 = [i journals];
    if (!v107)
    {

      goto LABEL_94;
    }

    v108 = v107;
    *&v257 = 0;
    v109 = type metadata accessor for JournalMO();
    sub_1002647BC();
    v250 = v109;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    v110 = v257;
    if (!v257)
    {
      goto LABEL_93;
    }

    if ((v257 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_92;
      }

      LODWORD(v242) = v42;
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v111 = v266;
      v112 = v267;
      v113 = v268;
      v42 = v269;
      v114 = v270;
      goto LABEL_70;
    }

    if (*(v257 + 16))
    {
      LODWORD(v242) = v42;
      v115 = -1 << *(v257 + 32);
      v112 = v257 + 56;
      v113 = ~v115;
      v116 = -v115;
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      else
      {
        v117 = -1;
      }

      v114 = v117 & *(v257 + 56);

      v42 = 0;
      v111 = v110;
LABEL_70:
      v226 = v113;
      v60 = (v113 + 64) >> 6;
      v230 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v111 < 0)
        {
          v121 = __CocoaSet.Iterator.next()();
          if (!v121 || (v259 = v121, swift_dynamicCast(), (v120 = v257) == 0))
          {
LABEL_90:
            sub_100014FF8();

            sub_100785FB0(v230);

            LODWORD(v250) = 1;
            v68 = v233;
            LODWORD(v42) = v242;
            v60 = v228;
            if (v67 == v233)
            {
              goto LABEL_97;
            }

            goto LABEL_8;
          }
        }

        else
        {
          v118 = v42;
          v119 = v114;
          if (!v114)
          {
            while (1)
            {
              v42 = v118 + 1;
              if (__OFADD__(v118, 1))
              {
                break;
              }

              if (v42 >= v60)
              {
                goto LABEL_90;
              }

              v119 = *(v112 + 8 * v42);
              ++v118;
              if (v119)
              {
                goto LABEL_76;
              }
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

LABEL_76:
          v114 = (v119 - 1) & v119;
          v120 = *(*(v111 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v119)))));
          if (!v120)
          {
            goto LABEL_90;
          }
        }

        v122 = [v120 id];
        if (v122)
        {
          v123 = v243;
          v124 = v122;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v125 = 0;
        }

        else
        {
          v125 = 1;
          v123 = v243;
        }

        v126 = v256;
        (*v253)(v123, v125, 1, v256);
        v127 = v244;
        sub_100024EC0(v123, v244);
        if ((*v252)(v127, 1, v126) == 1)
        {
          sub_100004F84(v127, &qword_100AD1420);
        }

        else
        {
          v128 = v127;
          v129 = *v209;
          (*v209)(v214, v128, v256);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v230 = sub_100055CEC(0, *(v230 + 2) + 1, 1, v230);
          }

          v131 = *(v230 + 2);
          v130 = *(v230 + 3);
          if (v131 >= v130 >> 1)
          {
            v230 = sub_100055CEC(v130 > 1, v131 + 1, 1, v230);
          }

          v132 = v230;
          *(v230 + 2) = v131 + 1;
          v129(&v132[((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v131], v214, v256);
        }
      }
    }

LABEL_92:

LABEL_93:

LABEL_94:
    LODWORD(v250) = 1;
    if (v67 != v68)
    {
      continue;
    }

    break;
  }

LABEL_97:

  v58 = v206;
  v57 = v207;
  (*(v206 + 8))(v60, v207);
  LODWORD(v244) = v250;
  a1 = v208;
LABEL_98:
  v133 = v223;
  sub_10026461C(a1, v223);
  if (v221(v133, 1, v57) == 1)
  {
    sub_100004F84(v133, &qword_100ADA6B0);
    v60 = _swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for JournalMO();
    v60 = NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)();
    (*(v58 + 8))(v133, v57);
  }

  if (v60 >> 62)
  {
    goto LABEL_170;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    LODWORD(v242) = v42;
    if (!i)
    {
      break;
    }

    v134 = 0;
    v135 = 0;
    v136 = v60 & 0xC000000000000001;
    v253 = v60 & 0xFFFFFFFFFFFFFF8;
    v252 = (v251 + 48);
    v137 = (v251 + 32);
    v138 = _swiftEmptyArrayStorage;
    v42 = v249;
    v247 = v60 & 0xC000000000000001;
    while (1)
    {
      if (v136)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v134 >= *(v253 + 16))
        {
          goto LABEL_167;
        }

        v139 = *(v60 + 8 * v134 + 32);
      }

      v140 = v139;
      v141 = (v134 + 1);
      if (__OFADD__(v134, 1))
      {
        break;
      }

      *&v257 = v139;
      sub_100263BE4(&v257, v42);

      v142 = v256;
      if ((*v252)(v42, 1, v256) == 1)
      {
        sub_100004F84(v42, &qword_100AD1420);
      }

      else
      {
        v143 = v60;
        v144 = v135;
        v145 = v42;
        v146 = *v137;
        v147 = v248;
        (*v137)(v248, v145, v142);
        v146(v254, v147, v142);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_100055CEC(0, *(v138 + 2) + 1, 1, v138);
        }

        v149 = *(v138 + 2);
        v148 = *(v138 + 3);
        v135 = v144;
        if (v149 >= v148 >> 1)
        {
          v138 = sub_100055CEC(v148 > 1, v149 + 1, 1, v138);
        }

        v60 = v143;
        *(v138 + 2) = v149 + 1;
        v146(&v138[((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v149], v254, v256);
        v42 = v249;
        v136 = v247;
      }

      ++v134;
      if (v141 == i)
      {
        goto LABEL_119;
      }
    }

LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    ;
  }

  v135 = 0;
  v138 = _swiftEmptyArrayStorage;
LABEL_119:

  sub_100785FB0(v138);

  v151 = (v260 + 7);
  v150 = v260[7];
  v152 = 1 << *(v260 + 32);
  v153 = -1;
  v259 = &_swiftEmptySetSingleton;
  if (v152 < 64)
  {
    v153 = ~(-1 << v152);
  }

  v60 = v153 & v150;
  v42 = (v152 + 63) >> 6;
  v248 = (v251 + 16);
  v247 = v251 + 8;
  v246 = (v229 + 56);
  v154 = (v229 + 48);
  v253 = v260;

  v155 = 0;
  v245 = _swiftEmptyArrayStorage;
  v156 = v239;
  v157 = v240;
  v254 = v154;
  v252 = v151;
  v249 = v42;
LABEL_122:
  v158 = v155;
  if (!v60)
  {
    goto LABEL_124;
  }

  do
  {
    i = v135;
    v155 = v158;
LABEL_128:
    v159 = v251;
    v160 = *(v251 + 16);
    v161 = v235;
    v162 = v256;
    v160(v235, *(v253 + 48) + *(v251 + 72) * (__clz(__rbit64(v60)) | (v155 << 6)), v256);
    v160(v156, v161, v162);
    v163 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v163 - 8) + 56))(v156, 0, 2, v163);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v164 = v257;
    v165 = v238;
    sub_100264754(v156, v238, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v166 = v240;
    swift_storeEnumTagMultiPayload();
    v167 = v156;
    v168 = v237;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    sub_10026468C(v165, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v159 + 8))(v161, v162);
    v169 = type metadata accessor for IndexPath();
    if ((*(*(v169 - 8) + 48))(v168, 1, v169) == 1)
    {
      sub_10026468C(v167, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_100004F84(v168, &unk_100ADFB90);
      v170 = 1;
      v171 = v241;
    }

    else
    {
      sub_100004F84(v168, &unk_100ADFB90);
      v171 = v241;
      sub_1002646EC(v167, v241, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      swift_storeEnumTagMultiPayload();
      v170 = 0;
    }

    v172 = *v246;
    (*v246)(v171, v170, 1, v166);
    v173 = v171;
    v154 = v254;
    v174 = *v254;
    v175 = (*v254)(v173, 1, v166);
    v135 = i;
    if (v175 == 1)
    {
      v176 = v236;
      v172(v236, 1, 1, v166);
      if (v174(v173, 1, v166) != 1)
      {
        sub_100004F84(v241, &qword_100AD4B90);
      }
    }

    else
    {
      v176 = v236;
      sub_1002646EC(v173, v236, type metadata accessor for AppNavigationSidebarController.Item);
      v172(v176, 0, 1, v166);
    }

    v60 &= v60 - 1;
    v177 = v174(v176, 1, v166);
    v156 = v239;
    v157 = v166;
    if (v177 != 1)
    {
      sub_1002646EC(v176, v213, type metadata accessor for AppNavigationSidebarController.Item);
      v178 = v154;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v245 = sub_100029384(0, *(v245 + 2) + 1, 1, v245);
      }

      v42 = v249;
      v180 = *(v245 + 2);
      v179 = *(v245 + 3);
      if (v180 >= v179 >> 1)
      {
        v245 = sub_100029384(v179 > 1, v180 + 1, 1, v245);
      }

      v181 = v245;
      *(v245 + 2) = v180 + 1;
      sub_1002646EC(v213, v181 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v180, type metadata accessor for AppNavigationSidebarController.Item);
      v151 = v252;
      v154 = v178;
      goto LABEL_122;
    }

    sub_100004F84(v176, &qword_100AD4B90);
    v158 = v155;
    v151 = v252;
    v42 = v249;
  }

  while (v60);
  while (1)
  {
LABEL_124:
    v155 = v158 + 1;
    if (__OFADD__(v158, 1))
    {
      __break(1u);
      goto LABEL_164;
    }

    if (v155 >= v42)
    {
      break;
    }

    v60 = *&v151[8 * v155];
    ++v158;
    if (v60)
    {
      i = v135;
      goto LABEL_128;
    }
  }

  sub_1007860F8(v245);

  v182 = v224;
  v183 = v242;
  if (v244)
  {
    v184 = sub_1000F24EC(&qword_100AD47A0);
    v185 = v220;
    (*(*(v184 - 8) + 56))(v220, 2, 2, v184);
    v186 = v216;
    sub_10002C6AC(v185, v216);
    v154 = v254;
    sub_10026468C(v185, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if ((*v154)(v186, 1, v157) == 1)
    {
      sub_100004F84(v186, &qword_100AD4B90);
    }

    else
    {
      v187 = v210;
      sub_1002646EC(v186, v210, type metadata accessor for AppNavigationSidebarController.Item);
      v188 = v219;
      sub_100264754(v187, v219, type metadata accessor for AppNavigationSidebarController.Item);
      v189 = v238;
      sub_1002894A8(v238, v188);
      v154 = v254;
      v182 = v224;
      sub_10026468C(v189, type metadata accessor for AppNavigationSidebarController.Item);
      sub_10026468C(v187, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  if (v250)
  {
    if (qword_100ACFF20 != -1)
    {
      swift_once();
    }

    v190 = sub_10000617C(v217, qword_100B2FAE0);
    sub_10002C6AC(v190, v182);
    if ((*v154)(v182, 1, v157) != 1)
    {
      v194 = v211;
      sub_1002646EC(v182, v211, type metadata accessor for AppNavigationSidebarController.Item);
      v195 = v219;
      sub_100264754(v194, v219, type metadata accessor for AppNavigationSidebarController.Item);
      v196 = v238;
      sub_1002894A8(v238, v195);
      v154 = v254;
      sub_10026468C(v196, type metadata accessor for AppNavigationSidebarController.Item);
      sub_10026468C(v194, type metadata accessor for AppNavigationSidebarController.Item);
      if ((v183 & 1) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_153;
    }

    sub_100004F84(v182, &qword_100AD4B90);
  }

  if ((v183 & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_153:
  v191 = sub_1000F24EC(&qword_100AD47A0);
  v192 = v220;
  (*(*(v191 - 8) + 56))(v220, 1, 2, v191);
  v193 = v218;
  sub_10002C6AC(v192, v218);
  sub_10026468C(v192, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  if ((*v154)(v193, 1, v157) == 1)
  {
    sub_100004F84(v193, &qword_100AD4B90);
  }

  else
  {
    v197 = v193;
    v198 = v212;
    sub_1002646EC(v197, v212, type metadata accessor for AppNavigationSidebarController.Item);
    v199 = v219;
    sub_100264754(v198, v219, type metadata accessor for AppNavigationSidebarController.Item);
    v200 = v238;
    sub_1002894A8(v238, v199);
    sub_10026468C(v200, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10026468C(v198, type metadata accessor for AppNavigationSidebarController.Item);
  }

LABEL_158:
  v201 = v259;
  v202 = v259[2];
  if (!v202)
  {
LABEL_161:

    return _swiftEmptyArrayStorage;
  }

  v203 = sub_1003E775C(v259[2], 0);
  v204 = sub_1001C2160(&v257, &v203[(*(v229 + 80) + 32) & ~*(v229 + 80)], v202, v201);
  sub_100014FF8();
  if (v204 != v202)
  {
    __break(1u);
    goto LABEL_161;
  }

  return v203;
}

uint64_t sub_100263BE4@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *a1;
  v12 = [v11 id];
  if (!v12)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v13 = v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v5 + 32);
  v14(v10, v8, v4);
  v15 = [v11 changedValuesForCurrentEvent];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16) || (v17 = sub_100094E98(0xD000000000000013, 0x80000001008DC390), (v18 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;
    sub_100004F84(&v22, &qword_100AD13D0);
    if (!*(v16 + 16) || (v17 = sub_100094E98(0x73656972746E65, 0xE700000000000000), (v19 & 1) == 0))
    {
      v22 = 0u;
      v23 = 0u;
      sub_100004F84(&v22, &qword_100AD13D0);
      v20 = *(v16 + 16);

      if (!v20)
      {
        goto LABEL_10;
      }

      (*(v5 + 8))(v10, v4);
      return (*(v5 + 56))(a2, 1, 1, v4);
    }
  }

  sub_10000BA20(*(v16 + 56) + 32 * v17, &v22);

  sub_100004F84(&v22, &qword_100AD13D0);
LABEL_10:
  v14(a2, v10, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100263E98(uint64_t a1)
{
  v2 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100ADA6B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = *(v3 + 48);
  v16 = 1;
  if (v15(a1, 1, v2) == 1)
  {
    return v16;
  }

  sub_10026461C(a1, v14);
  if (v15(v14, 1, v2) == 1)
  {
    sub_100004F84(v14, &qword_100ADA6B0);
  }

  else
  {
    type metadata accessor for JournalMO();
    v17 = NSManagedObjectContext.ObjectIDNotification.hasInsertedObjects<A>(of:)();
    (*(v3 + 8))(v14, v2);
    if (v17)
    {
      return 1;
    }
  }

  sub_10026461C(a1, v12);
  if (v15(v12, 1, v2) == 1)
  {
    sub_100004F84(v12, &qword_100ADA6B0);
    goto LABEL_9;
  }

  type metadata accessor for JournalMO();
  v18 = NSManagedObjectContext.ObjectIDNotification.hasDeletedObjects<A>(of:)();
  (*(v3 + 8))(v12, v2);
  if (v18)
  {
    return 1;
  }

LABEL_9:
  sub_10026461C(a1, v9);
  if (v15(v9, 1, v2) == 1)
  {
    sub_100004F84(v9, &qword_100ADA6B0);
    return 0;
  }

  (*(v3 + 32))(v5, v9, v2);
  type metadata accessor for JournalMO();
  v19 = NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)();
  v20 = v19;
  v49 = v3;
  v50 = v5;
  if (v19 >> 62)
  {
    goto LABEL_32;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_33:

    type metadata accessor for JournalEntryMO();
    v34 = NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)();
    v35 = v34;
    if (v34 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v37 = 0;
      v52 = v35 & 0xFFFFFFFFFFFFFF8;
      v53 = v35 & 0xC000000000000001;
      v51 = "        \nHas sync metadata: ";
      while (1)
      {
        if (v53)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *(v52 + 16))
          {
            goto LABEL_51;
          }

          v38 = *(v35 + 8 * v37 + 32);
        }

        v24 = v38;
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = [v38 changedValuesForCurrentEvent];
        v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v27 + 16))
        {
          v41 = sub_100094E98(0x4F646574656C6564, 0xED0000657461446ELL);
          if (v42)
          {
            v46 = v41;

            v45 = *(v27 + 56) + 32 * v46;
            goto LABEL_49;
          }
        }

        v54 = 0u;
        v55 = 0u;
        sub_100004F84(&v54, &qword_100AD13D0);
        if (*(v27 + 16))
        {
          v30 = sub_100094E98(0xD000000000000012, v51 | 0x8000000000000000);
          if (v43)
          {
            goto LABEL_47;
          }
        }

        v54 = 0u;
        v55 = 0u;
        sub_100004F84(&v54, &qword_100AD13D0);
        ++v37;
        if (v39 == i)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_53:

    (*(v49 + 8))(v50, v2);
    return 0;
  }

LABEL_13:
  v22 = 0;
  v52 = v20 & 0xFFFFFFFFFFFFFF8;
  v53 = v20 & 0xC000000000000001;
  while (1)
  {
    if (v53)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v52 + 16))
      {
        goto LABEL_31;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_13;
    }

    v26 = [v23 changedValuesForCurrentEvent];
    v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v27 + 16))
    {

LABEL_29:
      (*(v49 + 8))(v50, v2);
      return 1;
    }

    v28 = sub_100094E98(0x656C654472657375, 0xEB00000000646574);
    if (v29)
    {
      v33 = v28;

      sub_10000BA20(*(v27 + 56) + 32 * v33, &v54);

      sub_100004F84(&v54, &qword_100AD13D0);
      goto LABEL_29;
    }

    v54 = 0u;
    v55 = 0u;
    sub_100004F84(&v54, &qword_100AD13D0);
    if (*(v27 + 16))
    {
      v30 = sub_100094E98(0x6574614374726F73, 0xEC00000079726F67);
      if (v31)
      {
        break;
      }
    }

    v54 = 0u;
    v55 = 0u;
    sub_100004F84(&v54, &qword_100AD13D0);
    if (*(v27 + 16))
    {
      v30 = sub_100094E98(0x6564724F74726F73, 0xE900000000000072);
      if (v32)
      {
        break;
      }
    }

    v54 = 0u;
    v55 = 0u;
    sub_100004F84(&v54, &qword_100AD13D0);
    ++v22;
    if (v25 == v21)
    {
      goto LABEL_33;
    }
  }

LABEL_47:
  v44 = v30;

  v45 = *(v27 + 56) + 32 * v44;
LABEL_49:
  sub_10000BA20(v45, &v54);

  (*(v49 + 8))(v50, v2);
  sub_100004F84(&v54, &qword_100AD13D0);
  return 1;
}

uint64_t sub_10026461C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026468C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002646EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100264754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002647BC()
{
  result = qword_100ADAA00;
  if (!qword_100ADAA00)
  {
    type metadata accessor for JournalMO();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADAA00);
  }

  return result;
}

uint64_t sub_100264814()
{
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1002648B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100264984(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100264A94()
{
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_100264B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_100264C04(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100264D14()
{
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 18);
}

uint64_t sub_100264DB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_100264E84(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100264F94()
{
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 19);
}

uint64_t sub_100265034@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_100265104(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100265214()
{
  v1 = OBJC_IVAR____TtC7Journal28EntryMapViewLoadingMessenger___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1002652D8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100265378()
{
  v1 = type metadata accessor for EntryMapViewRepresentable(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026663C(v0 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent, v3);
  sub_1000F24EC(&qword_100ADAC10);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v3);
  v4 = v8;
  if (*(v8 + 19))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v7 - 2) = v4;
    *(&v7 - 8) = 0;
    v8 = v4;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v8 + 19) = 0;
  }
}

uint64_t sub_100265514(uint64_t a1)
{
  v2 = type metadata accessor for EntryMapViewRepresentable(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026663C(a1 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent, v4);
  sub_1000F24EC(&qword_100ADAC10);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v4);
  v5 = v9;
  if (*(v9 + 16) == 1)
  {
    *(v9 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v8 - 2) = v5;
    *(&v8 - 8) = 1;
    v9 = v5;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002656C8(uint64_t a1)
{
  v3 = type metadata accessor for EntryMapViewRepresentable(0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent;
  sub_10026663C(a1 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent, v15 - v7);
  sub_1000F24EC(&qword_100ADAC10);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v8);
  v10 = v16;
  if (*(v16 + 18))
  {
    KeyPath = swift_getKeyPath();
    v15[1] = v15;
    __chkstk_darwin(KeyPath);
    v15[0] = v1;
    v15[-2] = v10;
    LOBYTE(v15[-1]) = 0;
    v16 = v10;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v16 + 18) = 0;
  }

  sub_10026663C(a1 + v9, v5);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v5);
  v12 = v16;
  if (*(v16 + 16))
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    v15[-2] = v12;
    LOBYTE(v15[-1]) = 0;
    v16 = v12;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v16 + 16) = 0;
  }
}

uint64_t sub_1002659C0(uint64_t a1)
{
  v3 = type metadata accessor for EntryMapViewRepresentable(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent;
  sub_10026663C(a1 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent, &v20 - v10);
  sub_1000F24EC(&qword_100ADAC10);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v11);
  v13 = v22;
  if (v22[16])
  {
    KeyPath = swift_getKeyPath();
    v20 = v1;
    v21 = &v20;
    __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v13;
    *(&v20 - 8) = 0;
    v22 = v13;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v22[16] = 0;
  }

  sub_10026663C(a1 + v12, v8);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v8);
  v15 = v22;
  if (v22[17])
  {
    v16 = swift_getKeyPath();
    v21 = &v20;
    __chkstk_darwin(v16);
    *(&v20 - 2) = v15;
    *(&v20 - 8) = 0;
    v22 = v15;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v22[17] = 0;
  }

  sub_10026663C(a1 + v12, v5);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v5);
  v17 = v22;
  if (v22[18] == 1)
  {
    v22[18] = 1;
  }

  else
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v20 - 2) = v17;
    *(&v20 - 8) = 1;
    v22 = v17;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100265DF8(uint64_t a1)
{
  v2 = type metadata accessor for EntryMapViewRepresentable(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026663C(a1 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent, v4);
  sub_1000F24EC(&qword_100ADAC10);
  Bindable.wrappedValue.getter();
  sub_1002666A0(v4);
  v5 = v9;
  if (*(v9 + 17))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v8 - 2) = v5;
    *(&v8 - 8) = 0;
    v9 = v5;
    sub_10026670C(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v9 + 17) = 0;
  }
}

id sub_100265FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100266044()
{
  sub_1002660D4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002660D4()
{
  if (!qword_100ADAC08)
  {
    type metadata accessor for EntryMapViewLoadingMessenger(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADAC08);
    }
  }
}

void sub_100266174()
{
  sub_1002660D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100266290(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  withAnimation<A>(_:_:)();
}

char *sub_1002662F4()
{
  v0 = [objc_allocWithZone(type metadata accessor for SidebarEntryMapView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000F24EC(&qword_100ADACA8);
  UIViewRepresentableContext.coordinator.getter();
  *&v0[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_loadingDelegate + 8] = &off_100A62798;
  swift_unknownObjectWeakAssign();

  return v0;
}

uint64_t sub_100266394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026663C(v2, v5);
  v6 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_10026663C(v5, v7 + OBJC_IVAR____TtCV7Journal25EntryMapViewRepresentable11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_1002666A0(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_100266458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026670C(&qword_100ADACB0, type metadata accessor for EntryMapViewRepresentable);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002664EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026670C(&qword_100ADACB0, type metadata accessor for EntryMapViewRepresentable);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100266580()
{
  sub_10026670C(&qword_100ADACB0, type metadata accessor for EntryMapViewRepresentable);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10026663C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryMapViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002666A0(uint64_t a1)
{
  v2 = type metadata accessor for EntryMapViewRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026670C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100266838(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [objc_allocWithZone(UIBezierPath) init];
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  MaxY = CGRectGetMaxY(v25);
  v15 = a1[7];
  v16 = MinX + a1[6];
  [v10 moveToPoint:{v16, MinY}];
  v17 = a1[5];
  [v10 addLineToPoint:{MaxX - a1[4], MinY}];
  [v10 addQuadCurveToPoint:MaxX controlPoint:{MinY + v17, MaxX, MinY}];
  v18 = a1[2];
  [v10 addLineToPoint:{MaxX, MaxY - a1[3]}];
  [v10 addQuadCurveToPoint:MaxX - v18 controlPoint:{MaxY, MaxX, MaxY}];
  v19 = a1[1];
  [v10 addLineToPoint:{MinX + *a1, MaxY}];
  [v10 addQuadCurveToPoint:MinX controlPoint:{MaxY - v19, MinX, MaxY}];
  [v10 addLineToPoint:{MinX, MinY + v15}];
  [v10 addQuadCurveToPoint:v16 controlPoint:{MinY, MinX, MinY}];
  v20 = [v10 CGPath];

  return v20;
}

char *sub_100266A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v10 = OBJC_IVAR____TtC7Journal29FullScreenUnsupportedItemView_assetView;
  *&v6[OBJC_IVAR____TtC7Journal29FullScreenUnsupportedItemView_assetView] = 0;
  if (a5)
  {
    v11 = objc_opt_self();
    v12 = a5;
    v13 = [v11 secondaryLabelColor];
    v14 = [v11 clearColor];
    v15 = objc_allocWithZone(type metadata accessor for UnsupportedAssetView());
    v16 = sub_1004B7C34(v12, v13, v14, 60.0);
    v17 = *&v7[v10];
    *&v7[v10] = v16;
  }

  v92 = a5;
  v94.receiver = v7;
  v94.super_class = type metadata accessor for FullScreenUnsupportedItemView();
  v18 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = v18;
  if (a6)
  {
    [v18 setBackgroundColor:a6];
  }

  v91 = a6;
  v20 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100760CA8(v20, 1);
  [v19 addSubview:v20];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v20 centerYAnchor];
  v22 = [v19 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  [v23 setActive:1];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v20 leadingAnchor];
  v25 = [v19 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  [v26 setConstant:8.0];
  [v26 setActive:1];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v20 trailingAnchor];
  v28 = [v19 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  [v29 setConstant:-8.0];
  [v29 setActive:1];

  [v19 frame];
  Width = CGRectGetWidth(v95);
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [v20 heightAnchor];
  v32 = [v31 constraintEqualToConstant:Width];

  [v32 setActive:1];
  v33 = [objc_allocWithZone(UILabel) init];
  v34 = String._bridgeToObjectiveC()();

  [v33 setText:v34];

  [v33 setTextAlignment:1];
  [v33 setNumberOfLines:0];
  v93 = objc_opt_self();
  v35 = [v93 labelColor];
  [v33 setTextColor:v35];

  if (qword_100AD03D8 != -1)
  {
    swift_once();
  }

  [v33 setFont:qword_100B303D0];
  [v33 setAdjustsFontForContentSizeCategory:1];
  v36 = v33;
  [v20 addSubview:v36];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [v36 leadingAnchor];
  v38 = [v20 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  [v39 setConstant:8.0];
  [v39 setActive:1];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v36 trailingAnchor];
  v41 = [v20 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setConstant:-8.0];
  [v42 setActive:1];

  v43 = [v36 centerYAnchor];
  v44 = [v20 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-60.0];

  [v45 setActive:1];
  v46 = *&v19[OBJC_IVAR____TtC7Journal29FullScreenUnsupportedItemView_assetView];
  if (v46)
  {
    v47 = v46;

    v48 = v47;
    [v20 addSubview:v48];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v48 centerXAnchor];
    v50 = [v20 centerXAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    [v51 setActive:1];
    v52 = [v48 bottomAnchor];

    v53 = [v36 topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-20.0];

    [v54 setActive:1];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [v48 heightAnchor];
    v56 = [v55 constraintEqualToConstant:60.0];

    [v56 setActive:1];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v48 widthAnchor];
    v58 = [v57 constraintEqualToConstant:60.0];
  }

  else
  {

    [v19 frame];
    v63 = [objc_allocWithZone(UIImageView) initWithFrame:{v59, v60, v61, v62}];
    if (qword_100AD0A08 != -1)
    {
      swift_once();
    }

    v64 = qword_100B30EE0;
    if (qword_100B30EE0)
    {
      sub_1000F24EC(&unk_100AD4780);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100941D50;
      *(v65 + 32) = [v93 secondaryLabelColor];
      sub_10018D564();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v67 = [objc_opt_self() configurationWithPaletteColors:isa];

      v64 = [v64 imageWithConfiguration:v67];
    }

    [v63 setImage:v64];

    v48 = v63;
    [v48 setContentMode:1];
    [v20 addSubview:v48];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v68 = [v48 centerXAnchor];
    v69 = [v20 centerXAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    [v70 setActive:1];
    v71 = [v48 bottomAnchor];

    v72 = [v36 topAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:-20.0];

    [v73 setActive:1];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v74 = [v48 heightAnchor];
    v75 = [v74 constraintEqualToConstant:60.0];

    [v75 setActive:1];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v48 widthAnchor];
    v58 = [v57 constraintEqualToConstant:60.0];
  }

  v76 = v58;

  [v76 setActive:1];
  v77 = [objc_allocWithZone(UILabel) init];
  v78 = String._bridgeToObjectiveC()();

  [v77 setText:v78];

  if (qword_100AD03D0 != -1)
  {
    swift_once();
  }

  [v77 setFont:qword_100B303C8];
  [v77 setTextAlignment:1];
  [v77 setNumberOfLines:0];
  v79 = [v93 secondaryLabelColor];
  [v77 setTextColor:v79];

  [v77 setAdjustsFontForContentSizeCategory:1];
  v80 = v77;
  [v80 sizeToFit];
  [v20 addSubview:v80];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = [v80 leadingAnchor];
  v82 = [v20 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  [v83 setConstant:60.0];
  [v83 setActive:1];

  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = [v80 trailingAnchor];
  v85 = [v20 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  [v86 setConstant:-60.0];
  [v86 setActive:1];

  v87 = [v80 topAnchor];
  v88 = [v36 bottomAnchor];

  v89 = [v87 constraintEqualToAnchor:v88];
  [v89 setActive:1];

  return v19;
}

id sub_100267974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenUnsupportedItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002679DC(uint64_t a1)
{
  v4 = v1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = &v45;
    sub_100199E6C(0, v6 & ~(v6 >> 63), 0);
    v39 = v45;
    if (v36)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v8 = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v42 = v8;
    v43 = v9;
    v44 = v36 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1;
      v33 = a1 + 56;
      v32 = a1 + 64;
      v34 = v6;
      v35 = a1;
      while (v10 < v6)
      {
        v12 = __OFADD__(v10, 1);
        v13 = v10 + 1;
        if (v12)
        {
          goto LABEL_37;
        }

        v3 = v42;
        v2 = v44;
        v37 = v13;
        v38 = v43;
        sub_100611A40(v42, v43, v44, v11);
        v7 = v14;
        v40 = v14;
        sub_10026D034(&v40, v41);
        if (v4)
        {
          goto LABEL_42;
        }

        v16 = v41[0];
        v15 = v41[1];
        v18 = v41[2];
        v17 = v41[3];
        v19 = v39;
        v45 = v39;
        v21 = v39[2];
        v20 = v39[3];
        if (v21 >= v20 >> 1)
        {
          v7 = &v45;
          sub_100199E6C((v20 > 1), v21 + 1, 1);
          v19 = v45;
        }

        v19[2] = v21 + 1;
        v22 = &v19[4 * v21];
        v22[4] = v16;
        v22[5] = v15;
        v22[6] = v18;
        v22[7] = v17;
        v39 = v19;
        if (v36)
        {
          if (!v2)
          {
            goto LABEL_43;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          sub_1000F24EC(&qword_100ADAD60);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v7)(v41, 0);
          v4 = 0;
          v11 = v35;
        }

        else
        {
          v4 = 0;
          v11 = v35;
          if (v2)
          {
            goto LABEL_44;
          }

          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v7 = (1 << *(v35 + 32));
          if (v3 >= v7)
          {
            goto LABEL_38;
          }

          v23 = v3 >> 6;
          v24 = *(v33 + 8 * (v3 >> 6));
          if (((v24 >> v3) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v35 + 36) != v38)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v3 & 0x3F));
          if (v25)
          {
            v7 = (__clz(__rbit64(v25)) | v3 & 0x7FFFFFFFFFFFFFC0);
            v6 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v6 = v34;
            while (v27 < (v7 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A96C(v3, v38, 0);
                v11 = v35;
                v7 = (__clz(__rbit64(v29)) + v26);
                goto LABEL_33;
              }
            }

            sub_10000A96C(v3, v38, 0);
            v11 = v35;
          }

LABEL_33:
          v31 = *(v11 + 36);
          v42 = v7;
          v43 = v31;
          v44 = 0;
        }

        v10 = v37;
        if (v37 == v6)
        {
          sub_10000A96C(v42, v43, v44);
          return;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:

    sub_10000A96C(v3, v38, v2);

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_100267E7C()
{
  v1[3] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100267F70, v4, v3);
}

uint64_t sub_100267F70()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC7Journal16EntryDebugInfoVC_entry);
  v2 = *(v1 + 32);
  v0[10] = v2;
  v3 = v2;
  v4 = [v3 managedObjectContext];
  if (!v4)
  {
    v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v8 = sub_100035ADC(v3, 0, 0, v4);
  v0[11] = v8;
  v9 = *(v1 + 24);
  v0[12] = v9;
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v8;
  (*(v6 + 104))(v5, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
  v11 = v3;
  v9;

  v12 = swift_task_alloc();
  v0[14] = v12;
  v13 = sub_1000F24EC(&qword_100ADAD18);
  *v12 = v0;
  v12[1] = sub_10026815C;
  v14 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_10026D50C, v10, v13);
}

uint64_t sub_10026815C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[12];
    (*(v2[5] + 8))(v2[6], v2[4]);

    v5 = v2[8];
    v6 = v2[9];

    return _swift_task_switch(sub_1002682B0, v5, v6);
  }
}

uint64_t sub_1002682B0()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026833C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v470 = a2;
  v427 = a3;
  v418 = sub_1000F24EC(&unk_100AD6240);
  v417 = *(v418 - 8);
  __chkstk_darwin(v418);
  v416 = &v409 - v4;
  v421 = sub_1000F24EC(&qword_100AE4C80);
  v420 = *(v421 - 8);
  __chkstk_darwin(v421);
  v419 = &v409 - v5;
  v415 = type metadata accessor for MergeableEntryAssetsPlacement();
  v414 = *(v415 - 8);
  __chkstk_darwin(v415);
  v413 = &v409 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v411 = sub_1000F24EC(&qword_100ADAD20);
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v412 = &v409 - v7;
  v424 = sub_1000F24EC(&qword_100ADAD28);
  v422 = *(v424 - 8);
  __chkstk_darwin(v424);
  v423 = &v409 - v8;
  v435 = type metadata accessor for ByteCountFormatStyle.Units();
  v434 = *(v435 - 8);
  __chkstk_darwin(v435);
  v431 = &v409 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = type metadata accessor for ByteCountFormatStyle.Style();
  v430 = *(v432 - 8);
  __chkstk_darwin(v432);
  v429 = &v409 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = type metadata accessor for ByteCountFormatStyle();
  v436 = *(v437 - 8);
  __chkstk_darwin(v437);
  v433 = &v409 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for MergeableEntryAttributes();
  v458 = *(v461 - 8);
  v12 = __chkstk_darwin(v461);
  v456 = &v409 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v439 = &v409 - v14;
  v15 = sub_1000F24EC(&qword_100AD6260);
  v16 = __chkstk_darwin(v15 - 8);
  v428 = &v409 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v438 = &v409 - v18;
  v455 = type metadata accessor for EntriesSortOrder();
  v454 = *(v455 - 8);
  v19 = __chkstk_darwin(v455);
  v453 = &v409 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v452 = &v409 - v21;
  v22 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v467 = *(v22 - 8);
  v468 = v22;
  __chkstk_darwin(v22);
  v465 = &v409 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = type metadata accessor for Date.FormatStyle.DateStyle();
  v464 = *(v466 - 8);
  __chkstk_darwin(v466);
  v463 = &v409 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = type metadata accessor for Date();
  v472 = *(v477 - 1);
  __chkstk_darwin(v477);
  v462 = &v409 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F24EC(&unk_100AD4790);
  v27 = __chkstk_darwin(v26 - 8);
  v450 = &v409 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v451 = &v409 - v30;
  v31 = __chkstk_darwin(v29);
  v448 = &v409 - v32;
  v33 = __chkstk_darwin(v31);
  v449 = &v409 - v34;
  v35 = __chkstk_darwin(v33);
  v446 = &v409 - v36;
  v37 = __chkstk_darwin(v35);
  v447 = &v409 - v38;
  v39 = __chkstk_darwin(v37);
  v444 = &v409 - v40;
  v41 = __chkstk_darwin(v39);
  v445 = &v409 - v42;
  v43 = __chkstk_darwin(v41);
  v442 = &v409 - v44;
  v45 = __chkstk_darwin(v43);
  v443 = &v409 - v46;
  v47 = __chkstk_darwin(v45);
  v440 = &v409 - v48;
  v49 = __chkstk_darwin(v47);
  v441 = &v409 - v50;
  v51 = __chkstk_darwin(v49);
  v460 = (&v409 - v52);
  __chkstk_darwin(v51);
  *&v469 = &v409 - v53;
  v471 = type metadata accessor for FileStoreConfiguration();
  v459 = *(v471 - 1);
  __chkstk_darwin(v471);
  v426 = &v409 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for URL();
  v56 = *(v55 - 8);
  v57 = __chkstk_darwin(v55);
  v425 = &v409 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v409 - v59;
  v61 = type metadata accessor for UUID();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v475 = &v409 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000F24EC(&qword_100AD1420);
  v65 = __chkstk_darwin(v64 - 8);
  v67 = &v409 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v69 = &v409 - v68;
  v473 = sub_1000F24EC(&qword_100AD65B8);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100942000;
  *(v70 + 32) = 25705;
  *(v70 + 40) = 0xE200000000000000;
  v476 = a1;
  v71 = [a1 id];
  if (v71)
  {
    v72 = v71;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v62 + 56))(v67, 0, 1, v61);
  }

  else
  {
    (*(v62 + 56))(v67, 1, 1, v61);
  }

  v73 = v62;
  sub_100021CEC(v67, v69, &qword_100AD1420);
  v74 = (*(v62 + 48))(v69, 1, v61);
  v474 = v61;
  v409 = v62;
  if (v74)
  {
    sub_100004F84(v69, &qword_100AD1420);
    v75 = 0xE300000000000000;
    v76 = 7104878;
  }

  else
  {
    v77 = *(v62 + 16);
    v78 = v475;
    v77(v475, v69, v61);
    sub_100004F84(v69, &qword_100AD1420);
    v79 = UUID.uuidString.getter();
    v80 = v73;
    v76 = v79;
    v75 = v81;
    (*(v80 + 8))(v78, v61);
  }

  *(v70 + 48) = v76;
  *(v70 + 56) = v75;
  object = 0xE300000000000000;
  *(v70 + 64) = 4805205;
  *(v70 + 72) = 0xE300000000000000;
  v83 = [v476 objectID];
  v84 = [v83 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = URL.absoluteString.getter();
  v87 = v86;
  v88 = *(v56 + 8);
  v88(v60, v55);
  *(v70 + 80) = v85;
  *(v70 + 88) = v87;
  *(v70 + 96) = 0x656D686361747441;
  *(v70 + 104) = 0xEF7269442073746ELL;
  sub_100825608();
  if (v89)
  {
    v90 = v426;
    static FileStoreConfiguration.shared.getter();
    v91 = v425;
    FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

    (*(v459 + 8))(v90, v471);
    v92 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v92._countAndFlagsBits;
    object = v92._object;
    v88(v91, v55);
  }

  else
  {
    countAndFlagsBits = 7104878;
  }

  *(v70 + 112) = countAndFlagsBits;
  *(v70 + 120) = object;
  v94 = sub_1003E541C(0, 1, 1, _swiftEmptyArrayStorage);
  v96 = v94[2];
  v95 = v94[3];
  if (v96 >= v95 >> 1)
  {
    v94 = sub_1003E541C((v95 > 1), v96 + 1, 1, v94);
  }

  v94[2] = v96 + 1;
  v97 = &v94[3 * v96];
  v97[4] = 0x7972746E45;
  v97[5] = 0xE500000000000000;
  v97[6] = v70;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100940050;
  *(v98 + 32) = 0x646564616F6C7055;
  *(v98 + 40) = 0xE800000000000000;
  v478 = 0;
  v479 = 0xE000000000000000;
  v99 = v94;
  v100 = [v476 isUploadedToCloud];
  v101 = v100 == 0;
  if (v100)
  {
    v102 = 7562585;
  }

  else
  {
    v102 = 28494;
  }

  if (v101)
  {
    v103 = 0xE200000000000000;
  }

  else
  {
    v103 = 0xE300000000000000;
  }

  v104 = v103;
  String.append(_:)(*&v102);

  v105 = v479;
  *(v98 + 48) = v478;
  *(v98 + 56) = v105;
  *(v98 + 64) = 0x6B6F7420636E7953;
  *(v98 + 72) = 0xEA00000000006E65;
  v478 = 0;
  v479 = 0xE000000000000000;
  v106 = type metadata accessor for JournalEntryMO();
  sub_10026D5C8(&qword_100ADAD30, &type metadata accessor for JournalEntryMO);
  v459 = v106;
  v107 = v99;
  v108 = RecordUploading.currentChangeTags.getter();
  if (v109)
  {
    v110 = v109;
  }

  else
  {
    v108 = 7104878;
    v110 = 0xE300000000000000;
  }

  v111 = v110;
  String.append(_:)(*&v108);

  v112 = v479;
  *(v98 + 80) = v478;
  *(v98 + 88) = v112;
  v114 = v99[2];
  v113 = v99[3];
  if (v114 >= v113 >> 1)
  {
    v107 = sub_1003E541C((v113 > 1), v114 + 1, 1, v99);
  }

  v115 = v472;
  v107[2] = v114 + 1;
  v116 = &v107[3 * v114];
  v116[4] = 1668184403;
  v116[5] = 0xE400000000000000;
  v116[6] = v98;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_10094A920;
  strcpy((v117 + 32), "Created Date");
  *(v117 + 45) = 0;
  *(v117 + 46) = -5120;
  v118 = [v476 createdDate];
  v471 = v107;
  if (v118)
  {
    v119 = v460;
    v120 = v118;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = 0;
    v122 = v469;
  }

  else
  {
    v121 = 1;
    v122 = v469;
    v119 = v460;
  }

  v123 = v115[7];
  v124 = v477;
  (v123)(v119, v121, 1, v477);
  sub_100021CEC(v119, v122, &unk_100AD4790);
  v125 = v115[6];
  v126 = (v125)(v122, 1, v124);
  v460 = v123;
  *&v469 = v125;
  if (v126)
  {
    sub_100004F84(v122, &unk_100AD4790);
    v127 = 0xE300000000000000;
    v128 = 7104878;
  }

  else
  {
    v129 = v462;
    v130 = v477;
    (v115[2])(v462, v122, v477);
    sub_100004F84(v122, &unk_100AD4790);
    v131 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v132 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v128 = Date.formatted(date:time:)();
    v127 = v133;
    v134 = v132;
    v125 = v469;
    (*(v467 + 8))(v134, v468);
    v135 = v131;
    v115 = v472;
    (*(v464 + 8))(v135, v466);
    v136 = v129;
    v123 = v460;
    v115[1](v136, v130);
  }

  *(v117 + 48) = v128;
  *(v117 + 56) = v127;
  strcpy((v117 + 64), "Updated Date");
  *(v117 + 77) = 0;
  *(v117 + 78) = -5120;
  v137 = [v476 updatedDate];
  if (v137)
  {
    v138 = v440;
    v139 = v137;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v140 = 0;
    v141 = v441;
  }

  else
  {
    v140 = 1;
    v141 = v441;
    v138 = v440;
  }

  v142 = v477;
  (v123)(v138, v140, 1, v477);
  sub_100021CEC(v138, v141, &unk_100AD4790);
  if ((v125)(v141, 1, v142))
  {
    sub_100004F84(v141, &unk_100AD4790);
    v143 = 0xE300000000000000;
    v144 = 7104878;
  }

  else
  {
    v145 = v462;
    v146 = v477;
    (v115[2])(v462, v141, v477);
    sub_100004F84(v141, &unk_100AD4790);
    v147 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v148 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v144 = Date.formatted(date:time:)();
    v143 = v149;
    v150 = v148;
    v125 = v469;
    (*(v467 + 8))(v150, v468);
    v151 = v147;
    v115 = v472;
    (*(v464 + 8))(v151, v466);
    v152 = v145;
    v123 = v460;
    v115[1](v152, v146);
  }

  *(v117 + 80) = v144;
  *(v117 + 88) = v143;
  *(v117 + 96) = 0x6144207972746E45;
  *(v117 + 104) = 0xEA00000000006574;
  v153 = [v476 entryDate];
  if (v153)
  {
    v154 = v442;
    v155 = v153;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v156 = 0;
    v157 = v443;
  }

  else
  {
    v156 = 1;
    v157 = v443;
    v154 = v442;
  }

  v158 = v477;
  (v123)(v154, v156, 1, v477);
  sub_100021CEC(v154, v157, &unk_100AD4790);
  if ((v125)(v157, 1, v158))
  {
    sub_100004F84(v157, &unk_100AD4790);
    v159 = 0xE300000000000000;
    v160 = 7104878;
  }

  else
  {
    v161 = v462;
    v162 = v477;
    (v115[2])(v462, v157, v477);
    sub_100004F84(v157, &unk_100AD4790);
    v163 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v164 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v160 = Date.formatted(date:time:)();
    v159 = v165;
    v166 = v164;
    v125 = v469;
    (*(v467 + 8))(v166, v468);
    v167 = v163;
    v115 = v472;
    (*(v464 + 8))(v167, v466);
    v168 = v161;
    v123 = v460;
    v115[1](v168, v162);
  }

  *(v117 + 112) = v160;
  *(v117 + 120) = v159;
  *(v117 + 128) = 0xD000000000000011;
  *(v117 + 136) = 0x80000001008E77D0;
  v169 = [v476 dateSource];
  if (v169)
  {
    v170 = v169;
    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;

    v125 = v469;
  }

  else
  {
    v173 = 0xE300000000000000;
    v171 = 7104878;
  }

  *(v117 + 144) = v171;
  *(v117 + 152) = v173;
  *(v117 + 160) = 0x20646574656C6544;
  *(v117 + 168) = 0xEF65746144206E4FLL;
  v174 = [v476 deletedOnDate];
  if (v174)
  {
    v175 = v444;
    v176 = v174;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v177 = 0;
    v178 = v445;
  }

  else
  {
    v177 = 1;
    v178 = v445;
    v175 = v444;
  }

  v179 = v477;
  (v123)(v175, v177, 1, v477);
  sub_100021CEC(v175, v178, &unk_100AD4790);
  if ((v125)(v178, 1, v179))
  {
    sub_100004F84(v178, &unk_100AD4790);
    v180 = 0xE300000000000000;
    v181 = 7104878;
  }

  else
  {
    v182 = v462;
    v183 = v477;
    (v115[2])(v462, v178, v477);
    sub_100004F84(v178, &unk_100AD4790);
    v184 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v185 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v181 = Date.formatted(date:time:)();
    v180 = v186;
    v187 = v185;
    v125 = v469;
    (*(v467 + 8))(v187, v468);
    v188 = v184;
    v115 = v472;
    (*(v464 + 8))(v188, v466);
    v189 = v182;
    v123 = v460;
    v115[1](v189, v183);
  }

  *(v117 + 176) = v181;
  *(v117 + 184) = v180;
  *(v117 + 192) = 0xD000000000000011;
  *(v117 + 200) = 0x80000001008E77F0;
  v190 = [v476 bundleDate];
  if (v190)
  {
    v191 = v446;
    v192 = v190;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v193 = 0;
    v194 = v447;
  }

  else
  {
    v193 = 1;
    v194 = v447;
    v191 = v446;
  }

  v195 = v477;
  (v123)(v191, v193, 1, v477);
  sub_100021CEC(v191, v194, &unk_100AD4790);
  if ((v125)(v194, 1, v195))
  {
    sub_100004F84(v194, &unk_100AD4790);
    v196 = 0xE300000000000000;
    v197 = 7104878;
  }

  else
  {
    v198 = v462;
    v199 = v477;
    (v115[2])(v462, v194, v477);
    sub_100004F84(v194, &unk_100AD4790);
    v200 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v201 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v197 = Date.formatted(date:time:)();
    v196 = v202;
    v203 = v201;
    v125 = v469;
    (*(v467 + 8))(v203, v468);
    v204 = v200;
    v115 = v472;
    (*(v464 + 8))(v204, v466);
    v205 = v198;
    v123 = v460;
    v115[1](v205, v199);
  }

  *(v117 + 208) = v197;
  *(v117 + 216) = v196;
  *(v117 + 224) = 0x4520656C646E7542;
  *(v117 + 232) = 0xEF6574614420646ELL;
  v206 = [v476 bundleEndDate];
  if (v206)
  {
    v207 = v448;
    v208 = v206;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v209 = 0;
    v210 = v449;
  }

  else
  {
    v209 = 1;
    v210 = v449;
    v207 = v448;
  }

  v211 = v477;
  (v123)(v207, v209, 1, v477);
  sub_100021CEC(v207, v210, &unk_100AD4790);
  if ((v125)(v210, 1, v211))
  {
    sub_100004F84(v210, &unk_100AD4790);
    v212 = 0xE300000000000000;
    v213 = 7104878;
  }

  else
  {
    v214 = v462;
    v215 = v477;
    (v115[2])(v462, v210, v477);
    sub_100004F84(v210, &unk_100AD4790);
    v216 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v217 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v213 = Date.formatted(date:time:)();
    v212 = v218;
    v219 = v217;
    v125 = v469;
    (*(v467 + 8))(v219, v468);
    v220 = v216;
    v115 = v472;
    (*(v464 + 8))(v220, v466);
    v221 = v214;
    v123 = v460;
    v115[1](v221, v215);
  }

  *(v117 + 240) = v213;
  *(v117 + 248) = v212;
  *(v117 + 256) = 0xD000000000000013;
  *(v117 + 264) = 0x80000001008E7810;
  v222 = [v476 momentDateForSorting];
  if (v222)
  {
    v223 = v450;
    v224 = v222;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v225 = 0;
    v226 = v451;
  }

  else
  {
    v225 = 1;
    v226 = v451;
    v223 = v450;
  }

  v227 = v477;
  (v123)(v223, v225, 1, v477);
  sub_100021CEC(v223, v226, &unk_100AD4790);
  if ((v125)(v226, 1, v227))
  {
    sub_100004F84(v226, &unk_100AD4790);
    v228 = 0xE300000000000000;
    v229 = v471;
    v230 = v455;
    v231 = v454;
    v232 = v453;
    v233 = 7104878;
  }

  else
  {
    v234 = v462;
    v235 = v477;
    (v115[2])(v462, v226, v477);
    sub_100004F84(v226, &unk_100AD4790);
    v236 = v463;
    static Date.FormatStyle.DateStyle.long.getter();
    v237 = v465;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v233 = Date.formatted(date:time:)();
    v228 = v238;
    (*(v467 + 8))(v237, v468);
    (*(v464 + 8))(v236, v466);
    v115[1](v234, v235);
    v229 = v471;
    v230 = v455;
    v231 = v454;
    v232 = v453;
  }

  *(v117 + 272) = v233;
  *(v117 + 280) = v228;
  *(v117 + 288) = 0xD000000000000012;
  *(v117 + 296) = 0x80000001008E7830;
  v239 = v452;
  static EntriesSortOrder.timeline.getter();
  v240 = EntriesSortOrder.rawValue.getter();
  v242 = v241;
  v243 = *(v231 + 8);
  v243(v239, v230);
  *(v117 + 304) = v240;
  *(v117 + 312) = v242;
  *(v117 + 320) = 0xD000000000000010;
  *(v117 + 328) = 0x80000001008E7850;
  static EntriesSortOrder.timeline.getter();
  EntriesSortOrder.getSortDescriptors()();
  v243(v232, v230);
  sub_10026D528();
  v244 = Array.description.getter();
  v246 = v245;

  *(v117 + 336) = v244;
  *(v117 + 344) = v246;
  *(v117 + 352) = 0xD000000000000019;
  *(v117 + 360) = 0x80000001008E7870;
  *(v117 + 368) = sub_10026B618(v476);
  *(v117 + 376) = v247;
  v249 = v229[2];
  v248 = v229[3];
  if (v249 >= v248 >> 1)
  {
    v229 = sub_1003E541C((v248 > 1), v249 + 1, 1, v229);
  }

  v229[2] = v249 + 1;
  v471 = v229;
  v250 = &v229[3 * v249];
  v250[4] = 0x7365746144;
  v250[5] = 0xE500000000000000;
  v250[6] = v117;
  v251 = swift_allocObject();
  v469 = xmmword_10094A930;
  *(v251 + 16) = xmmword_10094A930;
  *(v251 + 32) = 1954047316;
  *(v251 + 40) = 0xE400000000000000;
  v478 = 0;
  v479 = 0xE000000000000000;
  v252 = [v476 text];
  if (!v252)
  {
    goto LABEL_81;
  }

  v253 = v252;
  v254 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v256 = v255;

  v257 = v256;
  v258 = v256 >> 62;
  if ((v256 >> 62) <= 1)
  {
    if (!v258)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  if (v258 != 2)
  {
LABEL_80:
    sub_1000340DC(v254, v256);
    goto LABEL_81;
  }

  v260 = *(v254 + 16);
  v259 = *(v254 + 24);
  sub_1000340DC(v254, v257);
  if (__OFSUB__(v259, v260))
  {
    __break(1u);
LABEL_78:
    result = sub_1000340DC(v254, v257);
    if (__OFSUB__(HIDWORD(v254), v254))
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }
  }

LABEL_81:
  v262._countAndFlagsBits = sub_100787220();
  String.append(_:)(v262);

  v263._countAndFlagsBits = 0x736574796220;
  v263._object = 0xE600000000000000;
  String.append(_:)(v263);
  v264 = v479;
  *(v251 + 48) = v478;
  *(v251 + 56) = v264;
  *(v251 + 64) = 0x656C746954;
  *(v251 + 72) = 0xE500000000000000;
  v478 = 0;
  v479 = 0xE000000000000000;
  v265 = [v476 title];
  if (!v265)
  {
    v274 = v461;
    v272 = v439;
    v273 = v438;
    goto LABEL_94;
  }

  v266 = v265;
  v267 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v269 = v268;

  v270 = v269;
  v271 = v269 >> 62;
  v272 = v439;
  v273 = v438;
  if ((v269 >> 62) > 1)
  {
    if (v271 != 2)
    {
LABEL_92:
      sub_1000340DC(v267, v269);
LABEL_93:
      v274 = v461;
      goto LABEL_94;
    }

    v276 = *(v267 + 16);
    v275 = *(v267 + 24);
    sub_1000340DC(v267, v270);
    if (!__OFSUB__(v275, v276))
    {
      goto LABEL_93;
    }

    __break(1u);
  }

  else if (!v271)
  {
    goto LABEL_92;
  }

  result = sub_1000340DC(v267, v270);
  v274 = v461;
  if (__OFSUB__(HIDWORD(v267), v267))
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

LABEL_94:
  v277._countAndFlagsBits = sub_100787220();
  String.append(_:)(v277);

  v278._countAndFlagsBits = 0x736574796220;
  v278._object = 0xE600000000000000;
  String.append(_:)(v278);
  v279 = v479;
  *(v251 + 80) = v478;
  *(v251 + 88) = v279;
  *(v251 + 96) = 0xD000000000000014;
  *(v251 + 104) = 0x80000001008E7890;
  v478 = 0;
  v479 = 0xE000000000000000;
  v280 = sub_10026D5C8(&qword_100ADAD38, &type metadata accessor for JournalEntryMO);
  MergeableProvider.unwrappedMergeableAttributes.getter();
  v281 = v458;
  v282 = (v458 + 48);
  v283 = *(v458 + 48);
  v284 = v283(v273, 1, v274);
  v477 = v280;
  v472 = v283;
  if (v284)
  {
    sub_100004F84(v273, &qword_100AD6260);
    v285 = 0;
    goto LABEL_98;
  }

  (*(v281 + 16))(v272, v273, v274);
  sub_100004F84(v273, &qword_100AD6260);
  sub_10026D5C8(&qword_100ADAD58, &type metadata accessor for MergeableEntryAttributes);
  v286 = v457;
  v287 = CRDT.serializedData.getter();
  if (v286)
  {

    (*(v281 + 8))(v272, v274);
    v285 = 0;
    v457 = 0;
    goto LABEL_98;
  }

  v457 = 0;
  v377 = v287;
  v378 = *(v281 + 8);
  v379 = v288;
  v378(v272, v274);
  v380 = v379;
  v381 = v379 >> 62;
  if ((v379 >> 62) <= 1)
  {
    if (!v381)
    {
      sub_1000340DC(v377, v379);
      v285 = BYTE6(v379);
      goto LABEL_98;
    }

    goto LABEL_133;
  }

  v382 = v377;
  if (v381 != 2)
  {
    sub_1000340DC(v377, v379);
    v285 = 0;
    goto LABEL_98;
  }

  v383 = *(v377 + 16);
  v377 = *(v377 + 24);
  sub_1000340DC(v382, v380);
  v285 = v377 - v383;
  if (__OFSUB__(v377, v383))
  {
    __break(1u);
LABEL_133:
    result = sub_1000340DC(v377, v380);
    LODWORD(v285) = HIDWORD(v377) - v377;
    if (__OFSUB__(HIDWORD(v377), v377))
    {
LABEL_158:
      __break(1u);
      return result;
    }

    v285 = v285;
  }

LABEL_98:
  v289 = v435;
  v290 = v434;
  v481 = v285;
  v291 = v430;
  v292 = v429;
  v293 = v432;
  (*(v430 + 104))(v429, enum case for ByteCountFormatStyle.Style.memory(_:), v432);
  v294 = v431;
  static ByteCountFormatStyle.Units.all.getter();
  v295 = v433;
  static FormatStyle<>.byteCount(style:allowedUnits:spellsOutZero:includesActualByteCount:)();
  (*(v290 + 8))(v294, v289);
  (*(v291 + 8))(v292, v293);
  sub_1000F6568();
  sub_10026D5C8(&qword_100ADAD40, &type metadata accessor for ByteCountFormatStyle);
  sub_10026D574();
  v296 = v437;
  BinaryInteger.formatted<A>(_:)();
  (*(v436 + 8))(v295, v296);
  String.append(_:)(v480);

  v297 = v479;
  *(v251 + 112) = v478;
  *(v251 + 120) = v297;
  *(v251 + 128) = 0xD000000000000020;
  *(v251 + 136) = 0x80000001008E78B0;
  v478 = 0;
  v479 = 0xE000000000000000;
  sub_1000F24EC(&qword_100ADAD48);
  v298 = type metadata accessor for AssetType();
  v299 = *(v298 - 8);
  v300 = (*(v299 + 80) + 32) & ~*(v299 + 80);
  v301 = swift_allocObject();
  *(v301 + 16) = xmmword_100940080;
  (*(v299 + 104))(v301 + v300, enum case for AssetType.audio(_:), v298);
  v302 = sub_100495AE8(v301);
  swift_setDeallocating();
  (*(v299 + 8))(v301 + v300, v298);
  swift_deallocClassInstance();
  sub_100783744(v302);

  v303._countAndFlagsBits = sub_100787220();
  String.append(_:)(v303);

  v304._countAndFlagsBits = 0x736574796220;
  v304._object = 0xE600000000000000;
  String.append(_:)(v304);
  v305 = v479;
  *(v251 + 144) = v478;
  *(v251 + 152) = v305;
  *(v251 + 160) = 0x53206C6175746341;
  *(v251 + 168) = 0xEB00000000657A69;
  v478 = 0;
  v479 = 0xE000000000000000;
  sub_100783744(&_swiftEmptySetSingleton);
  v306._countAndFlagsBits = sub_100787220();
  String.append(_:)(v306);

  v307._countAndFlagsBits = 0x736574796220;
  v307._object = 0xE600000000000000;
  String.append(_:)(v307);
  v308 = v479;
  *(v251 + 176) = v478;
  *(v251 + 184) = v308;
  v309 = v471;
  v311 = v471[2];
  v310 = v471[3];
  if (v311 >= v310 >> 1)
  {
    v309 = sub_1003E541C((v310 > 1), v311 + 1, 1, v471);
  }

  v312 = v461;
  v313 = v428;
  v314 = v472;
  *(v309 + 16) = v311 + 1;
  v315 = (v309 + 24 * v311);
  v315[4] = 0x73657A6953;
  v315[5] = 0xE500000000000000;
  v315[6] = v251;
  MergeableProvider.unwrappedMergeableAttributes.getter();
  if ((v314)(v313, 1, v312) == 1)
  {
    sub_100004F84(v313, &qword_100AD6260);
    goto LABEL_113;
  }

  (*(v458 + 32))(v456, v313, v312);
  v316 = swift_allocObject();
  *(v316 + 16) = v469;
  *(v316 + 32) = 0x736C616E72756F4ALL;
  *(v316 + 40) = 0xE800000000000000;
  *&v469 = v316;
  v480._countAndFlagsBits = 0;
  v480._object = 0xE000000000000000;
  v317 = v423;
  MergeableEntryAttributes.associatedJournalIDs.getter();
  sub_10000B58C(&qword_100ADAD50, &qword_100ADAD28);
  v318 = v424;
  v319 = dispatch thunk of Collection.count.getter();
  v471 = v309;
  if (v319)
  {
    v320 = v319;
    v481 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v319 & ~(v319 >> 63), 0);
    v321 = v481;
    v322 = v412;
    result = dispatch thunk of Collection.startIndex.getter();
    if ((v320 & 0x8000000000000000) == 0)
    {
      v472 = (v409 + 8);
      v473 = (v409 + 16);
      do
      {
        v323 = dispatch thunk of Collection.subscript.read();
        v324 = v474;
        v325 = v475;
        (*v473)(v475);
        v323(&v478, 0);
        sub_10026D5C8(&qword_100AE19B0, &type metadata accessor for UUID);
        v326 = dispatch thunk of CustomStringConvertible.description.getter();
        v477 = v327;
        (*v472)(v325, v324);
        v481 = v321;
        v329 = v321[2];
        v328 = v321[3];
        if (v329 >= v328 >> 1)
        {
          sub_1001999C0((v328 > 1), v329 + 1, 1);
          v321 = v481;
        }

        v321[2] = v329 + 1;
        v330 = &v321[2 * v329];
        v331 = v477;
        v330[4] = v326;
        v330[5] = v331;
        dispatch thunk of Collection.formIndex(after:)();
        --v320;
      }

      while (v320);
      (*(v410 + 8))(v322, v411);
      (*(v422 + 8))(v317, v318);
      v332 = v321;
      goto LABEL_110;
    }

    __break(1u);
    goto LABEL_156;
  }

  (*(v422 + 8))(v317, v318);
  v332 = _swiftEmptyArrayStorage;
LABEL_110:
  v478 = v332;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v333 = BidirectionalCollection<>.joined(separator:)();
  v335 = v334;

  v336._countAndFlagsBits = v333;
  v336._object = v335;
  String.append(_:)(v336);

  v337 = v480._object;
  v282 = v469;
  *(v469 + 48) = v480._countAndFlagsBits;
  *(v282 + 7) = v337;
  *(v282 + 8) = 0x6C50207465737341;
  *(v282 + 9) = 0xEF746E656D656361;
  v478 = 0;
  v479 = 0xE000000000000000;
  v338 = v413;
  MergeableEntryAttributes.assetPlacement.getter();
  v339 = v415;
  _print_unlocked<A, B>(_:_:)();
  (*(v414 + 8))(v338, v339);
  v340 = v479;
  *(v282 + 10) = v478;
  *(v282 + 11) = v340;
  strcpy(v282 + 96, "Inline Assets");
  *(v282 + 55) = -4864;
  v341 = v419;
  MergeableEntryAttributes.text.getter();
  v342 = CRAttributedString<>.inlineAssetsDebugString.getter();
  v344 = v343;
  v477 = *(v420 + 8);
  v313 = v421;
  (v477)(v341, v421);
  *(v282 + 14) = v342;
  *(v282 + 15) = v344;
  *(v282 + 16) = 0x656C746954;
  *(v282 + 17) = 0xE500000000000000;
  v345 = v416;
  MergeableEntryAttributes.title.getter();
  v346 = v418;
  v347 = CRAttributedString.attributedString.getter();
  (*(v417 + 8))(v345, v346);
  v348 = [v347 description];
  v349 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v351 = v350;

  *(v282 + 18) = v349;
  *(v282 + 19) = v351;
  *(v282 + 20) = 1954047316;
  *(v282 + 21) = 0xE400000000000000;
  MergeableEntryAttributes.text.getter();
  v352 = CRAttributedString.attributedString.getter();
  (v477)(v341, v313);
  v353 = [v352 description];
  v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v355 = v354;

  *(v282 + 22) = v312;
  *(v282 + 23) = v355;
  v251 = 0x80000001008E78E0;
  v309 = v471;
  v311 = v471[2];
  v356 = v471[3];
  if (v311 >= v356 >> 1)
  {
    v309 = sub_1003E541C((v356 > 1), v311 + 1, 1, v471);
  }

  (*(v458 + 8))(v456, v461);
  *(v309 + 16) = v311 + 1;
  v357 = (v309 + 24 * v311);
  v357[4] = 0xD000000000000014;
  v357[5] = 0x80000001008E78E0;
  v357[6] = v469;
LABEL_113:
  v358 = v476;
  v359 = JournalEntryMO.assetsArray.getter();
  v360 = v359;
  if (v359 >> 62)
  {
    v251 = v359;
    v362 = _CocoaArrayWrapper.endIndex.getter();
    v360 = v251;
    v471 = v309;
    if (v362)
    {
      goto LABEL_115;
    }

LABEL_137:
    v364 = _swiftEmptyArrayStorage;
    goto LABEL_138;
  }

  v361 = v359 & 0xFFFFFFFFFFFFFF8;
  v362 = *((v359 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v471 = v309;
  if (!v362)
  {
    goto LABEL_137;
  }

LABEL_115:
  if (v362 < 1)
  {
    __break(1u);
LABEL_154:
    v312 = sub_1003E53F8((v361 > 1), v309, 1, v312);
    goto LABEL_142;
  }

  v363 = 0;
  v474 = v360 & 0xC000000000000001;
  v364 = _swiftEmptyArrayStorage;
  v475 = v362;
  v476 = v360;
  do
  {
    if (v474)
    {
      v365 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v365 = *(v360 + 8 * v363 + 32);
    }

    v366 = v365;
    v367 = sub_100039CE0();
    v477 = AssetType.rawValue.getter();
    v369 = v368;
    v370 = sub_10026B854();
    v372 = v371;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v364 = sub_1003E53F8(0, v364[2] + 1, 1, v364);
    }

    v374 = v364[2];
    v373 = v364[3];
    v375 = v364;
    if (v374 >= v373 >> 1)
    {
      v375 = sub_1003E53F8((v373 > 1), v374 + 1, 1, v364);
    }

    ++v363;

    v375[2] = v374 + 1;
    v364 = v375;
    v376 = &v375[4 * v374];
    v360 = v476;
    v376[4] = v477;
    v376[5] = v369;
    v376[6] = v370;
    v376[7] = v372;
  }

  while (v475 != v363);
LABEL_138:

  v384 = v471;
  v385 = v471[2];
  v386 = v471[3];

  if (v385 >= v386 >> 1)
  {
    v384 = sub_1003E541C((v386 > 1), v385 + 1, 1, v384);
  }

  v384[2] = v385 + 1;
  v387 = &v384[3 * v385];
  v387[4] = 0x737465737341;
  v387[5] = 0xE600000000000000;
  v387[6] = v364;
  v388 = sub_100049F2C();
  if (!v388)
  {
    goto LABEL_150;
  }

  v358 = v384;
  v389 = sub_10053256C(v388);
  v311 = v390;
  v477 = v391;
  v478 = 0;
  v479 = 0xE000000000000000;
  v480._countAndFlagsBits = v389;
  LOBYTE(v480._object) = v392 & 1;
  _print_unlocked<A, B>(_:_:)();
  v282 = v478;
  v313 = v479;
  v312 = sub_1003E53F8(0, 1, 1, _swiftEmptyArrayStorage);
  v251 = v312[2];
  v361 = v312[3];
  v309 = v251 + 1;
  if (v251 >= v361 >> 1)
  {
    goto LABEL_154;
  }

LABEL_142:
  v312[2] = v309;
  v393 = &v312[4 * v251];
  v393[4] = 1701869908;
  v393[5] = 0xE400000000000000;
  v393[6] = v282;
  v393[7] = v313;
  if (v311)
  {
    v394 = [v311 string];
    v395 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v397 = v396;

    v309 = v312[2];
  }

  else
  {
    v395 = 0;
    v397 = 0xE000000000000000;
  }

  v398 = v312[3];
  if (v309 >= v398 >> 1)
  {
    v312 = sub_1003E53F8((v398 > 1), v309 + 1, 1, v312);
  }

  v312[2] = v309 + 1;
  v399 = &v312[4 * v309];
  v399[4] = 0x74706D6F7250;
  v399[5] = 0xE600000000000000;
  v399[6] = v395;
  v399[7] = v397;
  v384 = v358;
  v401 = v358[2];
  v400 = v358[3];
  if (v401 >= v400 >> 1)
  {
    v384 = sub_1003E541C((v400 > 1), v401 + 1, 1, v358);
  }

  v384[2] = v401 + 1;
  v402 = &v384[3 * v401];
  v402[4] = 0x697463656C666552;
  v402[5] = 0xEA00000000006E6FLL;
  v402[6] = v312;
LABEL_150:
  sub_10077AE4C();
  sub_1002679DC(v403);
  v405 = v404;

  v407 = v384[2];
  v406 = v384[3];
  if (v407 >= v406 >> 1)
  {
    result = sub_1003E541C((v406 > 1), v407 + 1, 1, v384);
    v384 = result;
  }

  v384[2] = v407 + 1;
  v408 = &v384[3 * v407];
  v408[4] = 0x736C616E72756F4ALL;
  v408[5] = 0xE800000000000000;
  v408[6] = v405;
  *v427 = v384;
  return result;
}

uint64_t sub_10026B618(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADAD68);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for MinimumVersionConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  JournalEntryMO.minimumVersionConfiguration.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &qword_100ADAD68);
    v15 = [a1 minimumSupportedAppVersion];
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v9;
    v10._countAndFlagsBits = 8236;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v15 = [a1 minimumSupportedAppVersionMode];
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    return v16;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v16 = 0;
    v17 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v12 = v16;
    (*(v6 + 8))(v8, v5);
  }

  return v12;
}

uint64_t sub_10026B854()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  v3 = __chkstk_darwin(v2 - 8);
  v217 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v216 = &v201 - v6;
  __chkstk_darwin(v5);
  v8 = &v201 - v7;
  v215 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v215);
  v211 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v212 = *(v10 - 8);
  v213 = v10;
  __chkstk_darwin(v10);
  v209 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Date.FormatStyle.DateStyle();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD5B20);
  v14 = __chkstk_darwin(v13 - 8);
  v220 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v201 - v17;
  __chkstk_darwin(v16);
  v20 = &v201 - v19;
  v21 = sub_1000F24EC(&unk_100AD4790);
  v22 = __chkstk_darwin(v21 - 8);
  v206 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v205 = &v201 - v25;
  __chkstk_darwin(v24);
  v204 = &v201 - v26;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = 540697705;
  v224 = 0xE400000000000000;
  v31._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 2570;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v214 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  v33 = *&v0[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (v33)
  {
    v34 = [v33 objectID];
    v35 = [v34 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = URL.absoluteString.getter();
    v37 = v1;
    v38 = v18;
    v40 = v39;
    (*(v28 + 8))(v30, v27);
    v222._countAndFlagsBits = 0x203A697275;
    v222._object = 0xE500000000000000;
    v41._countAndFlagsBits = v36;
    v41._object = v40;
    String.append(_:)(v41);
    v18 = v38;
    v1 = v37;

    v42._countAndFlagsBits = 2570;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    String.append(_:)(v222);
  }

  v218 = v28;
  v219 = v27;
  type metadata accessor for PhotoAsset();
  if (swift_dynamicCastClass())
  {
    v222._countAndFlagsBits = 0x203A65746144;
    v222._object = 0xE600000000000000;
    v43 = v1;
    sub_1006ABED4(v20);
    v44 = type metadata accessor for PhotoLibraryAssetMetadata();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v20, 1, v44) == 1)
    {
      v46 = &qword_100AD5B20;
      v47 = v20;
    }

    else
    {
      v48 = v204;
      PhotoLibraryAssetMetadata.date.getter();
      (*(v45 + 8))(v20, v44);
      v49 = type metadata accessor for Date();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v48, 1, v49) != 1)
      {
        v203 = v18;
        v53 = v207;
        static Date.FormatStyle.DateStyle.long.getter();
        v202 = v43;
        v54 = v209;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        v55 = v48;
        v52 = Date.formatted(date:time:)();
        v51 = v56;
        v57 = v54;
        v43 = v202;
        (*(v212 + 8))(v57, v213);
        v58 = v53;
        v18 = v203;
        (*(v208 + 8))(v58, v210);
        (*(v50 + 8))(v55, v49);
        goto LABEL_10;
      }

      v46 = &unk_100AD4790;
      v47 = v48;
    }

    sub_100004F84(v47, v46);
    v51 = 0xE300000000000000;
    v52 = 7104878;
LABEL_10:
    v59._countAndFlagsBits = v52;
    v59._object = v51;
    String.append(_:)(v59);

    v60._countAndFlagsBits = 10;
    v60._object = 0xE100000000000000;
    String.append(_:)(v60);
    String.append(_:)(v222);
  }

  type metadata accessor for VideoAsset();
  v61 = swift_dynamicCastClass();
  v62 = v211;
  if (v61)
  {
    v222._countAndFlagsBits = 0x203A65746144;
    v222._object = 0xE600000000000000;
    v63 = v1;
    sub_1006AC114(v18);
    v64 = type metadata accessor for PhotoLibraryAssetMetadata();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v18, 1, v64) == 1)
    {
      sub_100004F84(v18, &qword_100AD5B20);
      v66 = 0xE300000000000000;
      v67 = 7104878;
    }

    else
    {
      v68 = v205;
      PhotoLibraryAssetMetadata.date.getter();
      (*(v65 + 8))(v18, v64);
      v69 = type metadata accessor for Date();
      v70 = *(v69 - 8);
      if ((*(v70 + 48))(v68, 1, v69) == 1)
      {
        sub_100004F84(v68, &unk_100AD4790);
        v66 = 0xE300000000000000;
        v67 = 7104878;
      }

      else
      {
        v71 = v207;
        static Date.FormatStyle.DateStyle.long.getter();
        v72 = v209;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        v73 = v68;
        v74 = Date.formatted(date:time:)();
        v66 = v75;
        (*(v212 + 8))(v72, v213);
        (*(v208 + 8))(v71, v210);
        (*(v70 + 8))(v73, v69);
        v67 = v74;
      }
    }

    v76 = v66;
    String.append(_:)(*&v67);

    v77._countAndFlagsBits = 10;
    v77._object = 0xE100000000000000;
    String.append(_:)(v77);
    String.append(_:)(v222);

    v62 = v211;
  }

  type metadata accessor for LivePhotoAsset();
  v78 = swift_dynamicCastClass();
  v79 = v220;
  if (v78)
  {
    v222._countAndFlagsBits = 0x203A65746144;
    v222._object = 0xE600000000000000;
    v80 = v1;
    sub_1006AB154(v79);
    v81 = type metadata accessor for PhotoLibraryAssetMetadata();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v79, 1, v81) == 1)
    {
      v83 = &qword_100AD5B20;
      v84 = v79;
    }

    else
    {
      v85 = v206;
      PhotoLibraryAssetMetadata.date.getter();
      (*(v82 + 8))(v79, v81);
      v86 = type metadata accessor for Date();
      v87 = *(v86 - 8);
      if ((*(v87 + 48))(v85, 1, v86) != 1)
      {
        v90 = v207;
        static Date.FormatStyle.DateStyle.long.getter();
        v91 = v209;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        v92 = v85;
        v93 = Date.formatted(date:time:)();
        v88 = v94;
        (*(v212 + 8))(v91, v213);
        (*(v208 + 8))(v90, v210);
        (*(v87 + 8))(v92, v86);
        v89 = v93;
        goto LABEL_25;
      }

      v83 = &unk_100AD4790;
      v84 = v85;
    }

    sub_100004F84(v84, v83);
    v88 = 0xE300000000000000;
    v89 = 7104878;
LABEL_25:
    v95 = v88;
    String.append(_:)(*&v89);

    v96._countAndFlagsBits = 10;
    v96._object = 0xE100000000000000;
    String.append(_:)(v96);
    String.append(_:)(v222);

    v62 = v211;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_40;
  }

  v222._countAndFlagsBits = 0;
  v222._object = 0xE000000000000000;
  v97 = v1;
  _StringGuts.grow(_:)(25);

  v222._countAndFlagsBits = 0x617461646174654DLL;
  v222._object = 0xEF203A657A697320;
  v99 = (*((swift_isaMask & *v97) + 0x140))(v98);
  if (!v99 || (v100 = v99, v101 = [v99 assetMetaData], v100, !v101))
  {
LABEL_39:
    v110._countAndFlagsBits = sub_100787220();
    String.append(_:)(v110);

    v111._countAndFlagsBits = 0xA0A736574796220;
    v111._object = 0xE800000000000000;
    String.append(_:)(v111);
    String.append(_:)(v222);

LABEL_40:
    type metadata accessor for LinkAsset();
    if (swift_dynamicCastClass())
    {
      v112 = v1;
      v113 = sub_1001D863C();
      if (v113)
      {
        v114 = v113;
        v222._countAndFlagsBits = 0;
        v222._object = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v222._countAndFlagsBits = 0xD000000000000015;
        v222._object = 0x80000001008E79A0;
        v115 = [v114 itemType];
        if (v115)
        {
          v116 = v115;
          v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v118;
        }

        else
        {
          v119 = 0xE300000000000000;
          v117 = 7104878;
        }

        v120._countAndFlagsBits = v117;
        v120._object = v119;
        String.append(_:)(v120);

        v121._countAndFlagsBits = 0x614E65746973203BLL;
        v121._object = 0xED0000203D20656DLL;
        String.append(_:)(v121);
        v122 = [v114 siteName];
        if (v122)
        {
          v123 = v122;
          v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;
        }

        else
        {
          v126 = 0xE300000000000000;
          v124 = 7104878;
        }

        v127._countAndFlagsBits = v124;
        v127._object = v126;
        String.append(_:)(v127);

        v128._countAndFlagsBits = 2570;
        v128._object = 0xE200000000000000;
        String.append(_:)(v128);
        String.append(_:)(v222);
      }

      else
      {
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v222._countAndFlagsBits = 0;
      v222._object = 0xE000000000000000;
      v129 = v1;
      _StringGuts.grow(_:)(50);

      v222._countAndFlagsBits = 0xD000000000000013;
      v222._object = 0x80000001008E7960;
      v130 = v129[OBJC_IVAR____TtC7Journal9LinkAsset_contentType];
      if (v130 <= 2)
      {
        if (v129[OBJC_IVAR____TtC7Journal9LinkAsset_contentType])
        {
          v131 = 0xE700000000000000;
          if (v130 == 1)
          {
            v132 = 0x74736163646F70;
          }

          else
          {
            v132 = 0x656C6369747261;
          }
        }

        else
        {
          v131 = 0xE500000000000000;
          v132 = 0x636973756DLL;
        }
      }

      else if (v129[OBJC_IVAR____TtC7Journal9LinkAsset_contentType] > 4u)
      {
        if (v130 == 5)
        {
          v131 = 0x80000001008DC410;
          v132 = 0xD000000000000010;
        }

        else
        {
          v131 = 0xE300000000000000;
          v132 = 7104878;
        }
      }

      else if (v130 == 3)
      {
        v131 = 0xE400000000000000;
        v132 = 1802465122;
      }

      else
      {
        v131 = 0xE200000000000000;
        v132 = 30324;
      }

      v133 = v131;
      String.append(_:)(*&v132);

      v134._countAndFlagsBits = 0xD000000000000018;
      v134._object = 0x80000001008E7980;
      String.append(_:)(v134);
      v135 = *&v1[v214];
      if (v135 && (v136 = [v135 contentType]) != 0)
      {
        v137 = v136;
        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = v139;

        v141 = v138;
      }

      else
      {
        v140 = 0xE300000000000000;
        v141 = 7104878;
      }

      v142 = v140;
      String.append(_:)(*&v141);

      v143._countAndFlagsBits = 658013;
      v143._object = 0xE300000000000000;
      String.append(_:)(v143);
      String.append(_:)(v222);
    }

    v144 = OBJC_IVAR____TtC7Journal5Asset_attachments;
    v145 = *&v1[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v145 >> 62)
    {
      v199 = _CocoaArrayWrapper.endIndex.getter();
      v146 = v218;
      if (!v199)
      {
        return v223;
      }
    }

    else
    {
      v146 = v218;
      if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v223;
      }
    }

    v222._countAndFlagsBits = 0;
    v222._object = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v222._countAndFlagsBits = 0xD000000000000013;
    v222._object = 0x80000001008E7920;
    v147 = *&v1[v144];
    if (v147 >> 62)
    {
      v148 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v221 = v148;
    v149._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v149);

    v150._countAndFlagsBits = 0xA3D3D3D3D2029;
    v150._object = 0xE700000000000000;
    String.append(_:)(v150);
    String.append(_:)(v222);

    v222._countAndFlagsBits = 0;
    v222._object = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v222._countAndFlagsBits = 0xD000000000000018;
    v222._object = 0x80000001008E7940;
    sub_1004448B0();
    v151._countAndFlagsBits = sub_100787220();
    String.append(_:)(v151);

    v152._countAndFlagsBits = 0xA736574796220;
    v152._object = 0xE700000000000000;
    String.append(_:)(v152);
    String.append(_:)(v222);

    v153 = *&v1[v144];
    if (!(v153 >> 62))
    {
      v154 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v154)
      {
        return v223;
      }

      goto LABEL_75;
    }

    v200 = *&v1[v144];
    result = _CocoaArrayWrapper.endIndex.getter();
    v153 = v200;
    v154 = result;
    if (result)
    {
LABEL_75:
      if (v154 >= 1)
      {
        v212 = v153 & 0xC000000000000001;
        v220 = (v146 + 6);
        v218 = v146 + 1;
        v155 = v153;

        v156 = v155;
        v157 = 0;
        v213 = v154;
        v214 = v155;
        while (1)
        {
          if (v212)
          {
            v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v162 = *(v156 + 8 * v157 + 32);
          }

          v163 = v216;
          v222._countAndFlagsBits = 0;
          v222._object = 0xE000000000000000;
          _StringGuts.grow(_:)(27);

          v222._countAndFlagsBits = 10;
          v222._object = 0xE100000000000000;
          sub_10026D610(v162 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v62);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              v166 = type metadata accessor for AssetAttachment.AssetType;
            }

            else
            {
              v166 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
            }

            sub_100069140(v62, v166);
            v165 = 0x6567616D69;
          }

          else if (EnumCaseMultiPayload == 2)
          {
            sub_100069140(v62, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v165 = 0x6F65646976;
          }

          else if (EnumCaseMultiPayload == 3)
          {
            sub_100069140(v62, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v165 = 0x6F69647561;
          }

          else
          {

            v167 = sub_1000F24EC(&qword_100AD33B8);
            sub_100069140(v62 + *(v167 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v165 = 0x726568746FLL;
          }

          v168 = 0xE500000000000000;
          String.append(_:)(*&v165);

          v169._countAndFlagsBits = 91;
          v169._object = 0xE100000000000000;
          String.append(_:)(v169);
          v221 = *(v162 + 16);
          v170._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v170);

          v171._countAndFlagsBits = 2112093;
          v171._object = 0xE300000000000000;
          String.append(_:)(v171);
          sub_1000A7D30(v8);
          v172 = v219;
          v173 = *v220;
          if ((*v220)(v8, 1, v219) == 1)
          {
            sub_100004F84(v8, &unk_100AD6DD0);
            v174 = 0;
            v175 = 0xE000000000000000;
          }

          else
          {
            v176 = URL.lastPathComponent.getter();
            v175 = v177;
            (*v218)(v8, v172);
            v174 = v176;
          }

          v178 = v175;
          String.append(_:)(*&v174);

          v179._countAndFlagsBits = 10272;
          v179._object = 0xE200000000000000;
          String.append(_:)(v179);
          sub_1000A7D30(v163);
          if (v173(v163, 1, v172) == 1)
          {
            sub_100004F84(v163, &unk_100AD6DD0);
            v180 = v217;
          }

          else
          {
            v181 = [objc_opt_self() defaultManager];
            URL.path.getter();
            v182 = v8;
            v183 = v163;
            v184 = String._bridgeToObjectiveC()();

            v185 = [v181 fileExistsAtPath:v184];

            v186 = v183;
            v8 = v182;
            v62 = v211;
            (*v218)(v186, v172);
            v180 = v217;
            if (v185)
            {
              v187 = 0xE600000000000000;
              v188 = 0x737473697865;
              goto LABEL_100;
            }
          }

          v188 = 0x2074276E73656F64;
          v187 = 0xED00007473697865;
LABEL_100:
          v189 = v187;
          String.append(_:)(*&v188);

          v190._countAndFlagsBits = 2629673;
          v190._object = 0xE300000000000000;
          String.append(_:)(v190);
          sub_1000A7D30(v180);
          v191 = v219;
          if (v173(v180, 1, v219) == 1)
          {
            sub_100004F84(v180, &unk_100AD6DD0);
            v192 = v213;
LABEL_103:
            v193 = 0;
            goto LABEL_104;
          }

          v193 = URL.fileSize.getter();
          v195 = v194;
          (*v218)(v180, v191);
          v192 = v213;
          if (v195)
          {
            goto LABEL_103;
          }

LABEL_104:
          v196 = [objc_allocWithZone(NSNumberFormatter) init];
          [v196 setNumberStyle:1];
          v221 = v193;
          v197 = [v196 stringForObjectValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v197)
          {
            v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v198;
          }

          else
          {

            v158 = 0;
            v159 = 0xE000000000000000;
          }

          ++v157;
          v160._countAndFlagsBits = v158;
          v160._object = v159;
          String.append(_:)(v160);

          v161._countAndFlagsBits = 0x29736574796220;
          v161._object = 0xE700000000000000;
          String.append(_:)(v161);
          String.append(_:)(v222);

          v156 = v214;
          if (v192 == v157)
          {

            return v223;
          }
        }
      }

      __break(1u);
      goto LABEL_114;
    }

    return v223;
  }

  v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  v105 = v104;
  v106 = v104 >> 62;
  if ((v104 >> 62) > 1)
  {
    if (v106 != 2)
    {
LABEL_38:
      sub_1000340DC(v102, v104);
      goto LABEL_39;
    }

    v108 = *(v102 + 16);
    v107 = *(v102 + 24);
    sub_1000340DC(v102, v105);
    if (!__OFSUB__(v107, v108))
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v106)
  {
    goto LABEL_38;
  }

  result = sub_1000340DC(v102, v105);
  if (!__OFSUB__(HIDWORD(v102), v102))
  {
    goto LABEL_39;
  }

LABEL_114:
  __break(1u);
  return result;
}

uint64_t sub_10026D034@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD1420);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = *a1;
  v15 = JournalMO.title.getter();
  if (v16)
  {
    v17 = v16;
    v41 = v15;
  }

  else
  {
    v18 = JournalMO.isDefaultJournal.getter();
    v19 = 7104878;
    if (v18)
    {
      v19 = 0x746C7561666544;
    }

    v41 = v19;
    if (v18)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
    }
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v42 = 540689481;
  v43 = 0xE400000000000000;
  v20 = [v14 id];
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  sub_100021CEC(v11, v13, &qword_100AD1420);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_100004F84(v13, &qword_100AD1420);
    v22 = 0xE700000000000000;
    v23 = 0x74657320746F6ELL;
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_100004F84(v13, &qword_100AD1420);
    v24 = UUID.uuidString.getter();
    v22 = v25;
    (*(v5 + 8))(v7, v4);
    v23 = v24;
  }

  v26 = v22;
  String.append(_:)(*&v23);

  v27._countAndFlagsBits = 0x646574656C65440ALL;
  v27._object = 0xEA0000000000203ALL;
  String.append(_:)(v27);
  v28 = [v14 userDeleted];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = v31;
  String.append(_:)(*&v30);

  v33._object = 0x80000001008E7900;
  v33._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v33);
  v34 = [v14 entries];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 count];
  }

  else
  {
    v36 = 0;
  }

  v44 = v36;
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v39 = v42;
  v40 = v43;
  *a2 = v41;
  a2[1] = v17;
  a2[2] = v39;
  a2[3] = v40;
  return result;
}

id sub_10026D4A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryDebugInfoVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10026D528()
{
  result = qword_100AD5B00;
  if (!qword_100AD5B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5B00);
  }

  return result;
}

unint64_t sub_10026D574()
{
  result = qword_100AE5E00;
  if (!qword_100AE5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5E00);
  }

  return result;
}

uint64_t sub_10026D5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026D610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026D674()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADAD70);
  v1 = sub_10000617C(v0, qword_100ADAD70);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10026D73C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_10026D874, v6, v8);
}

uint64_t sub_10026D874()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10026D90C;
  v2 = v0[3];
  v3 = v0[2];

  return sub_10008B5E8(v3, v2);
}

uint64_t sub_10026D90C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10026DA34, v4, v3);
}

uint64_t sub_10026DA34()
{
  v1 = *(v0 + 96);
  if (v1)
  {
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_10026E054(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100004F84(*(v0 + 40), &unk_100AD6DD0);
    goto LABEL_4;
  }

  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  *(v0 + 128) = *(v7 + qword_100B302E0);
  sub_10029D254();
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_10026DC18;
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_1001E1188(v16, v9 * v12, v15, v14);
}

uint64_t sub_10026DC18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_10026DE4C;
  }

  else
  {
    v7 = sub_10026DD5C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10026DD5C()
{
  if (sub_100511E4C(*(v0 + 128)))
  {
    if (qword_100ACFCB0 != -1)
    {
      swift_once();
    }

    sub_100752914(*(v0 + 112), *(*(v0 + 32) + qword_100AF0110), *(*(v0 + 32) + qword_100AF0110 + 8));
  }

  v1 = *(v0 + 112);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026DE4C()
{
  if (qword_100ACFB78 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100ADAD70);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ - error generating video preview image: %@", v7, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10026E054@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AD7C40);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = &v96 - v6;
  v126 = type metadata accessor for UTType();
  v108 = *(v126 - 8);
  v7 = __chkstk_darwin(v126 - 8);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v125 = &v96 - v10;
  __chkstk_darwin(v9);
  v110 = &v96 - v11;
  v116 = type metadata accessor for FileStoreConfiguration();
  v107 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v128);
  v113 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v96 - v16;
  v17 = __chkstk_darwin(v15);
  v127 = (&v96 - v18);
  __chkstk_darwin(v17);
  v121 = (&v96 - v19);
  v20 = sub_1000F24EC(&unk_100AD6DD0);
  v21 = __chkstk_darwin(v20 - 8);
  v120 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v96 - v23;
  v25 = type metadata accessor for URL();
  v114 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v111 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v96 - v28;
  v29 = type metadata accessor for AssetAttachment.AssetType(0);
  v30 = __chkstk_darwin(v29);
  v119 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v131 = &v96 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v96 - v35;
  __chkstk_darwin(v34);
  v38 = &v96 - v37;
  v132 = *(v1 + qword_100B302C0);
  v105 = a1;
  if (v132 >> 62)
  {
    goto LABEL_92;
  }

  v39 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v101 = v1;
  v138 = v1 + qword_100B302E8;
  v129 = v29;
  v130 = v25;
  v1 = v132;
  if (v39)
  {
    v40 = 0;
    v134 = v132 & 0xFFFFFFFFFFFFFF8;
    v135 = v132 & 0xC000000000000001;
    v123 = (v114 + 56);
    v100 = (v107 + 8);
    v118 = (v114 + 32);
    v122 = (v114 + 48);
    v104 = (v108 + 48);
    v98 = (v108 + 32);
    v97 = (v108 + 8);
    v102 = (v114 + 8);
    v124 = v24;
    v103 = v36;
    v133 = v39;
    while (1)
    {
      if (v135)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v40 >= *(v134 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v39 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v44 = *(v1 + 8 * v40 + 32);

        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_43;
        }
      }

      v136 = *v138;
      v137 = *(v138 + 8);
      v46 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068AC8(v44 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v38, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v41 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v41 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        v42 = v41;
        v43 = v38;
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v53 = v38;
        if (v137)
        {
          goto LABEL_88;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      sub_100068AC8(v44 + v46, v36, type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = v48;
      if (v48 > 1)
      {
        break;
      }

      v51 = v36;
      v52 = v127;
      if (!v49)
      {
        goto LABEL_24;
      }

      sub_100069140(v36, type metadata accessor for AssetAttachment.AssetType);
      v60 = 1;
      v24 = v124;
LABEL_28:
      (*v123)(v24, v60, 1, v25);
      v53 = &v38[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
      if ((*v122)(v24, 1, v25) == 1)
      {

        sub_100004F84(v24, &unk_100AD6DD0);
      }

      else
      {
        v61 = v117;
        (*v118)(v117, v24, v25);
        URL.pathExtension.getter();
        v62 = v125;
        static UTType.data.getter();
        v24 = v109;
        UTType.init(filenameExtension:conformingTo:)();
        v63 = v126;
        if ((*v104)(v24, 1, v126) == 1)
        {

          v25 = v130;
          (*v102)(v61, v130);
          sub_100004F84(v24, &unk_100AD7C40);
          v29 = v129;
          v36 = v103;
        }

        else
        {
          (*v98)();
          static UTType.video.getter();
          v64 = UTType.conforms(to:)();
          v24 = *v97;
          (*v97)(v62, v63);
          if (v64)
          {
            (v24)(v110, v63);
            v25 = v130;
            (*v102)(v117, v130);
            v36 = v103;
LABEL_38:
            v29 = v129;
            if (v137)
            {
              v38 = v53;
              goto LABEL_88;
            }

LABEL_21:
            v54 = *(v44 + 16);
            sub_100069140(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v54 == v136)
            {
LABEL_86:
              v94 = v105;
              goto LABEL_89;
            }

            v1 = v132;
            goto LABEL_8;
          }

          static UTType.movie.getter();
          v96 = v24;
          v24 = v110;
          v65 = UTType.conforms(to:)();
          v66 = v62;
          v67 = v96;
          (v96)(v66, v63);
          (v67)(v24, v63);
          v25 = v130;
          (*v102)(v117, v130);
          v36 = v103;
          if (v65)
          {
            goto LABEL_38;
          }

          v29 = v129;
        }

        v1 = v132;
      }

      v42 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      v43 = v53;
LABEL_7:
      sub_100069140(v43, v42);
LABEL_8:
      ++v40;
      if (v45 == v133)
      {
        goto LABEL_44;
      }
    }

    v50 = v48 - 2;
    v51 = v36;
    v52 = v127;
    if (v50 >= 2)
    {

      v51 = v36 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
    }

LABEL_24:
    v55 = v121;
    sub_100068CF4(v51, v121);
    sub_100068AC8(v55, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100069140(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v24 = v124;
      (*v118)(v124, v52, v25);
    }

    else
    {
      v56 = v115;
      static FileStoreConfiguration.shared.getter();
      v57 = v124;
      FileStoreConfiguration.getAttachmentURL(from:)();
      v29 = v129;

      v58 = v56;
      v1 = v132;
      (*v100)(v58, v116);
      v59 = v55;
      v24 = v57;
      v25 = v130;
      sub_100069140(v59, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_44:
  v36 = *(v101 + qword_100B302C8);
  if (v36 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v131;
    if (v24)
    {
      goto LABEL_46;
    }

    return (*(v114 + 56))(v105, 1, 1, v25);
  }

  v24 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1 = v131;
  if (!v24)
  {
    return (*(v114 + 56))(v105, 1, 1, v25);
  }

LABEL_46:
  v68 = 0;
  v38 = (v36 & 0xC000000000000001);
  v135 = v36 & 0xFFFFFFFFFFFFFF8;
  v132 = v114 + 56;
  v118 = (v107 + 8);
  v124 = (v114 + 32);
  v127 = (v114 + 48);
  v122 = (v108 + 48);
  v117 = (v108 + 32);
  v110 = (v108 + 8);
  v121 = (v114 + 8);
  v133 = v24;
  v134 = v36 & 0xC000000000000001;
  v123 = v36;
  while (1)
  {
    if (v38)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v68 >= *(v135 + 16))
      {
        goto LABEL_91;
      }

      v70 = *(v36 + 8 * v68 + 32);

      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v136 = *v138;
    v137 = *(v138 + 8);
    v72 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
    sub_100068AC8(v70 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v1, type metadata accessor for AssetAttachment.AssetType);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (v73)
    {

      v69 = type metadata accessor for AssetAttachment.AssetType;
      goto LABEL_48;
    }

LABEL_47:

    v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_48:
    sub_100069140(v1, v69);
LABEL_49:
    ++v68;
    if (v71 == v24)
    {
      return (*(v114 + 56))(v105, 1, 1, v25);
    }
  }

  if (v73 != 2)
  {
    if (v73 != 3)
    {

      v74 = v70 + v72;
      v75 = v119;
      sub_100068AC8(v74, v119, type metadata accessor for AssetAttachment.AssetType);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = v76;
      if (v76 <= 1)
      {
        v79 = v75;
        if (!v77)
        {
          goto LABEL_65;
        }

        sub_100069140(v75, type metadata accessor for AssetAttachment.AssetType);
        v85 = 1;
        v84 = v25;
        v83 = v120;
      }

      else
      {
        v78 = v76 - 2;
        v79 = v75;
        if (v78 >= 2)
        {

          v79 = v75 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
        }

LABEL_65:
        v81 = v112;
        sub_100068CF4(v79, v112);
        v82 = v113;
        sub_100068AC8(v81, v113, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100069140(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v83 = v120;
          v84 = v130;
          (*v124)(v120, v82, v130);
          v85 = 0;
        }

        else
        {
          v86 = v115;
          static FileStoreConfiguration.shared.getter();
          v83 = v120;
          FileStoreConfiguration.getAttachmentURL(from:)();
          v1 = v131;

          (*v118)(v86, v116);
          sub_100069140(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v85 = 0;
          v84 = v130;
        }

        v24 = v133;
      }

      (*v132)(v83, v85, 1, v84);
      v38 = (v1 + *(sub_1000F24EC(&qword_100AD33B8) + 48));
      if ((*v127)(v83, 1, v84) == 1)
      {

        sub_100004F84(v83, &unk_100AD6DD0);
        v25 = v84;
        v29 = v129;
        goto LABEL_74;
      }

      v87 = v111;
      (*v124)(v111, v83, v84);
      URL.pathExtension.getter();
      v88 = v125;
      static UTType.data.getter();
      v89 = v106;
      UTType.init(filenameExtension:conformingTo:)();
      v90 = v126;
      if ((*v122)(v89, 1, v126) == 1)
      {

        (*v121)(v87, v84);
        sub_100004F84(v89, &unk_100AD7C40);
        v25 = v84;
        v29 = v129;
        v36 = v123;
LABEL_73:
        v24 = v133;
LABEL_74:
        sub_100069140(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_75:
        v1 = v131;
        v38 = v134;
        goto LABEL_49;
      }

      v91 = v99;
      (*v117)(v99, v89, v90);
      static UTType.video.getter();
      v92 = UTType.conforms(to:)();
      v93 = *v110;
      (*v110)(v88, v90);
      if (v92)
      {
        v93(v91, v90);
        v25 = v130;
        (*v121)(v111, v130);
        v29 = v129;
        v36 = v123;
      }

      else
      {
        static UTType.movie.getter();
        LODWORD(v109) = UTType.conforms(to:)();
        v93(v88, v90);
        v93(v91, v90);
        v25 = v130;
        (*v121)(v111, v130);
        v29 = v129;
        v36 = v123;
        if ((v109 & 1) == 0)
        {

          goto LABEL_73;
        }
      }

      v24 = v133;
      if (v137)
      {
        goto LABEL_88;
      }

LABEL_62:
      v80 = *(v70 + 16);
      sub_100069140(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (v80 == v136)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    goto LABEL_47;
  }

  v38 = v1;
  if ((v137 & 1) == 0)
  {
    goto LABEL_62;
  }

  v38 = v131;
LABEL_88:
  v94 = v105;
  sub_100069140(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_89:
  sub_1000A7D30(v94);
}

void sub_10026F374()
{
  sub_100280750(319, &unk_100ADAF50, &qword_100AD6548, &unk_100945218, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10003DEB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10026F424(uint64_t a1)
{
  v90 = sub_1000F24EC(&qword_100AD2680);
  v3 = __chkstk_darwin(v90);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = &v75 - v6;
  v7 = sub_1000F24EC(&unk_100AD4790);
  v8 = __chkstk_darwin(v7 - 8);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v75 - v10;
  v12 = sub_1000F24EC(&qword_100AD6F90);
  __chkstk_darwin(v12 - 8);
  v14 = &v75 - v13;
  v15 = sub_1000F24EC(&qword_100AD6F98);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - v16;
  v96 = sub_1000F24EC(&qword_100AD2688);
  v18 = *(v96 - 8);
  __chkstk_darwin(v96);
  v20 = &v75 - v19;
  v102 = type metadata accessor for Date();
  v92 = *(v102 - 8);
  v21 = __chkstk_darwin(v102);
  v79 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v83 = &v75 - v24;
  v25 = __chkstk_darwin(v23);
  v82 = &v75 - v26;
  v27 = __chkstk_darwin(v25);
  v91 = &v75 - v28;
  __chkstk_darwin(v27);
  v30 = &v75 - v29;
  result = type metadata accessor for UniformDateBins(0);
  v81 = result;
  v32 = *(a1 + *(result + 24));
  if ((v32 & 0x8000000000000000) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if (!v32)
    {
      return result;
    }

    v95 = v17;
    v78 = v11;
    v75 = v1;
    v103 = _swiftEmptyArrayStorage;
    v93 = v32;
    result = sub_1000884F4(0, v32, 0);
    v33 = v93;
    v34 = 0;
    v100 = v103;
    v101 = (v92 + 32);
    v84 = (v92 + 8);
    v87 = (v18 + 56);
    v88 = (v92 + 48);
    v77 = (v18 + 48);
    v99 = v14;
    v94 = v20;
    v85 = v30;
    v76 = v5;
    v86 = a1;
    while (v33 != v34)
    {
      sub_1000082B4(a1, v14, &qword_100AD6F90);
      v35 = type metadata accessor for CalendarBinningUnit(0);
      result = (*(*(v35 - 8) + 48))(v14, 1, v35);
      v98 = v34;
      if (result == 1)
      {
        sub_100004F84(v14, &qword_100AD6F90);
        (*v87)(v95, 1, 1, v96);
        v36 = v82;
        Date.init(timeIntervalSinceReferenceDate:)();
        v37 = v83;
        Date.init(timeIntervalSinceReferenceDate:)();
        sub_100041A20(&qword_100AD2698, &type metadata accessor for Date);
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        if ((result & 1) == 0)
        {
          goto LABEL_23;
        }

        v38 = v102;
        v39 = *v101;
        v40 = v89;
        (*v101)(v89, v36, v102);
        v41 = v90;
        (v39)(v40 + *(v90 + 48), v37, v38);
        sub_1000082B4(v40, v5, &qword_100AD2680);
        v42 = *(v41 + 48);
        (v39)(v94, v5, v38);
        v43 = *v84;
        v44 = &v5[v42];
        v45 = v96;
        (*v84)(v44, v38);
        sub_100021CEC(v40, v5, &qword_100AD2680);
        v46 = *(v41 + 48);
        v47 = v94;
        v48 = v95;
        v49 = &v94[*(v45 + 36)];
        v97 = v39;
        (v39)(v49, &v5[v46], v38);
        v43(v5, v38);
        if ((*v77)(v48, 1, v45) != 1)
        {
          sub_100004F84(v48, &qword_100AD6F98);
        }
      }

      else
      {
        v50 = *(a1 + *(v81 + 20));
        v51 = v50 + v34;
        if (__OFADD__(v50, v34))
        {
          goto LABEL_22;
        }

        v52 = v78;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v53 = v52;
        v54 = *v88;
        result = (*v88)(v53, 1, v102);
        if (result == 1)
        {
          goto LABEL_27;
        }

        v55 = *v101;
        result = (*v101)(v91, v53, v102);
        if (__OFADD__(v51, 1))
        {
          goto LABEL_24;
        }

        v56 = v80;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        result = v54(v56, 1, v102);
        if (result == 1)
        {
          goto LABEL_28;
        }

        v57 = v79;
        v55();
        sub_100041A20(&qword_100AD2698, &type metadata accessor for Date);
        v58 = v91;
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        v5 = v76;
        if ((result & 1) == 0)
        {
          goto LABEL_25;
        }

        v59 = v58;
        v60 = v89;
        v61 = v102;
        (v55)(v89, v59, v102);
        v62 = v90;
        (v55)(v60 + *(v90 + 48), v57, v61);
        sub_1000082B4(v60, v5, &qword_100AD2680);
        v63 = *(v62 + 48);
        v64 = v95;
        (v55)(v95, v5, v61);
        v65 = *v84;
        (*v84)(&v5[v63], v61);
        sub_100021CEC(v60, v5, &qword_100AD2680);
        v66 = v96;
        v67 = v64 + *(v96 + 36);
        v68 = &v5[*(v62 + 48)];
        v97 = v55;
        (v55)(v67, v68, v61);
        v65(v5, v61);
        sub_10003F95C(v99, type metadata accessor for CalendarBinningUnit);
        (*v87)(v64, 0, 1, v66);
        v47 = v94;
        sub_100021CEC(v64, v94, &qword_100AD2688);
      }

      Date.timeIntervalSince(_:)();
      v69 = v85;
      static Date.+ infix(_:_:)();
      sub_100004F84(v47, &qword_100AD2688);
      v70 = v100;
      v103 = v100;
      v72 = v100[2];
      v71 = v100[3];
      if (v72 >= v71 >> 1)
      {
        sub_1000884F4(v71 > 1, v72 + 1, 1);
        v70 = v103;
      }

      v73 = v98 + 1;
      v70[2] = v72 + 1;
      v74 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v100 = v70;
      result = (v97)(v70 + v74 + *(v92 + 72) * v72, v69, v102);
      v33 = v93;
      v34 = v73;
      v14 = v99;
      a1 = v86;
      if (v93 == v73)
      {
        return v100;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10026FE70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v47 = type metadata accessor for AccessibilityChildBehavior();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ColorResource();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v39);
  v7 = &v38 - v6;
  v8 = sub_1000F24EC(&qword_100ADB0A8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v38 = sub_1000F24EC(&qword_100AD0DA0);
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v38 - v12;
  v42 = sub_1000F24EC(&qword_100ADB0B0);
  __chkstk_darwin(v42);
  v15 = &v38 - v14;
  v16 = *(v1 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 48));
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = v16;
  v10[16] = 0;
  v17 = &v10[*(sub_1000F24EC(&qword_100ADB0B8) + 44)];
  v40 = v2;
  sub_100270618(v2, v17);
  KeyPath = swift_getKeyPath();
  v19 = &v10[*(sub_1000F24EC(&qword_100ADB0C0) + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  v20 = &v10[*(v8 + 36)];
  v21 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v22 = enum case for ColorScheme.dark(_:);
  v23 = type metadata accessor for ColorScheme();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = enum case for DynamicTypeSize.accessibility3(_:);
  v25 = type metadata accessor for DynamicTypeSize();
  (*(*(v25 - 8) + 104))(v7, v24, v25);
  sub_100041A20(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_1002807D0();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v7, &qword_100ADB0A0);
    sub_100004F84(v10, &qword_100ADB0A8);
    (*(v11 + 32))(v15, v13, v38);
    *&v15[*(sub_1000F24EC(&qword_100AD0DA8) + 36)] = 259;
    v26 = sub_10027E578();
    v27 = swift_getKeyPath();
    v28 = &v15[*(sub_1000F24EC(&qword_100ADB0F8) + 36)];
    *v28 = v27;
    v28[8] = v26;
    sub_1000F24EC(&qword_100AD3CA8);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_100940050;
    if (qword_100AD0C78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = v43;
  v30 = sub_10000617C(v43, qword_100B31478);
  v31 = *(v41 + 16);
  v31(v5, v30, v29);
  *(v10 + 4) = Color.init(_:)();
  if (qword_100AD0C98 != -1)
  {
    swift_once();
  }

  v32 = sub_10000617C(v29, qword_100B314D8);
  v31(v5, v32, v29);
  *(v10 + 5) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v33 = swift_getKeyPath();
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = 256;
  sub_1000F24EC(&qword_100ADB100);
  sub_10000B58C(&qword_100ADB108, &qword_100ADB100);
  v34 = AnyView.init<A>(_:)();
  v35 = &v15[*(v42 + 36)];
  *v35 = v33;
  v35[1] = v34;
  v36 = v44;
  static AccessibilityChildBehavior.contain.getter();
  sub_10028096C();
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v36, v47);
  return sub_100004F84(v15, &qword_100ADB0B0);
}

uint64_t sub_100270618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v252 = a2;
  v243 = sub_1000F24EC(&qword_100ADB148);
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v237 = v188 - v3;
  v213 = type metadata accessor for Calendar();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v209 = v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v4;
  __chkstk_darwin(v5);
  v230 = v188 - v6;
  v211 = type metadata accessor for Calendar.Component();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v207 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v7;
  __chkstk_darwin(v8);
  v229 = v188 - v9;
  v204 = sub_1000F24EC(&qword_100ADB150);
  __chkstk_darwin(v204);
  v203 = v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v226 = v188 - v12;
  v232 = sub_1000F24EC(&qword_100ADB158);
  __chkstk_darwin(v232);
  v245 = v188 - v13;
  v220 = sub_1000F24EC(&qword_100ADB160);
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v15 = v188 - v14;
  v214 = sub_1000F24EC(&qword_100ADB168);
  __chkstk_darwin(v214);
  v218 = v188 - v16;
  v234 = sub_1000F24EC(&qword_100ADB170);
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v216 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v215 = v188 - v19;
  v20 = sub_1000F24EC(&qword_100ADB178);
  __chkstk_darwin(v20 - 8);
  v236 = v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v235 = v188 - v23;
  v228 = type metadata accessor for ScrollIndicatorVisibility();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v205 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v195 = v188 - v26;
  v194 = sub_1000F24EC(&qword_100ADB180);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = v188 - v27;
  v202 = sub_1000F24EC(&qword_100ADB188);
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = v188 - v28;
  v196 = sub_1000F24EC(&qword_100ADB190);
  __chkstk_darwin(v196);
  v201 = v188 - v29;
  v223 = sub_1000F24EC(&qword_100ADB198);
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v198 = v188 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v197 = v188 - v32;
  v33 = sub_1000F24EC(&qword_100ADB1A0);
  __chkstk_darwin(v33 - 8);
  v231 = v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v246 = v188 - v36;
  v37 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v37 - 8);
  v191 = v188 - v38;
  v189 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v189);
  v190 = v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v40 - 8);
  v42 = v188 - v41;
  v43 = type metadata accessor for Date();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v244 = v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000F24EC(&qword_100ADB1A8);
  __chkstk_darwin(v46 - 8);
  v241 = v188 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v240 = v188 - v49;
  v50 = sub_1000F24EC(&qword_100ADB1B0);
  __chkstk_darwin(v50);
  v239 = v188 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v249 = (v188 - v53);
  v54 = type metadata accessor for EnvironmentValues();
  v251 = *(v54 - 8);
  __chkstk_darwin(v54);
  v250 = v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for InsightsYearlyEntriesView(0);
  v57 = a1 + *(v56 + 28);
  v58 = *v57;
  v224 = *(v57 + 8);
  v247 = v56;
  v225 = v58;
  if (v224 != 1)
  {

    static os_log_type_t.fault.getter();
    v60 = static Log.runtimeIssuesLog.getter();
    v61 = v250;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v58, 0);
    v62 = v61;
    v63 = v247;
    (*(v251 + 8))(v62, v54);
    if (v253 == 1)
    {
      goto LABEL_6;
    }

LABEL_4:
    v253 = static VerticalAlignment.center.getter();
    v254 = 0;
    v255 = 1;
    sub_10010730C();
    v59 = AnyLayout.init<A>(_:)();
    v253 = 0x4028000000000000;
    v254 = v59;
    sub_100280C24();
    goto LABEL_7;
  }

  v63 = v56;
  if ((v58 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_6:
  v64 = static HorizontalAlignment.leading.getter();
  v65 = *(a1 + *(v63 + 48));
  v253 = v64;
  v254 = v65;
  v255 = 0;
  sub_100107360();
LABEL_7:
  v66 = AnyLayout.init<A>(_:)();
  v67 = v249;
  *v249 = v66;
  v68 = *(v50 + 44);
  v238 = v66;

  sub_100272700(a1, &v67[v68]);
  v70 = *(a1 + 16);
  v69 = *(a1 + 24);
  v71 = *(a1 + 32);
  v72 = *(a1 + 33) == 1;
  v248 = v54;
  v73 = v252;
  v217 = v15;
  if (v72)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v54 = v248;
    v75 = v250;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v70, v69, v71, 0);
    (*(v251 + 8))(v75, v54);
    v70 = v253;
    v69 = v254;
    LOBYTE(v71) = v255;
  }

  v253 = v70;
  v254 = v69;
  v255 = v71;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v76 = v256;

  if (v76 == 3 || sub_10027E578())
  {
    v77 = v247;
    v78 = *(v247 + 40);
    v188[1] = sub_1000F24EC(&qword_100AD7000);
    State.wrappedValue.getter();
    p_vtable = &OBJC_METACLASS____TtC7Journal30JournalMembershipListViewModel.vtable;
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_100004F84(v42, &unk_100AD4790);
      v80 = a1 + *(v77 + 32);
      v81 = *v80;
      v82 = *(v80 + 8);

      v83 = v81;
      v221 = v82;
      if ((v82 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v84 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v85 = v250;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v251 + 8))(v85, v54);
        v83 = v253;
      }

      swift_getKeyPath();
      v253 = v83;
      sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v86 = *(v83 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
    }

    else
    {
      (*(v44 + 32))(v244, v42, v43);
      v87 = a1 + *(v77 + 32);
      v81 = *v87;
      v88 = *(v87 + 8);

      v89 = v81;
      v221 = v88;
      if ((v88 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v90 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v91 = v250;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v251 + 8))(v91, v54);
        v89 = v253;
      }

      swift_getKeyPath();
      v253 = v89;
      sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v92 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
      swift_beginAccess();
      v93 = v190;
      sub_10003ED74(v89 + v92, v190, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

      v94 = v191;
      sub_1000082B4(v93 + *(v189 + 28), v191, &qword_100AD6FB8);
      sub_10003F95C(v93, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
      sub_1000B8860(v244);
      v96 = v95;
      v86 = v97;
      sub_100004F84(v94, &qword_100AD6FB8);
      if (v96)
      {
      }

      else
      {
        v86 = _swiftEmptyArrayStorage;
      }

      p_vtable = (&OBJC_METACLASS____TtC7Journal30JournalMembershipListViewModel + 24);
      v73 = v252;
      (*(v44 + 8))(v244, v43);
      v54 = v248;
    }

    if (v86[2] < 3uLL)
    {

      (*(v222 + 56))(v246, 1, 1, v223);
    }

    else
    {
      v244 = v78;
      v100 = static Axis.Set.horizontal.getter();
      __chkstk_darwin(v100);
      v188[-2] = a1;
      v188[-1] = v86;
      sub_1000F24EC(&qword_100ADB1E0);
      v101 = sub_1000F2A18(&qword_100ADB1E8);
      v102 = sub_10000B58C(&qword_100ADB1F0, &qword_100ADB1E8);
      v256 = v101;
      v257 = v102;
      swift_getOpaqueTypeConformance2();
      v103 = v192;
      ScrollView.init(_:showsIndicators:content:)();

      v104 = v195;
      static ScrollIndicatorVisibility.hidden.getter();
      sub_1000F24EC(&qword_100ADB1D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940050;
      v106 = static Axis.Set.vertical.getter();
      *(inited + 32) = v106;
      v107 = static Axis.Set.horizontal.getter();
      *(inited + 33) = v107;
      Axis.Set.init(rawValue:)();
      Axis.Set.init(rawValue:)();
      if (Axis.Set.init(rawValue:)() != v106)
      {
        Axis.Set.init(rawValue:)();
      }

      Axis.Set.init(rawValue:)();
      v108 = Axis.Set.init(rawValue:)();
      v54 = v248;
      if (v108 != v107)
      {
        Axis.Set.init(rawValue:)();
      }

      v73 = v252;
      v109 = v199;
      sub_10000B58C(&qword_100ADB1F8, &qword_100ADB180);
      v110 = v194;
      View.scrollIndicators(_:axes:)();
      (*(v227 + 8))(v104, v228);
      (*(v193 + 8))(v103, v110);
      if (!v224)
      {
        v111 = v225;

        static os_log_type_t.fault.getter();
        v112 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v113 = v250;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000467F0(v111, 0);
        (*(v251 + 8))(v113, v54);
      }

      v114 = v201;
      v115 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v123 = v122;
      (*(v200 + 32))(v114, v109, v202);
      v124 = v114 + *(v196 + 36);
      *v124 = v115;
      *(v124 + 8) = v117;
      *(v124 + 16) = v119;
      *(v124 + 24) = v121;
      *(v124 + 32) = v123;
      *(v124 + 40) = 0;
      if (qword_100ACFCF0 != -1)
      {
        swift_once();
      }

      v125 = qword_100B2F878;
      v126 = v198;
      sub_100021CEC(v114, v198, &qword_100ADB190);
      v127 = v223;
      *(v126 + *(v223 + 36)) = v125;
      v128 = v126;
      v129 = v197;
      sub_100021CEC(v128, v197, &qword_100ADB198);
      v130 = v129;
      v131 = v246;
      sub_100021CEC(v130, v246, &qword_100ADB198);
      (*(v222 + 56))(v131, 0, 1, v127);

      p_vtable = &OBJC_METACLASS____TtC7Journal30JournalMembershipListViewModel.vtable;
    }

    if ((v221 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v132 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v133 = v250;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v251 + 8))(v133, v54);
      v81 = v256;
    }

    swift_getKeyPath();
    v256 = v81;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v134 = *(p_vtable[252] + v81 + 8);

    if (*(v134 + 16) < 2uLL)
    {

      v159 = v235;
      (*(v233 + 56))(v235, 1, 1, v234);
    }

    else
    {
      v135 = v203;
      State.projectedValue.getter();
      static Animation.spring(response:dampingFraction:blendDuration:)();
      v136 = v226;
      Binding.animation(_:)();

      sub_100004F84(v135, &qword_100ADB150);
      v137 = v210;
      v138 = v229;
      v139 = v211;
      (*(v210 + 104))(v229, enum case for Calendar.Component.year(_:), v211);
      v140 = v230;
      sub_100048878(v230);
      sub_1000082B4(v136, v245, &qword_100ADB150);
      v141 = v212;
      v142 = v209;
      v143 = v213;
      (*(v212 + 16))(v209, v140, v213);
      v144 = v207;
      (*(v137 + 16))(v207, v138, v139);
      v145 = (*(v141 + 80) + 16) & ~*(v141 + 80);
      v146 = (v208 + *(v137 + 80) + v145) & ~*(v137 + 80);
      v147 = swift_allocObject();
      (*(v141 + 32))(v147 + v145, v142, v143);
      (*(v137 + 32))(v147 + v146, v144, v139);
      v148 = v232;
      v149 = v245;
      sub_10027DD14(v134, (v245 + *(v232 + 52)));

      (*(v141 + 8))(v230, v143);
      (*(v137 + 8))(v229, v139);
      sub_100004F84(v226, &qword_100ADB150);
      v150 = (v149 + *(v148 + 56));
      *v150 = sub_100280CB8;
      v150[1] = v147;
      *(v149 + *(v148 + 60)) = 0;
      v151 = v205;
      static ScrollIndicatorVisibility.hidden.getter();
      sub_1000F24EC(&qword_100ADB1D0);
      v152 = swift_initStackObject();
      *(v152 + 16) = xmmword_100940050;
      LOBYTE(v146) = static Axis.Set.vertical.getter();
      *(v152 + 32) = v146;
      v153 = static Axis.Set.horizontal.getter();
      *(v152 + 33) = v153;
      Axis.Set.init(rawValue:)();
      Axis.Set.init(rawValue:)();
      if (Axis.Set.init(rawValue:)() != v146)
      {
        Axis.Set.init(rawValue:)();
      }

      Axis.Set.init(rawValue:)();
      v154 = Axis.Set.init(rawValue:)();
      v155 = v217;
      if (v154 != v153)
      {
        Axis.Set.init(rawValue:)();
      }

      v73 = v252;
      v156 = v248;
      sub_10000B58C(&qword_100ADB1D8, &qword_100ADB158);
      v157 = v245;
      View.scrollIndicators(_:axes:)();
      (*(v227 + 8))(v151, v228);
      sub_100004F84(v157, &qword_100ADB158);
      if (!v224)
      {
        v160 = v225;

        static os_log_type_t.fault.getter();
        v161 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v162 = v250;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000467F0(v160, 0);
        (*(v251 + 8))(v162, v156);
      }

      v159 = v235;
      v158 = v218;
      v163 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v165 = v164;
      v167 = v166;
      v169 = v168;
      v171 = v170;
      (*(v219 + 32))(v158, v155, v220);
      v172 = v158 + *(v214 + 36);
      *v172 = v163;
      *(v172 + 8) = v165;
      *(v172 + 16) = v167;
      *(v172 + 24) = v169;
      *(v172 + 32) = v171;
      *(v172 + 40) = 0;
      if (qword_100ACFCF0 != -1)
      {
        swift_once();
      }

      v173 = qword_100B2F878;
      v174 = v216;
      sub_100021CEC(v158, v216, &qword_100ADB168);
      v175 = v234;
      *(v174 + *(v234 + 36)) = v173;
      v176 = v174;
      v177 = v215;
      sub_100021CEC(v176, v215, &qword_100ADB170);
      sub_100021CEC(v177, v159, &qword_100ADB170);
      (*(v233 + 56))(v159, 0, 1, v175);
    }

    v178 = v246;
    v179 = v231;
    sub_1000082B4(v246, v231, &qword_100ADB1A0);
    v180 = v236;
    sub_1000082B4(v159, v236, &qword_100ADB178);
    v181 = v237;
    sub_1000082B4(v179, v237, &qword_100ADB1A0);
    v182 = sub_1000F24EC(&qword_100ADB1C8);
    sub_1000082B4(v180, v181 + *(v182 + 48), &qword_100ADB178);
    sub_100004F84(v159, &qword_100ADB178);
    sub_100004F84(v178, &qword_100ADB1A0);
    sub_100004F84(v180, &qword_100ADB178);
    sub_100004F84(v179, &qword_100ADB1A0);
    v99 = v240;
    sub_100021CEC(v181, v240, &qword_100ADB148);
    v98 = 0;
  }

  else
  {
    v98 = 1;
    v99 = v240;
  }

  (*(v242 + 56))(v99, v98, 1, v243);
  v183 = v249;
  v184 = v239;
  sub_1000082B4(v249, v239, &qword_100ADB1B0);
  v185 = v241;
  sub_1000082B4(v99, v241, &qword_100ADB1A8);
  sub_1000082B4(v184, v73, &qword_100ADB1B0);
  v186 = sub_1000F24EC(&qword_100ADB1C0);
  sub_1000082B4(v185, v73 + *(v186 + 48), &qword_100ADB1A8);

  sub_100004F84(v99, &qword_100ADB1A8);
  sub_100004F84(v183, &qword_100ADB1B0);
  sub_100004F84(v185, &qword_100ADB1A8);
  return sub_100004F84(v184, &qword_100ADB1B0);
}

uint64_t sub_100272700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v193 = a2;
  v192 = type metadata accessor for InsightsYearlyEntriesChartRepresentable(0);
  __chkstk_darwin(v192);
  v191 = (&v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EnvironmentValues();
  v146 = *(v4 - 8);
  v147 = v4;
  __chkstk_darwin(v4);
  v145 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AutomaticScaleDomain();
  v7 = *(v6 - 8);
  v175 = v6;
  v176 = v7;
  __chkstk_darwin(v6);
  v171 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100ADB2D8);
  __chkstk_darwin(v9 - 8);
  v198 = &v144 - v10;
  v11 = type metadata accessor for PlotDimensionScaleRange();
  v12 = *(v11 - 8);
  v200 = v11;
  v201 = v12;
  __chkstk_darwin(v11);
  v197 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v162);
  v155 = &v144 - v14;
  v15 = sub_1000F24EC(&qword_100ADB2E0);
  v16 = *(v15 - 8);
  v150 = v15;
  v151 = v16;
  __chkstk_darwin(v15);
  v148 = &v144 - v17;
  v18 = sub_1000F24EC(&qword_100ADB2E8);
  v19 = *(v18 - 8);
  v152 = v18;
  v153 = v19;
  __chkstk_darwin(v18);
  v149 = &v144 - v20;
  v154 = sub_1000F24EC(&qword_100ADB2F0);
  v157 = *(v154 - 8);
  __chkstk_darwin(v154);
  v195 = &v144 - v21;
  v22 = sub_1000F24EC(&qword_100ADB2F8);
  v23 = *(v22 - 8);
  v160 = v22;
  v161 = v23;
  __chkstk_darwin(v22);
  v196 = &v144 - v24;
  v25 = sub_1000F24EC(&qword_100ADB300);
  v26 = *(v25 - 8);
  v163 = v25;
  v164 = v26;
  __chkstk_darwin(v25);
  v156 = &v144 - v27;
  v28 = sub_1000F24EC(&qword_100ADB308);
  v29 = *(v28 - 8);
  v165 = v28;
  v166 = v29;
  __chkstk_darwin(v28);
  v159 = &v144 - v30;
  v31 = sub_1000F24EC(&qword_100ADB310);
  v32 = *(v31 - 8);
  v167 = v31;
  v168 = v32;
  __chkstk_darwin(v31);
  v199 = &v144 - v33;
  v169 = sub_1000F24EC(&qword_100ADB318) - 8;
  __chkstk_darwin(v169);
  v158 = &v144 - v34;
  v178 = sub_1000F24EC(&qword_100ADB320);
  __chkstk_darwin(v178);
  v177 = &v144 - v35;
  v185 = sub_1000F24EC(&qword_100ADB328);
  v181 = *(v185 - 8);
  __chkstk_darwin(v185);
  v179 = &v144 - v36;
  v189 = sub_1000F24EC(&qword_100ADB330);
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v144 - v37;
  v38 = sub_1000F24EC(&qword_100ADB338);
  __chkstk_darwin(v38 - 8);
  v190 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v188 = &v144 - v41;
  v42 = type metadata accessor for AccessibilityChildBehavior();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000F24EC(&qword_100ADB340);
  __chkstk_darwin(v46);
  v48 = &v144 - v47;
  v49 = sub_1000F24EC(&qword_100ADB348);
  v183 = *(v49 - 8);
  v184 = v49;
  __chkstk_darwin(v49);
  v182 = &v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v144 - v52;
  *v48 = static HorizontalAlignment.leading.getter();
  *(v48 + 1) = 0;
  v48[16] = 0;
  v54 = sub_1000F24EC(&qword_100ADB350);
  sub_100273DF0(a1, &v48[*(v54 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000B58C(&qword_100ADB358, &qword_100ADB340);
  v180 = v53;
  View.accessibilityElement(children:)();
  v55 = *(v43 + 8);
  v172 = v45;
  v173 = v43 + 8;
  v174 = v42;
  v170 = v55;
  v55(v45, v42);
  sub_100004F84(v48, &qword_100ADB340);
  v204 = a1;
  sub_1000F24EC(&qword_100ADB360);
  v56 = sub_1000F2A18(&qword_100ADB368);
  v57 = sub_1000F2A18(&qword_100ADB370);
  v58 = sub_100280FF4();
  *&v209 = v57;
  *(&v209 + 1) = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v209 = v56;
  *(&v209 + 1) = &type metadata for HierarchicalShapeStyle;
  *&v210 = OpaqueTypeConformance2;
  *(&v210 + 1) = &protocol witness table for HierarchicalShapeStyle;
  swift_getOpaqueTypeConformance2();
  v60 = v148;
  Chart.init(content:)();
  v203 = a1;
  v194 = a1;
  v61 = sub_1000F24EC(&qword_100ADB390);
  v62 = sub_10000B58C(&qword_100ADB398, &qword_100ADB2E0);
  v63 = sub_1002810AC();
  v65 = v149;
  v64 = v150;
  View.chartXAxis<A>(content:)();
  v66 = v64;
  (*(v151 + 8))(v60, v64);
  v67 = sub_1000F24EC(&qword_100ADB3E8);
  *&v209 = v66;
  *(&v209 + 1) = v61;
  *&v210 = v62;
  *(&v210 + 1) = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_100281244();
  v70 = v152;
  View.chartXAxisStyle<A>(content:)();
  v71 = v70;
  (*(v153 + 8))(v65, v70);
  v72 = v155;
  sub_100279250(v155);
  v73 = v197;
  static PositionScaleRange<>.plotDimension(padding:)();
  v151 = type metadata accessor for ScaleType();
  v74 = *(v151 - 8);
  v150 = *(v74 + 56);
  v153 = v74 + 56;
  v75 = v198;
  v150(v198, 1, 1, v151);
  *&v209 = v71;
  *(&v209 + 1) = v67;
  *&v210 = v68;
  *(&v210 + 1) = v69;
  v149 = swift_getOpaqueTypeConformance2();
  v76 = sub_100281300();
  v77 = v195;
  v78 = v72;
  v79 = v154;
  v80 = v162;
  v81 = v200;
  View.chartXScale<A, B>(domain:range:type:)();
  sub_100004F84(v75, &qword_100ADB2D8);
  v82 = *(v201 + 8);
  v201 += 8;
  v152 = v82;
  v83 = v81;
  v82(v73, v81);
  sub_100004F84(v78, &qword_100AD2688);
  (*(v157 + 8))(v77, v79);
  v202 = v194;
  v84 = sub_1000F24EC(&qword_100ADB408);
  *&v209 = v79;
  *(&v209 + 1) = v80;
  *&v210 = v83;
  *(&v210 + 1) = v149;
  *&v211 = v76;
  *(&v211 + 1) = &protocol witness table for PlotDimensionScaleRange;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_10000B58C(&qword_100ADB410, &qword_100ADB408);
  v87 = v156;
  v88 = v160;
  v89 = v196;
  View.chartYAxis<A>(content:)();
  v90 = v89;
  v91 = v88;
  (*(v161 + 8))(v90, v88);
  v92 = sub_1000F24EC(&qword_100ADB418);
  *&v209 = v91;
  *(&v209 + 1) = v84;
  *&v210 = v85;
  *(&v210 + 1) = v86;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_100281384();
  v95 = v159;
  v96 = v163;
  View.chartYAxisStyle<A>(content:)();
  (*(v164 + 8))(v87, v96);
  v97 = v171;
  static ScaleDomain<>.automatic<A>(includesZero:reversed:dataType:modifyInferredDomain:)();
  v98 = v197;
  static PositionScaleRange<>.plotDimension(padding:)();
  v99 = v198;
  v150(v198, 1, 1, v151);
  *&v209 = v96;
  *(&v209 + 1) = v92;
  *&v210 = v93;
  *(&v210 + 1) = v94;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v200;
  v102 = v165;
  v103 = v175;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100004F84(v99, &qword_100ADB2D8);
  v152(v98, v101);
  (*(v176 + 8))(v97, v103);
  (*(v166 + 8))(v95, v102);
  sub_1000F24EC(&qword_100ADB438);
  *&v209 = v102;
  *(&v209 + 1) = v103;
  *&v210 = v101;
  *(&v210 + 1) = v100;
  *&v211 = &protocol witness table for AutomaticScaleDomain;
  *(&v211 + 1) = &protocol witness table for PlotDimensionScaleRange;
  swift_getOpaqueTypeConformance2();
  sub_1002814F8();
  v104 = v158;
  v105 = v167;
  v106 = v199;
  View.chartPlotStyle<A>(content:)();
  (*(v168 + 8))(v106, v105);
  v107 = type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100ADB450);
  sub_1000F24EC(&qword_100AD7000);
  v108 = v194;
  State.wrappedValue.getter();
  *(v104 + *(v169 + 44)) = static HierarchicalShapeStyle.primary.getter();
  v109 = v108 + *(v107 + 28);
  v110 = *v109;
  if (*(v109 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v111 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v112 = v145;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v110, 0);
    (*(v146 + 8))(v112, v147);
  }

  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v113 = v177;
  sub_100021CEC(v104, v177, &qword_100ADB318);
  v114 = v178;
  v115 = (v113 + *(v178 + 36));
  v116 = v214;
  v115[4] = v213;
  v115[5] = v116;
  v115[6] = v215;
  v117 = v210;
  *v115 = v209;
  v115[1] = v117;
  v118 = v212;
  v115[2] = v211;
  v115[3] = v118;
  v119 = v172;
  static AccessibilityChildBehavior.ignore.getter();
  v120 = sub_1002815B4();
  v121 = v179;
  View.accessibilityElement(children:)();
  v170(v119, v174);
  sub_100004F84(v113, &qword_100ADB320);
  v122 = sub_100276BF4();
  v123 = v191;
  v124 = v192;
  sub_100279250(v191 + *(v192 + 20));
  *v123 = v122;
  v205 = v114;
  v206 = v120;
  v201 = swift_getOpaqueTypeConformance2();
  v125 = sub_100041A20(&qword_100ADB470, type metadata accessor for InsightsYearlyEntriesChartRepresentable);
  v126 = v185;
  v127 = v186;
  View.accessibilityChartDescriptor<A>(_:)();
  sub_10003F95C(v123, type metadata accessor for InsightsYearlyEntriesChartRepresentable);
  (*(v181 + 8))(v121, v126);
  LocalizedStringKey.init(stringLiteral:)();
  v128 = Text.init(_:tableName:bundle:comment:)();
  v130 = v129;
  LOBYTE(v114) = v131;
  v205 = v126;
  v206 = v124;
  v207 = v201;
  v208 = v125;
  swift_getOpaqueTypeConformance2();
  v133 = v188;
  v132 = v189;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v128, v130, v114 & 1);

  (*(v187 + 8))(v127, v132);
  v134 = v182;
  v135 = v183;
  v136 = *(v183 + 16);
  v137 = v180;
  v138 = v184;
  v136(v182, v180, v184);
  v139 = v190;
  sub_1000082B4(v133, v190, &qword_100ADB338);
  v140 = v193;
  v136(v193, v134, v138);
  v141 = sub_1000F24EC(&qword_100ADB478);
  sub_1000082B4(v139, &v140[*(v141 + 48)], &qword_100ADB338);
  sub_100004F84(v133, &qword_100ADB338);
  v142 = *(v135 + 8);
  v142(v137, v138);
  sub_100004F84(v139, &qword_100ADB338);
  return (v142)(v134, v138);
}

uint64_t sub_100273DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v158 = sub_1000F24EC(&qword_100ADB538);
  __chkstk_darwin(v158);
  v159 = v140 - v3;
  v157 = type metadata accessor for Font.Leading();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v5 - 8);
  v143 = v140 - v6;
  v162 = type metadata accessor for EnvironmentValues();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v165 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v8 = *(v169 - 8);
  __chkstk_darwin(v169);
  v10 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v13 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD1ED0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v140 - v19;
  v144 = sub_1000F24EC(&qword_100ADB540);
  __chkstk_darwin(v144);
  v22 = v140 - v21;
  v145 = sub_1000F24EC(&qword_100ADB548);
  __chkstk_darwin(v145);
  v148 = v140 - v23;
  v149 = sub_1000F24EC(&qword_100ADB550);
  __chkstk_darwin(v149);
  v150 = v140 - v24;
  v25 = sub_1000F24EC(&qword_100ADB558);
  v26 = __chkstk_darwin(v25 - 8);
  v154 = v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v163 = v140 - v28;
  v171 = sub_100274F08();
  static Locale.autoupdatingCurrent.getter();
  v29 = sub_1000F6568();
  v153 = v13;
  v147 = v29;
  IntegerFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  IntegerFormatStyle.notation(_:)();
  (*(v8 + 8))(v10, v169);
  v30 = v165;
  (*(v15 + 8))(v18, v14);
  v31 = sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  v151 = v20;
  v152 = v14;
  v146 = v31;
  v32 = Text.init<A>(_:format:)();
  v141 = v33;
  v35 = v34;
  v142 = v36;
  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  v39 = *(a1 + 32);
  v166 = *(a1 + 33);
  v169 = v37;
  LODWORD(v168) = v39;
  if (v166 == 1)
  {

    v40 = v38;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v38, v37, v39, 0);
    (*(v161 + 8))(v30, v162);
    v40 = v171;
    v37 = v172;
    LOBYTE(v39) = v173;
  }

  v171 = v40;
  v172 = v37;
  v173 = v39;
  v167 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v42 = v175;

  v164 = a1;
  if (v42 != 3)
  {
    sub_10027E578();
  }

  type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7DC8);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v43 = type metadata accessor for Font.Design();
  v44 = v143;
  (*(*(v43 - 8) + 56))(v143, 1, 1, v43);
  static Font.system(size:weight:design:)();
  sub_100004F84(v44, &qword_100AE1670);
  v45 = v32;
  v46 = v141;
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;
  v140[1] = v52;

  sub_1000594D0(v45, v46, v35 & 1);

  if (v166)
  {

    v53 = v169;

    v54 = v38;
    v55 = v168;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v56 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v57 = v165;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v38, v169, v168, 0);
    (*(v161 + 8))(v57, v162);
    v54 = v171;
    v53 = v172;
    v55 = v173;
  }

  v171 = v54;
  v172 = v53;
  v173 = v55;
  Binding.wrappedValue.getter();
  v58 = v175;

  if (v58 != 3)
  {
    sub_10027E578();
  }

  v143 = type metadata accessor for InsightsYearlyEntriesView(0);
  v59 = Text.tracking(_:)();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_1000594D0(v47, v49, v51 & 1);

  KeyPath = swift_getKeyPath();
  v67 = swift_getKeyPath();
  v63 &= 1u;
  v175 = v63;
  v174 = 0;
  v68 = &v22[*(v144 + 36)];
  sub_1000F24EC(&qword_100AD21B0);
  static ContentTransition.numericText(countsDown:)();
  *v68 = swift_getKeyPath();
  *v22 = v59;
  *(v22 + 1) = v61;
  v22[16] = v63;
  *(v22 + 3) = v65;
  *(v22 + 4) = KeyPath;
  *(v22 + 5) = 1;
  v22[48] = 0;
  *(v22 + 7) = v67;
  *(v22 + 8) = 0x3FB999999999999ALL;
  LOBYTE(v59) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v148;
  sub_100021CEC(v22, v148, &qword_100ADB540);
  v78 = v77 + *(v145 + 36);
  *v78 = v59;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  v79 = static Edge.Set.bottom.getter();
  if (v166)
  {

    v80 = v169;

    v81 = v38;
    v82 = v168;
    v83 = v161;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v85 = v165;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v38, v169, v168, 0);
    v83 = v161;
    (*(v161 + 8))(v85, v162);
    v81 = v171;
    v80 = v172;
    v82 = v173;
  }

  v171 = v81;
  v172 = v80;
  v173 = v82;
  Binding.wrappedValue.getter();
  v86 = v170;

  if (v86 != 3)
  {
    sub_10027E578();
  }

  EdgeInsets.init(_all:)();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v150;
  sub_100021CEC(v77, v150, &qword_100ADB548);
  v96 = v95 + *(v149 + 36);
  *v96 = v79;
  *(v96 + 8) = v88;
  *(v96 + 16) = v90;
  *(v96 + 24) = v92;
  *(v96 + 32) = v94;
  *(v96 + 40) = 0;
  v171 = sub_100274F08();
  static Locale.autoupdatingCurrent.getter();
  IntegerFormatStyle.init(locale:)();
  v97 = Text.init<A>(_:format:)();
  v99 = v98;
  v101 = v100;
  sub_1002822B0();
  View.accessibilityLabel(_:)();
  sub_1000594D0(v97, v99, v101 & 1);

  sub_100004F84(v95, &qword_100ADB550);
  v102 = sub_1002754C8();
  v104 = v103;
  v106 = v105;
  if (v166)
  {

    v107 = v169;

    v108 = v168;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v109 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v110 = v165;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v38, v169, v168, 0);
    (*(v83 + 8))(v110, v162);
    v38 = v171;
    v107 = v172;
    v108 = v173;
  }

  v171 = v38;
  v172 = v107;
  v173 = v108;
  Binding.wrappedValue.getter();
  v111 = v170;

  if (v111 != 3)
  {
    sub_10027E578();
  }

  v112 = v156;
  v113 = v155;
  v114 = v157;
  (*(v156 + 104))(v155, enum case for Font.Leading.tight(_:), v157);
  Font.leading(_:)();
  (*(v112 + 8))(v113, v114);
  v115 = Text.font(_:)();
  v168 = v116;
  v169 = v115;
  v118 = v117;
  LOBYTE(v113) = v119;

  sub_1000594D0(v102, v104, v106 & 1);

  v120 = static HierarchicalShapeStyle.tertiary.getter();
  v121 = v158;
  v122 = *(v158 + 36);
  v123 = enum case for BlendMode.plusDarker(_:);
  v124 = type metadata accessor for BlendMode();
  v125 = *(*(v124 - 8) + 104);
  v126 = v159;
  v125(&v159[v122], v123, v124);
  v125(&v126[*(v121 + 40)], enum case for BlendMode.plusLighter(_:), v124);
  *v126 = v120;
  sub_10000B58C(&qword_100ADB5B8, &qword_100ADB538);
  v127 = v169;
  v128 = Text.foregroundStyle<A>(_:)();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  sub_1000594D0(v127, v118, v113 & 1);

  sub_100004F84(v126, &qword_100ADB538);
  v135 = v163;
  v136 = v154;
  sub_1000082B4(v163, v154, &qword_100ADB558);
  v137 = v160;
  sub_1000082B4(v136, v160, &qword_100ADB558);
  v138 = v137 + *(sub_1000F24EC(&qword_100ADB5C0) + 48);
  *v138 = v128;
  *(v138 + 8) = v130;
  *(v138 + 16) = v132 & 1;
  *(v138 + 24) = v134;
  *(v138 + 32) = 0x3FF0000000000000;
  sub_1000F24DC(v128, v130, v132 & 1);

  sub_100004F84(v135, &qword_100ADB558);
  sub_1000594D0(v128, v130, v132 & 1);

  return sub_100004F84(v136, &qword_100ADB558);
}

uint64_t sub_100274F08()
{
  v1 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v1 - 8);
  v33 = &v31 - v2;
  v32 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for EnvironmentValues();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7000);
  State.wrappedValue.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &unk_100AD4790);
    v16 = (v0 + *(v15 + 32));
    v17 = *v16;
    v18 = *(v16 + 8);

    if ((v18 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v31);
      v17 = v34;
    }

    swift_getKeyPath();
    v34 = v17;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v17 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 16);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v21 = (v0 + *(v15 + 32));
    v22 = *v21;
    v23 = *(v21 + 8);

    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v31);
      v22 = v34;
    }

    swift_getKeyPath();
    v34 = v22;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v22 + v25, v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    v26 = v33;
    sub_1000082B4(&v4[*(v32 + 28)], v33, &qword_100AD6FB8);
    sub_10003F95C(v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    sub_1000B8860(v14);
    v20 = v27;
    v29 = v28;
    sub_100004F84(v26, &qword_100AD6FB8);
    (*(v12 + 8))(v14, v11);
    if (v29)
    {
    }

    else
    {
      return 0;
    }
  }

  return v20;
}

uint64_t sub_1002754C8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADB5C8);
  v105 = *(v2 - 8);
  v106 = v2;
  __chkstk_darwin(v2);
  v104 = &v77 - v3;
  v4 = sub_1000F24EC(&unk_100AD91E0);
  v98 = *(v4 - 8);
  v99 = v4;
  __chkstk_darwin(v4);
  v97 = &v77 - v5;
  v6 = type metadata accessor for AttributeContainer();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = __chkstk_darwin(v6);
  v101 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v77 - v9;
  v81 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date.FormatStyle();
  v82 = *(v83 - 8);
  v11 = __chkstk_darwin(v83);
  v77 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v77 - v13;
  v14 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v14 - 8);
  v84 = &v77 - v15;
  v87 = type metadata accessor for Date();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v90);
  v92 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v18 - 8);
  v91 = &v77 - v19;
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  v89 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v22 - 8);
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AttributedString();
  v95 = *(v27 - 8);
  v96 = v27;
  v28 = __chkstk_darwin(v27);
  v94 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v88 = &v77 - v31;
  __chkstk_darwin(v30);
  v93 = &v77 - v32;
  v33 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = *(v1 + 32);
  if (*(v1 + 33) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v33, v34, v35, 0);
    (*(v24 + 8))(v26, v23);
    v33 = v108;
    v34 = v109;
    LOBYTE(v35) = v110;
  }

  v108 = v33;
  v109 = v34;
  v110 = v35;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v37 = v107;

  if (v37 == 3 || sub_10027E578())
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0x656972746E452A2ALL;
    v38._object = 0xED000028202A2A73;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
    v108 = sub_100274F08();
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
    String.LocalizationValue.init(stringInterpolation:)();
    v40 = type metadata accessor for Locale();
    (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
    v108 = _swiftEmptyArrayStorage;
    sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
    sub_1000F24EC(&qword_100AD1360);
    sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v88;
  }

  else if (sub_10027F2C8())
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v57._countAndFlagsBits = 0x656972746E452A2ALL;
    v57._object = 0xED000028202A2A73;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
    v108 = sub_100274F08();
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v58._countAndFlagsBits = 0x5920736968540A29;
    v58._object = 0xEB00000000726165;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
    String.LocalizationValue.init(stringInterpolation:)();
    v59 = type metadata accessor for Locale();
    (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
    v108 = _swiftEmptyArrayStorage;
    sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
    sub_1000F24EC(&qword_100AD1360);
    sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v88;
  }

  else
  {
    type metadata accessor for InsightsYearlyEntriesView(0);
    sub_1000F24EC(&qword_100AD7000);
    v60 = v84;
    State.wrappedValue.getter();
    v61 = v86;
    v62 = v87;
    if ((*(v86 + 48))(v60, 1, v87) != 1)
    {
      (*(v61 + 32))(v85, v60, v62);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v66._countAndFlagsBits = 0x656972746E452A2ALL;
      v66._object = 0xED000028202A2A73;
      v67 = v61;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v66);
      v108 = sub_100274F08();
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v68._countAndFlagsBits = 2601;
      v68._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
      v69 = v77;
      static FormatStyle<>.dateTime.getter();
      v70 = v78;
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v71 = v79;
      Date.FormatStyle.year(_:)();
      (*(v80 + 8))(v70, v81);
      v72 = v62;
      v73 = *(v82 + 8);
      v74 = v83;
      v73(v69, v83);
      sub_100041A20(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
      sub_1000777B4();
      String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
      v73(v71, v74);
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v75);
      String.LocalizationValue.init(stringInterpolation:)();
      v76 = type metadata accessor for Locale();
      (*(*(v76 - 8) + 56))(v91, 1, 1, v76);
      v108 = _swiftEmptyArrayStorage;
      sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
      sub_1000F24EC(&qword_100AD1360);
      sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v88;
      AttributedString.init(localized:options:table:bundle:locale:comment:)();
      (*(v67 + 8))(v85, v72);
      goto LABEL_8;
    }

    sub_100004F84(v60, &unk_100AD4790);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v63._countAndFlagsBits = 0x656972746E452A2ALL;
    v63._object = 0xED000028202A2A73;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
    v108 = sub_100274F08();
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v64._countAndFlagsBits = 0x6954206C6C410A29;
    v64._object = 0xEA0000000000656DLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
    String.LocalizationValue.init(stringInterpolation:)();
    v65 = type metadata accessor for Locale();
    (*(*(v65 - 8) + 56))(v91, 1, 1, v65);
    v108 = _swiftEmptyArrayStorage;
    sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
    sub_1000F24EC(&qword_100AD1360);
    sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v88;
  }

  AttributedString.init(localized:options:table:bundle:locale:comment:)();
LABEL_8:
  v43 = v95;
  v42 = v96;
  v44 = v93;
  (*(v95 + 32))(v93, v41, v96);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_100221DFC();
  v46 = v97;
  static AttributeContainer.subscript.getter();

  v108 = 2;
  v47 = v99;
  v48 = v100;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v98 + 8))(v46, v47);
  v49 = swift_getKeyPath();
  __chkstk_darwin(v49);
  swift_getKeyPath();
  sub_1002825F0();
  v50 = v104;
  static AttributeContainer.subscript.getter();

  v108 = static Color.primary.getter();
  v51 = v101;
  v52 = v106;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v105 + 8))(v50, v52);
  AttributedString.replaceAttributes(_:with:)();
  v53 = v103;
  v54 = *(v102 + 8);
  v54(v51, v103);
  v54(v48, v53);
  (*(v43 + 16))(v94, v44, v42);
  v55 = Text.init(_:)();
  (*(v43 + 8))(v44, v42);
  return v55;
}

uint64_t sub_100276710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v26 = a2;
  v2 = sub_1000F24EC(&qword_100ADB518);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v20[1] = v20 - v5;
  v6 = sub_1000F24EC(&qword_100ADB520);
  __chkstk_darwin(v6 - 8);
  v20[2] = v20 - v7;
  v8 = sub_1000F24EC(&qword_100ADB370);
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_1000F24EC(&qword_100ADB368);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  *&v30 = sub_100276BF4();
  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  swift_getKeyPath();
  static PlottableProjection.value(_:_:)();

  sub_1000F24EC(&qword_100ADB528);
  type metadata accessor for Date();
  sub_10000B58C(&qword_100ADB530, &qword_100ADB528);
  RulePlot.init<A, B, C>(_:x:yStart:yEnd:)();
  v15 = (v21 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 44));
  v16 = v15[1];
  v30 = *v15;
  v31 = v16;
  v32 = *(v15 + 4);
  v17 = sub_100280FF4();
  ChartContent.lineStyle(_:)();
  (*(v23 + 8))(v10, v8);
  v29 = static HierarchicalShapeStyle.secondary.getter();
  v27 = v8;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v24;
  ChartContent.foregroundStyle<A>(_:)();
  return (*(v25 + 8))(v14, v18);
}

uint64_t sub_100276BF4()
{
  v1 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v1 - 8);
  v35 = &v32 - v2;
  v34 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7000);
  State.wrappedValue.getter();
  v16 = (*(v12 + 48))(v10, 1, v11);
  v33 = v5;
  v37 = v0;
  if (v16 == 1)
  {
    sub_100004F84(v10, &unk_100AD4790);
  }

  else
  {
    v32 = v6;
    (*(v12 + 32))(v14, v10, v11);
    v17 = (v0 + *(v15 + 32));
    v18 = *v17;
    v19 = *(v17 + 8);

    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v21 = v36;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v32 + 8))(v21, v5);
      v18 = v38;
    }

    swift_getKeyPath();
    v38 = v18;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v18 + v22, v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    v23 = v35;
    sub_1000082B4(&v4[*(v34 + 28)], v35, &qword_100AD6FB8);
    sub_10003F95C(v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    sub_1000B8860(v14);
    v25 = v24;
    sub_100004F84(v23, &qword_100AD6FB8);
    (*(v12 + 8))(v14, v11);
    v6 = v32;
    if (v25)
    {

      return v25;
    }
  }

  v26 = (v37 + *(v15 + 32));
  v27 = *v26;
  v28 = *(v26 + 8);

  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v36;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v30, v33);
    v27 = v39;
  }

  swift_getKeyPath();
  v39 = v27;
  sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v27 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 24);

  return v25;
}

int64_t sub_1002771D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v177 = sub_1000F24EC(&qword_100ADB3E0);
  v156 = *(v177 - 8);
  __chkstk_darwin(v177);
  v155 = &v129 - v3;
  v146 = sub_1000F24EC(&qword_100ADB4D0);
  __chkstk_darwin(v146);
  v145 = &v129 - v4;
  v5 = sub_1000F24EC(&qword_100ADB3B0);
  __chkstk_darwin(v5 - 8);
  v147 = &v129 - v6;
  v144 = sub_1000F24EC(&qword_100ADB3D0);
  v143 = *(v144 - 8);
  v7 = __chkstk_darwin(v144);
  v159 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v158 = &v129 - v9;
  v153 = type metadata accessor for DateComponents();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for CalendarBinningUnit(0);
  v170 = *(v162 - 8);
  __chkstk_darwin(v162);
  v154 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v12 - 8);
  v150 = &v129 - v13;
  v14 = type metadata accessor for Date();
  v175 = *(v14 - 8);
  v176 = v14;
  v15 = __chkstk_darwin(v14);
  v138 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v160 = &v129 - v17;
  v18 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v18 - 8);
  v164 = &v129 - v19;
  v139 = type metadata accessor for UniformDateBins(0);
  v20 = __chkstk_darwin(v139);
  v161 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v140 = &v129 - v22;
  v23 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v23 - 8);
  v173 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v25 - 8);
  v172 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for InsightsYearlyEntriesView(0);
  v166 = *(v27 - 8);
  v28 = *(v166 + 64);
  __chkstk_darwin(v27);
  v174 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000F24EC(&qword_100ADA620);
  __chkstk_darwin(v29 - 8);
  v149 = &v129 - v30;
  v171 = type metadata accessor for Calendar.Component();
  v163 = *(v171 - 8);
  v31 = __chkstk_darwin(v171);
  v169 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v148 = &v129 - v33;
  v34 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v34 - 8);
  v36 = (&v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = sub_1000F24EC(&qword_100ADB3C0);
  v141 = *(v142 - 8);
  v37 = __chkstk_darwin(v142);
  v157 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v167 = &v129 - v39;
  v40 = type metadata accessor for Calendar();
  v178 = *(v40 - 8);
  v41 = __chkstk_darwin(v40);
  v168 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v129 - v43;
  v45 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v45 - 8);
  v47 = &v129 - v46;
  sub_1000F24EC(&qword_100AD7000);
  State.wrappedValue.getter();
  v48 = (*(v175 + 48))(v47, 1, v176);
  sub_100004F84(v47, &unk_100AD4790);
  if (v48 == 1)
  {
    static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)();
    v49 = v174;
    sub_10003ED74(a1, v174, type metadata accessor for InsightsYearlyEntriesView);
    v50 = (*(v166 + 80) + 16) & ~*(v166 + 80);
    v51 = swift_allocObject();
    sub_1002820E0(v49, v51 + v50, type metadata accessor for InsightsYearlyEntriesView);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    sub_1000F24EC(&qword_100ADB4D8);
    sub_100281C60();
    v52 = v155;
    AxisMarks.init(preset:position:values:content:)();
    v156[4](v165, v52, v177);
LABEL_17:
    sub_1000F24EC(&qword_100ADB4E8);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v137 = v28;
    v156 = v36;
    v53 = a1;
    v155 = *(v27 + 24);
    sub_100048878(v44);
    v54 = Calendar.veryShortStandaloneMonthSymbols.getter();
    v55 = v178;
    v56 = *(v178 + 8);
    v136 = v178 + 8;
    v135 = v56;
    result = (v56)(v44, v40);
    v58 = (v54 + 40);
    v59 = -*(v54 + 16);
    v60 = -1;
    v61 = v174;
    v177 = v40;
    do
    {
      if (v59 + v60 == -1)
      {
        break;
      }

      if (++v60 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v62 = v58 + 2;
      v63 = *(v58 - 1);
      v64 = *v58;
      v65 = HIBYTE(*v58) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v65 = v63;
      }

      v66 = ((v64 >> 60) & ((v63 & 0x800000000000000) == 0)) != 0 ? 11 : 7;
      result = sub_100281DAC(0xFuLL, v66 | (v65 << 16), v63, v64);
      v58 = v62;
      v40 = v177;
      v55 = v178;
    }

    while (result < 2);

    v134 = enum case for Calendar.Component.month(_:);
    v67 = v163;
    v68 = *(v163 + 104);
    v132 = v163 + 104;
    v133 = v68;
    v69 = v148;
    v70 = v171;
    v68(v148);
    v71 = v149;
    sub_100048878(v149);
    (*(v55 + 56))(v71, 0, 1, v40);
    static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
    sub_100004F84(v71, &qword_100ADA620);
    v72 = *(v67 + 8);
    v149 = v67 + 8;
    v148 = v72;
    (v72)(v69, v70);
    sub_10003ED74(v53, v61, type metadata accessor for InsightsYearlyEntriesView);
    v73 = (*(v166 + 80) + 16) & ~*(v166 + 80);
    v74 = v73 + v137;
    v137 = *(v166 + 80);
    v131 = v74;
    v75 = swift_allocObject();
    v166 = v73;
    sub_1002820E0(v61, v75 + v73, type metadata accessor for InsightsYearlyEntriesView);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    sub_1000F24EC(&qword_100ADB4F0);
    v76 = sub_1000F2A18(&qword_100ADB4A0);
    v77 = sub_1000F2A18(&qword_100ADB490);
    v78 = sub_1000F2A18(&qword_100ADB4A8);
    v79 = sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8);
    v179 = v78;
    v180 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = sub_10000B58C(&qword_100ADB498, &qword_100ADB490);
    v179 = v76;
    v180 = v77;
    v181 = OpaqueTypeConformance2;
    v182 = v81;
    swift_getOpaqueTypeConformance2();
    AxisMarks.init(preset:position:values:content:)();
    v133(v169, v134, v171);
    v82 = v164;
    sub_100279250(v164);
    sub_100048878(v168);
    v83 = v170 + 56;
    v84 = *(v170 + 56);
    v85 = v162;
    v84(v161, 1, 1, v162);
    v86 = v150;
    Calendar.dateInterval(of:for:)();
    v87 = type metadata accessor for DateInterval();
    v88 = *(v87 - 8);
    v89 = (*(v88 + 48))(v86, 1, v87);
    v170 = v83;
    v130 = v53;
    v156 = v84;
    if (v89 == 1)
    {
      sub_100004F84(v86, &qword_100AD3750);
      v90 = v175;
      v91 = v176;
      v92 = v160;
      (*(v175 + 16))(v160, v82, v176);
    }

    else
    {
      v93 = v138;
      DateInterval.start.getter();
      (*(v88 + 8))(v86, v87);
      v90 = v175;
      v92 = v160;
      v94 = v93;
      v91 = v176;
      (*(v175 + 32))(v160, v94, v176);
    }

    v95 = v154;
    v97 = v163 + 16;
    v96 = *(v163 + 16);
    v98 = v171;
    v96(v154, v169, v171);
    (*(v90 + 16))(v95 + *(v85 + 20), v92, v91);
    (*(v178 + 16))(v95 + *(v85 + 24), v168, v177);
    sub_1000F24EC(&qword_100AD3BF0);
    v99 = (*(v97 + 64) + 32) & ~*(v97 + 64);
    v100 = v90;
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100940080;
    v96((v101 + v99), v95, v98);
    sub_10005FF80(v101);
    swift_setDeallocating();
    v102 = v101 + v99;
    v103 = v148;
    (v148)(v102, v98);
    swift_deallocClassInstance();
    v104 = v151;
    v105 = v164;
    Calendar.dateComponents(_:from:to:)();

    v178 = DateComponents.value(for:)();
    LOBYTE(v101) = v106;
    result = (*(v152 + 8))(v104, v153);
    if ((v101 & 1) == 0)
    {
      v108 = *(v139 + 20);
      v107 = *(v139 + 24);
      v109 = sub_1008B6838(v105);
      (*(v100 + 8))(v160, v176);
      v135(v168, v177);
      sub_100004F84(v105, &qword_100AD2688);
      v103(v169, v98);
      v110 = v161;
      sub_100004F84(v161, &qword_100AD6F90);
      sub_1002820E0(v95, v110, type metadata accessor for CalendarBinningUnit);
      (v156)(v110, 0, 1, v162);
      *(v110 + v108) = v178;
      *(v110 + v107) = v109;
      v111 = v110;
      v112 = v140;
      sub_1002820E0(v111, v140, type metadata accessor for UniformDateBins);
      sub_10026F424(v112);
      sub_10003F95C(v112, type metadata accessor for UniformDateBins);
      v113 = v174;
      sub_10003ED74(v130, v174, type metadata accessor for InsightsYearlyEntriesView);
      v114 = swift_allocObject();
      sub_1002820E0(v113, v114 + v166, type metadata accessor for InsightsYearlyEntriesView);
      static AxisMarkPreset.automatic.getter();
      static AxisMarkPosition.automatic.getter();
      sub_1000F24EC(&qword_100ADB4F8);
      sub_100282160();
      v115 = v158;
      AxisMarks.init<A>(preset:position:values:content:)();
      v116 = v141;
      v117 = *(v141 + 16);
      v118 = v157;
      v119 = v142;
      v117(v157, v167, v142);
      v120 = v143;
      v178 = *(v143 + 16);
      v121 = v144;
      (v178)(v159, v115, v144);
      sub_10000B58C(&qword_100ADB3B8, &qword_100ADB3C0);
      v122 = v145;
      v117(v145, v118, v119);
      sub_10000B58C(&qword_100ADB3C8, &qword_100ADB3D0);
      v123 = v146;
      v124 = *(v146 + 48);
      v125 = v159;
      (v178)(&v122[v124], v159, v121);
      v126 = v147;
      (*(v116 + 32))(v147, v122, v119);
      (*(v120 + 32))(v126 + *(v123 + 48), &v122[v124], v121);
      v127 = *(v120 + 8);
      v127(v158, v121);
      v128 = *(v116 + 8);
      v128(v167, v119);
      v127(v125, v121);
      v128(v157, v119);
      sub_100021CEC(v126, v165, &qword_100ADB3B0);
      goto LABEL_17;
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002787B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v3 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v3 - 8);
  v37 = v33 - v4;
  v5 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v5 - 8);
  v33[1] = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v7 - 8);
  v33[0] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_1000F24EC(&qword_100ADB4A8);
  v34 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v33 - v19;
  v21 = sub_1000F24EC(&qword_100ADB4A0);
  v22 = *(v21 - 8);
  v35 = v21;
  v36 = v22;
  __chkstk_darwin(v21);
  v24 = v33 - v23;
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.narrow.getter();
  Date.FormatStyle.month(_:)();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v17, v13);
  static AxisValueLabelCollisionResolution.disabled.getter();
  static AxisValueLabelOrientation.automatic.getter();
  sub_100041A20(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v25 = type metadata accessor for Font.Design();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  static Font.system(size:weight:design:)();
  sub_100004F84(v26, &qword_100AE1670);
  Font.bold()();

  v27 = sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8);
  AxisMark.font(_:)();

  (*(v34 + 8))(v20, v18);
  v28 = static HierarchicalShapeStyle.tertiary.getter();
  v29 = sub_100278DB8();
  v30 = 0.5;
  if (v29)
  {
    v30 = 1.0;
  }

  v43 = v28;
  v44 = v30;
  sub_1000F24EC(&qword_100ADB490);
  v41 = v18;
  v42 = v27;
  swift_getOpaqueTypeConformance2();
  sub_10000B58C(&qword_100ADB498, &qword_100ADB490);
  v31 = v35;
  AxisMark.foregroundStyle<A>(_:)();
  return (*(v36 + 8))(v24, v31);
}

BOOL sub_100278DB8()
{
  v1 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v1 - 8);
  v29 = &v27 - v2;
  v28 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AD4790);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = (v0 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 32));
    v17 = *v16;
    v18 = *(v16 + 8);

    if ((v18 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      v17 = v30;
    }

    swift_getKeyPath();
    v30 = v17;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v17 + v20, v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    v21 = v29;
    sub_1000082B4(&v4[*(v28 + 24)], v29, &qword_100AD6FB8);
    sub_10003F95C(v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    sub_1000B8860(v15);
    v23 = v22;
    v25 = v24;
    sub_100004F84(v21, &qword_100AD6FB8);
    (*(v13 + 8))(v15, v12);
    if (v25)
    {

      return v23 > 0;
    }
  }

  return 0;
}

uint64_t sub_100279250@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v31);
  v3 = &v29 - v2;
  v32 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7000);
  State.wrappedValue.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AD4790);
    v17 = (v1 + *(v16 + 32));
    v18 = *v17;
    v19 = *(v17 + 8);

    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v8, v30);
      v18 = v34;
    }

    swift_getKeyPath();
    v34 = v18;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v18 + v21, v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    sub_1000082B4(&v5[*(v32 + 24)], v3, &qword_100AD6FB8);
    sub_10003F95C(v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    sub_1000082B4(&v3[*(v31 + 28)], v33, &qword_100AD2688);
    return sub_100004F84(v3, &qword_100AD6FB8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = (v1 + *(v16 + 32));
    v24 = *v23;
    v25 = *(v23 + 8);

    if ((v25 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v8, v30);
      v24 = v34;
    }

    swift_getKeyPath();
    v34 = v24;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v24 + v27, v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    sub_1000082B4(&v5[*(v32 + 28)], v3, &qword_100AD6FB8);
    sub_10003F95C(v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    v28 = sub_1000B89AC(v15);
    sub_10003F084(v28, v33);
    sub_100004F84(v3, &qword_100AD6FB8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100279898@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for AxisTick();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADB508);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_1000F24EC(&qword_100ADB510);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if (sub_100278DB8())
  {
    v14 = v27;
    v15 = *(v28 + 56);

    return v15(v14, 1, 1, v11);
  }

  else
  {
    v17 = (a1 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 44));
    v18 = v17[3];
    v19 = v17[4];
    v33 = *v17;
    v34 = *(v17 + 1);
    v35 = v18;
    v36 = v19;

    AxisTick.init(centered:length:stroke:)();
    LODWORD(v29) = static HierarchicalShapeStyle.tertiary.getter();
    HIDWORD(v29) = 1056964608;
    v20 = sub_1000F24EC(&qword_100ADB490);
    v26 = v11;
    v21 = v8;
    v22 = v20;
    v23 = sub_10000B58C(&qword_100ADB498, &qword_100ADB490);
    AxisMark.foregroundStyle<A>(_:)();
    (*(v4 + 8))(v6, v3);
    v29 = v3;
    v30 = v22;
    v31 = &protocol witness table for AxisTick;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    AxisMark.offset(x:y:)();
    (*(v21 + 8))(v10, v7);
    v24 = v27;
    v25 = v26;
    (*(v28 + 32))(v27, v13, v26);
    return (*(v28 + 56))(v24, 0, 1, v25);
  }
}