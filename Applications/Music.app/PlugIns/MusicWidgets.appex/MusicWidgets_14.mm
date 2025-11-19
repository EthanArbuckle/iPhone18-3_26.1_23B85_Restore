uint64_t sub_10018A330()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = v1[1];
  v19 = *v1;
  v8 = v1[2];
  v7 = v1[3];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000CC8C(v1 + v9[6], v5, &qword_1006E5D10);
  v10 = *(v1 + v9[7]);
  v11 = (v1 + v9[10]);
  v12 = v11[1];
  v20 = *v11;
  v13 = type metadata accessor for MetricsPageProperties();
  v14 = v13[6];
  v15 = sub_10056C8A8();
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = &a1[v13[8]];
  *a1 = v19;
  *(a1 + 1) = v6;
  *(a1 + 2) = v8;
  *(a1 + 3) = v7;

  result = sub_1001940B4(v5, &a1[v14]);
  *&a1[v16] = v10;
  *v17 = v20;
  *(v17 + 1) = v12;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100683508;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  return v4 != 0;
}

Swift::Int sub_10018A658()
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

Swift::Int sub_10018A6C4()
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10018A714@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100683540;
  v7._object = v3;
  v5 = sub_100574238(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100019B40(a5, a9 + v29[7], &qword_1006E5D10);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = sub_100019B40(a17, a9 + v29[14], &qword_1006E5D10);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties();
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  sub_10000CC8C(a13 + v21, a9 + v22[14], &qword_1006E5D10);
  v23 = *(a13 + *(v20 + 28));

  sub_100194124(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100019B40(a5, a9 + v22[7], &qword_1006E5D10);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10018B404(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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
    v12 = sub_100574498();
  }

  return v12 & 1;
}

Swift::Int sub_10018B4B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_100574678();
  a3(v5);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018B534(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1005729F8();
}

Swift::Int sub_10018B5A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_100574678();
  a4(v6);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018B60C@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10018B63C@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        sub_100574688(v3);
        return;
    }
  }

  sub_100574688(0xAuLL);

  sub_1005729F8();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_100574678();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return sub_1005746C8();
}

Swift::Int sub_10018B7F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100574678();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1005746C8();
}

Swift::Int sub_10018B848()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100574678();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1005746C8();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      sub_100009DCC(&unk_1006EB080);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B510;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_1000DCFE4(v4, a2, a3, a4, 2);
      v4 = sub_1000F362C(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_1000F362C(&off_100682C90);
      v7 = &unk_100682CB0;
    }

LABEL_10:
    sub_10001036C(v7, &qword_1006E7DD0);
    return v4;
  }

  if (!BYTE1(a4))
  {
    sub_100009DCC(&unk_1006EB080);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_10057B510;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_1000F362C(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_1000F362C(&off_100682C30);
    sub_100009DCC(&qword_1006E7DD0);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = sub_1005728D8();
  v26 = v25;

LABEL_27:
  sub_100009DCC(&unk_1006EB080);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100580F90;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = sub_100196A54(v4);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v28);
  *(v27 + 56) = v29;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v30 = 16718;
  if (v26)
  {
    v30 = v23;
  }

  v31 = 0xE200000000000000;
  if (v26)
  {
    v31 = v26;
  }

  *(v27 + 80) = v30;
  *(v27 + 88) = v31;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (a3)
  {
    v33 = a3;
  }

  *(v27 + 112) = v32;
  *(v27 + 120) = v33;
  v4 = sub_1000F362C(v27);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E7DD0);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x80000001005ABB10 == v34)
    {
    }

    else
    {
      v37 = sub_100574498();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000EF2E8(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  sub_1001941D8(&v17, v16);
  sub_100194210(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.messageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LibraryModelRequest.scopedContainers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MetricsEvent.Dialog.subjectID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.targetID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MetricsEvent.Dialog.targetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65636E61436B4FLL;
  }

  else
  {
    return 27471;
  }
}

uint64_t sub_10018C1B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v3 = 27471;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v5 = 27471;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_10018C24C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018C2C4()
{
  sub_1005729F8();
}

Swift::Int sub_10018C328()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

void sub_10018C3A8(uint64_t *a1@<X8>)
{
  v2 = 27471;
  if (*v1)
  {
    v2 = 0x6C65636E61436B4FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10018C3E8(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_100574238(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Dialog.ActionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C436C65636E6163;
  }

  else
  {
    return 27503;
  }
}

uint64_t sub_10018C470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C436C65636E6163;
  }

  else
  {
    v3 = 27503;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED000064656B6369;
  }

  if (*a2)
  {
    v5 = 0x6C436C65636E6163;
  }

  else
  {
    v5 = 27503;
  }

  if (*a2)
  {
    v6 = 0xED000064656B6369;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_10018C518()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018C59C()
{
  sub_1005729F8();
}

Swift::Int sub_10018C60C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018C698@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_100574238(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10018C6F4(uint64_t *a1@<X8>)
{
  v2 = 27503;
  if (*v1)
  {
    v2 = 0x6C436C65636E6163;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED000064656B6369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MetricsEvent.ComponentRender.PreloadStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819047270;
  v2 = 0x6C6F686563616C70;
  if (a1 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (a1)
  {
    v1 = 0x6C616974726170;
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

Swift::Int sub_10018C7CC()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018C89C()
{
  sub_1005729F8();
}

Swift::Int sub_10018C958()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10018CA24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10018CA54(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xEB00000000726564;
  v5 = 0x6C6F686563616C70;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x6C616974726170;
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

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentMotionActivationTime.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_10018CCA0()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController()) init];
  static MetricsReportingController.shared = result;
  return result;
}

unint64_t sub_10018CCD0()
{
  result = qword_1006E7DC8;
  if (!qword_1006E7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7DC8);
  }

  return result;
}

id static MetricsReportingController.shared.getter()
{
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v1 = static MetricsReportingController.shared;

  return v1;
}

void MetricsReportingController.recordPerformanceMetrics(for:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 performanceMetrics];
    if (v1)
    {
      v2 = v1;
      sub_100194240(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_100194690(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v74 = a4;
  v71 = a5;
  v72 = a6;
  v8 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = sub_100570C38();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v14 = sub_1005735E8();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_100570C68();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v17 = v16;
    if (a3)
    {
      v18 = sub_100572898();
    }

    else
    {
      v18 = 0;
    }

    [v16 setPageContext:{v18, v71, v72}];

    v20 = *a1;
    v19 = a1[1];
    v21 = sub_100572898();
    v22 = sub_100572898();
    [v16 setProperty:v21 forBodyKey:v22];

    v24 = a1[2];
    v23 = a1[3];
    v25 = sub_100572898();
    [v16 setPageType:v25];

    v73 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v26 = *&v75[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v26 || (sub_100009DCC(&qword_1006E7DE0), v27 = swift_allocObject(), *(v27 + 16) = xmmword_10057B500, *(v27 + 32) = v24, *(v27 + 40) = v23, *(v27 + 88) = &type metadata for String, *(v27 + 56) = &type metadata for String, *(v27 + 64) = v20, *(v27 + 72) = v19, , , v28 = v26, isa = sub_100572D08().super.isa, , v30 = [v28 compoundStringWithElements:isa], v28, isa, !v30))
    {
      v30 = 0;
    }

    [v16 setPageDescription:v30];

    v31 = type metadata accessor for MetricsEvent.Page(0);
    sub_10000CC8C(a1 + v31[6], v10, &qword_1006E5D10);
    v32 = sub_10056C8A8();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v10, 1, v32) == 1)
    {
      sub_10001036C(v10, &qword_1006E5D10);
      v34 = 0;
    }

    else
    {
      sub_10056C7A8();
      (*(v33 + 8))(v10, v32);
      v34 = sub_100572898();
    }

    [v16 setPageURL:v34];

    v35 = *(a1 + v31[7]);
    if (v35)
    {
      v36.super.isa = sub_100572688().super.isa;
    }

    else
    {
      v36.super.isa = 0;
    }

    v37 = sub_100572898();
    [v16 setProperty:v36.super.isa forBodyKey:v37];

    swift_unknownObjectRelease();
    v38 = (a1 + v31[8]);
    v39 = v38[1];
    v40 = &stru_1006D2000;
    if (v39)
    {
      v41 = *v38;
      sub_100009DCC(&unk_1006EE290);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_10057B510;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v41;
      *(inited + 56) = v39;

      sub_1000F3754(inited);
      swift_setDeallocating();
      v40 = &stru_1006D2000;
      sub_10001036C(inited + 32, &qword_1006E6B38);
      v43 = sub_100572688().super.isa;

      [v16 addPropertiesWithDictionary:v43];
    }

    if ((*(a1 + v31[9]) & 1) == 0)
    {
      sub_100009DCC(&unk_1006EE290);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_10057B510;
      *(v44 + 32) = 0x7073694465676170;
      v45 = v44 + 32;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 40) = 0xEF6570795479616CLL;
      *(v44 + 48) = 0x7765695664726163;
      *(v44 + 56) = 0xE800000000000000;
      sub_1000F3754(v44);
      swift_setDeallocating();
      sub_10001036C(v45, &qword_1006E6B38);
      v46 = sub_100572688().super.isa;
      v40 = &stru_1006D2000;

      [v16 addPropertiesWithDictionary:v46];
    }

    v47 = *(a1 + v31[11]);
    if (v47 != 2)
    {
      sub_100009DCC(&unk_1006EE290);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_10057B510;
      *(v48 + 32) = 0xD000000000000014;
      v49 = v48 + 32;
      *(v48 + 40) = 0x80000001005AE5E0;
      *(v48 + 72) = &type metadata for Bool;
      *(v48 + 48) = v47 & 1;
      sub_1000F3754(v48);
      swift_setDeallocating();
      sub_10001036C(v49, &qword_1006E6B38);
      v50 = sub_100572688().super.isa;
      v40 = &stru_1006D2000;

      [v16 addPropertiesWithDictionary:v50];
    }

    if (v35)
    {
      if (*(v35 + 16))
      {
        v51 = sub_1000EB89C(0x4974655361746164, 0xE900000000000064);
        if (v52)
        {
          v53 = (*(v35 + 56) + 16 * v51);
          v55 = *v53;
          v54 = v53[1];
          sub_100009DCC(&unk_1006EE290);
          v56 = swift_initStackObject();
          *(v56 + 16) = xmmword_10057B510;
          *(v56 + 32) = 0x4974655361746164;
          *(v56 + 72) = &type metadata for String;
          *(v56 + 40) = 0xE900000000000064;
          *(v56 + 48) = v55;
          *(v56 + 56) = v54;

          sub_1000F3754(v56);
          swift_setDeallocating();
          v40 = &stru_1006D2000;
          sub_10001036C(v56 + 32, &qword_1006E6B38);
          v57 = sub_100572688().super.isa;

          [v16 addPropertiesWithDictionary:v57];
        }
      }
    }

    if (v74 != 2 && sub_100193E4C(v74 & 1, v71, v72))
    {
      v58 = sub_100572688().super.isa;

      [v16 v40[115].offs];
    }

    v59 = (a1 + v31[10]);
    v60 = v59[1];
    if (v60)
    {
      v61 = *v59;
      sub_100009DCC(&unk_1006EE290);
      v62 = swift_initStackObject();
      *(v62 + 32) = 0x7255666552747865;
      *(v62 + 16) = xmmword_10057B510;
      *(v62 + 72) = &type metadata for String;
      *(v62 + 40) = 0xE90000000000006CLL;
      *(v62 + 48) = v61;
      *(v62 + 56) = v60;

      sub_1000F3754(v62);
      swift_setDeallocating();
      sub_10001036C(v62 + 32, &qword_1006E6B38);
      v63 = sub_100572688().super.isa;

      [v16 v40[115].offs];
    }

    v64 = v75;
    v65 = *&v75[v73];
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v16;
    aBlock[4] = sub_100194700;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10068DF88;
    v67 = _Block_copy(aBlock);
    v68 = v65;
    v69 = v64;
    v70 = v16;

    [v70 setStandardPropertiesWith:v68 completionHandler:v67];
    _Block_release(v67);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v57 = a6;
  v61 = a5;
  v62 = a2;
  v60 = a1;
  v9 = sub_100009DCC(&qword_1006E7DE8);
  v10 = __chkstk_darwin(v9 - 8);
  v58 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = sub_100570C38();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v23 = sub_1005735E8();
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v24 = sub_100570C68();
  (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v25 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v56 = a7;
    if (a4)
    {
      v26 = sub_100572898();
    }

    else
    {
      v26 = 0;
    }

    v27 = v62;
    [v25 setPageContext:v26];

    sub_10000CC8C(v27, v19, &qword_1006E7DE8);
    v28 = type metadata accessor for MetricsPageProperties();
    v29 = *(*(v28 - 8) + 48);
    if (v29(v19, 1, v28) == 1)
    {
      sub_10001036C(v19, &qword_1006E7DE8);
      v30 = 0;
    }

    else
    {

      sub_100194124(v19, type metadata accessor for MetricsPageProperties);
      v30 = sub_100572898();
    }

    v31 = sub_100572898();
    [v25 setProperty:v30 forBodyKey:v31];
    swift_unknownObjectRelease();

    sub_10000CC8C(v27, v17, &qword_1006E7DE8);
    if (v29(v17, 1, v28) == 1)
    {
      sub_10001036C(v17, &qword_1006E7DE8);
      v32 = 0;
    }

    else
    {

      sub_100194124(v17, type metadata accessor for MetricsPageProperties);
      v32 = sub_100572898();
    }

    [v25 setPageType:v32];

    v59 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v33 = *&v63[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v33)
    {
      goto LABEL_19;
    }

    sub_100009DCC(&qword_1006E7DE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10057B500;
    v35 = sub_100009DCC(&unk_1006EB090);
    *(v34 + 56) = v35;
    sub_10000CC8C(v27, v14, &qword_1006E7DE8);
    if (v29(v14, 1, v28) == 1)
    {
      v36 = v33;
      sub_10001036C(v14, &qword_1006E7DE8);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *(v14 + 2);
      v38 = *(v14 + 3);
      v39 = v33;

      sub_100194124(v14, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = v35;
    v40 = v58;
    sub_10000CC8C(v62, v58, &qword_1006E7DE8);
    if (v29(v40, 1, v28) == 1)
    {
      sub_10001036C(v40, &qword_1006E7DE8);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = *v40;
      v42 = v40[1];

      sub_100194124(v40, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 64) = v41;
    *(v34 + 72) = v42;
    isa = sub_100572D08().super.isa;

    v44 = [v33 compoundStringWithElements:isa];

    if (!v44)
    {
LABEL_19:
      v44 = 0;
    }

    [v25 setPageDescription:v44];

    [v25 setEventType:SSMetricsEventTypeImpressions];
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = sub_100009DCC(&qword_1006E64F8);
    *(inited + 48) = v60;

    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(inited + 32, &qword_1006E6B38);
    v46 = sub_100572688().super.isa;

    [v25 addPropertiesWithDictionary:v46];

    if (v61 != 2)
    {
      if (sub_100193E4C(v61 & 1, v57, v56))
      {
        v47 = sub_100572688().super.isa;

        [v25 addPropertiesWithDictionary:v47];
      }
    }

    v48 = v63;
    v49 = *&v63[v59];
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v25;
    aBlock[4] = sub_100194750;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10068DFD8;
    v51 = _Block_copy(aBlock);
    v52 = v49;
    v53 = v48;
    v54 = v25;

    [v54 setStandardPropertiesWith:v52 completionHandler:v51];
    _Block_release(v51);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10018E0E0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1000D3B98(0, &qword_1006E84A0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a1;
  v9 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a4, v7);
}

void MetricsReportingController.recordSearchEvent(_:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_100570C38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v13 = sub_1005735E8();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_100570C68();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = sub_100572898();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:v17];

    v18 = type metadata accessor for MetricsEvent.Click(0);
    v19 = a1 + v18[10];
    v20 = *(v19 + 24);
    if (v20 >> 8 <= 0xFE && (v21 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v19, *(v19 + 8), *(v19 + 16), v20)) != 0)
    {
      aBlock[0] = v21;
      sub_100009DCC(&qword_1006E7DF0);
      v22 = sub_100574478();
      sub_10001036C(aBlock, &qword_1006E7DF0);
    }

    else
    {
      v22 = 0;
    }

    [v15 setActionDetails:v22];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v23 = sub_100572898();

    [v15 setActionType:v23];

    v24 = sub_100572898();
    [v15 setTargetIdentifier:v24];

    sub_10000CC8C(a1 + v18[7], v9, &qword_1006E5D10);
    v25 = sub_10056C8A8();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v9, 1, v25) == 1)
    {
      sub_10001036C(v9, &qword_1006E5D10);
      v27 = 0;
    }

    else
    {
      sub_10056C7A8();
      (*(v26 + 8))(v9, v25);
      v27 = sub_100572898();
    }

    [v15 setTargetURL:v27];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v28 = sub_100572898();

    [v15 setTargetType:v28];

    if (*(a1 + v18[13] + 8))
    {
      v29 = sub_100572898();
    }

    else
    {
      v29 = 0;
    }

    [v15 setPageType:v29];

    v30 = (a1 + v18[9]);
    v31 = v30[1];
    if (v31 == 12)
    {
      v32 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(*v30, v31);
      v32 = sub_100572898();
    }

    v33 = sub_100572898();
    [v15 setProperty:v32 forBodyKey:v33];

    swift_unknownObjectRelease();
    if (*(a1 + v18[15]))
    {
      v34.super.isa = sub_100572688().super.isa;
    }

    else
    {
      v34.super.isa = 0;
    }

    v35 = sub_100572898();
    [v15 setProperty:v34.super.isa forBodyKey:v35];

    swift_unknownObjectRelease();
    if (*(a1 + v18[12] + 8))
    {
      v36 = sub_100572898();
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_100572898();
    [v15 setProperty:v36 forBodyKey:v37];

    swift_unknownObjectRelease();
    isa = *(a1 + v18[8]);
    if (isa)
    {
      sub_100009DCC(&unk_1006EB150);
      isa = sub_100572D08().super.isa;
    }

    v39 = sub_100572898();
    [v15 setProperty:isa forBodyKey:v39];

    swift_unknownObjectRelease();
    if (*(a1 + v18[18] + 8))
    {
      v40 = sub_100572898();
    }

    else
    {
      v40 = 0;
    }

    [v15 setSearchTerm:v40];

    v41 = *&v4[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v42 = swift_allocObject();
    *(v42 + 16) = v4;
    *(v42 + 24) = v15;
    aBlock[4] = sub_100194788;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10068E028;
    v43 = _Block_copy(aBlock);
    v44 = v41;
    v45 = v4;
    v46 = v15;

    [v46 setStandardPropertiesWith:v44 completionHandler:v43];
    _Block_release(v43);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v102 = a5;
  v103 = a6;
  v110 = a4;
  v104 = a2;
  v10 = sub_100009DCC(&qword_1006E5D10);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v101 - v14;
  v16 = sub_100570C38();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v19 = sub_1005735E8();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_100570C68();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    if (qword_1006E4D38 == -1)
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
  v109 = v13;
  v21 = sub_10056DF88();
  sub_10000C49C(v21, qword_1006FC5D8);
  v22 = sub_10056DF68();
  v23 = sub_100573448();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Recording click event", v24, 2u);
  }

  v25 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v26 = sub_100572898();
  [v25 setTargetIdentifier:v26];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v27 = sub_100572898();

  [v25 setTargetType:v27];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v28 = sub_100572898();

  [v25 setActionType:v28];

  v29 = type metadata accessor for MetricsEvent.Click(0);
  sub_10000CC8C(a1 + v29[7], v15, &qword_1006E5D10);
  v30 = sub_10056C8A8();
  v31 = *(v30 - 8);
  v106 = *(v31 + 48);
  v107 = v31 + 48;
  v32 = v106(v15, 1, v30);
  v108 = v30;
  v101 = v31;
  if (v32 == 1)
  {
    sub_10001036C(v15, &qword_1006E5D10);
    v33 = 0;
  }

  else
  {
    sub_10056C7A8();
    (*(v31 + 8))(v15, v30);
    v33 = sub_100572898();
  }

  [v25 setTargetURL:{v33, v101}];

  isa = *(a1 + v29[8]);
  v35 = v25;
  v36 = v35;
  if (isa)
  {
    sub_100009DCC(&unk_1006EB150);
    isa = sub_100572D08().super.isa;
  }

  v37 = sub_100572898();
  [v35 setProperty:isa forBodyKey:v37];
  swift_unknownObjectRelease();

  v38 = (a1 + v29[9]);
  v39 = v38[1];
  if (v39 == 12)
  {
    v40 = 0;
  }

  else
  {
    MetricsEvent.Click.ActionContext.rawValue.getter(*v38, v39);
    v40 = sub_100572898();
  }

  v41 = sub_100572898();
  [v35 setProperty:v40 forBodyKey:v41];

  swift_unknownObjectRelease();
  v42 = a1 + v29[10];
  v43 = *(v42 + 24);
  if (v43 >> 8 <= 0xFE && (v44 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v42, *(v42 + 8), *(v42 + 16), v43)) != 0)
  {
    aBlock[0] = v44;
    sub_100009DCC(&qword_1006E7DF0);
    v45 = sub_100574478();
    sub_10001036C(aBlock, &qword_1006E7DF0);
  }

  else
  {
    v45 = 0;
  }

  [v35 setActionDetails:v45];
  swift_unknownObjectRelease();
  v46 = *(a1 + v29[11]);
  v111 = v7;
  if (v46)
  {
    sub_100009DCC(&qword_1006E7DF8);
    v46 = sub_100572D08().super.isa;
  }

  v105 = a3;
  [v35 setImpressions:v46];
  swift_unknownObjectRelease();
  if (*(a1 + v29[19]) == 1)
  {
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v48 = inited + 32;
    *(inited + 16) = xmmword_10057B510;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(v48, &qword_1006E6B38);
    v49 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v49];
  }

  v50 = (a1 + v29[20]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    sub_100009DCC(&unk_1006EE290);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_10057B510;
    *(v53 + 32) = 0xD000000000000013;
    *(v53 + 72) = &type metadata for String;
    *(v53 + 40) = 0x80000001005AE600;
    *(v53 + 48) = v52;
    *(v53 + 56) = v51;

    sub_1000F3754(v53);
    swift_setDeallocating();
    sub_10001036C(v53 + 32, &qword_1006E6B38);
    v54 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v54];
  }

  v55 = (a1 + v29[18]);
  v56 = v55[1];
  if (v56)
  {
    v57 = *v55;
    sub_100009DCC(&unk_1006EE290);
    v58 = swift_initStackObject();
    *(v58 + 32) = 0x6554686372616573;
    *(v58 + 16) = xmmword_10057B510;
    *(v58 + 72) = &type metadata for String;
    *(v58 + 40) = 0xEA00000000006D72;
    *(v58 + 48) = v57;
    *(v58 + 56) = v56;

    sub_1000F3754(v58);
    swift_setDeallocating();
    sub_10001036C(v58 + 32, &qword_1006E6B38);
    v59 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v59];
  }

  v60 = v105;
  if (v110 != 2 && sub_100193E4C(v110 & 1, v102, v103))
  {
    v61 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v61];
  }

  v62 = v111;
  if (v60)
  {
    v63 = sub_100572898();
  }

  else
  {
    v63 = 0;
  }

  [v35 setPageContext:v63];

  v64 = (a1 + v29[12]);
  v66 = *v64;
  v65 = v64[1];
  v67 = v35;
  if (v65)
  {
    v68 = sub_100572898();
    v67 = sub_100572898();
    [v35 setProperty:v68 forBodyKey:v67];
  }

  v69 = (a1 + v29[13]);
  v71 = *v69;
  v70 = v69[1];
  v72 = v35;
  if (v70)
  {
    v72 = sub_100572898();
    [v35 setPageType:v72];
  }

  v110 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v73 = *&v62[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v73 || (sub_100009DCC(&qword_1006E7DE0), v74 = swift_allocObject(), *(v74 + 16) = xmmword_10057B500, v75 = sub_100009DCC(&unk_1006EB090), *(v74 + 32) = v71, *(v74 + 40) = v70, *(v74 + 88) = v75, *(v74 + 56) = v75, *(v74 + 64) = v66, *(v74 + 72) = v65, , v76 = v73, , v77 = sub_100572D08().super.isa, , v78 = [v76 compoundStringWithElements:v77], v76, v77, !v78))
  {
    v78 = 0;
  }

  [v35 setPageDescription:v78];

  v79 = v109;
  sub_10000CC8C(a1 + v29[14], v109, &qword_1006E5D10);
  v80 = v108;
  if (v106(v79, 1, v108) == 1)
  {
    sub_10001036C(v79, &qword_1006E5D10);
    v81 = 0;
  }

  else
  {
    sub_10056C7A8();
    (*(v101 + 8))(v79, v80);
    v81 = sub_100572898();
  }

  v82 = v111;
  [v35 setPageURL:v81];

  if (*(a1 + v29[15]))
  {
    v83.super.isa = sub_100572688().super.isa;
  }

  else
  {
    v83.super.isa = 0;
  }

  v84 = sub_100572898();
  [v35 setProperty:v83.super.isa forBodyKey:v84];

  swift_unknownObjectRelease();
  if ((*(a1 + v29[16]) & 1) == 0)
  {
    sub_100009DCC(&unk_1006EE290);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_10057B510;
    *(v85 + 32) = 0x7073694465676170;
    v86 = v85 + 32;
    *(v85 + 72) = &type metadata for String;
    *(v85 + 40) = 0xEF6570795479616CLL;
    *(v85 + 48) = 0x7765695664726163;
    *(v85 + 56) = 0xE800000000000000;
    sub_1000F3754(v85);
    swift_setDeallocating();
    sub_10001036C(v86, &qword_1006E6B38);
    v87 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v87];
  }

  v88 = *(a1 + v29[17]);
  if (v88 != 2)
  {
    sub_100009DCC(&unk_1006EE290);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_10057B510;
    *(v89 + 32) = 0xD000000000000014;
    v90 = v89 + 32;
    *(v89 + 40) = 0x80000001005AE5E0;
    *(v89 + 72) = &type metadata for Bool;
    *(v89 + 48) = v88 & 1;
    sub_1000F3754(v89);
    swift_setDeallocating();
    sub_10001036C(v90, &qword_1006E6B38);
    v91 = sub_100572688().super.isa;

    [v35 addPropertiesWithDictionary:v91];
  }

  v92 = objc_allocWithZone(NSNumber);
  v93 = v35;
  v94 = [v92 initWithInteger:5];
  [v93 setEventVersion:v94];

  v95 = *&v82[v110];
  v96 = swift_allocObject();
  *(v96 + 16) = v82;
  *(v96 + 24) = v93;
  aBlock[4] = sub_1001947C0;
  aBlock[5] = v96;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10068E078;
  v97 = _Block_copy(aBlock);
  v98 = v95;
  v99 = v82;
  v100 = v93;

  [v100 setStandardPropertiesWith:v98 completionHandler:v97];
  _Block_release(v97);
}

Swift::Void __swiftcall MetricsReportingController.recordLoadUrlEvent(_:)(MusicCore::MetricsEvent::LoadUrl *a1)
{
  v3 = [objc_allocWithZone(SSMetricsLoadURLEvent) init];
  object_low = LOBYTE(a1->environmentDataCenter.value._object);
  [v3 setCachedResponse:object_low];
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  [v3 setOriginalApp:v6];
  if (a1->domainLookupStartTime.is_nil)
  {
    if (BYTE6(a1->connectionStartTime.value))
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v3 setDomainLookupStartTime:a1->domainLookupStartTime.value];
    if (BYTE6(a1->connectionStartTime.value))
    {
LABEL_3:
      if (BYTE4(a1->connectionEndTime.value))
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  [v3 setDomainLookupEndTime:*(&a1->domainLookupEndTime.value + 7)];
  if (BYTE4(a1->connectionEndTime.value))
  {
LABEL_4:
    if (BYTE2(a1->responseStartTime.value))
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setConnectionStartTime:*(&a1->secureConnectionStartTime.value + 5)];
  if (BYTE2(a1->responseStartTime.value))
  {
LABEL_5:
    if (LOBYTE(a1->fetchStartTime.value))
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setSecureConnectionStartTime:*(&a1->requestStartTime.value + 3)];
  if (LOBYTE(a1->fetchStartTime.value))
  {
LABEL_6:
    if ((a1->redirectCount.value & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setConnectionEndTime:*(&a1->responseEndTime.value + 1)];
  if ((a1->redirectCount.value & 0x100000000000000) != 0)
  {
LABEL_7:
    if (a1->requestUrl.value._object)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setRequestStartTime:*&a1->fetchStartTime.is_nil];
  if (a1->requestUrl.value._object)
  {
LABEL_8:
    if (a1->appleTimingApp.value._countAndFlagsBits)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setResponseStartTime:*&a1->requestUrl.value._countAndFlagsBits];
  if (a1->appleTimingApp.value._countAndFlagsBits)
  {
LABEL_9:
    if (a1->connectionType.value._countAndFlagsBits)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setResponseEndTime:*&a1->cachedResponse];
  if (a1->connectionType.value._countAndFlagsBits)
  {
LABEL_10:
    if (!a1->environmentDataCenter.value._countAndFlagsBits)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  [v3 setFetchStartTime:*&a1->appleTimingApp.value._object];
  if (a1->environmentDataCenter.value._countAndFlagsBits)
  {
LABEL_11:
    v7 = sub_100572898();
    [v3 setRequestURL:v7];
  }

LABEL_12:
  if ((a1->edgeNodeCacheStatus.value._countAndFlagsBits & 1) == 0)
  {
    if ((a1->connectionType.value._object & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    [v3 setRedirectCount:?];
  }

  if (a1->responseDate.value._object)
  {
    v8 = sub_100572898();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = sub_100572898();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = sub_100572898();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = sub_100572898();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = sub_100572898();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001005AE620;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_10000CC8C(&v24, aBlock, &unk_1006EB090);
    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(inited + 32, &qword_1006E6B38);
    isa = sub_100572688().super.isa;

    [v3 addPropertiesWithDictionary:isa];
  }

  [v3 setCachedResponse:object_low];
  [v3 setConnectionReused:BYTE1(a1->environmentDataCenter.value._object)];
  [v3 setStatusCode:*(&a1[1].connectionStartTime.value + 6)];
  if ((*(&a1[1].secureConnectionStartTime.value + 5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v3 setRequestMessageSize:?];
    if ((*(&a1[1].connectionEndTime.value + 4) & 0x8000000000000000) == 0)
    {
      [v3 setResponseMessageSize:?];
      v17 = *&v1[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;
      aBlock[4] = sub_1001947F8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007885C;
      aBlock[3] = &unk_10068E0C8;
      v19 = _Block_copy(aBlock);
      v20 = v17;
      v21 = v3;
      v22 = v1;

      [v21 setStandardPropertiesWith:v20 completionHandler:v19];
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_10018FDAC(void *a1)
{
  if (sub_100197240())
  {
    sub_100193080(a1, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100570C38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v7 = sub_1005735E8();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_100570C68();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = sub_100572898();
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_100572898();
    [v9 setProperty:v10 forBodyKey:v11];
    swift_unknownObjectRelease();

    v12 = *(a1 + 16);
    if (v12 == 27)
    {
      v13 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v12);
      v13 = sub_100572898();
    }

    v14 = sub_100572898();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = sub_100572898();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = sub_100572898();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = sub_100572898();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = sub_100572898();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = sub_100572898();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = sub_100572898();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_100572898();
    }

    v29 = sub_100572898();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = sub_1001951CC;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10068E118;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v2;
    v35 = v9;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v100 - v9;
  v11 = sub_100570C38();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v14 = sub_1005735E8();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_100570C68();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v102 = v10;
    v101 = a2;
    v104 = v4;
    v16 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent()) init];
    swift_beginAccess();
    v17 = *(a1 + 16);
    swift_beginAccess();
    v18 = *(a1 + 32);
    v103 = a3;
    if (v18)
    {
      v19 = v17;
      v20 = 0;
    }

    else
    {
      v21 = *(a1 + 24);
      v22 = objc_opt_self();
      v23 = v17;
      v24 = [v22 serverTimeFromTimeInterval:v21];
      v25 = [v24 unsignedLongLongValue];

      v112 = v25;
      v20 = sub_100574528();
    }

    v26 = sub_100572898();
    [v16 setProperty:v20 forBodyKey:v26];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v27 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v28 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v29 = [v28 unsignedLongLongValue];

      v111 = v29;
      v27 = sub_100574528();
    }

    v30 = sub_100572898();
    [v16 setProperty:v27 forBodyKey:v30];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v31 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v32 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v33 = [v32 unsignedLongLongValue];

      v110 = v33;
      v31 = sub_100574528();
    }

    v34 = sub_100572898();
    [v16 setProperty:v31 forBodyKey:v34];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v35 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v36 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v37 = [v36 unsignedLongLongValue];

      v109 = v37;
      v35 = sub_100574528();
    }

    v38 = sub_100572898();
    [v16 setProperty:v35 forBodyKey:v38];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v39 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v40 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v41 = [v40 unsignedLongLongValue];

      v108 = v41;
      v39 = sub_100574528();
    }

    v42 = sub_100572898();
    [v16 setProperty:v39 forBodyKey:v42];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v44 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v45 = [v44 unsignedLongLongValue];

      v107 = v45;
      v43 = sub_100574528();
    }

    v46 = sub_100572898();
    [v16 setProperty:v43 forBodyKey:v46];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v47 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v48 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v49 = [v48 unsignedLongLongValue];

      v105 = v49;
      v47 = sub_100574528();
    }

    v50 = sub_100572898();
    [v16 setProperty:v47 forBodyKey:v50];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 requestStartTime];
      v52 = [objc_opt_self() serverTimeFromTimeInterval:v51];
      v53 = [v52 unsignedLongLongValue];

      v105 = v53;
      v54 = sub_100574528();
    }

    else
    {
      v54 = 0;
    }

    v55 = sub_100572898();
    [v16 setProperty:v54 forBodyKey:v55];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseStartTime];
      v57 = [objc_opt_self() serverTimeFromTimeInterval:v56];
      v58 = [v57 unsignedLongLongValue];

      v105 = v58;
      v59 = sub_100574528();
    }

    else
    {
      v59 = 0;
    }

    v60 = sub_100572898();
    [v16 setProperty:v59 forBodyKey:v60];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseEndTime];
      v62 = [objc_opt_self() serverTimeFromTimeInterval:v61];
      v63 = [v62 unsignedLongLongValue];

      v105 = v63;
      v64 = sub_100574528();
      v65 = sub_100572898();
      [v16 setProperty:v64 forBodyKey:v65];
      swift_unknownObjectRelease();

      v66 = [v17 cachedResponse];
    }

    else
    {
      v67 = sub_100572898();
      [v16 setProperty:0 forBodyKey:v67];

      v66 = 0;
    }

    LOBYTE(v105) = v66;
    v68 = sub_100574528();
    v69 = sub_100572898();
    [v16 setProperty:v68 forBodyKey:v69];
    swift_unknownObjectRelease();

    v70 = (a1 + *(*a1 + 160));
    v71 = v70[1];
    v105 = *v70;
    v106 = v71;

    v72 = sub_100574528();
    v73 = sub_100572898();
    [v16 setProperty:v72 forBodyKey:v73];
    swift_unknownObjectRelease();

    v74 = v70[3];
    v105 = v70[2];
    v106 = v74;

    v75 = sub_100574528();
    v76 = sub_100572898();
    [v16 setProperty:v75 forBodyKey:v76];
    swift_unknownObjectRelease();

    v77 = type metadata accessor for MetricsPageProperties();
    v78 = v102;
    sub_10000CC8C(v70 + *(v77 + 24), v102, &qword_1006E5D10);
    v79 = sub_10056C8A8();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_10001036C(v78, &qword_1006E5D10);
      v81 = 0;
    }

    else
    {
      v82 = sub_10056C7A8();
      v84 = v83;
      (*(v80 + 8))(v78, v79);
      v105 = v82;
      v106 = v84;
      v81 = sub_100574528();
    }

    v85 = v103;
    v86 = sub_100572898();
    [v16 setProperty:v81 forBodyKey:v86];
    swift_unknownObjectRelease();

    if (*(v70 + *(v77 + 28)))
    {
      v105 = *(v70 + *(v77 + 28));

      sub_100009DCC(&qword_1006E7DF0);
      v87 = sub_100574528();
    }

    else
    {
      v87 = 0;
    }

    v88 = sub_100572898();
    [v16 setProperty:v87 forBodyKey:v88];
    swift_unknownObjectRelease();

    if (v85)
    {
      v105 = v101;
      v106 = v85;

      v89 = sub_100574528();
    }

    else
    {
      v89 = 0;
    }

    v90 = sub_100572898();
    [v16 setProperty:v89 forBodyKey:v90];
    swift_unknownObjectRelease();

    v91 = v104;
    v92 = *&v104[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v93 = swift_allocObject();
    *(v93 + 16) = v91;
    *(v93 + 24) = v16;
    v94 = v92;
    v95 = v16;
    v96 = v94;
    v97 = v95;

    v98 = v91;
    v99 = v97;
    sub_10019A858(v92, v99, v99, v92, sub_100195204, v93);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001910DC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a4(a2))
  {
    sub_100193080(a2, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = sub_100570C38();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v15 = sub_1005735E8();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_100570C68();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = sub_100572898();
    [v17 setTopic:v18];

    isa = sub_100572688().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_100193E4C(a4 & 1, v22, v23))
      {
        v20 = sub_100572688().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_100193080(v17, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v37 = sub_10056CAE8();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100570C38();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v16 = sub_1005735E8();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_100570C68();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = sub_100572688().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_10056CAB8();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(inited + 32, &qword_1006E6B38);
    v26 = sub_100572688().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v19[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    v28[2] = v20;
    v28[3] = v30;
    v28[4] = v40;
    v28[5] = v19;
    v31 = v36;
    v28[6] = v29;
    v28[7] = v31;
    aBlock[4] = sub_1001864E4;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10068E190;
    v32 = _Block_copy(aBlock);
    v33 = v27;

    v34 = v19;

    v35 = v20;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_100191820(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100572898();
  [a1 setTopic:v12];

  if (qword_1006E4C88 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, static Logger.carMetrics);

  v14 = sub_10056DF68();
  v15 = sub_100573448();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000C9784(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    sub_100010474(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001FC868;
  v20[3] = &unk_10068E9C0;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = sub_100570C38();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v4 = sub_1005735E8();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_100570C68();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_100572688().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100191BE8()
{
  if (qword_1006E4D38 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[19] = sub_10000C49C(v1, qword_1006FC5D8);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = sub_100191DBC;
  v7 = swift_continuation_init();
  v0[17] = sub_100009DCC(&unk_1006EB680);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100192078;
  v0[13] = &unk_10068E1B8;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100191DBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100191EE0;
  }

  else
  {
    v2 = sub_100191ECC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100191EE0()
{
  v12 = v0;
  swift_willThrow();
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[10] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v6 = sub_100572978();
    v8 = sub_1000C9784(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100192078(uint64_t a1, void *a2)
{
  sub_10000C8CC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100009DCC(&qword_1006E9B60);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100192124()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_10001036C(&v8, &qword_1006EA040);
    return 0;
  }

  v2 = v1;
  v3 = sub_100572898();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

char *sub_100192254()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  sub_100009DCC(&qword_1006E5708);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  sub_100009DCC(&unk_1006E5710);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter();
  *&v0[v8] = swift_allocObject();
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MetricsReportingController();
  v9 = objc_msgSendSuper2(&v19, "init");
  v10 = qword_1006E4E08;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer();
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  swift_weakAssign();
  v14 = *(v13 + 24);
  *(v13 + 24) = sub_1001964C4;
  *(v13 + 32) = v12;
  swift_retain_n();
  v15 = sub_1000F3E14(v14);
  __chkstk_darwin(v15);
  UnfairLock.locked<A>(_:)(sub_1001964CC);
  sub_1001B1500(0);

  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v13;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_1001964EC, v16);

  return v11;
}

uint64_t sub_100192678(void *a1, uint64_t a2)
{
  sub_1000D3B98(0, &qword_1006E84A0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100196804, v4);
}

void sub_10019271C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100192C80(a2);
  }
}

uint64_t sub_100192778()
{
  v0 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  if (qword_1006E4D38 != -1)
  {
    swift_once();
  }

  v3 = sub_10056DF88();
  sub_10000C49C(v3, qword_1006FC5D8);
  v4 = sub_10056DF68();
  v5 = sub_100573448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
  }

  sub_100572F28();
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_1000D6938(0, 0, v2, &unk_10058A5F8, v10);

  return sub_10001036C(v2, &qword_1006E6420);
}

uint64_t sub_1001929C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_1001844B8(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_1001844B8(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_100192B50;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100192B50()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100192C80(void *a1)
{
  v2 = v1;
  v4 = sub_100570C38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v7 = sub_1005735E8();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_100570C68();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1005726A8();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1005726A8();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x80000001005AE940;
      sub_100573E78();
      if (*(v14 + 16))
      {
        v15 = sub_1000EB93C(v28);
        if (v16)
        {
          sub_100081F38(*(v14 + 56) + 32 * v15, v27);
          sub_1000F4130(v28);

          sub_1000F51DC(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          sub_100573E78();
          sub_100081F38(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_1000EF5E4(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_1000F4130(v28);
          sub_100010474(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_1000F4130(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = sub_100572688().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

void sub_100193080(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100570C38();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D3B98(0, &qword_1006E84A0);
  *v14 = sub_1005735E8();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_100570C68();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_1001934C4(a1);
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v17 = sub_10056CAB8();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(inited + 32, &qword_1006E6B38);
    isa = sub_100572688().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_1006E4D38 == -1)
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
  v21 = sub_10056DF88();
  sub_10000C49C(v21, qword_1006FC5D8);
  v22 = sub_10056DF68();
  v23 = sub_100573448();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Inserting main window related event.", v24, 2u);
  }

  v25 = *(v4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a3;
  aBlock[4] = sub_10019666C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FC868;
  aBlock[3] = &unk_10068EA10;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_1001934C4(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    sub_1005728D8();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_1005728D8();
  v7 = v6;

  v8 = sub_1005728D8();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_100574498();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = sub_100572D08().super.isa;

  v15 = sub_100572898();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = sub_1001973C0();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = sub_10019373C(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1000CF25C(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = sub_1000CF25C((v24 > 1), v23 + 1, 1, v27);
      v23 = v28;
      v21 = v29;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    *(v26 + 4) = v18;
    *(v26 + 5) = v19;
    *(v16 + v13) = v21;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_10019373C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_1000CC614(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a2 + 40;
      v22 = *(a2 + 16);
      v21 = v5 - 1;
      do
      {
        v9 = (v8 + 16 * v6);
        while (1)
        {
          if (v6 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = v6 + 1;
          v13 = _swiftEmptyArrayStorage[2];
          if (v13 >= v3)
          {
            break;
          }

          v14 = _swiftEmptyArrayStorage[3];

          if (v13 >= v14 >> 1)
          {
            result = sub_1000CC614((v14 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v15 = &_swiftEmptyArrayStorage[2 * v13];
          v15[4] = v10;
          v15[5] = v11;
          v9 += 2;
          v6 = v12;
          if (v22 == v12)
          {
            goto LABEL_23;
          }
        }

        if (v7 >= v13)
        {
          goto LABEL_33;
        }

        v16 = &_swiftEmptyArrayStorage[2 * v7];
        v16[4] = v10;
        v16[5] = v11;

        if ((v7 + 1) < v3)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

        v8 = a2 + 40;
      }

      while (v21 != v6++);
LABEL_23:

      if (!v7)
      {
        return _swiftEmptyArrayStorage;
      }

      v18 = _swiftEmptyArrayStorage[2];
      result = sub_1000CC614(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          sub_100194830(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          sub_100194830(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

id MetricsReportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsReportingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100193A78()
{
  v1 = sub_100572898();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
    sub_1000F51DC(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100009DCC(&qword_1006EA040);
  sub_1000D3B98(0, &qword_1006E8048);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100193B54(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionContextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 0xC)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

uint64_t sub_100193D40(unint64_t a1)
{
  if (a1 <= 1)
  {
    return sub_100574408();
  }

  if (a1 - 5 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3419442;
  }

  if (a1 - 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3616053;
  }

  if (a1 - 11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 808529208;
  }

  if (a1 - 16 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x35312D3131;
  }

  if (a1 - 21 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x30322D3631;
  }

  if (a1 - 26 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x35322D3132;
  }

  return 2831922;
}

unint64_t sub_100193E4C(char a1, unint64_t a2, unint64_t a3)
{
  sub_100009DCC(&unk_1006EE290);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100580F90;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000001005AE9C0;
    *(inited + 96) = sub_100193D40(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x80000001005AE4B0;
    v8 = sub_100193D40(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = sub_1000F3754(inited);
    swift_setDeallocating();
    sub_100009DCC(&qword_1006E6B38);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_10057B510;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = sub_1000F3754(v11);
    swift_setDeallocating();
    sub_10001036C(v12, &qword_1006E6B38);
  }

  return v10;
}

uint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1005744E8();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100194050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001940B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E5D10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100194124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_1005744E8();

  if (v0 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v0;
  }
}

double sub_100194240@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 domainLookupStartTime];
  v70 = v4;
  [a1 domainLookupEndTime];
  v6 = v5;
  [a1 connectionStartTime];
  v8 = v7;
  [a1 secureConnectionStartTime];
  v10 = v9;
  [a1 connectionEndTime];
  v12 = v11;
  [a1 requestStartTime];
  v14 = v13;
  [a1 responseStartTime];
  v16 = v15;
  [a1 responseEndTime];
  v18 = v17;
  [a1 fetchStartTime];
  v20 = v19;
  v69 = [a1 redirectCount];
  v21 = [a1 requestUrl];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1005728D8();
    v67 = v24;
    v68 = v23;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 cachedResponse];
  v65 = [a1 connectionReused];
  v25 = [a1 appleTimingApp];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1005728D8();
    v63 = v28;
    v64 = v27;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v29 = [a1 connectionType];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1005728D8();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = [a1 edgeNodeCacheStatus];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1005728D8();
    v59 = v36;
    v60 = v35;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v37 = [a1 environmentDataCenter];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1005728D8();
    v55 = v40;
    v57 = v39;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v41 = [a1 responseDate];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1005728D8();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [a1 statusCode];
  v47 = [a1 requestMessageSize];
  v48 = [a1 responseMessageSize];
  v49 = [a1 resolvedIPAddress];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1005728D8();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  result = v70;
  *a2 = v70;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  *(a2 + 144) = v69;
  *(a2 + 152) = 0;
  *(a2 + 160) = v68;
  *(a2 + 168) = v67;
  *(a2 + 176) = v66;
  *(a2 + 177) = v65;
  *(a2 + 184) = v64;
  *(a2 + 192) = v63;
  *(a2 + 200) = v62;
  *(a2 + 208) = v61;
  *(a2 + 216) = v60;
  *(a2 + 224) = v59;
  *(a2 + 232) = v58;
  *(a2 + 240) = v56;
  *(a2 + 248) = v43;
  *(a2 + 256) = v45;
  *(a2 + 264) = v46;
  *(a2 + 272) = v47;
  *(a2 + 280) = v48;
  *(a2 + 288) = v51;
  *(a2 + 296) = v53;
  return result;
}

uint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100683C50;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001946C0()
{

  return swift_deallocObject();
}

uint64_t sub_100194738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100194830(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_1000CC614(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(uint64_t a1)
{
  v2 = sub_10056C9C8();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10056CAA8();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = sub_100572898();
  [v5 setDialogId:v6];

  v7 = sub_100572898();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_10057B510;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_1000F3754(inited);
    swift_setDeallocating();
    sub_10001036C(inited + 32, &qword_1006E6B38);
    isa = sub_100572688().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = sub_100572898();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = sub_100009DCC(&unk_1006EE290);
  v14 = swift_initStackObject();
  v56 = xmmword_10057B510;
  *(v14 + 16) = xmmword_10057B510;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_1000F3754(v14);
  swift_setDeallocating();
  sub_10001036C(v14 + 32, &qword_1006E6B38);
  v17 = sub_100572688().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = sub_100009DCC(&unk_1006E84C0);
  *(v18 + 48) = v19;

  sub_1000F3754(v18);
  swift_setDeallocating();
  sub_10001036C(v18 + 32, &qword_1006E6B38);
  v20 = sub_100572688().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = sub_100572898();
  [v5 setResult:v21];

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(a1 + 80);
    v24 = swift_initStackObject();
    *(v24 + 32) = 0x497463656A627573;
    *(v24 + 16) = v56;
    *(v24 + 72) = &type metadata for String;
    *(v24 + 40) = 0xE900000000000044;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;

    sub_1000F3754(v24);
    swift_setDeallocating();
    sub_10001036C(v24 + 32, &qword_1006E6B38);
    v25 = sub_100572688().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = sub_100572898();
  [v5 setTargetId:v28];

  sub_100009DCC(&qword_1006E7DE0);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  sub_100009DCC(&unk_1006EB080);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_100580F90;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  sub_10056CA68();
  v33 = v51;
  sub_10056C268();
  sub_100196704();
  v34 = v54;
  sub_10056CA88();
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
  v35 = v58;
  *(v31 + 48) = v57;
  *(v31 + 56) = v35;
  *(v31 + 64) = 0x79546E6F69746361;
  *(v31 + 72) = 0xEA00000000006570;
  v36 = 27503;
  if (*(a1 + 112))
  {
    v36 = 0x6C436C65636E6163;
  }

  v37 = 0xE200000000000000;
  if (*(a1 + 112))
  {
    v37 = 0xED000064656B6369;
  }

  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 96) = 0x6449746567726174;
  *(v31 + 104) = 0xE800000000000000;
  *(v31 + 112) = v27;
  *(v31 + 120) = v26;
  v38 = sub_1000F362C(v31);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E7DD0);
  swift_arrayDestroy();
  *(v30 + 56) = sub_100009DCC(&qword_1006E7DF0);
  *(v30 + 32) = v38;
  v39 = sub_100572D08().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_10019675C;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10007885C;
  v60 = &unk_10068EAB0;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_10019523C()
{

  return swift_deallocObject();
}

unint64_t sub_1001952CC()
{
  result = qword_1006E7E08;
  if (!qword_1006E7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E08);
  }

  return result;
}

unint64_t sub_100195324()
{
  result = qword_1006E7E10;
  if (!qword_1006E7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E10);
  }

  return result;
}

unint64_t sub_10019537C()
{
  result = qword_1006E7E18;
  if (!qword_1006E7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E18);
  }

  return result;
}

unint64_t sub_1001953D4()
{
  result = qword_1006E7E20;
  if (!qword_1006E7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E20);
  }

  return result;
}

unint64_t sub_10019542C()
{
  result = qword_1006E7E28;
  if (!qword_1006E7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E28);
  }

  return result;
}

unint64_t sub_100195484()
{
  result = qword_1006E7E30;
  if (!qword_1006E7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E30);
  }

  return result;
}

unint64_t sub_1001954DC()
{
  result = qword_1006E7E38;
  if (!qword_1006E7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.TargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.TargetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001956A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E5D10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100195774(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E5D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100195824()
{
  sub_10019594C();
  if (v0 <= 0x3F)
  {
    sub_1000E0F60(319, &qword_1006E7EB0, &qword_1006E7DF0);
    if (v1 <= 0x3F)
    {
      sub_100016918(319, &qword_1006ED410);
      if (v2 <= 0x3F)
      {
        sub_100016918(319, &qword_1006E7EB8);
        if (v3 <= 0x3F)
        {
          sub_100016918(319, &unk_1006E7EC0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10019594C()
{
  if (!qword_1006E7EA8)
  {
    sub_10056C8A8();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E7EA8);
    }
  }
}

uint64_t sub_1001959C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E5D10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100195A98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E5D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100195B48()
{
  sub_10019594C();
  if (v0 <= 0x3F)
  {
    sub_1000E0F60(319, &qword_1006E64E0, &qword_1006E64E8);
    if (v1 <= 0x3F)
    {
      sub_100016918(319, &qword_1006E64D0);
      if (v2 <= 0x3F)
      {
        sub_100016918(319, &unk_1006E7F70);
        if (v3 <= 0x3F)
        {
          sub_1000E0F60(319, &qword_1006E64F0, &qword_1006E64F8);
          if (v4 <= 0x3F)
          {
            sub_100016918(319, &qword_1006ED410);
            if (v5 <= 0x3F)
            {
              sub_1000E0F60(319, &qword_1006E7EB0, &qword_1006E7DF0);
              if (v6 <= 0x3F)
              {
                sub_100016918(319, &qword_1006E7EB8);
                if (v7 <= 0x3F)
                {
                  sub_100016918(319, &unk_1006E7EC0);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100195EAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100195EC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100195F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_100195F6C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100195F9C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100195FB4(uint64_t a1)
{
  if ((*(a1 + 25) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 25) & 7;
  }
}

__n128 sub_100195FD0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100195FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019602C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_100196074(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

__n128 sub_1001960A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001960B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100196108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_100196160(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100196198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
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

uint64_t sub_1001961F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

__n128 sub_1001962A8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001962D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019631C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001963AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001963D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_100196418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019648C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100196500()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100196540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_1001929A0(a1, v4, v5, v6);
}

uint64_t sub_1001965F4()
{

  return swift_deallocObject();
}

uint64_t sub_100196634()
{

  return swift_deallocObject();
}

unint64_t sub_100196704()
{
  result = qword_1006E8050;
  if (!qword_1006E8050)
  {
    sub_10056C9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8050);
  }

  return result;
}

uint64_t sub_10019686C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties();
  v17 = v16[6];
  v18 = sub_10056C8A8();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_1001940B4(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t type metadata accessor for MetricsPageProperties()
{
  result = qword_1006E80B8;
  if (!qword_1006E80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100196A54(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = sub_100196A54(v3);

    v5 = 0;
LABEL_8:
    v26 = v4;
LABEL_9:
    sub_1000F3E14(v5);
    return v4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v4 = 0;
    v5 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v26 = 2;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = &v26;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10019CDC0;
    *(v11 + 24) = v10;
    v24 = sub_10019CB74;
    v25 = v11;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1001D41F8;
    v23 = &unk_10068F2E8;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v9 performWithoutEnforcement:v12];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v5 = sub_10019CDC0;
      v4 = v26;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v5 = 0;
        v4 = 17;
        goto LABEL_8;
      }

      v3 = v15;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_100573ED8(45);

  aBlock = 0xD00000000000002BLL;
  v21 = 0x80000001005AEFB0;
  v16 = sub_100320E10(&off_100682C08);
  v17 = MPModelObject.humanDescription(including:)(v16);
  v19 = v18;

  v27._countAndFlagsBits = v17;
  v27._object = v19;
  sub_100572A98(v27);

  result = sub_1005740F8();
  __break(1u);
  return result;
}

unint64_t MetricsContentType.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x4173746964657263;
      break;
    case 10:
      result = 0x726F7461727563;
      break;
    case 11:
      result = 0x65726E6567;
      break;
    case 12:
      result = 0x6174536F69646172;
      break;
    case 13:
      result = 0x686372616573;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F736165537674;
      break;
    case 18:
      result = 0x497972617262696CLL;
      break;
    case 19:
      result = 0x614C64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100197240()
{
  swift_getObjectType();
  result = 1;
  if (![v0 cachedResponse] || (v1 = swift_getObjCClassFromMetadata(), objc_msgSend(v0, "xpSamplingPercentageCachedResponses"), (objc_msgSend(v1, "shouldReportCachedEventWithSamplingPercentage:") & 1) == 0))
  {
    if ([v0 cachedResponse])
    {
      return 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v0 xpSessionDuration];
    v4 = v3;
    [v0 xpSamplingPercentageUsers];
    if (([ObjCClassFromMetadata shouldCollectTimingDataWithSessionDuration:v4 samplingPercentage:v5] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t sub_1001973C0()
{
  v1 = sub_100572898();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_100573D58();
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
    sub_10001036C(v7, &qword_1006EA040);
    return 0;
  }
}

uint64_t SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricsPageProperties.pageURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsPageProperties() + 24);

  return sub_1001940B4(a1, v3);
}

uint64_t MetricsPageProperties.pageDetails.getter()
{
  type metadata accessor for MetricsPageProperties();
}

uint64_t MetricsPageProperties.pageDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPageProperties() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPageProperties.extRefUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsPageProperties() + 32));

  return v1;
}

uint64_t MetricsPageProperties.extRefUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsPageProperties() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100197750(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MetricsContentType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MetricsContentType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_1001977D8()
{
  v1 = *v0;
  sub_100574678();
  MetricsContentType.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10019783C()
{
  MetricsContentType.rawValue.getter(*v0);
  sub_1005729F8();
}

Swift::Int sub_100197890()
{
  v1 = *v0;
  sub_100574678();
  MetricsContentType.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001978F0@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_100197920@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_10019794C()
{
  v1 = sub_100572898();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_10001036C(v14, &qword_1006EA040);
    return 0;
  }

  sub_100009DCC(&qword_1006E8158);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = v13 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100081F38(v4, v14);
      sub_100009DCC(&qword_1006E7DF8);
      if (swift_dynamicCast())
      {
        v6 = v15;
        sub_100573E78();
        if (*(v6 + 16) && (v7 = sub_1000EB93C(v14), (v8 & 1) != 0))
        {
          sub_100081F38(*(v6 + 56) + 32 * v7, &v15);
          sub_1000F4130(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1000CF25C(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_1000CF25C((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_1000F4130(v14);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  sub_100572698();

  return 0;
}

uint64_t sub_100197CB0(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1005726A8();

      v7 = sub_100350780(v6);

      if (v7)
      {
        isa = sub_100572688().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_1006E5610 != -1)
  {
    swift_once();
  }

  v9 = sub_100572898();
  v10 = sub_100572898();
  [v2 setProperty:v9 forBodyKey:v10];

  if (qword_1006E5620 != -1)
  {
    swift_once();
  }

  v11 = sub_100572898();
  v12 = sub_100572898();
  [v2 setProperty:v11 forBodyKey:v12];

  if (qword_1006E5618 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v13 = sub_100572898();
  v14 = sub_100572898();
  [v2 setProperty:v13 forBodyKey:v14];

LABEL_16:
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 systemVersion];

  if (!v16)
  {
    sub_1005728D8();
    v16 = sub_100572898();
  }

  v17 = sub_100572898();
  [v2 setProperty:v16 forBodyKey:v17];

  return a2();
}

uint64_t sub_100197FF0(void *a1, uint64_t (*a2)(void))
{
  v5 = sub_100572898();
  v6 = sub_100572898();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_100572898();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v10 = sub_10000C8CC(&v19, *(&v20 + 1));
    v11 = *(*(&v18 + 1) - 8);
    __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_100574478();
    (*(v11 + 8))(v13, v9);
    sub_100010474(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = sub_100572898();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t sub_10019824C(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = sub_100570B88();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100570BC8();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100570B98();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3B98(0, &qword_1006E84A0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = sub_100573638();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_10019CC48;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10068F1A8;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  sub_100570BA8();
  v27 = _swiftEmptyArrayStorage;
  sub_10019CD40(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30);
  sub_10019CC54();
  sub_100573DA8();
  sub_100573608();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void sub_1001985EC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_1000F4538(&off_100683ED0);
  sub_100009DCC(&qword_1006E8150);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_10019794C()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (*(v7 + 16))
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_1000EB980(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(*(v7 + 56) + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin(v21);
        v28[2] = v34;

        if (sub_10019686C(sub_10019CCB8, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = sub_100572898();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v30(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100198878(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (!v8)
  {
    return a3();
  }

  v9 = a2;
  v11 = a2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
  {
    v9 = sub_1000CFADC(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  sub_1001E8E54(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10019CEA4;
  *(v14 + 24) = v13;
  v18[0] = sub_10019CED8;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t sub_100198A1C(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_10019CD10, v7);
}

uint64_t sub_100198ADC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = sub_100572898();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_100198C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10068EE38;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_10019AE3C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000128FC;
  v9[3] = &unk_10068EBF0;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_100198F2C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = sub_100570B88();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100570BC8();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3B98(0, &qword_1006E84A0);
  v12 = sub_1005735E8();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_10019CD38;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10068F220;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10019CD40(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30);
  sub_10019CC54();
  sub_100573DA8();
  sub_100573608();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_10019920C(void *a1)
{
  if (qword_1006E4D30 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    sub_100194240(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_100194690(&v4);
  }
}

uint64_t sub_1001992C4()
{
  v1 = sub_100572898();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_100573D58();
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
    sub_1000D3B98(0, &qword_1006E8048);
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
    sub_10001036C(v7, &qword_1006EA040);
    return 0;
  }
}

uint64_t sub_1001993CC()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x80000001005AED80;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001036C(&v2, &qword_1006EA040);
  }

  return 0;
}

uint64_t sub_1001994A8()
{
  v1[0] = 0xD00000000000001CLL;
  v1[1] = 0x80000001005AECF0;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001036C(&v2, &qword_1006EA040);
  }

  return 0;
}

uint64_t sub_100199550@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD00000000000001CLL;
  v6[1] = 0x80000001005AEF90;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_10056CAA8();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10001036C(&v7, &qword_1006EA040);
    v5 = sub_10056CAA8();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_10019966C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E8040);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_10000CC8C(a1, v9 - v3, &qword_1006E8040);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001036C(v4, &qword_1006E8040);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v7 = sub_10002AB7C(&v10);
    (*(v6 + 32))(v7, v4, v5);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x80000001005AEF90;
  sub_1000C5FB8();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_10001036C(a1, &qword_1006E8040);
}

uint64_t sub_100199800()
{
  v1 = sub_100572898();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_100573D58();
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
    sub_1000D3B98(0, &qword_1006E8048);
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
    sub_10001036C(v7, &qword_1006EA040);
    return 0;
  }
}

id sub_100199B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100199BB8()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x80000001005AEF40;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001036C(&v2, &qword_1006EA040);
  }

  return 0;
}

uint64_t sub_100199C60@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD000000000000026;
  v6[1] = 0x80000001005AEF60;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_10056CAA8();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10001036C(&v7, &qword_1006EA040);
    v5 = sub_10056CAA8();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_100199D7C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E8040);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_10000CC8C(a1, v9 - v3, &qword_1006E8040);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001036C(v4, &qword_1006E8040);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v7 = sub_10002AB7C(&v10);
    (*(v6 + 32))(v7, v4, v5);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001005AEF60;
  sub_1000C5FB8();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_10001036C(a1, &qword_1006E8040);
}

void sub_100199F44(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  isa = sub_100572688().super.isa;

  v3 = [v1 initWithBodyDictionary:isa];

  return v3;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)()
{
  ObjectType = swift_getObjectType();
  isa = sub_100572688().super.isa;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "initWithBodyDictionary:", isa);

  return v3;
}

uint64_t sub_10019A240(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1000EB89C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_100574498();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019A3E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100574498() & 1;
  }
}

uint64_t _s9MusicCore21MetricsPagePropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_100009DCC(&qword_1006E8160);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_100574498() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v32 = v7;
  v33 = type metadata accessor for MetricsPageProperties();
  v14 = *(v33 + 24);
  v15 = *(v11 + 48);
  sub_10000CC8C(a1 + v14, v13, &qword_1006E5D10);
  sub_10000CC8C(a2 + v14, &v13[v15], &qword_1006E5D10);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000CC8C(v13, v10, &qword_1006E5D10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = &v13[v15];
      v19 = v32;
      (*(v5 + 32))(v32, v18, v4);
      sub_10019CD40(qword_1006E8168, &type metadata accessor for URL);
      v20 = sub_1005727E8();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_10001036C(v13, &qword_1006E5D10);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_10001036C(v13, &qword_1006E8160);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_10001036C(v13, &qword_1006E5D10);
LABEL_16:
  v22 = v33;
  v23 = *(v33 + 28);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = sub_10019A240(v24, v25);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = *(v22 + 32);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31 && (*v28 == *v30 && v29 == v31 || (sub_100574498() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

void sub_10019A858(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_100199BB8();

  v14 = sub_100574528();
  v15 = sub_100572898();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = sub_100574528();
  v17 = sub_100572898();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v40 = 0u;
LABEL_14:
    sub_10001036C(&aBlock, &qword_1006EA040);
    goto LABEL_15;
  }

  v18 = sub_100572898();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  sub_100009DCC(&unk_1006EB150);
  if (swift_dynamicCast())
  {
    v20 = *(v36 + 16);
    if (v20)
    {
      v21 = sub_1000EB89C(0xD000000000000021, 0x80000001005AEEF0);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v34 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      sub_100081F38(*(v36 + 56) + 32 * v21, &aBlock);
      sub_1000D3B98(0, &qword_1006E8048);
      v23 = swift_dynamicCast();
      v20 = v36;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v34 = v20;
    if (v13)
    {
LABEL_13:
      sub_1000D3B98(0, &qword_1006E8048);
      v24.super.super.isa = sub_100573A28(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v26 = v24.super.super.isa;
    v27 = sub_100572898();
    [a2 setProperty:v26 forBodyKey:v27];

    if (*(v36 + 16) && (v28 = sub_1000EB89C(0xD000000000000019, 0x80000001005AEF20), (v29 & 1) != 0))
    {
      sub_100081F38(*(v36 + 56) + 32 * v28, &aBlock);

      sub_1000D3B98(0, &qword_1006E8048);
      if (swift_dynamicCast())
      {
        v30 = v36;
LABEL_27:
        v31 = v30;
        v32 = sub_100572898();
        [a2 setProperty:v31 forBodyKey:v32];

        v41 = a5;
        v42 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_10007885C;
        *(&v40 + 1) = &unk_10068F270;
        v33 = _Block_copy(&aBlock);

        v35.receiver = a3;
        v35.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
        objc_msgSendSuper2(&v35, "setStandardPropertiesWith:completionHandler:", a4, v33);
        _Block_release(v33);

        return;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v41 = a5;
  v42 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_10007885C;
  *(&v40 + 1) = &unk_10068F248;
  v25 = _Block_copy(&aBlock);

  v38.receiver = a3;
  v38.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
  objc_msgSendSuper2(&v38, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

uint64_t _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1005744E8();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10019AE04()
{

  return swift_deallocObject();
}

uint64_t sub_10019AE44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10019AE60()
{
  result = qword_1006E8058;
  if (!qword_1006E8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8058);
  }

  return result;
}

uint64_t sub_10019AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E5D10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10019AF98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E5D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10019B048()
{
  sub_10019594C();
  if (v0 <= 0x3F)
  {
    sub_10019B0F4();
    if (v1 <= 0x3F)
    {
      sub_10019B158();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019B0F4()
{
  if (!qword_1006E7EB0)
  {
    sub_100010324(&qword_1006E7DF0);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E7EB0);
    }
  }
}

void sub_10019B158()
{
  if (!qword_1006ED410)
  {
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ED410);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10019B348(void (*a1)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() defaultIdentityStore];
  v4 = [objc_opt_self() activeAccount];
  v18[0] = 0;
  v5 = [v3 DSIDForUserIdentity:v4 outError:v18];

  if (v5)
  {
    v6 = v18[0];
    [v1 setAccountIdentifier:v5];
    v7 = [v5 longLongValue] != 0;
  }

  else
  {
    v8 = v18[0];
    sub_10056C728();

    swift_willThrow();

    [v1 setAccountIdentifier:0];
    v7 = 1;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithBool:v7];
  v10 = sub_100572898();
  [v1 setProperty:v9 forBodyKey:v10];

  v11 = [objc_opt_self() sharedController];
  v12 = [v11 musicSubscriptionStatus];

  if (v12)
  {
    v13 = [v12 statusType];
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_13;
      }

      [v12 reasonType];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        do
        {
          v18[0] = 0;
          v18[1] = 0xE000000000000000;
          sub_100573ED8(24);
          a1 = 0xD000000000000013;
          v19._object = 0x80000001005AEE90;
          v19._countAndFlagsBits = 0xD000000000000013;
          sub_100572A98(v19);
          [v12 statusType];
          v20._countAndFlagsBits = 0xD00000000000001DLL;
          v20._object = 0x80000001005AEEB0;
          sub_100572A98(v20);
          v21._countAndFlagsBits = 32;
          v21._object = 0xE100000000000000;
          sub_100572A98(v21);
          [v12 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          sub_100574098();
          v13 = sub_1005740F8();
          __break(1u);
LABEL_13:
          ;
        }

        while (v13 != 3);
      }
    }

    else
    {
    }
  }

  v14 = sub_100572898();

  v15 = sub_100572898();
  [v1 setProperty:v14 forBodyKey:v15];

  a1(v16, v17);
}

uint64_t sub_10019B76C(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = sub_1005726A8();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = sub_1000EB89C(0xD000000000000012, 0x80000001005AEE40);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_100081F38(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = sub_100572898();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = sub_1000EB89C(0xD00000000000001ALL, 0x80000001005AEE20), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_100081F38(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = sub_100572898();

LABEL_19:
  v15 = sub_100572898();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void sub_10019BA00(void (*a1)(void))
{
  v3 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v3)
  {
    sub_1005728D8();
    v3 = sub_100572898();
  }

  [v1 setConnection:v3];

  v4 = objc_allocWithZone(ICStoreRequestContext);
  v8[4] = CFRange.init(_:);
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001D65E4;
  v8[3] = &unk_10068F158;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithBlock:v5];
  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 userAgent];
    if (!v7)
    {
      sub_1005728D8();
      v7 = sub_100572898();
    }

    [v1 setUserAgent:v7];

    a1();
  }
}

uint64_t sub_10019BBB8(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = sub_1000CFADC(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    sub_1001E8E54(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = sub_10019CEAC;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10019CB70;
    *(v13 + 24) = v12;
    v17[0] = sub_10019CB74;
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }
}

uint64_t sub_10019BD80(void *a1, void *a2, void (**a3)(void))
{
  sub_100009DCC(&qword_1006E6178);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100582470;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10019C9FC;
  *(v8 + 24) = v7;
  *(v6 + 32) = sub_10019CA20;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10019CA28;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_10019CED4;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10019CA4C;
  *(v12 + 24) = v11;
  *(v6 + 64) = sub_10019CED4;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10019CA78;
  *(v14 + 24) = v13;
  *(v6 + 80) = sub_10019CED4;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10019CADC;
  *(v16 + 24) = v15;
  *(v6 + 96) = sub_10019CED4;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10019CB00;
  *(v18 + 24) = v17;
  *(v6 + 112) = sub_10019CED4;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10019CB08;
  *(v20 + 24) = v19;
  *(v6 + 128) = sub_10019CED4;
  *(v6 + 136) = v20;
  sub_10019BBB8(a1, v6, a2, a3);
}

uint64_t sub_10019C094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = sub_100572898();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = sub_100572898();
  [v3 setProperty:v8 forBodyKey:v9];

  sub_1000D3B98(0, &qword_1006E84A0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1000E23F0, v10);
}

void sub_10019C1F8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1001993CC();

  [a2 setXPSamplingForced:v13 & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    sub_10001036C(&aBlock, &qword_1006EA040);
    goto LABEL_21;
  }

  v14 = sub_100572898();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  sub_100009DCC(&unk_1006EB150);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = sub_1000EB89C(0xD000000000000017, 0x80000001005AED30);
      if (v17)
      {
        sub_100081F38(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = sub_1000EB89C(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        sub_100081F38(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = sub_1000EB89C(0xD000000000000021, 0x80000001005AED50), (v21 & 1) != 0))
    {
      sub_100081F38(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10007885C;
  *(&v27 + 1) = &unk_10068ED98;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void sub_10019C5A8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1001994A8();

  isa = sub_100572E68().super.super.isa;
  v15 = sub_100572898();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v35 = 0u;
LABEL_10:
    sub_10001036C(&aBlock, &qword_1006EA040);
    goto LABEL_25;
  }

  v16 = sub_100572898();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v35 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

  sub_100009DCC(&unk_1006EB150);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v35 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v31 + 16))
  {
    v18 = sub_1000EB89C(0xD000000000000026, 0x80000001005AEC80);
    if (v19)
    {
      sub_100081F38(*(v31 + 56) + 32 * v18, &aBlock);
LABEL_14:
      sub_1000D3B98(0, &qword_1006E8048);
      v20 = swift_dynamicCast();
      v21 = v31;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v35 = 0u;
  sub_10001036C(&aBlock, &qword_1006EA040);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = sub_100572898();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v31 + 16) && (v24 = sub_1000EB89C(0xD00000000000001ELL, 0x80000001005AECB0), (v25 & 1) != 0))
  {
    sub_100081F38(*(v31 + 56) + 32 * v24, &aBlock);

    sub_1000D3B98(0, &qword_1006E8048);
    v26 = swift_dynamicCast();
    v27 = v31;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = sub_100572898();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v36 = a5;
  v37 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_10007885C;
  *(&v35 + 1) = &unk_10068ED48;
  v30 = _Block_copy(&aBlock);

  v33.receiver = a3;
  v33.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  objc_msgSendSuper2(&v33, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_10019CAA4()
{

  return swift_deallocObject();
}

uint64_t sub_10019CB34()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10019CB7C()
{

  return swift_deallocObject();
}

uint64_t sub_10019CC00()
{

  return swift_deallocObject();
}

unint64_t sub_10019CC54()
{
  result = qword_1006EBE80;
  if (!qword_1006EBE80)
  {
    sub_100010324(&unk_1006E9B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EBE80);
  }

  return result;
}

uint64_t sub_10019CCB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100574498() & 1;
  }
}

uint64_t sub_10019CD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019CD88()
{

  return swift_deallocObject();
}

id sub_10019CDC0()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == 5 || result == 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v51 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v41[-v10];
  v50 = v12;
  __chkstk_darwin(v9);
  v14 = &v41[-v13];
  if (qword_1006E4D38 != -1)
  {
    swift_once();
  }

  v15 = sub_10056DF88();
  sub_10000C49C(v15, qword_1006FC5D8);
  v16 = *(v6 + 16);
  v16(v14, a1, a2);
  v48 = v16;
  v49 = a1;
  v16(v11, a1, a2);
  v17 = sub_10056DF68();
  v18 = sub_100573448();
  v47 = v17;
  v19 = (a3 + 8);
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v46 = v20;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v20 = 136315395;
    v45 = *(a3 + 8);
    v43 = v19 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v21 = v45(a2, a3);
    v23 = v22;
    v42 = v18;
    v24 = *(v6 + 8);
    v24(v14, a2);
    v25 = sub_1000C9784(v21, v23, aBlock);

    v26 = v46;
    *(v46 + 1) = v25;
    *(v26 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v24(v11, a2);
    sub_10019D680();
    v27 = sub_1005726B8();
    v29 = v28;

    v30 = sub_1000C9784(v27, v29, aBlock);

    v31 = v46;
    *(v46 + 14) = v30;
    v32 = v47;
    _os_log_impl(&_mh_execute_header, v47, v42, "Send analytics event: %s, payload: %{private}s", v31, 0x16u);
    swift_arrayDestroy();

    v33 = v45;
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v11, a2);

    v34(v14, a2);
    v33 = *v19;
  }

  v35 = v49;
  v33(a2, a3);
  v36 = v51;
  v48(v51, v35, a2);
  v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  (*(v6 + 32))(v38 + v37, v36, a2);
  v39 = sub_100572898();

  aBlock[4] = sub_10019D600;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019D47C;
  aBlock[3] = &unk_10068F338;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100572898();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10019D47C;
  v8[3] = &unk_10068F360;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

Class sub_10019D47C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10019D680();
    v4.super.isa = sub_100572688().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10019D508()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FC5D8);
  sub_10000C49C(v0, qword_1006FC5D8);
  return sub_10056DF78();
}

uint64_t sub_10019D580()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_10019D668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10019D680()
{
  result = qword_1006E93C0;
  if (!qword_1006E93C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E93C0);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_100573C28();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_100573C28();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10019DA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  sub_10019DC38(a1, v1 + *(*v1 + 160));
  return v1;
}

uint64_t sub_10019DC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  result = *(v3 + 16);
  if (result)
  {
    [result responseEndTime];
    v11 = v10;
    result = swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      return sub_10019DD64(a2, a3);
    }
  }

  return result;
}

uint64_t sub_10019DD64(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 168);
  if ((*(v2 + v3) & 1) == 0)
  {
    v5 = result;
    *(v2 + v3) = 1;
    sub_100155E5C();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10019E824, v6);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    sub_10056CA98();
    sub_10056CA38();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    sub_10056CA98();
    sub_10056CA38();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    sub_10056CA98();
    sub_10056CA38();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    sub_10056CA98();
    sub_10056CA38();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    sub_10056CA98();
    sub_10056CA38();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      sub_10019DD64(countAndFlagsBits, object);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      sub_10056CA98();
      sub_10056CA38();
      v9 = v8;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v9;
      *(v1 + 96) = 0;
    }
  }

  sub_10019DD64(countAndFlagsBits, object);
}

void sub_10019E4F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1006E4D30 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = sub_100573C28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10019E620(v0 + *(*v0 + 20));
  return v0;
}

uint64_t sub_10019E620(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10019E6D4()
{
  result = sub_100573C28();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10019E7E4()
{

  return swift_deallocObject();
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_10019EA44(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10019EBC0()
{
  v1 = *v0;
  sub_100574678();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10019EC24()
{
  ApplicationCapabilities.Service.description.getter(*v0);
  sub_1005729F8();
}

Swift::Int sub_10019EC78()
{
  v1 = *v0;
  sub_100574678();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10019ECD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10019ED08@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019ED34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ApplicationCapabilities.Service.description.getter(*a1);
  v5 = v4;
  if (v3 == ApplicationCapabilities.Service.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      sub_1005728D8();
      v4 = sub_100572898();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

uint64_t ApplicationCapabilities.ratingWarning.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v5, "RatingWarning(");
  HIBYTE(v5[1]) = -18;
  *&v7 = 0x6C6F687365726874;
  *(&v7 + 1) = 0xEA00000000003D64;
  v8._countAndFlagsBits = sub_100574408();
  sub_100572A98(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  sub_100572A98(v9);
  v10._countAndFlagsBits = 0x6C6F687365726874;
  v10._object = 0xEA00000000003D64;
  sub_100572A98(v10);

  v6._countAndFlagsBits = 0x3D656C746974;
  v6._object = 0xE600000000000000;
  v7 = *(v0 + 8);
  v4 = *(v0 + 8);
  sub_10000CC8C(&v7, &v3, &unk_1006EB090);
  sub_100009DCC(&unk_1006EB090);
  v11._countAndFlagsBits = sub_100572978();
  sub_100572A98(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);
  sub_100572A98(v6);

  v4._countAndFlagsBits = 0x3D6567617373656DLL;
  v4._object = 0xE800000000000000;
  v6 = *(v0 + 24);
  v3 = *(v0 + 24);
  sub_10000CC8C(&v6, &v2, &unk_1006EB090);
  v13._countAndFlagsBits = sub_100572978();
  sub_100572A98(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  sub_100572A98(v14);
  sub_100572A98(v4);

  return v5[0];
}

uint64_t sub_10019F150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
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

Swift::Int sub_10019F264()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10019F33C()
{
  sub_1005729F8();
}

Swift::Int sub_10019F400()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10019F4D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10019F504(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
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

uint64_t sub_10019F5AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_100134A14(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter()
{
  v2._countAndFlagsBits = sub_100572D38();
  v2._object = v0;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);
  sub_100572A98(v2);

  sub_100573ED8(19);

  sub_100009DCC(&qword_1006E8230);
  v4._countAndFlagsBits = sub_100572978();
  sub_100572A98(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  sub_100572A98(v5);
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x80000001005AF080;
  sub_100572A98(v6);

  sub_100573ED8(21);

  v7._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  sub_100572A98(v8);
  v9._countAndFlagsBits = 0xD000000000000012;
  v9._object = 0x80000001005AF0A0;
  sub_100572A98(v9);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10019FBFC(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (sub_1001387A4(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_10019FE7C(a3, a6);
}

uint64_t sub_10019F874(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "orites";
      switch(*v3)
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
      switch(*v4)
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

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = sub_100574498();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10019FBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_100574498();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10019FE7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = sub_100574498();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}