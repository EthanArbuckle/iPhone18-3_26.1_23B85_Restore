unint64_t sub_67410()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000021;
  if (!*v0)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_67484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_751B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_674AC(uint64_t a1)
{
  v2 = sub_711C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_674E8(uint64_t a1)
{
  v2 = sub_711C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.MediaTypesRecommendationServiceConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229A98, &qword_1BCE58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_711C0();
  sub_1B5884();
  v22 = 0;
  sub_1B5534();
  if (!v2)
  {
    v13 = v16;
    v21 = 1;
    sub_1B5534();
    v20 = 2;
    sub_1B5514();
    v19 = v13;
    v18 = 3;
    sub_2B0C(&qword_229AA8, &qword_1BCE60);
    sub_71214(&qword_229AB0);
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Configuration.MediaTypesRecommendationServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229AB8, &qword_1BCE68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_711C0();
  sub_1B5864();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1B53F4();
    v20 = 1;
    v12 = sub_1B53F4();
    v19 = 2;
    sub_1B53D4();
    v15 = v14;
    sub_2B0C(&qword_229AA8, &qword_1BCE60);
    v17[15] = 3;
    sub_71214(&qword_229AC0);
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v16;
  }

  return sub_2BF8(a1);
}

unint64_t sub_679C8(char a1)
{
  result = 0x6C6F687365726874;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0xD000000000000031;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x657A69536D616562;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000027;
      break;
  }

  return result;
}

uint64_t sub_67C40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75320(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_67C70@<X0>(unint64_t *a1@<X8>)
{
  result = sub_679C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_67CB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_67CEC(uint64_t a1)
{
  v2 = sub_71280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_67D28(uint64_t a1)
{
  v2 = sub_71280();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t Configuration.BooksClusteringServiceConfiguration.init(maxHighScoringItemCount:thresholdRatio:booksInGenrePermittedGenres:booksInGenreUnpermittedGenres:moreFromYourAuthorsConfiguration:rankBoostByCollectionRecommendationType:diversityPenaltyByCollectionRecommendationType:rankBoostByGenreDepth:wildcardEnabledCollectionTypes:wildcardEnabledMediaTypes:expandedCollectionPenalty:additionalCollectionPenalty:beamSize:injectNextInOrderedSeries:)@<X0>(unint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *a5@<X4>, _UNKNOWN **a6@<X5>, char *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, _UNKNOWN **a12, _UNKNOWN **a13, double a14, char a15, double a16, char a17, uint64_t a18, char a19, char a20)
{
  v20 = a8;
  v24 = result;
  v26 = 2.0;
  if ((a4 & 1) == 0 && a3 >= 1.0)
  {
    v26 = a3;
  }

  v27 = a10;
  v40 = *a7;
  if (a8)
  {
    v28 = a11;
    if (a10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_130530(&off_211750);
    v20 = result;
    v28 = a11;
    if (a10)
    {
      goto LABEL_6;
    }
  }

  result = sub_130530(&off_211780);
  v27 = result;
LABEL_6:
  if (!v28)
  {
    result = sub_13061C(&off_2117D0);
    v28 = result;
  }

  v29 = a18;
  v30 = a12;
  v31 = a13;
  v32 = 0x3FECCCCCCCCCCCCDLL;
  if ((a15 & 1) == 0 && a14 >= 0.0)
  {
    v32 = 0x3FECCCCCCCCCCCCDLL;
    if (a14 <= 1.0)
    {
      v32 = *&a14;
    }
  }

  v33 = 0.5;
  if (a16 > 1.0)
  {
    v34 = 0.5;
  }

  else
  {
    v34 = a16;
  }

  if (a16 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.5;
  }

  if ((a17 & 1) == 0)
  {
    v33 = v35;
  }

  v36 = 5;
  if (!(a2 & 1 | (v24 < 0)))
  {
    v36 = v24;
  }

  if (a18 <= 0)
  {
    v29 = 10;
  }

  if (a19)
  {
    v37 = 10;
  }

  else
  {
    v37 = v29;
  }

  if (!a13)
  {
    v31 = &off_211838;
  }

  if (!a12)
  {
    v30 = &off_211810;
  }

  v38 = _swiftEmptyArrayStorage;
  *a9 = v36;
  *(a9 + 8) = v26;
  if (a6)
  {
    v39 = a6;
  }

  else
  {
    v39 = &off_211720;
  }

  if (a5)
  {
    v38 = a5;
  }

  *(a9 + 16) = v38;
  *(a9 + 24) = v39;
  *(a9 + 32) = v40 & 1;
  *(a9 + 40) = v20;
  *(a9 + 48) = v27;
  *(a9 + 56) = v28;
  *(a9 + 64) = v30;
  *(a9 + 72) = v31;
  *(a9 + 80) = v32;
  *(a9 + 88) = v33;
  *(a9 + 96) = v37;
  *(a9 + 104) = (a20 == 2) | a20 & 1;
  return result;
}

uint64_t Configuration.BooksClusteringServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229AC8, &qword_1BCE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71280();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v62) = 0;
  v11 = sub_1B5364();
  v13 = v12;
  v14 = v11;
  LOBYTE(v62) = 1;
  *&v15 = COERCE_DOUBLE(sub_1B5344());
  LODWORD(v51) = v17;
  v50 = *&v15;
  LODWORD(v52) = v13;
  v53 = v14;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  LOBYTE(v61) = 2;
  sub_61BC8(&qword_2298B8);
  sub_1B5374();
  v49 = v62;
  LOBYTE(v59) = 3;
  sub_1B5374();
  v18 = v61;
  LOBYTE(v59) = 4;
  sub_712D4();
  sub_1B5374();
  v47 = v60;
  v19 = sub_2B0C(&qword_229AE0, &qword_1BCE78);
  LOBYTE(v58) = 5;
  sub_7159C(&qword_229AE8, sub_71328);
  v48 = v19;
  sub_1B5374();
  v46 = v18;
  v20 = v59;
  LOBYTE(v57) = 6;
  sub_1B5374();
  v48 = v20;
  v21 = v58;
  sub_2B0C(&qword_229AF8, &qword_1BCE80);
  LOBYTE(v56) = 7;
  sub_7137C(&qword_229B00);
  sub_1B5374();
  v22 = v57;
  sub_2B0C(&qword_229B08, &qword_1BCE88);
  LOBYTE(v55) = 8;
  sub_713EC();
  sub_1B5374();
  v45 = v22;
  v23 = v56;
  sub_2B0C(&qword_229B18, &qword_1BCE90);
  v54 = 9;
  sub_71470();
  sub_1B5374();
  v44 = v55;
  v54 = 10;
  v42 = COERCE_DOUBLE(sub_1B5344());
  v43 = v24;
  v54 = 11;
  v40 = COERCE_DOUBLE(sub_1B5344());
  v41 = v25;
  v54 = 12;
  v38 = sub_1B5364();
  v39 = v26;
  v54 = 13;
  v27 = sub_1B5334();
  v28 = 5;
  if (!(v52 & 1 | (v53 < 0)))
  {
    v28 = v53;
  }

  v53 = v28;
  v29 = 2.0;
  if ((v51 & 1) == 0)
  {
    v29 = v50;
    if (v50 < 1.0)
    {
      v29 = 2.0;
    }
  }

  if (v49)
  {
    v30 = v49;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = &off_211860;
  if (v46)
  {
    v31 = v46;
  }

  v51 = v31;
  v52 = v30;
  if (v48)
  {
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_35:
    v21 = sub_130530(&off_2118C0);
    if (v45)
    {
      goto LABEL_17;
    }

LABEL_36:
    v45 = sub_13061C(&off_211910);
    goto LABEL_17;
  }

  v48 = sub_130530(&off_211890);
  if (!v21)
  {
    goto LABEL_35;
  }

LABEL_16:
  if (!v45)
  {
    goto LABEL_36;
  }

LABEL_17:
  LODWORD(v50) = v47 & 1;
  if (!v23)
  {
    v23 = &off_211950;
  }

  v32 = &off_211978;
  if (v44)
  {
    v32 = v44;
  }

  v49 = v32;
  (*(v6 + 8))(v9, v5);
  v33 = 0x3FECCCCCCCCCCCCDLL;
  if ((v43 & 1) == 0 && v42 >= 0.0)
  {
    v33 = 0x3FECCCCCCCCCCCCDLL;
    if (v42 <= 1.0)
    {
      v33 = *&v42;
    }
  }

  v34 = 0.5;
  if ((v41 & 1) == 0 && v40 >= 0.0)
  {
    v34 = 0.5;
    if (v40 <= 1.0)
    {
      v34 = v40;
    }
  }

  v35 = v38;
  *a2 = v53;
  v36 = 10;
  if (v35 <= 0)
  {
    v35 = 10;
  }

  *(a2 + 8) = v29;
  if ((v39 & 1) == 0)
  {
    v36 = v35;
  }

  v37 = v51;
  *(a2 + 16) = v52;
  *(a2 + 24) = v37;
  *(a2 + 32) = LOBYTE(v50);
  *(a2 + 40) = v48;
  *(a2 + 48) = v21;
  *(a2 + 56) = v45;
  *(a2 + 64) = v23;
  *(a2 + 72) = v49;
  *(a2 + 80) = v33;
  *(a2 + 88) = v34;
  *(a2 + 96) = v36;
  *(a2 + 104) = (v27 == 2) | v27 & 1;
  return sub_2BF8(a1);
}

uint64_t Configuration.BooksClusteringServiceConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229B30, &qword_1BCE98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v31 = v1[3];
  v32 = v10;
  v30 = *(v1 + 32);
  v11 = v1[5];
  v28 = v1[6];
  v29 = v11;
  v12 = v1[7];
  v26 = v1[8];
  v27 = v12;
  v13 = v1[9];
  v15 = v1[10];
  v14 = v1[11];
  v24 = v1[12];
  v25 = v13;
  v16 = *(v1 + 104);
  v17 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71280();
  v18 = v3;
  sub_1B5884();
  LOBYTE(v35) = 0;
  v19 = v33;
  sub_1B5534();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v31;
  v21 = v32;
  v22 = v30;
  LODWORD(v33) = v16;
  LOBYTE(v35) = 1;
  sub_1B5514();
  v35 = v21;
  v34 = 2;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8);
  sub_1B5544();
  v32 = v4;
  v35 = v20;
  v34 = 3;
  sub_1B5544();
  LOBYTE(v35) = v22;
  v34 = 4;
  sub_71548();
  sub_1B5544();
  v35 = v29;
  v34 = 5;
  sub_2B0C(&qword_229AE0, &qword_1BCE78);
  sub_7159C(&qword_229B40, sub_71620);
  sub_1B5544();
  v35 = v28;
  v34 = 6;
  sub_1B5544();
  v35 = v27;
  v34 = 7;
  sub_2B0C(&qword_229AF8, &qword_1BCE80);
  sub_7137C(&qword_229B50);
  sub_1B5544();
  v35 = v26;
  v34 = 8;
  sub_2B0C(&qword_229B08, &qword_1BCE88);
  sub_71674();
  sub_1B5544();
  v35 = v25;
  v34 = 9;
  sub_2B0C(&qword_229B18, &qword_1BCE90);
  sub_716F8();
  sub_1B5544();
  LOBYTE(v35) = 10;
  sub_1B5514();
  LOBYTE(v35) = 11;
  sub_1B5514();
  LOBYTE(v35) = 12;
  sub_1B5534();
  LOBYTE(v35) = 13;
  sub_1B5504();
  return (*(v4 + 8))(v7, v18);
}

BooksPersonalization::Configuration::PersonalizationMetadataServiceConfiguration __swiftcall Configuration.PersonalizationMetadataServiceConfiguration.init(enabled:cachedMetadataExpirationInterval:batchMaximumSize:)(Swift::Bool enabled, Swift::Double cachedMetadataExpirationInterval, Swift::Int batchMaximumSize)
{
  *v3 = enabled;
  *(v3 + 8) = cachedMetadataExpirationInterval;
  *(v3 + 16) = batchMaximumSize;
  result.cachedMetadataExpirationInterval = cachedMetadataExpirationInterval;
  result.batchMaximumSize = batchMaximumSize;
  result.enabled = enabled;
  return result;
}

uint64_t Configuration.PersonalizationMetadataServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229B70, &qword_1BCEA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_717D0();
  sub_1B5864();
  if (!v2)
  {
    v16[15] = 0;
    v11 = sub_1B53C4();
    v16[14] = 1;
    sub_1B53D4();
    v14 = v13;
    v16[13] = 2;
    v15 = sub_1B53F4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
  }

  return sub_2BF8(a1);
}

uint64_t sub_68FCC()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_69034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7536C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6905C(uint64_t a1)
{
  v2 = sub_717D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_69098(uint64_t a1)
{
  v2 = sub_717D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.PersonalizationMetadataServiceConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229B80, &qword_1BCEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13 = *(v1 + 2);
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_717D0();
  sub_1B5884();
  v16 = 0;
  sub_1B5504();
  if (!v2)
  {
    v15 = 1;
    sub_1B5514();
    v14 = 2;
    sub_1B5534();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Configuration.BooksClusteringServiceLegacyCollectionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_229B88, &qword_1BCEB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71824();
  sub_1B5864();
  if (!v2)
  {
    v11 = sub_1B5334();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_6941C()
{
  sub_1B57F4();
  sub_1B5804(0);
  return sub_1B5844();
}

Swift::Int sub_69460()
{
  sub_1B57F4();
  sub_1B5804(0);
  return sub_1B5844();
}

uint64_t sub_694B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_69540(uint64_t a1)
{
  v2 = sub_71824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6957C(uint64_t a1)
{
  v2 = sub_71824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.BooksClusteringServiceLegacyCollectionConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229B98, &qword_1BCEB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71824();
  sub_1B5884();
  sub_1B5504();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.ReadingHistoryConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BA0, &qword_1BCEC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71878();
  sub_1B5864();
  if (!v2)
  {
    v35 = 0;
    v11 = sub_1B5344();
    v13 = v12;
    v14 = *&v11;
    v34 = 1;
    v15 = sub_1B5344();
    v31 = v16;
    v30 = *&v15;
    v33 = 2;
    v17 = sub_1B5344();
    v29 = v19;
    v28 = *&v17;
    v32 = 3;
    v27 = COERCE_DOUBLE(sub_1B5344());
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    if (v13)
    {
      v22 = 0.3;
    }

    else
    {
      v23 = 0.3;
      if (v14 <= 1.0)
      {
        v23 = v14;
      }

      if (v14 >= -1.0)
      {
        v22 = v23;
      }

      else
      {
        v22 = 0.3;
      }
    }

    v24 = 0.9;
    if ((v31 & 1) == 0 && v30 >= 0.0)
    {
      v24 = 0.9;
      if (v30 <= 1.0)
      {
        v24 = v30;
      }
    }

    v25 = 0.1;
    if ((v29 & 1) == 0 && v28 >= -1.0)
    {
      v25 = 0.1;
      if (v28 <= 1.0)
      {
        v25 = v28;
      }
    }

    if ((v21 & 1) != 0 || (v26 = *&v27, v27 < 0.0))
    {
      v26 = 0x4163C68000000000;
    }

    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v26;
  }

  return sub_2BF8(a1);
}

unint64_t sub_69A7C()
{
  v1 = 0x616552796C6C7566;
  if (*v0 != 2)
  {
    v1 = 0x6566694C666C6168;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_69B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_69B2C(uint64_t a1)
{
  v2 = sub_71878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_69B68(uint64_t a1)
{
  v2 = sub_71878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.ReadingHistoryConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229BB0, &qword_1BCEC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71878();
  sub_1B5884();
  v15[15] = 0;
  sub_1B5514();
  if (!v2)
  {
    v15[14] = 1;
    sub_1B5514();
    v15[13] = 2;
    sub_1B5514();
    v15[12] = 3;
    sub_1B5514();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BB8, &qword_1BCED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_718CC();
  sub_1B5864();
  if (!v2)
  {
    v53 = 0;
    *&v11 = COERCE_DOUBLE(sub_1B5344());
    v13 = v12;
    v14 = *&v11;
    v52 = 1;
    v15 = sub_1B5364();
    v47 = v16;
    v17 = v15;
    v51 = 2;
    v18 = sub_1B5364();
    v46 = v19;
    v45 = v18;
    v50 = 3;
    v20 = sub_1B5364();
    v44 = v21;
    v43 = v20;
    v49 = 4;
    v22 = sub_1B5344();
    v42 = v24;
    v41 = *&v22;
    v48 = 5;
    v40 = sub_1B5364();
    HIDWORD(v39) = v25;
    (*(v6 + 8))(v9, v5);
    v26 = BYTE4(v39);
    v27 = v40;
    v28 = -0.1;
    if (v13)
    {
      v29 = v46;
      v30 = v47;
      v31 = v45;
      v32 = v43;
      v33 = v44;
      v34 = v41;
      v35 = v42;
    }

    else
    {
      v29 = v46;
      v30 = v47;
      v31 = v45;
      v32 = v43;
      v33 = v44;
      v34 = v41;
      v35 = v42;
      if (v14 >= -1.0)
      {
        v28 = -0.1;
        if (v14 <= 1.0)
        {
          v28 = v14;
        }
      }
    }

    v36 = 10;
    if (!(v30 & 1 | (v17 < 0)))
    {
      v36 = v17;
    }

    if (v29 & 1 | (v31 < 0))
    {
      v31 = 1;
    }

    if (v33 & 1 | (v32 < 0))
    {
      v32 = 7;
    }

    v37 = 1.5;
    if ((v35 & 1) == 0)
    {
      v37 = v34;
      if (v34 < 1.0)
      {
        v37 = 1.5;
      }
    }

    *a2 = v28;
    *(a2 + 8) = v36;
    *(a2 + 16) = v31;
    if (v26 & 1 | (v27 < 0))
    {
      v38 = 180;
    }

    else
    {
      v38 = v27;
    }

    *(a2 + 24) = v32;
    *(a2 + 32) = v37;
    *(a2 + 40) = v38;
  }

  return sub_2BF8(a1);
}

unint64_t sub_6A19C()
{
  v1 = *v0;
  v2 = 0x64656E696C636564;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000023;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_6A274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7560C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6A29C(uint64_t a1)
{
  v2 = sub_718CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6A2D8(uint64_t a1)
{
  v2 = sub_718CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229BC8, &qword_1BCED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15[2] = v1[2];
  v15[3] = v10;
  v15[1] = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_718CC();
  sub_1B5884();
  v21 = 0;
  sub_1B5514();
  if (!v2)
  {
    v20 = 1;
    sub_1B5534();
    v19 = 2;
    sub_1B5534();
    v18 = 3;
    sub_1B5534();
    v17 = 4;
    sub_1B5514();
    v16 = 5;
    sub_1B5534();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.RecommendationMethodology.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6168637275706F63;
  }

  *v0;
  return result;
}

unint64_t sub_6A5C0(char a1)
{
  result = 0x64656E696C636564;
  switch(a1)
  {
    case 1:
    case 21:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 6:
    case 32:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6573616863727570;
      break;
    case 8:
    case 24:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 11:
    case 27:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD00000000000002DLL;
      break;
    case 15:
      result = 0x6465776569766572;
      break;
    case 16:
    case 19:
    case 30:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x5764656C706D6173;
      break;
    case 18:
      result = 0x4864656C706D6173;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 22:
      v3 = 5;
      goto LABEL_23;
    case 23:
    case 35:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD00000000000002ELL;
      break;
    case 29:
      result = 0xD000000000000024;
      break;
    case 31:
    case 33:
      result = 0xD000000000000023;
      break;
    case 34:
    case 36:
      v3 = 9;
LABEL_23:
      result = v3 | 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_6AA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6168637275706F63;
  }

  if (v3)
  {
    v5 = 0xEA00000000006573;
  }

  else
  {
    v5 = 0x80000000001D49B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6168637275706F63;
  }

  if (*a2)
  {
    v7 = 0x80000000001D49B0;
  }

  else
  {
    v7 = 0xEA00000000006573;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_6AADC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6AB68()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_6ABE0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6AC74(unint64_t *a1@<X8>)
{
  v2 = 0x80000000001D49B0;
  v3 = 0x6168637275706F63;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006573;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_6AD6C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6A5C0(*a1);
  v5 = v4;
  if (v3 == sub_6A5C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5604();
  }

  return v8 & 1;
}

Swift::Int sub_6ADF4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_6A5C0(v1);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6AE58()
{
  sub_6A5C0(*v0);
  sub_1B4884();
}

Swift::Int sub_6AEAC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_6A5C0(v1);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6AF0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_75810();
  *a2 = result;
  return result;
}

unint64_t sub_6AF3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6A5C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_6AF70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_75810();
  *a1 = result;
  return result;
}

uint64_t sub_6AFA4(uint64_t a1)
{
  v2 = sub_71920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6AFE0(uint64_t a1)
{
  v2 = sub_71920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.init(bookReadingHistoryConfiguration:sampledReadingHistoryConfiguration:declinedConfiguration:moreLikeThisWeight:moreLikeThisHalfLife:lessLikeThisWeight:lessLikeThisHalfLife:purchasedWeight:purchasedHalfLife:downloadedViaFamilySharingWeight:downloadedViaFamilySharingHalfLife:acquiredExternallyWeight:acquiredExternallyHalfLife:acquiredExternallyUnknownFinishedInterval:storeBookUnknownFinishedIntervalSincePurchase:reviewedWeight:reviewedHalfLife:sampledWeight:sampledHalfLife:wantToReadWeight:wantToReadHalfLife:productPageViewWeight:productPageViewHalfLife:diversificationPenalty:bookAffinityLimit:bookCandidateLimitPerSeedBook:bookCandidateLimit:supplementalRequestLimit:preEventCollectionAddedToWantToReadDateSpacing:preEventCollectionSampledDateSpacing:bookHistoryLimit:syntheticConditionalScoreMultiplier:conditionalScoreBias:allowCandidatesWithProductPageViews:allowCandidatesInWantToRead:allowSampledCandidates:recommendationMethodologies:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, double a13, char a14, double a15, char a16, double a17, char a18, double a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, double a25, char a26, double a27, char a28, double a29, char a30, double a31, char a32, double a33, char a34, double a35, char a36, double a37, char a38, double a39, char a40, double a41, char a42, double a43, char a44, double a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, double a55, char a56, double a57, char a58, uint64_t a59, char a60, double a61, char a62, double a63)
{
  v69 = *(a3 + 48);
  if ((*(a1 + 32) & 1) == 0)
  {
    v71 = *a1;
    v70 = *(a1 + 16);
    if (!*(a3 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    v75 = xmmword_1BCD40;
    v76 = 1.5;
    v73 = 180;
    v72 = 7;
    v74 = 0xBFB999999999999ALL;
    goto LABEL_6;
  }

  v70 = xmmword_1BCD20;
  v71 = xmmword_1BCD30;
  if (*(a3 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  v72 = *(a3 + 24);
  v73 = *(a3 + 40);
  v74 = *a3;
  v75 = *(a3 + 8);
  v76 = *(a3 + 32);
LABEL_6:
  v77 = 0.9;
  if ((a5 & 1) == 0 && a4 >= -1.0)
  {
    if (a4 > 1.0)
    {
      v77 = 0.9;
    }

    else
    {
      v77 = a4;
    }
  }

  if ((a7 & 1) != 0 || (v78 = *&a6, a6 < 0.0))
  {
    v78 = 0x4153C68000000000;
  }

  v79 = -0.9;
  if ((a10 & 1) == 0 && a8 >= -1.0)
  {
    if (a8 > 1.0)
    {
      v79 = -0.9;
    }

    else
    {
      v79 = a8;
    }
  }

  if ((a12 & 1) != 0 || (v80 = *&a11, a11 < 0.0))
  {
    v80 = 0x4153C68000000000;
  }

  v81 = 0.5;
  if ((a14 & 1) == 0 && a13 >= -1.0)
  {
    if (a13 > 1.0)
    {
      v81 = 0.5;
    }

    else
    {
      v81 = a13;
    }
  }

  if ((a16 & 1) != 0 || (v82 = *&a15, a15 < 0.0))
  {
    v82 = 0x4187BB0000000000;
  }

  v83 = 0.5;
  if ((a18 & 1) == 0 && a17 >= -1.0)
  {
    if (a17 > 1.0)
    {
      v83 = 0.5;
    }

    else
    {
      v83 = a17;
    }
  }

  if ((a20 & 1) != 0 || (v84 = *&a19, a19 < 0.0))
  {
    v84 = 0x4187BB0000000000;
  }

  v85 = 0.5;
  if ((a18 & 1) == 0 && a17 >= -1.0)
  {
    if (a17 > 1.0)
    {
      v85 = 0.5;
    }

    else
    {
      v85 = a17;
    }
  }

  if ((a20 & 1) != 0 || (v86 = *&a19, a19 < 0.0))
  {
    v86 = 0x4187BB0000000000;
  }

  v87 = 1.0;
  if ((a30 & 1) == 0 && a29 >= -1.0)
  {
    v87 = fmin(a29, 1.0);
  }

  if ((a32 & 1) != 0 || (v88 = *&a31, a31 < 0.0))
  {
    v88 = 0x4196A38200000000;
  }

  v89 = 0x3FD999999999999ALL;
  if ((a34 & 1) == 0 && a33 >= -1.0)
  {
    if (a33 > 1.0)
    {
      v89 = 0x3FD999999999999ALL;
    }

    else
    {
      v89 = *&a33;
    }
  }

  if ((a36 & 1) != 0 || (v90 = *&a35, a35 < 0.0))
  {
    v90 = 0x4153C68000000000;
  }

  v91 = 0x3FD999999999999ALL;
  if ((a38 & 1) == 0 && a37 >= -1.0)
  {
    if (a37 > 1.0)
    {
      v91 = 0x3FD999999999999ALL;
    }

    else
    {
      v91 = *&a37;
    }
  }

  if ((a40 & 1) != 0 || (v92 = *&a39, a39 < 0.0))
  {
    v92 = 0x4153C68000000000;
  }

  v93 = 0x3FB999999999999ALL;
  if ((a42 & 1) == 0 && a41 >= -1.0)
  {
    if (a41 > 1.0)
    {
      v93 = 0x3FB999999999999ALL;
    }

    else
    {
      v93 = *&a41;
    }
  }

  if ((a44 & 1) != 0 || (v94 = *&a43, a43 < 0.0))
  {
    v94 = 0x4143C68000000000;
  }

  v95 = 0x3FE999999999999ALL;
  if ((a46 & 1) == 0 && a45 >= 0.0)
  {
    if (a45 > 1.0)
    {
      v95 = 0x3FE999999999999ALL;
    }

    else
    {
      v95 = *&a45;
    }
  }

  v96 = 1.0;
  v97 = 1.0;
  if ((a56 & 1) == 0 && a55 >= 0.0)
  {
    v97 = a55;
  }

  if ((a58 & 1) == 0 && a57 >= 0.0)
  {
    v96 = a57;
  }

  v98 = 1.5;
  if ((a62 & 1) == 0 && a61 > 0.0)
  {
    v98 = a61;
  }

  v99 = a27;
  v100 = a25;
  v101 = 0.0;
  result = a68;
  if ((a64 & 1) == 0 && a63 >= 0.0)
  {
    if (a63 > 1.0)
    {
      v101 = 0.0;
    }

    else
    {
      v101 = a63;
    }
  }

  v103 = a66;
  v104 = a65;
  v105 = a60;
  v106 = a59;
  v107 = a54;
  v108 = a53;
  v109 = a52;
  v110 = a50;
  v111 = a49;
  v112 = a48;
  v113 = a47;
  v114 = a28;
  v116 = *a2;
  v115 = a2[1];
  v117 = a2[2].u8[0];
  if (!a68)
  {
    v138 = v73;
    v157 = v71;
    v158 = v70;
    v156 = v75;
    v151 = v76;
    v155 = v74;
    v140 = v98;
    v141 = v97;
    v118 = v77;
    v149 = v78;
    v150 = v88;
    v137 = *a2;
    v119 = v79;
    v153 = v80;
    v154 = v83;
    v142 = v96;
    v143 = v95;
    v120 = v81;
    v147 = v82;
    v148 = v90;
    v144 = v94;
    v145 = v93;
    v121 = v84;
    v122 = v85;
    v152 = v87;
    v123 = v86;
    v124 = v89;
    v139 = v101;
    v125 = v91;
    v146 = v92;
    v136 = a2[1];
    result = sub_40E48(&off_211D88);
    v115 = v136;
    v106 = a59;
    v113 = a47;
    v108 = a53;
    v111 = a49;
    v112 = a48;
    v114 = a28;
    v99 = a27;
    v107 = a54;
    v110 = a50;
    v100 = a25;
    v103 = a66;
    v104 = a65;
    v105 = a60;
    v109 = a52;
    v91 = v125;
    v101 = v139;
    v82 = v147;
    v90 = v148;
    v89 = v124;
    v78 = v149;
    v88 = v150;
    v86 = v123;
    v87 = v152;
    v80 = v153;
    v85 = v122;
    v95 = v143;
    v94 = v144;
    v83 = v154;
    v84 = v121;
    v93 = v145;
    v92 = v146;
    v81 = v120;
    v97 = v141;
    v96 = v142;
    v79 = v119;
    v116 = v137;
    v77 = v118;
    v98 = v140;
    v74 = v155;
    v76 = v151;
    v75 = v156;
    v71 = v157;
    v70 = v158;
    v73 = v138;
  }

  v126 = vdup_n_s32(v117);
  v127.i64[0] = v126.u32[0];
  v127.i64[1] = v126.u32[1];
  v128 = vcltzq_s64(vshlq_n_s64(v127, 0x3FuLL));
  *a9 = v71;
  *(a9 + 16) = v70;
  *(a9 + 32) = vbslq_s8(v128, xmmword_1BCD30, v116);
  *(a9 + 48) = vbslq_s8(v128, xmmword_1BCD50, v115);
  *(a9 + 64) = v74;
  *(a9 + 72) = v75;
  *(a9 + 96) = v76;
  *(a9 + 112) = v77;
  *(a9 + 120) = v78;
  *(a9 + 128) = v79;
  *(a9 + 136) = v80;
  *(a9 + 144) = v81;
  *(a9 + 152) = v82;
  *(a9 + 160) = v83;
  v129 = 1000;
  if (!(v105 & 1 | (v106 < 0)))
  {
    v129 = v106;
  }

  v130 = 500;
  if (!(v109 & 1 | (a51 < 0)))
  {
    v130 = a51;
  }

  if (v107 & 1 | (v108 < 0))
  {
    v131 = 1;
  }

  else
  {
    v131 = v108;
  }

  v132 = 10;
  if (!(v110 & 1 | (v111 < 0)))
  {
    v132 = v111;
  }

  v133 = 20;
  *(a9 + 168) = v84;
  *(a9 + 176) = v85;
  if (!(v112 & 1 | (v113 < 0)))
  {
    v133 = v113;
  }

  v134 = v99;
  if (v114)
  {
    v134 = 1209600.0;
  }

  v135 = v100;
  if (a26)
  {
    v135 = 157680000.0;
  }

  *(a9 + 184) = v86;
  *(a9 + 192) = v135;
  *(a9 + 200) = v134;
  *(a9 + 208) = v87;
  *(a9 + 216) = v88;
  *(a9 + 224) = v89;
  *(a9 + 232) = v90;
  *(a9 + 240) = v91;
  *(a9 + 248) = v92;
  *(a9 + 256) = v93;
  *(a9 + 264) = v94;
  *(a9 + 272) = v95;
  *(a9 + 312) = v97;
  *(a9 + 320) = v96;
  *(a9 + 344) = v98;
  *(a9 + 352) = v101;
  *(a9 + 88) = v72;
  *(a9 + 104) = v73;
  *(a9 + 280) = v133;
  *(a9 + 288) = v132;
  *(a9 + 296) = v130;
  *(a9 + 304) = v131;
  *(a9 + 328) = result;
  *(a9 + 336) = v129;
  *(a9 + 360) = (v104 == 2) | v104 & 1;
  *(a9 + 361) = (v103 == 2) | v103 & 1;
  *(a9 + 362) = (a67 == 2) | a67 & 1;
  return result;
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BD0, &qword_1BCEE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v111 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71920();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v192) = 0;
    sub_71974();
    sub_1B5374();
    v12 = v202;
    v11 = v203;
    v14 = v204;
    v13 = v205;
    v15 = v206;
    LOBYTE(v192) = 1;
    sub_1B5374();
    v189 = v200;
    v190 = v199;
    v16 = v201;
    LOBYTE(v207) = 2;
    sub_719C8();
    sub_1B5374();
    LODWORD(v186) = v15;
    LODWORD(v188) = v16;
    v17 = v192;
    v185 = v193;
    v184 = v194;
    v187 = v195;
    v18 = v196;
    v19 = v197;
    v20 = v198;
    LOBYTE(v207) = 3;
    v21 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v180) = v20;
    LODWORD(v181) = v22;
    v182 = v21;
    v183 = v19;
    LOBYTE(v207) = 4;
    *&v23 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v19) = v24;
    v25 = *&v23;
    LOBYTE(v207) = 5;
    v26 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v178) = LODWORD(v19);
    v28 = v27;
    v179 = v26;
    LOBYTE(v207) = 6;
    v29 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v176) = v30;
    v177 = v29;
    LOBYTE(v207) = 7;
    v31 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v172) = v32;
    v174 = v31;
    LOBYTE(v207) = 8;
    v175 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v173) = v33;
    LOBYTE(v207) = 9;
    v171 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v170) = v34;
    LOBYTE(v207) = 10;
    v169 = COERCE_DOUBLE(sub_1B5344());
    v168 = v35;
    LOBYTE(v207) = 11;
    sub_1B5344();
    LOBYTE(v207) = 12;
    sub_1B5344();
    LOBYTE(v207) = 13;
    *&v167 = COERCE_DOUBLE(sub_1B5344());
    v166 = v36;
    LOBYTE(v207) = 14;
    *&v165 = COERCE_DOUBLE(sub_1B5344());
    v164 = v37;
    LOBYTE(v207) = 15;
    v163 = COERCE_DOUBLE(sub_1B5344());
    v162 = v38;
    LOBYTE(v207) = 16;
    v161 = COERCE_DOUBLE(sub_1B5344());
    v160 = v39;
    LOBYTE(v207) = 17;
    v159 = COERCE_DOUBLE(sub_1B5344());
    v158 = v40;
    LOBYTE(v207) = 18;
    v157 = COERCE_DOUBLE(sub_1B5344());
    v156 = v41;
    LOBYTE(v207) = 19;
    v155 = COERCE_DOUBLE(sub_1B5344());
    v154 = v42;
    LOBYTE(v207) = 20;
    v153 = COERCE_DOUBLE(sub_1B5344());
    v152 = v43;
    LOBYTE(v207) = 21;
    v151 = COERCE_DOUBLE(sub_1B5344());
    v150 = v44;
    LOBYTE(v207) = 22;
    v149 = COERCE_DOUBLE(sub_1B5344());
    v148 = v45;
    LOBYTE(v207) = 23;
    v147 = COERCE_DOUBLE(sub_1B5344());
    v146 = v46;
    LOBYTE(v207) = 24;
    v145 = sub_1B5364();
    v144 = v47;
    LOBYTE(v207) = 25;
    v143 = sub_1B5364();
    v142 = v48;
    LOBYTE(v207) = 26;
    v141 = sub_1B5364();
    v140 = v49;
    LOBYTE(v207) = 27;
    *&v139 = COERCE_DOUBLE(sub_1B5364());
    v138 = v50;
    LOBYTE(v207) = 28;
    v137 = COERCE_DOUBLE(sub_1B5344());
    v136 = v51;
    LOBYTE(v207) = 29;
    v135 = COERCE_DOUBLE(sub_1B5344());
    v134 = v52;
    LOBYTE(v207) = 30;
    *&v133 = COERCE_DOUBLE(sub_1B5364());
    v132 = v53;
    LOBYTE(v207) = 31;
    v131 = COERCE_DOUBLE(sub_1B5344());
    v130 = v54;
    LOBYTE(v207) = 32;
    v129 = COERCE_DOUBLE(sub_1B5344());
    v128 = v55;
    LOBYTE(v207) = 33;
    v127 = sub_1B5334();
    LOBYTE(v207) = 34;
    v126 = sub_1B5334();
    LOBYTE(v207) = 35;
    v125 = sub_1B5334();
    sub_2B0C(&qword_229BF0, &qword_1BCEE8);
    v191 = 36;
    sub_71A1C();
    sub_1B5374();
    if (v207)
    {
      v57 = v207;
    }

    else
    {
      v57 = &off_211DB0;
    }

    v122 = sub_40E48(v57);

    v58 = 0.3;
    if (!LODWORD(v186))
    {
      v58 = v12;
    }

    v121 = v58;
    v59 = 0.9;
    v123 = 0x3FECCCCCCCCCCCCDLL;
    if (!LODWORD(v186))
    {
      v59 = v11;
    }

    v120 = v59;
    v60 = 0.1;
    v124 = 0x3FB999999999999ALL;
    if (!LODWORD(v186))
    {
      v60 = v14;
    }

    v119 = v60;
    v61 = 49766400.0;
    if (!LODWORD(v186))
    {
      v61 = v13;
    }

    v118 = v61;
    if (v188)
    {
      v62 = -1;
    }

    else
    {
      v62 = 0;
    }

    v63 = -0.1;
    if (!LODWORD(v180))
    {
      v63 = v17;
    }

    v117 = v63;
    v64 = 10;
    if (!LODWORD(v180))
    {
      v64 = *&v185;
    }

    v116 = v64;
    v65 = *&v184;
    if (LODWORD(v180))
    {
      v65 = 1;
    }

    v115 = v65;
    v66 = 7;
    if (!LODWORD(v180))
    {
      v66 = *&v187;
    }

    v114 = v66;
    v67 = 1.5;
    if (!LODWORD(v180))
    {
      v67 = v18;
    }

    v113 = v67;
    v68 = 180;
    if (!LODWORD(v180))
    {
      v68 = *&v183;
    }

    v112 = v68;
    if ((LOBYTE(v181) & 1) == 0)
    {
      v69 = v182;
      if (v182 >= -1.0)
      {
        if (v182 > 1.0)
        {
          v69 = 0.9;
        }

        v123 = *&v69;
      }
    }

    if ((LOBYTE(v178) & 1) != 0 || (v188 = *&v25, v25 < 0.0))
    {
      v188 = 0x4153C68000000000;
    }

    v182 = -0.9;
    if ((v28 & 1) == 0)
    {
      v70 = v179;
      if (v179 >= -1.0)
      {
        if (v179 > 1.0)
        {
          v70 = -0.9;
        }

        v182 = v70;
      }
    }

    if ((v176 & 1) != 0 || (v187 = v177, v177 < 0.0))
    {
      v187 = 5184000.0;
    }

    v181 = 0.5;
    if ((v172 & 1) == 0)
    {
      v71 = v174;
      if (v174 >= -1.0)
      {
        if (v174 > 1.0)
        {
          v71 = 0.5;
        }

        v181 = v71;
      }
    }

    if ((v173 & 1) != 0 || (v186 = v175, v175 < 0.0))
    {
      v186 = 49766400.0;
    }

    v180 = 0.5;
    if ((v170 & 1) == 0)
    {
      v72 = v171;
      if (v171 >= -1.0)
      {
        if (v171 > 1.0)
        {
          v72 = 0.5;
        }

        v180 = v72;
      }
    }

    if ((v168 & 1) != 0 || (v185 = v169, v169 < 0.0))
    {
      v185 = 49766400.0;
    }

    v179 = 0.5;
    if ((v170 & 1) == 0)
    {
      v73 = v171;
      if (v171 >= -1.0)
      {
        if (v171 > 1.0)
        {
          v73 = 0.5;
        }

        v179 = v73;
      }
    }

    if ((v168 & 1) != 0 || (v184 = v169, v169 < 0.0))
    {
      v184 = 49766400.0;
    }

    v74 = *&v167;
    if (v166)
    {
      v74 = 157680000.0;
    }

    v175 = v74;
    v75 = *&v165;
    if (v164)
    {
      v75 = 1209600.0;
    }

    v174 = v75;
    v178 = 1.0;
    if ((v162 & 1) == 0 && v163 >= -1.0)
    {
      v178 = fmin(v163, 1.0);
    }

    if ((v160 & 1) != 0 || (v183 = v161, v161 < 0.0))
    {
      v183 = 94953600.0;
    }

    v177 = 0.4;
    if ((v158 & 1) == 0)
    {
      v76 = v159;
      if (v159 >= -1.0)
      {
        if (v159 > 1.0)
        {
          v76 = 0.4;
        }

        v177 = v76;
      }
    }

    if ((v156 & 1) != 0 || (v77 = v157, v157 < 0.0))
    {
      v77 = 5184000.0;
    }

    v176 = 0x3FD999999999999ALL;
    if ((v154 & 1) == 0)
    {
      v78 = v155;
      if (v155 >= -1.0)
      {
        if (v155 > 1.0)
        {
          v78 = 0.4;
        }

        v176 = *&v78;
      }
    }

    if ((v152 & 1) != 0 || (v79 = v153, v153 < 0.0))
    {
      v79 = 5184000.0;
    }

    if ((v150 & 1) == 0)
    {
      v80 = v151;
      if (v151 >= -1.0)
      {
        if (v151 > 1.0)
        {
          v80 = 0.1;
        }

        v124 = *&v80;
      }
    }

    if ((v148 & 1) != 0 || (v81 = v149, v149 < 0.0))
    {
      v81 = 2592000.0;
    }

    v82 = 0.8;
    if ((v146 & 1) == 0 && v147 >= 0.0)
    {
      if (v147 > 1.0)
      {
        v82 = 0.8;
      }

      else
      {
        v82 = v147;
      }
    }

    v83 = 20;
    if (!(v144 & 1 | (v145 < 0)))
    {
      v83 = v145;
    }

    v173 = v83;
    v84 = 10;
    if (!(v142 & 1 | (v143 < 0)))
    {
      v84 = v143;
    }

    v172 = v84;
    if (v138 & 1 | (v139 < 0))
    {
      *&v85 = 1;
    }

    else
    {
      v85 = *&v139;
    }

    v171 = v85;
    v86 = 500;
    if (!(v140 & 1 | (v141 < 0)))
    {
      v86 = v141;
    }

    v170 = v86;
    v87 = 1.0;
    v88 = 1.0;
    if ((v136 & 1) == 0)
    {
      v88 = v137;
      if (v137 < 0.0)
      {
        v88 = 1.0;
      }
    }

    if ((v134 & 1) == 0)
    {
      v87 = v135;
      if (v135 < 0.0)
      {
        v87 = 1.0;
      }
    }

    v89 = vdupq_n_s64(v62);
    *&v90 = 1000;
    if (!(v132 & 1 | (v133 < 0)))
    {
      v90 = *&v133;
    }

    v169 = v90;
    v91 = 1.5;
    if ((v130 & 1) == 0)
    {
      v91 = v131;
      if (v131 <= 0.0)
      {
        v91 = 1.5;
      }
    }

    v189 = vbslq_s8(v89, xmmword_1BCD50, v189);
    v92 = vbslq_s8(v89, xmmword_1BCD30, v190);
    v190 = v92;
    v93 = 0.0;
    if ((v128 & 1) == 0)
    {
      v92.n128_f64[0] = v129;
      if (v129 >= 0.0)
      {
        if (v129 > 1.0)
        {
          v93 = 0.0;
        }

        else
        {
          v93 = v129;
        }
      }
    }

    v94 = (v127 == 2) | v127 & 1;
    v95 = (v126 == 2) | v126 & 1;
    v96 = (v125 == 2) | v125 & 1;
    (*(v6 + 8))(v9, v5, v92);
    v97 = v120;
    *a2 = v121;
    *(a2 + 8) = v97;
    v98 = v118;
    *(a2 + 16) = v119;
    *(a2 + 24) = v98;
    v99 = v189;
    *(a2 + 32) = v190;
    *(a2 + 48) = v99;
    *(a2 + 64) = v117;
    v100 = v115;
    *(a2 + 72) = v116;
    *(a2 + 80) = v100;
    *(a2 + 88) = v114;
    *(a2 + 96) = v113;
    *(a2 + 104) = v112;
    v101 = v188;
    *(a2 + 112) = v123;
    *(a2 + 120) = v101;
    v102 = v187;
    *(a2 + 128) = v182;
    *(a2 + 136) = v102;
    v103 = v186;
    *(a2 + 144) = v181;
    *(a2 + 152) = v103;
    v104 = v185;
    *(a2 + 160) = v180;
    *(a2 + 168) = v104;
    v105 = v184;
    *(a2 + 176) = v179;
    *(a2 + 184) = v105;
    v106 = v174;
    *(a2 + 192) = v175;
    *(a2 + 200) = v106;
    v107 = v183;
    *(a2 + 208) = v178;
    *(a2 + 216) = v107;
    *(a2 + 224) = v177;
    *(a2 + 232) = v77;
    *(a2 + 240) = v176;
    *(a2 + 248) = v79;
    *(a2 + 256) = v124;
    *(a2 + 264) = v81;
    *(a2 + 272) = v82;
    v108 = v172;
    *(a2 + 280) = v173;
    *(a2 + 288) = v108;
    v109 = v171;
    *(a2 + 296) = v170;
    *(a2 + 304) = v109;
    *(a2 + 312) = v88;
    *(a2 + 320) = v87;
    v110 = v169;
    *(a2 + 328) = v122;
    *(a2 + 336) = v110;
    *(a2 + 344) = v91;
    *(a2 + 352) = v93;
    *(a2 + 360) = v94;
    *(a2 + 361) = v95;
    *(a2 + 362) = v96;
  }

  return sub_2BF8(a1);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_229C08, &qword_1BCEF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - v7;
  v9 = v2[2];
  v69 = v2[3];
  v70 = v9;
  v66 = *(v2 + 8);
  v10 = *(v2 + 9);
  v67 = *(v2 + 10);
  v68 = v10;
  v64 = *(v2 + 11);
  v65 = *(v2 + 12);
  v63 = *(v2 + 13);
  *&v9 = *(v2 + 15);
  v62 = *(v2 + 14);
  v61 = v9;
  *&v9 = *(v2 + 17);
  v60 = *(v2 + 16);
  v59 = v9;
  *&v9 = *(v2 + 19);
  v58 = *(v2 + 18);
  v57 = v9;
  *&v9 = *(v2 + 21);
  v56 = *(v2 + 20);
  v55 = v9;
  *&v9 = *(v2 + 23);
  v54 = *(v2 + 22);
  v53 = v9;
  *&v9 = *(v2 + 25);
  v52 = *(v2 + 24);
  v51 = v9;
  *&v9 = *(v2 + 27);
  v50 = *(v2 + 26);
  v49 = v9;
  *&v9 = *(v2 + 29);
  v41 = *(v2 + 28);
  v42 = v9;
  v11 = *(v2 + 31);
  v43 = *(v2 + 30);
  v13 = *(v2 + 32);
  v12 = *(v2 + 33);
  v14 = *(v2 + 34);
  v15 = *(v2 + 36);
  v40 = *(v2 + 35);
  v44 = v15;
  v16 = *(v2 + 38);
  v45 = *(v2 + 37);
  v46 = v16;
  v18 = *(v2 + 39);
  v17 = *(v2 + 40);
  v19 = *(v2 + 42);
  v48 = *(v2 + 41);
  v47 = v19;
  v21 = *(v2 + 43);
  v20 = *(v2 + 44);
  v76 = *(v2 + 360);
  v22 = *(v2 + 361);
  v23 = *(v2 + 362);
  v24 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71920();
  v25 = v4;
  sub_1B5884();
  v26 = *v2;
  v73 = v2[1];
  v72 = v26;
  v77 = 0;
  sub_71AF4();
  v27 = v71;
  sub_1B5544();
  if (v27)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v29 = v67;
  v30 = v68;
  v32 = v11;
  v33 = v13;
  v34 = v12;
  v35 = v14;
  v36 = v18;
  v37 = v17;
  v38 = v21;
  v39 = v20;
  v31[1] = v22;
  LODWORD(v71) = v23;
  v73 = v69;
  v72 = v70;
  v77 = 1;
  sub_1B5544();
  *&v72 = v66;
  *(&v72 + 1) = v30;
  *&v73 = v29;
  *(&v73 + 1) = v64;
  v74 = v65;
  v75 = v63;
  v77 = 2;
  sub_71B48();
  sub_1B5544();
  LOBYTE(v72) = 3;
  sub_1B5514();
  LOBYTE(v72) = 4;
  sub_1B5514();
  LOBYTE(v72) = 5;
  sub_1B5514();
  LOBYTE(v72) = 6;
  sub_1B5514();
  LOBYTE(v72) = 7;
  sub_1B5514();
  LOBYTE(v72) = 8;
  sub_1B5514();
  LOBYTE(v72) = 9;
  sub_1B5514();
  LOBYTE(v72) = 10;
  sub_1B5514();
  LOBYTE(v72) = 11;
  sub_1B5514();
  LOBYTE(v72) = 12;
  sub_1B5514();
  LOBYTE(v72) = 13;
  sub_1B5514();
  LOBYTE(v72) = 14;
  sub_1B5514();
  LOBYTE(v72) = 15;
  sub_1B5514();
  LOBYTE(v72) = 16;
  sub_1B5514();
  LOBYTE(v72) = 17;
  sub_1B5514();
  LOBYTE(v72) = 18;
  sub_1B5514();
  LOBYTE(v72) = 19;
  sub_1B5514();
  LOBYTE(v72) = 20;
  sub_1B5514();
  LOBYTE(v72) = 21;
  sub_1B5514();
  LOBYTE(v72) = 22;
  sub_1B5514();
  LOBYTE(v72) = 23;
  sub_1B5514();
  LOBYTE(v72) = 24;
  sub_1B5534();
  LOBYTE(v72) = 25;
  sub_1B5534();
  LOBYTE(v72) = 26;
  sub_1B5534();
  LOBYTE(v72) = 27;
  sub_1B5534();
  LOBYTE(v72) = 28;
  sub_1B5514();
  LOBYTE(v72) = 29;
  sub_1B5514();
  LOBYTE(v72) = 30;
  sub_1B5534();
  LOBYTE(v72) = 31;
  sub_1B5514();
  LOBYTE(v72) = 32;
  sub_1B5514();
  LOBYTE(v72) = 33;
  sub_1B5504();
  LOBYTE(v72) = 34;
  sub_1B5504();
  LOBYTE(v72) = 35;
  sub_1B5504();
  *&v72 = v48;
  v77 = 36;
  sub_2B0C(&qword_229C20, &qword_1BCEF8);
  sub_71B9C();
  sub_1B5544();
  return (*(v5 + 8))(v8, v25);
}

BooksPersonalization::Configuration::ScorersConfiguration::Scorer_optional __swiftcall Configuration.ScorersConfiguration.Scorer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_211DD8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t Scorer.rawValue.getter()
{
  v1 = 0x797469746E656469;
  if (*v0 != 1)
  {
    v1 = 1768055156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_6D4EC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x797469746E656469;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 1768055156;
  if (v3 == 1)
  {
    v5 = 0x797469746E656469;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x80000000001D45F0;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 1768055156;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x80000000001D45F0;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_6D5D8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6D678()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_6D704()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6D7AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x797469746E656469;
  if (v2 != 1)
  {
    v4 = 1768055156;
    v3 = 0xE400000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000000001D45F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_6D8B8()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_6D934()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_6D98C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_211E40;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_6DA24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_211E78;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_6DA7C(uint64_t a1)
{
  v2 = sub_71CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6DAB8(uint64_t a1)
{
  v2 = sub_71CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.bookHistoryScorerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x16BuLL);
  memcpy(a1, v1, 0x16BuLL);
  return sub_71C74(__dst, v4);
}

double Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  v26 = *(a1 + 192);
  v25 = *(a1 + 200);
  v27 = *(a1 + 208);
  v28 = *(a1 + 216);
  v29 = *(a1 + 224);
  v30 = *(a1 + 232);
  v31 = *(a1 + 240);
  v32 = *(a1 + 248);
  v34 = *(a1 + 256);
  v33 = *(a1 + 264);
  v35 = *(a1 + 272);
  v36 = *(a1 + 280);
  v37 = *(a1 + 288);
  v38 = *(a1 + 296);
  v39 = *(a1 + 304);
  v40 = *(a1 + 328);
  v41 = *(a1 + 336);
  v42 = *(a1 + 360);
  v43 = *(a1 + 361);
  v44 = *(a1 + 362);
  v97 = *(a1 + 32);
  v98 = *a1;
  v115[0] = *a1;
  v115[1] = v3;
  v84 = v4;
  v115[2] = v4;
  v115[3] = v5;
  v115[4] = v97;
  v115[5] = v6;
  v95 = v8;
  v96 = v6;
  v115[6] = v8;
  v115[7] = v7;
  v99 = v9;
  v115[8] = v9;
  v100 = v11;
  v101 = v12;
  v115[9] = v11;
  v115[10] = v10;
  v111 = v10;
  v115[11] = v12;
  v109 = v13;
  v110 = v19;
  *&v115[12] = v13;
  v102 = v14;
  v115[13] = v14;
  v93 = v16;
  v94 = v15;
  v115[14] = v15;
  v115[15] = v16;
  v103 = v17;
  v104 = v26;
  v115[16] = v17;
  v115[17] = v18;
  v91 = v20;
  v92 = v18;
  *&v115[18] = v19;
  v115[19] = v20;
  v89 = v22;
  v90 = v21;
  *&v115[20] = v21;
  v115[21] = v22;
  v87 = v24;
  v88 = v23;
  *&v115[22] = v23;
  v115[23] = v24;
  v115[24] = v26;
  v115[25] = v25;
  v105 = v25;
  v106 = v29;
  v113 = v33;
  v114 = v27;
  *&v115[26] = v27;
  v115[27] = v28;
  v107 = v28;
  v108 = v35;
  v115[28] = v29;
  v115[29] = v30;
  v85 = v31;
  v86 = v30;
  v115[30] = v31;
  v115[31] = v32;
  v45 = v32;
  v46 = v34;
  v115[32] = v34;
  v115[33] = v33;
  v115[34] = v35;
  v47 = v36;
  v115[35] = v36;
  v115[36] = v37;
  v48 = v38;
  v115[37] = v38;
  v115[38] = v39;
  v50 = *(a1 + 312);
  v49 = *(a1 + 320);
  *&v115[39] = v50;
  *&v115[40] = v49;
  v51 = v40;
  v115[41] = v40;
  v52 = v41;
  v115[42] = v41;
  v54 = *(a1 + 344);
  v53 = *(a1 + 352);
  *&v115[43] = v54;
  v112 = v53;
  *&v115[44] = v53;
  v116 = v42;
  v117 = v43;
  v118 = v44;
  if (sub_71CAC(v115) == 1)
  {
    v51 = sub_40E48(&off_211EB0);
    v55 = 1;
    v112 = 0.0;
    v52 = 1000;
    v48 = 500;
    v114 = 1.0;
    v47 = 20;
    v56 = 0.5;
    v113 = 0x4143C68000000000;
    v57 = 1.5;
    v58 = 0x3FE999999999999ALL;
    v59 = 0x4196A38200000000;
    v60 = 0x3FD999999999999ALL;
    v61 = 0x4132750000000000;
    v62 = 0x41A2CC0300000000;
    v63 = 0xBFECCCCCCCCCCCCDLL;
    v64 = 180;
    v65 = 7;
    v66 = 10;
    v67 = 0xBFB999999999999ALL;
    v7 = 0x4153C68000000000;
    v5 = 0x4187BB0000000000;
    v68 = 0x3FB999999999999ALL;
    v3 = 0x3FECCCCCCCCCCCCDLL;
    v69 = 0x3FD3333333333333;
    v70 = 0x3FD3333333333333;
    v71 = 0x3FECCCCCCCCCCCCDLL;
    v72 = 0x3FB999999999999ALL;
    v73 = 0x3FECCCCCCCCCCCCDLL;
    v74 = 0x4153C68000000000;
    v75 = 0x4153C68000000000;
    v76 = 0x4187BB0000000000;
    v77 = 0.5;
    v78 = 0x4187BB0000000000;
    v79 = 0.5;
    v80 = 0x4187BB0000000000;
    v81 = 0x4153C68000000000;
    v82 = 0x3FD999999999999ALL;
    v37 = 10;
    v39 = 1;
    v50 = 1.0;
    v49 = 1.0;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 0x4153C68000000000;
    v54 = 1.5;
    v46 = 0x3FB999999999999ALL;
  }

  else
  {
    v55 = v111;
    v57 = v109;
    v56 = v110;
    v59 = v107;
    v58 = v108;
    v61 = v105;
    v60 = v106;
    v63 = v103;
    v62 = v104;
    v65 = v101;
    v64 = v102;
    v66 = v100;
    v69 = v98;
    v67 = v99;
    v71 = v96;
    v70 = v97;
    v73 = v94;
    v72 = v95;
    v75 = v92;
    v74 = v93;
    v77 = v90;
    v76 = v91;
    v79 = v88;
    v78 = v89;
    v81 = v86;
    v80 = v87;
    v68 = v84;
    v82 = v85;
  }

  *a2 = v69;
  *(a2 + 8) = v3;
  *(a2 + 16) = v68;
  *(a2 + 24) = v5;
  *(a2 + 32) = v70;
  *(a2 + 40) = v71;
  *(a2 + 48) = v72;
  *(a2 + 56) = v7;
  *(a2 + 64) = v67;
  *(a2 + 72) = v66;
  *(a2 + 80) = v55;
  *(a2 + 88) = v65;
  *(a2 + 96) = v57;
  *(a2 + 104) = v64;
  *(a2 + 112) = v73;
  *(a2 + 120) = v74;
  *(a2 + 128) = v63;
  *(a2 + 136) = v75;
  *(a2 + 144) = v56;
  *(a2 + 152) = v76;
  *(a2 + 160) = v77;
  *(a2 + 168) = v78;
  *(a2 + 176) = v79;
  *(a2 + 184) = v80;
  *(a2 + 192) = v62;
  *(a2 + 200) = v61;
  *(a2 + 208) = v114;
  *(a2 + 216) = v59;
  *(a2 + 224) = v60;
  *(a2 + 232) = v81;
  *(a2 + 240) = v82;
  *(a2 + 248) = v45;
  result = v112;
  *(a2 + 256) = v46;
  *(a2 + 264) = v113;
  *(a2 + 272) = v58;
  *(a2 + 280) = v47;
  *(a2 + 288) = v37;
  *(a2 + 296) = v48;
  *(a2 + 304) = v39;
  *(a2 + 312) = v50;
  *(a2 + 320) = v49;
  *(a2 + 328) = v51;
  *(a2 + 336) = v52;
  *(a2 + 344) = v54;
  *(a2 + 352) = v112;
  *(a2 + 360) = v42;
  *(a2 + 361) = v43;
  *(a2 + 362) = v44;
  return result;
}

uint64_t Configuration.ScorersConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = sub_2B0C(&qword_229C38, &qword_1BCF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-v7 - 8];
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71CC4();
  sub_1B5864();
  if (!v2)
  {
    v10 = v17;
    sub_71D18();
    sub_1B5374();
    memcpy(v14, v16, 0x16BuLL);
    v11 = Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v14, v15);
    (*(v5 + 8))(v8, v4, v11);
    memcpy(v10, v15, 0x16BuLL);
  }

  return sub_2BF8(a1);
}

uint64_t Configuration.ScorersConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229C50, &qword_1BCF08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6 - 8];
  memcpy(v13, v1, 0x16BuLL);
  v8 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71C74(v13, v12);
  sub_71CC4();
  sub_1B5884();
  memcpy(v12, v13, 0x16BuLL);
  sub_71D6C();
  sub_1B5544();
  memcpy(v11, v12, 0x16BuLL);
  sub_71DC0(v11);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_6E23C(char a1)
{
  result = 0x697463656C6C6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      return result;
    case 3:
      result = 0x737265726F6373;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 8:
      result = 0x707954616964656DLL;
      break;
    case 9:
      result = 0x6B6F6F6265;
      break;
    case 10:
      result = 0x6F6F626F69647561;
      break;
    case 11:
      result = 0x756C43736B6F6F62;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_6E46C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B5604();
  }

  return v12 & 1;
}

Swift::Int sub_6E518(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1B57F4();
  a3(v5);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6E59C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1B4884();
}

Swift::Int sub_6E60C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1B57F4();
  a4(v6);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6E674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75864(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_6E6A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6E23C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_6E6EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6E714(uint64_t a1)
{
  v2 = sub_71F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6E750(uint64_t a1)
{
  v2 = sub_71F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

BooksPersonalization::Configuration::MediaTypeMethod_optional __swiftcall Configuration.MediaTypeMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212048;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t MediaTypeMethod.rawValue.getter()
{
  v1 = 0x6F4A656C676E6973;
  v2 = 0x6F6A7369446C6C61;
  if (*v0 != 2)
  {
    v2 = 0x7473657265746E69;
  }

  if (*v0)
  {
    v1 = 0x746E696F4A6C6C61;
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

Swift::Int sub_6E880()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6E954()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_6EA14()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6EAF0(uint64_t *a1@<X8>)
{
  v2 = 0x6F4A656C676E6973;
  v3 = 0x6F6A7369446C6C61;
  v4 = 0xED00006465736142;
  if (*v1 == 2)
  {
    v4 = 0xEB00000000746E69;
  }

  else
  {
    v3 = 0x7473657265746E69;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x746E696F4A6C6C61;
  }

  else
  {
    v5 = 0xEB00000000746E69;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

double Configuration.genreRecommendationConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  *(a1 + 24) = v4;
  return result;
}

uint64_t Configuration.collectionsConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v2;
  v8 = *(v1 + 64);
  v3 = v8;
  v9 = *(v1 + 80);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_71DF0(v7, v6);
}

uint64_t Configuration.scorersConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x16BuLL);
  memcpy(a1, (v1 + 88), 0x16BuLL);
  return sub_71E28(__dst, v4);
}

uint64_t Configuration.mediaTypesRecommendationServiceConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 504);
  v3 = *(v1 + 512);
  *a1 = *(v1 + 488);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t Configuration.booksClusteringServiceConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 600);
  v13 = *(v1 + 584);
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 609);
  v4 = *(v14 + 9);
  v5 = *(v1 + 536);
  v10[0] = *(v1 + 520);
  v10[1] = v5;
  v6 = *(v1 + 568);
  v11 = *(v1 + 552);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 89) = v4;
  return sub_71E60(v10, &v9);
}

uint64_t Configuration.ebookConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 641);
  *a1 = *(v1 + 632);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t Configuration.audiobookConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 657);
  *a1 = *(v1 + 648);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

double Configuration.personalizationMetadataServiceConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 672);
  v3 = *(v1 + 680);
  *a1 = *(v1 + 664);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Configuration.workServiceConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 688), 0x1B0uLL);
  memcpy(a1, (v1 + 688), 0x1B0uLL);
  return sub_71E98(__dst, v4);
}

__n128 Configuration.init(genreRecommendationConfiguration:seedBasedRecommendationConfiguration:collectionsConfiguration:scorersConfiguration:profileGenreDenylistForGenres:profileGenreDenylistForBooks:indefiniteAuthorIDs:mediaTypeMethod:mediaTypesRecommendationServiceConfiguration:booksClusteringServiceConfiguration:ebookConfiguration:audiobookConfiguration:personalizationMetadataServiceConfiguration:workServiceConfiguration:)@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, char *a3@<X1>, void *a4@<X2>, _UNKNOWN **a5@<X4>, _UNKNOWN **a6@<X5>, _UNKNOWN **a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, int64x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, double *a14, uint64_t a15)
{
  if (*(a2 + 24) == 2)
  {
    v84 = 0;
    LOBYTE(v86) = 1;
    v16 = 0x3FE6666666666666;
    v88 = 1000;
    LOBYTE(v17) = 1;
  }

  else
  {
    v84 = *(a2 + 24);
    v16 = *(a2 + 16);
    v88 = *a2;
    v86 = *(a2 + 8);
    v17 = v86 >> 8;
  }

  v91 = v17;
  if (a4[6])
  {
    v87 = a4[3];
    v82 = a4[6];
    v83 = *a4 & 0xFFFFFFFFFFFFFF00;
    v77 = *a4;
    v80 = a4[1];
    v89 = a4[5];
    v90 = a4[1] & 0xFFFFFFFFFFFFFF00;
    v81 = a4[2] & 0xFFFFFFFFFFFFFF00;
    v79 = a4[2];
    v76 = a4[4] & 0xFFFFFFFFFFFFFF00;
    v78 = a4[4];
  }

  else
  {
    v89 = 0xD000000000000056;
    v90 = 0;
    v82 = 0x80000000001D59C0;
    v83 = 0x301030103010100;
    v81 = 256;
    v80 = 1;
    v79 = 3;
    v78 = 2;
    v87 = 50;
    v77 = 3;
    v76 = 256;
  }

  v94 = *(a11 + 32);
  v100 = *(a11 + 48);
  v101 = *(a11 + 40);
  v97 = *(a11 + 64);
  v98 = *(a11 + 72);
  v99 = *(a11 + 56);
  v95 = *a11;
  v96 = *(a11 + 96);
  v92 = *(a11 + 104);
  v106 = *(a12 + 8);
  v105 = *(a13 + 8);
  v73 = *a14;
  v74 = *a3;
  v75 = *a8;
  v18 = a10[1].i64[0];
  v19 = *(a11 + 8);
  v93 = *(a11 + 24);
  v102 = *(a11 + 80);
  v103 = *a10;
  v107 = *(a11 + 16);
  v108 = *a12;
  v109 = *a13;
  v110 = a10[1].u64[1];
  v20 = a14[1];
  v72 = *(a14 + 2);
  v104 = *a15;
  v21 = *(a15 + 16);
  v111 = *(a15 + 8);
  v112 = *(a15 + 32);
  v113 = *(a15 + 24);
  v114 = *(a15 + 40);
  v132 = *(a15 + 232);
  v131 = *(a15 + 240);
  v130 = *(a15 + 248);
  v129 = *(a15 + 256);
  v128 = *(a15 + 264);
  v127 = *(a15 + 272);
  v126 = *(a15 + 280);
  v124 = *(a15 + 296);
  v125 = *(a15 + 288);
  v122 = *(a15 + 312);
  v123 = *(a15 + 304);
  v120 = *(a15 + 328);
  v121 = *(a15 + 320);
  v118 = *(a15 + 344);
  v119 = *(a15 + 336);
  v115 = *(a15 + 352);
  v22 = *(a15 + 360);
  v23 = *(a15 + 368);
  v24 = *(a15 + 376);
  v25 = *(a15 + 384);
  v27 = *(a15 + 392);
  v26 = *(a15 + 400);
  v134 = *(a15 + 408);
  v133 = *(a15 + 416);
  v117 = *(a15 + 424);
  memcpy(__dst, __src, 0x16BuLL);
  if (sub_71CAC(__dst) == 1)
  {
    sub_71EF4(__srca);
    memcpy(v156, __srca, 0x16BuLL);
    Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v156, v157);
  }

  else
  {
    memcpy(v157, __src, 0x16BuLL);
  }

  if (a5)
  {
    v29 = a5;
  }

  else
  {
    v29 = &off_2120C8;
  }

  v30 = a6;
  v71 = v29;
  if (a6)
  {
    if (v110)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v30 = v29;

    if (v110)
    {
      goto LABEL_15;
    }
  }

  v110 = sub_130448(&off_212420);
  v103 = vdupq_n_s64(2uLL);
  v18 = 0x3FE999999999999ALL;
LABEL_15:
  v31 = v134;
  v32 = v133;
  v33 = v117;
  v34 = v118;
  v35 = v132;
  v36 = v131;
  v37 = v130;
  v38 = v129;
  v39 = v128;
  v40 = v127;
  v41 = v126;
  v43 = v124;
  v42 = v125;
  v45 = v122;
  v44 = v123;
  v47 = v120;
  v46 = v121;
  v48 = v119;
  if (v107)
  {
    if (v108)
    {
      goto LABEL_17;
    }

LABEL_22:
    if (qword_228298 != -1)
    {
      swift_once();
    }

    LOBYTE(v106) = word_260BD8;
    LOBYTE(v69) = HIBYTE(word_260BD8);
    v108 = qword_260BD0;

    v31 = v134;
    v32 = v133;
    v33 = v117;
    v34 = v118;
    v35 = v132;
    v36 = v131;
    v37 = v130;
    v38 = v129;
    v39 = v128;
    v40 = v127;
    v41 = v126;
    v43 = v124;
    v42 = v125;
    v45 = v122;
    v44 = v123;
    v47 = v120;
    v46 = v121;
    v48 = v119;
    if (v109)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v101 = sub_130530(&off_212590);
  v100 = sub_130530(&off_2125C0);
  v102 = xmmword_1BCD60;
  v49 = sub_13061C(&off_212610);
  v34 = v118;
  v48 = v119;
  v47 = v120;
  v46 = v121;
  v45 = v122;
  v44 = v123;
  v43 = v124;
  v42 = v125;
  v40 = v127;
  v39 = v128;
  v38 = v129;
  v37 = v130;
  v36 = v131;
  v35 = v132;
  v33 = v117;
  v32 = v133;
  v31 = v134;
  v99 = v49;
  v41 = v126;
  v94 = 0;
  v98 = &off_212678;
  v97 = &off_212650;
  v107 = _swiftEmptyArrayStorage;
  v92 = 1;
  v19 = 2.0;
  v96 = 10;
  v95 = 5;
  v93 = &off_212560;
  if (!v108)
  {
    goto LABEL_22;
  }

LABEL_17:
  v69 = (v106 >> 8) & 1;
  if (v109)
  {
LABEL_18:
    v68 = (v105 >> 8) & 1;
    goto LABEL_28;
  }

LABEL_25:
  if (qword_2282A0 != -1)
  {
    swift_once();
  }

  LOBYTE(v105) = word_260BE8;
  LOBYTE(v68) = HIBYTE(word_260BE8);
  v109 = qword_260BE0;

  v31 = v134;
  v32 = v133;
  v33 = v117;
  v34 = v118;
  v35 = v132;
  v36 = v131;
  v37 = v130;
  v38 = v129;
  v39 = v128;
  v40 = v127;
  v41 = v126;
  v43 = v124;
  v42 = v125;
  v45 = v122;
  v44 = v123;
  v47 = v120;
  v46 = v121;
  v48 = v119;
LABEL_28:
  *&__srca[224] = *(a15 + 224);
  *__srca = v104;
  *&__srca[8] = v111;
  *&__srca[16] = v21;
  *&__srca[24] = v113;
  *&__srca[32] = v112;
  *&__srca[40] = v114;
  v50 = *(a15 + 192);
  *&__srca[176] = *(a15 + 176);
  *&__srca[192] = v50;
  *&__srca[208] = *(a15 + 208);
  v51 = *(a15 + 128);
  *&__srca[112] = *(a15 + 112);
  *&__srca[128] = v51;
  v52 = *(a15 + 160);
  *&__srca[144] = *(a15 + 144);
  *&__srca[160] = v52;
  v53 = *(a15 + 64);
  *&__srca[48] = *(a15 + 48);
  *&__srca[64] = v53;
  v54 = *(a15 + 96);
  *&__srca[80] = *(a15 + 80);
  *&__srca[96] = v54;
  *&__srca[232] = v35;
  *&__srca[240] = v36;
  *&__srca[248] = v37;
  *&__srca[256] = v38;
  *&__srca[264] = v39;
  *&__srca[272] = v40;
  *&__srca[280] = v41;
  *&__srca[288] = v42;
  *&__srca[296] = v43;
  *&__srca[304] = v44;
  *&__srca[312] = v45;
  *&__srca[320] = v46;
  *&__srca[328] = v47;
  *&__srca[336] = v48;
  *&__srca[344] = v34;
  *&__srca[352] = v115;
  *&__srca[360] = v22;
  v148 = v23;
  v149 = v24;
  v150 = v25;
  v151 = v27;
  v152 = v26;
  v153 = v31;
  v154 = v32;
  v155 = v33;
  if (sub_24298(__srca) == 1)
  {
    sub_71F30(&v156[3]);
    v66 = 0;
    v67 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v134 = 0;
    v133 = 0;
    v117 = 0;
    v118 = 0;
    v114 = 0;
    v115 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v143 = v156[11];
    v144 = v156[12];
    v145 = v156[13];
    v146 = *&v156[14];
    v139 = v156[7];
    v140 = v156[8];
    v113 = 0x80000000001D5A20;
    v141 = v156[9];
    v142 = v156[10];
    v135 = v156[3];
    v136 = v156[4];
    v61 = 0xD000000000000023;
    v137 = v156[5];
    v138 = v156[6];
    v111 = 0xEB00000000444549;
    v55 = 0x4649434550534E55;
    v112 = _swiftEmptyArrayStorage;
    v56 = v82;
  }

  else
  {
    v143 = *(a15 + 176);
    v144 = *(a15 + 192);
    v145 = *(a15 + 208);
    v146 = *(a15 + 224);
    v139 = *(a15 + 112);
    v140 = *(a15 + 128);
    v141 = *(a15 + 144);
    v142 = *(a15 + 160);
    v135 = *(a15 + 48);
    v136 = *(a15 + 64);
    v137 = *(a15 + 80);
    v138 = *(a15 + 96);
    v56 = v82;
    v66 = v25;
    v67 = v22;
    v63 = v27;
    v64 = v23;
    v61 = v21;
    v62 = v24;
    v65 = v26;
    v55 = v104;
  }

  *a9 = v88;
  if (v73 == 2)
  {
    v57 = 500;
  }

  else
  {
    v57 = v72;
  }

  *(a9 + 8) = v86;
  *(a9 + 9) = v91;
  if (v73 == 2)
  {
    v20 = 86400.0;
  }

  *(a9 + 16) = v16;
  *(a9 + 24) = v84 & 1;
  *(a9 + 25) = v74 & 1;
  if (v75 == 4)
  {
    v58 = 1;
  }

  else
  {
    v58 = v75;
  }

  *(a9 + 32) = v83 | v77;
  *(a9 + 40) = v90 | v80;
  if (a7)
  {
    v59 = a7;
  }

  else
  {
    v59 = &off_2123E8;
  }

  *(a9 + 48) = v81 | v79;
  *(a9 + 56) = v87;
  *(a9 + 64) = v76 | v78;
  *(a9 + 72) = v89;
  *(a9 + 80) = v56;
  memcpy((a9 + 88), v157, 0x16BuLL);
  *(a9 + 456) = v71;
  *(a9 + 464) = v30;
  *(a9 + 472) = v59;
  *(a9 + 480) = v58;
  *(a9 + 512) = v110;
  *(a9 + 520) = v95;
  *(a9 + 536) = v107;
  *(a9 + 544) = v93;
  *(a9 + 552) = v94 & 1;
  *(a9 + 560) = v101;
  *(a9 + 568) = v100;
  *(a9 + 576) = v99;
  *(a9 + 584) = v97;
  *(a9 + 592) = v98;
  *(a9 + 616) = v96;
  *(a9 + 624) = v92 & 1;
  *(a9 + 632) = v108;
  *(a9 + 640) = v106 & 1;
  *(a9 + 641) = v69;
  *(a9 + 648) = v109;
  *(a9 + 656) = v105 & 1;
  *(a9 + 657) = v68;
  *(a9 + 664) = (v73 != 2) & v73;
  *(a9 + 680) = v57;
  *(a9 + 688) = v55;
  *(a9 + 696) = v111;
  *(a9 + 488) = v103;
  *(a9 + 504) = v18;
  *(a9 + 528) = v19;
  *(a9 + 600) = v102;
  *(a9 + 672) = v20;
  *(a9 + 704) = v61;
  *(a9 + 712) = v113;
  *(a9 + 720) = v112;
  *(a9 + 728) = v114;
  *(a9 + 864) = v143;
  *(a9 + 880) = v144;
  *(a9 + 896) = v145;
  *(a9 + 912) = v146;
  *(a9 + 800) = v139;
  *(a9 + 816) = v140;
  *(a9 + 832) = v141;
  *(a9 + 848) = v142;
  *(a9 + 736) = v135;
  *(a9 + 752) = v136;
  result = v137;
  *(a9 + 768) = v137;
  *(a9 + 784) = v138;
  *(a9 + 920) = v132;
  *(a9 + 928) = v131;
  *(a9 + 936) = v130;
  *(a9 + 944) = v129;
  *(a9 + 952) = v128;
  *(a9 + 960) = v127;
  *(a9 + 968) = v126;
  *(a9 + 976) = v125;
  *(a9 + 984) = v124;
  *(a9 + 992) = v123;
  *(a9 + 1000) = v122;
  *(a9 + 1008) = v121;
  *(a9 + 1016) = v120;
  *(a9 + 1024) = v119;
  *(a9 + 1032) = v118;
  *(a9 + 1040) = v115;
  *(a9 + 1048) = v67;
  *(a9 + 1056) = v64;
  *(a9 + 1064) = v62;
  *(a9 + 1072) = v66;
  *(a9 + 1080) = v63;
  *(a9 + 1088) = v65;
  *(a9 + 1096) = v134;
  *(a9 + 1104) = v133;
  *(a9 + 1112) = v117;
  return result;
}

uint64_t Configuration.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_2B0C(&qword_229C60, &qword_1BCF10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v65 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v250 = v2;
  sub_2698(v2, v10);
  sub_71F54();
  sub_1B5864();
  if (!v1)
  {
    v129 = v6;
    v128 = v4;
    LOBYTE(v167) = 0;
    sub_71FA8();
    sub_1B5374();
    v13 = v246;
    v12 = v247;
    v14 = v248;
    v15 = v249;
    LOBYTE(v167) = 1;
    sub_71FFC();
    sub_1B5374();
    v127 = v245;
    LOBYTE(v167) = 2;
    sub_72050();
    sub_1B5374();
    v126 = v15;
    v124 = v13;
    v125 = v12;
    v122 = v240;
    v123 = v241;
    v17 = v242;
    v16 = v243;
    v18 = v244;
    v238[367] = 3;
    sub_720A4();
    sub_1B5374();
    v120 = v17;
    v121 = v18;
    memcpy(v238, v239, 0x16BuLL);
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    LOBYTE(v167) = 4;
    sub_61BC8(&qword_2298B8);
    sub_1B5374();
    v20 = v237;
    LOBYTE(v167) = 5;
    sub_1B5374();
    v119 = v20;
    v21 = v236;
    LOBYTE(v167) = 6;
    sub_1B5374();
    v22 = v235;
    LOBYTE(v167) = 7;
    sub_720F8();
    sub_1B5374();
    LODWORD(v118) = v234;
    LOBYTE(v167) = 8;
    sub_7214C();
    sub_1B5374();
    v113 = v230;
    v114 = v22;
    v112 = v231;
    v23 = v232;
    v115 = v233;
    v116 = v21;
    v223 = 11;
    sub_721A0();
    v117 = v5;
    sub_1B5374();
    v221 = v228;
    *v222 = v229[0];
    *&v222[9] = *(v229 + 9);
    v217 = v224;
    v218 = v225;
    v220 = v227;
    v219 = v226;
    LOBYTE(v167) = 9;
    sub_721F4();
    sub_1B5374();
    v24 = v215;
    v111 = v216;
    LOBYTE(v167) = 10;
    sub_1B5374();
    v25 = v213;
    v26 = v214;
    LOBYTE(v167) = 12;
    sub_72248();
    sub_1B5374();
    v109 = v210;
    v27 = v211;
    v110 = v212;
    v166 = 13;
    sub_7229C();
    sub_1B5374();
    v87 = v167;
    v105 = v168;
    v106 = v169;
    v104 = v171;
    v107 = v172;
    v108 = v170;
    v162 = v181;
    v163 = v182;
    v164 = v183;
    v165 = v184;
    v158 = v177;
    v159 = v178;
    v160 = v179;
    v161 = v180;
    v154 = v173;
    v155 = v174;
    v156 = v175;
    v157 = v176;
    if (v126 == 2)
    {
      v126 = 0;
      v125 = 1;
      v14 = 0x3FE6666666666666;
      v124 = 1000;
      v28 = 1;
    }

    else
    {
      v28 = v125 >> 8;
    }

    v77 = v28;
    if (!v121)
    {
      v121 = 0x80000000001D59C0;
      v123 = xmmword_1BCD70;
      v122 = xmmword_1BCD80;
      v16 = 0xD000000000000056;
      v120 = 258;
    }

    v93 = v186;
    v94 = v185;
    v91 = v188;
    v92 = v187;
    v89 = v190;
    v90 = v189;
    v88 = v191;
    v85 = v193;
    v86 = v192;
    v83 = v195;
    v84 = v194;
    v81 = v197;
    v82 = v196;
    v79 = v199;
    v80 = v198;
    v78 = v200;
    v102 = v202;
    v103 = v201;
    v100 = v204;
    v101 = v203;
    v98 = v206;
    v99 = v205;
    v96 = v208;
    v97 = v207;
    v95 = v209;
    memcpy(v153, v238, 0x16BuLL);
    if (sub_71CAC(v153) == 1)
    {
      sub_71EF4(v142);
      memcpy(v151, v142, 0x16BuLL);
      Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v151, v152);
    }

    else
    {
      memcpy(v152, v238, 0x16BuLL);
    }

    v29 = &off_2126A0;
    if (v119)
    {
      v29 = v119;
    }

    v119 = v29;
    if (!v116)
    {
    }

    v30 = &off_2129C0;
    if (v114)
    {
      v30 = v114;
    }

    v114 = v30;
    v31 = v118;
    if (v118 == 4)
    {
      v31 = 1;
    }

    v76 = v31;
    if (!v115)
    {
      v115 = sub_130448(&off_212B38);
      v23 = 0x3FE999999999999ALL;
      v113 = 2;
      v112 = 2;
    }

    v118 = v218;
    if (v218)
    {
      v32 = *(&v217 + 1);
      v69 = *(&v218 + 1);
      v70 = v217;
      v73 = v220;
      v74 = *(&v219 + 1);
      v71 = v221;
      v72 = *(&v220 + 1);
      v75 = *v222;
      v68 = *&v222[16];
      v33 = v222[24];
      HIDWORD(v66) = v219;
    }

    else
    {
      v74 = sub_130530(&off_212A28);
      v73 = sub_130530(&off_212A58);
      v75 = xmmword_1BCD60;
      v34 = sub_13061C(&off_212AA8);
      HIDWORD(v66) = 0;
      *(&v71 + 1) = &off_212B10;
      v72 = v34;
      *&v71 = &off_212AE8;
      v118 = _swiftEmptyArrayStorage;
      v33 = 1;
      v32 = 2.0;
      v68 = 10;
      v70 = 5;
      v69 = &off_2129F8;
    }

    if (v24)
    {
      v67 = (v111 >> 8) & 1;
    }

    else
    {
      if (qword_228298 != -1)
      {
        swift_once();
      }

      v24 = qword_260BD0;
      v111 = word_260BD8;
      v67 = HIBYTE(word_260BD8);
    }

    v65 = v127 & 1;
    v66 = __PAIR64__(HIDWORD(v66), v126 & 1) & 0x1FFFFFFFFLL;
    v127 = v33 & 1;
    v126 = v111 & 1;
    if (v25)
    {
      v111 = (v26 >> 8) & 1;
    }

    else
    {
      if (qword_2282A0 != -1)
      {
        swift_once();
      }

      LOBYTE(v26) = word_260BE8;
      v111 = HIBYTE(word_260BE8);
      v25 = qword_260BE0;
    }

    v35 = v109;
    LODWORD(v109) = (v109 != 2) & v109;
    *&v142[14] = v165;
    v36 = 500;
    if (v35 != 2)
    {
      v36 = v110;
    }

    v110 = v36;
    *&v142[0] = v87;
    *(&v142[0] + 1) = v105;
    v37 = v26 & 1;
    if (v35 == 2)
    {
      v27 = 86400.0;
    }

    *&v142[1] = v106;
    *(&v142[1] + 1) = v108;
    *&v142[2] = v104;
    *(&v142[2] + 1) = v107;
    v142[11] = v162;
    v142[12] = v163;
    v142[13] = v164;
    v142[7] = v158;
    v142[8] = v159;
    v142[9] = v160;
    v142[10] = v161;
    v142[3] = v154;
    v142[4] = v155;
    v142[5] = v156;
    v142[6] = v157;
    *(&v142[14] + 1) = v94;
    *&v142[15] = v93;
    *(&v142[15] + 1) = v92;
    *&v142[16] = v91;
    *(&v142[16] + 1) = v90;
    *&v142[17] = v89;
    *(&v142[17] + 1) = v88;
    *&v142[18] = v86;
    *(&v142[18] + 1) = v85;
    *&v142[19] = v84;
    *(&v142[19] + 1) = v83;
    *&v142[20] = v82;
    *(&v142[20] + 1) = v81;
    *&v142[21] = v80;
    *(&v142[21] + 1) = v79;
    *&v142[22] = v78;
    *(&v142[22] + 1) = v103;
    v143 = v102;
    v144 = v101;
    v145 = v100;
    v146 = v99;
    v147 = v98;
    v148 = v97;
    v149 = v96;
    v150 = v95;
    if (sub_24298(v142) == 1)
    {
      v38 = sub_71F30(v151);
      v108 = 0x80000000001D5A20;
      (*(v129 + 8))(v9, v117, v38);
      v102 = 0;
      v103 = 0;
      v100 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v94 = 0;
      v95 = 0;
      v107 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v85 = 0;
      v86 = 0;
      v83 = 0;
      v84 = 0;
      v81 = 0;
      v82 = 0;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v138 = v151[8];
      v139 = v151[9];
      v140 = v151[10];
      v141 = *&v151[11];
      v134 = v151[4];
      v135 = v151[5];
      v136 = v151[6];
      v137 = v151[7];
      v130 = v151[0];
      v131 = v151[1];
      v106 = 0xD000000000000023;
      v132 = v151[2];
      v133 = v151[3];
      v105 = 0xEB00000000444549;
      v87 = 0x4649434550534E55;
      v104 = _swiftEmptyArrayStorage;
    }

    else
    {
      (*(v129 + 8))(v9, v117);
      v138 = v162;
      v139 = v163;
      v140 = v164;
      v141 = v165;
      v134 = v158;
      v135 = v159;
      v136 = v160;
      v137 = v161;
      v130 = v154;
      v131 = v155;
      v132 = v156;
      v133 = v157;
    }

    v39 = v128;
    v40 = v125;
    *v128 = v124;
    *(v39 + 8) = v40;
    *(v39 + 9) = v77;
    v39[2] = v14;
    v41 = v65;
    *(v39 + 24) = v66;
    *(v39 + 25) = v41;
    v42 = v123;
    *(v39 + 2) = v122;
    *(v39 + 3) = v42;
    v43 = v121;
    v39[8] = v120;
    v39[9] = v16;
    v39[10] = v43;
    memcpy(v39 + 11, v152, 0x16BuLL);
    v44 = v116;
    v39[57] = v119;
    v39[58] = v44;
    v39[59] = v114;
    *(v39 + 480) = v76;
    v45 = v112;
    v39[61] = v113;
    v39[62] = v45;
    v39[64] = v115;
    v39[65] = v70;
    v39[67] = v118;
    v39[68] = v69;
    *(v39 + 552) = BYTE4(v66);
    v46 = v73;
    v39[70] = v74;
    v39[71] = v46;
    v39[72] = v72;
    v47 = *(&v71 + 1);
    v39[73] = v71;
    v39[74] = v47;
    v39[77] = v68;
    *(v39 + 624) = v127;
    v39[79] = v24;
    *(v39 + 640) = v126;
    *(v39 + 641) = v67;
    v39[81] = v25;
    *(v39 + 656) = v37;
    *(v39 + 657) = v111;
    *(v39 + 664) = v109;
    v39[85] = v110;
    v39[86] = v87;
    *(v39 + 75) = v75;
    v39[63] = v23;
    *(v39 + 66) = v32;
    *(v39 + 84) = v27;
    v48 = v106;
    v39[87] = v105;
    v39[88] = v48;
    v39[89] = v108;
    v39[90] = v104;
    v39[91] = v107;
    v49 = v139;
    *(v39 + 54) = v138;
    *(v39 + 55) = v49;
    *(v39 + 56) = v140;
    v39[114] = v141;
    v50 = v135;
    *(v39 + 50) = v134;
    *(v39 + 51) = v50;
    v51 = v137;
    *(v39 + 52) = v136;
    *(v39 + 53) = v51;
    v52 = v131;
    *(v39 + 46) = v130;
    *(v39 + 47) = v52;
    v53 = v133;
    *(v39 + 48) = v132;
    *(v39 + 49) = v53;
    v54 = v93;
    v39[115] = v94;
    v39[116] = v54;
    v55 = v91;
    v39[117] = v92;
    v39[118] = v55;
    v56 = v89;
    v39[119] = v90;
    v39[120] = v56;
    v39[121] = v88;
    v57 = v85;
    v39[122] = v86;
    v39[123] = v57;
    v58 = v83;
    v39[124] = v84;
    v39[125] = v58;
    v59 = v81;
    v39[126] = v82;
    v39[127] = v59;
    v60 = v79;
    v39[128] = v80;
    v39[129] = v60;
    v39[130] = v78;
    v61 = v102;
    v39[131] = v103;
    v39[132] = v61;
    v62 = v100;
    v39[133] = v101;
    v39[134] = v62;
    v63 = v98;
    v39[135] = v99;
    v39[136] = v63;
    v64 = v96;
    v39[137] = v97;
    v39[138] = v64;
    v39[139] = v95;
  }

  return sub_2BF8(v250);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229CD0, &qword_1BCF28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v43 = *v1;
  v8 = *(v1 + 4);
  v9 = v1[2];
  v41 = *(v1 + 24);
  v42 = v8;
  v40 = *(v1 + 25);
  v10 = *(v1 + 3);
  v65 = *(v1 + 2);
  v66 = v10;
  v67 = *(v1 + 4);
  v68 = v1[10];
  memcpy(v69, v1 + 11, 0x16BuLL);
  v11 = v1[57];
  v38 = v1[58];
  v39 = v11;
  v37 = v1[59];
  v36 = *(v1 + 480);
  v12 = v1[61];
  v34 = v1[62];
  v35 = v12;
  v13 = *(v1 + 69);
  v73 = *(v1 + 71);
  v14 = *(v1 + 75);
  v74 = *(v1 + 73);
  v75[0] = v14;
  *(v75 + 9) = *(v1 + 609);
  v15 = *(v1 + 67);
  v70 = *(v1 + 65);
  v71 = v15;
  v16 = v1[63];
  v17 = v1[64];
  v72 = v13;
  v32 = v1[79];
  v33 = v17;
  LODWORD(v17) = *(v1 + 640);
  v30 = *(v1 + 641);
  v31 = v17;
  v29 = v1[81];
  LODWORD(v17) = *(v1 + 656);
  v27 = *(v1 + 657);
  v28 = v17;
  v26 = *(v1 + 664);
  v18 = v1[84];
  v19 = v1[85];
  memcpy(v76, v1 + 86, 0x1B0uLL);
  v20 = a1[4];
  sub_2698(a1, a1[3]);
  sub_71F54();
  v21 = v7;
  sub_1B5884();
  v46[0] = v43;
  LOWORD(v46[1]) = v42;
  v46[2] = v9;
  LOBYTE(v46[3]) = v41;
  v45[0] = 0;
  sub_722F0();
  v22 = v44;
  sub_1B5544();
  if (v22)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v23 = v39;
  v43 = v19;
  v44 = v4;
  LOBYTE(v46[0]) = v40;
  v45[0] = 1;
  sub_72344();
  sub_1B5544();
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  v60 = 2;
  sub_71DF0(&v65, v46);
  sub_72398();
  sub_1B5544();
  v58[0] = v61;
  v58[1] = v62;
  v58[2] = v63;
  v59 = v64;
  sub_723EC(v58);
  memcpy(v57, v69, sizeof(v57));
  v56[367] = 3;
  sub_71E28(v69, v46);
  sub_7241C();
  sub_1B5544();
  memcpy(v56, v57, 0x16BuLL);
  sub_72470(v56);
  v46[0] = v23;
  v45[0] = 4;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8);
  sub_1B5544();
  v46[0] = v38;
  v45[0] = 5;
  sub_1B5544();
  v46[0] = v37;
  v45[0] = 6;
  sub_1B5544();
  LOBYTE(v46[0]) = v36;
  v45[0] = 7;
  sub_724A0();
  sub_1B5544();
  v46[0] = v35;
  v46[1] = v34;
  v46[2] = v16;
  v46[3] = v33;
  v45[0] = 8;
  sub_724F4();

  sub_1B5544();

  v46[0] = v32;
  LOBYTE(v46[1]) = v31;
  BYTE1(v46[1]) = v30;
  v45[0] = 9;
  sub_72548();

  sub_1B5544();

  v46[0] = v29;
  LOBYTE(v46[1]) = v28;
  BYTE1(v46[1]) = v27;
  v45[0] = 10;

  sub_1B5544();

  v54 = v74;
  v55[0] = v75[0];
  *(v55 + 9) = *(v75 + 9);
  v50 = v70;
  v51 = v71;
  v52 = v72;
  v53 = v73;
  v49 = 11;
  sub_71E60(&v70, v46);
  sub_7259C();
  sub_1B5544();
  v47[3] = v53;
  v47[4] = v54;
  *v48 = v55[0];
  *&v48[9] = *(v55 + 9);
  v47[0] = v50;
  v47[1] = v51;
  v47[2] = v52;
  sub_725F0(v47);
  LOBYTE(v46[0]) = v26;
  v46[1] = v18;
  v46[2] = v43;
  v45[0] = 12;
  sub_72620();
  sub_1B5544();
  memcpy(v46, v76, sizeof(v46));
  v45[439] = 13;
  sub_71E98(v76, v45);
  sub_72674();
  sub_1B5544();
  memcpy(v45, v46, 0x1B0uLL);
  sub_726C8(v45);
  return (*(v44 + 8))(v21, v3);
}

unint64_t sub_711C0()
{
  result = qword_229AA0;
  if (!qword_229AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AA0);
  }

  return result;
}

uint64_t sub_71214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AA8, &qword_1BCE60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_71280()
{
  result = qword_229AD0;
  if (!qword_229AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AD0);
  }

  return result;
}

unint64_t sub_712D4()
{
  result = qword_229AD8;
  if (!qword_229AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AD8);
  }

  return result;
}

unint64_t sub_71328()
{
  result = qword_229AF0;
  if (!qword_229AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AF0);
  }

  return result;
}

uint64_t sub_7137C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AF8, &qword_1BCE80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_713EC()
{
  result = qword_229B10;
  if (!qword_229B10)
  {
    sub_1CC1C(&qword_229B08, &qword_1BCE88);
    sub_71328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B10);
  }

  return result;
}

unint64_t sub_71470()
{
  result = qword_229B20;
  if (!qword_229B20)
  {
    sub_1CC1C(&qword_229B18, &qword_1BCE90);
    sub_714F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B20);
  }

  return result;
}

unint64_t sub_714F4()
{
  result = qword_229B28;
  if (!qword_229B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B28);
  }

  return result;
}

unint64_t sub_71548()
{
  result = qword_229B38;
  if (!qword_229B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B38);
  }

  return result;
}

uint64_t sub_7159C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AE0, &qword_1BCE78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_71620()
{
  result = qword_229B48;
  if (!qword_229B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B48);
  }

  return result;
}

unint64_t sub_71674()
{
  result = qword_229B58;
  if (!qword_229B58)
  {
    sub_1CC1C(&qword_229B08, &qword_1BCE88);
    sub_71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B58);
  }

  return result;
}

unint64_t sub_716F8()
{
  result = qword_229B60;
  if (!qword_229B60)
  {
    sub_1CC1C(&qword_229B18, &qword_1BCE90);
    sub_7177C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B60);
  }

  return result;
}

unint64_t sub_7177C()
{
  result = qword_229B68;
  if (!qword_229B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B68);
  }

  return result;
}

unint64_t sub_717D0()
{
  result = qword_229B78;
  if (!qword_229B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B78);
  }

  return result;
}

unint64_t sub_71824()
{
  result = qword_229B90;
  if (!qword_229B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B90);
  }

  return result;
}

unint64_t sub_71878()
{
  result = qword_229BA8;
  if (!qword_229BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BA8);
  }

  return result;
}

unint64_t sub_718CC()
{
  result = qword_229BC0;
  if (!qword_229BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BC0);
  }

  return result;
}

unint64_t sub_71920()
{
  result = qword_229BD8;
  if (!qword_229BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BD8);
  }

  return result;
}

unint64_t sub_71974()
{
  result = qword_229BE0;
  if (!qword_229BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BE0);
  }

  return result;
}

unint64_t sub_719C8()
{
  result = qword_229BE8;
  if (!qword_229BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BE8);
  }

  return result;
}

unint64_t sub_71A1C()
{
  result = qword_229BF8;
  if (!qword_229BF8)
  {
    sub_1CC1C(&qword_229BF0, &qword_1BCEE8);
    sub_71AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BF8);
  }

  return result;
}

unint64_t sub_71AA0()
{
  result = qword_229C00;
  if (!qword_229C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C00);
  }

  return result;
}

unint64_t sub_71AF4()
{
  result = qword_229C10;
  if (!qword_229C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C10);
  }

  return result;
}

unint64_t sub_71B48()
{
  result = qword_229C18;
  if (!qword_229C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C18);
  }

  return result;
}

unint64_t sub_71B9C()
{
  result = qword_229C28;
  if (!qword_229C28)
  {
    sub_1CC1C(&qword_229C20, &qword_1BCEF8);
    sub_71C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C28);
  }

  return result;
}

unint64_t sub_71C20()
{
  result = qword_229C30;
  if (!qword_229C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C30);
  }

  return result;
}

uint64_t sub_71CAC(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_71CC4()
{
  result = qword_229C40;
  if (!qword_229C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C40);
  }

  return result;
}

unint64_t sub_71D18()
{
  result = qword_229C48;
  if (!qword_229C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C48);
  }

  return result;
}

unint64_t sub_71D6C()
{
  result = qword_229C58;
  if (!qword_229C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C58);
  }

  return result;
}

double sub_71EF4(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 347) = 0u;
  return result;
}

double sub_71F30(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_71F54()
{
  result = qword_229C68;
  if (!qword_229C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C68);
  }

  return result;
}

unint64_t sub_71FA8()
{
  result = qword_229C70;
  if (!qword_229C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C70);
  }

  return result;
}

unint64_t sub_71FFC()
{
  result = qword_229C78;
  if (!qword_229C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C78);
  }

  return result;
}

unint64_t sub_72050()
{
  result = qword_229C80;
  if (!qword_229C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C80);
  }

  return result;
}

unint64_t sub_720A4()
{
  result = qword_229C88;
  if (!qword_229C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C88);
  }

  return result;
}

unint64_t sub_720F8()
{
  result = qword_229C98;
  if (!qword_229C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C98);
  }

  return result;
}

unint64_t sub_7214C()
{
  result = qword_229CA0;
  if (!qword_229CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CA0);
  }

  return result;
}

unint64_t sub_721A0()
{
  result = qword_229CA8;
  if (!qword_229CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CA8);
  }

  return result;
}

unint64_t sub_721F4()
{
  result = qword_229CB0;
  if (!qword_229CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CB0);
  }

  return result;
}

unint64_t sub_72248()
{
  result = qword_229CC0;
  if (!qword_229CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CC0);
  }

  return result;
}

unint64_t sub_7229C()
{
  result = qword_229CC8;
  if (!qword_229CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CC8);
  }

  return result;
}

unint64_t sub_722F0()
{
  result = qword_229CD8;
  if (!qword_229CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CD8);
  }

  return result;
}

unint64_t sub_72344()
{
  result = qword_229CE0;
  if (!qword_229CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CE0);
  }

  return result;
}

unint64_t sub_72398()
{
  result = qword_229CE8;
  if (!qword_229CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CE8);
  }

  return result;
}

unint64_t sub_7241C()
{
  result = qword_229CF0;
  if (!qword_229CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CF0);
  }

  return result;
}

unint64_t sub_724A0()
{
  result = qword_229CF8;
  if (!qword_229CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CF8);
  }

  return result;
}

unint64_t sub_724F4()
{
  result = qword_229D00;
  if (!qword_229D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D00);
  }

  return result;
}

unint64_t sub_72548()
{
  result = qword_229D08;
  if (!qword_229D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D08);
  }

  return result;
}

unint64_t sub_7259C()
{
  result = qword_229D10;
  if (!qword_229D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D10);
  }

  return result;
}

unint64_t sub_72620()
{
  result = qword_229D18;
  if (!qword_229D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D18);
  }

  return result;
}

unint64_t sub_72674()
{
  result = qword_229D20;
  if (!qword_229D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D20);
  }

  return result;
}

unint64_t sub_72720()
{
  result = qword_229D28;
  if (!qword_229D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D28);
  }

  return result;
}

unint64_t sub_72778()
{
  result = qword_229D30;
  if (!qword_229D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D30);
  }

  return result;
}

unint64_t sub_727D0()
{
  result = qword_229D38;
  if (!qword_229D38)
  {
    sub_1CC1C(&qword_229D40, &qword_1BD160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D38);
  }

  return result;
}

unint64_t sub_72838()
{
  result = qword_229D48;
  if (!qword_229D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D48);
  }

  return result;
}

unint64_t sub_72890()
{
  result = qword_229D50;
  if (!qword_229D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D50);
  }

  return result;
}

unint64_t sub_728E8()
{
  result = qword_229D58;
  if (!qword_229D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D58);
  }

  return result;
}

unint64_t sub_72940()
{
  result = qword_229D60;
  if (!qword_229D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D60);
  }

  return result;
}

unint64_t sub_72998()
{
  result = qword_229D68;
  if (!qword_229D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D68);
  }

  return result;
}

unint64_t sub_729F0()
{
  result = qword_229D70;
  if (!qword_229D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D70);
  }

  return result;
}

uint64_t sub_72A44(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_72ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1112) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1120) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 1120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_72C54(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_72C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_72CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_72D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_72D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_72DEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_72E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 16))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_72FA0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_73034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_73114(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_73140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_73188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.PersonalizationMetadataServiceConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.PersonalizationMetadataServiceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Series.Metadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_73368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 363))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 328);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_733B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 362) = 0;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 363) = 1;
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
      *(result + 328) = (a2 - 1);
      return result;
    }

    *(result + 363) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_73468(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_73488(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_734C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_734E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionRecommendationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectionRecommendationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_73938()
{
  result = qword_229D78;
  if (!qword_229D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D78);
  }

  return result;
}

unint64_t sub_73990()
{
  result = qword_229D80;
  if (!qword_229D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D80);
  }

  return result;
}

unint64_t sub_739E8()
{
  result = qword_229D88;
  if (!qword_229D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D88);
  }

  return result;
}

unint64_t sub_73A40()
{
  result = qword_229D90;
  if (!qword_229D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D90);
  }

  return result;
}

unint64_t sub_73A98()
{
  result = qword_229D98;
  if (!qword_229D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D98);
  }

  return result;
}

unint64_t sub_73AF0()
{
  result = qword_229DA0;
  if (!qword_229DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DA0);
  }

  return result;
}

unint64_t sub_73B48()
{
  result = qword_229DA8;
  if (!qword_229DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DA8);
  }

  return result;
}

unint64_t sub_73BA0()
{
  result = qword_229DB0;
  if (!qword_229DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DB0);
  }

  return result;
}

unint64_t sub_73BF8()
{
  result = qword_229DB8;
  if (!qword_229DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DB8);
  }

  return result;
}

unint64_t sub_73C50()
{
  result = qword_229DC0;
  if (!qword_229DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DC0);
  }

  return result;
}

unint64_t sub_73CA8()
{
  result = qword_229DC8;
  if (!qword_229DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DC8);
  }

  return result;
}

unint64_t sub_73D00()
{
  result = qword_229DD0;
  if (!qword_229DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DD0);
  }

  return result;
}

unint64_t sub_73D58()
{
  result = qword_229DD8;
  if (!qword_229DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DD8);
  }

  return result;
}

unint64_t sub_73DB0()
{
  result = qword_229DE0;
  if (!qword_229DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DE0);
  }

  return result;
}

unint64_t sub_73E08()
{
  result = qword_229DE8;
  if (!qword_229DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DE8);
  }

  return result;
}

unint64_t sub_73E60()
{
  result = qword_229DF0;
  if (!qword_229DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DF0);
  }

  return result;
}

unint64_t sub_73EB8()
{
  result = qword_229DF8;
  if (!qword_229DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DF8);
  }

  return result;
}

unint64_t sub_73F10()
{
  result = qword_229E00;
  if (!qword_229E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E00);
  }

  return result;
}

unint64_t sub_73F68()
{
  result = qword_229E08;
  if (!qword_229E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E08);
  }

  return result;
}

unint64_t sub_73FC0()
{
  result = qword_229E10;
  if (!qword_229E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E10);
  }

  return result;
}

unint64_t sub_74018()
{
  result = qword_229E18;
  if (!qword_229E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E18);
  }

  return result;
}

unint64_t sub_74070()
{
  result = qword_229E20;
  if (!qword_229E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E20);
  }

  return result;
}

unint64_t sub_740C8()
{
  result = qword_229E28;
  if (!qword_229E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E28);
  }

  return result;
}

unint64_t sub_74120()
{
  result = qword_229E30;
  if (!qword_229E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E30);
  }

  return result;
}

unint64_t sub_74178()
{
  result = qword_229E38;
  if (!qword_229E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E38);
  }

  return result;
}

unint64_t sub_741D0()
{
  result = qword_229E40;
  if (!qword_229E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E40);
  }

  return result;
}

unint64_t sub_74228()
{
  result = qword_229E48;
  if (!qword_229E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E48);
  }

  return result;
}

unint64_t sub_74280()
{
  result = qword_229E50;
  if (!qword_229E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E50);
  }

  return result;
}

unint64_t sub_742D8()
{
  result = qword_229E58;
  if (!qword_229E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E58);
  }

  return result;
}

unint64_t sub_74330()
{
  result = qword_229E60;
  if (!qword_229E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E60);
  }

  return result;
}

unint64_t sub_74388()
{
  result = qword_229E68;
  if (!qword_229E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E68);
  }

  return result;
}

unint64_t sub_743E0()
{
  result = qword_229E70;
  if (!qword_229E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E70);
  }

  return result;
}

unint64_t sub_74438()
{
  result = qword_229E78;
  if (!qword_229E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E78);
  }

  return result;
}

unint64_t sub_74490()
{
  result = qword_229E80;
  if (!qword_229E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E80);
  }

  return result;
}

unint64_t sub_744E8()
{
  result = qword_229E88;
  if (!qword_229E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E88);
  }

  return result;
}

unint64_t sub_74540()
{
  result = qword_229E90;
  if (!qword_229E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E90);
  }

  return result;
}

unint64_t sub_74598()
{
  result = qword_229E98;
  if (!qword_229E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E98);
  }

  return result;
}

unint64_t sub_745F0()
{
  result = qword_229EA0;
  if (!qword_229EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EA0);
  }

  return result;
}

unint64_t sub_74648()
{
  result = qword_229EA8;
  if (!qword_229EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EA8);
  }

  return result;
}

unint64_t sub_746A0()
{
  result = qword_229EB0;
  if (!qword_229EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EB0);
  }

  return result;
}

unint64_t sub_746F8()
{
  result = qword_229EB8;
  if (!qword_229EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EB8);
  }

  return result;
}

unint64_t sub_74750()
{
  result = qword_229EC0;
  if (!qword_229EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EC0);
  }

  return result;
}

unint64_t sub_747A8()
{
  result = qword_229EC8;
  if (!qword_229EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EC8);
  }

  return result;
}

unint64_t sub_74800()
{
  result = qword_229ED0;
  if (!qword_229ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229ED0);
  }

  return result;
}

unint64_t sub_74858()
{
  result = qword_229ED8;
  if (!qword_229ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229ED8);
  }

  return result;
}

unint64_t sub_748B0()
{
  result = qword_229EE0;
  if (!qword_229EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EE0);
  }

  return result;
}

unint64_t sub_74908()
{
  result = qword_229EE8;
  if (!qword_229EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EE8);
  }

  return result;
}

unint64_t sub_74960()
{
  result = qword_229EF0;
  if (!qword_229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EF0);
  }

  return result;
}

unint64_t sub_749B8()
{
  result = qword_229EF8;
  if (!qword_229EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EF8);
  }

  return result;
}

unint64_t sub_74A10()
{
  result = qword_229F00;
  if (!qword_229F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F00);
  }

  return result;
}

unint64_t sub_74A68()
{
  result = qword_229F08;
  if (!qword_229F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F08);
  }

  return result;
}

unint64_t sub_74AC0()
{
  result = qword_229F10;
  if (!qword_229F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F10);
  }

  return result;
}

unint64_t sub_74B18()
{
  result = qword_229F18;
  if (!qword_229F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F18);
  }

  return result;
}

unint64_t sub_74B70()
{
  result = qword_229F20;
  if (!qword_229F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F20);
  }

  return result;
}

unint64_t sub_74BC8()
{
  result = qword_229F28;
  if (!qword_229F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F28);
  }

  return result;
}

unint64_t sub_74C20()
{
  result = qword_229F30;
  if (!qword_229F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F30);
  }

  return result;
}

unint64_t sub_74C78()
{
  result = qword_229F38;
  if (!qword_229F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F38);
  }

  return result;
}

unint64_t sub_74CD0()
{
  result = qword_229F40;
  if (!qword_229F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F40);
  }

  return result;
}

unint64_t sub_74D28()
{
  result = qword_229F48;
  if (!qword_229F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F48);
  }

  return result;
}

unint64_t sub_74D80()
{
  result = qword_229F50;
  if (!qword_229F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F50);
  }

  return result;
}

unint64_t sub_74DD8()
{
  result = qword_229F58;
  if (!qword_229F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F58);
  }

  return result;
}

unint64_t sub_74E30()
{
  result = qword_229F60;
  if (!qword_229F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F60);
  }

  return result;
}

unint64_t sub_74E88()
{
  result = qword_229F68;
  if (!qword_229F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F68);
  }

  return result;
}

uint64_t sub_74EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73444965726E6567 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D5A50 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D5A70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_75004(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211210;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_75050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000000001D5A90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_7516C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211390;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_751B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000025 && 0x80000000001D5AD0 == a2;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5B00 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D5B30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D5B50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_75320(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_2115B0;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7536C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000000001D5B70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D5BA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_75490(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000000001D5BC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5BE0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616552796C6C7566 && a2 == 0xEE0074736F6F4264 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_7560C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656E696C636564 && a2 == 0xEE00746867696557;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5C00 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000001D5C30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D5C50 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000001D5C70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D5CA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_75810()
{
  v0 = sub_1B5754();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_75864(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211ED8;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_758B0()
{
  result = qword_229F70;
  if (!qword_229F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F70);
  }

  return result;
}

unint64_t sub_75904()
{
  result = qword_229F78;
  if (!qword_229F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F78);
  }

  return result;
}

unint64_t sub_75958()
{
  result = qword_229F80;
  if (!qword_229F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F80);
  }

  return result;
}

unint64_t sub_759AC()
{
  result = qword_229F88;
  if (!qword_229F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F88);
  }

  return result;
}

unint64_t sub_75A00()
{
  result = qword_229F90;
  if (!qword_229F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F90);
  }

  return result;
}

unint64_t sub_75A54()
{
  result = qword_229F98;
  if (!qword_229F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F98);
  }

  return result;
}

unint64_t sub_75AA8()
{
  result = qword_229FA0;
  if (!qword_229FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229FA0);
  }

  return result;
}

void *sub_75B5C(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_3747C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
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
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B3D84();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B3DA4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B3D84();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B3DA4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BCA80;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1B47F4();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_3747C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_75ED8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260BF0 = result;
  return result;
}

uint64_t sub_75F44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_1B4B34();
  *(v7 + 16) = 32;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v36 = v7;
  sub_4161C(a1, a2);
  sub_764A4(a1, a2, a1, a2, &v36);
  v8 = sub_76774(v36 + 32, *(v36 + 2));
  v10 = v9;
  if (qword_2282A8 != -1)
  {
    swift_once();
  }

  sub_1B4D84();
  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BCA80;
  v38 = sub_75B5C(v8, v10);
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_76824();
  v12 = sub_1B4764();
  v14 = v13;

  *(v11 + 56) = &type metadata for String;
  v15 = sub_76888();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1B4614();

  v16 = v4[5];
  v17 = v4[6];
  sub_2698(v4 + 2, v16);
  v18 = (*(v17 + 8))(v8, v10, v16, v17);
  if (v3)
  {
    sub_41670(v8, v10);

    v20 = sub_1B4D94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BCA80;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = v3;
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B51F4();
    v22 = v36;
    v23 = v37;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v15;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    sub_1B4614();

    swift_willThrow();
  }

  else
  {
    v34 = v8;
    v35 = v10;
    v24 = v18;
    v25 = v19;
    sub_1B4D84();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BCA80;
    v38 = sub_75B5C(v24, v25);
    v27 = sub_1B4764();
    v29 = v28;

    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v15;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_1B4614();

    v20 = sub_1B3F84(0);
    v31 = v30;
    sub_1B4D84();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BCA80;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v15;
    *(v32 + 32) = v20;
    *(v32 + 40) = v31;

    sub_1B4614();

    sub_41670(v24, v25);
    sub_41670(v34, v35);
  }

  return v20;
}

unsigned __int8 *sub_763A8(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_335A8(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_764A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1B3D84();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1B3DA4();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1B3D94();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1B3D84();
  if (v13)
  {
    v14 = sub_1B3DA4();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1B3D94();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_763A8(v9, v8, a3, a4, a5);
  return sub_41670(v6, v5);
}

uint64_t sub_766BC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_76774(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_766BC(a1, &a1[a2]);
  }

  v3 = sub_1B3DB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B3D74();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B3F64();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_76824()
{
  result = qword_229000;
  if (!qword_229000)
  {
    sub_1CC1C(&qword_228590, &qword_1B6590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229000);
  }

  return result;
}

unint64_t sub_76888()
{
  result = qword_22A050;
  if (!qword_22A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A050);
  }

  return result;
}

unint64_t sub_768DC()
{
  result = qword_22A058;
  if (!qword_22A058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22A058);
  }

  return result;
}

uint64_t sub_76928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  v4 = type metadata accessor for DelegatingMediaTypesRecommendationService();
  result = sub_1B4254();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &off_21F270;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7699C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for SingleJointMediaTypeRecommendationService();
    v6 = swift_allocObject();
    result = sub_264B8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_220E30;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_76A48()
{
  v0 = type metadata accessor for DelegatingMediaTypesRecommendationService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  sub_2B0C(&qword_22A118, &qword_1BFD00);
  sub_1B4834();
  sub_1B4634();
  return v3;
}

uint64_t sub_76B1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_2B0C(&qword_22A108, &qword_1BFCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = 0;
  *(inited + 40) = sub_9EABC(a1);
  *(inited + 48) = 1;
  *(inited + 56) = sub_9EABC(a2);
  v7 = sub_130644(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22A110, &qword_1BFCF8);
  swift_arrayDestroy();
  v8 = type metadata accessor for HardcodedMediaTypesRecommendationService();
  result = swift_allocObject();
  *(result + 16) = v7;
  a3[3] = v8;
  a3[4] = &off_21A998;
  *a3 = result;
  return result;
}

uint64_t sub_76C14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v8)
  {
    v5 = type metadata accessor for InterestBasedMediaTypesRecommendationService();
    v6 = swift_allocObject();
    result = sub_264B8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_21C740;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_76CC0(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_212D18 + v4++ + 32);
    v8 = a2[4];
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v25)
    {
      break;
    }

    sub_264B8(&v24, v26);
    swift_beginAccess();
    sub_404C4(v26, &v24);
    v9 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 16);
    v12 = sub_3A8DC(v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_17EDE8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_3A8DC(v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v20 = v11;
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_185F1C();
    v12 = v23;
    v20 = v11;
    if (v18)
    {
LABEL_2:
      v5 = (v20[7] + 40 * v12);
      sub_2BF8(v5);
      sub_264B8(&v24, v5);
      goto LABEL_3;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v7;
    sub_264B8(&v24, v20[7] + 40 * v12);
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v22;
LABEL_3:
    *(a1 + 16) = v20;
    swift_endAccess();
    result = sub_2BF8(v26);
    if (v4 == 4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_76F94(uint64_t a1)
{
  v2 = sub_1B4274();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v26 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B4344();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4284();
  v10 = sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  sub_1B4304();

  v11 = enum case for Scope.singleton(_:);
  v12 = v6[13];
  v12(v9, enum case for Scope.singleton(_:), v5);
  v29 = v12;
  sub_1B4214();

  v23 = v6[1];
  v23(v9, v5);
  sub_1B4284();
  v24 = v10;
  sub_1B4304();

  v12(v9, v11, v5);
  sub_1B4214();

  v13 = v23;
  v23(v9, v5);
  v22 = a1;
  sub_1B4284();
  v25 = type metadata accessor for DelegatingMediaTypesRecommendationService();
  sub_1B42F4();

  v21 = v11;
  v14 = v29;
  v29(v9, v11, v5);
  sub_1B4214();

  v13(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v14(v9, v11, v5);
  sub_1B4214();

  v13(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v15 = v21;
  v29(v9, v21, v5);
  sub_1B4214();

  v13(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v29(v9, v15, v5);
  sub_1B4214();

  v13(v9, v5);
  sub_1B42A4();
  sub_2698(v30, v30[3]);
  v17 = v26;
  v16 = v27;
  v18 = v28;
  (*(v27 + 104))(v26, enum case for CallbackScope.any(_:), v28);
  sub_1B4314();
  (*(v16 + 8))(v17, v18);
  return sub_2BF8(v30);
}

uint64_t Array.split(maxSubsequenceSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v17[7] = 0;
    v18 = sub_1B4B54();
    v19 = a1;
    __chkstk_darwin(v18);
    v17[2] = a3;
    v17[3] = a1;
    v17[4] = a2;
    v6 = sub_2B0C(&qword_22A120, &qword_1BFD08);
    v7 = sub_1B4F54();
    v8 = sub_77780();
    return sub_15767C(sub_7775C, v17, v6, v7, &type metadata for Never, v8, &protocol witness table for Never, v9);
  }

  else
  {
    sub_1B4F54();
    sub_1B55A4();
    swift_allocObject();
    v11 = sub_1B4AF4();
    v13 = v12;
    *v12 = sub_1B4F44();
    v13[1] = v14;
    v13[2] = v15;
    v13[3] = v16;
    sub_1B4B94();
    return v11;
  }
}

uint64_t *sub_776D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1B4B54();
    if (result >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if (v6 >= v3)
    {
      result = sub_1B4BB4();
      *a3 = result;
      a3[1] = v7;
      a3[2] = v8;
      a3[3] = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_7775C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_776D4(a1, v2[3], a2);
}

unint64_t sub_77780()
{
  result = qword_22A128;
  if (!qword_22A128)
  {
    sub_1CC1C(&qword_22A120, &qword_1BFD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A128);
  }

  return result;
}

uint64_t Array.compactMapped<A>(by:)()
{
  sub_1B4B94();
  sub_1B4664();
  sub_1B4724();
  swift_getWitnessTable();
  sub_1B49F4();
  return v1;
}

unint64_t sub_778D0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a4;
  v54 = a7;
  v51 = a1;
  v52 = a5;
  v49 = *(a5 - 8);
  v10 = *(v49 + 8);
  __chkstk_darwin(a1);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4EA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v48 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v50 = a2;
  a3(a2);
  if ((*(v19 + 48))(v18, 1, a6) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  v47 = v19;
  (*(v19 + 32))(v24, v18, a6);
  v26 = swift_allocObject();
  v27 = v52;
  v26[2] = v52;
  v26[3] = a6;
  v28 = v54;
  v26[4] = v54;
  v29 = *(v49 + 2);
  v49 = v12;
  v29(v12, v50, v27);
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = a6;
  v30[4] = v28;
  v30[5] = sub_7A01C;
  v30[6] = v26;
  v31 = v51;
  v32 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v31;
  v34 = v55;
  v50 = v24;
  result = sub_15B790(v24, a6, v28);
  v53 = result;
  v36 = *(v34 + 16);
  v37 = (v35 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
  }

  else
  {
    v39 = v35;
    sub_1B4B94();
    sub_1B5224();
    v40 = sub_1B5204(isUniquelyReferenced_nonNull_native, v38);
    v41 = v55;
    if (v40)
    {
      v53 = sub_15B790(v50, a6, v54);
      if ((v39 & 1) != (v42 & 1))
      {
        sub_1B5784();
        __break(1u);
      }
    }

    *v31 = v41;
    v43 = v50;
    if ((v39 & 1) == 0)
    {
      v44 = v30[6];
      v55 = (v30[5])(v49);
      (*(v47 + 16))(v48, v43, a6);
      sub_1B5214();
    }

    v45 = *(v41 + 56) + 8 * v53;
    sub_1B4B64();
    (*(v47 + 8))(v43, a6);
  }

  return result;
}

uint64_t Array.compactMapAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_77D2C, 0, 0);
}

uint64_t sub_77D2C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  swift_getTupleTypeMetadata2();
  v4 = sub_1B4EA4();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  v7 = sub_1B4B94();
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_77E6C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v4, v7, 0, 0, &unk_1BFD20, v5, v4);
}

uint64_t sub_77E6C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_77F84, 0, 0);
}

uint64_t sub_77FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[18] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v7[19] = v10;
  v11 = *(v10 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v12 = sub_1B4EA4();
  v7[23] = v12;
  v13 = *(v12 - 8);
  v7[24] = v13;
  v14 = *(v13 + 64) + 15;
  v7[25] = swift_task_alloc();
  v15 = *(a6 - 8);
  v7[26] = v15;
  v7[27] = *(v15 + 64);
  v7[28] = swift_task_alloc();
  v16 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v17 = *(*(sub_1B4EA4() - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v18 = sub_1B4C24();
  v7[31] = v18;
  v19 = *(v18 - 8);
  v7[32] = v19;
  v20 = *(v19 + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_getTupleTypeMetadata2();
  v21 = sub_1B4EA4();
  v7[35] = v21;
  v22 = *(v21 - 8);
  v7[36] = v22;
  v23 = *(v22 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return _swift_task_switch(sub_782C4, 0, 0);
}

uint64_t sub_782C4()
{
  v1 = v0[36];
  v2 = v0[34];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[16];
  v0[6] = v0[13];
  sub_1B4B94();
  swift_getWitnessTable();
  sub_1B49D4();
  v0[7] = v0[5];
  sub_1B5274();
  sub_1B5244();
  v34 = v4;
  v35 = v2;
  v36 = v2 - 8;
  v37 = (v1 + 32);
  v33 = v3 + 7;
  sub_1B5264();
  while (1)
  {
    v7 = v0[37];
    v6 = v0[38];
    v9 = v0[34];
    v8 = v0[35];
    sub_1B5254();
    (*v37)(v6, v7, v8);
    v10 = (*(*v36 + 48))(v6, 1, v9);
    v11 = v0[23];
    v12 = v0[12];
    if (v10 == 1)
    {
      break;
    }

    v13 = v0[38];
    v15 = v0[28];
    v14 = v0[29];
    v16 = v0[15];
    v38 = v0[14];
    v39 = v14;
    v40 = *v13;
    v17 = *(v35 + 48);
    v18 = sub_1B4C54();
    v41 = *(v0 + 8);
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = *(v34 + 32);
    v19(v15, &v13[v17], v41);
    v20 = (*(v34 + 80) + 64) & ~*(v34 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v41;
    *(v21 + 48) = v38;
    *(v21 + 56) = v16;
    v19((v21 + v20), v15, v41);
    *(v21 + ((v33 + v20) & 0xFFFFFFFFFFFFFFF8)) = v40;
    v22 = sub_1B4C34();

    sub_790C0(v39, &unk_1BFD30, v21, v22);
    sub_79E34(v39);
  }

  v23 = v0[33];
  v24 = v0[18];
  v25 = v0[2];

  v0[8] = sub_1B4674();
  v26 = *v12;
  sub_1B4C04();
  v27 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v0[39] = v28;
  *v28 = v0;
  v28[1] = sub_78630;
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[31];

  return TaskGroup.Iterator.next(isolation:)(v30, 0, 0, v31);
}

uint64_t sub_78630()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_7872C, 0, 0);
}

uint64_t sub_7872C()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v35 = v0[38];
    v36 = v0[37];
    v4 = v0[31];
    v37 = v0[29];
    v38 = v0[28];
    v5 = v0[25];
    v39 = v0[22];
    v40 = v0[21];
    v41 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];
    v33 = v0[11];
    v34 = v0[33];
    (*(v0[32] + 8))();
    v0[9] = v0[8];
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_1B4B94();

    swift_getWitnessTable();
    v11 = sub_1B4A04();

    v0[10] = v11;
    v12 = swift_task_alloc();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    WitnessTable = swift_getWitnessTable();
    v15 = sub_FDC10(sub_79C00, v12, v10, v7, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

    *v33 = v15;

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[25];
    v19 = v0[18];
    v20 = v0[19];
    (*(v3 + 32))(v18, v1, v2);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      v22 = v0[21];
      v21 = v0[22];
      v24 = v0[19];
      v23 = v0[20];
      v26 = v0[17];
      v25 = v0[18];
      (*(v24 + 32))(v21, v0[25], v25);
      (*(v24 + 16))(v22, v21, v25);
      v27 = *(v25 + 48);
      *v23 = *v22;
      (*(*(v26 - 8) + 32))(&v23[v27], &v22[v27], v26);
      sub_1B4B94();
      sub_1B4B64();
      (*(v24 + 8))(v21, v25);
    }

    v28 = *(&async function pointer to TaskGroup.Iterator.next(isolation:) + 1);
    v29 = swift_task_alloc();
    v0[39] = v29;
    *v29 = v0;
    v29[1] = sub_78630;
    v30 = v0[33];
    v31 = v0[30];
    v32 = v0[31];

    return TaskGroup.Iterator.next(isolation:)(v31, 0, 0, v32);
  }
}

uint64_t sub_78B24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v21;
  v7[2] = a1;
  v10 = sub_1B4EA4();
  v7[5] = v10;
  v11 = *(v10 - 8);
  v7[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[7] = v13;
  v14 = *(v21 - 8);
  v7[8] = v14;
  v15 = *(v14 + 64) + 15;
  v7[9] = swift_task_alloc();
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[10] = v17;
  *v17 = v7;
  v17[1] = sub_78CF4;

  return v19(v13, a6);
}

uint64_t sub_78CF4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_78FC4;
  }

  else
  {
    v3 = sub_78E0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_78E0C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[2];
  if (v4 == 1)
  {
    (*(v0[6] + 8))(v1, v0[5]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v5, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[3];
    v9 = *(v2 + 32);
    v9(v7, v1, v3);
    v10 = swift_getTupleTypeMetadata2();
    v11 = *(v10 + 48);
    *v5 = v8;
    v9(&v5[v11], v7, v3);
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  v12 = v0[9];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_78FC4()
{
  (*(v0[8] + 56))(v0[7], 1, 1, v0[4]);
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v2, 1, 1, TupleTypeMetadata2);
  v4 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_790C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  sub_79E9C(a1, v24 - v12);
  v14 = sub_1B4C54();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_79E34(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1B4BC4();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t sub_792C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t Array.permutations()()
{
  sub_1B4B94();
  sub_1B55A4();
  swift_allocObject();

  v0 = sub_1B4AF4();
  v2 = v1;

  swift_getWitnessTable();
  *v2 = sub_1B4BA4();
  sub_1B4B94();
  v3 = v0;
  v12 = v0;
  result = sub_1B4B54();
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (result)
  {
    v5 = result;
    v6 = sub_1B4B34();
    v6[2] = v5;
    bzero(v6 + 4, 8 * v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  result = sub_1B4B54();
  if (result >= 1)
  {
    v7 = 0;
    v8 = v6 + 4;
    while (v7 < v6[2])
    {
      if (v8[v7] >= v7)
      {
        v8[v7++] = 0;
      }

      else
      {
        swift_getWitnessTable();
        sub_1B4774();

        sub_1B4BA4();
        result = sub_1B4B64();
        if (v7 >= v6[2])
        {
          goto LABEL_18;
        }

        v9 = v8[v7];
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          goto LABEL_19;
        }

        v8[v7] = v11;
        v7 = 0;
      }

      result = sub_1B4B54();
      if (v7 >= result)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return v3;
}

uint64_t Array.truncate(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B4B54() <= a1)
  {
  }

  else
  {
    sub_1B4B94();
    swift_getWitnessTable();
    sub_1B4A24();
    swift_getWitnessTable();
    sub_1B4D34();
    sub_1B4F54();
    swift_getWitnessTable();
    return sub_1B4BA4();
  }

  return a2;
}

uint64_t Array.conform(repeating:inLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Array.truncate(_:)(a2, a3);
  result = sub_1B4B54();
  if (result == a2)
  {
    return v7;
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    sub_79AE8(a1, a2 - result, a4);
    v9 = sub_1B4B14();

    return v9;
  }

  return result;
}

uint64_t sub_797FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_798F4;

  return v7(a1);
}

uint64_t sub_798F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_79A10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_7A038;

  return sub_77FA0(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_79AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4B24();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1B4B94();
    return v8;
  }

  return result;
}

uint64_t sub_79C20()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_79CF0(uint64_t a1)
{
  v3 = v1[5];
  v4 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(v1 + ((*(*(v1[4] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226C;

  return sub_78B24(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_79E34(uint64_t a1)
{
  v2 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_79E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_79F0C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}