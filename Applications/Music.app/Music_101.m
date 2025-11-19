uint64_t initializeBufferWithCopyOfBuffer for Artwork.Size.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100AFE950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t a1)
{
  sub_100B03528(a1);
  v4 = *a1;
  sub_1000095E8(&v4, &qword_1011B1178);
  v3 = *(a1 + 8);
  sub_1000095E8(&v3, &qword_1011B1178);
  v2 = *(a1 + 16);
  sub_1000095E8(&v2, &qword_1011B1180);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_100AFEB58()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_1011B11A0 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    swift_once();
  }

  v5 = qword_1011B11A0;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_100EFDB30;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

uint64_t Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v20 = v3[1];
  v21 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v18 = 0;
  v19 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100B036B4;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010E1790;
  v11 = _Block_copy(aBlock);
  sub_1000089F8(&v21, v16, &qword_1011B1178);
  sub_1000089F8(&v20, v16, &qword_1011B1178);
  sub_1000089F8(&v19, v16, &qword_1011B1180);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

void sub_100AFEF58(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      CGRect.centeringAlong(axes:bounds:scale:)();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_1000089F8(&v18, v19, &qword_1011B1178);
  sub_1000089F8(&v17, v19, &qword_1011B1178);
  sub_1000089F8(&v16, v19, &qword_1011B1180);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_10004DF5C(v19);
  sub_1000095E8(&v18, &qword_1011B1178);
  sub_1000095E8(&v17, &qword_1011B1178);
  sub_1000095E8(&v16, &qword_1011B1180);

  return v13;
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_100AFF648;
}

void sub_100AFF648(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 392) = *(v2 + 18);
    v8 = *(v2 + 39);
    *(v2 + 51) = *(v2 + 38);
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    *(v2 + 46) = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_1000089F8((v2 + 392), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 400), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 408), (v2 + 456), &qword_1011B1180);
    v15 = v8;
    sub_1000089F8((v2 + 392), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 400), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 408), (v2 + 456), &qword_1011B1180);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 288), v2))
    {
      *(v2 + 30) = v11;
      *(v2 + 31) = v12;
      *(v2 + 32) = v13;
      *(v2 + 33) = v36;
      *(v2 + 34) = v35;
      *(v2 + 35) = v34;
      sub_10004DF5C((v2 + 240));
    }

    sub_1000095E8((v2 + 368), &qword_1011B1178);
    *(v2 + 47) = *(v2 + 1);
    sub_1000095E8((v2 + 376), &qword_1011B1178);
    v17 = *(v2 + 3);
    *(v2 + 48) = *(v2 + 2);
    sub_1000095E8((v2 + 384), &qword_1011B1180);

    sub_1000095E8((v2 + 392), &qword_1011B1178);
    sub_1000095E8((v2 + 400), &qword_1011B1178);
    sub_1000095E8((v2 + 408), &qword_1011B1180);

    v18 = *(v2 + 6);
    v19 = *(v2 + 7);
    v20 = *(v2 + 8);
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    *(v2 + 54) = *(v2 + 24);
    v31 = *(v2 + 21);
    *(v2 + 45) = *(v2 + 20);
    *(v2 + 440) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_1000089F8((v2 + 440), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 448), (v2 + 456), &qword_1011B1178);
    sub_1000089F8((v2 + 360), (v2 + 456), &qword_1011B1180);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 144), (v2 + 192)))
    {
      *(v2 + 12) = v37;
      *(v2 + 13) = v26;
      *(v2 + 14) = v27;
      *(v2 + 15) = v28;
      *(v2 + 16) = v29;
      *(v2 + 17) = v30;
      sub_10004DF5C((v2 + 96));
    }

    sub_1000095E8((v2 + 432), &qword_1011B1178);
    *(v2 + 53) = *(v2 + 25);
    sub_1000095E8((v2 + 424), &qword_1011B1178);
    v33 = *(v2 + 27);
    *(v2 + 52) = *(v2 + 26);
    sub_1000095E8((v2 + 416), &qword_1011B1180);

    sub_1000095E8((v2 + 440), &qword_1011B1178);
    sub_1000095E8((v2 + 448), &qword_1011B1178);
    sub_1000095E8((v2 + 360), &qword_1011B1180);
  }

  free(v2);
}

id sub_100AFFAAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void sub_100AFFB38(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  sub_100B03528(&v2);
  v5 = v2;
  sub_1000095E8(&v5, &qword_1011B1178);
  v6 = *(&v2 + 1);
  sub_1000095E8(&v6, &qword_1011B1178);
  v7 = v3;
  sub_1000095E8(&v7, &qword_1011B1180);
}

void (*sub_100AFFBDC(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return sub_100260668;
}

id sub_100AFFC4C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = sub_100B03C68();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t sub_100AFFD08(uint64_t a1)
{
  sub_100008FE4(a1, v6);
  sub_10010FC20(&qword_1011B1140);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_100B03528(&v7);
  v10 = v7;
  sub_1000095E8(&v10, &qword_1011B1178);
  v11 = *(&v7 + 1);
  sub_1000095E8(&v11, &qword_1011B1178);
  v12 = v8;
  sub_1000095E8(&v12, &qword_1011B1180);

  return sub_10000959C(a1);
}

void (*sub_100AFFDFC(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = sub_100B03C68();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return sub_100AFFEF8;
}

void sub_100AFFEF8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100008FE4(v2 + 144, v2 + 184);
    sub_100008FE4(v2 + 184, v2 + 224);
    sub_10010FC20(&qword_1011B1140);
    swift_dynamicCast();
    v3 = *(v2 + 7);
    *v2 = *(v2 + 6);
    *(v2 + 1) = v3;
    *(v2 + 2) = *(v2 + 8);
    sub_100B03528(v2);
    *(v2 + 41) = *v2;
    sub_1000095E8(v2 + 328, &qword_1011B1178);
    *(v2 + 40) = *(v2 + 1);
    sub_1000095E8(v2 + 320, &qword_1011B1178);
    *(v2 + 39) = *(v2 + 2);
    sub_1000095E8(v2 + 312, &qword_1011B1180);

    sub_10000959C(v2 + 184);
  }

  else
  {
    sub_100008FE4(v2 + 144, v2 + 184);
    sub_10010FC20(&qword_1011B1140);
    swift_dynamicCast();
    v4 = *(v2 + 7);
    *(v2 + 3) = *(v2 + 6);
    *(v2 + 4) = v4;
    *(v2 + 5) = *(v2 + 8);
    sub_100B03528(v2 + 48);
    *(v2 + 38) = *(v2 + 6);
    sub_1000095E8(v2 + 304, &qword_1011B1178);
    *(v2 + 37) = *(v2 + 7);
    sub_1000095E8(v2 + 296, &qword_1011B1178);
    *(v2 + 36) = *(v2 + 8);
    sub_1000095E8(v2 + 288, &qword_1011B1180);
  }

  sub_10000959C(v2 + 144);

  free(v2);
}

char *sub_100B000DC()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v9[2] = v0[2];
  v10 = v9[0];
  v2 = *(&v1 + 1);
  v11 = v1;
  v3 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  sub_1000089F8(&v10, v8, &qword_1011B1178);
  sub_1000089F8(&v10 + 8, v8, &qword_1011B1178);
  sub_1000089F8(&v11, v8, &qword_1011B1180);
  v4 = v2;
  v5 = Artwork.Placeholder.View.init(configuration:)(v9);
  sub_100B03CCC(&qword_1011B1218, v6, type metadata accessor for Artwork.Placeholder.View);
  return v5;
}

id sub_100B001D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL sub_100B0023C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

double sub_100B00284()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_10121B3B0 = v4;
  qword_10121B3B8 = v6;
  unk_10121B3C0 = v7;
  result = 0.46;
  xmmword_10121B3C8 = xmmword_100EFDB40;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (qword_1011B0458 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0458 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_10121B3B0;
  v4 = qword_10121B3B8;
  v3 = unk_10121B3C0;
  v10 = unk_10121B3C0;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B3C8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0460 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_10121B3E0;
  v4 = qword_10121B3E8;
  v3 = unk_10121B3F0;
  v10 = unk_10121B3F0;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B3F8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = qword_1011B0450;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_1011B11A0;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  sub_100009F78(0, &qword_1011B4940);
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

id sub_100B007D4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.music = v3;
  unk_10121B410 = qword_1011B11A0;
  qword_10121B418 = v1;
  unk_10121B420 = v2;
  xmmword_10121B428 = xmmword_100EFDB50;

  return v4;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (qword_1011B0468 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0468 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_10121B410;
  v4 = qword_10121B418;
  v3 = unk_10121B420;
  v10 = unk_10121B420;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B428;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B009E4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.musicVideo = v3;
  unk_10121B440 = qword_1011B11A0;
  qword_10121B448 = v1;
  unk_10121B450 = v2;
  xmmword_10121B458 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (qword_1011B0470 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0470 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_10121B440;
  v4 = qword_10121B448;
  v3 = unk_10121B450;
  v10 = unk_10121B450;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B458;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B00C04()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.tv = v3;
  unk_10121B470 = qword_1011B11A0;
  qword_10121B478 = v1;
  unk_10121B480 = v2;
  xmmword_10121B488 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (qword_1011B0478 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0478 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_10121B470;
  v4 = qword_10121B478;
  v3 = unk_10121B480;
  v10 = unk_10121B480;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B488;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B00E0C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.microphone = v3;
  unk_10121B4A0 = qword_1011B11A0;
  qword_10121B4A8 = v1;
  unk_10121B4B0 = v2;
  xmmword_10121B4B8 = xmmword_100EFDB40;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (qword_1011B0480 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0480 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_10121B4A0;
  v4 = qword_10121B4A8;
  v3 = unk_10121B4B0;
  v10 = unk_10121B4B0;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B4B8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B01024()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.person = v3;
  unk_10121B4D0 = qword_1011B11A0;
  qword_10121B4D8 = v1;
  unk_10121B4E0 = v2;
  xmmword_10121B4E8 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (qword_1011B0488 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0488 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_10121B4D0;
  v4 = qword_10121B4D8;
  v3 = unk_10121B4E0;
  v10 = unk_10121B4E0;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B4E8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_100B01240()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_10121B500 = 0;
  qword_10121B508 = v1;
  unk_10121B510 = v2;
  result = 0.5;
  xmmword_10121B518 = xmmword_100EFDB30;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (qword_1011B0490 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0490 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_10121B500;
  v4 = qword_10121B508;
  v3 = unk_10121B510;
  v10 = unk_10121B510;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B518;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011B11C8);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for Playlist.Variant();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, enum case for Playlist.Variant.regular(_:), v7);
    if (v11(v6, 1, v7) != 1)
    {
      sub_1000095E8(v6, &qword_1011B11C8);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = sub_100B036C0(v10, v15);
  (*(v8 + 8))(v10, v7, v12);
  v13 = v15[1];
  *a2 = v15[0];
  a2[1] = v13;
  result = *&v16;
  a2[2] = v16;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100B036C0(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_100B01624()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.radio = v3;
  unk_10121B530 = qword_1011B11A0;
  qword_10121B538 = v1;
  unk_10121B540 = v2;
  xmmword_10121B548 = xmmword_100EFDB50;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (qword_1011B0498 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0498 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_10121B530;
  v4 = qword_10121B538;
  v3 = unk_10121B540;
  v10 = unk_10121B540;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B548;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    sub_100009F78(0, &qword_1011B4940);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      if (qword_1011B04A0 != -1)
      {
        swift_once();
      }

      v14 = qword_1011B11A8;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      if (qword_1011B04A8 != -1)
      {
        swift_once();
      }

      v14 = qword_1011B11B0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id sub_100B01B88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  sub_100009F78(0, &qword_1011B4940);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double sub_100B01D5C()
{
  sub_10010FC20(&qword_1011B5F90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6B0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBC6B0;
      *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v7 + 40) = v8;
      v9 = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    [v0 type];

    return sub_100B03A18();
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() _systemImageNamed:v2];

    return v3;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011B11C8);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v5 = type metadata accessor for Playlist.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if ([v12 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v13 type], v4);
        v14 = *(v6 + 48);
        if (v14(v4, 1, v5) == 1)
        {
          (*(v6 + 104))(v8, enum case for Playlist.Variant.regular(_:), v5);
          if (v14(v4, 1, v5) != 1)
          {
            sub_1000095E8(v4, &qword_1011B11C8);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
        }

        v16 = sub_100B036C0(v8, v27);
        (*(v6 + 8))(v8, v5, v16);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_1011B0480 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1011B0488 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_1011B0478 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (qword_1011B0468 != -1)
    {
      swift_once();
    }

    v15 = &static Artwork.Placeholder.music;
LABEL_32:
    v21 = *v15;
    v22 = v15[1];
    v20 = v15[2];
    v23 = v15[3];
    v17 = v15[4];
    v18 = v15[5];
    v24 = v20;
    v19 = v23;
    v25 = v21;
    v26 = v22;
    goto LABEL_33;
  }

  v10 = [v9 anyObject];
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v10;
  MPModelObject.artworkPlaceholder.getter(v27);

LABEL_17:
  v17 = v27[4];
  v18 = v27[5];
  v20 = v27[2];
  v19 = v27[3];
  v21 = v27[0];
  v22 = v27[1];
LABEL_33:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v17;
  a1[5] = v18;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  v95 = type metadata accessor for Station();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for MusicMovie();
  v93 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TVSeason();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TVEpisode();
  v99 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TVShow();
  v102 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Playlist.Folder();
  v106 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011B11C8);
  __chkstk_darwin(v9 - 8);
  v111 = &v91 - v10;
  v119 = type metadata accessor for Playlist.Variant();
  v118 = *(v119 - 8);
  v11 = __chkstk_darwin(v119);
  v105 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v91 - v13;
  v117 = type metadata accessor for Playlist();
  v109 = *(v117 - 8);
  v14 = __chkstk_darwin(v117);
  v116 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v91 - v16;
  v122 = type metadata accessor for MusicVideo();
  v115 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SocialProfile();
  v120 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Curator();
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Composer();
  v126 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RecordLabel();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v34;
  (*(v34 + 16))(v33, v129, a1);
  if (swift_dynamicCast())
  {
    (*(v28 + 8))(v31, v27);
    v35 = a1;
LABEL_5:
    (*(v131 + 8))(v33, v35);
    if (qword_1011B0480 != -1)
    {
      swift_once();
    }

    v36 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v35 = a1;
  if (swift_dynamicCast())
  {
    (*(v24 + 8))(v26, v23);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v126 + 8))(v22, v20);
  }

  else
  {
    v38 = v127;
    v37 = v128;
    if (swift_dynamicCast())
    {
      v39 = v123;
    }

    else
    {
      v38 = v124;
      v37 = v125;
      if (!swift_dynamicCast())
      {
        v51 = v121;
        v50 = v122;
        if (swift_dynamicCast())
        {
          v52 = v33;
          if (qword_1011B0470 != -1)
          {
            swift_once();
          }

          v40 = static Artwork.Placeholder.musicVideo;
          v41 = unk_10121B440;
          v43 = qword_10121B448;
          v53 = unk_10121B450;
          v129 = xmmword_10121B458;
          v54 = *(v115 + 8);
          v55 = static Artwork.Placeholder.musicVideo;
          v56 = v41;
          v57 = v43;
          v45 = v53;
          v54(v51, v50);
          result = (*(v131 + 8))(v52, v35);
          goto LABEL_19;
        }

        v58 = v114;
        v59 = v117;
        if (swift_dynamicCast())
        {
          v60 = v109;
          (*(v109 + 32))(v116, v58, v59);
          v61 = v111;
          Playlist.variant.getter();
          v62 = v118;
          v63 = *(v118 + 48);
          v64 = v119;
          if (v63(v61, 1, v119) == 1)
          {
            v65 = v110;
            (*(v62 + 104))(v110, enum case for Playlist.Variant.regular(_:), v64);
            if (v63(v61, 1, v64) != 1)
            {
              sub_1000095E8(v61, &qword_1011B11C8);
            }
          }

          else
          {
            v65 = v110;
            (*(v62 + 32))(v110, v61, v64);
          }

          v73 = sub_100B036C0(v65, v133);
          (*(v62 + 8))(v65, v64, v73);
          (*(v60 + 8))(v116, v59);
        }

        else
        {
          v66 = v112;
          v67 = v113;
          v68 = swift_dynamicCast();
          v69 = v119;
          v70 = v118;
          if (!v68)
          {
            v74 = v107;
            v75 = v108;
            if (swift_dynamicCast())
            {
              v76 = v133;
            }

            else
            {
              v74 = v103;
              v75 = v104;
              if (swift_dynamicCast())
              {
                v76 = &v130;
              }

              else
              {
                v74 = v100;
                v75 = v101;
                if (swift_dynamicCast())
                {
                  v76 = &v128;
                }

                else
                {
                  v74 = v97;
                  v75 = v98;
                  if (!swift_dynamicCast())
                  {
                    v77 = v94;
                    v78 = v95;
                    if (swift_dynamicCast())
                    {
                      v79 = v33;
                      if (qword_1011B0498 != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.radio;
                      v41 = unk_10121B530;
                      v43 = qword_10121B538;
                      v80 = unk_10121B540;
                      v129 = xmmword_10121B548;
                      v81 = *(v92 + 8);
                      v82 = static Artwork.Placeholder.radio;
                      v83 = v41;
                      v84 = v43;
                      v45 = v80;
                      v81(v77, v78);
                      result = (*(v131 + 8))(v79, v35);
                    }

                    else
                    {
                      v85 = v33;
                      if (qword_1011B0468 != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.music;
                      v41 = unk_10121B410;
                      v43 = qword_10121B418;
                      v86 = unk_10121B420;
                      v129 = xmmword_10121B428;
                      v87 = *(v131 + 8);
                      v88 = static Artwork.Placeholder.music;
                      v89 = v41;
                      v90 = v43;
                      v45 = v86;
                      result = v87(v85, v35);
                    }

                    goto LABEL_19;
                  }

                  v76 = &v125;
                }
              }
            }

            (*(*(v76 - 32) + 8))(v74, v75);
            (*(v131 + 8))(v33, v35);
            if (qword_1011B0478 != -1)
            {
              swift_once();
            }

            v36 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v71 = v105;
          (*(v118 + 104))(v105, enum case for Playlist.Variant.folder(_:), v119);
          v72 = sub_100B036C0(v71, v133);
          (*(v70 + 8))(v71, v69, v72);
          (*(v106 + 8))(v66, v67);
        }

        result = (*(v131 + 8))(v33, v35);
        v48 = v134;
        v43 = v133[2];
        v45 = v133[3];
        v40 = v133[0];
        v41 = v133[1];
        goto LABEL_20;
      }

      v39 = v120;
    }

    (*(v39 + 8))(v38, v37);
  }

  (*(v131 + 8))(v33, v35);
  if (qword_1011B0488 != -1)
  {
    swift_once();
  }

  v36 = &static Artwork.Placeholder.person;
LABEL_18:
  v40 = *v36;
  v41 = v36[1];
  v43 = v36[2];
  v42 = v36[3];
  v129 = *(v36 + 2);
  v44 = v43;
  v45 = v42;
  v46 = v40;
  result = v41;
LABEL_19:
  v48 = v129;
LABEL_20:
  v49 = v132;
  *v132 = v40;
  v49[1] = v41;
  v49[2] = v43;
  v49[3] = v45;
  *(v49 + 2) = v48;
  return result;
}

void sub_100B03528(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = *(a1 + 8);
  v18 = v8;
  v9 = *(a1 + 24);
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = *(a1 + 16);
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 32);
  sub_1000089F8(&v18, v19, &qword_1011B1178);
  sub_1000089F8(&v17, v19, &qword_1011B1178);
  sub_1000089F8(&v16, v19, &qword_1011B1180);
  v13 = v9;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    sub_10004DF5C(v19);
  }

  sub_1000095E8(&v25, &qword_1011B1178);
  v24 = *(&v20 + 1);
  sub_1000095E8(&v24, &qword_1011B1178);
  v14 = *(&v21 + 1);
  v23 = v21;
  sub_1000095E8(&v23, &qword_1011B1180);
}

double sub_100B036C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4);
  sub_100B03CCC(&qword_1011B1288, 255, &type metadata accessor for Playlist.Variant);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (qword_1011B0450 != -1)
    {
      swift_once();
    }

    v13 = qword_1011B11A0;
    v14 = qword_1011B11A0;
  }

  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v8, v4);
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_100EFDB50;
  return result;
}

id sub_100B03A18()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

unint64_t sub_100B03AF0()
{
  result = qword_1011B11D0;
  if (!qword_1011B11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B11D0);
  }

  return result;
}

uint64_t sub_100B03B44(uint64_t a1, uint64_t a2)
{
  result = sub_100B03CCC(&qword_1011B1218, a2, type metadata accessor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B03BE4(uint64_t a1)
{
  *(a1 + 8) = sub_100B03C14();
  result = sub_100B03C68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B03C14()
{
  result = qword_1011B1250;
  if (!qword_1011B1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1250);
  }

  return result;
}

unint64_t sub_100B03C68()
{
  result = qword_1011B1258;
  if (!qword_1011B1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1258);
  }

  return result;
}

uint64_t sub_100B03CCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  sub_100B03E90(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  sub_100B03E90(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t sub_100B03F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100B03FC8()
{

  return swift_deallocClassInstance();
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v6 = qword_10121B340;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &off_1010E0998;
  *(a1 + 96) = 1;

  return v6;
}

uint64_t _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100009F78(0, &unk_1011B7C00);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && (sub_100B6BF90(*(a1 + 72), *(a2 + 72)))
    {
      if (*(a1 + 96))
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_100B0424C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100B04278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  sub_100B03E90(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100B04B98();
  CoreAnimationPackageView.reset()();
  sub_100009F78(0, &unk_1011B7AC0);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10002A428(a1);

  return v8;
}

double sub_100B044E4(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v18[48] = *(v4 + 4);
  v19 = v5;
  v20 = v4[96];
  v6 = *(v4 + 1);
  v17 = *v4;
  *v18 = v6;
  v7 = *(v4 + 3);
  *&v18[16] = *(v4 + 2);
  *&v18[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v17 == *a1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100009F78(0, &unk_1011B7C00);
    sub_100B03E90(&v17, v16);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (v16[0] = *&v18[8], v16[1] = *&v18[24], v16[2] = *&v18[40], v10 = *(a1 + 5), v16[11] = *(a1 + 3), v16[12] = v10, v16[13] = *(a1 + 7), (static CGAffineTransform.== infix(_:_:)()))
    {
      v11 = sub_100B6BF90(*&v18[56], a1[9]);
      sub_10002A428(&v17);
      if (v11)
      {
        if (v20)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v19 == *(a1 + 10))
        {
          result = *(&v19 + 1);
          if (*(&v19 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      sub_10002A428(&v17);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100B04B98();
  }

  v14 = *(v4 + 40);
  v16[14] = *(v4 + 24);
  v16[15] = v14;
  v16[16] = *(v4 + 56);
  v15 = *(a1 + 5);
  v16[8] = *(a1 + 3);
  v16[9] = v15;
  v16[10] = *(a1 + 7);
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100B03E90(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_100B03E90(v12, v11);
  sub_100B03E90(a1, v11);
  sub_10002A428(v18);
  sub_100B044E4(v12);
  sub_10002A428(v12);
  return sub_10002A428(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_100B03E90(v4, v4 + 416);
  return sub_100B0495C;
}

void sub_100B0495C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_100B03E90(v2 + 624, v2 + 728);
    sub_100B03E90(v2 + 624, v2 + 728);
    sub_100B03E90(v2 + 104, v2 + 728);
    sub_10002A428(v4);
    sub_100B044E4((v2 + 104));
    sub_10002A428(v2 + 104);
    sub_10002A428(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_100B03E90(v2 + 208, v2 + 624);
    sub_100B03E90(v4, v2 + 624);
    sub_10002A428(v2 + 416);
    sub_100B044E4((v2 + 208));
    sub_10002A428(v2 + 208);
    v28 = v4;
  }

  sub_10002A428(v28);

  free(v2);
}

void sub_100B04B98()
{
  v1 = v0;
  sub_100009F78(0, &qword_1011B1410);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  sub_100B03E90(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    CGRect.center.getter();
    [v30 setPosition:?];
    sub_100B06030();
  }

  else
  {
    sub_100B06C10();
    v35 = swift_allocError();
    swift_willThrow();

    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_10121B560);
    v8 = v1;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      sub_100B03E90(v45, v36);
      v20 = String.init<A>(describing:)();
      v22 = sub_100010744(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      sub_10010FC20(&qword_1011B62D0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100010744(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100B05000(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_100B05000(v6, v7);
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_100B05318;
}

void sub_100B05318(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_100B05000(v9, v8);
  }

  else
  {
    sub_100B05000(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_100009F78(0, &qword_1011B4940);
      a1 = a1;
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_100B06030();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100B05570;
}

void sub_100B05570(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_100009F78(0, &qword_1011B4940);
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_100B06030();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  sub_100B05000(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_100B064D0(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100009F78(0, &qword_1011B13D8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = String._bridgeToObjectiveC()();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    sub_100B06B48(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_100B05000(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_100B06C08;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10027D328;
    v12[3] = &unk_1010E1A40;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_100B05CE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    CGRect.center.getter();
    [v1 setPosition:?];
  }
}

void sub_100B06030()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000DD18(v10, v31);
          sub_10000DD18(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009F78(0, &qword_1011B13D8);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_100011EC0(v30);
            }
          }

          ++v9;
          sub_10000959C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100B064D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011B5F90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100B065A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011B1408);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100B0674C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000DD18(v10, v31);
          sub_10000DD18(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009F78(0, &qword_1011B13D8);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_100011EC0(v30);
            }
          }

          ++v9;
          sub_10000959C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void sub_100B06A8C()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100B06B48(unint64_t result, uint64_t a2)
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

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
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

    v4 = sub_100BF9974(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10099CEBC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100B06C10()
{
  result = qword_1011B1418;
  if (!qword_1011B1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1418);
  }

  return result;
}

unint64_t sub_100B06C78()
{
  result = qword_1011B1420;
  if (!qword_1011B1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1420);
  }

  return result;
}

id sub_100B06CCC()
{
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v1 = qword_10121B340;
  static NSBundle.musicCoreUIBundle = qword_10121B340;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_1011B04B8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_1011B04B8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  v6 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v9[13]) = vdupq_n_s64(0x4040000000000000uLL);
  static UIView.Corner.rounded.getter();
  v10 = type metadata accessor for UIView.Corner();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_100B070E4(v8, a1 + v9[9]);
  v11 = a1 + v9[10];
  if (*v11)
  {
    v12 = *&UIEdgeInsetsZero.bottom;
    *(v11 + 8) = *&UIEdgeInsetsZero.top;
    *(v11 + 24) = v12;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100EFDB70;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_100EFDBC0;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v18 = xmmword_100EFDB90;
      }

      else
      {

        v18 = xmmword_100EFDB80;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_100B07154(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
    *(v11 + 48) = 0;
    result = 0.0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v18 = xmmword_100EFDBA0;
LABEL_19:
    *a1 = v18;
    goto LABEL_20;
  }

  v13 = *v11;
  if (*v11 && (type metadata accessor for CircularProgressView(), (v14 = swift_dynamicCastClass()) != 0))
  {
    v15 = v14;
    v16 = v13;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v15 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  sub_100282F24(*(a1 + 200), *(a1 + 208));
  *(a1 + 200) = xmmword_100EBCEE0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_100EFDBB0;
  *(a1 + 56) = 1;
  v21 = UIFontTextStyleFootnote;

  *(a1 + 24) = v21;
  sub_100B07154(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
  *v11 = v15;
  v22 = *&UIEdgeInsetsZero.top;
  *(v11 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v11 + 8) = v22;
  result = 1.0;
  *(v11 + 40) = xmmword_100EBEF40;
  return result;
}

uint64_t sub_100B070E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100B07154(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

uint64_t sub_100B07194()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10121B560);
  sub_1000060E4(v0, qword_10121B560);
  sub_100005B7C();
  OS_os_log.init(musicCategory:)();
  return Logger.init(_:)();
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.boundedBox.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100B07280@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011B55F0);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(a3, v13, v9);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v17 = *(v16 + 20);
    a2();
    (*(v10 + 8))(v13, v9);
    v18 = type metadata accessor for Artwork.CropStyle();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t sub_100B07524@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artist();
  sub_100B07CB4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_1011B55F0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    (*(v6 + 16))(a1, v8, v5);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v6 + 8))(v8, v5);
    v13 = type metadata accessor for Artwork.CropStyle();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_100B07794@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011B55F0);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(a3, v13, v9);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v17 = *(v16 + 20);
    a2();
    v18 = type metadata accessor for Artwork.CropStyle();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    (*(v10 + 8))(v13, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011B55F0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(a3, v12, v9);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v10 + 8))(v12, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t sub_100B07CB4()
{
  sub_10010FC20(&qword_1011B1440);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
}

uint64_t sub_100B07ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Artwork();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B55F0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  Playlist.artwork.getter();
  sub_1000089F8(v11, v9, &unk_1011B55F0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_1000095E8(v11, &unk_1011B55F0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    (*(v3 + 16))(a1, v5, v2);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15 = *(v14 + 20);
    static Artwork.CropStyle.squareCenterCrop.getter();
    (*(v3 + 8))(v5, v2);
    sub_1000095E8(v11, &unk_1011B55F0);
    v16 = type metadata accessor for Artwork.CropStyle();
    (*(*(v16 - 8) + 56))(a1 + v15, 0, 1, v16);
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v1 - 8);
  v61 = &v59 - v2;
  v3 = type metadata accessor for Artwork();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = __chkstk_darwin(v3);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v59 - v6;
  v7 = sub_10010FC20(&unk_1011B55F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = sub_10010FC20(&qword_1011B5930);
  v20 = __chkstk_darwin(v19 - 8);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = sub_10010FC20(&qword_1011B11C8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  Playlist.variant.getter();
  v30 = type metadata accessor for Playlist.Variant();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v29, v27, &qword_1011B11C8);
  v33 = (*(v31 + 88))(v27, v30);
  if (v33 != enum case for Playlist.Variant.regular(_:) && v33 != enum case for Playlist.Variant.smart(_:))
  {
    if (v33 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v33 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v33 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v33 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v33 != enum case for Playlist.Variant.admin(_:))
      {
        if (v33 == enum case for Playlist.Variant.personalMix(_:))
        {
          Playlist.editorialArtwork.getter();
          sub_1000089F8(v13, v10, &unk_1011B55F0);
          v48 = v64;
          v47 = v65;
          if ((*(v64 + 48))(v10, 1, v65) == 1)
          {
            sub_1000095E8(v13, &unk_1011B55F0);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            v50 = v62;
            (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
          }

          else
          {
            v51 = *(v48 + 32);
            v52 = v63;
            v51(v63, v10, v47);
            v53 = v60;
            (*(v48 + 16))(v60, v52, v47);
            v54 = v61;
            static Artwork.CropStyle.featuredContentCrop170T100B.getter();
            (*(v48 + 8))(v52, v47);
            sub_1000095E8(v13, &unk_1011B55F0);
            v55 = type metadata accessor for Artwork.CropStyle();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            v50 = v62;
            v51(v62, v53, v47);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            sub_100B08B34(v54, v50 + *(v49 + 20));
            (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v56 = *(v49 - 8);
          v57 = *(v56 + 48);
          if (v57(v50, 1, v49) == 1)
          {
            sub_100B07ED4(v66);
            if (v57(v50, 1, v49) != 1)
            {
              sub_1000095E8(v50, &qword_1011B5930);
            }
          }

          else
          {
            v58 = v66;
            sub_100568BA8(v50, v66);
            (*(v56 + 56))(v58, 0, 1, v49);
          }

          goto LABEL_16;
        }

        (*(v31 + 8))(v27, v30);
LABEL_15:
        v46 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
LABEL_16:
        v44 = &qword_1011B11C8;
        v45 = v29;
        return sub_1000095E8(v45, v44);
      }

LABEL_2:
      sub_1000095E8(v29, &qword_1011B11C8);
      return sub_100B07ED4(v66);
    }
  }

LABEL_7:
  sub_1000095E8(v29, &qword_1011B11C8);
  sub_100B07ED4(v23);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v23, 1, v34) != 1)
  {
    v41 = v66;
    sub_100568BA8(v23, v66);
    return (*(v35 + 56))(v41, 0, 1, v34);
  }

  Playlist.tracksTiledArtwork.getter();
  sub_1000089F8(v18, v16, &unk_1011B55F0);
  v38 = v64;
  v37 = v65;
  if ((*(v64 + 48))(v16, 1, v65) == 1)
  {
    sub_1000095E8(v18, &unk_1011B55F0);
    v39 = 1;
    v40 = v66;
  }

  else
  {
    v42 = v63;
    (*(v38 + 32))(v63, v16, v37);
    v40 = v66;
    (*(v38 + 16))(v66, v42, v37);
    v62 = *(v34 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v38 + 8))(v42, v37);
    sub_1000095E8(v18, &unk_1011B55F0);
    v43 = type metadata accessor for Artwork.CropStyle();
    (*(*(v43 - 8) + 56))(v40 + v62, 0, 1, v43);
    v39 = 0;
  }

  (*(v35 + 56))(v40, v39, 1, v34);
  result = (v36)(v23, 1, v34);
  if (result != 1)
  {
    v44 = &qword_1011B5930;
    v45 = v23;
    return sub_1000095E8(v45, v44);
  }

  return result;
}

uint64_t sub_100B08B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B4720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10010FC20(&qword_1011B11C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  Playlist.variant.getter();
  v14 = type metadata accessor for Playlist.Variant();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v13, v10, &qword_1011B11C8);
  v16 = (*(v15 + 88))(v10, v14);
  if (v16 == enum case for Playlist.Variant.regular(_:) || v16 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    sub_1000095E8(v13, &qword_1011B11C8);
    goto LABEL_10;
  }

  if (v16 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v16 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    sub_1000095E8(v13, &qword_1011B11C8);
    Playlist.artwork.getter();
    v18 = type metadata accessor for Artwork();
    v19 = (*(*(v18 - 8) + 48))(v7, 1, v18);
    sub_1000095E8(v7, &unk_1011B55F0);
    if (v19 == 1)
    {
      static Artwork.CropStyle.boundedBox.getter();
LABEL_11:
      v20 = type metadata accessor for Artwork.CropStyle();
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }

LABEL_10:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_11;
  }

  if (v16 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v16 == enum case for Playlist.Variant.personalMix(_:))
  {
    Playlist.editorialArtwork.getter();
    v23 = type metadata accessor for Artwork();
    v24 = (*(*(v23 - 8) + 48))(v4, 1, v23);
    sub_1000095E8(v4, &unk_1011B55F0);
    if (v24 == 1)
    {
      static Artwork.CropStyle.squareCenterCrop.getter();
    }

    else
    {
      static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    }

    v25 = type metadata accessor for Artwork.CropStyle();
    (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    return sub_1000095E8(v13, &qword_1011B11C8);
  }

  (*(v15 + 8))(v10, v14);
LABEL_15:
  v22 = type metadata accessor for Artwork.CropStyle();
  (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  return sub_1000095E8(v13, &qword_1011B11C8);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UploadedVideo();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicVideo();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVSeason();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v45, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    sub_100B07280(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v46);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v46;
  if (v23 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v13, v22, v10);
    sub_100B07280(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v11 + 8))(v13, v10);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v42;
    v26 = v43;
    v28 = v44;
    (*(v43 + 32))(v42, v22, v44);
    v29 = &MusicVideo.artwork.getter;
LABEL_7:
    sub_100B07280(v29, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v26 + 8))(v27, v28);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v40;
    v30 = v41;
    (*(v40 + 32))(v9, v22, v41);
    Playlist.artworkViewModel.getter(v25);
    return (*(v31 + 8))(v9, v30);
  }

  else
  {
    if (v23 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v37;
      v26 = v38;
      v28 = v39;
      (*(v38 + 32))(v37, v22, v39);
      v29 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v23 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v34;
      v26 = v35;
      v28 = v36;
      (*(v35 + 32))(v34, v22, v36);
      v29 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v32 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_1011B55F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  TVEpisode.previewArtwork.getter();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011B55F0);
    TVEpisode.artwork.getter();
    if (v15(v5, 1, v8) == 1)
    {
      sub_1000095E8(v5, &unk_1011B55F0);
      v16 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }

    (*(v9 + 32))(v12, v5, v8);
    (*(v9 + 16))(a1, v12, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(a1, v14, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v14, v8);
  }

  v20 = type metadata accessor for Artwork.CropStyle();
  (*(*(v20 - 8) + 56))(a1 + v19, 0, 1, v20);
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100B09D90@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.specificRectangle.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100B09E48@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicVideo();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    sub_100B07280(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v14, v11);
    v17 = v20;
    (*(v20 + 32))(v6, v14, v4);
    sub_100B07280(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v17 + 8))(v6, v4);
  }

  else
  {
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = type metadata accessor for CreditArtist();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin(v1);
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SocialProfile();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedVideo();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UploadedAudio();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVShow();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TVSeason();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TVEpisode();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for RecordLabel();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for RadioShow();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Station();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Song();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin(v14);
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin(v18);
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin(v20);
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin(v22);
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v71 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    sub_100B07280(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    sub_100B07524(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    sub_100B07280(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    sub_100B07280(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    sub_100B07280(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (qword_1011B0628 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, static Logger.artwork);
    v70(v71, v124, v32);
    v59 = Logger.logObject.getter();
    LODWORD(v122) = static os_log_type_t.fault.getter();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v125);
      *(v60 + 12) = 2080;
      sub_100B0CD24();
      v61 = v71;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = sub_100010744(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}

uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10010FC20(&qword_1011B4720);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Artwork.CropStyle();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B0BB5C, 0, 0);
}

uint64_t sub_100B0BB5C()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  sub_1000089F8(v4 + *(v5 + 20), v3, &qword_1011B4720);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_1000095E8(*(v0 + 5), &qword_1011B4720);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (qword_1011B0620 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = sub_1000060E4(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = sub_100B0BD7C;
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_100B0BD7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_100B0BFCC, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100B0BFCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_10010FC20(&qword_1011B1438);
  *(v5 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011B4720);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100B0C124, 0, 0);
}

uint64_t sub_100B0C124()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = type metadata accessor for Artwork.CropStyle();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = type metadata accessor for Artwork.ImageFormat();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_100B0C318;
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

uint64_t sub_100B0C318(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  sub_1000095E8(*(v4 + 56), &qword_1011B1438);
  sub_1000095E8(v6, &qword_1011B4720);
  if (v1)
  {

    return _swift_task_switch(sub_100B0C4D8, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_100B0C4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B0C544(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030C430;

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_10010FC20(&qword_1011B4720);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100B0C744, 0, 0);
}

uint64_t sub_100B0C744()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_1000095E8(*(v0 + 7), &qword_1011B4720);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (qword_1011B0620 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = sub_1000060E4(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = sub_100B0C964;
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_100B0C964(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_100B0CBB4, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100B0CBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100B0CC30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011B1448);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100B0CD24()
{
  result = qword_1011B1430;
  if (!qword_1011B1430)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1430);
  }

  return result;
}

uint64_t sub_100B0CD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    result = (a1)(result);
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (result)
    {
      a1 = 0;
      goto LABEL_14;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      a1 = 1;
      goto LABEL_14;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  result = (a1)(result);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_14:

  return a1;
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  sub_100B0F2C8(&qword_1011B1450, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_100B0F2C8(&qword_1011B1458, &type metadata accessor for AttributedString.Index);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return (v11 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        sub_1000098E0();
        return Text.init<A>(_:)();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1460);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_100B0D48C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100B0D4FC(a1);

    sub_100B0D4FC(v6);
  }

  else
  {
    v14 = (*(v8 + 32))(v13, v6, v7);
    __chkstk_darwin(v14);
    *&v18[-16] = v13;
    v15 = sub_100B0CD88(sub_100B0D7BC, &v18[-32], a2);

    if (v15)
    {
      (*(v8 + 16))(v10, v13, v7);
      v16 = Text.init(_:)();
      sub_100B0D4FC(a1);
      (*(v8 + 8))(v13, v7);
      return v16;
    }

    sub_100B0D4FC(a1);
    (*(v8 + 8))(v13, v7);
  }

  return 0;
}

uint64_t sub_100B0D48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B0D4FC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B0D564()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  sub_100B0F2C8(&qword_1011B1450, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_100B0F2C8(&qword_1011B1458, &type metadata accessor for AttributedString.Index);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t static Edge.Set.on(_:)()
{
  v0 = Edge.Set.init(rawValue:)();
  v1 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v1)
  {
    sub_10010FC20(&qword_1011B1468);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    v3 = static Edge.Set.leading.getter();
    *(inited + 32) = v3;
    v4 = static Edge.Set.trailing.getter();
    *(inited + 33) = v4;
    v5 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v3)
    {
      v5 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v4)
    {
      v5 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v5)
    {
      v0 = Edge.Set.init(rawValue:)();
    }
  }

  v6 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v6)
  {
    sub_10010FC20(&qword_1011B1468);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_100EBDC20;
    v8 = static Edge.Set.top.getter();
    *(v7 + 32) = v8;
    v9 = static Edge.Set.bottom.getter();
    *(v7 + 33) = v9;
    v10 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v8)
    {
      v10 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v9)
    {
      v10 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v10)
    {
      return Edge.Set.init(rawValue:)();
    }
  }

  return v0;
}

double EdgeInsets.init(_:length:)(char a1, double a2)
{
  if (a1)
  {
    static Axis.Set.vertical.getter();
  }

  else
  {
    static Axis.Set.horizontal.getter();
  }

  static Edge.Set.on(_:)();

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(a2);
}

double EdgeInsets.init(_:length:)(double a1)
{
  static Edge.Set.on(_:)();

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(a1);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  static Edge.Set.all.getter();
  _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(0.0);
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return;
    }

    v5 = *(a1 + 56 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  sub_10010FC20(&qword_1011B1470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1 & 1;
  v3 = sub_100B0EA50(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(char a1)
{
  if (a1)
  {
    return static Axis.Set.vertical.getter();
  }

  else
  {
    return static Axis.Set.horizontal.getter();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  v5 = sub_10010FC20(&qword_1011B1478);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, v2, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = UIContentSizeCategory.init(_:)();
  v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v11];
  [v8 scaledValueForValue:v12 compatibleWithTraitCollection:a2];
  v14 = v13;

  return v14;
}

uint64_t static Color.random(opacity:)()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100173A78(0x20000000000001uLL);
  sub_100173A78(0x20000000000001uLL);
  sub_100173A78(0x20000000000001uLL);
  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = type metadata accessor for LayoutDirection();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B0EF40(v4, v17, &type metadata accessor for RoundedRectangle);
  v18 = enum case for LayoutDirection.leftToRight(_:);
  v19 = *(v9 + 104);
  v19(v14, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_100B0EF40(v17, a1, &type metadata accessor for RoundedRectangle);
  v20 = _s21OmnidirectionalOutsetVMa();
  *(a1 + v20[5]) = a3;
  *(a1 + v20[6]) = a2;
  *(a1 + v20[7]) = a3;
  *(a1 + v20[8]) = a2;
  v19(v11, v18, v8);
  LOBYTE(v18) = static LayoutDirection.== infix(_:_:)();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  result = sub_100B0EBDC(v17);
  *(a1 + v20[9]) = (v18 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = type metadata accessor for LayoutDirection();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v21 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v21 - 8);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B0EF40(v7, v23, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v20, a1, v14);
  sub_100B0EF40(v23, a2, &type metadata accessor for RoundedRectangle);
  v24 = _s21OmnidirectionalOutsetVMa();
  *(a2 + v24[5]) = a3;
  *(a2 + v24[6]) = a4;
  *(a2 + v24[7]) = a5;
  *(a2 + v24[8]) = a6;
  (*(v15 + 104))(v17, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = static LayoutDirection.== infix(_:_:)();
  v25 = *(v15 + 8);
  v25(v17, v14);
  v25(v20, v14);
  result = sub_100B0EBDC(v23);
  *(a2 + v24[9]) = (v7 & 1) == 0;
  return result;
}

double sub_100B0E4D4@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_100B0EF40(v5, a2, _s21OmnidirectionalOutsetVMa);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double sub_100B0E55C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)();
  sub_100B0EF40(v2, v11, &type metadata accessor for RoundedRectangle);
  (*(v5 + 32))(v7, &v11[*(v9 + 28)], v4);
  Path.init(roundedRect:cornerSize:style:)();
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v17;
  return result;
}

void (*sub_100B0E754(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_100B0E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B0E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B0E908(uint64_t a1)
{
  v2 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa);

  return Shape.body.getter(a1, v2);
}

double _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(double a1)
{
  v2 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  return v3;
}

Swift::Int sub_100B0EA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1580);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s21OmnidirectionalOutsetVMa()
{
  result = qword_1011B14E8;
  if (!qword_1011B14E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B0EBDC(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100B0EC3C()
{
  result = qword_1011B1480;
  if (!qword_1011B1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1480);
  }

  return result;
}

void sub_100B0ECC8()
{
  type metadata accessor for RoundedRectangle();
  if (v0 <= 0x3F)
  {
    _s3__C30UIUserInterfaceLayoutDirectionOMa_0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100B0ED64()
{
  result = qword_1011B1530;
  if (!qword_1011B1530)
  {
    sub_1001109D0(&qword_1011B1538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1530);
  }

  return result;
}

unint64_t sub_100B0EDCC()
{
  result = qword_1011B1540;
  if (!qword_1011B1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1540);
  }

  return result;
}

uint64_t sub_100B0EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100B0EFA8(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10010FC20(&qword_1011B1560);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100B0F2C8(&qword_1011B1568, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100B0F2C8(&qword_1011B1570, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F2C8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100B0F310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1578);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F44C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10121B578);
  sub_1000060E4(v0, qword_10121B578);
  sub_100005B7C();
  static OS_os_log.disabled.getter();
  return Logger.init(_:)();
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B7710);
  __chkstk_darwin(v2 - 8);
  v218 = &v211 - v3;
  v4 = type metadata accessor for UIView.Corner();
  v219 = *(v4 - 1);
  v220 = v4;
  v5 = __chkstk_darwin(v4);
  v216 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v217 = &v211 - v7;
  v229 = 0xD00000000000001CLL;
  v230 = 0x8000000100E64B40;
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v223._countAndFlagsBits = 0xD000000000000017;
  v223._object = 0x8000000100E64B60;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  String.append(_:)(v223);

  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v223._countAndFlagsBits = 0x6D756D696E696D20;
  v223._object = 0xEF203A20657A6953;
  v11._countAndFlagsBits = CGSize.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(v223);

  if ((*(v0 + v8[14] + 16) & 1) == 0)
  {
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v223._countAndFlagsBits = 0xD000000000000014;
    v223._object = 0x8000000100E64F20;
    v13._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    String.append(_:)(v223);
  }

  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v228._countAndFlagsBits = 0xD000000000000011;
  v228._object = 0x8000000100E64B80;
  v15 = v0 + v8[15];
  v16 = *(v15 + 16);
  v223 = *v15;
  v224 = v16;
  _s3__C23NSDirectionalEdgeInsetsVMa_0(0);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v228);

  v19 = *(v0 + v8[19]);
  if (v19 == 2)
  {
    v20._countAndFlagsBits = 0xD00000000000001ALL;
    v20._object = 0x8000000100E64BA0;
    String.append(_:)(v20);
  }

  else
  {
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v223._countAndFlagsBits = 0xD000000000000010;
    v223._object = 0x8000000100E64F00;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v19)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = v22;
    String.append(_:)(*&v21);

    v24._countAndFlagsBits = 10;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    String.append(_:)(v223);
  }

  v223._countAndFlagsBits = 0x3A206168706C6120;
  v223._object = 0xE900000000000020;
  v25._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  String.append(_:)(v223);

  v223._countAndFlagsBits = 0x203A20746E697420;
  v223._object = 0xE800000000000000;
  v228._countAndFlagsBits = *(v0 + v8[18]);
  v27 = v228._countAndFlagsBits;
  v221 = sub_10010FC20(&qword_1011B1178);
  v28._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v223);

  v30 = *(v0 + 8);
  v222 = v8;
  if (v30)
  {
    v31 = *(v0 + 16);
    v32 = *(v0 + 24);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v213 = *(v0 + 56);
    v211 = *(v0 + 64);
    v214 = *(v0 + 80);
    v35 = *(v0 + 96);
    v212 = *(v0 + 88);
    v215 = *(v0 + 112);
    v36 = *v0;

    v37._countAndFlagsBits = 0x6D7953209480E220;
    v37._object = 0xAE000A7B206C6F62;
    String.append(_:)(v37);
    v223._countAndFlagsBits = 0x656D616E20202020;
    v223._object = 0xEB00000000203A20;
    v38._countAndFlagsBits = v36;
    v38._object = v30;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 10;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    String.append(_:)(v223);

    if (v31)
    {
      v40 = [v31 bundlePath];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      strcpy(&v223, "    bundle : ");
      HIWORD(v223._object) = -4864;
      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 10;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      String.append(_:)(v223);
    }

    strcpy(&v223, "    style : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v32;
    _s3__C9TextStyleVMa_0(0);
    v46 = v32;
    v47._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 10;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    String.append(_:)(v223);

    if ((v33 & 1) == 0)
    {
      v223._countAndFlagsBits = 0xD000000000000014;
      v223._object = 0x8000000100E64EE0;
      v49._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v49);

      v50._countAndFlagsBits = 10;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      String.append(_:)(v223);
    }

    strcpy(&v223, "    weight : ");
    HIWORD(v223._object) = -4864;
    v228._countAndFlagsBits = v34;
    type metadata accessor for SymbolWeight(0);
    v51._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 10;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    String.append(_:)(v223);

    strcpy(&v223, "    scale : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v213;
    type metadata accessor for SymbolScale(0);
    v53._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v53);

    v54._countAndFlagsBits = 10;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    String.append(_:)(v223);

    if (v214 != 255)
    {
      strcpy(&v228, "    offset : ");
      HIWORD(v228._object) = -4864;
      v223 = v211;
      LOBYTE(v224) = v214 & 1;
      sub_10010FC20(&qword_1011B1588);
      v55._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 10;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      String.append(_:)(v228);
    }

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v57._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v57);

    v58._countAndFlagsBits = 10;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v215;
    v59 = v215;
    v60._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v60);

    v61._countAndFlagsBits = 10;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v223);

    if (v35)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x8000000100E64EC0;

      v62._countAndFlagsBits = v212;
      v62._object = v35;
      String.append(_:)(v62);

      v63._countAndFlagsBits = 10;
      v63._object = 0xE100000000000000;
      String.append(_:)(v63);
      String.append(_:)(v223);
    }

    v64._countAndFlagsBits = 687392;
    v64._object = 0xE300000000000000;
    String.append(_:)(v64);
    v8 = v222;
  }

  else
  {
    v65._object = 0x8000000100E64BC0;
    v65._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v65);
  }

  v66 = *(v1 + 128);
  if (v66)
  {
    v67 = *(v1 + 160);
    v215 = *(v1 + 152);
    v68 = *(v1 + 184);
    v69 = *(v1 + 176);
    v70 = *(v1 + 144);
    v71 = *(v1 + 136);
    v72 = *(v1 + 120);

    v73._countAndFlagsBits = 0x746954209480E220;
    v73._object = 0xAD00000A7B20656CLL;
    String.append(_:)(v73);
    v223._countAndFlagsBits = 0x7478657420202020;
    v223._object = 0xEB00000000203A20;
    v74._countAndFlagsBits = v72;
    v74._object = v66;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 10;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    String.append(_:)(v223);

    strcpy(&v223, "    style : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v71;
    _s3__C9TextStyleVMa_0(0);
    v76 = v71;
    v77._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 10;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    String.append(_:)(v223);

    strcpy(&v223, "    weight : ");
    HIWORD(v223._object) = -4864;
    v228._countAndFlagsBits = v70;
    type metadata accessor for Weight(0);
    v79._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 10;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    String.append(_:)(v223);

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v81._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v81);

    v82._countAndFlagsBits = 10;
    v82._object = 0xE100000000000000;
    String.append(_:)(v82);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v69;
    v83 = v69;
    v84._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v84);

    v85._countAndFlagsBits = 10;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    String.append(_:)(v223);

    strcpy(&v223, "    hidden : ");
    HIWORD(v223._object) = -4864;
    if (v68)
    {
      v86 = 1702195828;
    }

    else
    {
      v86 = 0x65736C6166;
    }

    if (v68)
    {
      v87 = 0xE400000000000000;
    }

    else
    {
      v87 = 0xE500000000000000;
    }

    v88 = v87;
    String.append(_:)(*&v86);

    v89._countAndFlagsBits = 10;
    v89._object = 0xE100000000000000;
    String.append(_:)(v89);
    String.append(_:)(v223);

    if (v67)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x8000000100E64EC0;

      v90._countAndFlagsBits = v215;
      v90._object = v67;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 10;
      v91._object = 0xE100000000000000;
      String.append(_:)(v91);
      String.append(_:)(v223);
    }

    v92._countAndFlagsBits = 687392;
    v92._object = 0xE300000000000000;
    String.append(_:)(v92);
    v8 = v222;
  }

  else
  {
    v93._countAndFlagsBits = 0x1000000000000011;
    v93._object = 0x8000000100E64BE0;
    String.append(_:)(v93);
  }

  v94 = *(v1 + 208);
  if (v94 == 1)
  {
    v95._countAndFlagsBits = 0x1000000000000016;
    v95._object = 0x8000000100E64C00;
    String.append(_:)(v95);
  }

  else
  {
    v97 = *(v1 + 216);
    v96 = *(v1 + 224);

    v98 = v94;
    v99._object = 0x8000000100E64EA0;
    v99._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v99);
    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v100._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v100);

    v101._countAndFlagsBits = 10;
    v101._object = 0xE100000000000000;
    String.append(_:)(v101);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v94;
    v102 = v98;
    v103._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v103);

    v104._countAndFlagsBits = 10;
    v104._object = 0xE100000000000000;
    String.append(_:)(v104);
    String.append(_:)(v223);

    if (v96)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x8000000100E64EC0;

      v105._countAndFlagsBits = v97;
      v105._object = v96;
      String.append(_:)(v105);

      v106._countAndFlagsBits = 10;
      v106._object = 0xE100000000000000;
      String.append(_:)(v106);
      String.append(_:)(v223);
    }

    v107._countAndFlagsBits = 687392;
    v107._object = 0xE300000000000000;
    String.append(_:)(v107);

    v8 = v222;
  }

  v108 = *(v1 + 296);
  if (v108)
  {
    v109 = *(v1 + 288);
    v110 = *(v1 + 280);
    v228._countAndFlagsBits = 0x726F42209480E220;
    v228._object = 0xAE00203A20726564;
    v223._countAndFlagsBits = v110;
    LOBYTE(v223._object) = v109 & 1;
    *&v224 = v108;
    v111 = v108;
    v112._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v112);

    v113._countAndFlagsBits = 10;
    v113._object = 0xE100000000000000;
    String.append(_:)(v113);
    String.append(_:)(v228);
  }

  else
  {
    v114._object = 0x8000000100E64C20;
    v114._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v114);
  }

  v115 = v218;
  sub_100B10E68(v1 + v8[9], v218);
  v117 = v219;
  v116 = v220;
  if ((v219[6])(v115, 1, v220) == 1)
  {
    sub_100B10ED8(v115);
    v118._object = 0x8000000100E64C40;
    v118._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v118);
  }

  else
  {
    v119 = v217;
    v117[4](v217, v115, v116);
    v223._countAndFlagsBits = 0x726F43209480E220;
    v223._object = 0xAE00203A2072656ELL;
    v117[2](v216, v119, v116);
    v120._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v120);

    v121._countAndFlagsBits = 10;
    v121._object = 0xE100000000000000;
    String.append(_:)(v121);
    String.append(_:)(v223);

    (v117[1])(v119, v116);
  }

  v122 = *(v1 + 232);
  if (v122 == 1)
  {
    v123._countAndFlagsBits = 0x1000000000000014;
    v123._object = 0x8000000100E64C60;
    String.append(_:)(v123);
  }

  else
  {
    v125 = *(v1 + 240);
    v124 = *(v1 + 248);
    v126 = *(v1 + 272);
    v127 = *(v1 + 256);
    v217 = *(v1 + 264);
    v218 = v127;

    v128 = v122;
    v220 = v125;
    v219 = v124;
    v129._countAndFlagsBits = 0x1000000000000010;
    v129._object = 0x8000000100E64E20;
    String.append(_:)(v129);
    if (v122)
    {
      v223._countAndFlagsBits = 0xD000000000000017;
      v223._object = 0x8000000100E64E80;
      v130 = v128;
      v131 = [v130 description];
      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v134 = v133;

      v135._countAndFlagsBits = v132;
      v135._object = v134;
      String.append(_:)(v135);

      v136._countAndFlagsBits = 10;
      v136._object = 0xE100000000000000;
      String.append(_:)(v136);
      String.append(_:)(v223);

      v8 = v222;
    }

    if (v125)
    {
      v223._countAndFlagsBits = 0xD000000000000017;
      v223._object = 0x8000000100E64E60;
      v137 = v220;
      v138 = [v137 description];
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      v142._countAndFlagsBits = v139;
      v142._object = v141;
      String.append(_:)(v142);

      v143._countAndFlagsBits = 10;
      v143._object = 0xE100000000000000;
      String.append(_:)(v143);
      String.append(_:)(v223);

      v8 = v222;
    }

    v144 = v219;
    if (v124)
    {
      v223._countAndFlagsBits = 0xD000000000000014;
      v223._object = 0x8000000100E64E40;
      v145 = v219;
      v146 = [v145 description];
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v148;

      v150._countAndFlagsBits = v147;
      v150._object = v149;
      String.append(_:)(v150);

      v151._countAndFlagsBits = 10;
      v151._object = 0xE100000000000000;
      String.append(_:)(v151);
      String.append(_:)(v223);

      v8 = v222;
    }

    if (v218 != 2)
    {
      strcpy(&v223, "    color : ");
      BYTE5(v223._object) = 0;
      HIWORD(v223._object) = -5120;
      LOBYTE(v228._countAndFlagsBits) = v218 & 1;
      v152._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v152);

      v153._countAndFlagsBits = 10;
      v153._object = 0xE100000000000000;
      String.append(_:)(v153);
      String.append(_:)(v223);
    }

    if (v126)
    {
      strcpy(&v223, "    group : ");
      BYTE5(v223._object) = 0;
      HIWORD(v223._object) = -5120;

      v154._countAndFlagsBits = v217;
      v154._object = v126;
      String.append(_:)(v154);

      v155._countAndFlagsBits = 10;
      v155._object = 0xE100000000000000;
      String.append(_:)(v155);
      String.append(_:)(v223);
    }

    v156._countAndFlagsBits = 687392;
    v156._object = 0xE300000000000000;
    String.append(_:)(v156);
  }

  v157 = v1 + v8[10];
  v158 = *v157;
  if (*v157)
  {
    v160 = *(v157 + 40);
    v159 = *(v157 + 48);
    v162 = *(v157 + 24);
    v161 = *(v157 + 32);
    v163 = *(v157 + 8);
    v164 = *(v157 + 16);
    v228._countAndFlagsBits = 0x1000000000000013;
    v228._object = 0x8000000100E64E00;
    v223._countAndFlagsBits = v158;
    v223._object = v163;
    *&v224 = v164;
    *(&v224 + 1) = v162;
    v225 = v161;
    v226 = v160;
    v227 = v159;
    sub_100B10F50(v158, v163, v164, v162, v161, v160, v159);
    v165 = v159;
    v166 = v158;
    v167._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v167);

    v168._countAndFlagsBits = 10;
    v168._object = 0xE100000000000000;
    String.append(_:)(v168);
    String.append(_:)(v228);

    v169 = v162;
    v8 = v222;
    sub_100B07154(v158, v163, v164, v169, v161, v160, v159);
  }

  else
  {
    v170._countAndFlagsBits = 0x1000000000000017;
    v170._object = 0x8000000100E64C80;
    String.append(_:)(v170);
  }

  v171 = (v1 + v8[11]);
  v172 = v171[2];
  if (v172 == 1)
  {
    v173._countAndFlagsBits = 0x1000000000000011;
    v173._object = 0x8000000100E64CA0;
    String.append(_:)(v173);
  }

  else
  {
    v175 = *v171;
    v174 = v171[1];
    v176 = v172;
    v177._countAndFlagsBits = 0x646142209480E220;
    v177._object = 0xAD00000A7B206567;
    String.append(_:)(v177);
    v223._countAndFlagsBits = 0xD000000000000014;
    v223._object = 0x8000000100E64DE0;
    v178._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    String.append(_:)(v179);
    String.append(_:)(v223);

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v180._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v180);

    v181._countAndFlagsBits = 10;
    v181._object = 0xE100000000000000;
    String.append(_:)(v181);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v172;
    v182 = v176;
    v183._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v183);

    v184._countAndFlagsBits = 10;
    v184._object = 0xE100000000000000;
    String.append(_:)(v184);
    String.append(_:)(v223);

    v185._countAndFlagsBits = 687392;
    v185._object = 0xE300000000000000;
    String.append(_:)(v185);
    sub_100B10F40(v175, v174, v172);
  }

  v186 = (v1 + v8[16]);
  v187 = *v186;
  v188 = *(v186 + 1);
  v189 = *(v186 + 2);
  v190 = v186[24];
  v191._countAndFlagsBits = 0x1000000000000015;
  v191._object = 0x8000000100E64CC0;
  String.append(_:)(v191);
  v223._countAndFlagsBits = 0xD00000000000001BLL;
  v223._object = 0x8000000100E64CE0;
  if (v187)
  {
    v192 = 1702195828;
  }

  else
  {
    v192 = 0x65736C6166;
  }

  if (v187)
  {
    v193 = 0xE400000000000000;
  }

  else
  {
    v193 = 0xE500000000000000;
  }

  v194 = v193;
  String.append(_:)(*&v192);

  v195._countAndFlagsBits = 10;
  v195._object = 0xE100000000000000;
  String.append(_:)(v195);
  String.append(_:)(v223);

  if (v188)
  {
    v223._countAndFlagsBits = 0xD000000000000021;
    v223._object = 0x8000000100E64DB0;
    v228._countAndFlagsBits = v188;
    type metadata accessor for UIContentSizeCategory(0);
    v196 = v188;
    v197._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v197);

    v198._countAndFlagsBits = 10;
    v198._object = 0xE100000000000000;
    String.append(_:)(v198);
    String.append(_:)(v223);

    if (v189)
    {
LABEL_72:
      v223._countAndFlagsBits = 0xD000000000000021;
      v223._object = 0x8000000100E64D80;
      v228._countAndFlagsBits = v189;
      type metadata accessor for UIContentSizeCategory(0);
      v199 = v189;
      v200._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v200);

      v201._countAndFlagsBits = 10;
      v201._object = 0xE100000000000000;
      String.append(_:)(v201);
      String.append(_:)(v223);

      goto LABEL_75;
    }
  }

  else
  {
    v202._countAndFlagsBits = 0xD00000000000002DLL;
    v202._object = 0x8000000100E64D00;
    String.append(_:)(v202);
    if (v189)
    {
      goto LABEL_72;
    }
  }

  v203._countAndFlagsBits = 0xD00000000000002DLL;
  v203._object = 0x8000000100E64D30;
  String.append(_:)(v203);
LABEL_75:
  v223._countAndFlagsBits = 0xD00000000000001ELL;
  v223._object = 0x8000000100E64D60;
  if (v190)
  {
    v204 = 1702195828;
  }

  else
  {
    v204 = 0x65736C6166;
  }

  if (v190)
  {
    v205 = 0xE400000000000000;
  }

  else
  {
    v205 = 0xE500000000000000;
  }

  v206 = v205;
  String.append(_:)(*&v204);

  v207._countAndFlagsBits = 10;
  v207._object = 0xE100000000000000;
  String.append(_:)(v207);
  String.append(_:)(v223);

  v208._countAndFlagsBits = 687392;
  v208._object = 0xE300000000000000;
  String.append(_:)(v208);
  v209._countAndFlagsBits = 41;
  v209._object = 0xE100000000000000;
  String.append(_:)(v209);
  return v229;
}

uint64_t sub_100B10E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B10ED8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100B10F40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id sub_100B10F50(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id sub_100B10F94(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100B11108(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1011B04D8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id sub_100B112CC(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1011B04E0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id sub_100B11490(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1011B04E8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id sub_100B11654(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      sub_100B11BFC();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1011B04F0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_1011B04F8 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1011B0500 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1011B0508 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1011B0510 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t sub_100B11AB4(uint64_t a1, void *a2, id *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  result = Color.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1011B0518 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t sub_100B11B7C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_100B11BFC()
{
  result = qword_1011B4940;
  if (!qword_1011B4940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B4940);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  sub_10010FC20(&qword_1011B5630);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011B1590);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100011EC0(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  sub_10010FC20(&qword_1011B5630);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009F78(0, &qword_1011B3A00);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100011EC0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011B1598);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100011EC0(v7);
    return 0;
  }
}

uint64_t UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    sub_100009F78(0, &unk_1011B7AC0);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_10010FC20(&qword_1011B5630);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBC6D0;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  sub_10010FC20(&qword_1011B5630);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009F78(0, &qword_1011B3A00);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100011EC0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    sub_100009F78(0, &qword_1011B1590);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

uint64_t sub_100B127D0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100B182B4, v4);
}

void sub_100B12864(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011B7C30);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4.value = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_10010FC20(&qword_1011B5630);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4.value;
  aBlock[4] = sub_100B12B9C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2178;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(preferredElementSize + 32) = v13;
  v14._countAndFlagsBits = countAndFlagsBits;
  v14._object = object;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v18, v4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

uint64_t sub_100B12A54(void (*a1)(void *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      sub_100B12BA4(&v16, &v15, a4, &v14);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);
}

uint64_t sub_100B12BA4@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, NSString *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a4 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = (v9 + 16);

  v11 = [v7 menuRepresentation];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v12;
    if (v13)
    {
      v15.value = a3;
      sub_100B130BC(v13, v15, v9, v7);
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_26;
  }

  v16 = [v7 menu];
  if (!v16)
  {
    v19 = [v7 primaryAction];
    if (v19 && (v20 = v19, [v19 copy], v20, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100009F78(0, &qword_1011B1640), (swift_dynamicCast() & 1) != 0))
    {
      v21 = v38;
    }

    else
    {
      v22 = v7;
      v23 = [v22 target];
      v24 = [v22 action];
      if (!v23)
      {

        goto LABEL_26;
      }

      v25 = v24;
      if (!v24)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_100009F78(0, &qword_1011B1640);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v25;

      v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      v21 = v28;
      v29 = [v22 title];
      if (v29)
      {
        v30 = v29;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v31 = String._bridgeToObjectiveC()();

      [v21 setTitle:v31];

      v32 = [v22 image];
      [v21 setImage:v32];
    }

    v33 = [v7 title];
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v35 = String._bridgeToObjectiveC()();

    [v21 setTitle:v35];

    v36 = [v7 image];
    [v21 setImage:v36];

    v37 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_26;
  }

  v17 = v16;
  v18.value = a3;
  sub_100B130BC(v16, v18, v9, v7);

LABEL_26:
  swift_beginAccess();
  *a4 = *(v9 + 16);
}

uint64_t sub_100B130BC(id a1, UIMenuIdentifier_optional a2, uint64_t a3, void *a4)
{
  if ((a2.value & 1) == 0)
  {
    v8 = [a1 title];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  sub_100009F78(0, &qword_1011B15A8);
  v24 = [a1 children];
  sub_100009F78(0, &qword_1011B7C30);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, a2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28);
  swift_beginAccess();
LABEL_17:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

void *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  sub_100009F78(0, &qword_1011B15B0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = "()\n";
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      sub_100009F78(0, &qword_1011B15B8);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_100B176EC();
            for (j = 0; j != v21; ++j)
            {
              sub_10010FC20(&qword_1011B15C0);
              v25 = sub_100AA5424(v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_100009F78(0, &qword_1011B15B8);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100B13B30(v32);
    return v43[0];
  }

  return v5;
}

uint64_t sub_100B13B30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100B1755C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100B13C20(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100BF9BAC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Playlist.Collaborator();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011B7C00);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100B13DB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011B7C00);
  return static NSObject.== infix(_:_:)() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a6)
  {
    image_8 = a3;
    v11 = v8;

    v45 = a1;
    v12 = UIBarButtonItem.init(title:image:target:action:menu:)();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    sub_10010FC20(&qword_1011B5630);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100EBC6C0;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100B182F8;
    *(v16 + 24) = v13;
    aBlock[4] = sub_100B18314;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100B127D0;
    aBlock[3] = &unk_1010E2240;
    v17 = v8;
    v18 = _Block_copy(aBlock);
    children = v11;
    v19 = v12;

    v20 = [v15 elementWithUncachedProvider:v18];
    _Block_release(v18);
    *(preferredElementSize + 32) = v20;
    if (a2)
    {
      v21 = v45;
    }

    else
    {
      v21 = 0;
    }

    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    sub_100009F78(0, &qword_1011B15A8);
    v23 = image_8;
    v24._countAndFlagsBits = v21;
    v24._object = v22;
    v53.value.super.isa = a3;
    v53.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;

    [(objc_class *)v19 setMenuRepresentation:isa];
  }

  else
  {
    v27 = a5;
    v28 = [v27 title];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      v33 = v8;

      v34 = String._bridgeToObjectiveC()();

      [v27 setTitle:v34];

      v8 = v33;
    }

    v35 = [v27 image];
    if (v35)
    {
    }

    else
    {
      [v27 setImage:a3];
    }

    v36 = v27;
    v52.value.super.isa = 0;
    v37 = v8;
    v52.is_nil = v8;
    v54.value.super.super.isa = 0;
    v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v52, v54, v55).super.super.isa;
    v38 = v19;
    if (!a2)
    {
      v39 = [v36 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = String._bridgeToObjectiveC()();

    [(objc_class *)v19 setTitle:v40];

    v41 = a3;
    if (!a3)
    {
      v41 = [v36 image];
    }

    v23 = a3;
    [(objc_class *)v19 setImage:v41];

    [(objc_class *)v19 setMenuRepresentation:v36];
    v17 = v37;
  }

  [(objc_class *)v19 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8);

  return v19;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v41 = *&image.is_nil;
  isa = image.value.super.isa;
  v39 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  sub_100009F78(0, &qword_1011B15A8);
  sub_10010FC20(&qword_1011B5630);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v38 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v47 = sub_100B182E4;
  v48 = v13;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100B127D0;
  v46 = &unk_1010E2290;
  v14 = _Block_copy(&aBlock);

  v15 = [v38 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(preferredElementSize + 32) = v15;
  v16._countAndFlagsBits = style;
  v16._object = countAndFlagsBits;
  v49.value.super.isa = 0;
  v49.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v49, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v35).super.super.isa;
  v37 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6C0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100B182F8;
  *(v24 + 24) = v22;
  v47 = sub_100B18314;
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100B127D0;
  v46 = &unk_1010E2308;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v38 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v39;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v37;
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  v50.value.super.isa = isa;
  v50.is_nil = 0;
  v33 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v50, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v36.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v41];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v36 = [(objc_class *)v6 image];

  v37 = [(objc_class *)v6 style];
  v38 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v39;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_100009F78(0, &qword_1011B15A8);
  sub_10010FC20(&qword_1011B5630);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v35 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v44 = sub_100B182E4;
  v45 = v12;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100B127D0;
  v43 = &unk_1010E2358;
  v13 = _Block_copy(&aBlock);

  v14 = [v35 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(preferredElementSize + 32) = v14;
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v46, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v32).super.super.isa;

  v17 = isa;
  v34 = v36;
  v18 = v17;
  v19 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6C0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100B182F8;
  *(v22 + 24) = v20;
  v44 = sub_100B18314;
  v45 = v22;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100B127D0;
  v43 = &unk_1010E23D0;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v35 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v34;
  v29._countAndFlagsBits = v27;
  v29._object = v10;
  v47.value.super.isa = v36;
  v47.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v47, 0, 0xFFFFFFFFFFFFFFFFLL, v21, v33.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v37];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v71 = v8;
    v70 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          sub_10004ADFC(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v41 = [v3 title];
          if (v41)
          {
            v42 = v41;
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
          }

          else
          {
            v69 = 0;
            v44 = 0;
          }

          v45 = [v3 image];
          v46 = swift_allocObject();
          *(v46 + 16) = v10;
          sub_10010FC20(&qword_1011B5630);
          preferredElementSize = swift_allocObject();
          *(preferredElementSize + 16) = xmmword_100EBC6C0;
          v48 = objc_opt_self();
          v49 = swift_allocObject();
          *(v49 + 16) = sub_100B17750;
          *(v49 + 24) = v46;
          aBlock[4] = sub_100B18314;
          aBlock[5] = v49;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100B127D0;
          aBlock[3] = &unk_1010E2448;
          v50 = _Block_copy(aBlock);
          sub_10004ADE8(a1, a2);

          v51 = [v48 elementWithUncachedProvider:v50];
          _Block_release(v50);
          *(preferredElementSize + 32) = v51;
          if (v44)
          {
            v52 = v69;
          }

          else
          {
            v52 = 0;
          }

          if (v44)
          {
            v53 = v44;
          }

          else
          {
            v53 = 0xE000000000000000;
          }

          sub_100009F78(0, &qword_1011B15A8);
          v54._countAndFlagsBits = v52;
          v54._object = v53;
          v75.value.super.isa = v45;
          v75.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v75, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v67).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_10004ADFC(v70, v71);
          sub_10004ADFC(a1, a2);

          goto LABEL_61;
        }
      }

      sub_10004ADFC(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v40 = v10;
          sub_100020438(v39);
        }
      }

      goto LABEL_42;
    }

    v68 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v71;
          goto LABEL_57;
        }
      }

      v56 = [v3 customView];
      v32 = v71;
      if (v56)
      {
        v57 = v56;
        type metadata accessor for SymbolButton(0);
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v59 = (v58 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v60 = *v59;
          *v59 = 0;
          v59[1] = 0;
          sub_100020438(v60);
        }
      }

LABEL_57:
      if ((v68 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v63 = [v3 menuRepresentation];
          if (!v63)
          {

            sub_10004ADFC(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          v64 = v63;
          sub_100009F78(0, &qword_1011B7C30);
          v65 = v70;
          v66 = static NSObject.== infix(_:_:)();

          sub_10004ADFC(v70, v32);
          if (v66)
          {
            [v3 setMenuRepresentation:a1];

            sub_10004ADFC(a1, a2);
            sub_10004ADFC(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          sub_10004ADFC(v70, v32);
LABEL_61:
          v61 = a1;
          v62 = a2;
LABEL_62:
          sub_10004ADFC(v61, v62);
          return;
        }

        sub_10004ADFC(v70, v32);
      }

      goto LABEL_61;
    }

    v27 = String._bridgeToObjectiveC()();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v72 = [v3 customView];
  if (v72)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      sub_10004ADFC(v14, v8);

      return;
    }
  }

  sub_10004ADFC(v14, v8);
}