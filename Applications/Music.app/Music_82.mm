uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9128);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9130);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9138);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9140);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10091DB8C, 0, 0);
}

uint64_t sub_10091DB8C()
{
  v1 = v0[16];
  Artist.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = Artist.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Artist();
      sub_10092FEB8(&qword_1011A9148, &type metadata accessor for Artist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10091DE2C;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10091DE2C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10091E18C;
  }

  else
  {

    v2 = sub_10091DF48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10091DF48()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9128, &qword_1011A93E8, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A9130);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Artist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10091E18C()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10091E470(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_10091E520(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091E5BC, 0, 0);
}

uint64_t sub_10091E5BC()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_10091E65C()
{

  return _swift_task_switch(sub_10092FF98, 0, 0);
}

uint64_t Composer.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10091E95C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10091EA10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091AA20(a1);
}

uint64_t Curator.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10091ECA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10091ECC0, 0, 0);
}

uint64_t sub_10091ECC0()
{
  Curator.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10091ED38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091AC14(a1);
}

uint64_t sub_10091EDE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10091EE08, 0, 0);
}

uint64_t sub_10091EE08()
{
  EditorialItem.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10091EE68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091ADD8(a1);
}

uint64_t Genre.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10091F0F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10091F118, 0, 0);
}

uint64_t sub_10091F118()
{
  Genre.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10091F190(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091AF9C(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9150);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9158);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9160);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9168);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10091F628, 0, 0);
}

uint64_t sub_10091F628()
{
  v1 = v0[16];
  MusicMovie.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = MusicMovie.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicMovie();
      sub_10092FEB8(&qword_1011A9170, &type metadata accessor for MusicMovie);
      sub_10092FEB8(&qword_1011A9178, &type metadata accessor for MusicMovie);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10091F8FC;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10091F8FC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10091FC5C;
  }

  else
  {

    v2 = sub_10091FA18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10091FA18()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9150, &qword_1011A93E0, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A9158);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    MusicMovie.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10091FC5C()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10091FF40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_10091FFF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10092008C, 0, 0);
}

uint64_t sub_10092008C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9180);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8898);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9188);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9190);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10092033C, 0, 0);
}

uint64_t sub_10092033C()
{
  v1 = v0[16];
  MusicVideo.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = MusicVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicVideo();
      sub_10092FEB8(&qword_1011A9198, &type metadata accessor for MusicVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1009205DC;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1009205DC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10092093C;
  }

  else
  {

    v2 = sub_1009206F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009206F8()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9180, &qword_1011A93D8, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A8898);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    MusicVideo.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10092093C()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100920C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_100920CD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100920D6C, 0, 0);
}

uint64_t sub_100920D6C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A91A0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA6C0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A91A8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A91B0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100921208, 0, 0);
}

uint64_t sub_100921208()
{
  v1 = v0[17];
  Playlist.url.getter();
  v2 = type metadata accessor for URL();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[17], &qword_1011A77F0);
    v4 = Playlist.catalogID.getter();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = type metadata accessor for Playlist();
      sub_10092FEB8(&qword_1011A91B8, &type metadata accessor for Playlist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_10092151C;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_100921888;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10092151C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100921B04;
  }

  else
  {

    v2 = sub_100921638;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100921638()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A91A0, &qword_1011A93D0, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011AA6C0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    Playlist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100921888()
{

  return _swift_task_switch(sub_100921984, 0, 0);
}

uint64_t sub_100921984()
{
  v1 = v0[9];
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_1000095E8(v1, &qword_1011AA6C0);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    Playlist.url.getter();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100921B04()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A91C0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A91C8);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_10010FC20(&qword_1011A91D0);
  v2[14] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011AA6F0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100922020, 0, 0);
}

uint64_t sub_100922020()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = type metadata accessor for Curator();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:)();
  sub_1000095E8(v1, &qword_1011A91D0);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  MusicLibraryPlaylistRequest.completionPolicy.setter();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10092219C;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_10092219C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1009223D0;
  }

  else
  {
    v2 = sub_1009222B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009222B0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1009223D0()
{
  v30 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1011A90F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    sub_10092FEB8(&qword_1011AA640, &type metadata accessor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_100010678(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v21 = String.init<A>(describing:)();
    v23 = sub_100010678(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100922718(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_1009227C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100922864, 0, 0);
}

uint64_t sub_100922864()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_100922910(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100922930, 0, 0);
}

uint64_t sub_100922930()
{
  RadioShow.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100922990(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091B160(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100922C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100922C40, 0, 0);
}

uint64_t sub_100922C40()
{
  RecordLabel.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100922CB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091B324(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100922F48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100922F68, 0, 0);
}

uint64_t sub_100922F68()
{
  SocialProfile.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100922FE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_10091B4E8(a1);
}

uint64_t Song.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A91D8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A91E0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A91E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100923478, 0, 0);
}

uint64_t sub_100923478()
{
  v1 = v0[16];
  Song.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = Song.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Song();
      sub_10092FEB8(&qword_1011A91F0, &type metadata accessor for Song);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100923718;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100923718()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100923A78;
  }

  else
  {

    v2 = sub_100923834;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100923834()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A91D8, &qword_1011A93C8, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A88A0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Song.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100923A78()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100923D70@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for PreviewAsset();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer.Kind();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for MusicOffer();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011A91D8);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A91E0);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011A91E8);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100924118, 0, 0);
}

uint64_t sub_100924118()
{
  v1 = Song.catalogID.getter();
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 256) = v5;
    v6 = [v5 specialization];
    *(v0 + 264) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 272) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 280) = type metadata accessor for Song();
        sub_10092FEB8(&qword_1011A91F0, &type metadata accessor for Song);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        sub_10010FC20(&qword_1011AA660);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&qword_1011A91F8);
        *(v9 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v10 = swift_task_alloc();
        *(v0 + 288) = v10;
        *v10 = v0;
        v10[1] = sub_1009243FC;
        v11 = *(v0 + 208);
        v12 = *(v0 + 216);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1009243FC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100924CA8;
  }

  else
  {

    v2 = sub_100924518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100924518()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A91D8, &qword_1011A93C8, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_1000089F8(v2, v3, &qword_1011A88A0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_1000095E8(*(v0 + 176), &qword_1011A88A0);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    Song.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_1000089F8(v21, v22, &qword_1011A88A0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A88A0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = Song.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        sub_100015C24(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100015C24((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  sub_1000089F8(v43, v44, &qword_1011A88A0);
  if (v8(v44, 1, v42) == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A88A0);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = type metadata accessor for URL();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = Song.previewAssets.getter();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  PreviewAsset.url.getter();
  (*(v50 + 8))(v49, v51);
  v52 = type metadata accessor for URL();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    URL._bridgeToObjectiveC()(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  sub_1000095E8(v67, &qword_1011A88A0);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_100924CA8()
{
  v22 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100924FCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Song.shareURL.getter(a1);
}

uint64_t sub_10092507C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9200);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&unk_1011ACB80);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9208);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9210);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100925504, 0, 0);
}

uint64_t sub_100925504()
{
  v1 = v0[16];
  Station.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = Station.id.getter();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = type metadata accessor for Station();
    sub_10092FEB8(&qword_1011A9218, &type metadata accessor for Station);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100925788;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100925788()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100925AE8;
  }

  else
  {

    v2 = sub_1009258A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009258A4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9200, &qword_1011A93C0, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &unk_1011ACB80);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Station.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100925AE8()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100925DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Station.shareURL.getter(a1);
}

uint64_t sub_100925E7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100925F18, 0, 0);
}

uint64_t sub_100925F18()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Track.song(_:) || v14 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 8))(v13, v9);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v15 = qword_101219808;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v16 = Track.failureMessage.getter();
    (*(v10 + 8))(v13, v9);
  }

  return v16;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Song();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MusicVideo();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100926478, 0, 0);
}

uint64_t sub_100926478()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1009268B4;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_100926720;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100926720()
{

  return _swift_task_switch(sub_10092681C, 0, 0);
}

uint64_t sub_10092681C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009268B4()
{

  return _swift_task_switch(sub_1009269B0, 0, 0);
}

uint64_t sub_1009269B0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100926A50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Track.shareURL.getter(a1);
}

uint64_t sub_100926AEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100926B88, 0, 0);
}

uint64_t sub_100926B88()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9220);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9228);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9230);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9238);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100927018, 0, 0);
}

uint64_t sub_100927018()
{
  v1 = v0[16];
  TVEpisode.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = TVEpisode.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVEpisode();
      sub_10092FEB8(&qword_1011A9240, &type metadata accessor for TVEpisode);
      sub_10092FEB8(&qword_1011A9248, &type metadata accessor for TVEpisode);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1009272EC;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1009272EC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10092764C;
  }

  else
  {

    v2 = sub_100927408;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100927408()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9220, &qword_1011A93B8, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A9228);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVEpisode.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10092764C()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100927930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_1009279E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100927A7C, 0, 0);
}

uint64_t sub_100927A7C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9250);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9258);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9260);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9268);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100927F0C, 0, 0);
}

uint64_t sub_100927F0C()
{
  v1 = v0[16];
  TVSeason.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = TVSeason.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVSeason();
      sub_10092FEB8(&qword_1011A9270, &type metadata accessor for TVSeason);
      sub_10092FEB8(&qword_1011A9278, &type metadata accessor for TVSeason);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1009281E0;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1009281E0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100928540;
  }

  else
  {

    v2 = sub_1009282FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009282FC()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9250, &qword_1011A93B0, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A9258);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVSeason.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100928540()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100928824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_1009288D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100928970, 0, 0);
}

uint64_t sub_100928970()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_100928A18()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A9280);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9288);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9290);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9298);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100928E04, 0, 0);
}

uint64_t sub_100928E04()
{
  v1 = v0[16];
  TVShow.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = TVShow.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVShow();
      sub_10092FEB8(&qword_1011A92A0, &type metadata accessor for TVShow);
      sub_10092FEB8(&qword_1011A92A8, &type metadata accessor for TVShow);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1009290D8;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1009290D8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100929438;
  }

  else
  {

    v2 = sub_1009291F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009291F4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A9280, &qword_1011A93A8, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A9288);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVShow.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100929438()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10092971C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_1009297B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100929850, 0, 0);
}

uint64_t sub_100929850()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A92B0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A92B8);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A92C0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A92C8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100929B00, 0, 0);
}

uint64_t sub_100929B00()
{
  v1 = v0[16];
  UploadedAudio.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = UploadedAudio.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedAudio();
      sub_10092FEB8(&qword_1011A92D0, &type metadata accessor for UploadedAudio);
      sub_10092FEB8(&qword_1011A92D8, &type metadata accessor for UploadedAudio);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_100929DD4;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100929DD4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10092A134;
  }

  else
  {

    v2 = sub_100929EF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100929EF0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A92B0, &qword_1011A93A0, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A92B8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    UploadedAudio.postURL.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10092A134()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10092A418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_10092A4B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10092A54C, 0, 0);
}

uint64_t sub_10092A54C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_10092A5F4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A92E0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A92E8);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A92F0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A92F8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10092A9E0, 0, 0);
}

uint64_t sub_10092A9E0()
{
  v1 = v0[16];
  UploadedVideo.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = UploadedVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedVideo();
      sub_10092FEB8(&qword_1011A9300, &type metadata accessor for UploadedVideo);
      sub_10092FEB8(&qword_1011A9308, &type metadata accessor for UploadedVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10092ACB4;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10092ACB4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10092B014;
  }

  else
  {

    v2 = sub_10092ADD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10092ADD0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A92E0, &qword_1011A9398, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A92E8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    UploadedVideo.postURL.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10092B014()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10092B2F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_10092B390(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10092B42C, 0, 0);
}

uint64_t sub_10092B42C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10091E65C;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v55 = type metadata accessor for UploadedVideo();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UploadedAudio();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVShow();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TVSeason();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TVEpisode();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Station();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Song();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SocialProfile();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for RecordLabel();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RadioShow();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist();
  v84 = *(v12 - 8);
  v85 = v12;
  __chkstk_darwin(v12);
  v83 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin(v14);
  v86 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin(v16);
  v89 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v92 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v96 = *(v20 - 8);
  v97 = v20;
  __chkstk_darwin(v20);
  v95 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin(v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artist();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v100, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v30 + 32))(v32, v37, v29);
    Album.url.getter();
    return (*(v30 + 8))(v32, v29);
  }

  v40 = v101;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v26 + 32))(v28, v37, v25);
    Artist.url.getter();
    return (*(v26 + 8))(v28, v25);
  }

  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v37, v33);
    v41 = type metadata accessor for URL();
    return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  v42 = v101;
  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v37, v33);
    v45 = v98;
    v44 = v99;
    (*(v98 + 32))(v24, v37, v99);
    Curator.url.getter();
    return (*(v45 + 8))(v24, v44);
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v95;
    v47 = v96;
    v48 = v97;
    (*(v96 + 32))(v95, v37, v97);
    EditorialItem.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v92;
    v47 = v93;
    v48 = v94;
    (*(v93 + 32))(v92, v37, v94);
    Genre.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v89;
    v47 = v90;
    v48 = v91;
    (*(v90 + 32))(v89, v37, v91);
    MusicMovie.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v86;
    v47 = v87;
    v48 = v88;
    (*(v87 + 32))(v86, v37, v88);
    MusicVideo.url.getter();
  }

  else if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v83;
    v47 = v84;
    v48 = v85;
    (*(v84 + 32))(v83, v37, v85);
    Playlist.url.getter();
  }

  else
  {
    if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v37, v33);
      v43 = type metadata accessor for URL();
      return (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    if (v38 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v81;
      v48 = v82;
      v46 = v80;
      (*(v81 + 32))(v80, v37, v82);
      RadioShow.url.getter();
    }

    else if (v38 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v78;
      v46 = v77;
      v48 = v79;
      (*(v78 + 32))(v77, v37, v79);
      RecordLabel.url.getter();
    }

    else
    {
      if (v38 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v38 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v72;
          v50 = v71;
          v51 = v73;
          (*(v72 + 32))(v71, v37, v73);
          Song.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v69;
          v50 = v68;
          v51 = v70;
          (*(v69 + 32))(v68, v37, v70);
          Station.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v66;
          v50 = v65;
          v51 = v67;
          (*(v66 + 32))(v65, v37, v67);
          TVEpisode.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v63;
          v50 = v62;
          v51 = v64;
          (*(v63 + 32))(v62, v37, v64);
          TVSeason.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v60;
          v50 = v59;
          v51 = v61;
          (*(v60 + 32))(v59, v37, v61);
          TVShow.url.getter();
        }

        else if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v57;
          v50 = v56;
          v51 = v58;
          (*(v57 + 32))(v56, v37, v58);
          UploadedAudio.postURL.getter();
        }

        else
        {
          if (v38 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v42 = v101;
            if (v38 != enum case for GenericMusicItem.other(_:))
            {
              v52 = type metadata accessor for URL();
              (*(*(v52 - 8) + 56))(v40, 1, 1, v52);
              return (*(v34 + 8))(v37, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v37, v33);
          v49 = v54;
          v50 = v53;
          v51 = v55;
          (*(v54 + 32))(v53, v37, v55);
          UploadedVideo.postURL.getter();
        }

        return (*(v49 + 8))(v50, v51);
      }

      (*(v34 + 96))(v37, v33);
      v47 = v75;
      v46 = v74;
      v48 = v76;
      (*(v75 + 32))(v74, v37, v76);
      SocialProfile.url.getter();
    }
  }

  return (*(v47 + 8))(v46, v48);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UploadedVideo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UploadedAudio();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for TVShow();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for TVSeason();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for TVEpisode();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = type metadata accessor for MusicVideo();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for MusicMovie();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = type metadata accessor for Album();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = type metadata accessor for GenericMusicItem();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_10092CCA4, 0, 0);
}

uint64_t sub_10092CCA4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_10092D888;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_10092DAA4;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = sub_10092DCC0;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_10092DEDC;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = sub_10092E0F8;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_10092E314;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = sub_10092E530;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = sub_10092E74C;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = sub_10092E968;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_10092EB84;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_10092EDA0;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

uint64_t sub_10092D888()
{

  return _swift_task_switch(sub_10092D984, 0, 0);
}

uint64_t sub_10092D984()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092DAA4()
{

  return _swift_task_switch(sub_10092DBA0, 0, 0);
}

uint64_t sub_10092DBA0()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092DCC0()
{

  return _swift_task_switch(sub_10092DDBC, 0, 0);
}

uint64_t sub_10092DDBC()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092DEDC()
{

  return _swift_task_switch(sub_10092DFD8, 0, 0);
}

uint64_t sub_10092DFD8()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092E0F8()
{

  return _swift_task_switch(sub_10092E1F4, 0, 0);
}

uint64_t sub_10092E1F4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092E314()
{

  return _swift_task_switch(sub_10092E410, 0, 0);
}

uint64_t sub_10092E410()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092E530()
{

  return _swift_task_switch(sub_10092E62C, 0, 0);
}

uint64_t sub_10092E62C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092E74C()
{

  return _swift_task_switch(sub_10092E848, 0, 0);
}

uint64_t sub_10092E848()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092E968()
{

  return _swift_task_switch(sub_10092EA64, 0, 0);
}

uint64_t sub_10092EA64()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092EB84()
{

  return _swift_task_switch(sub_10092EC80, 0, 0);
}

uint64_t sub_10092EC80()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10092EDA0()
{

  return _swift_task_switch(sub_10092EE9C, 0, 0);
}

uint64_t sub_10092EE9C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for GenericMusicItem();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.genre(_:) || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:) || v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v10 + 8))(v13, v9);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v15 = qword_101219808;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v16 = GenericMusicItem.failureMessage.getter();
    (*(v10 + 8))(v13, v9);
  }

  return v16;
}

uint64_t sub_10092F680(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_10092F71C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10092F7B8, 0, 0);
}

uint64_t sub_10092F7B8()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10092F858;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_10092F858()
{

  return _swift_task_switch(sub_10092F954, 0, 0);
}

uint64_t sub_10092F954()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10092FA78()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A90F8);
  sub_1000060E4(v0, qword_1011A90F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10092FAF0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10092FB48(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9350, &type metadata accessor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FBA0(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9358, &type metadata accessor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FBF8(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9360, &type metadata accessor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FC50(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9368, &type metadata accessor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FCA8(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9370, &type metadata accessor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FD00(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9378, &type metadata accessor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FD58(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9380, &type metadata accessor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FDB0(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9388, &type metadata accessor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FE08(uint64_t a1)
{
  result = sub_10092FEB8(&qword_1011A9390, &type metadata accessor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FE60(uint64_t a1)
{
  result = sub_10092FEB8(&unk_1011ACB90, &type metadata accessor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10092FEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10092FF40(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_10003D17C(v50, v27 + v26, &qword_1011A9418);
  sub_100059A8C(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_10003D17C(v55, v36 + v34, &qword_1011A8660);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_1009310C0;
  v40[1] = v41;
  v40[2] = &unk_100EF01F8;
  v40[3] = v27;
  v40[4] = &unk_100EF0208;
  v40[5] = v36;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  sub_10003D17C(v50, v27 + v26, &qword_1011A9418);
  sub_100059A8C(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  sub_10003D17C(v55, v36 + v34, &qword_1011A8660);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = sub_100933DDC;
  v40[1] = v41;
  v40[2] = &unk_100EF0228;
  v40[3] = v27;
  v40[4] = &unk_100EF0238;
  v40[5] = v36;
  return result;
}

uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v49 = a4;
  v50 = a7;
  v47 = a3;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = v39 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = v39 - v17;
  v40 = *(v10 + 16);
  v40(v39 - v17);
  v44 = *(v10 + 80);
  v19 = (v44 + 40) & ~v44;
  v20 = swift_allocObject();
  v48 = v20;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v42 = a6;
  v43 = a2;
  v21 = a2;
  *(v20 + 4) = a2;
  v22 = *(v10 + 32);
  v39[1] = v10 + 32;
  v22(v20 + v19, v18, a5);
  v23 = v41;
  (v40)(v41, v51, a5);
  v24 = swift_allocObject();
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  *(v24 + 4) = v21;
  v25 = v23;
  v26 = v22;
  v22(v24 + v19, v25, a5);
  v27 = v24 + ((v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = v47;
  v29 = v47[1];
  *v27 = *v47;
  *(v27 + 1) = v29;
  *(v27 + 4) = *(v28 + 4);
  v30 = v45;
  v22(v45, v51, a5);
  v31 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = (*(v31 + 64) + v44 + v32) & ~v44;
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 16) = a5;
  *(v34 + 24) = v35;
  sub_10003D17C(v49, v34 + v32, &qword_1011A8660);
  v26(v34 + v33, v30, a5);

  v37 = v50;
  v38 = v48;
  *v50 = sub_1009376F0;
  v37[1] = v38;
  v37[2] = &unk_100EF0258;
  v37[3] = v24;
  v37[4] = &unk_100EF0268;
  v37[5] = v34;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v42 = a3;
  v43 = a6;
  v39 = a2;
  v35 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v37 = &v33 - v13;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  sub_1000095E8(v16, &qword_1011A86F0);
  v36 = *(v9 + 16);
  v36(v15, a1, a4);
  v38 = *(v9 + 80);
  v17 = (v38 + 40) & ~v38;
  v18 = swift_allocObject();
  v40 = v18;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = v39;
  *(v18 + 4) = v39;
  v34 = *(v9 + 32);
  v44 = v9 + 32;
  v34(v18 + v17, v15, a4);
  v20 = v37;
  v21 = v35;
  v36(v37, v35, a4);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v19;
  v23 = v20;
  v24 = v34;
  v34(v22 + v17, v23, a4);
  v25 = v41;
  v24(v41, v21, a4);
  v26 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = (*(v26 + 64) + v38 + v27) & ~v38;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  sub_10003D17C(v42, v29 + v27, &qword_1011A8660);
  v24((v29 + v28), v25, a4);

  v31 = v43;
  v32 = v40;
  *v43 = sub_1009393A4;
  v31[1] = v32;
  v31[2] = &unk_100EF0288;
  v31[3] = v22;
  v31[4] = &unk_100EF0298;
  v31[5] = v29;
  return result;
}

uint64_t sub_100930F04()
{
  v0 = type metadata accessor for MusicLibrary.FavoriteAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A94B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1009310D8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1009310D8()
{
  v1 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v28 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - v5;
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_10010FC20(&qword_1011A94B8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = *(v10 + 16);
  v27 = v0;
  v15(&v25 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v37[0] = 0;
      *(&v37[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v37[0] = 0xD000000000000019;
      *(&v37[0] + 1) = 0x8000000100E5BAC0;
      v15(v26, v27, v9);
      v21._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v21);

      v20 = *&v37[0];
      (*(v10 + 8))(v14, v9);
      return v20;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v28;
  (*(v28 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000011;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD00000000000001DLL;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_1011A6820 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v37[4] = v33;
      v37[5] = v34;
      v37[6] = v35;
      v37[7] = v36;
      v37[0] = v29;
      v37[1] = v30;
      v37[2] = v31;
      v37[3] = v32;
      sub_100014984(v37);
      if ((WORD4(v37[0]) & 0x100) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        if (v19 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000025;
        }

        v20 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v37[0] = 0;
          *(&v37[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v37[0] = 0x206E776F6E6B6E55;
          *(&v37[0] + 1) = 0xEF206E6F73616572;
          v18(v25, v8, v1);
          v23._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v23);

          v20 = *&v37[0];
          v24 = *(v17 + 8);
          v24(v8, v1);
          v24(v6, v1);
          return v20;
        }
      }

LABEL_35:
      (*(v17 + 8))(v8, v1);
      return v20;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v20 = 0xD000000000000010;
  (*(v17 + 8))(v8, v1);
  return v20;
}

uint64_t sub_10093191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.FavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011A94B8);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_100931AF4, 0, 0);
}

uint64_t sub_100931AF4()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_1000089F8(v0[52], (v0 + 14), &qword_1011A9418);
      if (v0[22] != 1)
      {
        sub_10012B828((v0 + 14), (v0 + 2));
        v0[81] = type metadata accessor for MainActor();
        v0[82] = static MainActor.shared.getter();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v33;
        v0[83] = v32;
        v0[84] = v33;
        v26 = sub_1009327B0;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_1000095E8((v0 + 14), &qword_1011A9418);
      v14 = v13[3];
      v0[76] = v14;
      v0[77] = v13[4];
      v0[78] = sub_10000954C(v13, v14);
      type metadata accessor for MainActor();
      v0[79] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      v18 = sub_10093257C;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[88] = v24;
      v0[89] = v23[4];
      v0[90] = sub_10000954C(v23, v24);
      type metadata accessor for MainActor();
      v0[91] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v25;
      v18 = sub_100932A8C;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_100931FBC;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.favorite<A>(_:)(v22, v20, v21);
}

uint64_t sub_100931FBC()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_10093B2A0;
  }

  else
  {
    v2 = sub_1009320D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009320D0()
{
  sub_1000089F8(v0[51], (v0 + 44), &qword_1011A86F0);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_10000954C(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100932254, v3, v2);
  }

  else
  {
    sub_1000095E8((v0 + 44), &qword_1011A86F0);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_1009323B4;
    v5 = v0[52];

    return sub_100ADE5F0(v5);
  }
}

uint64_t sub_100932254()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_100A91828(v3, 0, v2, v1);
  sub_10093B238(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100932304, 0, 0);
}

uint64_t sub_100932304()
{
  sub_10000959C(v0 + 352);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_1009323B4;
  v2 = *(v0 + 416);

  return sub_100ADE5F0(v2);
}

uint64_t sub_1009323B4()
{

  return _swift_task_switch(sub_1009324B0, 0, 0);
}

uint64_t sub_1009324B0()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10093257C()
{
  v6 = v0[77];

  sub_100980BA4(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_1009326AC;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1009326AC()
{
  v1 = *v0;

  sub_100344A84(v1 + 280);

  return _swift_task_switch(sub_10093B2A4, 0, 0);
}

uint64_t sub_1009327B0()
{
  v1 = static MainActor.shared.getter();
  v0[85] = v1;
  v2 = swift_task_alloc();
  v0[86] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_1009328C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 93, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_10093B2A8, v2, &type metadata for Bool);
}

uint64_t sub_1009328C4()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_100932A24, v3, v2);
}

uint64_t sub_100932A24()
{

  return _swift_task_switch(sub_10093B2AC, 0, 0);
}

uint64_t sub_100932A8C()
{
  v6 = v0[89];

  sub_10097F360(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_100932BBC;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_100932BBC()
{
  v1 = *v0;

  sub_100344A84(v1 + 208);

  return _swift_task_switch(sub_10093B2A4, 0, 0);
}

uint64_t sub_100932CC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10093191C(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_100932DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100933008, 0, 0);
}

uint64_t sub_100933008()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1008D08BC(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100933314, v19, v18);
  }
}

uint64_t sub_100933314()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10093B298, 0, 0);
}

uint64_t sub_100933AC8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100932DF0(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_100933C20()
{
  v0 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A94B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100933DF4();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100933DF4()
{
  v1 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v29 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - v5;
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_1011A94B0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = *(v10 + 16);
  v28 = v0;
  v15(&v26 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v38[0] = 0xD000000000000019;
      *(&v38[0] + 1) = 0x8000000100E5BAC0;
      v15(v27, v28, v9);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v21 = *&v38[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v29;
  (*(v29 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0xD000000000000018;
    }

    if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_1011A6820 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v38[4] = v34;
      v38[5] = v35;
      v38[6] = v36;
      v38[7] = v37;
      v38[0] = v30;
      v38[1] = v31;
      v38[2] = v32;
      v38[3] = v33;
      sub_100014984(v38);
      if ((WORD4(v38[0]) & 0x100) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0x6C20646572616853;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD00000000000001CLL;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000013;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000014;
      }

      if (v19 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v17 + 8))(v8, v1);
        return 0xD000000000000025;
      }

      v21 = 0x206E776F6E6B6E55;
      if (v19 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v38[0] = 0;
        *(&v38[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        *&v38[0] = 0x206E776F6E6B6E55;
        *(&v38[0] + 1) = 0xEF206E6F73616572;
        v18(v26, v20, v1);
        v24._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v24);

        v21 = *&v38[0];
        v25 = *(v17 + 8);
        v25(v20, v1);
        v25(v6, v1);
        return v21;
      }

LABEL_31:
      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

uint64_t sub_1009345C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011A94B0);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_10093479C, 0, 0);
}

uint64_t sub_10093479C()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_1000089F8(v0[52], (v0 + 14), &qword_1011A9418);
      if (v0[22] != 1)
      {
        sub_10012B828((v0 + 14), (v0 + 2));
        v0[80] = type metadata accessor for MainActor();
        v0[81] = static MainActor.shared.getter();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v33;
        v0[82] = v32;
        v0[83] = v33;
        v26 = sub_1009352D8;
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      sub_1000095E8((v0 + 14), &qword_1011A9418);
      v14 = v13[3];
      v0[75] = v14;
      v0[76] = v13[4];
      v0[77] = sub_10000954C(v13, v14);
      type metadata accessor for MainActor();
      v0[78] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      v18 = sub_1009350A4;
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[87] = v24;
      v0[88] = v23[4];
      v0[89] = sub_10000954C(v23, v24);
      type metadata accessor for MainActor();
      v0[90] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v25;
      v18 = sub_1009356A0;
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = sub_100934C64;
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.undoFavorite<A>(_:)(v22, v20, v21);
}

uint64_t sub_100934C64()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1009359B8;
  }

  else
  {
    v2 = sub_100934D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100934D78()
{
  sub_1000089F8(v0[51], (v0 + 44), &qword_1011A86F0);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_10000954C(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100934F20, v3, v2);
  }

  else
  {
    sub_1000095E8((v0 + 44), &qword_1011A86F0);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100934F20()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_100A91828(v3, 0, v2, v1);
  sub_10093B238(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100934FD0, 0, 0);
}

uint64_t sub_100934FD0()
{
  sub_10000959C((v0 + 44));
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009350A4()
{
  v6 = v0[76];

  sub_100980BA4(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_1009351D4;
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1009351D4()
{
  v1 = *v0;

  sub_100344A84(v1 + 280);

  return _swift_task_switch(sub_10093B2A4, 0, 0);
}

uint64_t sub_1009352D8()
{
  v1 = static MainActor.shared.getter();
  v0[84] = v1;
  v2 = swift_task_alloc();
  v0[85] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[86] = v3;
  *v3 = v0;
  v3[1] = sub_1009353EC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 92, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v2, &type metadata for Bool);
}

uint64_t sub_1009353EC()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_10093554C, v3, v2);
}

uint64_t sub_10093554C()
{

  return _swift_task_switch(sub_1009355B4, 0, 0);
}

uint64_t sub_1009355B4()
{
  sub_10012BA6C((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009356A0()
{
  v6 = v0[88];

  sub_10097F360(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = sub_1009357D0;
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_1009357D0()
{
  v1 = *v0;

  sub_100344A84(v1 + 208);

  return _swift_task_switch(sub_1009358D4, 0, 0);
}

uint64_t sub_1009358D4()
{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009359B8()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100935A84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_10000959C(v0 + v4);
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
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
  }

  sub_10000959C(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_100935BD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1009345C4(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_100935D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100935F18, 0, 0);
}

uint64_t sub_100935F18()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1008D08BC(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100936224, v19, v18);
  }
}

uint64_t sub_100936224()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1009369D8, 0, 0);
}

uint64_t sub_1009369D8()
{
  sub_10093B238(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100936B10()
{
  v1 = *(v0 + 16);
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100936DE0()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100935D00(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_1008D04DC;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_1008D0A40;
}

uint64_t (*sub_10093709C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_1008D0A40;
}

uint64_t (*sub_100937130())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_1008D0A40;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_1008D0A40;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_1008D0A40;
}

uint64_t (*sub_100937364())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_1008D0A40;
}

uint64_t (*sub_100937404())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_1008D0A40;
}

uint64_t sub_100937534()
{
  v0 = type metadata accessor for MusicLibrary.DislikeAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A94A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.dislike.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100937708();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100937708()
{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011A94A8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v7 + 16);
  v13(&v18 - v11, v1, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = sub_100938EA0(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v18 = 0xD000000000000019;
    v19 = 0x8000000100E5BAC0;
    v13(v10, v1, v6);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v15 = v18;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

uint64_t sub_1009379D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_100937ABC;

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t sub_100937ABC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100937C08, 0, 0);
  }
}

uint64_t sub_100937C08()
{
  sub_1000089F8(v0[7], (v0 + 2), &qword_1011A86F0);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = sub_10000954C(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100937D40, v3, v2);
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_1011A86F0);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100937D40()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_100A91828(v3, 0, v2, v1);
  sub_10093B238(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100937DE8, 0, 0);
}

uint64_t sub_100937DE8()
{
  sub_10000959C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100937E54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F3F4;

  return sub_1009379D0(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_100937F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100938178, 0, 0);
}

uint64_t sub_100938178()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1008D08BC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10093846C, v18, v17);
  }
}

uint64_t sub_10093846C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_100938C20, 0, 0);
}

uint64_t sub_100938C20()
{
  sub_10093B238(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100938D58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100937F64(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100938EA0(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *(v3 + 16);
  v9(&v15 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v15 = 0x206E776F6E6B6E55;
  v16 = 0xEF206E6F73616572;
  v9(v6, a1, v2);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14 = v15;
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_1009391E8()
{
  v0 = type metadata accessor for MusicLibrary.UndoDislikeAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A94A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.undoDislike.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100939404();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100939404()
{
  v1 = type metadata accessor for MusicLibrary.UndoDislikeAction.UnsupportedReason();
  v21 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = sub_10010FC20(&qword_1011A94A0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = *(v8 + 16);
  v20 = v0;
  v14(&v20 - v12, v0, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    v16 = v21;
    (*(v21 + 32))(v6, v13, v1);
    (*(v16 + 16))(v4, v6, v1);
    v17 = String.init<A>(describing:)();
    (*(v16 + 8))(v6, v1);
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v22 = 0xD000000000000019;
    v23 = 0x8000000100E5BAC0;
    v14(v11, v20, v7);
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    v17 = v22;
    (*(v8 + 8))(v13, v7);
  }

  return v17;
}

uint64_t sub_100939714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100008F30;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t sub_1009397CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100939888()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_100939714(v5, v0 + v4, v2, v3);
}

uint64_t sub_10093996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100939B80, 0, 0);
}

uint64_t sub_100939B80()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1008D08BC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100939E74, v18, v17);
  }
}

uint64_t sub_100939E74()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6405;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10093B29C, 0, 0);
}

uint64_t sub_10093A628()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10093996C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10093A790()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.SuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_1008D0A40;
}

uint64_t sub_10093AA38()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_10093AC18())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_1008D0A40;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x8000000100E5BAE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x8000000100E5BAE0;
  return sub_1008D0A40;
}

uint64_t (*sub_10093AD64())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x8000000100E5BAE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x8000000100E5BAE0;
  return sub_1008D0A40;
}

uint64_t _s9MusicCore7ActionsO15UndoSuggestLessO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO12UndoFavoriteO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10093B238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t (*Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v31 = a8;
  v32 = a3;
  v29 = a7;
  v30 = a2;
  v33 = a4;
  v34 = a5;
  v28 = a1;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v18 = v31;
  *(v17 + 4) = v31;
  *(v17 + 5) = a2;
  v19 = *(v11 + 32);
  v19(&v17[(v16 + 48) & ~v16], v15, a6);
  v19(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a6);
  v20 = (v16 + 56) & ~v16;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 4) = v18;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  v19(&v22[v20], v27, a6);
  *&v22[v21] = v30;
  sub_10012B828(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return sub_10093BC90;
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = sub_1000D9088;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_100EF0420;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_100EF0428;
  *(a5 + 88) = 0;
}

uint64_t sub_10093B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = sub_1000D9088;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_100EF0420;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_100EF0428;
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x8000000100E46930;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x8000000100E46930;
  return sub_1008D04DC;
}

uint64_t (*sub_10093B87C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x8000000100E46930;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x8000000100E46930;
  return sub_1008D0A40;
}

unint64_t sub_10093B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = type metadata accessor for MusicLibrary.AddAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A87F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v13 = static MusicLibrary.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  static MusicLibraryAction<>.add.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_10093BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v9 = *(a6 - 8);
  v8[34] = v9;
  v8[35] = *(v9 + 64);
  v8[36] = swift_task_alloc();
  type metadata accessor for Locale();
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for String.LocalizationValue();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[42] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10093BEC0, v12, v11);
}

uint64_t sub_10093BEC0()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v3 + 16);
  v49(v2, v1, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v47 = v0[40];
  v6 = v0[38];
  v7 = v0[39];
  v42 = v0[36];
  v45 = v0[30];
  v43 = v0[33];
  v44 = v0[29];
  v41 = v0[34];
  v38 = v0[28];
  v39 = v0[26];
  v8 = qword_101219808;
  v48 = *(v0 + 31);
  static Locale.current.getter();
  v9 = v8;
  String.init(localized:table:bundle:locale:comment:)();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = String._bridgeToObjectiveC()();

  v36 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  v49(v47, v5, v6);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10(v5, v6);
  v12 = String._bridgeToObjectiveC()();

  v37 = objc_opt_self();
  v13 = [v37 actionWithTitle:v12 style:1 handler:0];

  v46 = v13;
  [v36 addAction:v13];
  v14 = v39(v38);
  v40 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  v49(v47, v5, v6);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10(v5, v6);
  (*(v41 + 16))(v42, v38, v48);
  v16 = (*(v41 + 80) + 64) & ~*(v41 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v48;
  *(v17 + 32) = v43;
  *(v17 + 40) = v14;
  *(v17 + 48) = v40;
  *(v17 + 56) = v44;
  (*(v41 + 32))(v17 + v16, v42, v48);
  v18 = v14;

  v19 = String._bridgeToObjectiveC()();

  v0[18] = sub_10093C9DC;
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_10027D328;
  v0[17] = &unk_1010D06F0;
  v20 = _Block_copy(v0 + 14);

  v21 = [v37 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v36 addAction:v21];
  [v36 setPreferredAction:v21];
  [v36 setContentViewController:v18];
  v22 = *(v45 + 80);
  if (v22)
  {
    v23 = qword_1011A6AC8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_1011AE4E0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Deferring presentation…", v27, 2u);
    }

    v28 = v0[30];

    v29 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = sub_100A8F4C0;
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_100A90460;
    v0[23] = &unk_1010D0718;
    v30 = _Block_copy(v0 + 20);
    v31 = [v29 initWithTimeout:v30 interruptionHandler:10.0];
    _Block_release(v30);

    sub_10012B7A8(v28, (v0 + 2));
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_10012B828((v0 + 2), v32 + 24);
    *(v32 + 120) = v36;
    *(v32 + 128) = 257;
    *(v32 + 136) = 0;
    *(v32 + 144) = 0;
    v33 = v31;
    v22(v28, v36, sub_1008D0984, v32);
    sub_100020438(v22);
  }

  else
  {
    sub_100A8D9A0(v36, 1, 1, 0, 0);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_10093C65C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v7 = (*(*(v2 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[6];
  v10 = *(v0 + v7);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_10093BD34(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_10093C7B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a5, a6);
  type metadata accessor for MainActor();
  v20 = a2;

  v21 = static MainActor.shared.getter();
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  *(v23 + 3) = &protocol witness table for MainActor;
  v25 = v27;
  v24 = v28;
  *(v23 + 4) = a6;
  *(v23 + 5) = v25;
  *(v23 + 6) = v24;
  *(v23 + 7) = v20;
  *(v23 + 8) = a3;
  *(v23 + 9) = a4;
  (*(v13 + 32))(&v23[v22], v15, a6);
  sub_100969440(0, 0, v18, &unk_100EF04B8, v23);
}

uint64_t sub_10093CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(sub_10093CB28, v10, v9);
}

uint64_t sub_10093CB28()
{
  v1 = v0[8];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v0[16] = v4;
  v5 = v4 / 5.0;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = *(v1 + 8);
  *v6 = v0;
  v6[1] = sub_10093CC10;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

uint64_t sub_10093CC10()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10093CDBC;
  }

  else
  {
    v5 = sub_10093CD4C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10093CD4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10093CDBC()
{
  v31 = v0;

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v12 = v0[11];
    v11 = v0[12];
    v29 = v8;
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[16] / 5.0;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 134349570;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2082;
    v6(v12, v11, v14);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_100010678(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v21 = String.init<A>(describing:)();
    v23 = sub_100010678(v21, v22, &v30);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v29, "Failed to set userRating=%{public}f for item=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_10093D0B4(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_10093CA20(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

uint64_t View.alertPresenting(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  sub_10010FC20(&qword_1011A94E0);
  sub_100020674(&qword_1011A94E8, &qword_1011A94E0);
  ObservedObject.init(wrappedValue:)();
  v4 = sub_10093D2C0();
  View.viewPresenting<A, B>(_:modifier:)(a1, v4, a2);
}

unint64_t sub_10093D2C0()
{
  result = qword_1011A94F0;
  if (!qword_1011A94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A94F0);
  }

  return result;
}

uint64_t sub_10093D340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011A9520);
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v46 - v5;
  v61 = sub_10010FC20(&qword_1011A9528);
  __chkstk_darwin(v61);
  v62 = &v46 - v6;
  v7 = sub_10010FC20(&qword_1011A9530);
  v57 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = sub_10010FC20(&qword_1011A9538);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v46 - v11;
  v12 = (a1 + *(*a1 + 96));
  swift_beginAccess();
  v13 = v12[3];
  v84 = v12[2];
  v85 = v13;
  v86 = *(v12 + 8);
  v14 = v12[1];
  v83[0] = *v12;
  v83[1] = v14;
  if (!*(&v85 + 1))
  {
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  v52 = v7;
  v53 = v10;
  v54 = v9;
  v55 = v4;
  v56 = a2;
  v15 = v84;
  v16 = v83[0];
  v77 = v83[0];
  *v80 = *(v12 + 33);
  v17 = v12[3];
  v75[2] = v12[2];
  v75[3] = v17;
  v18 = *v12;
  v78 = v12[1];
  v79 = v84;
  *&v80[15] = *(v12 + 6);
  v81 = *(&v85 + 1);
  v82 = v86;
  v76 = *(v12 + 8);
  v75[0] = v18;
  v75[1] = v78;
  sub_10053A574(v75, &v67);
  v19 = static Color.clear.getter();
  if (*(&v16 + 1))
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (*(&v16 + 1))
  {
    v21 = *(&v16 + 1);
  }

  v50 = v21;
  v51 = v19;
  v65 = v21;
  v66 = v19;
  v64 = v20;

  sub_10010FC20(&qword_1011A94E0);
  sub_100020674(&qword_1011A94E8, &qword_1011A94E0);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  if (v15)
  {
    v60 = &v46;
    LODWORD(v58) = v69;
    __chkstk_darwin(v22);
    __chkstk_darwin(v23);
    v24 = sub_10010FC20(&qword_1011A9540);
    v25 = sub_10010FC20(&qword_1011A9548);
    v47 = sub_10000988C();
    v48 = sub_10093E868();
    v49 = sub_10093E95C();
    v26 = v59;
    View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

    v27 = v57;
    v28 = v52;
    (*(v57 + 16))(v62, v26, v52);
    swift_storeEnumTagMultiPayload();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v24;
    v70 = v25;
    v29 = v24;
    v30 = v47;
    v31 = v48;
    v71 = &protocol witness table for Color;
    v72 = v47;
    v32 = v49;
    v73 = v48;
    v74 = v49;
    swift_getOpaqueTypeConformance2();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v29;
    v70 = v25;
    v71 = &protocol witness table for Color;
    v72 = v30;
    v73 = v31;
    v74 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v63;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v83, &qword_1011A9570);
    (*(v27 + 8))(v59, v28);
  }

  else
  {
    v59 = &v46;
    LODWORD(v57) = v69;
    __chkstk_darwin(v22);
    __chkstk_darwin(v35);
    v36 = sub_10010FC20(&qword_1011A9540);
    v37 = sub_10010FC20(&qword_1011A9548);
    v47 = sub_10000988C();
    v48 = sub_10093E868();
    v49 = sub_10093E95C();
    v38 = v37;
    v39 = v60;
    View.alert<A, B, C>(_:isPresented:actions:message:)();

    v40 = v58;
    v41 = v55;
    (*(v58 + 16))(v62, v39, v55);
    swift_storeEnumTagMultiPayload();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v36;
    v70 = v38;
    v42 = v47;
    v43 = v48;
    v71 = &protocol witness table for Color;
    v72 = v47;
    v44 = v49;
    v73 = v48;
    v74 = v49;
    swift_getOpaqueTypeConformance2();
    v67 = &type metadata for Color;
    v68 = &type metadata for String;
    v69 = v36;
    v70 = v38;
    v71 = &protocol witness table for Color;
    v72 = v42;
    v73 = v43;
    v74 = v44;
    swift_getOpaqueTypeConformance2();
    v33 = v63;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v83, &qword_1011A9570);
    (*(v40 + 8))(v60, v41);
  }

  v45 = v56;
  sub_1000B8834(v33, v56);
  return (*(v53 + 56))(v45, 0, 1, v54);
}

uint64_t sub_10093DCE8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10093DD80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10093DE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[9] = *(a1 + 56);
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v6;

  sub_10053A574(a1, v13);
  sub_10010FC20(&qword_1011A9578);
  sub_10010FC20(&qword_1011A9580);
  sub_10093EA54();
  v10 = sub_1001109D0(&qword_1011A9558);
  v11 = sub_100020674(&qword_1011A9560, &qword_1011A9558);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10093DFAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_10000988C();

    result = Text.init<A>(_:)();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_10093E030@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = sub_10010FC20(&qword_1011A95A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10010FC20(&qword_1011A8340);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_10010FC20(&qword_1011A9558);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v33 = a2[1];
  v31 = a2[1];
  v16 = *(a2 + 32);
  if (v16 == 2)
  {
    v17 = type metadata accessor for ButtonRole();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  else
  {

    if (v16)
    {
      static ButtonRole.destructive.getter();
    }

    else
    {
      static ButtonRole.cancel.getter();
    }

    v18 = type metadata accessor for ButtonRole();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  v32 = *a2;
  v19 = *(a2 + 5);
  v20 = swift_allocObject();
  v21 = a2[1];
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = a2[2];
  v22 = *a3;
  *(v20 + 88) = *(a3 + 16);
  v23 = *(a3 + 48);
  *(v20 + 104) = *(a3 + 32);
  *(v20 + 120) = v23;
  *(v20 + 64) = *(a2 + 6);
  *(v20 + 136) = *(a3 + 64);
  *(v20 + 72) = v22;
  sub_100118E9C(&v33, v30);
  sub_100118E9C(&v32, v30);
  sub_100030444(v19);
  sub_10053A574(a3, v30);
  sub_10000988C();
  Button<>.init<A>(_:role:action:)();
  v24 = 1;
  if ((*(a3 + 48) & 1) == 0 && *(a3 + 40) == v28)
  {
    static KeyboardShortcut.defaultAction.getter();
    v24 = 0;
  }

  v25 = type metadata accessor for KeyboardShortcut();
  (*(*(v25 - 8) + 56))(v8, v24, 1, v25);
  sub_100020674(&qword_1011A9560, &qword_1011A9558);
  View.keyboardShortcut(_:)();
  sub_1000095E8(v8, &qword_1011A95A0);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10093E3FC(__int128 *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5 - 8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a1;
  v18 = a1[1];
  v19 = v8;
  v9 = *(a1 + 5);
  type metadata accessor for MainActor();
  sub_100118E9C(&v19, v17);
  sub_100118E9C(&v18, v17);
  sub_100030444(v9);
  sub_10053A574(a2, v17);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = *(a2 + 16);
  v14 = *(a2 + 48);
  *(v11 + 120) = *(a2 + 32);
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 64);
  *(v11 + 88) = v13;
  sub_100969440(0, 0, v6, &unk_100EF0618, v11);
}

uint64_t sub_10093E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = type metadata accessor for MainActor();
  *(v5 + 96) = static MainActor.shared.getter();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_1001AEF9C;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001AF0E0, v13, v12);
  }
}

uint64_t sub_10093E728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a2 + *(sub_10010FC20(&qword_1011A9508) + 36);
  sub_10093D340(v5, v9);
  v10 = (v9 + *(sub_10010FC20(&qword_1011A9510) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_10010FC20(&qword_1011A9518);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_10093E868()
{
  result = qword_1011A9550;
  if (!qword_1011A9550)
  {
    sub_1001109D0(&qword_1011A9540);
    sub_1001109D0(&qword_1011A9558);
    sub_100020674(&qword_1011A9560, &qword_1011A9558);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9550);
  }

  return result;
}

unint64_t sub_10093E95C()
{
  result = qword_1011A9568;
  if (!qword_1011A9568)
  {
    sub_1001109D0(&qword_1011A9548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9568);
  }

  return result;
}

unint64_t sub_10093EA54()
{
  result = qword_1011A9588;
  if (!qword_1011A9588)
  {
    sub_1001109D0(&qword_1011A9578);
    sub_100020674(&qword_1011A9590, &qword_1011A9598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9588);
  }

  return result;
}

uint64_t sub_10093EB10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10093E59C(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_10093EBC4()
{

  return swift_deallocObject();
}

uint64_t sub_10093EC14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t sub_10093EC6C()
{
  result = qword_1011A95A8;
  if (!qword_1011A95A8)
  {
    sub_1001109D0(&qword_1011A9508);
    sub_100020674(&qword_1011A95B0, &qword_1011A9518);
    sub_100020674(&qword_1011A95B8, &qword_1011A9510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95A8);
  }

  return result;
}

uint64_t sub_10093ED70(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6 - 8];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *a2;
  v19 = a2[1];
  v20 = v9;
  v10 = *(a2 + 5);
  type metadata accessor for MainActor();
  sub_100118E9C(&v20, v18);
  sub_100118E9C(&v19, v18);
  sub_100030444(v10);
  sub_10053A574(a3, v18);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = *(a3 + 16);
  v15 = *(a3 + 48);
  *(v12 + 120) = *(a3 + 32);
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 64);
  *(v12 + 88) = v14;
  sub_100969440(0, 0, v7, &unk_100EF0688, v12);
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v43 = a7;
  v44 = a8;
  v45 = type metadata accessor for URL();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v45);
  v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &v41 - v18;
  v19 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1009AC87C(a1, a2, a3, a4, a5, a6, v43, v44, v24, a9 & 1);
    sub_10093F768(v24, v21);
    v25 = v45;
    if ((*(v15 + 48))(v21, 1, v45) == 1)
    {
      sub_100028B08(v24);
      v26 = v21;
    }

    else
    {
      v27 = *(v15 + 32);
      v28 = v42;
      v27();
      v29 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v30);
      v32 = v31;
      v33 = [v29 canOpenURL:v31];

      if (v33)
      {
        v34 = v41;
        (*(v15 + 16))(v41, v28, v25);
        v35 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v36 = swift_allocObject();
        (v27)(v36 + v35, v34, v25);
        v37 = String._bridgeToObjectiveC()();
        aBlock[4] = sub_10093F7D8;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010D0928;
        v38 = _Block_copy(aBlock);

        v39 = [swift_getObjCClassFromMetadata() actionWithTitle:v37 style:0 handler:v38];
        _Block_release(v38);

        (*(v15 + 8))(v28, v25);
        sub_100028B08(v24);
        return v39;
      }

      (*(v15 + 8))(v28, v25);
      v26 = v24;
    }

    sub_100028B08(v26);
  }

  return 0;
}

void sub_10093F330()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_10093F848();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id sub_10093F41C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 8))
  {
    v5 = String._bridgeToObjectiveC()();
    if (*(a1 + 24))
    {
LABEL_5:
      v6 = String._bridgeToObjectiveC()();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 24))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 56);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = *(a1 + 16);
      v21 = *(a1 + 48);
      *(v19 + 104) = *(a1 + 32);
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 64);
      *(v19 + 72) = v20;

      sub_100030444(v11);

      sub_100030444(v11);
      sub_10053A574(a1, aBlock);
      v24 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_10093F8A0;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10027D328;
      aBlock[3] = &unk_1010D0978;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (*(a1 + 48))
      {

        sub_100020438(v11);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 40))
        {
          [v29 setPreferredAction:v26];

          sub_100020438(v23);
        }

        else
        {

          sub_100020438(v23);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_10093F768(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A77F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10093F7D8()
{
  type metadata accessor for URL();

  sub_10093F330();
}

unint64_t sub_10093F848()
{
  result = qword_1011A79E0;
  if (!qword_1011A79E0)
  {
    _s3__C25OpenExternalURLOptionsKeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A79E0);
  }

  return result;
}

uint64_t sub_10093F8AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10093E59C(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v20 = v22;
  *(a8 + 40) = a6;
  *(a8 + 48) = v20;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_10002F3F4;

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_10093FC38()
{
  result = qword_1011A95C0;
  if (!qword_1011A95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95C0);
  }

  return result;
}

unint64_t sub_10093FC90()
{
  result = qword_1011A95C8;
  if (!qword_1011A95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A95C8);
  }

  return result;
}

uint64_t sub_10093FD04(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_10093FD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v40 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v15 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  *(v15 + 4) = *(a1 + 64);
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  sub_100940ABC(a1, v44);
  v43.receiver = v4;
  v43.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v43, "initWithNibName:bundle:", 0, 0);
  v19 = String._bridgeToObjectiveC()();
  [v18 setTitle:v19];

  if (*(a1 + 40))
  {

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v18 setMessage:{v20, v40, v41}];

  v21 = v18;
  [v21 setPreferredStyle:1];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = *a1;
  *(v23 + 40) = *(a1 + 16);
  v25 = *(a1 + 48);
  *(v23 + 56) = *(a1 + 32);
  *(v23 + 72) = v25;
  *(v23 + 88) = *(a1 + 64);
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  aBlock[4] = sub_100940AF4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010D0CE0;
  v26 = _Block_copy(aBlock);
  sub_100940ABC(a1, v44);

  [v21 addTextFieldWithConfigurationHandler:v26];
  _Block_release(v26);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v9 + 16))(v11, v14, v8);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v27 = qword_101219808;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v9 + 8))(v14, v8);
  v28 = String._bridgeToObjectiveC()();

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v28 style:1 handler:0];

  [v21 addAction:v30];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = swift_allocObject();
  v33 = v40;
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v41;

  v34 = String._bridgeToObjectiveC()();
  v44[4] = sub_100940B00;
  v44[5] = v32;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 1107296256;
  v44[2] = sub_10027D328;
  v44[3] = &unk_1010D0D30;
  v35 = _Block_copy(v44);

  v36 = [v29 actionWithTitle:v34 style:0 handler:v35];
  _Block_release(v35);

  sub_100940B0C(a1);
  [v36 setEnabled:0];
  v37 = *&v21[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction];
  *&v21[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = v36;
  v38 = v36;

  [v21 addAction:v38];
  [v21 setPreferredAction:v38];

  return v21;
}

void sub_100940330(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v9 = String._bridgeToObjectiveC()();
    sub_10089840C(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [a1 setPlaceholder:v10];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v6];
}

void sub_10094046C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_100940B3C();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_10094060C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = objc_allocWithZone(NSString);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = String.trim()();

  v17 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v16._object & 0x2000000000000000) != 0)
  {
    v17 = (v16._object >> 56) & 0xF;
  }

  v18 = v17 != 0;
  v19 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v19 == 1)
  {

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  if (v19)
  {
    if (v13 == *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v19 == v15)
    {
LABEL_11:

      v18 = 0;
      goto LABEL_14;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v20 ^ 1;
  }

  else
  {

    v18 = 1;
  }

LABEL_14:
  v21 = *(v3 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v21)
  {
    [v21 setEnabled:v18 & 1];
  }

  return 1;
}

uint64_t sub_1009409D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1009409F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100940A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100940A58(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100940B3C()
{
  result = qword_1011A9668[0];
  if (!qword_1011A9668[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1011A9668);
  }

  return result;
}

uint64_t sub_100940B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}