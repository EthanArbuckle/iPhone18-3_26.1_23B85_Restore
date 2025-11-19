id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}

id MPModelStoreBrowseContentItem.innermostModelObject.getter()
{
  v1 = [v0 innerObject];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_10011D550(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_1004B6E64();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = sub_1004BBDF4();
  __chkstk_darwin(v14 - 8);
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    sub_1004BBDE4();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_1004BBDD4(v20);
    v19 = *&a1;
    sub_1004BBDB4();
    v21._countAndFlagsBits = 0x2F7469622DLL;
    v21._object = 0xE500000000000000;
    sub_1004BBDD4(v21);
    v19 = a2 / 1000.0;
    sub_1004BBDB4();
    v22._countAndFlagsBits = 0x207A486B20;
    v22._object = 0xE500000000000000;
    sub_1004BBDD4(v22);
    v23._countAndFlagsBits = UInt32.formatName.getter(a3);
    sub_1004BBDC4(v23);

    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_1004BBDD4(v24);
    sub_1004BBE04();
    (*(v8 + 16))(v11, v13, v7);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v16 = qword_100617118;
    sub_1004B6DF4();
    v17 = sub_1004BBED4();
    (*(v8 + 8))(v13, v7);
    return v17;
  }

  return result;
}

uint64_t _sSo20MPCPlayerAudioFormatC9MusicCoreE12inputDetailsSSSgvg_0()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return sub_10011D550(v1, v2, v3);
}

uint64_t MPModelObject.bestIdentifier(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v7 = [v8 innerObject]) == 0)
  {
LABEL_6:
    v7 = v3;
  }

LABEL_7:
  v9 = v7;
  if (a2 == 1)
  {
    v10 = [v7 identifiers];
    if (a1 == 2)
    {
      ObjectType = swift_getObjectType();
      v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, v10);
    }

    else if (a1 == 1 || (v11 = swift_getObjectType(), v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, 2, 1u, v10), !v13))
    {
      v12 = sub_10011F568(v9);
    }

    v16 = v12;
  }

  else
  {
    v14 = swift_getObjectType();
    v15 = [v9 identifiers];
    v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v14, a1, a2, v15);
  }

  return v16;
}

uint64_t sub_10011DAC4()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10011DBE0;
  v2 = swift_continuation_init();
  v0[17] = sub_100003ABC(&qword_100604000);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10011DD78;
  v0[13] = &unk_1005B14E8;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10011DBE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10011DD0C;
  }

  else
  {
    v2 = sub_10011DCF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011DD0C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_10011DD78(uint64_t a1, void *a2, void *a3)
{
  result = sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(&qword_100604C30);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MPArtworkCatalog.requestImage(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10011FA00;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000E26FC;
  v7[3] = &unk_1005B1538;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void sub_10011DF30(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    sub_100124EF8();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = sub_1004BA954();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  [a1 setDestinationScale:0.0];
  [a1 setFittingSize:{a2, a3}];
  v11 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10011FA80;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10012509C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E26FC;
  aBlock[3] = &unk_1005B15D8;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  sub_1004BA934();
  sub_1004BCC94();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int sub_10011E270(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    sub_100003ABC(&qword_100604C30);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v5 = a1;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = v4;

  return sub_1004BCCA4();
}

uint64_t MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004BD9A4();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = sub_10011FAC4;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10011E518;
  v14[3] = &unk_1005B1628;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_10011E418(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100004DE4(v9, v13);
  swift_dynamicCast();
  a3(v11, a2);
  return (*(v8 + 8))(v11, a5);
}

uint64_t sub_10011E518(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return sub_100004C6C(v8);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100009130(0, &qword_100604008);
  if (swift_dynamicCast())
  {
    v2 = [v7 imageArtworkInfo];
    if (v2)
    {
      v3 = v2;
      [v2 originalSize];
      v5 = v4;

      return v5;
    }
  }

  return 0;
}

uint64_t MPArtworkCatalog.expectedRatio.getter()
{
  v0 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v2 & 1) != 0 || v1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v0 / v1;
  }

  return result;
}

id static MPArtworkCatalog.monogram(for:layoutDirection:)(uint64_t a1, uint64_t a2, id a3, char a4)
{
  sub_100003ABC(&unk_100604010);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = sub_1004BD9B4();
    __break(1u);
    return result;
  }

  return _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(a1, a2, a3);
}

id static MPMediaLibrary.device.getter()
{
  result = [swift_getObjCClassFromMetadata() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void MPMediaPickerConfiguration.musicTypeIdentifiers.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = NSBundle.exportedTypeDeclarations.getter();

  if (!v3)
  {
    return;
  }

  v4 = [v1 typeIdentifiers];
  v5 = sub_1004BC2A4();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      sub_10011ECC0(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = sub_1004BC2A4();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    sub_100123F50(v11);

    return;
  }

  v9 = 0;
  v10 = v3 + 32;
  v11 = _swiftEmptyArrayStorage;
  v44 = v3 + 32;
  v45 = v3;
  v42 = v8;
  while (2)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_52;
    }

    v46 = v11;
    v47 = v9;
    v12 = *(v3 + 16);

    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v10 + 8 * v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_10:
        if (v12 == ++v15)
        {
          goto LABEL_23;
        }
      }

      v17 = sub_1000346D4(0xD000000000000010, 0x8000000100501050);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      sub_100004DE4(*(v16 + 56) + 32 * v17, v49);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v19 = v50;
      if (!v50)
      {
        goto LABEL_10;
      }

      v20 = v49[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100017CC8(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_100017CC8((v21 > 1), v22 + 1, 1, v14);
      }

      v13 = v15 + 1;
      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v10 = v44;
      v3 = v45;
    }

    while (v12 - 1 != v15);
LABEL_23:
    v24 = *(v14 + 2);
    if (!v24)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_37:

      v11 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100017A8C(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = sub_100017A8C((v39 > 1), v40 + 1, 1, v11);
      }

      v9 = v47 + 1;
      v11[2] = (v40 + 1);
      v11[v40 + 4] = v48;
      v8 = v42;
      if (v47 + 1 == v43)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = 0;
  v26 = v14 + 40;
  v48 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = &v26[16 * v25];
  v28 = v25;
  while (v28 < *(v14 + 2))
  {
    v30 = *(v27 - 1);
    v29 = *v27;
    v25 = v28 + 1;

    v31 = sub_1004BBE24();
    v32 = sub_1004BBE24();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100015080(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_100015080((v36 > 1), v37 + 1, 1);
        v34 = v49[0];
      }

      v34[2] = (v37 + 1);
      v48 = v34;
      v38 = &v34[2 * v37];
      v38[4] = v30;
      v38[5] = v29;
      v26 = v14 + 40;
      if (v24 - 1 != v28)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    v27 += 16;
    ++v28;
    if (v24 == v25)
    {
      goto LABEL_37;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

char *sub_10011ECC0(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_100017CC8(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_100017CC8((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x8000000100501390;
  if ((a1 & 0x800) != 0)
  {
LABEL_7:
    v6 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v6;
    }

    else
    {
      result = sub_100017CC8(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_100017CC8((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x8000000100501370;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100051DEC(v10);
  if (BYTE8(v10[0]))
  {
    return [v0 showsCatalogContent];
  }

  else
  {
    return 0;
  }
}

id MPMediaPickerConfiguration.supportsCloudLibrary.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100051DEC(v10);
  if (BYTE9(v10[0]))
  {
    return [v0 showsCloudItems];
  }

  else
  {
    return 0;
  }
}

unint64_t MPIdentifierSet.publicLoggingDescription.getter()
{
  v1._countAndFlagsBits = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v1._object)
  {
    sub_1004BC024(v1);

    v22._countAndFlagsBits = 59;
    v22._object = 0xE100000000000000;
    sub_1004BC024(v22);
    v2 = sub_100017CC8(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100017CC8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x507972617262696CLL;
    *(v5 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v6 = [v0 universalStore];
  if (v6)
  {
    v7 = [v6 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_1004BBE64();
      v10 = v9;

      sub_1004BD404(20);

      v23._countAndFlagsBits = v8;
      v23._object = v10;
      sub_1004BC024(v23);

      v24._countAndFlagsBits = 59;
      v24._object = 0xE100000000000000;
      sub_1004BC024(v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100017CC8(0, *(v2 + 2) + 1, 1, v2);
      }

      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_100017CC8((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 2) = v12 + 1;
      v13 = &v2[16 * v12];
      *(v13 + 4) = 0xD000000000000011;
      *(v13 + 5) = 0x8000000100501090;
    }
  }

  v14._countAndFlagsBits = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v14._object)
  {
    sub_1004BC024(v14);

    v25._countAndFlagsBits = 59;
    v25._object = 0xE100000000000000;
    sub_1004BC024(v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100017CC8(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100017CC8((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x3D65726F7473;
    *(v17 + 5) = 0xE600000000000000;
  }

  sub_1004BD404(19);

  sub_100003ABC(&unk_100603590);
  sub_100030FE4();
  v18 = sub_1004BBD34();
  v20 = v19;

  v26._countAndFlagsBits = v18;
  v26._object = v20;
  sub_1004BC024(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_1004BC024(v27);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = sub_1004BDB64().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = sub_1004BBE64();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id MPIdentifierSet.bestStoreIdentifier.getter()
{
  result = [v0 universalStore];
  if (result)
  {
    v2 = result;
    v3 = [result subscriptionAdamID];
    v4 = [v2 purchasedAdamID];
    v5 = [v2 adamID];
    if ((v3 || v4 || v5) && (isa = sub_1004BDB64().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = sub_1004BBE64();

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return sub_10011F95C(a1, a3);
  }

  if (a2 != 1)
  {
    v6 = a1;
    result = sub_10011F95C(a1, a3);
    if (v8)
    {
      return result;
    }

    a1 = v6;
  }

  return sub_10011F71C(a1, a3, a4);
}

uint64_t sub_10011F568(void *a1)
{
  v10 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100124F84;
  *(v4 + 24) = v3;
  aBlock[4] = sub_100009350;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B1E80;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v10 == 2 || (v10 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  return result;
}

uint64_t sub_10011F71C(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v13;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100124EEC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100009350;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B1E08;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v5 performWithoutEnforcement:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v13 == 2 || (v13 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v11 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v11;
  }

  return result;
}

uint64_t sub_10011F8D8(char *a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v5 = 2;
  if (result && a2)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    result = (*(v6 + 8))(ObjectType, v6);
    v5 = result & 1;
  }

  *a1 = v5;
  return result;
}

id sub_10011F95C(uint64_t a1, void *a2)
{
  sub_100009130(0, &unk_100604280);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t sub_10011F9C8()
{

  return swift_deallocObject();
}

uint64_t sub_10011FA08()
{

  return swift_deallocObject();
}

uint64_t sub_10011FA40()
{

  return swift_deallocObject();
}

uint64_t sub_10011FA8C()
{

  return swift_deallocObject();
}

uint64_t MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100124260;
  *(v6 + 24) = v5;
  v10[4] = sub_100124268;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10011FE68;
  v10[3] = &unk_1005B16A0;
  v7 = _Block_copy(v10);

  v8 = [v4 initWithModelKind:a1 block:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_10011FC44(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceMediaLibrary];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100124E7C;
    *(v8 + 24) = v7;
    v11[4] = sub_10012511C;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10011FDEC;
    v11[3] = &unk_1005B1D90;
    v9 = _Block_copy(v11);

    [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }
}

uint64_t sub_10011FDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_10011FE68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return 1;
  }

  else
  {
    return [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  }
}

BOOL LibraryAddable.isUserLibraryAddable.getter()
{
  v1 = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  [v1 configureWithModelObject:v0];
  v2 = [v1 currentStatus];

  return (v2 - 1) < 3;
}

BOOL PlaylistAddable.isPlaylistAddEligible.getter(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return (!v4 || ([v4 isArtistUploadedContent] & 1) == 0) && ((*(*(a2 + 8) + 16))(a1) & 1) != 0;
}

Swift::String_optional __swiftcall MPModelObject.genericModelRelationshipKey()()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v0 = sub_1004BBE64();
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t MPModelObject.MediaKitPlayableKind.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F6D2D636973756DLL;
    v5 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v5 = 0x736D75626C61;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x736E6F6974617473;
    if (a1 != 5)
    {
      v6 = 0x69762D636973756DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73676E6F73;
    v2 = 0x73776F68732D7674;
    if (a1 != 2)
    {
      v2 = 0x646564616F6C7075;
    }

    if (a1)
    {
      v1 = 0x6F736970652D7674;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100120428(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MPModelObject.MediaKitPlayableKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MPModelObject.MediaKitPlayableKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1001204B0()
{
  v1 = *v0;
  sub_1004BDBA4();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100120514()
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v0);
  sub_1004BBF84();
}

Swift::Int sub_100120568()
{
  v1 = *v0;
  sub_1004BDBA4();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001205C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001205F8@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100120810()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001208E0()
{
  sub_1004BBF84();
}

Swift::Int sub_10012099C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100120A68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100120A98(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = sub_1004BD624();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (qword_1005FFE10 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    sub_100051DEC(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  sub_100051DEC(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50C0;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  isa = sub_1004BC284().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = sub_1004BBE64();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  sub_100003ABC(&unk_1006040A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50C0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  isa = sub_1004BC284().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()()
{
  v1 = [objc_opt_self() emptyPropertySet];
  sub_1004BC3B4();
  sub_100009130(0, &qword_100605EC0);
  swift_getWitnessTable();
  sub_1004BC1C4();

  return v2;
}

id sub_100121438(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = sub_1004B7044();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(sub_100003ABC(&unk_1006040B0) + 48));
    (*(v9 + 32))(v12, v14, v8);
    isa = sub_1004B6FD4().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v12, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  __chkstk_darwin(v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = [*v10 identifiers];

    return v13;
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    v15 = SnapshotIdentifier.Lazy.identifiers.getter(v4);
    (*(v5 + 8))(v8, v4);
    return v15;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v10;
  }

  (*(v5 + 32))(v8, v10, v4);
  v13 = SnapshotIdentifier.Lazy.object.getter(v4);
  (*(v5 + 8))(v8, v4);
  return v13;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v4 = SnapshotIdentifier.description.getter(a1);
  v5._countAndFlagsBits = 0x7463656A626F202CLL;
  v5._object = 0xEA0000000000203ALL;
  sub_1004BC024(v5);
  v3 = SnapshotIdentifier.object.getter(a1);
  swift_getWitnessTable();
  sub_1004BD974();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1004BC024(v6);

  return v4;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v8._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v8);

  v9._countAndFlagsBits = 2112062;
  v9._object = 0xE300000000000000;
  sub_1004BC024(v9);
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  sub_1004BC024(v10);

  v2 = SnapshotIdentifier.identifiers.getter(a1);
  v3 = [v2 description];
  v4 = sub_1004BBE64();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_1004BC024(v11);

  v12._countAndFlagsBits = 0x696669746E656469;
  v12._object = 0xEB000000003D7265;
  sub_1004BC024(v12);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = SnapshotIdentifier.identifiers.getter(a2);
  sub_1004BCFB4();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)()
{
  sub_100009130(0, &qword_100604490);
  v0 = type metadata accessor for SnapshotIdentifier();
  v1 = SnapshotIdentifier.identifiers.getter(v0);
  v2 = SnapshotIdentifier.identifiers.getter(v0);
  v3 = sub_1004BCFA4();

  return v3 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  sub_1004BDBA4();
  v2 = SnapshotIdentifier.identifiers.getter(a1);
  sub_1004BCFB4();

  return sub_1004BDBF4();
}

Swift::Int sub_100121CF0(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  SnapshotIdentifier.hash(into:)(v4, a2);
  return sub_1004BDBF4();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001245C8;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001245FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100122064;
  aBlock[3] = &unk_1005B1718;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100121ECC(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v20 = a3;
  v11 = type metadata accessor for SnapshotIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = *(sub_100003ABC(&unk_1006040B0) + 48);
  v16 = sub_1004B7044();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  *&v14[v15] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a4;
  a5(a1, v14, a7);
  *v20 = *a7;
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100122064(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1004B7044();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_1004B6FE4();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v20;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10012465C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100124694;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100122474;
  aBlock[3] = &unk_1005B1790;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100122304(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8)
{
  v19 = a7;
  v20 = a3;
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v16 = *(sub_100003ABC(&unk_1006040B0) + 48);
  sub_1004B7004();
  *&v15[v16] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a5;
  a6(a1, v15, a8);
  *v20 = *a8;
  return (*(v13 + 8))(v15, v12);
}

void sub_100122474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier();
  v12 = sub_1004BC304();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, sub_1001246BC, v11, a3, a4, a5);
  return v12;
}

uint64_t sub_100122580(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SnapshotIdentifier();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a2, v3);
  sub_1004BC3B4();
  return sub_1004BC364();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001246C8;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100125118;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100122474;
  aBlock[3] = &unk_1005B1808;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001227E4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v18 - v14);
  *v15 = a1;
  v15[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = a4;
  a5(a1, v15, a7);
  *a3 = *a7;
  return (*(v13 + 8))(v15, v12);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_1004B83A4();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_100124734;
  v12[6] = v11;
  v16[4] = sub_100124754;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100122C54;
  v16[3] = &unk_1005B1880;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100122B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100187F94(a6, a6);
  swift_allocObject();
  v14 = sub_1004BC2C4();
  *v15 = a1;
  v16 = sub_100150204(v14);
  type metadata accessor for SnapshotIdentifier();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_1004B83B4();
  v17._rawValue = v16;
  sub_1004B8394(v17);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  sub_1004B8384();
  swift_unknownObjectRelease();
}

uint64_t sub_100122C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009130(0, &qword_100603540);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_1004B83A4();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10012477C;
  *(v8 + 24) = v7;
  v12[4] = sub_100124788;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100122FF4;
  v12[3] = &unk_1005B18F8;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v10 enumerateSectionsUsingBlock:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100122EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_100003ABC(&unk_1006040A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C50A0;
  *(v9 + 32) = sub_1004BBE64();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_1004B83B4();
  v11._rawValue = v9;
  sub_1004B8394(v11);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  sub_1004BBE64();
  sub_1004B8384();
}

void sub_100122FF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004B83A4();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  return static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v6, sub_1001247B0, v9, a1, a2, WitnessTable);
}

uint64_t sub_1001231A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v27 = a6;
  v28 = a1;
  v29 = a5;
  v9 = type metadata accessor for SnapshotIdentifier();
  v10 = sub_1004BD174();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_1004BD944();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = sub_1004BC2C4();
  v25 = *(v13 + 16);
  v25(v15, a2, v9);
  v16 = sub_100150204(v14);
  v17 = type metadata accessor for SnapshotIdentifier();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v32 = v9;
  v33 = v17;
  v34 = WitnessTable;
  v35 = v19;
  sub_1004B83B4();
  v20._rawValue = v16;
  sub_1004B8394(v20);

  v21 = v27;
  v22 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v29, v28, v21, a7, v22);
  v25(v12, v26, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_1004B8384();

  return (*(v30 + 8))(v12, v31);
}

uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C5070;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1004BBE64();
  *(v1 + 72) = v4;
  isa = sub_1004BC284().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_1004BBE64();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = sub_1004BBE64();
  v15 = v14;

  result = _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (qword_1006000B0 != -1)
      {
        swift_once();
      }

      v19 = sub_1004B80B4();
      sub_100007084(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = sub_1004B8094();
      v22 = sub_1004BC9A4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = sub_1004BBE64();
        v28 = v27;

        v29 = sub_100012018(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        sub_100004C6C(v24);
      }

      v30 = qword_100600090;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1._countAndFlagsBits = 0x7373656C73736F6CLL;
        v1._object = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v1._object = 0x8000000100501220;
        v1._countAndFlagsBits = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v1._countAndFlagsBits = 0x416C616974617073;
        v1._object = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v1._countAndFlagsBits = 0x6574537973736F6CLL;
        v1._object = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v1._countAndFlagsBits = 0x6D744179626C6F64;
        v1._object = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v1._countAndFlagsBits = 0x64754179626C6F64;
        v1._object = 0xEA00000000006F69;
LABEL_16:
        sub_1004BC024(v1);
        goto LABEL_17;
    }
  }

  v3._countAndFlagsBits = sub_1004BD934();
  sub_1004BC024(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_1004BC024(v4);
  v5._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v5._object = 0xE800000000000000;
  sub_1004BC024(v5);

LABEL_17:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1004BC024(v6);
  return 0xD00000000000001FLL;
}

id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004BBE64();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(v3, v5, v8);

  return v9;
}

uint64_t MPModelTVSeason.title.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001247F4;
  *(v3 + 24) = v2;
  v9[4] = sub_1000081FC;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B1970;
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

uint64_t sub_100123C0C(void *a1, uint64_t *a2)
{
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = sub_1004BBDF4();
  __chkstk_darwin(v12 - 8);
  if ([a1 number] < 1)
  {
    v18 = [a1 show];
    if (v18 && (v19 = v18, v20 = [v18 title], v19, v20))
    {
      v21 = sub_1004BBE64();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    *a2 = v21;
    a2[1] = v23;
  }

  else
  {
    sub_1004BBDE4();
    v26._countAndFlagsBits = 0x206E6F73616553;
    v26._object = 0xE700000000000000;
    sub_1004BBDD4(v26);
    v24[1] = [a1 number];
    sub_1004BBDB4();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_1004BBDD4(v27);
    sub_1004BBE04();
    (*(v6 + 16))(v9, v11, v5);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v13 = qword_100617118;
    sub_1004B6DF4();
    v14 = sub_1004BBED4();
    v16 = v15;
    (*(v6 + 8))(v11, v5);
    *a2 = v14;
    a2[1] = v16;
  }
}

uint64_t sub_100123F50(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = v5[3];
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_100003ABC(&unk_1006040A0);
          v14 = swift_allocObject();
          v19 = j__malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          v14[2] = v18;
          v14[3] = (2 * (v20 >> 4));
          v22 = (v14 + 4);
          v23 = v5[3] >> 1;
          v6 = &v14[2 * v23 + 4];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (v5[2])
          {
            v25 = (v5 + 4);
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            v5[2] = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        v6[1] = v13;
        v6 += 2;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = v5[3];
  if (v26 < 2)
  {
    return v5;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v2);
  v28 = (v27 - v2);
  if (!v15)
  {
    v5[2] = v28;
    return v5;
  }

LABEL_38:
  __break(1u);
  return result;
}

id _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1004BBE24();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MusicMonogramArtworkToken) initWithFullName:v4 rightToLeft:a3 == 1];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedMonogramArtworkDataSource];
  v9 = objc_allocWithZone(MPArtworkCatalog);
  v10 = v7;
  v11 = [v9 initWithToken:v10 dataSource:v8];

  return v11;
}

uint64_t _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5098;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A51A8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

id _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0()
{
  sub_100003ABC(&unk_1006040A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50A0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  sub_100003ABC(&qword_100604210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  *(v4 + 32) = sub_1004BBE64();
  *(v4 + 40) = v5;
  isa = sub_1004BC284().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_10003D14C(inited);
  swift_setDeallocating();
  sub_100124E04(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = sub_1004BC284().super.isa;

  sub_100009130(0, &qword_100605EC0);
  v10 = sub_1004BBC24().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id sub_100124518@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_100124590()
{

  return swift_deallocObject();
}

uint64_t sub_100124624()
{

  return swift_deallocObject();
}

uint64_t sub_1001246FC()
{

  return swift_deallocObject();
}

uint64_t sub_1001247BC()
{

  return swift_deallocObject();
}

unint64_t sub_100124800()
{
  result = qword_1006040C0;
  if (!qword_1006040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006040C0);
  }

  return result;
}

unint64_t sub_100124858()
{
  result = qword_1006040C8;
  if (!qword_1006040C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006040C8);
  }

  return result;
}

unint64_t sub_1001248B0()
{
  result = qword_1006040D0;
  if (!qword_1006040D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006040D0);
  }

  return result;
}

unint64_t sub_100124908()
{
  result = qword_1006040D8;
  if (!qword_1006040D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006040D8);
  }

  return result;
}

unint64_t sub_100124960()
{
  result = qword_1006040E0;
  if (!qword_1006040E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006040E0);
  }

  return result;
}

unint64_t sub_1001249B8()
{
  result = qword_1006040E8[0];
  if (!qword_1006040E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006040E8);
  }

  return result;
}

uint64_t sub_100124A28(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t _s20MediaKitPlayableKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20MediaKitPlayableKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100124BC0()
{
  result = type metadata accessor for SnapshotIdentifier.Lazy();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100124C40()
{
  sub_100124D0C();
  if (v0 <= 0x3F)
  {
    sub_100124D84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100124D0C()
{
  if (!qword_1006041F0)
  {
    sub_100003B68(&qword_1006041F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006041F0);
    }
  }
}

void sub_100124D84()
{
  if (!qword_100604200)
  {
    sub_1004B7044();
    sub_100003B68(&qword_1006041F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100604200);
    }
  }
}

uint64_t sub_100124E04(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100604218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100124EB4()
{

  return swift_deallocObject();
}

unint64_t sub_100124EF8()
{
  result = qword_100604290;
  if (!qword_100604290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604290);
  }

  return result;
}

uint64_t sub_100124F4C()
{

  return swift_deallocObject();
}

uint64_t sub_100124F98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100124FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_10012503C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

BOOL sub_10012512C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = sub_10012ADEC(v3);

  sub_100003ABC(&qword_100604398);
  v5 = sub_1004BB214();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C50C0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = sub_10012A6D0(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = sub_1004BB214();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v6 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v6 == enum case for AudioVariant.lossless(_:) || v6 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = sub_1004BB214();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (qword_100600670 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v6 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (qword_100600678 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v6 == enum case for AudioVariant.lossless(_:))
  {
    if (qword_100600688 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v6 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    if (qword_100600680 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.hiResLosslessLabel;
  }

  v8 = *v7;

  return v8;
}

uint64_t AudioVariant.badgeText.getter()
{
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_1004BB214();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for AudioVariant.lossless(_:) || v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    sub_1004BBDA4();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v14 = qword_100617118;
    sub_1004B6DF4();
    v15 = sub_1004BBED4();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  return v15;
}

uint64_t Array<A>.removingEquivalents()()
{
  v0 = sub_100003ABC(&qword_100604300);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1004BB214();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_10012ADEC(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = sub_1000FE8F8(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    sub_100129560(v6, v2);
    v11(v6, v3);
    sub_100007214(v2, &qword_100604300);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = sub_1000FE8F8(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    sub_100129560(v6, v2);
    v11(v6, v3);
    sub_100007214(v2, &qword_100604300);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BAF04();
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    sub_1004BAEF4();
LABEL_10:
    (*(v10 + 32))(a2, v6, v4);
    return (*(v10 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    sub_1004BAEE4();
    goto LABEL_10;
  }

  if (a1)
  {
    sub_1004BAED4();
    goto LABEL_10;
  }

  v7 = *(v10 + 56);

  return v7(a2, 1, 1, v4);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BBE14();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v68 - v10;
  v12 = sub_1004BAF04();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v68 - v17;
  (*(v13 + 16))(v68 - v17, v2, v12);
  sub_1004BAEF4();
  sub_10012B28C(&qword_100604308, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v19 = sub_1004BBD84();
  v20 = *(v13 + 8);
  v20(v16, v12);
  if (v19)
  {
    v20(v18, v12);
    sub_100115724(0, 0, v77);
    v22 = v77[0];
    result = v77[1];
    v24 = v77[2];
    v23 = v77[3];
    v25 = v79;
    v26 = v80;
    v27 = v81;
    v28 = v82;
    v29 = v78 & 0xFFFFFFFFFFFFFF00;
    v30 = v80 & 0xFFFFFFFFFFFFFF00;
    v31 = v78;
  }

  else
  {
    sub_1004BAEE4();
    v32 = sub_1004BBD84();
    v20(v16, v12);
    if (v32)
    {
      v20(v18, v12);
      sub_1004BBDA4();
      v33 = v75;
      v34 = v76;
      v35 = v75 + 16;
      v36 = *(v75 + 16);
      v36(v9, v11, v76);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v37 = qword_100617118;
      v38 = qword_100617118;
      sub_1004B6DF4();
      v39 = v38;
      v40 = sub_1004BBED4();
      v72 = v41;
      v73 = v40;
      v42 = *(v33 + 8);
      v42(v11, v34);
      v70 = v42;
      sub_1004BBDA4();
      v36(v9, v11, v34);
      sub_1004B6DF4();
      v68[1] = v37;
      v75 = sub_1004BBED4();
      v71 = v43;
      v42(v11, v34);
      sub_100003ABC(&qword_1006011F0);
      v44 = swift_allocObject();
      v68[0] = v35;
      v45 = v36;
      v69 = v36;
      v27 = v44;
      *(v44 + 16) = xmmword_1004C50C0;
      sub_1004BBDA4();
      v45(v9, v11, v34);
      sub_1004B6DF4();
      v46 = sub_1004BBED4();
      v48 = v47;
      v49 = v70;
      v70(v11, v34);
      *(v27 + 32) = 0x6C65636E6163;
      *(v27 + 40) = 0xE600000000000000;
      *(v27 + 48) = v46;
      *(v27 + 56) = v48;
      *(v27 + 64) = 0;
      *(v27 + 72) = 0;
      *(v27 + 80) = 0;
      sub_1004BBDA4();
      v69(v9, v11, v34);
      sub_1004B6DF4();
      v50 = sub_1004BBED4();
      v51 = v34;
      v53 = v52;
      v49(v11, v51);
      v23 = v71;
      result = v72;
      v24 = v75;
      v22 = v73;
      v25 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      *(v27 + 88) = 0x73676E6974746573;
      *(v27 + 96) = 0xE800000000000000;
      *(v27 + 104) = v50;
      *(v27 + 112) = v53;
      *(v27 + 120) = 2;
      *(v27 + 128) = &unk_1004CEEF8;
      *(v27 + 136) = 0;
      v26 = 1;
    }

    else
    {
      sub_1004BAED4();
      v54 = sub_1004BBD84();
      v20(v16, v12);
      v20(v18, v12);
      if (v54)
      {
        sub_1004BBDA4();
        v55 = v75;
        v56 = v76;
        v57 = *(v75 + 16);
        v57(v9, v11, v76);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v58 = qword_100617118;
        sub_1004B6DF4();
        v59 = v58;
        v60 = sub_1004BBED4();
        v72 = v61;
        v73 = v60;
        v62 = *(v55 + 8);
        v62(v11, v56);
        sub_1004BBDA4();
        v70 = v57;
        v57(v9, v11, v56);
        sub_1004B6DF4();
        v75 = sub_1004BBED4();
        v71 = v63;
        v62(v11, v56);
        sub_100003ABC(&qword_1006011F0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1004C50A0;
        sub_1004BBDA4();
        (v70)(v9, v11, v56);
        sub_1004B6DF4();
        v64 = sub_1004BBED4();
        v65 = v56;
        v67 = v66;
        v62(v11, v65);
        v23 = v71;
        result = v72;
        v22 = v73;
        v25 = 0;
        v28 = 0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        *(v27 + 32) = 0x6C65636E6163;
        *(v27 + 40) = 0xE600000000000000;
        v24 = v75;
        *(v27 + 48) = v64;
        *(v27 + 56) = v67;
        *(v27 + 64) = 0;
        v26 = 1;
        *(v27 + 72) = 0;
        *(v27 + 80) = 0;
      }

      else
      {
        v22 = 0;
        result = 0;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
      }
    }
  }

  *a1 = v22;
  a1[1] = result;
  a1[2] = v24;
  a1[3] = v23;
  a1[4] = v29 | v31;
  a1[5] = v25;
  a1[6] = v30 | v26;
  a1[7] = v27;
  a1[8] = v28;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1004BAD04();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BB384();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BB4D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = *(v10 + 16);
  v42 = v1;
  v15(&v37 - v13, v1, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v14, v9);
    v17 = *(v6 + 32);
    v17(v8, v14, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    v18 = sub_1000133B0(a1);
    return (v17)(v18, v8, v5);
  }

  else
  {
    v38 = a1;
    if (v16 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v14, v9);
      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v41;
      v21(v39, v14, v41);
      v23 = v38;
      v38[3] = v22;
      v23[4] = &protocol witness table for MusicVideo;
      v24 = sub_1000133B0(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (qword_1005FFF10 != -1)
      {
        swift_once();
      }

      v25 = sub_1004B80B4();
      sub_100007084(v25, static Logger.musicKit);
      v26 = v43;
      v15(v43, v42, v9);
      v27 = sub_1004B8094();
      v28 = sub_1004BC994();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        sub_10012B28C(&qword_100604310, &type metadata accessor for Track);
        v30 = sub_1004BD934();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = sub_100012018(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        sub_100004C6C(v42);
      }

      else
      {

        v34 = *(v10 + 8);
        v34(v26, v9);
      }

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return (v34)(v14, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (qword_1005FFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  sub_100003ABC(&qword_100602440);
  v6[7] = swift_task_alloc();
  v8 = sub_1004BAB74();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_100126DB8;

  return sub_1001273B4(a1, a2, v3);
}

uint64_t sub_100126DB8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100126F04, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100126F04()
{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30);
  if (!swift_dynamicCast() || (*(v0 + 120) & 1) != 0)
  {

    swift_willThrow();
LABEL_4:

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  sub_10012AF88(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100007214(*(v0 + 56), &qword_100602440);
LABEL_11:
    sub_10012AFF8();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  sub_10012B28C(&qword_100604320, &type metadata accessor for MusicPropertySource);
  if (sub_1004BBD84())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_100127180;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_1001273B4(v11, v9, v10);
}

uint64_t sub_100127180()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100127324;
  }

  else
  {
    v2 = sub_100127294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127294()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100127324()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001273B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1004BAD04();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602590);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_100003ABC(&qword_100601E48);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_1004BB384();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_1004BB4D4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1001275DC, 0, 0);
}

uint64_t sub_1001275DC()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 16);
  v4(v1, v0[4], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Track.song(_:))
  {
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[18] + 96))(v6, v0[17]);
    (*(v9 + 32))(v7, v6, v8);
    sub_100003ABC(&qword_100603C50);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_1004C4D40;
    sub_100003ABC(&qword_1006027E8);
    *(v10 + 32) = sub_1004BAA14();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = sub_10012B28C(&qword_1006027E0, &type metadata accessor for Song);
    *v11 = v0;
    v11[1] = sub_100127BD0;
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[3];
    v16 = &protocol witness table for Song;
    v17 = &protocol witness table for Song;
LABEL_5:

    return MusicItem<>.with(_:preferredSource:)(v13, v10, v15, v14, v16, v17, v12);
  }

  if (v5 == enum case for Track.musicVideo(_:))
  {
    v18 = v0[20];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    (*(v0[18] + 96))(v18, v0[17]);
    (*(v21 + 32))(v19, v18, v20);
    sub_100003ABC(&qword_100603C50);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_1004C4D40;
    sub_100003ABC(&qword_100604388);
    *(v10 + 32) = sub_1004BAA04();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = sub_10012B28C(&qword_100602788, &type metadata accessor for MusicVideo);
    *v22 = v0;
    v22[1] = sub_100128068;
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (qword_1005FFF10 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = sub_1004B80B4();
  sub_100007084(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = sub_1004B8094();
  v28 = sub_1004BC994();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    sub_10012B28C(&qword_100604310, &type metadata accessor for Track);
    v35 = sub_1004BD934();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = sub_100012018(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    sub_100004C6C(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  sub_10012AFF8();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_100127BD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100128504;
  }

  else
  {
    v2 = sub_100127D00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127D00()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_1004BB354();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = sub_100003ABC(&qword_100602598);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    sub_100007214(v0[10], &qword_100602590);
    v10 = sub_1004BB434();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_100007214(v0[12], &qword_100601E48);
    sub_10012AFF8();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_10009F274(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_1004BB434();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[12];
  v16 = v0[2];
  v18(v0[16], v0[13]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

uint64_t sub_100128068()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100128604;
  }

  else
  {
    v2 = sub_100128198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100128198()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1004BACE4();
  v18 = *(v3 + 8);
  v18(v2, v4);
  v5 = sub_100003ABC(&qword_100602598);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[11];
  v9 = v0[9];
  if (v7 == 1)
  {
    sub_100007214(v0[9], &qword_100602590);
    v10 = sub_1004BB434();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_100007214(v0[11], &qword_100601E48);
    sub_10012AFF8();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[8], v0[5]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_10009F274(v0[11]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_1004BB434();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[11];
  v16 = v0[2];
  v18(v0[8], v0[5]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

uint64_t sub_100128504()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100128604()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString sub_10012870C()
{
  result = sub_1004BBE24();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (qword_1005FFF08 != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (qword_1005FFF08 != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1004B6E64();
  __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1004BBE14();
  v5 = *(v35 - 8);
  v6 = __chkstk_darwin(v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_1004B7994();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004B79C4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v2, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v12 + 16))(v14, v33, v11);
    v20 = (*(v12 + 88))(v14, v11);
    if (v20 == enum case for MusicPin.Item.album(_:))
    {
      v32 = v11;
      v33 = v14;
      sub_1004BBDA4();
      v21 = v35;
      (*(v5 + 16))(v8, v10, v35);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v22 = qword_100617118;
      sub_1004B6DF4();
      v23 = sub_1004BBED4();
      (*(v5 + 8))(v10, v21);
      (*(v12 + 8))(v33, v32);
      return v23;
    }

    v24 = v35;
    if (v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
    {
      (*(v12 + 8))(v14, v11);
      return 0;
    }

    sub_1004BBDA4();
    (*(v5 + 16))(v8, v10, v24);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v29 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v5 + 8))(v10, v24);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (v19 != enum case for MusicPin.Action.play(_:) && v19 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v16 + 8))(v18, v15);
      return 0;
    }

    sub_1004BBDA4();
    v25 = v5;
    v26 = *(v5 + 16);
    v27 = v35;
    v26(v8, v10, v35);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v28 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v25 + 8))(v10, v27);
  }

  return v23;
}

uint64_t sub_100128ED8()
{
  sub_10012B28C(&qword_100604370, &type metadata accessor for Song);

  return sub_1004BAC64();
}

uint64_t sub_100128F64()
{
  sub_10012B28C(&qword_100604368, &type metadata accessor for MusicVideo);

  return sub_1004BAC64();
}

uint64_t sub_100128FF4()
{
  sub_10012B28C(&qword_100604360, &type metadata accessor for Playlist);

  return sub_1004BAC64();
}

uint64_t sub_100129080()
{
  sub_10012B28C(&qword_100604350, &type metadata accessor for Playlist.Folder);
  sub_10012B28C(&qword_100604358, &type metadata accessor for Playlist.Folder);

  return sub_1004BAC64();
}

uint64_t sub_10012913C()
{
  sub_10012B28C(&qword_100604340, &type metadata accessor for MusicPin);
  sub_10012B28C(&qword_100604348, &type metadata accessor for MusicPin);

  return sub_1004BAC64();
}

uint64_t sub_1001291F8()
{
  sub_10012B28C(&qword_100604330, &type metadata accessor for MusicPin.Item);
  sub_10012B28C(&qword_100604338, &type metadata accessor for MusicPin.Item);

  return sub_1004BAC64();
}

uint64_t sub_1001292B4()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.musicKit);
  sub_100007084(v0, static Logger.musicKit);
  return sub_1004B80A4();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005FFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001293D4(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1004BDBA4();
  ActionType.rawValue.getter(a1);
  sub_1004BBF84();

  v5 = sub_1004BDBF4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 52;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = ActionType.rawValue.getter(*(*(v4 + 48) + v7));
    v11 = v10;
    if (v9 == ActionType.rawValue.getter(a1) && v11 == v12)
    {
      break;
    }

    v14 = sub_1004BD9C4();

    if (v14)
    {
      goto LABEL_11;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 52;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019AB2C();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_100129D18(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_100129560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004BB214();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10012B28C(&qword_100603EA8, &type metadata accessor for AudioVariant);
  v31 = a1;
  v10 = sub_1004BBCD4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10012B28C(&qword_100603EB0, &type metadata accessor for AudioVariant);
      v19 = sub_1004BBD84();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10019AB40();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100129EDC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100129808(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1004BDBA4();
  Library.Menu.Identifier.rawValue.getter(a1);
  sub_1004BBF84();

  v5 = sub_1004BDBF4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 13;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 0xA:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 0xB:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 0xC:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v11 = v10 | 0x8000000000000000;
    v12 = 0xD000000000000029;
    v13 = "orites";
    switch(a1)
    {
      case 1:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v12 = 0xD000000000000023;
        v13 = "LibraryView.Playlists";
        break;
      case 3:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Artists";
        break;
      case 4:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Albums";
        break;
      case 5:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Songs";
        break;
      case 6:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.MadeForYou";
        break;
      case 7:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.MusicVideos";
        break;
      case 8:
        v12 = 0xD000000000000028;
        v13 = "LibraryView.Genres";
        break;
      case 9:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Compilations";
        break;
      case 10:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Composers";
        break;
      case 11:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Shows";
        break;
      case 12:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v14 = sub_1004BD9C4();

    if (v14)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B158();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_10012A1E4(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_100129C28(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1004BDB94();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B29C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10012A54C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_100129D18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1004BDBA4();
        ActionType.rawValue.getter(v10);
        sub_1004BBF84();

        v11 = sub_1004BDBF4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100129EDC(int64_t a1)
{
  v3 = sub_1004BB214();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1004BD2F4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10012B28C(&qword_100603EA8, &type metadata accessor for AudioVariant);
        v24 = sub_1004BBCD4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_10012A1E4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1004BDBA4();
        sub_1004BBF84();

        v10 = sub_1004BDBF4() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x10012A518);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

unint64_t sub_10012A54C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1004BDB94() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10012A6D0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_10012A870(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_10012B2D4(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_10012A870(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = sub_1004BB214();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_10012B28C(&qword_100603EA8, &type metadata accessor for AudioVariant);
      v17 = sub_1004BBCD4();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_10012B28C(&qword_100603EB0, &type metadata accessor for AudioVariant);
        v23 = sub_1004BBD84();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_1001A0580(v29, v27, v28, a4);
}

uint64_t _s8MusicKit12AudioVariantO0A4CoreE1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100604390);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = *(v5 + 56);
  v9 = sub_1004BB214();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v7, a1, v9);
  v11(&v7[v8], a2, v9);
  v12 = *(v10 + 88);
  v13 = v12(v7, v9);
  v14 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v13 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v16 = enum case for AudioVariant.dolbyAudio(_:);
  if (v13 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v12(&v7[v8], v9) != v14)
    {
LABEL_2:
      (*(v10 + 8))(&v7[v8], v9);
      return 1;
    }
  }

  else if (v13 == enum case for AudioVariant.lossless(_:))
  {
    v17 = v12(&v7[v8], v9);
    if (v17 != v14 && v17 != v16 && v17 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v20 = v12(&v7[v8], v9);
    if (v20 != v14 && v20 != v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v22 = *(v10 + 8);
    v22(&v7[v8], v9);
    v22(v7, v9);
  }

  return 0;
}

uint64_t sub_10012ADEC(uint64_t a1)
{
  v2 = sub_1004BB214();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10012B28C(&qword_100603EA8, &type metadata accessor for AudioVariant);
  result = sub_1004BC684();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1001998B4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10012AF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100602440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012AFF8()
{
  result = qword_100604318;
  if (!qword_100604318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604318);
  }

  return result;
}

unint64_t sub_10012B0A8()
{
  result = qword_100604328;
  if (!qword_100604328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604328);
  }

  return result;
}

uint64_t sub_10012B0FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10012B238();
  result = sub_1004BC684();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100199D40(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10012B170(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10012B1E4();
  result = sub_1004BC684();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10019A0E0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10012B1E4()
{
  result = qword_100604378;
  if (!qword_100604378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604378);
  }

  return result;
}

unint64_t sub_10012B238()
{
  result = qword_100604380;
  if (!qword_100604380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604380);
  }

  return result;
}

uint64_t sub_10012B28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012B2D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10012A870(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)()
{

  return sub_1004B80A4();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

uint64_t *OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (qword_1005FFF18 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t sub_10012B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10012BAC0();
  result = sub_1004BD164();
  *a4 = result;
  return result;
}

uint64_t sub_10012B60C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();

  return sub_100007084(v3, a2);
}

uint64_t sub_10012B6AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1004B80B4();
  sub_100007108(v3, a2);
  sub_100007084(v3, a2);
  return sub_1004B80A4();
}

uint64_t sub_10012B748@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  v6 = sub_100007084(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v7 = v6;
  v31 = a2;
  v32 = a3;
  v12 = sub_1004B6B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a5 + 16) - 8) + 48))(v6, 1) == 1)
  {
    v28 = a1;
    v30 = a4;
    v16 = sub_1004BC964();
    v17 = sub_1004B8094();
    v29 = v16;
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v27 = a6;
      v19 = v18;
      v26 = swift_slowAlloc();
      v33 = v26;
      *v19 = 136315650;
      sub_1004B6A14();
      v20 = sub_1004B6A24();
      v22 = v21;
      (*(v13 + 8))(v15, v12);
      v23 = sub_100012018(v20, v22, &v33);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      v24 = v32;
      *(v19 + 14) = v31;
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_100012018(v24, v30, &v33);
      _os_log_impl(&_mh_execute_header, v17, v29, "Unexpectedly found nil: %s:%ld %s", v19, 0x20u);
      swift_arrayDestroy();

      a6 = v27;
    }
  }

  return (*(*(a5 - 8) + 16))(a6, v7, a5);
}

uint64_t sub_10012BA90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10012BAC0()
{
  result = qword_1006090F0;
  if (!qword_1006090F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006090F0);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  v3 = sub_1004B6E64();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = [v1 title];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004BBE64();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v13;
    }
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v17 = [a1 name];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v13 = sub_1004BBE64();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_12:
    sub_1004BBDA4();
    (*(v5 + 16))(v8, v10, v4);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v22 = qword_100617118;
    sub_1004B6DF4();
    v13 = sub_1004BBED4();
    (*(v5 + 8))(v10, v4);
  }

  return v13;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_1004B68B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004B68E4();
  __chkstk_darwin(v11 - 8);
  MPModelSong.nowPlayingTitle(from:)(a1);
  sub_1004B68D4();
  sub_1004B68C4();
  result = [v3 isExplicitSong];
  if (result)
  {
    v20[1] = a3;
    v21 = a2;
    v13 = String.nonBreakingSpace.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];
    v16 = qword_100600718;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = (static ExplicitRestrictionsController.shared + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v22 = v14;
    v23 = v15;

    v24._countAndFlagsBits = v18;
    v24._object = v19;
    sub_1004BC024(v24);

    sub_1004B68D4();
    sub_1004B68C4();
    if (v21)
    {
      v21(v10);
    }

    sub_10012F4F4(&qword_1006043A0, &type metadata accessor for AttributedString);
    sub_1004B6884();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_100003ABC(&qword_1006011E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1004B68B4();
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v44 = &v37 - v17;
  __chkstk_darwin(v16);
  v41 = &v37 - v18;
  v19 = sub_1004B68E4();
  __chkstk_darwin(v19 - 8);
  if (a2 && (v20 = [a2 attributionLabel]) != 0)
  {
    v21 = v20;
    sub_1004BBE64();

    sub_1004B68D4();
    sub_1004B68C4();
    return (*(v43 + 56))(a3, 0, 1, v42);
  }

  else
  {
    v38 = v15;
    v39 = a3;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = (a1 + 32);
      v25 = v42;
      v26 = (v43 + 48);
      v27 = (v43 + 32);
      v28 = _swiftEmptyArrayStorage;
      v40 = v4;
      do
      {
        v45 = *v24;
        sub_10012C470(&v45, v4, v10);
        if ((*v26)(v10, 1, v25) == 1)
        {
          sub_100007214(v10, &qword_1006011E8);
        }

        else
        {
          v29 = *v27;
          v30 = v41;
          (*v27)(v41, v10, v25);
          v29(v44, v30, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1000186C4(0, v28[2] + 1, 1, v28);
          }

          v32 = v28[2];
          v31 = v28[3];
          if (v32 >= v31 >> 1)
          {
            v28 = sub_1000186C4(v31 > 1, v32 + 1, 1, v28);
          }

          v28[2] = (v32 + 1);
          v33 = v28 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32;
          v25 = v42;
          v29(v33, v44, v42);
          v4 = v40;
        }

        ++v24;
        --v23;
      }

      while (v23);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
      v25 = v42;
    }

    if (v28[2])
    {
      v34 = v38;
      sub_1004B6834();
      v35 = v39;
      Array<A>.joined(separator:)(v34, v28, v25, &protocol witness table for AttributedString, &protocol witness table for AttributedString, v39);

      v36 = v43;
      (*(v43 + 8))(v34, v25);
      return (*(v36 + 56))(v35, 0, 1, v25);
    }

    else
    {
      (*(v43 + 56))(v39, 1, 1, v25);
    }
  }
}

uint64_t sub_10012C470@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = sub_1004B6844();
  __chkstk_darwin(v36);
  v35[1] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_1006043B0);
  __chkstk_darwin(v7 - 8);
  v35[0] = v35 - v8;
  v9 = sub_1004BBE14();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004BBDF4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1004B68E4();
  __chkstk_darwin(v11 - 8);
  v12 = *a1;
  v13 = sub_10012C984(v12);
  v14 = [a2 hasLoadedValuesForPropertySet:v13];

  if (!v14)
  {
    v23 = sub_1004B68B4();
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }

  if (v12)
  {
    v15 = [a2 artist];
    v16 = a3;
    if (!v15)
    {
      goto LABEL_19;
    }

    v17 = v15;
    v18 = [v15 name];

    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = sub_1004BBE64();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      sub_1004B68D4();
      sub_1004B68C4();
LABEL_17:
      v33 = sub_1004B68B4();
      return (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
    }
  }

  else
  {
    v16 = a3;
    if (![a2 shouldShowComposer])
    {
      goto LABEL_19;
    }

    v25 = [a2 composer];
    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = v25;
    v27 = [v25 name];

    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = sub_1004BBE64();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_1004BBDE4();
      v38._countAndFlagsBits = 2128194;
      v38._object = 0xE300000000000000;
      sub_1004BBDD4(v38);
      v39._countAndFlagsBits = v28;
      v39._object = v30;
      sub_1004BBDC4(v39);

      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      sub_1004BBDD4(v40);
      sub_1004BBE04();
      v32 = sub_1004B6E64();
      (*(*(v32 - 8) + 56))(v35[0], 1, 1, v32);
      v37 = _swiftEmptyArrayStorage;
      sub_10012F4F4(&qword_1006043B8, &type metadata accessor for AttributedString.FormattingOptions);
      sub_100003ABC(&qword_1006043C0);
      sub_10012F53C();
      sub_1004BD2D4();
      sub_1004B6894();
      goto LABEL_17;
    }
  }

LABEL_19:
  v34 = sub_1004B68B4();
  return (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
}

id sub_10012C984(char a1)
{
  if (a1)
  {
    sub_100003ABC(&qword_100604210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = sub_1004BBE64();
    *(inited + 40) = v2;
    sub_100003ABC(&unk_1006040A0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C50A0;
    *(v3 + 32) = sub_1004BBE64();
    *(v3 + 40) = v4;
    isa = sub_1004BC284().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    sub_10003D14C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100604218);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_1004BC284().super.isa;
    sub_10012F5E0();
    v9.super.isa = sub_1004BBC24().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    sub_100003ABC(&unk_1006040A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004C50A0;
    *(v11 + 32) = sub_1004BBE64();
    *(v11 + 40) = v12;
    sub_100003ABC(&qword_100604210);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1004C50A0;
    *(v13 + 32) = sub_1004BBE64();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004C50A0;
    *(v15 + 32) = sub_1004BBE64();
    *(v15 + 40) = v16;
    v17 = sub_1004BC284().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    sub_10003D14C(v13);
    swift_setDeallocating();
    sub_100007214(v13 + 32, &qword_100604218);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_1004BC284().super.isa;

    sub_10012F5E0();
    v9.super.isa = sub_1004BBC24().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t sub_10012CCDC@<X0>(id *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1004B68B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;

  v11 = sub_10012EBC8(&v16);
  v12 = v16;
  __chkstk_darwin(v11);
  *(&v15 - 2) = v3;
  v13 = sub_100014A7C(a2, (&v15 - 4), v12);

  if (v13[2])
  {
    sub_1004B6834();
    Array<A>.joined(separator:)(v10, v13, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }
}

uint64_t BylineProviding.byline(with:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1004B68B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;

  v13 = sub_10012EBC8(&v18);
  v14 = v18;
  __chkstk_darwin(v13);
  *(&v17 - 4) = a2;
  *(&v17 - 3) = a3;
  *(&v17 - 2) = v4;
  v15 = sub_100014A7C(sub_10012ED08, (&v17 - 6), v14);

  if (v15[2])
  {
    sub_1004B6834();
    Array<A>.joined(separator:)(v12, v15, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }
}

uint64_t sub_10012D0DC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B6844();
  __chkstk_darwin(v4);
  v5 = sub_100003ABC(&qword_1006043B0);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_1004BBE14();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004BBDF4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004B68E4();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = sub_1004BB2C4();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1004BB2C4();
      sub_1004B68D4();
      sub_1004B68C4();
LABEL_12:
      v21 = sub_1004B68B4();
      return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    }
  }

  else if (sub_1004BB294())
  {
    v15 = sub_1004BB2D4();
    if (v16)
    {
      v17 = v16;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = v15;
        sub_1004BBDE4();
        v25._countAndFlagsBits = 2128194;
        v25._object = 0xE300000000000000;
        sub_1004BBDD4(v25);
        v26._countAndFlagsBits = v19;
        v26._object = v17;
        sub_1004BBDC4(v26);

        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        sub_1004BBDD4(v27);
        sub_1004BBE04();
        v20 = sub_1004B6E64();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        v24[3] = _swiftEmptyArrayStorage;
        sub_10012F4F4(&qword_1006043B8, &type metadata accessor for AttributedString.FormattingOptions);
        sub_100003ABC(&qword_1006043C0);
        sub_10012F53C();
        sub_1004BD2D4();
        sub_1004B6894();
        goto LABEL_12;
      }
    }
  }

  v23 = sub_1004B68B4();
  return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
}

uint64_t sub_10012D4E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v36 = sub_1004B6844();
  __chkstk_darwin(v36);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_1006043B0);
  __chkstk_darwin(v6 - 8);
  v35 = v34 - v7;
  v8 = sub_1004BBE14();
  __chkstk_darwin(v8 - 8);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BBDF4();
  __chkstk_darwin(v10 - 8);
  v34[0] = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BB4D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB384();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B68E4();
  __chkstk_darwin(v20 - 8);
  if ((a1 & 1) == 0)
  {
    if (sub_1004BB474())
    {
      (*(v13 + 16))(v15, a2, v12);
      if ((*(v13 + 88))(v15, v12) == enum case for Track.song(_:))
      {
        (*(v13 + 96))(v15, v12);
        (*(v17 + 32))(v19, v15, v16);
        v27 = sub_1004BB2D4();
        v29 = v28;
        (*(v17 + 8))(v19, v16);
        if (v29)
        {
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          v25 = v38;
          if (!v30)
          {

            v26 = 1;
            goto LABEL_16;
          }

          sub_1004BBDE4();
          v40._countAndFlagsBits = 2128194;
          v40._object = 0xE300000000000000;
          sub_1004BBDD4(v40);
          v41._countAndFlagsBits = v27;
          v41._object = v29;
          sub_1004BBDC4(v41);

          v42._countAndFlagsBits = 0;
          v42._object = 0xE000000000000000;
          sub_1004BBDD4(v42);
          sub_1004BBE04();
          v31 = sub_1004B6E64();
          (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
          v39 = _swiftEmptyArrayStorage;
          sub_10012F4F4(&qword_1006043B8, &type metadata accessor for AttributedString.FormattingOptions);
          sub_100003ABC(&qword_1006043C0);
          sub_10012F53C();
          sub_1004BD2D4();
          sub_1004B6894();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v13 + 8))(v15, v12);
      }
    }

LABEL_15:
    v26 = 1;
    v25 = v38;
    goto LABEL_16;
  }

  v21 = sub_1004BB494();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_15;
  }

  sub_1004BB494();
  sub_1004B68D4();
  v25 = v38;
  sub_1004B68C4();
LABEL_6:
  v26 = 0;
LABEL_16:
  v32 = sub_1004B68B4();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

uint64_t sub_10012DA90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_1004B6844();
  __chkstk_darwin(v34);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_1006043B0);
  __chkstk_darwin(v4 - 8);
  v33 = v32 - v5;
  v6 = sub_1004BBE14();
  __chkstk_darwin(v6 - 8);
  v32[1] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBDF4();
  __chkstk_darwin(v8 - 8);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB9B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BB384();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004B68E4();
  __chkstk_darwin(v18 - 8);
  if ((a1 & 1) == 0)
  {
    if (sub_1004BB9D4())
    {
      sub_1004BB9C4();
      if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v11 + 96))(v13, v10);
        (*(v15 + 32))(v17, v13, v14);
        v25 = sub_1004BB2D4();
        v27 = v26;
        (*(v15 + 8))(v17, v14);
        if (v27)
        {
          v28 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v28 = v25 & 0xFFFFFFFFFFFFLL;
          }

          v23 = v36;
          if (!v28)
          {

            v24 = 1;
            goto LABEL_16;
          }

          sub_1004BBDE4();
          v38._countAndFlagsBits = 2128194;
          v38._object = 0xE300000000000000;
          sub_1004BBDD4(v38);
          v39._countAndFlagsBits = v25;
          v39._object = v27;
          sub_1004BBDC4(v39);

          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          sub_1004BBDD4(v40);
          sub_1004BBE04();
          v29 = sub_1004B6E64();
          (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
          v37 = _swiftEmptyArrayStorage;
          sub_10012F4F4(&qword_1006043B8, &type metadata accessor for AttributedString.FormattingOptions);
          sub_100003ABC(&qword_1006043C0);
          sub_10012F53C();
          sub_1004BD2D4();
          sub_1004B6894();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v11 + 8))(v13, v10);
      }
    }

LABEL_15:
    v24 = 1;
    v23 = v36;
    goto LABEL_16;
  }

  v19 = sub_1004BB9F4();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_15;
  }

  sub_1004BB9F4();
  sub_1004B68D4();
  v23 = v36;
  sub_1004B68C4();
LABEL_6:
  v24 = 0;
LABEL_16:
  v30 = sub_1004B68B4();
  return (*(*(v30 - 8) + 56))(v23, v24, 1, v30);
}

uint64_t sub_10012E028@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_1004B6844();
  __chkstk_darwin(v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_1006043B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1004BBE14();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1004BBDF4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1004B68E4();
  __chkstk_darwin(v14 - 8);
  if (*a1 == 1)
  {
    v15 = a3[1];
    v16 = v15(a2, a3);
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v15(a2, a3);
      sub_1004B68D4();
      v20 = v33;
      sub_1004B68C4();
      v21 = sub_1004B68B4();
      return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    }
  }

  else if (a3[3](a2, a3))
  {
    v23 = a3[2](a2, a3);
    if (v24)
    {
      v25 = v24;
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = v23;
        sub_1004BBDE4();
        v35._countAndFlagsBits = 2128194;
        v35._object = 0xE300000000000000;
        sub_1004BBDD4(v35);
        v36._countAndFlagsBits = v27;
        v36._object = v25;
        sub_1004BBDC4(v36);

        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        sub_1004BBDD4(v37);
        sub_1004BBE04();
        v28 = sub_1004B6E64();
        (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
        v34 = _swiftEmptyArrayStorage;
        sub_10012F4F4(&qword_1006043B8, &type metadata accessor for AttributedString.FormattingOptions);
        sub_100003ABC(&qword_1006043C0);
        sub_10012F53C();
        sub_1004BD2D4();
        v29 = v33;
        sub_1004B6894();
        v30 = sub_1004B68B4();
        return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      }
    }
  }

  v31 = sub_1004B68B4();
  return (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = sub_1004BB4D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BB384();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    v10 = sub_1004BB2D4();
    (*(v7 + 8))(v9, v6);
    return v10;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_10012E714(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BB384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v3, a1);
  if ((*(v4 + 88))(v6, a1) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, a1);
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_1004BB2D4();
    (*(v8 + 8))(v10, v7);
    return v11;
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return 0;
  }
}

uint64_t Playlist.Entry.composerName.getter()
{
  v0 = sub_1004BB9B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BB384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BB9C4();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_1004BB2D4();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

Swift::Int sub_10012EBC8(id **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024DBA8(v2);
  }

  v3 = v2[2];
  v17[0] = (v2 + 4);
  v17[1] = v3;
  result = sub_1004BD8B4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *(v2 + v9 + 32);
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 = (v10 + 1);
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1004BC314();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    sub_10012ED90(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_10012ED2C()
{
  result = qword_1006043A8;
  if (!qword_1006043A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043A8);
  }

  return result;
}

uint64_t sub_10012ED90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10024DB80(v9);
      v9 = result;
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10012F2D0((*a3 + *v77), (*a3 + *v79), *a3 + v80, v83);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100018024(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_100018024((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v83;
    if (!*v83)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        sub_10012F2D0((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), *a3 + v73, v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10024DB80(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = sub_10024DAF4(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10012F2D0(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_10012F4F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10012F53C()
{
  result = qword_1006043C8;
  if (!qword_1006043C8)
  {
    sub_100003B68(&qword_1006043C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043C8);
  }

  return result;
}

unint64_t sub_10012F5E0()
{
  result = qword_100605EC0;
  if (!qword_100605EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100605EC0);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10012F6C8(a1, &v5);
  if (v6)
  {
    sub_10003E13C(&v5, v7);
    sub_1004BD5C4();
    sub_100004C6C(v7);
  }

  else
  {
    sub_10011CF58(&v5);
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    sub_1004BC024(v8);
  }
}

uint64_t sub_10012F6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100605110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012F738()
{
  if (qword_1005FFF48 != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (qword_1005FFF48 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (qword_1005FFF40 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

uint64_t sub_10012F860()
{
  sub_100015100(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_100015100((v0 > 1), (v1 + 1), 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_100015100((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = sub_10012B0FC(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
  return result;
}

uint64_t sub_10012F980(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10012F9E0@<X0>(void *a1@<X8>)
{
  if (qword_1005FFF40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  sub_10012FAB0();
  sub_1004BCBA4();
  return v1;
}

unint64_t sub_10012FAB0()
{
  result = qword_1006043D0;
  if (!qword_1006043D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043D0);
  }

  return result;
}

uint64_t UIMutableTraits.supportedMaterials.getter()
{
  sub_10012FAB0();
  sub_1004B81A4();
  return v1;
}

void (*UIMutableTraits.supportedMaterials.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_10012FAB0();
  sub_1004B81A4();
  return sub_10012FC64;
}

void sub_10012FC64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_10012FAB0();
    sub_1004B81B4();
  }

  else
  {
    *v2 = v3;
    sub_10012FAB0();
    sub_1004B81B4();
  }

  free(v2);
}

unint64_t sub_10012FD18()
{
  result = qword_1006043D8;
  if (!qword_1006043D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043D8);
  }

  return result;
}

unint64_t sub_10012FD70()
{
  result = qword_1006043E0;
  if (!qword_1006043E0)
  {
    sub_100003B68(&qword_1006043E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043E0);
  }

  return result;
}

unint64_t sub_10012FDE4(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_1004BD6A4();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_1004BD484();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100009130(0, a3);
    v10 = sub_1004BCFA4();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10012FEEC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000029;
    v7 = "orites";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Playlists";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Artists";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Albums";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Songs";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.MadeForYou";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.MusicVideos";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Genres";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Compilations";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Composers";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Shows";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_1004BD9C4();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100130268()
{
  result = swift_slowAlloc();
  qword_1006043F0 = result;
  return result;
}

uint64_t sub_100130290()
{
  result = swift_slowAlloc();
  qword_1006043F8 = result;
  return result;
}

uint64_t sub_1001302B8()
{
  result = swift_slowAlloc();
  qword_100604400 = result;
  return result;
}

uint64_t sub_1001302E0()
{
  result = swift_slowAlloc();
  qword_100604408 = result;
  return result;
}

id sub_100130338()
{
  v2.receiver = v0;
  v2.super_class = _s27WeakViewControllerReferenceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  sub_1001328A8(a1, &qword_1005FFF58, &qword_1006043F8);
}

id sub_100130504(void *a1, const void **a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (objc_getAssociatedObject(v2, *a2))
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_10011CF58(v9);
    return [v2 parentViewController];
  }

  _s27WeakViewControllerReferenceCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [v2 parentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  result = Strong;
  if (!Strong)
  {
    return [v2 parentViewController];
  }

  return result;
}

void UIViewController.playActivityRecommendationDataSourceViewController.setter(void *a1)
{
  sub_1001328A8(a1, &qword_1005FFF60, &qword_100604400);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return sub_1001306AC;
}

void sub_1001306AC(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    sub_1001328A8(value, &qword_1005FFF60, &qword_100604400);

    v3 = v2;
  }

  else
  {
    sub_1001328A8(*a1, &qword_1005FFF60, &qword_100604400);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (qword_1005FFF68 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_100604408))
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10011CF58(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1005FFF68 != -1)
  {
    swift_once();
  }

  v6 = qword_100604408;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_10003E428(a1, a2);
    isa = sub_1004B6B64().super.isa;
    sub_100004D7C(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, 3);

  return sub_100004D7C(a1, a2);
}

uint64_t UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(char a1)
{
  v3 = [v1 playActivityRecommendationData];
  if (!v3 && ((a1 & 1) == 0 || (v3 = [v1 playActivityForwardedRecommendationData]) == 0))
  {
    v9 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
    v5 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    return v5;
  }

  v4 = v3;
  v5 = sub_1004B6B74();
  v7 = v6;

  v8 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  v9 = v8;
  if (v7 >> 60 != 15)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    while (1)
    {
LABEL_8:
      v10 = [v9 playActivityRecommendationData];
      if (v10 || (a1 & 1) != 0 && (v10 = [v9 playActivityForwardedRecommendationData]) != 0)
      {
        v11 = v10;
        v5 = sub_1004B6B74();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (qword_1005FFF60 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, qword_100604400))
      {
        sub_1004BD284();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (!*(&v19 + 1))
      {
        break;
      }

      _s27WeakViewControllerReferenceCMa();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v16 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v13 >> 60 != 15)
      {
        v9 = Strong;
LABEL_28:

        return v5;
      }

      v9 = Strong;
      if (!Strong)
      {
        return v5;
      }
    }

    sub_10011CF58(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

uint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  sub_1004BBE64();

  return _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = sub_1004BBE24();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  sub_1004BBE64();

  *(a1 + 8) = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  return sub_100130EC4;
}

void sub_100130EC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = sub_1004BBE24();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50A0;
  v2 = [v0 playActivityFeatureName];
  v3 = sub_1004BBE64();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

uint64_t UIViewController.completePlayActivityFeatureNames.getter()
{
  result = v0;
  v2 = 0;
  do
  {
    v3 = result;
    v4 = [result playActivityFeatureNamesWithSourceChildViewController:v2];
    v5 = sub_1004BC2A4();

    sub_100023170(v5);
    result = [v3 playActivityFeatureNameSourceViewController];
    v2 = v3;
  }

  while (result);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage[2];
LABEL_4:
  v8 = &_swiftEmptyArrayStorage[2 * v6 + 5];
  while (1)
  {
    if (v7 == v6)
    {

      v15 = sub_1001312A4(_swiftEmptyArrayStorage);

      return v15;
    }

    if (v6 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v6;
    v10 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100015080(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100015080((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001312A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_10003B200(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UIViewController.combinedPlayActivityFeatureName.getter()
{
  v1 = [v0 completePlayActivityFeatureNames];
  sub_1004BC2A4();

  sub_100003ABC(&unk_100603590);
  sub_100132984();
  sub_10000E7F4();
  v2 = sub_1004BC234();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()()
{
  sub_10000E7F4();

  return sub_1004BC234();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = sub_1004BBE64();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(v3, v5);

  sub_100004D7C(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = sub_100009130(0, &qword_100604420);
  v7 = sub_1004BC2A4();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = sub_10012FDE4(v8, v7, &qword_100604420);
  if ((v11 & 1) == 0)
  {
    v12 = v9;
    if (v9 < 0)
    {
      goto LABEL_53;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v3 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_54:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v10;
      }

      result = sub_1004BD6A4();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (sub_1004BD6A4() >= v12)
      {
LABEL_6:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = v13 + 1;
              sub_1004BD464(v13);
              v13 = v14;
            }

            while (v12 != v14);
          }
        }

        else
        {
        }

        if (v3)
        {
          v6 = sub_1004BD6B4();
          v3 = v15;
          v2 = v16;
          v12 = v17;

          if (v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 = 0;
          v6 = v7 & 0xFFFFFFFFFFFFFF8;
          v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v12) | 1;
          if (v12)
          {
LABEL_18:
            sub_1004BD9F4();
            swift_unknownObjectRetain_n();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              swift_unknownObjectRelease();
              v19 = _swiftEmptyArrayStorage;
            }

            v20 = v19[2];

            if (!__OFSUB__(v12 >> 1, v2))
            {
              if (v20 == ((v12 >> 1) - v2))
              {
                v7 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                if (!v7)
                {
                  swift_unknownObjectRelease();
                  v7 = _swiftEmptyArrayStorage;
                }

                swift_unknownObjectRelease();
                goto LABEL_25;
              }

              goto LABEL_61;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            swift_unknownObjectRelease_n();
          }
        }

        sub_100132234(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  sub_100003ABC(&unk_1006040A0);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1004C50A0;
  v21 = [i playActivityFeatureName];
  v6 = sub_1004BBE64();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v6 = 0;
    v12 = &type metadata for String;
    while (1)
    {
      v23 = (v7 & 0xC000000000000001) != 0 ? sub_1004BD484() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = sub_1004BC2A4();

      v3 = *(v26 + 16);
      v27 = v8[2];
      v28 = v27 + v3;
      if (__OFADD__(v27, v3))
      {
        break;
      }

      v29 = v8[3] >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v3;
        }

        else
        {
          v33 = v8[2];
        }

        v8 = sub_100017CC8(1, v33, 1, v8);
        v27 = v8[2];
        v29 = v8[3] >> 1;
        if (*(v26 + 16))
        {
LABEL_37:
          if ((v29 - v27) < v3)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v3)
          {
            v30 = v8[2];
            v31 = __OFADD__(v30, v3);
            v32 = v30 + v3;
            if (v31)
            {
              goto LABEL_49;
            }

            v8[2] = v32;
          }

          goto LABEL_30;
        }
      }

      else if (v3)
      {
        goto LABEL_37;
      }

      if (v3)
      {
        goto LABEL_47;
      }

LABEL_30:
      ++v6;

      if (i == v6)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return v8;
}

uint64_t UITab.path.getter()
{
  sub_100003ABC(&qword_100603C50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C4D40;
  *(v1 + 32) = v0;
  v2 = v0;
  for (i = [v2 parent]; ; i = objc_msgSend(v2, "parent"))
  {
    v4 = i;

    if (!v4)
    {
      return v1;
    }

    v5 = v1 >> 62;
    if (!(v1 >> 62))
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = sub_1004BD6A4();
    if (result < 0)
    {
      break;
    }

    result = sub_1004BD6A4();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = sub_1004BD6A4();
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_18:
      __break(1u);
      return v1;
    }

LABEL_8:
    v2 = v4;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v5)
      {
LABEL_2:
        sub_1004BD6A4();
      }

LABEL_3:
      v1 = sub_1004BD494();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_1001329E8(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_100131D40(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1004BBE24();

  return v5;
}

uint64_t _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvg_0()
{
  if (qword_1005FFF50 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1006043F0))
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_10011CF58(v5);
  }

  return 0;
}

void sub_100131E90(void *a1, uint64_t a2, void *a3)
{
  v4 = qword_1005FFF50;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, qword_1006043F0, v5, 3);
}

void _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvs_0()
{
  if (qword_1005FFF50 != -1)
  {
    swift_once();
  }

  v1 = qword_1006043F0;
  value = sub_1004BBE24();

  objc_setAssociatedObject(v0, v1, value, 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  sub_100003ABC(&unk_100603590);
  sub_100132984();
  sub_10000E7F4();
  v0 = sub_1004BC234();

  return v0;
}

id *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = sub_1004BD6A4();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v5;
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004BD484();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 playActivityFeatureName];
      v10 = sub_1004BBE64();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v20;
        goto LABEL_25;
      }
    }

    v14 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100017CC8(0, v20[2] + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_100017CC8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v17 + 2) = v16 + 1;
    v5 = v17;
    v18 = &v17[16 * v16];
    *(v18 + 4) = v10;
    *(v18 + 5) = v12;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

void sub_100132234(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_100009130(0, &qword_100604420);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003ABC(&qword_100603C50);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10013232C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1004BD6A4();
LABEL_9:
  result = sub_1004BD494();
  *v1 = result;
  return result;
}

char *sub_1001323D0(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_10013248C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100132530(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_100132614(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ICURLBagKey(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001326D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100003ABC(&qword_100601250);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001327A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BagProvider.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1001328A8(id value, void *a2, const void **a3)
{
  v6 = value;
  if (value)
  {
    v7 = _s27WeakViewControllerReferenceCMa();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v9.receiver = v8;
    v9.super_class = v7;
    v6 = objc_msgSendSuper2(&v9, "init");
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v3, *a3, v6, 1);
}

unint64_t sub_100132984()
{
  result = qword_100604418;
  if (!qword_100604418)
  {
    sub_100003B68(&unk_100603590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604418);
  }

  return result;
}

char *sub_1001329E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100009130(0, &qword_100604450);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1004BD6A4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1004BD6A4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100132B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100009130(0, &qword_100604450);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo18UITabBarControllerC9MusicCoreE24playActivityFeatureNames015sourceChildViewC0SaySSGSo06UIViewC0CSg_tF_0()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    sub_100003ABC(&unk_1006040A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004C50A0;
    v18 = [v0 playActivityFeatureName];
    v19 = sub_1004BBE64();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    sub_100003ABC(&unk_1006040A0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004C50A0;
    v23 = [v3 playActivityFeatureName];
    v24 = sub_1004BBE64();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_100009130(0, &qword_100604420);
  v12 = sub_1004BC2A4();

  if (v12 >> 62)
  {
    result = sub_1004BD6A4();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = sub_1004BD484();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = sub_10012FDE4(v15, v10, &qword_100604450);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    sub_100003ABC(&unk_1006040A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C50A0;
    v28 = [v3 playActivityFeatureName];
    v29 = sub_1004BBE64();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = sub_1004BD6A4();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_100015080(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = sub_1004BD6A4();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_10003E300(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = sub_1004BD484();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = sub_1004BBE64();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_100015080((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = (v40 + 1);
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_100022EB4(_swiftEmptyArrayStorage);

  return v46;
}