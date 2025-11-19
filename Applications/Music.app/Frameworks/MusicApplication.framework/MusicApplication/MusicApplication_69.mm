uint64_t sub_60E32C(void *a1, uint64_t *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = sub_AB9230();
  __chkstk_darwin(v12 - 8);
  if ([a1 number] < 1)
  {
    v18 = [a1 show];
    if (v18 && (v19 = v18, v20 = [v18 title], v19, v20))
    {
      v21 = sub_AB92A0();
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
    sub_AB9220();
    v26._countAndFlagsBits = 0x206E6F73616553;
    v26._object = 0xE700000000000000;
    sub_AB9210(v26);
    v24[1] = [a1 number];
    sub_AB91F0();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_AB9210(v27);
    sub_AB9240();
    (*(v6 + 16))(v9, v11, v5);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v13 = qword_E71B20;
    sub_AB3550();
    v14 = sub_AB9320();
    v16 = v15;
    (*(v6 + 8))(v11, v5);
    *a2 = v14;
    a2[1] = v16;
  }
}

uint64_t sub_60E670(uint64_t result)
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
          v16 = *(v5 + 3);
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

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
          v14 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
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
        *(v6 + 1) = v13;
        v6 += 16;
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

  v26 = *(v5 + 3);
  if (v26 < 2)
  {
    return v5;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v2);
  v28 = v27 - v2;
  if (!v15)
  {
    *(v5 + 2) = v28;
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
    v4 = sub_AB9260();
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
  v3._rawValue = &off_D1BA78;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

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
  v3._rawValue = &off_D1BB88;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  isa = sub_AB9740().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_52A338(inited);
  swift_setDeallocating();
  sub_60F2FC(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10);
  v10 = sub_AB8FD0().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id sub_60EC10@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_60EC88()
{

  return swift_deallocObject();
}

uint64_t sub_60ECF4()
{

  return swift_deallocObject();
}

uint64_t sub_60EDCC()
{

  return swift_deallocObject();
}

uint64_t sub_60EE64()
{

  return swift_deallocObject();
}

unint64_t sub_60EEA8()
{
  result = qword_E10F10;
  if (!qword_E10F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F10);
  }

  return result;
}

unint64_t sub_60EF00()
{
  result = qword_E10F18;
  if (!qword_E10F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F18);
  }

  return result;
}

unint64_t sub_60EF58()
{
  result = qword_E10F20;
  if (!qword_E10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F20);
  }

  return result;
}

unint64_t sub_60EFB0()
{
  result = qword_E10F28;
  if (!qword_E10F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F28);
  }

  return result;
}

unint64_t sub_60F008()
{
  result = qword_E10F30;
  if (!qword_E10F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10F30);
  }

  return result;
}

unint64_t sub_60F060()
{
  result = qword_E10F38[0];
  if (!qword_E10F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E10F38);
  }

  return result;
}

uint64_t sub_60F110()
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

void sub_60F190()
{
  sub_60F204();
  if (v0 <= 0x3F)
  {
    sub_60F27C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_60F204()
{
  if (!qword_E11040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11048);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E11040);
    }
  }
}

void sub_60F27C()
{
  if (!qword_E11050)
  {
    sub_AB3820();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11048);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E11050);
    }
  }
}

uint64_t sub_60F2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_121_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_60F3AC()
{

  return swift_deallocObject();
}

unint64_t sub_60F3F0()
{
  result = qword_E110E0;
  if (!qword_E110E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E110E0);
  }

  return result;
}

uint64_t sub_60F444()
{

  return swift_deallocObject();
}

BOOL sub_60F558(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_615090(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111E8);
  v5 = sub_AB8550();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85F0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = sub_614974(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = sub_AB8550();
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
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (qword_E0D4C0 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v6 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (qword_E0D4C8 != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v6 == enum case for AudioVariant.lossless(_:))
  {
    if (qword_E0D4D8 != -1)
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

    if (qword_E0D4D0 != -1)
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
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_AB8550();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for AudioVariant.lossless(_:) || v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    sub_AB91E0();
    (*(v3 + 16))(v6, v8, v2);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v14 = qword_E71B20;
    sub_AB3550();
    v15 = sub_AB9320();
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
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11150);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_AB8550();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_615090(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = sub_5E9748(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    sub_613988(v6, v2);
    v11(v6, v3);
    sub_12E1C(v2, &qword_E11150);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = sub_5E9748(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    sub_613988(v6, v2);
    v11(v6, v3);
    sub_12E1C(v2, &qword_E11150);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_AB8230();
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    sub_AB8220();
LABEL_10:
    (*(v10 + 32))(a2, v6, v4);
    return (*(v10 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    sub_AB8210();
    goto LABEL_10;
  }

  if (a1)
  {
    sub_AB8200();
    goto LABEL_10;
  }

  v7 = *(v10 + 56);

  return v7(a2, 1, 1, v4);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v68 - v10;
  v12 = sub_AB8230();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v68 - v17;
  (*(v13 + 16))(v68 - v17, v2, v12);
  sub_AB8220();
  sub_615530(&qword_E11158, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v19 = sub_AB91C0();
  v20 = *(v13 + 8);
  v20(v16, v12);
  if (v19)
  {
    v20(v18, v12);
    sub_5FFF74(0, 0, v77);
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
    sub_AB8210();
    v32 = sub_AB91C0();
    v20(v16, v12);
    if (v32)
    {
      v20(v18, v12);
      sub_AB91E0();
      v33 = v75;
      v34 = v76;
      v35 = v75 + 16;
      v36 = *(v75 + 16);
      v36(v9, v11, v76);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v37 = qword_E71B20;
      v38 = qword_E71B20;
      sub_AB3550();
      v39 = v38;
      v40 = sub_AB9320();
      v72 = v41;
      v73 = v40;
      v42 = *(v33 + 8);
      v42(v11, v34);
      v70 = v42;
      sub_AB91E0();
      v36(v9, v11, v34);
      sub_AB3550();
      v68[1] = v37;
      v75 = sub_AB9320();
      v71 = v43;
      v42(v11, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
      v44 = swift_allocObject();
      v68[0] = v35;
      v45 = v36;
      v69 = v36;
      v27 = v44;
      *(v44 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v45(v9, v11, v34);
      sub_AB3550();
      v46 = sub_AB9320();
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
      sub_AB91E0();
      v69(v9, v11, v34);
      sub_AB3550();
      v50 = sub_AB9320();
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
      *(v27 + 128) = &unk_B1D898;
      *(v27 + 136) = 0;
      v26 = 1;
    }

    else
    {
      sub_AB8200();
      v54 = sub_AB91C0();
      v20(v16, v12);
      v20(v18, v12);
      if (v54)
      {
        sub_AB91E0();
        v55 = v75;
        v56 = v76;
        v57 = *(v75 + 16);
        v57(v9, v11, v76);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v58 = qword_E71B20;
        sub_AB3550();
        v59 = v58;
        v60 = sub_AB9320();
        v72 = v61;
        v73 = v60;
        v62 = *(v55 + 8);
        v62(v11, v56);
        sub_AB91E0();
        v70 = v57;
        v57(v9, v11, v56);
        sub_AB3550();
        v75 = sub_AB9320();
        v71 = v63;
        v62(v11, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_AF4EC0;
        sub_AB91E0();
        (v70)(v9, v11, v56);
        sub_AB3550();
        v64 = sub_AB9320();
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
  v3 = sub_AB8030();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB86C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB8860();
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
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return (v17)(boxed_opaque_existential_0, v8, v5);
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
      v24 = __swift_allocate_boxed_opaque_existential_0(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (qword_E0CD60 != -1)
      {
        swift_once();
      }

      v25 = sub_AB4BC0();
      __swift_project_value_buffer(v25, static Logger.musicKit);
      v26 = v43;
      v15(v43, v42, v9);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F40();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        sub_615530(&qword_E11160, &type metadata accessor for Track);
        v30 = sub_ABB330();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = sub_500C84(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_0, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
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
  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F290);
  v6[7] = swift_task_alloc();
  v8 = sub_AB7EA0();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_6111E4;

  return sub_6117E0(a1, a2, v3);
}

uint64_t sub_6111E4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_611330, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_611330()
{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
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

  sub_61522C(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_12E1C(*(v0 + 56), &qword_E0F290);
LABEL_11:
    sub_61529C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  sub_615530(&qword_E11170, &type metadata accessor for MusicPropertySource);
  if (sub_AB91C0())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_6115AC;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_6117E0(v11, v9, v10);
}

uint64_t sub_6115AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_611750;
  }

  else
  {
    v2 = sub_6116C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6116C0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_611750()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_6117E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_AB8030();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_AB86C0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_AB8860();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_611A08, 0, 0);
}

uint64_t sub_611A08()
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F638);
    *(v10 + 32) = sub_AB7D40();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = sub_615530(&qword_E0F630, &type metadata accessor for Song);
    *v11 = v0;
    v11[1] = sub_611FFC;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111D8);
    *(v10 + 32) = sub_AB7D30();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = sub_615530(&qword_E0F5D8, &type metadata accessor for MusicVideo);
    *v22 = v0;
    v22[1] = sub_612494;
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = sub_AB4BC0();
  __swift_project_value_buffer(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = sub_AB4BA0();
  v28 = sub_AB9F40();
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
    sub_615530(&qword_E11160, &type metadata accessor for Track);
    v35 = sub_ABB330();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = sub_500C84(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  sub_61529C();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_611FFC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_612930;
  }

  else
  {
    v2 = sub_61212C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_61212C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_AB8690();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    sub_12E1C(v0[10], &qword_E0F3E0);
    v10 = sub_AB8770();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_12E1C(v0[12], &qword_E0EC98);
    sub_61529C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_58B9C8(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_AB8770();
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

uint64_t sub_612494()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_612A30;
  }

  else
  {
    v2 = sub_6125C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6125C4()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_AB8010();
  v18 = *(v3 + 8);
  v18(v2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[11];
  v9 = v0[9];
  if (v7 == 1)
  {
    sub_12E1C(v0[9], &qword_E0F3E0);
    v10 = sub_AB8770();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_12E1C(v0[11], &qword_E0EC98);
    sub_61529C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[8], v0[5]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_58B9C8(v0[11]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_AB8770();
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

uint64_t sub_612930()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_612A30()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString sub_612B38()
{
  result = sub_AB9260();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (qword_E0CD58 != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (qword_E0CD58 != -1)
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
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_AB9250();
  v5 = *(v35 - 8);
  v6 = __chkstk_darwin(v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_AB4410();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB4440();
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
      sub_AB91E0();
      v21 = v35;
      (*(v5 + 16))(v8, v10, v35);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v22 = qword_E71B20;
      sub_AB3550();
      v23 = sub_AB9320();
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

    sub_AB91E0();
    (*(v5 + 16))(v8, v10, v24);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v29 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
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

    sub_AB91E0();
    v25 = v5;
    v26 = *(v5 + 16);
    v27 = v35;
    v26(v8, v10, v35);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v28 = qword_E71B20;
    sub_AB3550();
    v23 = sub_AB9320();
    (*(v25 + 8))(v10, v27);
  }

  return v23;
}

uint64_t sub_613304()
{
  sub_615530(&qword_E111C0, &type metadata accessor for Song);

  return sub_AB7F90();
}

uint64_t sub_613390()
{
  sub_615530(&qword_E111B8, &type metadata accessor for MusicVideo);

  return sub_AB7F90();
}

uint64_t sub_61341C()
{
  sub_615530(&qword_E111B0, &type metadata accessor for Playlist);

  return sub_AB7F90();
}

uint64_t sub_6134A8()
{
  sub_615530(&qword_E111A0, &type metadata accessor for Playlist.Folder);
  sub_615530(&qword_E111A8, &type metadata accessor for Playlist.Folder);

  return sub_AB7F90();
}

uint64_t sub_613564()
{
  sub_615530(&qword_E11190, &type metadata accessor for MusicPin);
  sub_615530(&qword_E11198, &type metadata accessor for MusicPin);

  return sub_AB7F90();
}

uint64_t sub_613620()
{
  sub_615530(&qword_E11180, &type metadata accessor for MusicPin.Item);
  sub_615530(&qword_E11188, &type metadata accessor for MusicPin.Item);

  return sub_AB7F90();
}

uint64_t sub_6136DC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.musicKit);
  __swift_project_value_buffer(v0, static Logger.musicKit);
  return sub_AB4BB0();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CD60 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_6137FC(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  ActionType.rawValue.getter(a1);
  sub_AB93F0();

  v5 = sub_ABB610();
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

    v14 = sub_ABB3C0();

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
    sub_6840F0();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_614140(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_613988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB8550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant);
  v31 = a1;
  v10 = sub_AB90D0();
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
      sub_615530(&qword_E10D00, &type metadata accessor for AudioVariant);
      v19 = sub_AB91C0();
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
      sub_684104();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_614304(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_613C30(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  Library.Menu.Identifier.rawValue.getter(a1);
  sub_AB93F0();

  v5 = sub_ABB610();
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
    switch(a1)
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
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_68471C();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_61460C(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_614050(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_ABB5B0();
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
    sub_684730();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2F187C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_614140(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_ABB5C0();
        ActionType.rawValue.getter(v10);
        sub_AB93F0();

        v11 = sub_ABB610() & v7;
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

uint64_t sub_614304(int64_t a1)
{
  v3 = sub_AB8550();
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

    v13 = sub_ABABD0();
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
        sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant);
        v24 = sub_AB90D0();
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

unint64_t sub_61460C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
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
    JUMPOUT(0x614940);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

uint64_t sub_614974(uint64_t isStackAllocationSafe, uint64_t a2)
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
    v10 = sub_614B14(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_615578(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_614B14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = sub_AB8550();
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
      sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant);
      v17 = sub_AB90D0();
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
        sub_615530(&qword_E10D00, &type metadata accessor for AudioVariant);
        v23 = sub_AB91C0();
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

  return sub_689A14(v29, v27, v28, a4);
}

uint64_t _s8MusicKit12AudioVariantO0A4CoreE1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E111E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = *(v5 + 56);
  v9 = sub_AB8550();
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

uint64_t sub_615090(uint64_t a1)
{
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_615530(&qword_E10CF8, &type metadata accessor for AudioVariant);
  result = sub_AB9B70();
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
      sub_682E84(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_61522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_61529C()
{
  result = qword_E11168;
  if (!qword_E11168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11168);
  }

  return result;
}

unint64_t sub_61534C()
{
  result = qword_E11178;
  if (!qword_E11178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11178);
  }

  return result;
}

uint64_t sub_6153A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_6154DC();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_683310(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_615414(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_615488();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_6836B0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_615488()
{
  result = qword_E111C8;
  if (!qword_E111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111C8);
  }

  return result;
}

unint64_t sub_6154DC()
{
  result = qword_E111D0;
  if (!qword_E111D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111D0);
  }

  return result;
}

uint64_t sub_615530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_615578@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_614B14(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)()
{

  return sub_AB4BB0();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (qword_E0CD70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

uint64_t *OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (qword_E0CD68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t sub_615788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_615D34();
  result = sub_ABA9A0();
  *a4 = result;
  return result;
}

uint64_t sub_6158B0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_AB4BC0();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_615950(uint64_t a1, uint64_t *a2)
{
  v3 = sub_AB4BC0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_AB4BB0();
}

uint64_t sub_6159EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_AB4BC0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v7 = v6;
  v31 = a2;
  v32 = a3;
  v12 = sub_AB31C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a5 + 16) - 8) + 48))(v6, 1) == 1)
  {
    v28 = a1;
    v30 = a4;
    v16 = sub_AB9F10();
    v17 = sub_AB4BA0();
    v29 = v16;
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v27 = a6;
      v19 = v18;
      v26 = swift_slowAlloc();
      v33 = v26;
      *v19 = 136315650;
      sub_AB30C0();
      v20 = sub_AB30D0();
      v22 = v21;
      (*(v13 + 8))(v15, v12);
      v23 = sub_500C84(v20, v22, &v33);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      v24 = v32;
      *(v19 + 14) = v31;
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_500C84(v24, v30, &v33);
      _os_log_impl(&dword_0, v17, v29, "Unexpectedly found nil: %s:%ld %s", v19, 0x20u);
      swift_arrayDestroy();

      a6 = v27;
    }
  }

  return (*(*(a5 - 8) + 16))(a6, v7, a5);
}

unint64_t sub_615D34()
{
  result = qword_E15F40;
  if (!qword_E15F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E15F40);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = [v1 title];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
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
  v13 = sub_AB92A0();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_12:
    sub_AB91E0();
    (*(v5 + 16))(v8, v10, v4);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v22 = qword_E71B20;
    sub_AB3550();
    v13 = sub_AB9320();
    (*(v5 + 8))(v10, v4);
  }

  return v13;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB2F50();
  __chkstk_darwin(v11 - 8);
  MPModelSong.nowPlayingTitle(from:)(a1);
  sub_AB2F40();
  sub_AB2F30();
  result = [v3 isExplicitSong];
  if (result)
  {
    v20[1] = a3;
    v21 = a2;
    v13 = String.nonBreakingSpace.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];
    v16 = qword_E0D568;

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
    sub_AB94A0(v24);

    sub_AB2F40();
    sub_AB2F30();
    if (v21)
    {
      v21(v10);
    }

    sub_619768(&qword_E111F0, &type metadata accessor for AttributedString);
    sub_AB2EE0();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_AB2F20();
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v44 = &v37 - v17;
  __chkstk_darwin(v16);
  v41 = &v37 - v18;
  v19 = sub_AB2F50();
  __chkstk_darwin(v19 - 8);
  if (a2 && (v20 = [a2 attributionLabel]) != 0)
  {
    v21 = v20;
    sub_AB92A0();

    sub_AB2F40();
    sub_AB2F30();
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
        sub_6166E4(&v45, v4, v10);
        if ((*v26)(v10, 1, v25) == 1)
        {
          sub_12E1C(v10, &qword_E0E038);
        }

        else
        {
          v29 = *v27;
          v30 = v41;
          (*v27)(v41, v10, v25);
          v29(v44, v30, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_506D10(0, v28[2] + 1, 1, v28);
          }

          v32 = v28[2];
          v31 = v28[3];
          if (v32 >= v31 >> 1)
          {
            v28 = sub_506D10(v31 > 1, v32 + 1, 1, v28);
          }

          v28[2] = v32 + 1;
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
      sub_AB2E30();
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

uint64_t sub_6166E4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = sub_AB2E50();
  __chkstk_darwin(v36);
  v35[1] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200);
  __chkstk_darwin(v7 - 8);
  v35[0] = v35 - v8;
  v9 = sub_AB9250();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9230();
  __chkstk_darwin(v10 - 8);
  v11 = sub_AB2F50();
  __chkstk_darwin(v11 - 8);
  v12 = *a1;
  v13 = sub_616BF8(v12);
  v14 = [a2 hasLoadedValuesForPropertySet:v13];

  if (!v14)
  {
    v23 = sub_AB2F20();
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

    v19 = sub_AB92A0();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      sub_AB2F40();
      sub_AB2F30();
LABEL_17:
      v33 = sub_AB2F20();
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

    v28 = sub_AB92A0();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_AB9220();
      v38._countAndFlagsBits = 2128194;
      v38._object = 0xE300000000000000;
      sub_AB9210(v38);
      v39._countAndFlagsBits = v28;
      v39._object = v30;
      sub_AB9200(v39);

      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      sub_AB9210(v40);
      sub_AB9240();
      v32 = sub_AB35C0();
      (*(*(v32 - 8) + 56))(v35[0], 1, 1, v32);
      v37 = _swiftEmptyArrayStorage;
      sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210);
      sub_6197B0();
      sub_ABABB0();
      sub_AB2F00();
      goto LABEL_17;
    }
  }

LABEL_19:
  v34 = sub_AB2F20();
  return (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
}

id sub_616BF8(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_AF4EC0;
    *(v3 + 32) = sub_AB92A0();
    *(v3 + 40) = v4;
    isa = sub_AB9740().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    sub_52A338(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E11068);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_AB9740().super.isa;
    sub_619854();
    v9.super.isa = sub_AB8FD0().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF4EC0;
    *(v11 + 32) = sub_AB92A0();
    *(v11 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_AF4EC0;
    *(v13 + 32) = sub_AB92A0();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF4EC0;
    *(v15 + 32) = sub_AB92A0();
    *(v15 + 40) = v16;
    v17 = sub_AB9740().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    sub_52A338(v13);
    swift_setDeallocating();
    sub_12E1C(v13 + 32, &qword_E11068);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_AB9740().super.isa;

    sub_619854();
    v9.super.isa = sub_AB8FD0().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t sub_616F50@<X0>(char *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;

  v11 = sub_618E3C(&v16);
  v12 = v16;
  __chkstk_darwin(v11);
  *(&v15 - 2) = v3;
  v13 = sub_503314(a2, (&v15 - 4), v12);

  if (v13[2])
  {
    sub_AB2E30();
    Array<A>.joined(separator:)(v10, v13, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }
}

uint64_t BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_AB2F20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;

  v13 = sub_618E3C(&v18);
  v14 = v18;
  __chkstk_darwin(v13);
  *(&v17 - 4) = a2;
  *(&v17 - 3) = a3;
  *(&v17 - 2) = v4;
  v15 = sub_503314(sub_618F7C, (&v17 - 6), v14);

  if (v15[2])
  {
    sub_AB2E30();
    Array<A>.joined(separator:)(v12, v15, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }
}

uint64_t sub_617350@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2E50();
  __chkstk_darwin(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9230();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB2F50();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = sub_AB8600();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_AB8600();
      sub_AB2F40();
      sub_AB2F30();
LABEL_12:
      v21 = sub_AB2F20();
      return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    }
  }

  else if (sub_AB85D0())
  {
    v15 = sub_AB8610();
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
        sub_AB9220();
        v25._countAndFlagsBits = 2128194;
        v25._object = 0xE300000000000000;
        sub_AB9210(v25);
        v26._countAndFlagsBits = v19;
        v26._object = v17;
        sub_AB9200(v26);

        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        sub_AB9210(v27);
        sub_AB9240();
        v20 = sub_AB35C0();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        v24[3] = _swiftEmptyArrayStorage;
        sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210);
        sub_6197B0();
        sub_ABABB0();
        sub_AB2F00();
        goto LABEL_12;
      }
    }
  }

  v23 = sub_AB2F20();
  return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
}

uint64_t sub_617754@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v36 = sub_AB2E50();
  __chkstk_darwin(v36);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200);
  __chkstk_darwin(v6 - 8);
  v35 = v34 - v7;
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB9230();
  __chkstk_darwin(v10 - 8);
  v34[0] = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB8860();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB86C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB2F50();
  __chkstk_darwin(v20 - 8);
  if ((a1 & 1) == 0)
  {
    if (sub_AB87C0())
    {
      (*(v13 + 16))(v15, a2, v12);
      if ((*(v13 + 88))(v15, v12) == enum case for Track.song(_:))
      {
        (*(v13 + 96))(v15, v12);
        (*(v17 + 32))(v19, v15, v16);
        v27 = sub_AB8610();
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

          sub_AB9220();
          v40._countAndFlagsBits = 2128194;
          v40._object = 0xE300000000000000;
          sub_AB9210(v40);
          v41._countAndFlagsBits = v27;
          v41._object = v29;
          sub_AB9200(v41);

          v42._countAndFlagsBits = 0;
          v42._object = 0xE000000000000000;
          sub_AB9210(v42);
          sub_AB9240();
          v31 = sub_AB35C0();
          (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
          v39 = _swiftEmptyArrayStorage;
          sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210);
          sub_6197B0();
          sub_ABABB0();
          sub_AB2F00();
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

  v21 = sub_AB87F0();
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

  sub_AB87F0();
  sub_AB2F40();
  v25 = v38;
  sub_AB2F30();
LABEL_6:
  v26 = 0;
LABEL_16:
  v32 = sub_AB2F20();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

uint64_t sub_617D04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_AB2E50();
  __chkstk_darwin(v34);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200);
  __chkstk_darwin(v4 - 8);
  v33 = v32 - v5;
  v6 = sub_AB9250();
  __chkstk_darwin(v6 - 8);
  v32[1] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB9230();
  __chkstk_darwin(v8 - 8);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB8D50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB86C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB2F50();
  __chkstk_darwin(v18 - 8);
  if ((a1 & 1) == 0)
  {
    if (sub_AB8D70())
    {
      sub_AB8D60();
      if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v11 + 96))(v13, v10);
        (*(v15 + 32))(v17, v13, v14);
        v25 = sub_AB8610();
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

          sub_AB9220();
          v38._countAndFlagsBits = 2128194;
          v38._object = 0xE300000000000000;
          sub_AB9210(v38);
          v39._countAndFlagsBits = v25;
          v39._object = v27;
          sub_AB9200(v39);

          v40._countAndFlagsBits = 0;
          v40._object = 0xE000000000000000;
          sub_AB9210(v40);
          sub_AB9240();
          v29 = sub_AB35C0();
          (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
          v37 = _swiftEmptyArrayStorage;
          sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210);
          sub_6197B0();
          sub_ABABB0();
          sub_AB2F00();
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

  v19 = sub_AB8D90();
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

  sub_AB8D90();
  sub_AB2F40();
  v23 = v36;
  sub_AB2F30();
LABEL_6:
  v24 = 0;
LABEL_16:
  v30 = sub_AB2F20();
  return (*(*(v30 - 8) + 56))(v23, v24, 1, v30);
}

uint64_t sub_61829C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_AB2E50();
  __chkstk_darwin(v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11200);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_AB9250();
  __chkstk_darwin(v12 - 8);
  v13 = sub_AB9230();
  __chkstk_darwin(v13 - 8);
  v14 = sub_AB2F50();
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
      sub_AB2F40();
      v20 = v33;
      sub_AB2F30();
      v21 = sub_AB2F20();
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
        sub_AB9220();
        v35._countAndFlagsBits = 2128194;
        v35._object = 0xE300000000000000;
        sub_AB9210(v35);
        v36._countAndFlagsBits = v27;
        v36._object = v25;
        sub_AB9200(v36);

        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        sub_AB9210(v37);
        sub_AB9240();
        v28 = sub_AB35C0();
        (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
        v34 = _swiftEmptyArrayStorage;
        sub_619768(&qword_E11208, &type metadata accessor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11210);
        sub_6197B0();
        sub_ABABB0();
        v29 = v33;
        sub_AB2F00();
        v30 = sub_AB2F20();
        return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      }
    }
  }

  v31 = sub_AB2F20();
  return (*(*(v31 - 8) + 56))(v33, 1, 1, v31);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = sub_AB8860();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB86C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    v10 = sub_AB8610();
    (*(v7 + 8))(v9, v6);
    return v10;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_618988(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB86C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v3, a1);
  if ((*(v4 + 88))(v6, a1) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, a1);
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_AB8610();
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
  v0 = sub_AB8D50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB86C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB8D60();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_AB8610();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

Swift::Int sub_618E3C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_735B5C(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = sub_ABB2B0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
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
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    sub_619004(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_618FA0()
{
  result = qword_E111F8;
  if (!qword_E111F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E111F8);
  }

  return result;
}

uint64_t sub_619004(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_735B34(v9);
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
        sub_619544((*a3 + *v77), (*a3 + *v79), *a3 + v80, v83);
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
      result = sub_506670(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_506670((v28 > 1), v29 + 1, 1, v9);
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
        sub_619544((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), *a3 + v73, v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_735B34(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = sub_735AA8(v33);
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

uint64_t sub_619544(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
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

uint64_t sub_619768(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6197B0()
{
  result = qword_E11218;
  if (!qword_E11218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11218);
  }

  return result;
}

unint64_t sub_619854()
{
  result = qword_E12D10;
  if (!qword_E12D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E12D10);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_61993C(a1, &v5);
  if (v6)
  {
    sub_9ACFC(&v5, v7);
    sub_ABAF70();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_607768(&v5);
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    sub_AB94A0(v8);
  }
}

uint64_t sub_61993C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6199AC()
{
  if (qword_E0CD98 != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (qword_E0CD98 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (qword_E0CD90 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

uint64_t sub_619AD4()
{
  sub_503998(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_503998((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_503998((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = sub_6153A0(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
  return result;
}

uint64_t sub_619BF4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_619C54@<X0>(void *a1@<X8>)
{
  if (qword_E0CD90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  sub_619D24();
  sub_ABA1B0();
  return v1;
}

unint64_t sub_619D24()
{
  result = qword_E11220;
  if (!qword_E11220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11220);
  }

  return result;
}

uint64_t UIMutableTraits.supportedMaterials.getter()
{
  sub_619D24();
  sub_AB4CE0();
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
  sub_619D24();
  sub_AB4CE0();
  return sub_619ED8;
}

void sub_619ED8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_619D24();
    sub_AB4CF0();
  }

  else
  {
    *v2 = v3;
    sub_619D24();
    sub_AB4CF0();
  }

  free(v2);
}

unint64_t sub_619F8C()
{
  result = qword_E11228;
  if (!qword_E11228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11228);
  }

  return result;
}

unint64_t sub_619FE4()
{
  result = qword_E11230;
  if (!qword_E11230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11230);
  }

  return result;
}

unint64_t sub_61A058(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v8 = sub_ABAE20();
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
    sub_13C80(0, a3);
    v10 = sub_ABA790();

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

uint64_t sub_61A160(char a1, uint64_t a2)
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
    v7 = "LibraryView.Playlists";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Artists";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Albums";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Songs";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.MadeForYou";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.MusicVideos";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Genres";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Compilations";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Composers";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Shows";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Downloaded";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Downloading";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "LibraryView.Playlists";
    switch(a1)
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
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Downloaded";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Downloading";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "ByPlaylistOrderAscending";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_ABB3C0();

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

uint64_t sub_61A4DC()
{
  result = swift_slowAlloc();
  qword_E11240 = result;
  return result;
}

uint64_t sub_61A504()
{
  result = swift_slowAlloc();
  qword_E11248 = result;
  return result;
}

uint64_t sub_61A52C()
{
  result = swift_slowAlloc();
  qword_E11250 = result;
  return result;
}

uint64_t sub_61A554()
{
  result = swift_slowAlloc();
  qword_E11258 = result;
  return result;
}

id sub_61A5AC()
{
  v2.receiver = v0;
  v2.super_class = _s27WeakViewControllerReferenceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  sub_61C994(a1, &qword_E0CDA8, &qword_E11248);
}

id sub_61A778(void *a1, const void **a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (objc_getAssociatedObject(v2, *a2))
  {
    sub_ABAB50();
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
    sub_607768(v9);
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
  sub_61C994(a1, &qword_E0CDB0, &qword_E11250);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return sub_61A920;
}

void sub_61A920(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    sub_61C994(value, &qword_E0CDB0, &qword_E11250);

    v3 = v2;
  }

  else
  {
    sub_61C994(*a1, &qword_E0CDB0, &qword_E11250);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (qword_E0CDB8 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E11258))
  {
    sub_ABAB50();
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
    sub_607768(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_E0CDB8 != -1)
  {
    swift_once();
  }

  v6 = qword_E11258;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_90090(a1, a2);
    isa = sub_AB3250().super.isa;
    sub_466A4(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, &dword_0 + 3);

  return sub_466A4(a1, a2);
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
  v5 = sub_AB3260();
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
        v5 = sub_AB3260();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (qword_E0CDB0 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, qword_E11250))
      {
        sub_ABAB50();
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

    sub_607768(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

uint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  sub_AB92A0();

  return _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = sub_AB9260();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  sub_AB92A0();

  *(a1 + 8) = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  return sub_61B138;
}

void sub_61B138(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = sub_AB9260();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF4EC0;
  v2 = [v0 playActivityFeatureName];
  v3 = sub_AB92A0();
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
    v5 = sub_AB9760();

    sub_511310(v5);
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

      v15 = sub_61B518(_swiftEmptyArrayStorage);

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
        result = sub_503918(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_503918((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_61B518(uint64_t result)
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
      v1 = sub_5285D0(v1);
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
  sub_AB9760();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  sub_61CA70();
  sub_4FD6CC();
  v2 = sub_AB96C0();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()()
{
  sub_4FD6CC();

  return sub_AB96C0();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = sub_AB92A0();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v3, v5);

  sub_466A4(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = sub_13C80(0, &qword_E11270);
  v7 = sub_AB9760();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = sub_61A058(v8, v7, &qword_E11270);
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

      result = sub_ABB060();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (sub_ABB060() >= v12)
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
              sub_ABAE00(v13);
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
          v6 = sub_ABB070();
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
            sub_ABB3F0();
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
              if (v20 == (v12 >> 1) - v2)
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

        sub_61C4A8(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_AF4EC0;
  v21 = [i playActivityFeatureName];
  v6 = sub_AB92A0();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
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
      v23 = (v7 & 0xC000000000000001) != 0 ? sub_ABAE20() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = sub_AB9760();

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

        v8 = sub_506314(&dword_0 + 1, v33, 1, v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF82B0;
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
      v6 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = sub_ABB060();
    if (result < 0)
    {
      break;
    }

    result = sub_ABB060();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = sub_ABB060();
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
        sub_ABB060();
      }

LABEL_3:
      v1 = sub_ABAE30();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *(&dword_18 + (v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_61CAD4(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_61BFB4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_AB9260();

  return v5;
}

uint64_t _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvg_0()
{
  if (qword_E0CDA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E11240))
  {
    sub_ABAB50();
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
    sub_607768(v5);
  }

  return 0;
}

void sub_61C104(void *a1, uint64_t a2, void *a3)
{
  v4 = qword_E0CDA0;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, qword_E11240, v5, &dword_0 + 3);
}

void _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvs_0()
{
  if (qword_E0CDA0 != -1)
  {
    swift_once();
  }

  v1 = qword_E11240;
  value = sub_AB9260();

  objc_setAssociatedObject(v0, v1, value, &dword_0 + 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  sub_61CA70();
  sub_4FD6CC();
  v0 = sub_AB96C0();

  return v0;
}

char *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = sub_ABB060();
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
        v7 = sub_ABAE20();
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
      v10 = sub_AB92A0();
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
      v14 = sub_506314(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_506314((v15 > 1), v16 + 1, 1, v14);
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

void sub_61C4A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_13C80(0, &qword_E11270);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
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

char *sub_61C5A0(char *result, uint64_t a2, uint64_t a3, char a4)
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

char *sub_61C65C(char *result, uint64_t a2, uint64_t a3)
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

unint64_t sub_61C700(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_61C7C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0A0);
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

uint64_t sub_61C894(uint64_t a1, uint64_t a2, uint64_t a3)
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
  result = sub_ABB060();
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
    result = sub_ABB060();
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

void sub_61C994(id value, void *a2, const void **a3)
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

  objc_setAssociatedObject(v3, *a3, v6, &dword_0 + 1);
}

unint64_t sub_61CA70()
{
  result = qword_E11268;
  if (!qword_E11268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E103E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11268);
  }

  return result;
}

char *sub_61CAD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  sub_13C80(0, &qword_E112A0);
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
    result = sub_ABB060();
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
        result = sub_ABB060();
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

uint64_t sub_61CC00(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_13C80(0, &qword_E112A0);
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
  result = sub_ABB060();
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
    result = sub_ABB060();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF4EC0;
    v18 = [v0 playActivityFeatureName];
    v19 = sub_AB92A0();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_AF4EC0;
    v23 = [v3 playActivityFeatureName];
    v24 = sub_AB92A0();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_13C80(0, &qword_E11270);
  v12 = sub_AB9760();

  if (v12 >> 62)
  {
    result = sub_ABB060();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = sub_ABAE20();
      }

      else
      {
        if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
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
      result = sub_61A058(v15, v10, &qword_E112A0);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
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
    result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_AF4EC0;
    v28 = [v3 playActivityFeatureName];
    v29 = sub_AB92A0();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = sub_ABB060();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_503918(0, v3 & ~(v3 >> 63), 0);
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
    v27 = sub_ABB060();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_52B4DC(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = sub_ABAE20();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = sub_AB92A0();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_503918((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_511054(_swiftEmptyArrayStorage);

  return v46;
}

unint64_t sub_61D1B8(unint64_t result, uint64_t a2, uint64_t a3)
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

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
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

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  v4 = forKey;
  sub_4FD6CC();

  NSUserDefaults.subscript.getter(&v4, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4._countAndFlagsBits;
    }
  }

  else
  {
    sub_607768(&v5);
  }

  return withDefault;
}

void sub_61D3C0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_AB9260();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1BE58;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  return v4 != 0;
}

Swift::Int sub_61D50C()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_61D580()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_5DE384();
  *(v4 + 48) = sub_4FD6CC();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_607768(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_61D6E4;
}

uint64_t sub_61D710(void (*a1)(void))
{
  a1();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_607768(&v3);
    return 0;
  }

  return result;
}

unint64_t sub_61D7A8()
{
  result = qword_E112A8;
  if (!qword_E112A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112A8);
  }

  return result;
}

uint64_t sub_61D81C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = &type metadata for Bool;
  v6[0] = a1;
  a2(a1);
  sub_4FD6CC();
  return NSUserDefaults.subscript.setter(v6, v4, a3);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_61D7A8();
  *(v4 + 48) = sub_4FD6CC();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_607768(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_61D964;
}

void sub_61D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v6 = &type metadata for Bool;
  v5[0] = v4;
  NSUserDefaults.subscript.setter(v5, a2, a3);

  free(v3);
}

Swift::Int sub_61D9D0()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_61DA44()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_61DAA4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_ABB140(a2, v8);

  *a3 = v6 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_70C54(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_61DC0C()
{
  result = qword_E112B0;
  if (!qword_E112B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112B0);
  }

  return result;
}

unint64_t sub_61DC84()
{
  result = qword_E112B8;
  if (!qword_E112B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112B8);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    sub_AB3050();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_61EE64;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_41A314;
  v4[3] = &block_descriptor_184;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_ABAB50();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_E0CDC8 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_61E004(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_AB9260();
    v6 = sub_AB9260();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

uint64_t static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_61EE80;
  *(v3 + 24) = v7;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_3_5;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_61E2F4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_E0CDD0 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_61E488(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_61EE60;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_41A314;
  v4[3] = &block_descriptor_6_1;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_E0CDD0 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_61E74C()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_61E7A8()
{
  result = sub_61E7C8();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_61E7C8()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_61EF88();
  swift_dynamicCast();
  v1 = sub_AB9260();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_AB9260();
  v4 = [v1 valueForBagKey:v3];

  if (v4)
  {
    sub_ABAB50();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = a1[2];
  if (!v15)
  {
    sub_61EE98();
    swift_allocError();
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0;
    *(v34 + 40) = 2;
    return swift_willThrow();
  }

  v47 = v12;
  v16 = a1[4];

  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > a1[3] >> 1)
  {
    a1 = sub_5068D4(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    v53 = a1;
  }

  sub_61C700(0, 1, 0);
  if (![v6 valueForBagKey:v17])
  {

    sub_61EE98();
    swift_allocError();
    *v35 = v17;
    *(v35 + 40) = 0;
    return swift_willThrow();
  }

  v42 = v11;
  v43 = a3;
  v45 = v14;
  v46 = a2;
  v44 = v5;
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_9ACFC(v51, v52);
  sub_808B0(v52, v51);
  v19 = a1[2];
  result = v17;
  v21 = result;
  v48 = result;
  if (v19)
  {
    v22 = 0;
    v23 = v48;
    while (v22 < a1[2])
    {
      v24 = a1[v22 + 4];
      sub_808B0(v51, v50);
      v21 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
      if (!swift_dynamicCast())
      {

        sub_61EE98();
        swift_allocError();
        v39 = v38;
        *v38 = v21;
        sub_808B0(v51, (v38 + 1));
        *(v39 + 40) = 1;
        goto LABEL_22;
      }

      v25 = v49;
      v26 = sub_AB92A0();
      if (!*(v25 + 16))
      {

LABEL_21:

        sub_61EE98();
        swift_allocError();
        *v40 = v21;
        *(v40 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v28 = sub_52215C(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v22;
      sub_808B0(*(v25 + 56) + 32 * v28, v50);

      __swift_destroy_boxed_opaque_existential_0(v51);
      result = sub_9ACFC(v50, v51);
      v23 = v21;
      if (v19 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_808B0(v51, v50);
    v32 = v45;
    v31 = v46;
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0(v51);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v33 = *(v31 - 8);
      (*(v33 + 56))(v32, 0, 1, v31);
      return (*(v33 + 32))(v43, v32, v31);
    }

    else
    {
      (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
      (*(v42 + 8))(v32, v47);
      sub_61EE98();
      swift_allocError();
      v37 = v36;
      *v36 = v21;
      sub_808B0(v51, (v36 + 1));
      *(v37 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v51);
      return __swift_destroy_boxed_opaque_existential_0(v52);
    }
  }

  return result;
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_61EE98()
{
  result = qword_E161C0;
  if (!qword_E161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E161C0);
  }

  return result;
}

unint64_t sub_61EEF0()
{
  result = qword_E112C0;
  if (!qword_E112C0)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E112C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8ICURLBagC9MusicCoreE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_61EF88()
{
  result = qword_E112C8;
  if (!qword_E112C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E112C8);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  sub_ABAD90(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_AB94A0(v4);

  return 0xD000000000000013;
}

uint64_t sub_61F1A4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71EB0);
  __swift_project_value_buffer(v0, qword_E71EB0);
  return sub_AB4BB0();
}

uint64_t sub_61F224@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v38 = a1;
  v39 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v36 = &v33 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_ABA9C0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 - 8);
  __chkstk_darwin(v17);
  v22 = &v33 - v21;
  (*(v23 + 16))(v19, v38, a4);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v26 = v39;
    v25(v16, 0, 1, v11);
    (*(v20 + 32))(v22, v16, v11);
    v27 = v36;
    (*(a5 + 32))(v22, v35, a3, a5);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    if ((*(v29 + 48))(v27, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v22, v11);
      result = (*(v33 + 8))(v27, v34);
      *v26 = 0u;
      v26[1] = 0u;
    }

    else
    {
      *(v26 + 3) = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
      (*(v29 + 32))(boxed_opaque_existential_0, v27, v28);
      return (*(v20 + 8))(v22, v11);
    }
  }

  else
  {
    v25(v16, 1, 1, v11);
    result = (*(v13 + 8))(v16, v12);
    v31 = v39;
    *v39 = 0u;
    v31[1] = 0u;
  }

  return result;
}

uint64_t sub_61F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 40);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_61F740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 48);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_61F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v19 = &v26 - v18;
  (*(v20 + 16))(v16, a1, a4);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v13, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v19, v13, AssociatedTypeWitness);
    if (v27)
    {
      v23 = v28;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition();
      v24 = swift_dynamicCastClass();
    }

    else
    {
      v24 = 0;
      v23 = v28;
    }

    (*(a5 + 56))(v19, v24, v23, a5);
    return (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v13, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, v9);
  }
}

void sub_61FB48(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_61FBDC(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_629800(a1, a2, a3, a4);

  sub_17654(*(a3 + 8));
  sub_17654(*(a3 + 24));
  sub_17654(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_629800(a1, a2, a3, a4);

  sub_17654(*(a3 + 8));
  sub_17654(*(a3 + 24));
  sub_17654(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_61FE58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_61F83C(a2, 0, ObjectType, AssociatedTypeWitness, v3);
}

uint64_t Gliss.Coordinator.dataSource.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = *(&stru_20.nsects + (swift_isaMask & *v1));
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_6200B4;
}

void sub_6200B4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *&stru_68.sectname[swift_isaMask & *v1];
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_307CC(v5);
  sub_307CC(v7);
  result = sub_307CC(v9);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v14 = *(a1 + 40);
  v6 = v1 + *&stru_68.sectname[swift_isaMask & *v1];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v12 = *(v6 + 3);
  v13 = *(v6 + 5);
  v9 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v9;
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 6) = *(a1 + 48);
  v10 = v3;
  sub_307CC(v4);
  sub_307CC(v5);
  sub_307CC(v14);

  sub_17654(v8);
  sub_17654(v12);
  sub_17654(v13);
  sub_625DE0();

  sub_17654(v4);
  sub_17654(v5);
  return sub_17654(v14);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6203CC;
}

void sub_6203CC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_625DE0();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_629BD0;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_620494(uint64_t a1, double (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11468);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_307CC(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_307CC(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_307CC(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&stru_68.segname[(swift_isaMask & *v3) - 8];
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_506D38(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_506D38((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)()
{
  v1 = *&stru_68.segname[(swift_isaMask & *v0) - 8];
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + v5);
      sub_13C80(0, &qword_E112E0);
      v7 = v6;
      v8 = sub_ABA790();

      if (v8)
      {
        break;
      }

      ++v4;
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v9 = sub_5207C4(v4);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  v10 = *(v1 + *&stru_68.segname[(v4 & v3) + 16]);
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_620B34(a1);
}

uint64_t sub_620B34@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_68.segname[swift_isaMask & *v1];
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_620C18(uint64_t a1)
{
  v3 = *&stru_68.segname[swift_isaMask & *v1];
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_620D04@<X0>(uint64_t a1@<X8>)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_620DF4(uint64_t a1)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_ABA9C0();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_629BD8(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *(&stru_20.maxprot + (swift_isaMask & *v5));
  v8 = *(&stru_20.filesize + (swift_isaMask & *v5));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v12;
  __chkstk_darwin(v11);
  v15 = v102 - v14;
  v16 = sub_ABA9C0();
  __chkstk_darwin(v16 - 8);
  v18 = v102 - v17;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(v102 - v17, 1, 1, AssociatedTypeWitness);
  v110 = v18;
  sub_620DF4(v18);
  v118 = v5;
  Gliss.Coordinator.item.getter(v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_AB91C0();
  v113 = v10;
  v21 = *(v10 + 8);
  v116 = v15;
  result = v21(v15, AssociatedTypeWitness);
  if ((v20 & 1) == 0)
  {
    v102[1] = AssociatedConformanceWitness;
    v106 = v8;
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    v24 = __swift_project_value_buffer(v23, qword_E71EB0);
    v26 = v113 + 16;
    v25 = *(v113 + 16);
    v25(v13, a1, AssociatedTypeWitness);
    v119 = v24;
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    v29 = os_log_type_enabled(v27, v28);
    v107 = v7;
    v105 = a1;
    v104 = v26;
    v103 = v25;
    if (v29)
    {
      v30 = AssociatedTypeWitness;
      v31 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      v122[0] = v102[0];
      *v31 = 136446210;
      v25(v116, v13, v30);
      v32 = sub_AB9350();
      v34 = v33;
      v21(v13, v30);
      v35 = sub_500C84(v32, v34, v122);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v27, v28, "Attempting to set item=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102[0]);

      AssociatedTypeWitness = v30;
    }

    else
    {

      v21(v13, AssociatedTypeWitness);
    }

    v36 = v118;
    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v112;
    v41 = v114;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v122[0] = v43;
      *v42 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v44 = sub_AB9350();
      v46 = sub_500C84(v44, v45, v122);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "  Current Item=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    v47 = sub_AB4BA0();
    v48 = sub_AB9F50();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v122[0] = v50;
      *v49 = 136446210;
      LOBYTE(v121[0]) = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D8);
      v51 = sub_AB9350();
      v53 = sub_500C84(v51, v52, v122);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_0, v47, v48, "  Direction=%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    v54 = v117;
    sub_629C00(v117, v41, v40);
    v55 = sub_AB4BA0();
    v56 = sub_AB9F50();
    sub_629BD8(v54, v41, v40);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121[0] = v58;
      *v57 = 136446210;
      v122[0] = v54;
      v122[1] = v41;
      v123 = v40;
      sub_629C00(v54, v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D0);
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, v121);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "  Animation=%{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    v62 = v105;
    v63 = *(v36 + *&stru_68.segname[(swift_isaMask & *v36) + 16]);
    if (v63 && (v64 = *(*v63 + 128), swift_beginAccess(), *(v63 + v64)))
    {

      v65 = sub_AB4BA0();
      v66 = sub_AB9F50();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v67 = 136446210;
        v120 = v63;
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v68 = sub_ABB330();
        v70 = sub_500C84(v68, v69, v122);

        *(v67 + 4) = v70;
        _os_log_impl(&dword_0, v65, v66, "  Ongoing Transition=%{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
      }

      v71 = v103;
      v72 = sub_AB4BA0();
      v73 = sub_AB9F50();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v62, AssociatedTypeWitness);
      v108(v75, 0, 1, AssociatedTypeWitness);
      sub_620DF4(v75);
      v76 = v116;
      v71(v116, v62, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v36;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v40;
      v87 = v36;
      sub_629C00(v85, v86, v40);
      Gliss.Transition.addCompletion(_:)(sub_629CF8, v81);
    }

    else
    {
      v88 = sub_622B70(v62, v115);
      v89 = v117;
      if (v40 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v40 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v41;
      }

      if (v40 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v40;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 8);
      *v93 = v90;
      *(v93 + 8) = v91;
      v96 = *(v93 + 16);
      *(v93 + 16) = v92;
      sub_629C00(v89, v41, v40);
      sub_629BEC(v94, v95, v96);
      sub_62388C(v88);
      v97 = v116;
      v103(v116, v62, AssociatedTypeWitness);
      sub_620C18(v97);
      v98 = *&stru_68.segname[(swift_isaMask & *v36) - 8];
      v99 = swift_beginAccess();
      v100 = *(v36 + v98);
      __chkstk_darwin(v99);
      v101 = v107;
      v102[-4] = v106;
      v102[-3] = v101;
      v102[-2] = v62;
      v102[-1] = v88;

      sub_61FB48(sub_62A998, &v102[-6], v100);

      sub_624B3C(v88, v40 < 0xFEu);
    }
  }

  return result;
}

void sub_621AE8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v71 = a8;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v87 = a4;
  v69 = *a1;
  v9 = *(v69 + 80);
  v10 = sub_ABA9C0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v68 - v12;
  v88 = v10;
  v80 = *(v10 - 8);
  v14 = __chkstk_darwin(v11);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v68 - v20;
  v22 = __chkstk_darwin(v19);
  v85 = &v68 - v23;
  v24 = *(v9 - 8);
  v25 = __chkstk_darwin(v22);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v82 = v13;
  v29 = sub_AB4BC0();
  v30 = __swift_project_value_buffer(v29, qword_E71EB0);
  v31 = *(v24 + 16);
  v83 = a3;
  v31(v28, a3, v9);
  v78 = v30;
  v32 = sub_AB4BA0();
  v33 = sub_AB9F50();
  v34 = os_log_type_enabled(v32, v33);
  v84 = v24;
  v76 = v18;
  v81 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v89[0] = v36;
    *v35 = 136446210;
    v31(v79, v28, v9);
    v37 = sub_AB9350();
    v39 = v38;
    v75 = *(v84 + 8);
    v75(v28, v9);
    v40 = sub_500C84(v37, v39, v89);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_0, v32, v33, "⌛️ Dequeuing item=%{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v24 = v84;

    v21 = v81;
  }

  else
  {

    v75 = *(v24 + 8);
    v75(v28, v9);
  }

  v41 = v85;
  sub_620D04(v85);
  v31(v21, v83, v9);
  (*(v24 + 56))(v21, 0, 1, v9);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = *(v80 + 16);
  v44 = v24;
  v45 = v80;
  v46 = v82;
  v47 = v88;
  v43(v82, v41, v88);
  v43(&v46[v42], v21, v47);
  v48 = *(v44 + 48);
  if (v48(v46, 1, v9) == 1)
  {
    v49 = *(v45 + 8);
    v50 = v21;
    v51 = v88;
    v49(v50, v88);
    v49(v41, v51);
    if (v48(&v46[v42], 1, v9) == 1)
    {
      v49(v46, v88);
LABEL_16:
      Gliss.Coordinator.setItem(_:animationDirection:animation:)(v83, v72, v73, v74, v71);
      return;
    }

    goto LABEL_11;
  }

  v52 = v76;
  v43(v76, v46, v88);
  if (v48(&v46[v42], 1, v9) == 1)
  {
    v53 = *(v45 + 8);
    v54 = v88;
    v53(v81, v88);
    v53(v85, v54);
    v75(v52, v9);
LABEL_11:
    (*(v77 + 8))(v46, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v63 = v79;
  (*(v84 + 32))(v79, &v46[v42], v9);
  v64 = sub_AB91C0();
  v65 = v75;
  v75(v63, v9);
  v66 = *(v45 + 8);
  v67 = v88;
  v66(v81, v88);
  v66(v85, v67);
  v65(v52, v9);
  v66(v46, v67);
  if (v64)
  {
    goto LABEL_16;
  }

LABEL_12:
  v55 = v87;
  v56 = sub_AB4BA0();
  v57 = sub_AB9F50();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v89[0] = v59;
    *v58 = 136446210;
    sub_620D04(v70);
    v60 = sub_AB9350();
    v62 = sub_500C84(v60, v61, v89);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_0, v56, v57, "  ⌛️❌ Item no longer matches queued item=%{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }
}

id sub_6222E8(SEL *a1)
{
  v3 = *&stru_68.segname[(swift_isaMask & *v1) - 8];
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v7 = 0;
  v8 = (v4 + 32);
  while (v7 < *(v4 + 16))
  {
    ++v7;
    v9 = *v8;
    v8 += 2;
    result = [v9 *a1];
    if (v5 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6223A4(uint64_t a1)
{
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450);
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458);
  v10 = __chkstk_darwin(v9 - 8);
  v37 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v32[-v13];
  result = __chkstk_darwin(v12);
  v17 = &v32[-v16];
  if (a1)
  {
    v34 = v5;
    v18 = v3;
    v19 = *(v3 + 16);
    v36 = a1;
    v19(&v32[-v16], a1 + direct field offset for Gliss.Transition.id, v2);
    v35 = v18;
    v20 = *(v18 + 56);
    v21 = 1;
    v20(v17, 0, 1, v2);
    v22 = *(v38 + *&stru_68.segname[(swift_isaMask & *v38) + 16]);
    if (v22)
    {
      v19(v14, v22 + direct field offset for Gliss.Transition.id, v2);
      v21 = 0;
    }

    v20(v14, v21, 1, v2);
    v23 = *(v6 + 48);
    sub_62A594(v17, v8);
    sub_62A594(v14, &v8[v23]);
    v24 = v35;
    v25 = *(v35 + 48);
    if (v25(v8, 1, v2) == 1)
    {
      v26 = v36;

      sub_12E1C(v14, &qword_E11458);
      sub_12E1C(v17, &qword_E11458);
      v27 = v26;
      if (v25(&v8[v23], 1, v2) == 1)
      {
        sub_12E1C(v8, &qword_E11458);
      }
    }

    else
    {
      v28 = v37;
      sub_62A594(v8, v37);
      if (v25(&v8[v23], 1, v2) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, &v8[v23], v2);
        sub_62A604();
        v27 = v36;

        v33 = sub_AB91C0();
        v31 = *(v24 + 8);
        v31(v30, v2);
        sub_12E1C(v14, &qword_E11458);
        sub_12E1C(v17, &qword_E11458);
        v31(v37, v2);
        sub_12E1C(v8, &qword_E11458);
        if (v33)
        {
        }

LABEL_10:
        v29 = *(*v27 + 128);
        swift_beginAccess();
        if (*(v27 + v29) <= 2u)
        {
          sub_623B94(v27, 0);
        }
      }

      v27 = v36;

      sub_12E1C(v14, &qword_E11458);
      sub_12E1C(v17, &qword_E11458);
      (*(v24 + 8))(v28, v2);
    }

    sub_12E1C(v8, &qword_E11450);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_6228A8(uint64_t a1)
{
  sub_629E20(a1);
}

id sub_6228E0()
{
  v1 = *(&stru_68.offset + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1]);
    sub_17654(v9[3]);
    sub_17654(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_6229BC()
{
  v1 = *(&stru_68.reloff + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1]);
    sub_17654(v9[3]);
    sub_17654(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_622A98()
{
  v1 = *(&stru_68.flags + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_17654(v9[1]);
    sub_17654(v9[3]);
    sub_17654(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_622B70(uint64_t a1, int a2)
{
  v3 = v2;
  v102 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *(&stru_20.maxprot + (swift_isaMask & *v2));
  v100 = *(&stru_20.filesize + (swift_isaMask & *v2));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = sub_ABA9C0();
  v95 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v86 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v86 - v17;
  v101 = *(AssociatedTypeWitness - 8);
  v19 = __chkstk_darwin(v16);
  v98 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v94 = &v86 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v96 = &v86 - v26;
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = *(v3 + *&stru_68.segname[(v6 & v5) + 16]);
  v93 = a2;
  if (v29)
  {
    v30 = *(*v29 + 128);
    swift_beginAccess();
    if (*(v29 + v30) <= 2u)
    {
      v87 = v7;
      v31 = *(*v29 + 112);
      swift_beginAccess();
      v32 = v95;
      v33 = *(v95 + 16);
      v90 = v31;
      v89 = v33;
      v33(v18, v29 + v31, v99);
      v34 = v101;
      v88 = *(v101 + 48);
      if (v88(v18, 1, AssociatedTypeWitness) == 1)
      {
        v35 = *(v32 + 8);

        v35(v18, v99);
      }

      else
      {
        (*(v34 + 32))(v28, v18, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v36 = sub_AB91C0();
        (*(v34 + 8))(v28, AssociatedTypeWitness);
        if (v36)
        {
          return v29;
        }
      }

      v89(v15, v29 + v90, v99);
      if (v88(v15, 1, AssociatedTypeWitness) == 1)
      {
        (*(v95 + 8))(v15, v99);
        v37 = *(*v29 + 104);
        swift_beginAccess();
        v38 = v101;
        v39 = v96;
        (*(v101 + 16))(v96, v29 + v37, AssociatedTypeWitness);
        v7 = v87;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v37) = sub_AB91C0();
        (*(v38 + 8))(v39, AssociatedTypeWitness);
        if (v37)
        {
          return v29;
        }
      }

      else
      {

        (*(v95 + 8))(v15, v99);
        v7 = v87;
      }
    }
  }

  v88 = v3;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v40 = sub_AB4BC0();
  v41 = __swift_project_value_buffer(v40, qword_E71EB0);
  v42 = v101;
  v43 = *(v101 + 16);
  v44 = v97;
  v43(v97, v102, AssociatedTypeWitness);
  v90 = v41;
  v45 = sub_AB4BA0();
  v46 = sub_AB9F50();
  v47 = os_log_type_enabled(v45, v46);
  v89 = v43;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v87 = v7;
    v49 = v48;
    v50 = swift_slowAlloc();
    v105 = v50;
    *v49 = 136446210;
    v43(v96, v44, AssociatedTypeWitness);
    v51 = sub_AB9350();
    v53 = v52;
    v97 = *(v101 + 8);
    (v97)(v44, AssociatedTypeWitness);
    v54 = sub_500C84(v51, v53, &v105);
    v55 = v87;

    *(v49 + 4) = v54;
    v42 = v101;
    _os_log_impl(&dword_0, v45, v46, "Creating transition for item=%{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v55 = v7;

    v97 = *(v42 + 8);
    (v97)(v44, AssociatedTypeWitness);
  }

  v56 = v94;
  v57 = v95;
  v58 = v88;
  v59 = *(v88 + *&stru_68.segname[(swift_isaMask & *v88) + 16]);
  if (!v59)
  {
    v62 = v91;
    (*(v42 + 56))(v91, 1, 1, AssociatedTypeWitness);
    v63 = v55;
    goto LABEL_19;
  }

  v60 = *(*v59 + 112);
  swift_beginAccess();
  v61 = v59 + v60;
  v62 = v91;
  (*(v57 + 16))(v91, v61, v99);
  v63 = v55;
  if ((*(v42 + 48))(v62, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v56);
    v65 = (*(v42 + 48))(v62, 1, AssociatedTypeWitness);
    v64 = v89;
    if (v65 != 1)
    {
      (*(v57 + 8))(v62, v99);
    }

    v64(v98, v56, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v42 + 32))(v56, v62, AssociatedTypeWitness);
  v64 = v89;
  v89(v98, v56, AssociatedTypeWitness);
LABEL_22:
  v66 = v96;
  Gliss.Coordinator.item.getter(v96);
  swift_getAssociatedConformanceWitness();
  v67 = sub_AB91C0();
  v101 = v42 + 8;
  (v97)(v66, AssociatedTypeWitness);
  if (v67)
  {
    v68 = 1;
    v69 = v92;
  }

  else
  {
    v69 = v92;
    v64(v92, v102, AssociatedTypeWitness);
    v68 = 0;
  }

  (*(v42 + 56))(v69, v68, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition();
  v70 = v69;
  v71 = *&stru_68.segname[(swift_isaMask & *v58) - 8];
  v72 = swift_beginAccess();
  v73 = *(v58 + v71);
  __chkstk_darwin(v72);
  *(&v86 - 4) = v100;
  *(&v86 - 3) = v63;
  *(&v86 - 2) = v102;
  v74 = v93;
  *(&v86 - 8) = v93;

  v75 = sub_61FBDC(_swiftEmptyDictionarySingleton, sub_62A914, (&v86 - 6), v73);

  v29 = sub_62AA08(v98, v70, v74, v75, 0.0);

  v76 = sub_AB4BA0();
  v77 = sub_AB9F50();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v56;
    v80 = swift_slowAlloc();
    v103 = v29;
    v104 = v80;
    *v78 = 136446210;
    swift_getWitnessTable();
    v81 = sub_ABB330();
    v83 = sub_500C84(v81, v82, &v104);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_0, v76, v77, "   Created Transition=%{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);

    v84 = v79;
  }

  else
  {

    v84 = v56;
  }

  (v97)(v84, AssociatedTypeWitness);
  return v29;
}

void sub_6237A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = v6;
  sub_61F224(a3, a4, ObjectType, AssociatedTypeWitness, v7, v11);
  sub_6A972C(v11, v10);
}

void sub_62388C(uint64_t a1)
{
  v2 = v1;
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71EB0);

    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136446210;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v9 = sub_ABB330();
      v11 = sub_500C84(v9, v10, v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "Begin or Enqueue Transition=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    sub_62B720(2);

    sub_629E20(v12);

    v13 = *&stru_68.segname[(swift_isaMask & *v2) - 8];
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);

    if (!v15)
    {
      break;
    }

    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *v17;
      v19 = *(v17 - 1);
      ObjectType = swift_getObjectType();
      sub_61F644(a1, ObjectType, v18);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_6222DC();
  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "   Transition Started!", v23, 2u);
  }
}

void sub_623B94(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E71EB0);

  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = sub_ABB330();
    v12 = sub_500C84(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_500C84(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_0, v7, v8, "Attempting to cancel transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_62B720(4);
    sub_6222D0();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *(&stru_68.size + (swift_isaMask & *v3));
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_522264(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_629C14(v32, v33, v34);
      sub_17654(v35);
      sub_17654(v55[3]);
      sub_17654(v55[5]);
      v37 = sub_62AA80(a1, v36, v32, v33, v34);

      sub_629BEC(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_62A700;
      *(v38 + 24) = v17;
      v53 = sub_710F8;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1B5EB4;
      v52 = &block_descriptor_185;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_62A740;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_62A964;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_624AE8;
      v52 = &block_descriptor_30_4;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *(&stru_68.size + (swift_isaMask & *v42));
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_525C78(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_625238(a1, 0, 0.0);
      sub_624290(a1, v30);
    }
  }

  else
  {
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

uint64_t sub_624290(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  sub_62B720(6);
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71EB0);

    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = sub_ABB330();
      v27 = sub_500C84(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v20, v21, "❎ Cancelled transition=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *&stru_68.segname[(*v3 & *v62) + 16]);
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_62A594(v18, v61);
    sub_62A594(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_12E1C(v16, &qword_E11458);
      v36 = v61;
      sub_12E1C(v18, &qword_E11458);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_12E1C(v36, &qword_E11458);
      v37 = v59;
LABEL_14:
      sub_629E20(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    sub_62A594(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_12E1C(v58, &qword_E11458);
      v36 = v61;
      sub_12E1C(v18, &qword_E11458);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_12E1C(v36, &qword_E11450);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_62A604();
    v43 = v29;
    v44 = sub_AB91C0();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_12E1C(v58, &qword_E11458);
    sub_12E1C(v18, &qword_E11458);
    v45(v38, v30);
    sub_12E1C(v41, &qword_E11458);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();

    v48 = v62;
    v49 = *&stru_68.segname[(swift_isaMask & *v62) - 8];
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_61F740(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_624AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_624B3C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E71EB0);

  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = sub_ABB330();
    v12 = sub_500C84(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_500C84(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_0, v7, v8, "Attempting to end transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_62B720(3);
    sub_6222D0();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *(&stru_68.size + (swift_isaMask & *v3));
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_522264(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_629C14(v32, v33, v34);
      sub_17654(v35);
      sub_17654(v55[3]);
      sub_17654(v55[5]);
      v37 = sub_62AA80(a1, v36, v32, v33, v34);

      sub_629BEC(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_62A7A4;
      *(v38 + 24) = v17;
      v53 = sub_70638;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1B5EB4;
      v52 = &block_descriptor_42_1;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_62A7E0;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_62A830;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_624AE8;
      v52 = &block_descriptor_48_0;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *(&stru_68.size + (swift_isaMask & *v42));
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_525C78(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_625238(a1, 0, 1.0);
      sub_625414(a1, v30);
    }
  }

  else
  {
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}