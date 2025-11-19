uint64_t sub_100041498(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v3 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5064657070617277 && a2 == 0xED0000746E657261 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6661654C7369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_100041600(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() progressWithTotalUnitCount:100];
  sub_10007DAC4();
  swift_allocObject();
  sub_10007DAB4();
  type metadata accessor for CRLBoardLibraryViewModelWrappedNode(0);
  sub_100040CAC(&qword_1000B3338, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
  v4 = sub_10007DAA4();
  v6 = v5;

  [v3 setCompletedUnitCount:100];
  sub_1000417A0(v4, v6);
  isa = sub_10007DDC4().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_100025ED8(v4, v6);
  sub_100025ED8(v4, v6);
  return v3;
}

uint64_t sub_1000417A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000417F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B42A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100041888()
{
  result = qword_1000B33A0;
  if (!qword_1000B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33A0);
  }

  return result;
}

unint64_t sub_1000418E0()
{
  result = qword_1000B33A8;
  if (!qword_1000B33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33A8);
  }

  return result;
}

unint64_t sub_100041938()
{
  result = qword_1000B33B0;
  if (!qword_1000B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33B0);
  }

  return result;
}

unint64_t sub_100041990()
{
  result = qword_1000B33B8;
  if (!qword_1000B33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33B8);
  }

  return result;
}

unint64_t sub_1000419E8()
{
  result = qword_1000B33C0;
  if (!qword_1000B33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33C0);
  }

  return result;
}

unint64_t sub_100041A40()
{
  result = qword_1000B33C8;
  if (!qword_1000B33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33C8);
  }

  return result;
}

uint64_t sub_100041AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100041B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100041BE0()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100041C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DEB4();
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

uint64_t sub_100041D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007DEB4();
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

uint64_t sub_100041DF0()
{
  result = sub_10007DEB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100041E64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&qword_1000B3530);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_100043050();
  sub_10007EBD4();
  if (!v2)
  {
    v12 = v15;
    sub_100042F14(&qword_1000B34F8, type metadata accessor for CRLBoardIdentifierStorage);
    v13 = v17;
    sub_10007E9C4();
    (*(v16 + 8))(v8, v6);
    sub_1000430A4(v13, v11, type metadata accessor for CRLBoardIdentifierStorage);
    sub_1000430A4(v11, v12, type metadata accessor for CRLBoardIdentifier);
  }

  return sub_1000211F8(a1);
}

uint64_t sub_1000420D8(uint64_t a1)
{
  v2 = sub_100043050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042114(uint64_t a1)
{
  v2 = sub_100043050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042168(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B3540);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100021160(a1, a1[3]);
  sub_100043050();
  sub_10007EBE4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_100042F14(&qword_1000B3500, type metadata accessor for CRLBoardIdentifierStorage);
  sub_10007EA54();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1000422E0()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_100042384()
{
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return sub_10007E494();
}

Swift::Int sub_100042424()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_1000424C4(uint64_t a1, uint64_t a2)
{
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_10007EAA4();
}

uint64_t sub_100042544()
{
  v1 = (v0 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v3 = *v1;
  v2 = v1[1];
  if (*v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 == 0xE000000000000000;
  }

  if (v4 || (sub_10007EAA4() & 1) != 0)
  {
    v2 = 0x800000010008CFC0;
    v3 = 0xD000000000000012;
  }

  else
  {
  }

  v6 = sub_10007DE54();
  v7._countAndFlagsBits = 15418;
  v7._object = 0xE200000000000000;
  sub_10007E4C4(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v2;
  sub_10007E4C4(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_10007E4C4(v9);
  return v6;
}

uint64_t sub_10004261C(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B3558);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_10004310C();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007DEB4();
  sub_100042F14(&qword_1000B2390, &type metadata accessor for UUID);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLBoardIdentifierStorage(0);
    v8[14] = 1;
    sub_10007EA24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000427D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10007DEB4();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10001FF68(&qword_1000B3548);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_10004310C();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_100042F14(&qword_1000B2328, &type metadata accessor for UUID);
  v14 = v26;
  sub_10007E9C4();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_10007E994();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_100043160(v19, v18);
  sub_1000211F8(a1);
  return sub_1000431C4(v19);
}

uint64_t sub_100042B08(uint64_t a1)
{
  v2 = sub_10004310C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042B44(uint64_t a1)
{
  v2 = sub_10004310C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100042BB0()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_100042C58()
{
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();

  return sub_10007E494();
}

Swift::Int sub_100042CF4()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100042F14(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_100042D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_10007EAA4();
}

uint64_t sub_100042E68(void *a1)
{
  a1[1] = sub_100042F14(&qword_1000B34F8, type metadata accessor for CRLBoardIdentifierStorage);
  a1[2] = sub_100042F14(&qword_1000B3500, type metadata accessor for CRLBoardIdentifierStorage);
  result = sub_100042F14(&qword_1000B3508, type metadata accessor for CRLBoardIdentifierStorage);
  a1[3] = result;
  return result;
}

uint64_t sub_100042F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042FA4(void *a1)
{
  a1[1] = sub_100042F14(&qword_1000B3518, type metadata accessor for CRLBoardIdentifier);
  a1[2] = sub_100042F14(&qword_1000B3520, type metadata accessor for CRLBoardIdentifier);
  result = sub_100042F14(&qword_1000B3528, type metadata accessor for CRLBoardIdentifier);
  a1[3] = result;
  return result;
}

unint64_t sub_100043050()
{
  result = qword_1000B3538;
  if (!qword_1000B3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3538);
  }

  return result;
}

uint64_t sub_1000430A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004310C()
{
  result = qword_1000B3550;
  if (!qword_1000B3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3550);
  }

  return result;
}

uint64_t sub_100043160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000431C4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifierStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100043244()
{
  result = qword_1000B3560;
  if (!qword_1000B3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3560);
  }

  return result;
}

unint64_t sub_10004329C()
{
  result = qword_1000B3568;
  if (!qword_1000B3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3568);
  }

  return result;
}

unint64_t sub_1000432F4()
{
  result = qword_1000B3570;
  if (!qword_1000B3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3570);
  }

  return result;
}

unint64_t sub_10004334C()
{
  result = qword_1000B3578;
  if (!qword_1000B3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3578);
  }

  return result;
}

unint64_t sub_1000433A4()
{
  result = qword_1000B3580;
  if (!qword_1000B3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3580);
  }

  return result;
}

unint64_t sub_1000433FC()
{
  result = qword_1000B3588;
  if (!qword_1000B3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3588);
  }

  return result;
}

id sub_1000434C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLGenerativePlaygroundAvailabilityHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

const char *sub_10004351C(char a1)
{
  result = "AdoptTipsNext";
  switch(a1)
  {
    case 1:
      result = "AppAnalytics";
      break;
    case 2:
      result = "AppIntents";
      break;
    case 3:
      result = "AppIntentsSettings";
      break;
    case 4:
      result = "BatteriesIncluded";
      break;
    case 5:
      result = "BetterPencilSelection";
      break;
    case 6:
      result = "ChangeShape";
      break;
    case 7:
      result = "CloudQuotaMessaging";
      break;
    case 8:
      result = "ContentLanguageCopyPaste";
      break;
    case 9:
      result = "DrawingDataDetectors";
      break;
    case 10:
      result = "EasierConnectionLines";
      break;
    case 11:
      result = "FileImportExport";
      break;
    case 12:
      result = "PKDrawingExport";
      break;
    case 13:
      result = "Follow";
      break;
    case 14:
      result = "GenerativePlayground";
      break;
    case 15:
      result = "MathPaper";
      break;
    case 16:
      result = "MagicLists";
      break;
    case 17:
      result = "MacMediaReplacer";
      break;
    case 18:
      result = "MediaLibrary";
      break;
    case 19:
      result = "PlaceholderImages";
      break;
    case 20:
      result = "Scenes";
      break;
    case 21:
      result = "SendACopy";
      break;
    case 22:
      result = "SignOutRedesign";
      break;
    case 23:
      result = "SnapToGrid";
      break;
    case 24:
      result = "Stencils";
      break;
    case 25:
      result = "VerticalTextBoxAlignment";
      break;
    case 26:
      result = "AllowMinRequiredVersionForGoodEnoughFidelityToSaveToCloudKit";
      break;
    case 27:
      result = "UseSandboxEnvironment";
      break;
    case 28:
      result = "Spatial";
      break;
    case 29:
      result = "InlineQuickLook";
      break;
    default:
      return result;
  }

  return result;
}

const char *sub_100043864()
{
  if (*v0)
  {
    return "DrawingDataDetectors";
  }

  else
  {
    return "MathPaper";
  }
}

uint64_t sub_100043A3C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v10 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v11 = sub_100044234();
  v9[0] = a3;
  v6 = sub_10007DF54();
  sub_1000211F8(v9);
  if (v6)
  {
    v10 = &type metadata for CRLFeatureFlags;
    v11 = sub_10004418C();
    v9[0] = a4;
    v7 = sub_10007DF54();
    sub_1000211F8(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100043B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a3;
  v8 = a4();
  v4 = sub_10007DF54();
  sub_1000211F8(v6);
  return v4 & 1;
}

uint64_t sub_100043BA0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = &type metadata for CRLFeatureFlags;
  v8 = sub_10004418C();
  v6[0] = a3;
  v4 = sub_10007DF54();
  sub_1000211F8(v6);
  return v4 & 1;
}

id sub_100043C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100043CAC()
{
  v6 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v7 = sub_100044234();
  v5[0] = 0;
  v0 = sub_10007DF54();
  sub_1000211F8(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = sub_10004418C();
  v5[0] = 15;
  v1 = sub_10007DF54();
  sub_1000211F8(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (qword_1000B1DA8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B4670;
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v2 + v3);
}

uint64_t sub_100043D98()
{
  v0 = sub_10007DF74();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = sub_10007DF84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001FF68(&qword_1000B35E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_10007DFB4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for OSEligibilityDomain.aiLabeling(_:), v6);
  sub_10007DFA4();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  sub_10007DF94();
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v3, enum case for OSEligibilityAnswer.eligible(_:), v23);
  LOBYTE(v6) = sub_10007DF64();
  v19 = *(v18 + 8);
  v19(v3, v17);
  v19(v5, v17);
  (*(v14 + 8))(v16, v13);
  return v6 & 1;
}

uint64_t sub_100044124(uint64_t a1)
{
  v2 = sub_10001FF68(&qword_1000B35E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004418C()
{
  result = qword_1000B35E8;
  if (!qword_1000B35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35E8);
  }

  return result;
}

unint64_t sub_1000441E0()
{
  result = qword_1000B35F0;
  if (!qword_1000B35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35F0);
  }

  return result;
}

unint64_t sub_100044234()
{
  result = qword_1000B35F8;
  if (!qword_1000B35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35F8);
  }

  return result;
}

unint64_t sub_100044288()
{
  result = qword_1000B3600;
  if (!qword_1000B3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3600);
  }

  return result;
}

unint64_t sub_1000442DC()
{
  result = qword_1000B3608;
  if (!qword_1000B3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000444C4()
{
  result = qword_1000B3610;
  if (!qword_1000B3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3610);
  }

  return result;
}

unint64_t sub_10004451C()
{
  result = qword_1000B3618;
  if (!qword_1000B3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3618);
  }

  return result;
}

unint64_t sub_100044574()
{
  result = qword_1000B3620;
  if (!qword_1000B3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3620);
  }

  return result;
}

unint64_t sub_1000445CC()
{
  result = qword_1000B3628;
  if (!qword_1000B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3628);
  }

  return result;
}

unint64_t sub_100044624()
{
  result = qword_1000B3630;
  if (!qword_1000B3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3630);
  }

  return result;
}

uint64_t sub_100044678()
{
  sub_1000488AC(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000446C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v7 = dbl_100089048[a2];
  }

  else
  {
    v7 = *&a2;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_10007EB34(*&v7);
  if (a4)
  {
    v8 = dbl_100089048[a2];
  }

  else
  {
    v8 = *&a3;
  }

  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  sub_10007EB34(*&v8);
}

uint64_t sub_100044754(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v5 = sub_10001FF68(&qword_1000B3AB8);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v28 - v6;
  v7 = sub_10001FF68(&qword_1000B3AC0);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v28 - v8;
  v9 = sub_10001FF68(&qword_1000B3AC8);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v35 = &v28 - v10;
  v11 = sub_10001FF68(&qword_1000B3AD0);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v32 = &v28 - v12;
  v13 = sub_10001FF68(&qword_1000B3AD8);
  v30 = *(v13 - 8);
  v31 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_10001FF68(&qword_1000B3AE0);
  v29 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v19 = sub_10001FF68(&qword_1000B3AE8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  sub_100021160(a1, a1[3]);
  sub_1000484F0();
  sub_10007EBE4();
  if ((v44 & 1) == 0)
  {
    LOBYTE(v46) = 5;
    sub_100048544();
    v25 = v41;
    sub_10007E9E4();
    v46 = v45;
    type metadata accessor for CGSize(0);
    sub_100046F18(&qword_1000B3AF0, type metadata accessor for CGSize);
    v26 = v43;
    sub_10007EA54();
    (*(v42 + 8))(v25, v26);
    return (*(v20 + 8))(v22, v19);
  }

  if (v45 > 1)
  {
    if (v45 ^ 2 | *(&v45 + 1))
    {
      if (v45 ^ 3 | *(&v45 + 1))
      {
        LOBYTE(v46) = 4;
        sub_100048598();
        v15 = v38;
        sub_10007E9E4();
        v24 = v39;
        v23 = v40;
      }

      else
      {
        LOBYTE(v46) = 3;
        sub_1000485EC();
        v15 = v35;
        sub_10007E9E4();
        v24 = v36;
        v23 = v37;
      }
    }

    else
    {
      LOBYTE(v46) = 2;
      sub_100048640();
      v15 = v32;
      sub_10007E9E4();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_12;
  }

  if (v45 != 0)
  {
    LOBYTE(v46) = 1;
    sub_100048694();
    sub_10007E9E4();
    v24 = v30;
    v23 = v31;
LABEL_12:
    (*(v24 + 8))(v15, v23);
    return (*(v20 + 8))(v22, v19);
  }

  LOBYTE(v46) = 0;
  sub_1000486E8();
  sub_10007E9E4();
  (*(v29 + 8))(v18, v16);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_100044DD4(uint64_t a1)
{
  v2 = sub_1000485EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044E10(uint64_t a1)
{
  v2 = sub_1000485EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100044E4C(uint64_t a1)
{
  v2 = sub_1000486E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044E88(uint64_t a1)
{
  v2 = sub_1000486E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100044EC4()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  v3 = 0xD000000000000011;
  v4 = 0xD000000000000018;
  if (v1 == 1)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100044F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100047470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100044FB0(uint64_t a1)
{
  v2 = sub_1000484F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100044FEC(uint64_t a1)
{
  v2 = sub_1000484F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045028(uint64_t a1)
{
  v2 = sub_100048544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045064(uint64_t a1)
{
  v2 = sub_100048544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000450A0(uint64_t a1)
{
  v2 = sub_100048640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000450DC(uint64_t a1)
{
  v2 = sub_100048640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045118(uint64_t a1)
{
  v2 = sub_100048694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045154(uint64_t a1)
{
  v2 = sub_100048694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045190(uint64_t a1)
{
  v2 = sub_100048598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000451CC(uint64_t a1)
{
  v2 = sub_100048598();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100045224()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10007EB04();
  sub_1000446C8(v5, v1, v2, v3);
  return sub_10007EB54();
}

Swift::Int sub_10004528C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10007EB04();
  sub_1000446C8(v5, v1, v2, v3);
  return sub_10007EB54();
}

uint64_t sub_1000452E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004766C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100045338(void *a1)
{
  v15 = sub_10001FF68(&qword_1000B3B18);
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001FF68(&qword_1000B3B20);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_100021160(a1, a1[3]);
  sub_10004873C();
  sub_10007EBE4();
  sub_100048438(v14, v7);
  sub_100048790();
  sub_10007E9E4();
  type metadata accessor for CRLBoardIdentifier(0);
  sub_100046F18(&qword_1000B3520, type metadata accessor for CRLBoardIdentifier);
  v12 = v15;
  sub_10007EA54();
  sub_1000487E4(v7, type metadata accessor for CRLBoardIdentifier);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000455E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B3AF8);
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_10001FF68(&qword_1000B3B00);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  sub_100021160(a1, a1[3]);
  sub_10004873C();
  v11 = v30;
  sub_10007EBD4();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_10007E9D4();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if (sub_10002167C() || v28 != v29 >> 1)
  {
    v18 = sub_10007E874();
    swift_allocError();
    v20 = v19;
    sub_10001FF68(&qword_1000B2318);
    *v20 = v22;
    sub_10007E954();
    sub_10007E864();
    (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return sub_1000211F8(v17);
  }

  sub_100048790();
  sub_10007E944();
  type metadata accessor for CRLBoardIdentifier(0);
  sub_100046F18(&qword_1000B3518, type metadata accessor for CRLBoardIdentifier);
  v22 = v10;
  sub_10007E9C4();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_100048844(v4, v12, type metadata accessor for CRLPreviewImages.Item);
  v17 = v30;
  return sub_1000211F8(v17);
}

uint64_t sub_100045A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100045AB0(uint64_t a1)
{
  v2 = sub_100048790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045AEC(uint64_t a1)
{
  v2 = sub_100048790();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045B28(uint64_t a1)
{
  v2 = sub_10004873C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045B64(uint64_t a1)
{
  v2 = sub_10004873C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100045BD0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EB04();
  sub_100048438(v1, v7);
  sub_100048844(v7, v5, type metadata accessor for CRLBoardIdentifier);
  sub_10007DEB4();
  sub_100046F18(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  sub_1000487E4(v5, type metadata accessor for CRLBoardIdentifier);
  return sub_10007EB54();
}

uint64_t sub_100045D40()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048438(v1, v7);
  sub_100048844(v7, v5, type metadata accessor for CRLBoardIdentifier);
  sub_10007DEB4();
  sub_100046F18(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_1000487E4(v5, type metadata accessor for CRLBoardIdentifier);
}

Swift::Int sub_100045E9C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007EB04();
  sub_100048438(v1, v7);
  sub_100048844(v7, v5, type metadata accessor for CRLBoardIdentifier);
  sub_10007DEB4();
  sub_100046F18(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  sub_1000487E4(v5, type metadata accessor for CRLBoardIdentifier);
  return sub_10007EB54();
}

BOOL sub_100046014(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000417F4(a1, v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v6 = v17;
      v7 = OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_item;
      sub_100048438(&v17[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_item], v5);
      LOBYTE(v7) = sub_10004725C(v1 + v7, v5);
      sub_1000487E4(v5, type metadata accessor for CRLPreviewImages.Item);
      if (v7)
      {
        v8 = &v6[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass];
        if (*(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 16) == 1)
        {
          v9 = &dbl_100089048[*(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass)];
          v10 = *v9;
          v11 = *v8;
          if (!v6[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 16])
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = (v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 8);
          v10 = *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass);
          v11 = *v8;
          if (!v6[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 16])
          {
LABEL_6:
            v12 = v8[1];
            if (v10 != v11)
            {
              goto LABEL_13;
            }

LABEL_11:
            if (*v9 == v12)
            {
              v13 = *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_contentsScale);
              v14 = *&v6[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_contentsScale];

              return v13 == v14;
            }

            goto LABEL_13;
          }
        }

        v12 = dbl_100089048[*&v11];
        if (v10 == v12)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
    }
  }

  else
  {
    sub_1000357F4(v18);
  }

  return 0;
}

Swift::Int sub_100046278()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CRLPreviewImages.Item(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v10 = &v14[-v9 - 8];
  sub_10007EB64();
  sub_100048438(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_item, v10);
  sub_100048438(v10, v8);
  sub_100048844(v8, v4, type metadata accessor for CRLBoardIdentifier);
  sub_10007DEB4();
  sub_100046F18(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  sub_1000487E4(v10, type metadata accessor for CRLPreviewImages.Item);
  sub_1000487E4(v4, type metadata accessor for CRLBoardIdentifier);
  sub_1000446C8(v14, *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass), *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 8), *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 16));
  v11 = *(v1 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_contentsScale);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  sub_10007EB34(*&v11);
  return sub_10007EB44();
}

uint64_t sub_1000464E4()
{
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  sub_10007E4C4(v1);
  type metadata accessor for CRLPreviewImages.Item(0);
  sub_10007E8D4();
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  sub_10007E4C4(v2);
  sub_10007E8D4();
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  sub_10007E4C4(v3);
  v4._countAndFlagsBits = sub_10007E5F4();
  sub_10007E4C4(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  sub_10007E4C4(v5);
  return 0;
}

_BYTE *sub_10004665C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004800C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000466AC(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B3A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100021160(a1, a1[3]);
  sub_100048390();
  sub_10007EBE4();
  LOBYTE(v13) = 0;
  type metadata accessor for CRLPreviewImages.Item(0);
  sub_100046F18(&qword_1000B3968, type metadata accessor for CRLPreviewImages.Item);
  sub_10007EA54();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass + 16);
    v13 = *(v3 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass);
    v14 = v9;
    v12 = 1;
    sub_100047044();
    sub_10007EA54();
    *&v13 = *(v3 + OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_contentsScale);
    v12 = 2;
    sub_10004849C();
    sub_10007EA54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100046954()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

__n128 initializeBufferWithCopyOfBuffer for CRLPreviewImages.ImageSizeClass(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLPreviewImages.ImageSizeClass(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLPreviewImages.ImageSizeClass(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100046A84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046AA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_100046AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B38A8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100046B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001FF68(&qword_1000B38A8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100046BF0(uint64_t a1)
{
  sub_100046CA8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for CRLBoardIdentifierStorage(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_100046CA8()
{
  if (!qword_1000B3930)
  {
    v0 = type metadata accessor for CRLBoardIdentifier(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3930);
    }
  }
}

uint64_t sub_100046CFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100046D1C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100046D30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100046D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100046DE8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_100046E6C(void *a1)
{
  a1[1] = sub_100046F18(&qword_1000B3960, type metadata accessor for CRLPreviewImages.Item);
  a1[2] = sub_100046F18(&qword_1000B3968, type metadata accessor for CRLPreviewImages.Item);
  result = sub_100046F18(&qword_1000B3970, type metadata accessor for CRLPreviewImages.Item);
  a1[3] = result;
  return result;
}

uint64_t sub_100046F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100046F64()
{
  result = qword_1000B3978;
  if (!qword_1000B3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3978);
  }

  return result;
}

unint64_t sub_100046FB8(void *a1)
{
  a1[1] = sub_100046FF0();
  a1[2] = sub_100047044();
  result = sub_100047098();
  a1[3] = result;
  return result;
}

unint64_t sub_100046FF0()
{
  result = qword_1000B3980;
  if (!qword_1000B3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3980);
  }

  return result;
}

unint64_t sub_100047044()
{
  result = qword_1000B3988;
  if (!qword_1000B3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3988);
  }

  return result;
}

unint64_t sub_100047098()
{
  result = qword_1000B3990;
  if (!qword_1000B3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3990);
  }

  return result;
}

unint64_t sub_1000470F0()
{
  result = qword_1000B3998;
  if (!qword_1000B3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3998);
  }

  return result;
}

uint64_t sub_10004718C(uint64_t a1)
{
  *(a1 + 8) = sub_100046F18(&qword_1000B3A08, type metadata accessor for CRLPreviewImages.LookupKey);
  result = sub_100046F18(&qword_1000B3A10, type metadata accessor for CRLPreviewImages.LookupKey);
  *(a1 + 16) = result;
  return result;
}

BOOL sub_100047210(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = dbl_100089048[a1];
    v7 = v6;
    if ((a6 & 1) == 0)
    {
LABEL_3:
      v8 = *&a4;
      return v7 == *&a5 && v6 == v8;
    }
  }

  else
  {
    v6 = *&a1;
    v7 = *&a2;
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v8 = dbl_100089048[a4];
  *&a5 = v8;
  return v7 == *&a5 && v6 == v8;
}

BOOL sub_10004725C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = sub_10001FF68(&qword_1000B3B28);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = *(v11 + 56);
  sub_100048438(a1, &v22 - v12);
  sub_100048438(a2, &v13[v14]);
  sub_100048844(v13, v9, type metadata accessor for CRLBoardIdentifier);
  sub_100048844(&v13[v14], v7, type metadata accessor for CRLBoardIdentifier);
  if ((sub_10007DE74() & 1) == 0)
  {
    sub_1000487E4(v7, type metadata accessor for CRLBoardIdentifier);
    sub_1000487E4(v9, type metadata accessor for CRLBoardIdentifier);
    return 0;
  }

  v15 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v16 = *&v9[v15];
  v17 = *&v9[v15 + 8];
  v18 = &v7[v15];
  if (v16 != *v18 || v17 != *(v18 + 1))
  {
    v20 = sub_10007EAA4();
    sub_1000487E4(v7, type metadata accessor for CRLBoardIdentifier);
    sub_1000487E4(v9, type metadata accessor for CRLBoardIdentifier);
    return (v20 & 1) != 0;
  }

  sub_1000487E4(v7, type metadata accessor for CRLBoardIdentifier);
  sub_1000487E4(v9, type metadata accessor for CRLBoardIdentifier);
  return 1;
}

uint64_t sub_100047470(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010008D960 == a2;
  if (v3 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010008D980 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010008D9A0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010008D9C0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008D9E0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10004766C(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B3A40);
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  __chkstk_darwin(v2);
  v52 = &v38 - v4;
  v5 = sub_10001FF68(&qword_1000B3A48);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  __chkstk_darwin(v5);
  v55 = &v38 - v7;
  v44 = sub_10001FF68(&qword_1000B3A50);
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v54 = &v38 - v8;
  v9 = sub_10001FF68(&qword_1000B3A58);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v53 = &v38 - v10;
  v11 = sub_10001FF68(&qword_1000B3A60);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_10001FF68(&qword_1000B3A68);
  v41 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_10001FF68(&qword_1000B3A70);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = a1[3];
  v62 = a1;
  sub_100021160(a1, v21);
  sub_1000484F0();
  v22 = v56;
  sub_10007EBD4();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v40 = v13;
    v24 = v53;
    v25 = v54;
    v26 = v55;
    v56 = v18;
    v27 = sub_10007E9D4();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_100025BD4();
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v32 = sub_10007E874();
      swift_allocError();
      v21 = v33;
      sub_10001FF68(&qword_1000B2318);
      *v21 = &type metadata for CRLPreviewImages.ImageSizeClass;
      sub_10007E954();
      sub_10007E864();
      (*(*(v32 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v32);
      swift_willThrow();
      (*(v56 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else if (v29 > 2u)
    {
      v35 = v56;
      if (v29 == 3)
      {
        LOBYTE(v57) = 3;
        sub_1000485EC();
        sub_10007E944();
        (*(v47 + 8))(v25, v44);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 3;
      }

      else if (v29 == 4)
      {
        LOBYTE(v57) = 4;
        sub_100048598();
        sub_10007E944();
        (*(v49 + 8))(v26, v48);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 4;
      }

      else
      {
        LOBYTE(v57) = 5;
        sub_100048544();
        v36 = v52;
        sub_10007E944();
        type metadata accessor for CGSize(0);
        sub_100046F18(&qword_1000B3A88, type metadata accessor for CGSize);
        v37 = v50;
        sub_10007E9C4();
        (*(v51 + 8))(v36, v37);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = v57;
      }
    }

    else
    {
      v30 = v56;
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v57) = 1;
          sub_100048694();
          v31 = v40;
          sub_10007E944();
          (*(v42 + 8))(v31, v43);
          (*(v30 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v21 = 1;
        }

        else
        {
          LOBYTE(v57) = 2;
          sub_100048640();
          sub_10007E944();
          (*(v45 + 8))(v24, v46);
          (*(v30 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v21 = 2;
        }
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1000486E8();
        sub_10007E944();
        (*(v41 + 8))(v23, v39);
        (*(v30 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 0;
      }
    }
  }

  sub_1000211F8(v62);
  return v21;
}

_BYTE *sub_10004800C(void *a1)
{
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v27 = sub_10001FF68(&qword_1000B3A18);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v22[-v9];
  sub_100021160(a1, a1[3]);
  sub_100048390();
  v26 = v10;
  sub_10007EBD4();
  if (v1)
  {
    sub_1000211F8(a1);
  }

  else
  {
    v24 = a1;
    v11 = v25;
    LOBYTE(v31) = 0;
    sub_100046F18(&qword_1000B3960, type metadata accessor for CRLPreviewImages.Item);
    v12 = v26;
    sub_10007E9C4();
    LOBYTE(v30) = 1;
    sub_100046FF0();
    sub_10007E9C4();
    v29 = 2;
    sub_1000483E4();
    sub_10007E9C4();
    v14 = v30;
    v15 = v6;
    sub_100048438(v8, v6);
    v16 = v31;
    v17 = v32;
    v23 = v33;
    v18 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v19 = v11;
    v20 = objc_allocWithZone(v18);
    sub_100048438(v15, &v20[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_item]);
    v21 = &v20[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_sizeClass];
    *v21 = v16;
    *(v21 + 1) = v17;
    v21[16] = v23;
    *&v20[OBJC_IVAR____TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey_contentsScale] = v14;
    v28.receiver = v20;
    v28.super_class = v18;
    v6 = objc_msgSendSuper2(&v28, "init");
    sub_1000487E4(v15, type metadata accessor for CRLPreviewImages.Item);
    sub_1000487E4(v8, type metadata accessor for CRLPreviewImages.Item);
    (*(v19 + 8))(v12, v27);
    sub_1000211F8(v24);
  }

  return v6;
}

unint64_t sub_100048390()
{
  result = qword_1000B3A20;
  if (!qword_1000B3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A20);
  }

  return result;
}

unint64_t sub_1000483E4()
{
  result = qword_1000B3A28;
  if (!qword_1000B3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A28);
  }

  return result;
}

uint64_t sub_100048438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPreviewImages.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004849C()
{
  result = qword_1000B3A38;
  if (!qword_1000B3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A38);
  }

  return result;
}

unint64_t sub_1000484F0()
{
  result = qword_1000B3A78;
  if (!qword_1000B3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A78);
  }

  return result;
}

unint64_t sub_100048544()
{
  result = qword_1000B3A80;
  if (!qword_1000B3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A80);
  }

  return result;
}

unint64_t sub_100048598()
{
  result = qword_1000B3A90;
  if (!qword_1000B3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A90);
  }

  return result;
}

unint64_t sub_1000485EC()
{
  result = qword_1000B3A98;
  if (!qword_1000B3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A98);
  }

  return result;
}

unint64_t sub_100048640()
{
  result = qword_1000B3AA0;
  if (!qword_1000B3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3AA0);
  }

  return result;
}

unint64_t sub_100048694()
{
  result = qword_1000B3AA8;
  if (!qword_1000B3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3AA8);
  }

  return result;
}

unint64_t sub_1000486E8()
{
  result = qword_1000B3AB0;
  if (!qword_1000B3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3AB0);
  }

  return result;
}

unint64_t sub_10004873C()
{
  result = qword_1000B3B08;
  if (!qword_1000B3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B08);
  }

  return result;
}

unint64_t sub_100048790()
{
  result = qword_1000B3B10;
  if (!qword_1000B3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B10);
  }

  return result;
}

uint64_t sub_1000487E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000488AC(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    sub_1000488CC(a1, a2 & 1);
  }

  else if (!(a2 >> 6))
  {
  }
}

void sub_1000488CC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10004896C()
{
  result = qword_1000B3B30;
  if (!qword_1000B3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B30);
  }

  return result;
}

unint64_t sub_1000489C4()
{
  result = qword_1000B3B38;
  if (!qword_1000B3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B38);
  }

  return result;
}

unint64_t sub_100048A1C()
{
  result = qword_1000B3B40;
  if (!qword_1000B3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B40);
  }

  return result;
}

unint64_t sub_100048A74()
{
  result = qword_1000B3B48;
  if (!qword_1000B3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B48);
  }

  return result;
}

unint64_t sub_100048ACC()
{
  result = qword_1000B3B50;
  if (!qword_1000B3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B50);
  }

  return result;
}

unint64_t sub_100048B24()
{
  result = qword_1000B3B58;
  if (!qword_1000B3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B58);
  }

  return result;
}

unint64_t sub_100048B7C()
{
  result = qword_1000B3B60;
  if (!qword_1000B3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B60);
  }

  return result;
}

unint64_t sub_100048BD4()
{
  result = qword_1000B3B68;
  if (!qword_1000B3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B68);
  }

  return result;
}

unint64_t sub_100048C2C()
{
  result = qword_1000B3B70;
  if (!qword_1000B3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B70);
  }

  return result;
}

unint64_t sub_100048C84()
{
  result = qword_1000B3B78;
  if (!qword_1000B3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B78);
  }

  return result;
}

unint64_t sub_100048CDC()
{
  result = qword_1000B3B80;
  if (!qword_1000B3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B80);
  }

  return result;
}

unint64_t sub_100048D34()
{
  result = qword_1000B3B88;
  if (!qword_1000B3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B88);
  }

  return result;
}

unint64_t sub_100048D8C()
{
  result = qword_1000B3B90;
  if (!qword_1000B3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B90);
  }

  return result;
}

unint64_t sub_100048DE4()
{
  result = qword_1000B3B98;
  if (!qword_1000B3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B98);
  }

  return result;
}

unint64_t sub_100048E3C()
{
  result = qword_1000B3BA0;
  if (!qword_1000B3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BA0);
  }

  return result;
}

unint64_t sub_100048E94()
{
  result = qword_1000B3BA8;
  if (!qword_1000B3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BA8);
  }

  return result;
}

unint64_t sub_100048EEC()
{
  result = qword_1000B3BB0;
  if (!qword_1000B3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BB0);
  }

  return result;
}

unint64_t sub_100048F44()
{
  result = qword_1000B3BB8;
  if (!qword_1000B3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BB8);
  }

  return result;
}

unint64_t sub_100048F9C()
{
  result = qword_1000B3BC0;
  if (!qword_1000B3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BC0);
  }

  return result;
}

unint64_t sub_100048FF4()
{
  result = qword_1000B3BC8;
  if (!qword_1000B3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BC8);
  }

  return result;
}

unint64_t sub_10004904C()
{
  result = qword_1000B3BD0;
  if (!qword_1000B3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BD0);
  }

  return result;
}

unint64_t sub_1000490A4()
{
  result = qword_1000B3BD8;
  if (!qword_1000B3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BD8);
  }

  return result;
}

void sub_100049110()
{
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  v1 = [v0 CGColor];

  qword_1000B3BE8 = v1;
}

void sub_100049198(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 CGColor];

  *a3 = v5;
}

void sub_10004925C(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  *a3 = v6;
}

char *sub_1000492FC(uint64_t a1, char *a2, double a3, double a4)
{
  v9 = sub_10001FF68(&unk_1000B4440);
  __chkstk_darwin(v9 - 8);
  v123 = &v121 - v10;
  v11 = sub_10001FF68(&qword_1000B3C78);
  __chkstk_darwin(v11 - 8);
  v126 = &v121 - v12;
  v128 = sub_10007DBE4();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v122 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007DD94();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v125 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v121 - v18;
  *&v4[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_gradientBackground] = 0;
  *&v4[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_metadata] = a1;
  v20 = *(v15 + 16);
  v129 = a2;
  v20(&v4[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_url], a2, v14);
  v21 = &v4[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_size];
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for CRLSEAudioPreviewView();
  v135.receiver = v4;
  v135.super_class = v22;

  v23 = objc_msgSendSuper2(&v135, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v124 = OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_url;
  v20(v19, &v23[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_url], v14);
  v133 = v23;
  sub_10007DCF4();
  v24 = *(v15 + 8);
  v131 = v15 + 8;
  v132 = v14;
  v130 = v24;
  v24(v19, v14);
  v25 = sub_10007E404();

  v26 = [v25 stringByDeletingPathExtension];

  v27 = sub_10007E444();
  v29 = v28;

  v30 = objc_opt_self();
  sub_100032404(0, &unk_1000B2950);
  isa = sub_10007E544().super.isa;

  v32 = [v30 crl_titleWithMetadataArray:isa];

  if (v32)
  {

    v27 = sub_10007E444();
    v29 = v33;
  }

  v34 = v133;

  v35 = sub_10007E544().super.isa;

  v36 = [v30 crl_creatorArtistOrAuthorWithMetadataArray:v35];

  if (v36)
  {
    v127 = sub_10007E444();
    v128 = v37;
  }

  else
  {
    sub_10001FF68(&qword_1000B3C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000860E0;
    *(inited + 32) = NSURLContentTypeKey;
    v39 = NSURLContentTypeKey;
    sub_10004A844(inited);
    swift_setDeallocating();
    sub_10004AA38(inited + 32);
    v40 = v125;
    v41 = v132;
    v20(v125, &v23[v124], v132);
    v42 = v126;
    sub_10007DCE4();

    v130(v40, v41);
    v43 = v127;
    v44 = v128;
    (*(v127 + 56))(v42, 0, 1, v128);
    v45 = v122;
    (*(v43 + 32))(v122, v42, v44);
    v46 = v123;
    sub_10007DBD4();
    v47 = sub_10007E084();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      (*(v43 + 8))(v45, v44);
      sub_100023AE0(v46, &unk_1000B4440);
      v127 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v50 = sub_10007DFF4();
      v51 = v45;
      v52 = v50;
      v54 = v53;
      (*(v43 + 8))(v51, v44);
      (*(v48 + 8))(v46, v47);
      if (v54)
      {
        v55 = v52;
      }

      else
      {
        v55 = 0;
      }

      v127 = v55;
      v49 = 0xE000000000000000;
      if (v54)
      {
        v49 = v54;
      }
    }

    v128 = v49;
    v34 = v133;
  }

  v56 = v34;
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = [objc_allocWithZone(UIView) init];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v56 layer];
  if (v58)
  {
    v59 = v58;
    [v58 setMasksToBounds:0];
    if (qword_1000B1B38 != -1)
    {
      swift_once();
    }

    [v59 setShadowColor:qword_1000B3BF0];
    [v59 setShadowOffset:{0.0, 3.0}];
    LODWORD(v60) = 0.25;
    [v59 setShadowOpacity:v60];
    [v59 setShadowRadius:3.0];
  }

  v61 = [v57 layer];
  v62 = sub_10004A484(v61);

  v63 = *&v56[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_gradientBackground];
  *&v56[OBJC_IVAR____TtC24FreeformSharingExtension21CRLSEAudioPreviewView_gradientBackground] = v62;

  [v56 addSubview:v57];
  sub_10004AA94();
  v133 = v64;
  [v57 addSubview:?];
  if (qword_1000B1B50 != -1)
  {
    swift_once();
  }

  v65 = qword_1000B3C08;
  if (qword_1000B1B40 != -1)
  {
    v119 = qword_1000B3C08;
    swift_once();
    v65 = v119;
  }

  v66 = sub_10004ABB0(v27, v29, v65, qword_1000B3BF8);

  v67 = v66;
  [v57 addSubview:v67];
  v126 = sub_10001FF68(&unk_1000B2970);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100089080;
  v69 = [v57 topAnchor];
  v70 = [v56 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v68 + 32) = v71;
  v72 = [v57 leadingAnchor];
  v73 = [v56 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v68 + 40) = v74;
  v75 = [v57 trailingAnchor];
  v76 = [v56 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v68 + 48) = v77;
  v78 = [v57 bottomAnchor];
  v79 = [v56 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v68 + 56) = v80;
  v81 = [v67 topAnchor];

  v82 = [v57 topAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:16.0];

  *(v68 + 64) = v83;
  v84 = [v67 leadingAnchor];

  v85 = [v57 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:16.0];

  *(v68 + 72) = v86;
  v87 = [v67 trailingAnchor];

  v88 = [v57 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:-16.0];

  *(v68 + 80) = v89;
  v90 = [v57 widthAnchor];
  v91 = [v90 constraintEqualToConstant:a3];

  *(v68 + 88) = v91;
  v92 = [v57 heightAnchor];
  v93 = [v92 constraintEqualToConstant:a4];

  *(v68 + 96) = v93;
  v94 = v133;
  v95 = [v133 centerXAnchor];
  v96 = [v57 centerXAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  *(v68 + 104) = v97;
  v98 = [v94 centerYAnchor];
  v99 = [v57 centerYAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:16.0];

  *(v68 + 112) = v100;
  v134 = v68;
  v101 = [v56 traitCollection];

  v102 = [v101 preferredContentSizeCategory];
  LOBYTE(v101) = sub_10007E6C4();

  if (v101)
  {
    if (qword_1000B1B58 != -1)
    {
      swift_once();
    }

    v103 = qword_1000B3C10;
    if (qword_1000B1B48 != -1)
    {
      v120 = qword_1000B3C10;
      swift_once();
      v103 = v120;
    }

    v104 = sub_10004ABB0(v127, v128, v103, qword_1000B3C00);

    v105 = v104;
    [v57 addSubview:v105];
    v106 = swift_initStackObject();
    *(v106 + 16) = xmmword_100086100;
    v107 = [v105 topAnchor];
    v108 = [v67 bottomAnchor];

    v109 = [v107 constraintEqualToAnchor:v108];
    *(v106 + 32) = v109;
    v110 = [v105 leadingAnchor];

    v111 = [v57 leadingAnchor];
    v112 = [v110 constraintEqualToAnchor:v111 constant:16.0];

    *(v106 + 40) = v112;
    v113 = [v105 trailingAnchor];

    v114 = [v57 trailingAnchor];
    v115 = [v113 constraintEqualToAnchor:v114 constant:-16.0];

    *(v106 + 48) = v115;
    sub_10006B218(v106);
  }

  else
  {
  }

  v116 = objc_opt_self();
  sub_100032404(0, &qword_1000B4280);
  v117 = sub_10007E544().super.isa;

  [v116 activateConstraints:v117];

  v130(v129, v132);
  return v56;
}

id sub_10004A484(id a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 setMasksToBounds:1];
    [a1 setCornerRadius:16.0];
  }

  v4 = [objc_allocWithZone(CAGradientLayer) init];
  [v2 bounds];
  [v4 setFrame:?];

  sub_10001FF68(&qword_1000B3C70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000860C0;
  if (qword_1000B1B28 != -1)
  {
    swift_once();
  }

  v6 = qword_1000B3BE0;
  type metadata accessor for CGColor(0);
  v8 = v7;
  *(v5 + 56) = v7;
  *(v5 + 32) = v6;
  v9 = qword_1000B1B30;
  v10 = v6;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1000B3BE8;
  *(v5 + 88) = v8;
  *(v5 + 64) = v11;
  v12 = v11;
  isa = sub_10007E544().super.isa;

  [v4 setColors:isa];

  if (a1)
  {
    [a1 insertSublayer:v4 atIndex:0];
  }

  return v4;
}

id sub_10004A678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEAudioPreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSEAudioPreviewView()
{
  result = qword_1000B3C60;
  if (!qword_1000B3C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A790()
{
  result = sub_10007DD94();
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

void *sub_10004A844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001FF68(&qword_1000B3C88);
    v3 = sub_10007E7F4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_10007E444();
      sub_10007EB04();
      v27 = v7;
      sub_10007E494();
      v8 = sub_10007EB54();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_10007E444();
        v18 = v17;
        if (v16 == sub_10007E444() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_10007EAA4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10004AA38(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10004AA94()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:80.0];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = sub_10007E404();
  v4 = v2;
  v5 = [v1 systemImageNamed:v3 withConfiguration:v4];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_10004ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(UILabel) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [objc_opt_self() preferredFontForTextStyle:a4];
  [v6 setFont:v7];

  [v6 setTextColor:a3];
  [v6 setTextAlignment:1];
  v8 = sub_10007E404();
  [v6 setText:v8];

  return v6;
}

uint64_t sub_10004ACAC()
{
  v1 = v0;
  v2 = sub_10007E084();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v34[-v7];
  v9 = sub_10001FF68(&unk_1000B4440);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v34[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v34[-v17];
  __chkstk_darwin(v16);
  v20 = &v34[-v19];
  v21 = [v1 mediaUTI];
  if (v21)
  {
    v22 = v21;
    sub_10007E014();

    v23 = *(v3 + 56);
    v23(v18, 0, 1, v2);
  }

  else
  {
    v23 = *(v3 + 56);
    v23(v18, 1, 1, v2);
  }

  sub_10004B0FC(v18, v20);
  v37 = *(v3 + 48);
  if (v37(v20, 1, v2))
  {
    sub_100023AE0(v20, &unk_1000B4440);
  }

  else
  {
    (*(v3 + 16))(v8, v20, v2);
    sub_100023AE0(v20, &unk_1000B4440);
    sub_10007E064();
    v35 = sub_10007E074();
    v36 = v15;
    v24 = v23;
    v25 = *(v3 + 8);
    v25(v6, v2);
    v25(v8, v2);
    v23 = v24;
    v15 = v36;
    if (v35)
    {
LABEL_9:
      v27 = 1;
      goto LABEL_11;
    }
  }

  v26 = [v1 image];
  if (v26)
  {

    goto LABEL_9;
  }

  v27 = 0;
LABEL_11:
  v28 = [v1 mediaUTI];
  if (v28)
  {
    v29 = v28;
    sub_10007E014();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v23(v12, v30, 1, v2);
  sub_10004B0FC(v12, v15);
  if (v37(v15, 1, v2))
  {
    sub_100023AE0(v15, &unk_1000B4440);
    if (v27)
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_100023AE0(v15, &unk_1000B4440);
    sub_10007DFE4();
    v32 = sub_10007E074();
    v33 = *(v3 + 8);
    v33(v6, v2);
    v33(v8, v2);
    if ((v27 | v32))
    {
      return v27 ^ 1u;
    }
  }

  return 2;
}

uint64_t sub_10004B0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B4440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B16C(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B3E18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100021160(a1, a1[3]);
  sub_10004D40C();
  sub_10007EBE4();
  v15 = 0;
  sub_10007DEB4();
  sub_10004D460(&qword_1000B2390, &type metadata accessor for UUID);
  sub_10007EA04();
  if (!v2)
  {
    v9 = type metadata accessor for CRLSEImportManifest(0);
    v14 = 1;
    sub_10007E9F4();
    v13 = 2;
    sub_10007EA24();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_10001FF68(&qword_1000B3E00);
    sub_10004D4A8(&qword_1000B3E20, &qword_1000B3E28);
    sub_10007EA54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10004B3EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_10001FF68(&qword_1000B2210);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_10001FF68(&qword_1000B3DF0);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v27 = type metadata accessor for CRLSEImportManifest(0);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007DEB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100021160(a1, a1[3]);
  sub_10004D40C();
  sub_10007EBD4();
  if (v2)
  {
    sub_1000211F8(a1);
    sub_100023AE0(v11, &qword_1000B2210);
  }

  else
  {
    v13 = v25;
    v32 = 0;
    sub_10004D460(&qword_1000B2328, &type metadata accessor for UUID);
    sub_10007E974();
    sub_100023A10(v6, v11, &qword_1000B2210);
    v31 = 1;
    v14 = sub_10007E964();
    v15 = v27;
    v16 = &v11[*(v27 + 20)];
    *v16 = v14;
    v16[1] = v17;
    v30 = 2;
    v18 = sub_10007E994();
    v19 = &v11[*(v15 + 24)];
    *v19 = v18;
    v19[1] = v20;
    sub_10001FF68(&qword_1000B3E00);
    v29 = 3;
    sub_10004D4A8(&qword_1000B3E08, &qword_1000B3E10);
    sub_10007E9C4();
    v21 = *(v15 + 28);
    (*(v13 + 8))(v9, v26);
    *&v11[v21] = v28;
    sub_10004D598(v11, v24, type metadata accessor for CRLSEImportManifest);
    sub_1000211F8(a1);
    return sub_10004D600(v11, type metadata accessor for CRLSEImportManifest);
  }
}

uint64_t sub_10004B878()
{
  v1 = 0x4955556472616F62;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x6D614E72656E776FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10004B8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004D9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004B918(uint64_t a1)
{
  v2 = sub_10004D40C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B954(uint64_t a1)
{
  v2 = sub_10004D40C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004B9C0(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B3E58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_10004D544();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007DEB4();
  sub_10004D460(&qword_1000B2390, &type metadata accessor for UUID);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLSEManifestItem(0);
    v8[14] = 1;
    sub_10007E9F4();
    v8[13] = 2;
    sub_10007DBA4();
    sub_10004D460(&qword_1000B3E60, &type metadata accessor for AttributedString);
    sub_10007EA04();
    v8[12] = 3;
    sub_10007DD94();
    sub_10004D460(&qword_1000B3E68, &type metadata accessor for URL);
    sub_10007EA04();
    v8[11] = 4;
    sub_10007E084();
    sub_10004D460(&qword_1000B3E70, &type metadata accessor for UTType);
    sub_10007EA04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10004BCDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_10001FF68(&unk_1000B4440);
  __chkstk_darwin(v3 - 8);
  v42 = v40 - v4;
  v5 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v5 - 8);
  v43 = v40 - v6;
  v7 = sub_10001FF68(&qword_1000B3D38);
  __chkstk_darwin(v7 - 8);
  v45 = v40 - v8;
  v46 = sub_10007DEB4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10001FF68(&qword_1000B3E30);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = v40 - v10;
  v12 = type metadata accessor for CRLSEManifestItem(0);
  v13 = __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 24);
  v17 = sub_10007DBA4();
  v18 = *(*(v17 - 8) + 56);
  v55 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = v12[7];
  v20 = sub_10007DD94();
  v21 = *(*(v20 - 8) + 56);
  v53 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = v12[8];
  v23 = sub_10007E084();
  v24 = *(*(v23 - 8) + 56);
  v54 = v22;
  v51 = v15;
  v24(&v15[v22], 1, 1, v23);
  sub_100021160(a1, a1[3]);
  sub_10004D544();
  v49 = v11;
  v25 = v52;
  sub_10007EBD4();
  if (v25)
  {
    sub_1000211F8(a1);
    v29 = v53;
    v30 = v51;
    sub_100023AE0(&v51[v55], &qword_1000B3D38);
    sub_100023AE0(&v30[v29], &qword_1000B2980);
    return sub_100023AE0(&v30[v54], &unk_1000B4440);
  }

  else
  {
    v40[1] = v23;
    v40[2] = v20;
    v26 = v44;
    v27 = v45;
    v52 = a1;
    v60 = 0;
    sub_10004D460(&qword_1000B2328, &type metadata accessor for UUID);
    v28 = v46;
    sub_10007E9C4();
    v31 = v51;
    (*(v26 + 32))(v51, v48, v28);
    v59 = 1;
    v32 = sub_10007E964();
    v33 = (v31 + v12[5]);
    *v33 = v32;
    v33[1] = v34;
    v48 = v34;
    v58 = 2;
    sub_10004D460(&qword_1000B3E40, &type metadata accessor for AttributedString);
    sub_10007E974();
    sub_100023A10(v27, v31 + v55, &qword_1000B3D38);
    v57 = 3;
    sub_10004D460(&qword_1000B3E48, &type metadata accessor for URL);
    v35 = v43;
    sub_10007E974();
    v36 = v31;
    v37 = v47;
    sub_100023A10(v35, v36 + v53, &qword_1000B2980);
    v56 = 4;
    sub_10004D460(&qword_1000B3E50, &type metadata accessor for UTType);
    v38 = v42;
    sub_10007E974();
    (*(v37 + 8))(v49, v50);
    sub_100023A10(v38, v36 + v54, &unk_1000B4440);
    sub_10004D598(v36, v41, type metadata accessor for CRLSEManifestItem);
    sub_1000211F8(v52);
    return sub_10004D600(v36, type metadata accessor for CRLSEManifestItem);
  }
}

uint64_t sub_10004C484()
{
  v1 = *v0;
  v2 = 0x444955556D657469;
  v3 = 0x7475626972747461;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x495455616964656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004DB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004C554(uint64_t a1)
{
  v2 = sub_10004D544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C590(uint64_t a1)
{
  v2 = sub_10004D544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C5FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007E904())
  {
    v3 = 0;
    v27._object = 0x800000010008DBC0;
    v28 = _swiftEmptyArrayStorage;
LABEL_5:
    v4 = 0;
    v5 = v3;
    v6 = *(&off_1000A7338 + v3 + 32);
    v29 = v5 + 1;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10007E844();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 == sub_10004ACAC())
      {
        sub_10007E884();
        sub_10007E8B4();
        sub_10007E8C4();
        sub_10007E894();
      }

      else
      {
      }

      ++v4;
      if (v9 == i)
      {
        v10 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
        if (!v10)
        {
          if (_swiftEmptyArrayStorage[2])
          {
            goto LABEL_20;
          }

LABEL_4:

          v3 = v29;
          if (v29 != 3)
          {
            goto LABEL_5;
          }

          goto LABEL_36;
        }

        if (!sub_10007E904())
        {
          goto LABEL_4;
        }

LABEL_20:
        type metadata accessor for CRLSEExtensionContextManager();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        if (v6)
        {
          if (v6 == 1)
          {
            v27._countAndFlagsBits = 0x800000010008DB80;
            v14.value._object = 0x800000010008C5C0;
            v13._countAndFlagsBits = 0x6964656D20756C25;
            v13._object = 0xEF736D6574692061;
            v14.value._countAndFlagsBits = 0xD000000000000010;
            v15.super.isa = v12;
            v16._countAndFlagsBits = 0x6964656D20756C25;
            v16._object = 0xEF736D6574692061;
          }

          else
          {
            v27._countAndFlagsBits = 0x800000010008DB50;
            v14.value._object = 0x800000010008C5C0;
            v13._countAndFlagsBits = 0x6B6E696C20756C25;
            v13._object = 0xE900000000000073;
            v14.value._countAndFlagsBits = 0xD000000000000010;
            v15.super.isa = v12;
            v16._countAndFlagsBits = 0x6B6E696C20756C25;
            v16._object = 0xE900000000000073;
          }
        }

        else
        {
          v27._countAndFlagsBits = v27._object;
          v14.value._object = 0x800000010008C5C0;
          v13._countAndFlagsBits = 0x67616D6920756C25;
          v13._object = 0xEA00000000007365;
          v14.value._countAndFlagsBits = 0xD000000000000010;
          v15.super.isa = v12;
          v16._countAndFlagsBits = 0x67616D6920756C25;
          v16._object = 0xEA00000000007365;
        }

        sub_10007DBC4(v13, v14, v15, v16, v27);

        sub_10001FF68(&qword_1000B43B0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1000860E0;
        if (v10)
        {
          v18 = sub_10007E904();
        }

        else
        {
          v18 = _swiftEmptyArrayStorage[2];
        }

        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        *(v17 + 32) = v18;
        v19 = sub_10007E414();
        v21 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_10006DD28(0, *(v28 + 2) + 1, 1, v28);
        }

        v3 = v29;
        v23 = *(v28 + 2);
        v22 = *(v28 + 3);
        if (v23 >= v22 >> 1)
        {
          v28 = sub_10006DD28((v22 > 1), v23 + 1, 1, v28);
        }

        *(v28 + 2) = v23 + 1;
        v24 = &v28[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        if (v29 == 3)
        {
LABEL_36:
          sub_10001FF68(&unk_1000B2A10);
          sub_10004CA9C();
          v25 = sub_10007E3E4();

          return v25;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  return 0;
}

unint64_t sub_10004CA9C()
{
  result = qword_1000B4480;
  if (!qword_1000B4480)
  {
    sub_10001FDB8(&unk_1000B2A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4480);
  }

  return result;
}

uint64_t sub_10004CB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001FF68(&qword_1000B2210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004CBF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001FF68(&qword_1000B2210);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10004CCDC()
{
  sub_10004CE30(319, &unk_1000B2288, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10004CDE0();
    if (v1 <= 0x3F)
    {
      sub_10004CE30(319, &unk_1000B3D00, type metadata accessor for CRLSEManifestItem, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004CDE0()
{
  if (!qword_1000B3CF8)
  {
    v0 = sub_10007E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3CF8);
    }
  }
}

void sub_10004CE30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10004CEC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10007DEB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_10001FF68(&qword_1000B3D38);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = sub_10001FF68(&qword_1000B2980);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[7];
    goto LABEL_13;
  }

  v18 = sub_10001FF68(&unk_1000B4440);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10007DEB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_10001FF68(&qword_1000B3D38);
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

  v16 = sub_10001FF68(&qword_1000B2980);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_10001FF68(&unk_1000B4440);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_10004D2B0()
{
  sub_10007DEB4();
  if (v0 <= 0x3F)
  {
    sub_10004CDE0();
    if (v1 <= 0x3F)
    {
      sub_10004CE30(319, &qword_1000B3DA8, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10004CE30(319, &qword_1000B4380, &type metadata accessor for URL, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10004CE30(319, &unk_1000B3DB0, &type metadata accessor for UTType, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10004D40C()
{
  result = qword_1000B3DF8;
  if (!qword_1000B3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3DF8);
  }

  return result;
}

uint64_t sub_10004D460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004D4A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(&qword_1000B3E00);
    sub_10004D460(a2, type metadata accessor for CRLSEManifestItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D544()
{
  result = qword_1000B3E38;
  if (!qword_1000B3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E38);
  }

  return result;
}

uint64_t sub_10004D598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CRLSEManifestItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLSEManifestItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004D7C4()
{
  result = qword_1000B3E78;
  if (!qword_1000B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E78);
  }

  return result;
}

unint64_t sub_10004D81C()
{
  result = qword_1000B3E80;
  if (!qword_1000B3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E80);
  }

  return result;
}

unint64_t sub_10004D874()
{
  result = qword_1000B3E88;
  if (!qword_1000B3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E88);
  }

  return result;
}

unint64_t sub_10004D8CC()
{
  result = qword_1000B3E90;
  if (!qword_1000B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E90);
  }

  return result;
}

unint64_t sub_10004D924()
{
  result = qword_1000B3E98;
  if (!qword_1000B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3E98);
  }

  return result;
}

unint64_t sub_10004D97C()
{
  result = qword_1000B3EA0;
  if (!qword_1000B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3EA0);
  }

  return result;
}

uint64_t sub_10004D9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955556472616F62 && a2 == 0xE900000000000044;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10004DB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556D657469 && a2 == 0xE800000000000000;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00747865546465 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x495455616964656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10004DD00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001FF68(&qword_1000B2D40);
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

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_10007DE44();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_10001FF68(&qword_1000B2D48);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[20];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10004DEEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_10001FF68(&qword_1000B2D40);
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

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_10007DE44();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_10001FF68(&qword_1000B2D48);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[20];

  return v18(v19, a2, a2, v17);
}

void sub_10004E0E4()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_10004E26C(319, &qword_1000B2DB8, type metadata accessor for CRLFolderIdentifier);
    if (v1 <= 0x3F)
    {
      sub_10007DE44();
      if (v2 <= 0x3F)
      {
        sub_10004E21C();
        if (v3 <= 0x3F)
        {
          sub_10004E26C(319, &unk_1000B2DC0, _s5BoardV13ShareMetadataVMa);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10004E21C()
{
  if (!qword_1000B3F10)
  {
    v0 = sub_10007E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3F10);
    }
  }
}

void sub_10004E26C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007E714();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004E2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001FF68(&qword_1000B2980);
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

uint64_t sub_10004E3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001FF68(&qword_1000B2980);
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

void sub_10004E4A4()
{
  sub_10004E26C(319, &qword_1000B4380, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_10004E558(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004E574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_10004E5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10004E648()
{
  result = qword_1000B4020;
  if (!qword_1000B4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4020);
  }

  return result;
}

uint64_t sub_10004E69C(void *a1, uint64_t *a2)
{
  if (a2[1])
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a1[1];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
    v5 = a1[1];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      if (v3 != *a1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v6 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v7 = sub_10007EAA4();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

uint64_t sub_10004E764(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B4098);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_1000527E0();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007E9F4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_10007E9F4();
  v8[13] = 2;
  sub_10007E9F4();
  v8[12] = 3;
  sub_10007EA34();
  return (*(v4 + 8))(v6, v3);
}

void sub_10004E924()
{
  if (*(v0 + 8))
  {
    sub_10007EB24(1u);
    sub_10007E494();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10007EB24(0);
    if (*(v0 + 40))
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_10007EB24(0);
    goto LABEL_8;
  }

  sub_10007EB24(0);
  if (!*(v0 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_10007EB24(1u);
  sub_10007E494();
  if (!*(v0 + 40))
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_10007EB24(1u);
  sub_10007E494();
LABEL_8:
  sub_10007EB24(*(v0 + 48) & 1);
}

uint64_t sub_10004E9F4()
{
  v1 = 0x4E79616C70736964;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x666C65537369;
  }

  if (*v0)
  {
    v1 = 0x6464416C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10004EA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000523C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004EAAC(uint64_t a1)
{
  v2 = sub_1000527E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004EAE8(uint64_t a1)
{
  v2 = sub_1000527E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004EB24@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100052530(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10004EB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100052304(v5, v7) & 1;
}

BOOL sub_10004EBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return (sub_100052304(v5, v7) & 1) == 0;
}

BOOL sub_10004EC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return (sub_100052304(v5, v7) & 1) == 0;
}

uint64_t sub_10004ECA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10004E69C(v5, v7) & 1;
}

uint64_t sub_10004ED04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10005136C(v5, v7) & 1;
}

Swift::Int sub_10004ED60()
{
  sub_10007EB04();
  sub_10004E924();
  return sub_10007EB54();
}

Swift::Int sub_10004EDA4()
{
  sub_10007EB04();
  sub_10004E924();
  return sub_10007EB54();
}

uint64_t sub_10004EE2C(void *a1)
{
  v3 = v1;
  v5 = sub_10001FF68(&qword_1000B4078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  sub_100021160(a1, a1[3]);
  sub_1000521A0();
  sub_10007EBE4();
  LOBYTE(v16) = 0;
  sub_10007EA34();
  if (!v2)
  {
    v9 = _s5BoardV13ShareMetadataVMa(0);
    LOBYTE(v16) = 1;
    sub_10007DD94();
    sub_10004FDAC(&qword_1000B3E68, &type metadata accessor for URL);
    sub_10007EA04();
    LOBYTE(v16) = 2;
    sub_10007EA24();
    LOBYTE(v16) = 3;
    sub_10007EA44();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[5];
    v12 = *(v10 + 48);
    v16 = *v10;
    v13 = *(v10 + 3);
    v17 = *(v10 + 1);
    v18 = v13;
    v19 = v11;
    v20 = v12;
    v15[7] = 4;
    sub_1000522B0();

    sub_10007EA54();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10004F0EC()
{
  v1 = sub_10007DD94();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  sub_10007EB24(*v0);
  v8 = _s5BoardV13ShareMetadataVMa(0);
  sub_100023A78(&v0[v8[5]], v7, &qword_1000B2980);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_10007EB24(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_10007EB24(1u);
    sub_10004FDAC(&qword_1000B2E60, &type metadata accessor for URL);
    sub_10007E3D4();
    (*(v2 + 8))(v4, v1);
  }

  sub_10007E494();
  sub_10007EB14(*&v0[v8[7]]);
  v9 = &v0[v8[8]];
  v10 = *(v9 + 1);
  v11[0] = *v9;
  v11[1] = v10;
  v11[2] = *(v9 + 2);
  v12 = v9[48];
  sub_10004E924();
}

uint64_t sub_10004F348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10001FF68(&qword_1000B4060);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = _s5BoardV13ShareMetadataVMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v11;
  v14 = *(v11 + 20);
  v15 = sub_10007DD94();
  v16 = *(*(v15 - 8) + 56);
  v33 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v32 = a1;
  sub_100021160(a1, v17);
  sub_1000521A0();
  sub_10007EBD4();
  if (v2)
  {
    v19 = v33;
    sub_1000211F8(v32);
    return sub_100023AE0(&v13[v19], &qword_1000B2980);
  }

  else
  {
    v18 = v29;
    LOBYTE(v34) = 0;
    *v13 = sub_10007E9A4() & 1;
    LOBYTE(v34) = 1;
    sub_10004FDAC(&qword_1000B3E48, &type metadata accessor for URL);
    sub_10007E974();
    v20 = v31;
    sub_100023A10(v6, &v13[v33], &qword_1000B2980);
    LOBYTE(v34) = 2;
    v21 = sub_10007E994();
    v22 = &v13[v20[6]];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v34) = 3;
    *&v13[v20[7]] = sub_10007E9B4();
    v38 = 4;
    sub_1000521F4();
    sub_10007E9C4();
    (*(v18 + 8))(v9, v30);
    v24 = v37;
    v25 = &v13[v20[8]];
    v26 = v35;
    *v25 = v34;
    *(v25 + 1) = v26;
    *(v25 + 2) = v36;
    v25[48] = v24;
    sub_100052248(v13, v28, _s5BoardV13ShareMetadataVMa);
    sub_1000211F8(v32);
    return sub_100052084(v13, _s5BoardV13ShareMetadataVMa);
  }
}

unint64_t sub_10004F7CC()
{
  v1 = *v0;
  v2 = 0x4C52556572616873;
  v3 = 0x7470697263736564;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004F880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100052CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004F8A8(uint64_t a1)
{
  v2 = sub_1000521A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004F8E4(uint64_t a1)
{
  v2 = sub_1000521A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004F950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a1 + v5 + 8))
  {
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
  }

  else
  {
    v8 = (a1 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a2 + v5);
  v10 = *(a2 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a2 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_10007EAA4();
  }

  return v15 & 1;
}

uint64_t sub_10004FA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a2 + v5 + 8))
  {
    v6 = *(a2 + v5);
    v7 = *(a2 + v5 + 8);
  }

  else
  {
    v8 = (a2 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a1 + v5);
  v10 = *(a1 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a1 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10007EAA4() ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_10004FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a1 + v5 + 8))
  {
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
  }

  else
  {
    v8 = (a1 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a2 + v5);
  v10 = *(a2 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a2 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10007EAA4() ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_10004FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (*(a2 + v5 + 8))
  {
    v6 = *(a2 + v5);
    v7 = *(a2 + v5 + 8);
  }

  else
  {
    v8 = (a2 + *(a3 + 24));
    v6 = *v8;
    v7 = v8[1];
  }

  v9 = (a1 + v5);
  v10 = *(a1 + v5 + 8);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v13 = (a1 + *(a3 + 24));
    v11 = *v13;
    v12 = v13[1];
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_10007EAA4();
  }

  return v15 & 1;
}

Swift::Int sub_10004FCE4()
{
  sub_10007EB04();
  sub_10004F0EC();
  return sub_10007EB54();
}

Swift::Int sub_10004FD28()
{
  sub_10007EB04();
  sub_10004F0EC();
  return sub_10007EB54();
}

uint64_t sub_10004FDAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004FDF4(char a1)
{
  result = 0x6564496472616F62;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
      result = 0x7974697669746361;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6C68676948736168;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x7261637369447369;
      break;
    case 10:
      result = 0x69726F7661467369;
      break;
    case 11:
      result = 0x617469766E497369;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x7473626D6F547369;
      break;
    case 14:
      result = 0x707075736E557369;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x74654D6572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100050048(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B4058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100021160(a1, a1[3]);
  sub_10005214C();
  sub_10007EBE4();
  v9 = 0;
  type metadata accessor for CRLBoardIdentifier(0);
  sub_10004FDAC(&qword_1000B3520, type metadata accessor for CRLBoardIdentifier);
  sub_10007EA54();
  if (!v1)
  {
    _s5BoardVMa(0);
    v9 = 1;
    type metadata accessor for CRLFolderIdentifier(0);
    sub_10004FDAC(&qword_1000B2508, type metadata accessor for CRLFolderIdentifier);
    sub_10007EA04();
    v9 = 2;
    sub_10007EA24();
    v9 = 3;
    sub_10007DE44();
    sub_10004FDAC(&qword_1000B2398, &type metadata accessor for Date);
    sub_10007EA54();
    v9 = 4;
    sub_10007EA54();
    v9 = 5;
    sub_10007EA34();
    v9 = 6;
    sub_10007EA34();
    v9 = 7;
    sub_10007EA34();
    v9 = 8;
    sub_10007EA34();
    v9 = 9;
    sub_10007EA34();
    v9 = 10;
    sub_10007EA34();
    v9 = 11;
    sub_10007EA34();
    v9 = 12;
    sub_10007EA34();
    v9 = 13;
    sub_10007EA34();
    v9 = 14;
    sub_10007EA34();
    v9 = 15;
    sub_10007EA14();
    v9 = 16;
    _s5BoardV13ShareMetadataVMa(0);
    sub_10004FDAC(&qword_1000B2FE0, _s5BoardV13ShareMetadataVMa);
    sub_10007EA04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005058C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10001FF68(&qword_1000B2D48);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v4;
  v5 = sub_10007DE44();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = __chkstk_darwin(v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v43 - v8;
  v9 = sub_10001FF68(&qword_1000B2D40);
  __chkstk_darwin(v9 - 8);
  v51 = &v43 - v10;
  v53 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v53);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001FF68(&qword_1000B4048);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = _s5BoardVMa(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v60 = v19;
  v20 = type metadata accessor for CRLFolderIdentifier(0);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  v21 = *(v15 + 80);
  v22 = _s5BoardV13ShareMetadataVMa(0);
  v23 = *(*(v22 - 8) + 56);
  v59 = v21;
  v23(&v18[v21], 1, 1, v22);
  sub_100021160(a1, a1[3]);
  sub_10005214C();
  v57 = v14;
  v24 = v58;
  sub_10007EBD4();
  v25 = v60;
  if (v24)
  {
    sub_1000211F8(a1);
    sub_100023AE0(&v18[v25], &qword_1000B2D40);
    return sub_100023AE0(&v18[v59], &qword_1000B2D48);
  }

  else
  {
    v26 = v51;
    v27 = v52;
    v43 = v22;
    v44 = v15;
    v45 = v18;
    v58 = a1;
    v61 = 0;
    sub_10004FDAC(&qword_1000B3518, type metadata accessor for CRLBoardIdentifier);
    v28 = v54;
    sub_10007E9C4();
    v29 = v45;
    sub_1000520E4(v28, v45, type metadata accessor for CRLBoardIdentifier);
    v61 = 1;
    sub_10004FDAC(&qword_1000B24F8, type metadata accessor for CRLFolderIdentifier);
    sub_10007E974();
    sub_100023A10(v26, v29 + v60, &qword_1000B2D40);
    v61 = 2;
    v30 = sub_10007E994();
    v31 = v50;
    v32 = v44;
    v33 = (v29 + v44[6]);
    *v33 = v30;
    v33[1] = v34;
    v61 = 3;
    sub_10004FDAC(&qword_1000B2330, &type metadata accessor for Date);
    v35 = v27;
    sub_10007E9C4();
    v36 = *(v49 + 32);
    v36(v29 + v32[7], v35, v31);
    v61 = 4;
    v37 = v48;
    sub_10007E9C4();
    v36(&v45[v32[8]], v37, v31);
    v61 = 5;
    v45[v32[9]] = sub_10007E9A4() & 1;
    v61 = 6;
    v45[v32[10]] = sub_10007E9A4() & 1;
    v61 = 7;
    v45[v44[11]] = sub_10007E9A4() & 1;
    v61 = 8;
    v45[v44[12]] = sub_10007E9A4() & 1;
    v61 = 9;
    v45[v44[13]] = sub_10007E9A4() & 1;
    v61 = 10;
    v45[v44[14]] = sub_10007E9A4() & 1;
    v61 = 11;
    v45[v44[15]] = sub_10007E9A4() & 1;
    v61 = 12;
    v45[v44[16]] = sub_10007E9A4() & 1;
    v61 = 13;
    v45[v44[17]] = sub_10007E9A4() & 1;
    v61 = 14;
    v45[v44[18]] = sub_10007E9A4() & 1;
    v61 = 15;
    v38 = sub_10007E984();
    v39 = &v45[v44[19]];
    *v39 = v38;
    v39[8] = v40 & 1;
    v61 = 16;
    sub_10004FDAC(&qword_1000B2FC8, _s5BoardV13ShareMetadataVMa);
    sub_10007E974();
    (*(v55 + 8))(v57, v56);
    v41 = v45;
    sub_100023A10(v46, &v45[v59], &qword_1000B2D48);
    sub_100052248(v41, v47, _s5BoardVMa);
    sub_1000211F8(v58);
    return sub_100052084(v41, _s5BoardVMa);
  }
}

uint64_t sub_1000510A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100052E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000510DC(uint64_t a1)
{
  v2 = sub_10005214C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051118(uint64_t a1)
{
  v2 = sub_10005214C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100051188()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_10004FDAC(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_10005122C()
{
  sub_10007DEB4();
  sub_10004FDAC(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return sub_10007E494();
}

Swift::Int sub_1000512CC()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_10004FDAC(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_10005136C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_10007EAA4();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_10007EAA4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_24;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (v16)
    {
      if (*(a1 + 32) == *(a2 + 32) && v15 == v16)
      {
        goto LABEL_22;
      }

      v17 = a1;
      v18 = a2;
      v19 = sub_10007EAA4();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if (v20)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v21 & 1;
}

BOOL sub_1000514A4(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardV13ShareMetadataVMa(0);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B2D48);
  __chkstk_darwin(v7 - 8);
  v66 = &v58 - v8;
  v64 = sub_10001FF68(&qword_1000B2E48);
  __chkstk_darwin(v64);
  v10 = &v58 - v9;
  v11 = type metadata accessor for CRLFolderIdentifier(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001FF68(&qword_1000B2D40);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_10001FF68(&qword_1000B2E50);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  if ((sub_10007DE74() & 1) == 0)
  {
    return 0;
  }

  v20 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v62 = a1;
  v63 = a2;
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_10007EAA4() & 1) == 0)
  {
    return 0;
  }

  v60 = v4;
  v61 = v10;
  v59 = v6;
  v24 = _s5BoardVMa(0);
  v25 = v24[5];
  v26 = *(v17 + 48);
  v27 = v62;
  sub_100023A78(v62 + v25, v19, &qword_1000B2D40);
  v28 = v63 + v25;
  v29 = v63;
  sub_100023A78(v28, &v19[v26], &qword_1000B2D40);
  v30 = *(v12 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v26], 1, v11) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_100023A78(v19, v16, &qword_1000B2D40);
  if (v30(&v19[v26], 1, v11) == 1)
  {
    sub_100052084(v16, type metadata accessor for CRLFolderIdentifier);
LABEL_10:
    v31 = &qword_1000B2E50;
LABEL_35:
    v46 = v19;
LABEL_36:
    sub_100023AE0(v46, v31);
    return 0;
  }

  v32 = v67;
  sub_1000520E4(&v19[v26], v67, type metadata accessor for CRLFolderIdentifier);
  if ((sub_10007DE74() & 1) == 0 || ((v33 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v34 = *&v16[v33], v35 = *&v16[v33 + 8], v36 = (v32 + v33), v34 != *v36) || v35 != v36[1]) && (sub_10007EAA4() & 1) == 0)
  {
    sub_100052084(v32, type metadata accessor for CRLFolderIdentifier);
    sub_100052084(v16, type metadata accessor for CRLFolderIdentifier);
    v31 = &qword_1000B2D40;
    goto LABEL_35;
  }

  sub_100052084(v32, type metadata accessor for CRLFolderIdentifier);
  sub_100052084(v16, type metadata accessor for CRLFolderIdentifier);
LABEL_16:
  sub_100023AE0(v19, &qword_1000B2D40);
  v37 = v24[6];
  v38 = *(v27 + v37);
  v39 = *(v27 + v37 + 8);
  v40 = (v29 + v37);
  if ((v38 != *v40 || v39 != v40[1]) && (sub_10007EAA4() & 1) == 0 || (sub_10007DE04() & 1) == 0 || (sub_10007DE04() & 1) == 0 || *(v27 + v24[9]) != *(v29 + v24[9]) || *(v27 + v24[10]) != *(v29 + v24[10]) || *(v27 + v24[11]) != *(v29 + v24[11]) || *(v27 + v24[12]) != *(v29 + v24[12]) || *(v27 + v24[13]) != *(v29 + v24[13]) || *(v27 + v24[14]) != *(v29 + v24[14]) || *(v27 + v24[15]) != *(v29 + v24[15]) || *(v27 + v24[16]) != *(v29 + v24[16]) || *(v27 + v24[17]) != *(v29 + v24[17]) || *(v27 + v24[18]) != *(v29 + v24[18]))
  {
    return 0;
  }

  v41 = v24[19];
  v42 = (v62 + v41);
  v43 = *(v62 + v41 + 8);
  v44 = (v63 + v41);
  v45 = *(v63 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v48 = v24[20];
  v49 = *(v64 + 48);
  v50 = v61;
  sub_100023A78(v62 + v48, v61, &qword_1000B2D48);
  sub_100023A78(v63 + v48, v50 + v49, &qword_1000B2D48);
  v51 = *(v65 + 48);
  if (v51(v50, 1, v60) != 1)
  {
    v52 = v61;
    sub_100023A78(v61, v66, &qword_1000B2D48);
    if (v51(v52 + v49, 1, v60) == 1)
    {
      sub_100052084(v66, _s5BoardV13ShareMetadataVMa);
      goto LABEL_46;
    }

    v53 = v61;
    v54 = &v61[v49];
    v55 = v59;
    sub_1000520E4(v54, v59, _s5BoardV13ShareMetadataVMa);
    v56 = v66;
    v57 = sub_100051C8C(v66, v55);
    sub_100052084(v55, _s5BoardV13ShareMetadataVMa);
    sub_100052084(v56, _s5BoardV13ShareMetadataVMa);
    sub_100023AE0(v53, &qword_1000B2D48);
    return (v57 & 1) != 0;
  }

  if (v51(&v61[v49], 1, v60) != 1)
  {
LABEL_46:
    v31 = &qword_1000B2E48;
    v46 = v61;
    goto LABEL_36;
  }

  sub_100023AE0(v61, &qword_1000B2D48);
  return 1;
}

uint64_t sub_100051C8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_10007DD94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_10001FF68(&qword_1000B4038);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_14;
  }

  v14 = _s5BoardV13ShareMetadataVMa(0);
  v15 = a1;
  v16 = a2;
  v36 = v14;
  v37 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_100023A78(&v15[v17], v13, &qword_1000B2980);
  v19 = &v16[v17];
  v20 = v16;
  sub_100023A78(v19, &v13[v18], &qword_1000B2980);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_100023A78(v13, v10, &qword_1000B2980);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_10004FDAC(&qword_1000B4040, &type metadata accessor for URL);
      v22 = sub_10007E3F4();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      v20 = v16;
      sub_100023AE0(v13, &qword_1000B2980);
      if (v22)
      {
        goto LABEL_9;
      }

LABEL_14:
      v34 = 0;
      return v34 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_100023AE0(v13, &qword_1000B4038);
    goto LABEL_14;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_100023AE0(v13, &qword_1000B2980);
LABEL_9:
  v25 = v36;
  v24 = v37;
  v26 = *(v36 + 24);
  v27 = *&v37[v26];
  v28 = *&v37[v26 + 8];
  v29 = &v20[v26];
  if ((v27 != *v29 || v28 != *(v29 + 1)) && (sub_10007EAA4() & 1) == 0 || *&v24[*(v25 + 28)] != *&v20[*(v25 + 28)])
  {
    goto LABEL_14;
  }

  v30 = &v24[*(v25 + 32)];
  v31 = *(v30 + 2);
  v38[1] = *(v30 + 1);
  v38[2] = v31;
  v39 = v30[48];
  v38[0] = *v30;
  v32 = &v20[*(v25 + 32)];
  v41 = v32[48];
  v33 = *(v32 + 2);
  v40[1] = *(v32 + 1);
  v40[2] = v33;
  v40[0] = *v32;
  v34 = sub_10005136C(v38, v40);
  return v34 & 1;
}

uint64_t sub_100052084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000520E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005214C()
{
  result = qword_1000B4050;
  if (!qword_1000B4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4050);
  }

  return result;
}

unint64_t sub_1000521A0()
{
  result = qword_1000B4068;
  if (!qword_1000B4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4068);
  }

  return result;
}

unint64_t sub_1000521F4()
{
  result = qword_1000B4070;
  if (!qword_1000B4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4070);
  }

  return result;
}

uint64_t sub_100052248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000522B0()
{
  result = qword_1000B4080;
  if (!qword_1000B4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4080);
  }

  return result;
}

uint64_t sub_100052304(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    v5 = a2[1];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
    v5 = a2[1];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      if (v3 != *a2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v6 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v7 = sub_10007EAA4();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

uint64_t sub_1000523C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666C65537369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100052530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001FF68(&qword_1000B4088);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100021160(a1, a1[3]);
  sub_1000527E0();
  sub_10007EBD4();
  if (v2)
  {
    sub_1000211F8(a1);
  }

  else
  {
    v29 = 0;
    v9 = sub_10007E964();
    v11 = v10;
    v24 = v9;
    v28 = 1;
    v12 = sub_10007E964();
    v14 = v13;
    v23 = v12;
    v27 = 2;
    v15 = sub_10007E964();
    v17 = v16;
    v22 = v15;
    v26 = 3;
    v25 = sub_10007E9A4();
    (*(v6 + 8))(v8, v5);
    v18 = v25 & 1;

    sub_1000211F8(a1);

    v20 = v23;
    *a2 = v24;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    *(a2 + 32) = v22;
    *(a2 + 40) = v17;
    *(a2 + 48) = v18;
  }

  return result;
}

unint64_t sub_1000527E0()
{
  result = qword_1000B4090;
  if (!qword_1000B4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4090);
  }

  return result;
}

uint64_t _s5BoardV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5BoardV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000529A8()
{
  result = qword_1000B40A0;
  if (!qword_1000B40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40A0);
  }

  return result;
}

unint64_t sub_100052A00()
{
  result = qword_1000B40A8;
  if (!qword_1000B40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40A8);
  }

  return result;
}

unint64_t sub_100052A58()
{
  result = qword_1000B40B0;
  if (!qword_1000B40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40B0);
  }

  return result;
}

unint64_t sub_100052AB0()
{
  result = qword_1000B40B8;
  if (!qword_1000B40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40B8);
  }

  return result;
}

unint64_t sub_100052B08()
{
  result = qword_1000B40C0;
  if (!qword_1000B40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40C0);
  }

  return result;
}

unint64_t sub_100052B60()
{
  result = qword_1000B40C8;
  if (!qword_1000B40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40C8);
  }

  return result;
}

unint64_t sub_100052BB8()
{
  result = qword_1000B40D0;
  if (!qword_1000B40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40D0);
  }

  return result;
}

unint64_t sub_100052C10()
{
  result = qword_1000B40D8;
  if (!qword_1000B40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40D8);
  }

  return result;
}

unint64_t sub_100052C68()
{
  result = qword_1000B40E0;
  if (!qword_1000B40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40E0);
  }

  return result;
}

uint64_t sub_100052CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000010008DC90 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010008DCB0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010008DCD0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_10007EAA4();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100052E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_10007EAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008CD90 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_10007EAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (sub_10007EAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEC000000656D6954 || (sub_10007EAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010008DBF0 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C68676948736168 && a2 == 0xEC00000074686769 || (sub_10007EAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008DC10 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008DC30 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7261637369447369 && a2 == 0xED0000656C626164 || (sub_10007EAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_10007EAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617469766E497369 && a2 == 0xEC0000006E6F6974 || (sub_10007EAA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010008DC50 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7473626D6F547369 && a2 == 0xEC00000064656E6FLL || (sub_10007EAA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x707075736E557369 && a2 == 0xED0000646574726FLL || (sub_10007EAA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010008DC70 == a2 || (sub_10007EAA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x74654D6572616873 && a2 == 0xED00006174616461)
  {

    return 16;
  }

  else
  {
    v6 = sub_10007EAA4();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

id sub_100053404()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(NSDateFormatter) init];
    [v3 setDateStyle:1];
    [v3 setTimeStyle:1];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100053498()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(NSDateFormatter) init];
    [v3 setDateStyle:2];
    [v3 setTimeStyle:1];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10005352C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(NSDateFormatter) init];
    v4 = sub_10007E404();
    [v3 setLocalizedDateFormatFromTemplate:v4];

    v5 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1000535D0()
{
  v1 = v0;
  v2 = sub_10007DEF4();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001FF68(&unk_1000B2A00);
  __chkstk_darwin(v4 - 8);
  v49 = &v45 - v5;
  v6 = sub_10007DE44();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = __chkstk_darwin(v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v45 - v9;
  v10 = sub_10007DF04();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v56 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DEE4();
  v12 = sub_100053404();
  [v12 setDoesRelativeDateFormatting:1];

  v13 = *(v0 + 16);
  isa = sub_10007DDF4().super.isa;
  v15 = [v13 stringFromDate:isa];

  v16 = sub_10007E444();
  v18 = v17;

  [*(v1 + 16) setDoesRelativeDateFormatting:0];
  v19 = *(v1 + 16);
  v20 = sub_10007DDF4().super.isa;
  v21 = [v19 stringFromDate:v20];

  v22 = sub_10007E444();
  v24 = v23;

  if (v16 == v22 && v18 == v24 || (sub_10007EAA4() & 1) != 0)
  {

    v26 = v50;
    v25 = v51;
    v27 = v48;
    (*(v50 + 104))(v48, enum case for Calendar.Component.weekOfYear(_:), v51);
    v28 = v49;
    v29 = v56;
    sub_10007DED4();
    v30 = v28;
    (*(v26 + 8))(v27, v25);
    v31 = v52;
    v32 = v28;
    v33 = v53;
    if ((*(v52 + 48))(v32, 1, v53) == 1)
    {
      sub_100023AE0(v30, &unk_1000B2A00);
LABEL_11:
      v41 = sub_100053498();
      v42 = sub_10007DDF4().super.isa;
      v43 = [v41 stringFromDate:v42];

      sub_10007E444();
      (*(v54 + 8))(v29, v55);
      return v22;
    }

    v34 = v47;
    (*(v31 + 32))(v47, v30, v33);
    v35 = v46;
    sub_10007DE14();
    v36 = sub_10007DE24();
    v37 = *(v31 + 8);
    v37(v35, v33);
    if (v36 != 1)
    {
      v37(v34, v33);
      v29 = v56;
      goto LABEL_11;
    }

    v38 = sub_10005352C();
    v39 = sub_10007DDF4().super.isa;
    v40 = [v38 stringFromDate:v39];

    v16 = sub_10007E444();
    v37(v34, v33);
    (*(v54 + 8))(v56, v55);
  }

  else
  {
    (*(v54 + 8))(v56, v55);
  }

  return v16;
}

uint64_t sub_100053B7C()
{

  return swift_deallocClassInstance();
}

id sub_100053BE8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dateFormatter;
  type metadata accessor for CRLSEDateFormatter();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = 0;
  *&v1[v3] = v4;
  sub_100058110(a1, &v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject], type metadata accessor for CRLSELibraryViewModelItemNode);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRLSEBoardPickerViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_100058178(a1, type metadata accessor for CRLSELibraryViewModelItemNode);
  return v5;
}

id sub_100053D04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10001FF68(&unk_1000B4270);
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = __chkstk_darwin(v2);
  v78[1] = v4;
  v79 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v80 = v78 - v5;
  v6 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v7 = __chkstk_darwin(v6);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v84 = v78 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v78 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v78 - v16;
  __chkstk_darwin(v15);
  v19 = v78 - v18;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v21 = result;
  v22 = [objc_opt_self() systemGroupedBackgroundColor];
  [v21 setBackgroundColor:v22];

  v23 = [v1 navigationItem];
  v24 = OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject;
  sub_100058110(&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject], v19, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_1000581D8(v19, v17, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100058178(v17, type metadata accessor for CRLSELibraryViewModel.Item);
  v26 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100058110(&v1[v24], v14, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_1000187F4();
    sub_100058178(v14, type metadata accessor for CRLSELibraryViewModel.Item);
  }

  else
  {
    type metadata accessor for CRLSEExtensionContextManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v29 = v6;
    v30 = sub_10007E404();
    v31 = sub_10007E404();
    v32 = sub_10007E404();
    v33 = [v28 localizedStringForKey:v30 value:v31 table:v32];

    v26 = v29;
    sub_10007E444();
  }

  v34 = sub_10007E404();

  [v23 setTitle:v34];

  v35 = v84;
  sub_100058110(&v1[v24], v84, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_1000581D8(v35, v9, type metadata accessor for CRLSELibraryViewModel.Item);
  v84 = v26;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100058178(v9, type metadata accessor for CRLSELibraryViewModel.Item);
    p_base_prots = (&CRLPreviewImages.LookupKey + 40);
    goto LABEL_19;
  }

  v37 = [objc_opt_self() mainBundle];
  v38 = sub_10007E404();
  v39 = [v37 objectForInfoDictionaryKey:v38];

  p_base_prots = &CRLPreviewImages.LookupKey.base_prots;
  if (v39)
  {
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88[0] = v86;
  v88[1] = v87;
  if (!*(&v87 + 1))
  {
    sub_100023AE0(v88, &unk_1000B42A0);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v40 = 0;
    goto LABEL_15;
  }

  v40 = v85;
LABEL_15:
  v41 = [v1 navigationItem];
  if (v40)
  {
    v42 = sub_10007E404();
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v42 style:0 target:0 action:0];

  [v41 setBackBarButtonItem:v43];
LABEL_19:
  v44 = [v1 navigationItem];
  v45 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancel:"];
  [v44 setRightBarButtonItem:v45];

  v46 = sub_10005580C();
  [v46 setDelegate:v1];
  result = [v1 p_base_prots[308]];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v47 = result;
  v48 = v46;
  [v47 addSubview:v48];

  sub_10001FF68(&unk_1000B2970);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100086320;
  v50 = [v48 topAnchor];

  result = [v1 p_base_prots[308]];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = result;
  v52 = [result topAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v49 + 32) = v53;
  v54 = [v48 bottomAnchor];

  result = [v1 p_base_prots[308]];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v55 = result;
  v56 = [result bottomAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v49 + 40) = v57;
  v58 = [v48 leadingAnchor];

  result = [v1 p_base_prots[308]];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v59 = result;
  v60 = [result leadingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60];
  *(v49 + 48) = v61;
  v62 = [v48 trailingAnchor];

  result = [v1 p_base_prots[308]];
  if (result)
  {
    v63 = result;
    v64 = objc_opt_self();
    v65 = [v63 trailingAnchor];

    v66 = [v62 constraintEqualToAnchor:v65];
    *(v49 + 56) = v66;
    sub_100032404(0, &qword_1000B4280);
    isa = sub_10007E544().super.isa;

    [v64 activateConstraints:isa];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100032404(0, &qword_1000B29E0);
    v68 = v80;
    sub_10007E634();
    v70 = v81;
    v69 = v82;
    v71 = v79;
    (*(v81 + 16))(v79, v68, v82);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v73 = swift_allocObject();
    (*(v70 + 32))(v73 + v72, v71, v69);
    objc_allocWithZone(sub_10001FF68(&unk_1000B4290));
    v74 = v48;
    v75 = sub_10007E224();
    (*(v70 + 8))(v68, v69);
    v76 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource];
    *&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource] = v75;

    sub_100054930(0);
    sub_10001FF68(&unk_1000B2A40);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000860E0;
    *(v77 + 32) = sub_10007E2D4();
    *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_10007E684();

    return swift_unknownObjectRelease();
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100054930(int a1)
{
  v104 = a1;
  v97 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v97);
  v99 = &v97 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10001FF68(&qword_1000B4250);
  __chkstk_darwin(v113);
  v115 = &v97 - v2;
  v3 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v118 = &v97 - v7;
  __chkstk_darwin(v6);
  v117 = &v97 - v8;
  v9 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v120 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v97 - v14;
  __chkstk_darwin(v13);
  v112 = &v97 - v15;
  v16 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v98 = &v97 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v97 - v24;
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v28 = sub_10001FF68(&qword_1000B4258);
  v100 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v97 - v29;
  sub_100058064();
  sub_1000580B8();
  sub_10007E214();
  v31._rawValue = &off_1000A73D8;
  v101 = v30;
  v102 = v28;
  v32 = v16;
  v33 = v105;
  sub_10007E204(v31);
  v34 = v33 + OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject;
  sub_100058110(v33 + OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject, v27, type metadata accessor for CRLSELibraryViewModel.Item);
  v119 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = *(v34 + *(v9 + 20));
  if (!EnumCaseMultiPayload)
  {
    v110 = v25;
    v44 = *(v36 + 16);

    v116 = v44;
    if (!v44)
    {
      v107 = _swiftEmptyArrayStorage;
LABEL_51:

      v84 = v107[2];
      if (v84)
      {
        v121 = _swiftEmptyArrayStorage;
        v85 = v107;
        sub_10007AB14(0, v84, 0);
        v86 = v121;
        v87 = v85 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        v88 = *(v120 + 72);
        v89 = v98;
        do
        {
          sub_100058110(v87, v12, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100058110(v12, v89, type metadata accessor for CRLSELibraryViewModel.Item);
          sub_100058178(v12, type metadata accessor for CRLSELibraryViewModelItemNode);
          v121 = v86;
          v91 = v86[2];
          v90 = v86[3];
          if (v91 >= v90 >> 1)
          {
            sub_10007AB14(v90 > 1, v91 + 1, 1);
            v89 = v98;
            v86 = v121;
          }

          v86[2] = v91 + 1;
          sub_1000581D8(v89, v86 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v91, type metadata accessor for CRLSELibraryViewModel.Item);
          v87 += v88;
          --v84;
        }

        while (v84);
      }

      v33 = v105;
      v37 = v104;
      goto LABEL_57;
    }

    v103 = v9;
    v46 = 0;
    v107 = _swiftEmptyArrayStorage;
    v47 = v112;
    v48 = v113;
    v49 = v115;
    v50 = v110;
    v109 = v32;
    v111 = v36;
    while (1)
    {
      if (v46 >= *(v36 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return result;
      }

      v51 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v119 = *(v120 + 72);
      sub_100058110(v36 + v51 + v119 * v46, v47, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100058110(v47, v50, type metadata accessor for CRLSELibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100058178(v50, type metadata accessor for CRLSELibraryViewModel.Item);
        goto LABEL_12;
      }

      v114 = v51;
      v52 = v50;
      v53 = v117;
      sub_1000581D8(v52, v117, type metadata accessor for CRLSELibraryViewModel.Filter);
      v54 = sub_10001FF68(&unk_1000B4240);
      v55 = *(v54 - 8);
      v56 = v118;
      (*(v55 + 56))(v118, 5, 5, v54);
      v57 = *(v48 + 48);
      sub_100058110(v53, v49, type metadata accessor for CRLSELibraryViewModel.Filter);
      sub_100058110(v56, v49 + v57, type metadata accessor for CRLSELibraryViewModel.Filter);
      v58 = *(v55 + 48);
      v59 = v58(v49, 5, v54);
      if (v59 > 2)
      {
        if (v59 != 3)
        {
          v62 = v117;
          v50 = v110;
          if (v59 == 4)
          {
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v62, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
            v61 = v58(v115 + v57, 5, v54) == 4;
          }

          else
          {
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v62, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
            v61 = v58(v115 + v57, 5, v54) == 5;
          }

LABEL_29:
          v47 = v112;
          v48 = v113;
          if (v61)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
        sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
        v49 = v115;
        v65 = v58(v115 + v57, 5, v54);
        v47 = v112;
        v48 = v113;
        v50 = v110;
        if (v65 == 3)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v60 = v106;
        if (v59)
        {
          v50 = v110;
          if (v59 == 1)
          {
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
            v61 = v58(v115 + v57, 5, v54) == 1;
          }

          else
          {
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
            v61 = v58(v115 + v57, 5, v54) == 2;
          }

          goto LABEL_29;
        }

        v63 = v115;
        sub_100058110(v115, v106, type metadata accessor for CRLSELibraryViewModel.Filter);
        v64 = v58(v63 + v57, 5, v54);
        v50 = v110;
        if (!v64)
        {
          v72 = v99;
          sub_1000581D8(v63 + v57, v99, type metadata accessor for CRLSELibraryViewModel.Folder);
          v73 = sub_10007DE74();
          v74 = v97;
          v47 = v112;
          v48 = v113;
          if (v73 & 1) != 0 && ((v75 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v76 = (v106 + v75), v77 = *(v106 + v75 + 8), v78 = (v72 + v75), *v76 == *v78) && v77 == v78[1] || (sub_10007EAA4()))
          {
            v79 = *(v74 + 20);
            v80 = (v106 + v79);
            v81 = *(v106 + v79 + 8);
            v82 = (v72 + v79);
            if (*v80 == *v82 && v81 == v82[1])
            {
              sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
              sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
              v49 = v115;
LABEL_49:
              sub_100058178(v99, type metadata accessor for CRLSELibraryViewModel.Folder);
              sub_100058178(v106, type metadata accessor for CRLSELibraryViewModel.Folder);
LABEL_31:
              sub_100058178(v49, type metadata accessor for CRLSELibraryViewModel.Filter);
              v36 = v111;
              goto LABEL_12;
            }

            v83 = sub_10007EAA4();
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
            if (v83)
            {
              goto LABEL_49;
            }
          }

          else
          {
            sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
            sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
            v49 = v115;
          }

          sub_100058178(v99, type metadata accessor for CRLSELibraryViewModel.Folder);
          sub_100058178(v106, type metadata accessor for CRLSELibraryViewModel.Folder);
          sub_100058178(v49, type metadata accessor for CRLSELibraryViewModel.Filter);
          goto LABEL_33;
        }

        sub_100058178(v118, type metadata accessor for CRLSELibraryViewModel.Filter);
        sub_100058178(v117, type metadata accessor for CRLSELibraryViewModel.Filter);
        sub_100058178(v60, type metadata accessor for CRLSELibraryViewModel.Folder);
        v47 = v112;
        v48 = v113;
        v49 = v63;
      }

LABEL_32:
      sub_100023AE0(v49, &qword_1000B4250);
LABEL_33:
      v36 = v111;
      if (*(*(v47 + *(v103 + 20)) + 16))
      {
        sub_1000581D8(v47, v108, type metadata accessor for CRLSELibraryViewModelItemNode);
        v66 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v66;
        v121 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10007AAB0(0, v66[2] + 1, 1);
          v36 = v111;
          v68 = v121;
        }

        v69 = v68;
        v71 = v68[2];
        v70 = v68[3];
        if (v71 >= v70 >> 1)
        {
          sub_10007AAB0(v70 > 1, v71 + 1, 1);
          v36 = v111;
          v69 = v121;
        }

        v69[2] = v71 + 1;
        v107 = v69;
        result = sub_1000581D8(v108, v69 + v114 + v71 * v119, type metadata accessor for CRLSELibraryViewModelItemNode);
        v49 = v115;
        goto LABEL_13;
      }

LABEL_12:
      result = sub_100058178(v47, type metadata accessor for CRLSELibraryViewModelItemNode);
LABEL_13:
      if (v116 == ++v46)
      {
        goto LABEL_51;
      }
    }
  }

  v37 = v104;
  v38 = *(v36 + 16);
  if (v38)
  {
    v121 = _swiftEmptyArrayStorage;
    sub_10007AB14(0, v38, 0);
    v39 = v121;
    v40 = v36 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v41 = *(v120 + 72);
    do
    {
      sub_100058110(v40, v12, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100058110(v12, v20, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_100058178(v12, type metadata accessor for CRLSELibraryViewModelItemNode);
      v121 = v39;
      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        sub_10007AB14(v42 > 1, v43 + 1, 1);
        v39 = v121;
      }

      v39[2] = v43 + 1;
      sub_1000581D8(v20, v39 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v43, type metadata accessor for CRLSELibraryViewModel.Item);
      v40 += v41;
      --v38;
    }

    while (v38);
    v33 = v105;
    v37 = v104;
  }

  sub_100058178(v119, type metadata accessor for CRLSELibraryViewModel.Item);
LABEL_57:
  v93 = v101;
  v92 = v102;
  LOBYTE(v121) = 1;
  sub_10007E1F4();

  v94 = *(v33 + OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource);
  if (v37)
  {
    if (!v94)
    {
      goto LABEL_64;
    }

    v95 = v94;
    sub_10007E244();
  }

  else
  {
    if (!v94)
    {
      goto LABEL_65;
    }

    v95 = v94;
    sub_10007E264();
  }

  v96 = v100;

  return (*(v96 + 8))(v93, v92);
}

id sub_10005580C()
{
  v1 = v0;
  v2 = sub_10007E284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007E274();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E2C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v6);
  sub_10007E294();
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v2);
  sub_10007E2A4();
  sub_10007E2B4();
  sub_100032404(0, &qword_1000B29C8);
  v14 = sub_10007E6F4();
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{v18, v20, v22, v24}];
    [v25 setCollectionViewLayout:v14];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    (*(v11 + 8))(v13, v10);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100055B10(void *a1, uint64_t a2, uint64_t a3)
{
  v130 = a1;
  v122 = sub_10001FF68(&qword_1000B42B8);
  __chkstk_darwin(v122);
  *&v123 = &v113 - v4;
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v119 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v117);
  v116 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = __chkstk_darwin(v8);
  v124 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v114 = &v113 - v12;
  v13 = __chkstk_darwin(v11);
  v115 = &v113 - v14;
  v15 = __chkstk_darwin(v13);
  v125 = &v113 - v16;
  __chkstk_darwin(v15);
  v18 = &v113 - v17;
  v19 = sub_10001FF68(&unk_1000B2A00);
  __chkstk_darwin(v19 - 8);
  v21 = &v113 - v20;
  v22 = sub_10007DE44();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10007E1D4();
  v128 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v129 = result;
  if (!result)
  {
    return result;
  }

  v121 = v28;
  sub_10007E6E4();
  v131 = sub_1000187F4();
  v127 = v30;
  v118 = a3;
  sub_100058110(a3, v18, type metadata accessor for CRLSELibraryViewModel.Item);
  v120 = v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = v26;
  if (EnumCaseMultiPayload == 3)
  {
    v36 = sub_10001FF68(&qword_1000B2A20);

    sub_1000213E8(&v18[*(v36 + 64)], v21);
    v37 = sub_10007DEB4();
    (*(*(v37 - 8) + 8))(v18, v37);
    v32 = v129;
    v38 = v130;
  }

  else
  {
    v32 = v129;
    if (EnumCaseMultiPayload == 2)
    {
      v33 = v116;
      sub_1000581D8(v18, v116, type metadata accessor for CRLSELibraryViewModel.Board);
      sub_1000583A8(v33 + v117[8], v21);
      v34 = type metadata accessor for CRLSELibraryViewModel.Board;
      v35 = v33;
    }

    else
    {
      (*(v23 + 56))(v21, 1, 1, v22);
      v34 = type metadata accessor for CRLSELibraryViewModel.Item;
      v35 = v18;
    }

    sub_100058178(v35, v34);
    v38 = v130;
  }

  v39 = v121;
  v40 = v125;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100023AE0(v21, &unk_1000B2A00);
    v116 = 0;
    v125 = 0;
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    sub_1000535D0();
    v116 = v41;
    v125 = v42;
    (*(v23 + 8))(v25, v22);
  }

  v43 = [v32 traitCollection];
  v44 = [v43 preferredContentSizeCategory];

  v45 = sub_10007E6C4();

  sub_10007E1B4();
  sub_10007E114();
  v46 = sub_10007E164();
  sub_10007E134();
  v46(v132, 0);
  v47 = sub_10007E164();
  sub_10007E124();
  v47(v132, 0);
  v48 = objc_opt_self();
  v49 = [v48 secondaryLabelColor];
  v50 = sub_10007E1A4();
  sub_10007E154();
  v50(v132, 0);
  sub_10001FF68(&unk_1000B2970);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1000860F0;
  *(v51 + 32) = [v48 whiteColor];
  v52 = v118;
  sub_100058110(v118, v40, type metadata accessor for CRLSELibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v119;
    sub_1000581D8(v40, v119, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100019440();
    v55 = v54;
    sub_100058178(v53, type metadata accessor for CRLSELibraryViewModel.Filter);
  }

  else
  {
    sub_100058178(v40, type metadata accessor for CRLSELibraryViewModel.Item);
    result = [v38 tintColor];
    v55 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *(v51 + 40) = v55;
  sub_100032404(0, &unk_1000B42C0);
  isa = sub_10007E544().super.isa;

  v57 = objc_opt_self();
  v58 = [v57 configurationWithPaletteColors:isa];

  v117 = [v57 configurationWithTextStyle:UIFontTextStyleTitle1 scale:-1];
  v119 = v58;
  v130 = [v117 configurationByApplyingConfiguration:v58];
  v59 = sub_100019664();
  v60 = v123;
  v61 = *(v122 + 48);
  sub_100058110(v52, v123, type metadata accessor for CRLSELibraryViewModel.Item);
  *(v60 + v61) = v59 & 1;
  v62 = swift_getEnumCaseMultiPayload();
  if (v62 > 1)
  {
    v63 = v127;
    if (v62 == 2)
    {
      v64 = v115;
      sub_100058110(v60, v115, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v59)
      {
        v65 = objc_opt_self();
        v66 = sub_10007E404();
        v67 = [v65 systemImageNamed:v66];

        sub_10007E1C4();
        v68 = [v48 labelColor];
        v69 = sub_10007E194();
        sub_10007E184();
        v69(v132, 0);
        sub_100058178(v64, type metadata accessor for CRLSELibraryViewModel.Board);
        sub_100058178(v60, type metadata accessor for CRLSELibraryViewModel.Item);
        v63 = v127;
        goto LABEL_26;
      }

      sub_100058178(v64, type metadata accessor for CRLSELibraryViewModel.Board);
      v63 = v127;
    }

    else
    {
      v72 = v114;
      sub_100058110(v60, v114, type metadata accessor for CRLSELibraryViewModel.Item);
      v73 = sub_10001FF68(&qword_1000B2A20);

      sub_100023AE0(v72 + *(v73 + 64), &unk_1000B2A00);
      v74 = sub_10007DEB4();
      (*(*(v74 - 8) + 8))(v72, v74);
    }

    sub_100058178(v60, type metadata accessor for CRLSELibraryViewModel.Item);
    if (v45)
    {
      v75 = objc_opt_self();
      v76 = sub_10007E404();
      v77 = [v75 systemImageNamed:v76];

      sub_10007E1C4();
      v78 = [v48 clearColor];
      v79 = sub_10007E194();
      sub_10007E184();
      v79(v132, 0);
    }

    else
    {
      sub_10007E1C4();
    }
  }

  else
  {
    v63 = v127;
    if (v62)
    {
      sub_1000190A0();
      sub_10007E1C4();
      v70 = v130;
      v71 = sub_10007E194();
      sub_10007E174();
      v71(v132, 0);
      sub_100058178(v60, type metadata accessor for CRLSELibraryViewModel.Item);
    }

    else
    {
      sub_10007E1C4();
      sub_100023AE0(v60, &qword_1000B42B8);
    }
  }

LABEL_26:
  v80 = v126;
  v132[3] = v126;
  v132[4] = &protocol witness table for UIListContentConfiguration;
  v81 = sub_100026998(v132);
  (*(v128 + 16))(v81, v39, v80);
  sub_10007E6B4();
  sub_10001FF68(&unk_1000B4470);
  v82 = swift_allocObject();
  v123 = xmmword_1000860E0;
  *(v82 + 16) = xmmword_1000860E0;
  *(v82 + 32) = v131;
  *(v82 + 40) = v63;
  v83 = v124;
  sub_100058110(v52, v124, type metadata accessor for CRLSELibraryViewModel.Item);
  v84 = swift_getEnumCaseMultiPayload();
  if (v84 == 3)
  {
    v85 = v63;
    v86 = v83;
    v87 = sub_10001FF68(&qword_1000B2A20);

    sub_100023AE0(v86 + *(v87 + 64), &unk_1000B2A00);
    v88 = sub_10007DEB4();
    v89 = v86;
    v63 = v85;
    (*(*(v88 - 8) + 8))(v89, v88);
    goto LABEL_30;
  }

  if (v84 == 2)
  {

    sub_100058178(v83, type metadata accessor for CRLSELibraryViewModel.Board);
LABEL_30:
    if (sub_100019664())
    {
      type metadata accessor for CRLSEExtensionContextManager();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v91 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v92 = sub_10007E404();
      v93 = sub_10007E404();
      v94 = sub_10007E404();
      v95 = [v91 localizedStringForKey:v92 value:v93 table:v94];

      v96 = sub_10007E444();
      v98 = v97;

      v100 = *(v82 + 16);
      v99 = *(v82 + 24);
      if (v100 >= v99 >> 1)
      {
        v82 = sub_10006DD28((v99 > 1), v100 + 1, 1, v82);
      }

      *(v82 + 16) = v100 + 1;
      v101 = v82 + 16 * v100;
      *(v101 + 32) = v96;
      *(v101 + 40) = v98;
      v39 = v121;
      v63 = v127;
    }

    v102 = v125;
    v103 = v119;
    if (v125)
    {
      v105 = *(v82 + 16);
      v104 = *(v82 + 24);
      if (v105 >= v104 >> 1)
      {
        v82 = sub_10006DD28((v104 > 1), v105 + 1, 1, v82);
      }

      *(v82 + 16) = v105 + 1;
      v106 = v82 + 16 * v105;
      *(v106 + 32) = v116;
      *(v106 + 40) = v102;
    }

    goto LABEL_39;
  }

  sub_100058178(v83, type metadata accessor for CRLSELibraryViewModel.Item);
  v103 = v119;
LABEL_39:
  v132[0] = v82;
  sub_10001FF68(&unk_1000B2A10);
  sub_10004CA9C();
  sub_10007E3E4();

  v107 = sub_10007E404();

  [v38 setAccessibilityLabel:v107];

  v108 = UIAccessibilityTraitButton;
  v109 = [v38 accessibilityTraits];
  if ((v108 & ~v109) != 0)
  {
    v110 = v108;
  }

  else
  {
    v110 = 0;
  }

  [v38 setAccessibilityTraits:v110 | v109];
  v111 = swift_allocObject();
  *(v111 + 16) = v123;
  *(v111 + 32) = v131;
  *(v111 + 40) = v63;
  v112 = sub_10007E544().super.isa;

  [v38 setAccessibilityUserInputLabels:v112];

  return (*(v128 + 8))(v39, v126);
}

uint64_t sub_100056C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v32 = a1;
  v5 = sub_10001FF68(&unk_1000B29F0);
  __chkstk_darwin(v5 - 8);
  v27 = &v25 - v6;
  v7 = sub_10007E0E4();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007E0A4();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001FF68(&qword_1000B2A38);
  __chkstk_darwin(v17 - 8);
  v19 = &v25 - v18;
  sub_100058110(a3, &v25 - v18, type metadata accessor for CRLSELibraryViewModel.Item);
  (*(v14 + 56))(v19, 0, 1, v13);
  sub_100032404(0, &qword_1000B29E0);
  v20 = sub_10007E654();
  sub_100023AE0(v19, &qword_1000B2A38);
  sub_100058110(a3, v16, type metadata accessor for CRLSELibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001FF68(&qword_1000B42B0);
    sub_10007E0F4();
    *(swift_allocObject() + 16) = xmmword_1000860E0;
    v22 = v25;
    v21 = v26;
    (*(v25 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v26);
    v23 = sub_10007E0B4();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    sub_10007E0D4();
    sub_10007E0C4();
    (*(v28 + 8))(v9, v29);
    (*(v22 + 8))(v12, v21);
  }

  sub_10007E6D4();
  sub_100058178(v16, type metadata accessor for CRLSELibraryViewModel.Item);
  return v20;
}

void sub_1000570B8(void *a1)
{
  v107 = a1;
  v2 = sub_10007DEB4();
  v105 = *(v2 - 8);
  v106 = v2;
  __chkstk_darwin(v2);
  v101 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for CRLSEBoard(0);
  v4 = __chkstk_darwin(v104);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v91 - v6;
  v97 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v97);
  v98 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v8 - 8);
  v95 = &v91 - v9;
  v10 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = __chkstk_darwin(v10);
  v91 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v91 - v13;
  v14 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v15 = __chkstk_darwin(v14 - 8);
  v96 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v91 - v17;
  v18 = sub_10001FF68(&qword_1000B2A38);
  __chkstk_darwin(v18 - 8);
  v20 = &v91 - v19;
  v21 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v91 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v91 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v91 - v32;
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  isa = sub_10007DF14().super.isa;
  [v107 deselectItemAtIndexPath:isa animated:0];

  v37 = *&v1[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource];
  if (!v37)
  {
    __break(1u);
    return;
  }

  v38 = v37;
  sub_10007E254();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100023AE0(v20, &qword_1000B2A38);
    return;
  }

  v39 = v20;
  v40 = v35;
  sub_1000581D8(v39, v35, type metadata accessor for CRLSELibraryViewModel.Item);
  v41 = v33;
  sub_100058110(v35, v33, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v51 = v1;
    if (EnumCaseMultiPayload != 2)
    {
      v107 = v40;
      v63 = v103;
      sub_100058110(v33, v103, type metadata accessor for CRLSELibraryViewModel.Item);
      v102 = sub_10001FF68(&qword_1000B2A20);
      v64 = (v63 + *(v102 + 48));
      v65 = *v64;
      v66 = v64[1];
      v68 = v105;
      v67 = v106;
      v69 = v101;
      (*(v105 + 32))(v101, v63, v106);
      v70 = type metadata accessor for CRLSEBoardIdentifier(0);
      v71 = v100;
      (*(*(v70 - 8) + 56))(v100, 1, 1, v70);
      v72 = v104;
      v73 = *(v104 + 24);
      (*(v68 + 16))(v71 + v73, v69, v67);
      (*(v68 + 56))(v71 + v73, 0, 1, v67);
      v74 = (v71 + *(v72 + 20));
      *v74 = v65;
      v74[1] = v66;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100030A20(v71);
        swift_unknownObjectRelease();
      }

      v75 = [v51 navigationController];
      v40 = v107;
      if (v75)
      {
        v76 = v75;
      }

      v77 = *(v102 + 64);
      sub_100058178(v71, type metadata accessor for CRLSEBoard);
      (*(v68 + 8))(v69, v67);
      sub_100023AE0(v103 + v77, &unk_1000B2A00);
      goto LABEL_29;
    }

    sub_100058110(v33, v27, type metadata accessor for CRLSELibraryViewModel.Item);
    v44 = v98;
    sub_1000581D8(v27, v98, type metadata accessor for CRLSELibraryViewModel.Board);
    v52 = v99;
    sub_100058110(v44, v99, type metadata accessor for CRLSEBoardIdentifier);
    v53 = type metadata accessor for CRLSEBoardIdentifier(0);
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    v54 = (v44 + *(v97 + 24));
    v56 = *v54;
    v55 = v54[1];
    v57 = v104;
    (*(v105 + 56))(v52 + *(v104 + 24), 1, 1, v106);
    v58 = (v52 + *(v57 + 20));
    *v58 = v56;
    v58[1] = v55;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_100030A20(v52);
      swift_unknownObjectRelease();
    }

    v60 = [v51 navigationController];
    if (v60)
    {
      v61 = v60;
    }

    sub_100058178(v52, type metadata accessor for CRLSEBoard);
    v62 = type metadata accessor for CRLSELibraryViewModel.Board;
  }

  else
  {
    v43 = v1;
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_100058110(v33, v30, type metadata accessor for CRLSELibraryViewModel.Item);
    v44 = v102;
    sub_1000581D8(v30, v102, type metadata accessor for CRLSELibraryViewModel.Filter);
    v45 = sub_10001FF68(&unk_1000B4240);
    v46 = v96;
    (*(*(v45 - 8) + 56))(v96, 5, 5, v45);
    v47 = sub_100021BC4(v44, v46);
    v48 = sub_100058178(v46, type metadata accessor for CRLSELibraryViewModel.Filter);
    if (v47)
    {
      sub_100058178(v44, type metadata accessor for CRLSELibraryViewModel.Filter);
LABEL_8:
      v49 = [v43 navigationController];
      if (v49)
      {
        v50 = v49;
      }

      goto LABEL_29;
    }

    v78 = v94;
    v79 = *&v43[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_representedObject + *(v94 + 20)];
    __chkstk_darwin(v48);
    *(&v91 - 2) = v40;

    v80 = v95;
    sub_10006ADF8(sub_100058034, v79, v95);

    if ((*(v93 + 48))(v80, 1, v78) == 1)
    {
      sub_100023AE0(v80, &qword_1000B2930);
      v81 = [v43 navigationController];
      if (v81)
      {
        v82 = v81;
      }
    }

    else
    {
      v83 = v80;
      v84 = v92;
      sub_1000581D8(v83, v92, type metadata accessor for CRLSELibraryViewModelItemNode);
      v85 = v91;
      sub_100058110(v84, v91, type metadata accessor for CRLSELibraryViewModelItemNode);
      v86 = objc_allocWithZone(type metadata accessor for CRLSEBoardPickerViewController());
      v87 = sub_100053BE8(v85);
      v88 = &v43[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_delegate];
      swift_unknownObjectWeakLoadStrong();
      *&v87[OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_delegate + 8] = *(v88 + 1);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v89 = [v43 navigationController];
      if (v89)
      {
        v90 = v89;
        [v89 pushViewController:v87 animated:1];

        v87 = v90;
      }

      sub_100058178(v84, type metadata accessor for CRLSELibraryViewModelItemNode);
    }

    v62 = type metadata accessor for CRLSELibraryViewModel.Filter;
  }

  sub_100058178(v44, v62);
LABEL_29:
  sub_100058178(v41, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_100058178(v40, type metadata accessor for CRLSELibraryViewModel.Item);
}

id sub_100057DE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEBoardPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSEBoardPickerViewController()
{
  result = qword_1000B4228;
  if (!qword_1000B4228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057EF4()
{
  result = type metadata accessor for CRLSELibraryViewModelItemNode(319);
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

unint64_t sub_100057FB8()
{
  result = qword_1000B4238;
  if (!qword_1000B4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4238);
  }

  return result;
}

unint64_t sub_100058064()
{
  result = qword_1000B4260;
  if (!qword_1000B4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4260);
  }

  return result;
}

unint64_t sub_1000580B8()
{
  result = qword_1000B44A0;
  if (!qword_1000B44A0)
  {
    type metadata accessor for CRLSELibraryViewModel.Item(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B44A0);
  }

  return result;
}

uint64_t sub_100058110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100058178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000581D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100058240()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058280()
{
  v1 = sub_10001FF68(&unk_1000B4270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100058314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10001FF68(&unk_1000B4270) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100056C34(a1, a2, a3, v8);
}

uint64_t sub_1000583A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&unk_1000B2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100058418()
{
  *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension30CRLSEBoardPickerViewController_dateFormatter;
  type metadata accessor for CRLSEDateFormatter();
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  *(v0 + v1) = v2;
  sub_10007E8F4();
  __break(1u);
}

void *sub_1000584C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10007E904();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_10007E8A4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          sub_10007E844();
          sub_100032404(0, &qword_1000B2988);
          sub_10001FF68(&unk_1000B44D0);
          swift_dynamicCast();
          sub_10007E884();
          sub_10007E8B4();
          sub_10007E8C4();
          sub_10007E894();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_100032404(0, &qword_1000B2988);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_10001FF68(&unk_1000B44D0);
          swift_dynamicCast();
          sub_10007E884();
          sub_10007E8B4();
          sub_10007E8C4();
          sub_10007E894();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

char *sub_1000586B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10007E904();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10007AAF4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10007E844();
        sub_100032404(0, &qword_1000B44B0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10007AAF4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10006456C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100032404(0, &qword_1000B44B0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10007AAF4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10006456C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000588B0()
{
  swift_getObjectType();
  sub_10001FF68(&qword_1000B4428);
  sub_10007E464();

  sub_100032404(0, &qword_1000B4410);
  sub_100062824(&unk_1000B4430, &qword_1000B4410);
  v1 = v0;
  if (sub_10007EA84())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = sub_10007DC74();

  sub_10007E804(25);

  v4 = [v3 domain];
  v5 = sub_10007E444();
  v7 = v6;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_10007E4C4(v9);

  v10._countAndFlagsBits = 0x3D65646F4320;
  v10._object = 0xE600000000000000;
  sub_10007E4C4(v10);
  [v3 code];
  v11._countAndFlagsBits = sub_10007EA74();
  sub_10007E4C4(v11);

  return 0x20726F727245534ELL;
}

uint64_t sub_100058AA0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_10007E404();
  v2 = sub_10007E404();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_10007E444();
  return v4;
}

uint64_t sub_100058B90(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v6 = sub_10007E404();
  v7 = sub_10007E404();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  sub_10007E444();
  sub_10001FF68(&qword_1000B43B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000860E0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10003186C();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = sub_10007E414();

  return v10;
}

uint64_t sub_100058D0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100058DB8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10007E844();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10007E904();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_100058EE0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_10007E724();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_10007E724();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_10006230C(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_10007E4F4();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_10006230C(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_10006230C(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_10007E4F4();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_10007E4D4();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        sub_10007E484(result);
LABEL_23:
        sub_10007E524();
        sub_1000622B8();
        sub_10007E4B4();

        sub_10007E4B4();
        sub_100061E44(a2, a5, a6);
        sub_10007E4B4();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_1000595C4()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    v5 = sub_10007E404();
    [v4 setName:v5];

    [v4 setMaxConcurrentOperationCount:1];
    [v4 setQualityOfService:17];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1000596E4(char *a1)
{
  v2 = v1;
  v4 = sub_10007DCC4();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DD94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001FF68(&qword_1000B2980);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v40 = &v34 - v14;
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = *(v7 + 16);
  v42 = a1;
  v35 = v17;
  v17(&v34 - v15, a1, v6);
  v41 = *(v7 + 56);
  v41(v16, 0, 1, v6);
  v18 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_containerURL;
  swift_beginAccess();
  sub_100023A10(v16, v1 + v18, &qword_1000B2980);
  swift_endAccess();
  sub_100023A78(v1 + v18, v12, &qword_1000B2980);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_100023AE0(v12, &qword_1000B2980);
    v19 = 1;
    v20 = v40;
  }

  else
  {
    v21 = v36;
    v35(v36, v12, v6);
    sub_100023AE0(v12, &qword_1000B2980);
    v43 = 0x74726F706D49;
    v44 = 0xE600000000000000;
    v23 = v37;
    v22 = v38;
    v24 = v39;
    (*(v38 + 104))(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v39);
    sub_1000610DC();
    v20 = v40;
    sub_10007DD74();
    (*(v22 + 8))(v23, v24);
    (*(v7 + 8))(v21, v6);
    v19 = 0;
  }

  v41(v20, v19, 1, v6);
  v25 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_importDirectoryURL;
  swift_beginAccess();
  sub_100023A10(v20, v2 + v25, &qword_1000B2980);
  swift_endAccess();
  sub_100023A78(v2 + v25, v16, &qword_1000B2980);
  v26 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_presentedItemURL;
  swift_beginAccess();
  sub_100023A10(v16, v2 + v26, &qword_1000B2980);
  swift_endAccess();
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.crlSharingExtension;
  sub_10001FF68(&qword_1000B43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000860E0;
  v29 = sub_10007DCB4();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_10003186C();
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v32 = sub_10007E614();
  sub_100069E88(v27, &_mh_execute_header, v32, "Container URL: %@", 17, 2, inited);
  swift_setDeallocating();
  return sub_1000211F8(inited + 32);
}

uint64_t sub_100059BF8(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  sub_10001FF68(&qword_1000B2980);
  v2[47] = swift_task_alloc();
  v3 = sub_10007DD94();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v4 = sub_10007E084();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = sub_10007DAF4();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_100059DA8, 0, 0);
}

uint64_t sub_100059DA8()
{
  v0[42] = _swiftEmptyArrayStorage;
  v1 = [objc_allocWithZone(CRLSEImportItemFactory) init];
  v0[57] = v1;
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_10007E404();
  v4 = sub_10007E404();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_10007E444();
  v6 = sub_10007E404();

  [v1 setDefaultImageFileName:v6];

  if (qword_1000B1C10 != -1)
  {
LABEL_50:
    swift_once();
  }

  v7 = v0[45];
  v8 = static OS_os_log.crlSharingExtension;
  v0[58] = static OS_os_log.crlSharingExtension;
  v0[59] = sub_10001FF68(&qword_1000B43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000860E0;
  v10 = [v7 inputItems];
  v11 = sub_10007E554();

  v12 = *(v11 + 16);

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v12;
  v13 = sub_10007E614();
  sub_100069E88(v8, &_mh_execute_header, v13, "Context Items: %d", 17, 2, inited);
  swift_setDeallocating();
  sub_1000211F8(inited + 32);
  v14 = [v7 inputItems];
  v15 = sub_10007E554();
  v0[60] = v15;

  v16 = *(v15 + 16);
  v0[61] = v16;
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v0[62] = v17;
      v18 = v0[60];
      if (v17 >= *(v18 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      sub_100032924(v18 + 32 * v17 + 32, (v0 + 36));
      sub_100032404(0, &qword_1000B44B0);
      if (swift_dynamicCast())
      {
        break;
      }

      v17 = v0[62] + 1;
      if (v17 == v0[61])
      {

        v19 = v0[42];
        goto LABEL_9;
      }
    }

    v24 = v0[43];
    v0[63] = v24;
    v25 = [v24 attachments];
    if (v25)
    {
      v26 = v25;
      sub_100032404(0, &qword_1000B44B8);
      v27 = sub_10007E554();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1000860E0;
    v29 = v27 >> 62;
    if (v27 >> 62)
    {
      v30 = sub_10007E904();
    }

    else
    {
      v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v27;
    v31 = v0[58];
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v30;
    v32 = sub_10007E614();
    sub_100069E88(v31, &_mh_execute_header, v32, "Attachment Count: %d", 20, 2, v28);
    swift_setDeallocating();
    sub_1000211F8(v28 + 32);
    v33 = [v24 attributedContentText];
    if (v33)
    {
      v34 = v33;
      v75 = v30;
      v35 = v0[55];
      v36 = v0[56];
      v37 = v0[54];
      v38 = [v33 string];
      v39 = sub_10007E444();
      v41 = v40;

      v0[40] = v39;
      v0[41] = v41;
      sub_10007DAD4();
      sub_1000610DC();
      v42 = sub_10007E744();
      v44 = v43;
      (*(v35 + 8))(v36, v37);

      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = v77;
        v74 = v34;
        if (v29)
        {
          v76 = sub_10007E904();
        }

        else
        {
          v76 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = 0;
        while (1)
        {
          v47 = v76 != v48;
          if (v76 == v48)
          {
            break;
          }

          if ((v77 & 0xC000000000000001) != 0)
          {
            v49 = sub_10007E844();
          }

          else
          {
            if (v48 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v49 = *(v46 + 8 * v48 + 32);
          }

          v50 = v49;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_48;
          }

          v52 = v0[52];
          v51 = v0[53];
          v53 = v0[51];
          sub_10007E054();
          sub_10007DFD4();
          (*(v52 + 8))(v51, v53);
          v54 = sub_10007E404();

          v55 = [v50 hasItemConformingToTypeIdentifier:v54];

          ++v48;
          v46 = v77;
          if (v55)
          {
            if (v75 != 1)
            {
              v47 = 0;
              v34 = v74;
              goto LABEL_43;
            }

            break;
          }
        }

        v57 = v0[48];
        v56 = v0[49];
        v58 = v0[47];
        v59 = [objc_allocWithZone(CRLSEImportableItem) init];
        v60 = [v74 string];
        v61 = sub_10007E444();
        v63 = v62;

        sub_10005B740(v61, v63, v58);

        if ((*(v56 + 48))(v58, 1, v57) == 1)
        {
          sub_100023AE0(v0[47], &qword_1000B2980);
          [v59 setAttributedText:v74];
        }

        else
        {
          v64 = v0[49];
          v65 = v0[50];
          v66 = v0[48];
          (*(v64 + 32))(v65, v0[47], v66);
          sub_10007DD04(v67);
          v69 = v68;
          [v59 setUrl:v68];

          (*(v64 + 8))(v65, v66);
        }

        v34 = v74;
        v70 = v59;
        sub_10007E534();
        if (*(v0[42] + 16) >= *(v0[42] + 24) >> 1)
        {
          sub_10007E564();
        }

        sub_10007E584();
      }

      else
      {
        v47 = 0;
      }

LABEL_43:
    }

    else
    {
      v47 = 0;
    }

    v71 = v0[57];
    sub_100032404(0, &qword_1000B44B8);
    isa = sub_10007E544().super.isa;
    v0[64] = isa;

    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = sub_10005A6D0;
    v73 = swift_continuation_init();
    v0[35] = sub_10001FF68(&unk_1000B44C0);
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_10005B650;
    v0[31] = &unk_1000A9AD0;
    v0[32] = v73;
    [v71 createImportItems:isa skipTextAttachments:v47 completion:v0 + 28];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_9:
    v20 = v0[57];
    v21 = sub_1000633DC(v19);

    v22 = v0[1];

    return v22(v21);
  }
}

uint64_t sub_10005A6D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 520) = v1;
  if (v1)
  {
    v2 = sub_10005AF20;
  }

  else
  {
    v2 = sub_10005A7E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005A7E0()
{
  v3 = *(v0 + 504);
  v4 = *(v0 + 352);

  v5 = sub_1000584C0(v4);

  sub_10006B114(v5);

  v6 = *(v0 + 496) + 1;
  if (v6 == *(v0 + 488))
  {
LABEL_6:

    v10 = *(v0 + 456);
    v11 = sub_1000633DC(*(v0 + 336));

    v12 = *(v0 + 8);

    return v12(v11);
  }

  else
  {
    v7 = &qword_1000B44B0;
    inited = &type metadata for Any;
    while (1)
    {
      *(v0 + 496) = v6;
      v9 = *(v0 + 480);
      if (v6 >= *(v9 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      sub_100032924(v9 + 32 * v6 + 32, v0 + 288);
      sub_100032404(0, &qword_1000B44B0);
      if (swift_dynamicCast())
      {
        break;
      }

      v6 = *(v0 + 496) + 1;
      if (v6 == *(v0 + 488))
      {
        goto LABEL_6;
      }
    }

    v7 = *(v0 + 344);
    *(v0 + 504) = v7;
    v14 = [v7 attachments];
    if (v14)
    {
      v15 = v14;
      sub_100032404(0, &qword_1000B44B8);
      v2 = sub_10007E554();
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    inited = swift_initStackObject();
    inited[1] = xmmword_1000860E0;
    v1 = v2 >> 62;
    v59 = v0 + 352;
    if (!(v2 >> 62))
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }

LABEL_47:
    v16 = sub_10007E904();
LABEL_14:
    v17 = *(v0 + 464);
    *(inited + 7) = &type metadata for Int;
    *(inited + 8) = &protocol witness table for Int;
    *(inited + 4) = v16;
    v18 = sub_10007E614();
    sub_100069E88(v17, &_mh_execute_header, v18, "Attachment Count: %d", 20, 2, inited);
    swift_setDeallocating();
    sub_1000211F8((inited + 2));
    v19 = [v7 attributedContentText];
    if (v19)
    {
      inited = v19;
      v58 = v16;
      v20 = *(v0 + 440);
      v21 = *(v0 + 448);
      v22 = *(v0 + 432);
      v23 = [v19 string];
      v24 = sub_10007E444();
      v26 = v25;

      *(v0 + 320) = v24;
      *(v0 + 328) = v26;
      sub_10007DAD4();
      sub_1000610DC();
      v7 = sub_10007E744();
      v28 = v27;
      (*(v20 + 8))(v21, v22);

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v57 = inited;
        v60 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v1)
        {
          v62 = sub_10007E904();
        }

        else
        {
          v62 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = 0;
        v61 = v2 & 0xC000000000000001;
        while (1)
        {
          v30 = v62 != v31;
          if (v62 == v31)
          {
            break;
          }

          if (v61)
          {
            v32 = sub_10007E844();
          }

          else
          {
            if (v31 >= *(v60 + 16))
            {
              goto LABEL_46;
            }

            v32 = *(v2 + 8 * v31 + 32);
          }

          v33 = v32;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_45;
          }

          v35 = *(v0 + 416);
          v34 = *(v0 + 424);
          v36 = v2;
          v37 = *(v0 + 408);
          sub_10007E054();
          v1 = sub_10007DFD4();
          v38 = v37;
          v2 = v36;
          (*(v35 + 8))(v34, v38);
          v7 = sub_10007E404();

          inited = [v33 hasItemConformingToTypeIdentifier:v7];

          ++v31;
          if (inited)
          {
            if (v58 != 1)
            {
              v30 = 0;
              inited = v57;
              goto LABEL_40;
            }

            break;
          }
        }

        v40 = *(v0 + 384);
        v39 = *(v0 + 392);
        v41 = *(v0 + 376);
        v63 = [objc_allocWithZone(CRLSEImportableItem) init];
        v42 = [v57 string];
        v43 = sub_10007E444();
        v45 = v44;

        sub_10005B740(v43, v45, v41);

        if ((*(v39 + 48))(v41, 1, v40) == 1)
        {
          sub_100023AE0(*(v0 + 376), &qword_1000B2980);
          v46 = v63;
          [v63 setAttributedText:v57];
        }

        else
        {
          v47 = *(v0 + 392);
          v48 = *(v0 + 400);
          v49 = *(v0 + 384);
          (*(v47 + 32))(v48, *(v0 + 376), v49);
          sub_10007DD04(v50);
          v52 = v51;
          v46 = v63;
          [v63 setUrl:v51];

          (*(v47 + 8))(v48, v49);
        }

        inited = v57;
        v53 = v46;
        sub_10007E534();
        if (*(*(v0 + 336) + 16) >= *(*(v0 + 336) + 24) >> 1)
        {
          sub_10007E564();
        }

        sub_10007E584();
      }

      else
      {
        v30 = 0;
      }

LABEL_40:
    }

    else
    {
      v30 = 0;
    }

    v54 = *(v0 + 456);
    sub_100032404(0, &qword_1000B44B8);
    isa = sub_10007E544().super.isa;
    *(v0 + 512) = isa;

    *(v0 + 16) = v0;
    *(v0 + 56) = v59;
    *(v0 + 24) = sub_10005A6D0;
    v56 = swift_continuation_init();
    *(v0 + 280) = sub_10001FF68(&unk_1000B44C0);
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_10005B650;
    *(v0 + 248) = &unk_1000A9AD0;
    *(v0 + 256) = v56;
    [v54 createImportItems:isa skipTextAttachments:v30 completion:v0 + 224];

    return _swift_continuation_await(v0 + 16);
  }
}