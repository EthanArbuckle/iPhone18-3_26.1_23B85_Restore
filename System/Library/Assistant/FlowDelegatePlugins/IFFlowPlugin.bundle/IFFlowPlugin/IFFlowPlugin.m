uint64_t type metadata accessor for IFFlowError()
{
  result = qword_81390;
  if (!qword_81390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26DC()
{
  sub_6C0AC();
  if (v0 <= 0x3F)
  {
    sub_6C83C();
    if (v1 <= 0x3F)
    {
      sub_288C();
      if (v2 <= 0x3F)
      {
        sub_28BC();
        if (v3 <= 0x3F)
        {
          sub_6CCBC();
          if (v4 <= 0x3F)
          {
            sub_6B7AC();
            if (v5 <= 0x3F)
            {
              sub_6BF6C();
              if (v6 <= 0x3F)
              {
                sub_28EC();
                if (v7 <= 0x3F)
                {
                  sub_2A40(319, &qword_813B8, sub_291C);
                  if (v8 <= 0x3F)
                  {
                    sub_2980();
                    if (v9 <= 0x3F)
                    {
                      sub_2A40(319, &qword_813D8, type metadata accessor for AFLocationServiceError);
                      if (v10 <= 0x3F)
                      {
                        sub_2A40(319, &qword_813E0, sub_2A8C);
                        if (v11 <= 0x3F)
                        {
                          sub_2AF0();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
      }
    }
  }
}

void *sub_288C()
{
  result = qword_813A0;
  if (!qword_813A0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_813A0);
  }

  return result;
}

void *sub_28BC()
{
  result = qword_813A8;
  if (!qword_813A8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_813A8);
  }

  return result;
}

void *sub_28EC()
{
  result = qword_813B0;
  if (!qword_813B0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_813B0);
  }

  return result;
}

unint64_t sub_291C()
{
  result = qword_813C0;
  if (!qword_813C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_813C0);
  }

  return result;
}

void sub_2980()
{
  if (!qword_813C8)
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_813C8);
    }
  }
}

uint64_t sub_29F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2A8C()
{
  if (!qword_813E8)
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    v0 = sub_6D4DC();
    if (!v1)
    {
      atomic_store(v0, &qword_813E8);
    }
  }
}

void *sub_2AF0()
{
  result = qword_813F0;
  if (!qword_813F0)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_813F0);
  }

  return result;
}

unint64_t sub_2B20()
{
  v1 = sub_6BF6C();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  v3 = (__chkstk_darwin)();
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v43 - v5;
  v6 = sub_6CCBC();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6C83C();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6C0AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IFFlowError();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4394(v0, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = v45;
      (*(v45 + 32))(v13, v22, v10);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(94);
      v66._countAndFlagsBits = 0xD00000000000005CLL;
      v66._object = 0x800000000006E7B0;
      sub_6D33C(v66);
      sub_6D5AC();
      v39 = v52;
      (*(v40 + 8))(v13, v10);
      return v39;
    case 2u:
      v33 = *v22;
      v34 = v22[1];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(70);
      v35 = "pleted [implicit=true].";
      v36._countAndFlagsBits = 0xD000000000000044;
      goto LABEL_31;
    case 3u:
      if (*v22 == 1)
      {
        return 0xD000000000000057;
      }

      return 0xD000000000000043;
    case 4u:
      v28 = v46;
      v29 = v22;
      v30 = v47;
      (*(v46 + 32))(v9, v29, v47);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(68);
      v59._countAndFlagsBits = 0xD000000000000041;
      v59._object = 0x800000000006E660;
      sub_6D33C(v59);
      sub_6D5AC();
      v60._countAndFlagsBits = 46;
      v60._object = 0xE100000000000000;
      sub_6D33C(v60);
      goto LABEL_17;
    case 5u:
      v33 = *v22;
      v34 = v22[1];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(23);

      v52 = 0xD000000000000015;
      v53 = 0x800000000006E640;
      goto LABEL_32;
    case 6u:
      sub_43F8(v22);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(82);
      v69._countAndFlagsBits = 0xD000000000000050;
      v69._object = 0x800000000006E580;
      sub_6D33C(v69);
      v70._countAndFlagsBits = 0x7475706E49;
      v70._object = 0xE500000000000000;
      sub_6D33C(v70);
      return v52;
    case 7u:
      v9 = v48;
      v28 = v49;
      v38 = v22;
      v30 = v50;
      (*(v49 + 32))(v48, v38, v50);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(77);
      v64._countAndFlagsBits = 0xD00000000000004BLL;
      v64._object = 0x800000000006E530;
      sub_6D33C(v64);
      (*(v28 + 16))(v44, v9, v30);
      v65._countAndFlagsBits = sub_6D2EC();
      sub_6D33C(v65);

LABEL_17:
      v39 = v52;
      (*(v28 + 8))(v9, v30);
      return v39;
    case 8u:
      v33 = *v22;
      v34 = v22[1];
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(80);
      v35 = "F session was terminated.";
      v36._countAndFlagsBits = 0xD00000000000004ELL;
LABEL_31:
      v36._object = (v35 | 0x8000000000000000);
      sub_6D33C(v36);
LABEL_32:
      v73._countAndFlagsBits = v33;
      v73._object = v34;
      sub_6D33C(v73);
      goto LABEL_33;
    case 9u:
      v32 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(74);
      v62._countAndFlagsBits = 0xD000000000000048;
      v62._object = 0x800000000006E450;
      sub_6D33C(v62);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xAu:
      v42 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(79);
      v71._countAndFlagsBits = 0xD00000000000004DLL;
      v71._object = 0x800000000006E3B0;
      sub_6D33C(v71);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xBu:
      v27 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(76);
      v58._countAndFlagsBits = 0xD00000000000004ALL;
      v58._object = 0x800000000006E360;
      sub_6D33C(v58);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xCu:
      v31 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(79);
      v61._countAndFlagsBits = 0xD00000000000004DLL;
      v61._object = 0x800000000006E310;
      sub_6D33C(v61);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xDu:
      v41 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(84);
      v68._countAndFlagsBits = 0xD000000000000052;
      v68._object = 0x800000000006E2B0;
      sub_6D33C(v68);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xEu:
      v26 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(78);
      v57._countAndFlagsBits = 0xD00000000000004CLL;
      v57._object = 0x800000000006E260;
      sub_6D33C(v57);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xFu:
      v37 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(88);
      v63._countAndFlagsBits = 0xD000000000000056;
      v63._object = 0x800000000006E200;
      sub_6D33C(v63);
      swift_getErrorValue();
LABEL_28:
      v72._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v72);

      goto LABEL_29;
    case 0x10u:
      v25 = *v22;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(39);

      v52 = 0xD000000000000025;
      v53 = 0x800000000006E180;
      v51 = v25;
      type metadata accessor for AFLocationServiceError(0);
      sub_4040(&qword_81428, type metadata accessor for AFLocationServiceError);
      v56._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v56);

LABEL_33:

      return v52;
    case 0x11u:
      if (!*v22)
      {
        return 0xD000000000000018;
      }

      v52 = 0;
      v53 = 0xE000000000000000;
      swift_errorRetain();
      sub_6D57C(41);

      v52 = 0xD000000000000027;
      v53 = 0x800000000006E130;
      swift_getErrorValue();
      v67._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v67);

LABEL_29:

      return v52;
    case 0x12u:
      return 0xD00000000000001ELL;
    case 0x13u:
      return 0xD000000000000057;
    case 0x14u:
      return 0xD000000000000039;
    case 0x15u:
    case 0x16u:
      return 0xD000000000000047;
    case 0x17u:
      return 0xD000000000000017;
    case 0x18u:
      return 0xD000000000000022;
    case 0x19u:
      return 0xD000000000000014;
    case 0x1Au:
      return 0xD00000000000001BLL;
    case 0x1Bu:
      return 0xD00000000000001DLL;
    case 0x1Cu:
      return 0xD00000000000001ALL;
    case 0x1Du:
      return 0xD00000000000001ELL;
    default:
      (*(v15 + 32))(v18, v22, v14);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_6D57C(76);
      v54._countAndFlagsBits = 0xD00000000000004ALL;
      v54._object = 0x800000000006E810;
      sub_6D33C(v54);
      v55._countAndFlagsBits = sub_6C07C();
      sub_6D33C(v55);

      v23 = v52;
      (*(v15 + 8))(v18, v14);
      return v23;
  }
}

uint64_t sub_37B8()
{
  v1 = type metadata accessor for IFFlowError();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4394(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_43F8(v4);
      result = 1;
      break;
    case 2:
      sub_43F8(v4);
      result = 2;
      break;
    case 3:
    case 24:
    case 25:
    case 26:
      return result;
    case 4:
      sub_43F8(v4);
      result = 4;
      break;
    case 5:
      sub_43F8(v4);
      result = 6;
      break;
    case 6:
      sub_43F8(v4);
      result = 8;
      break;
    case 7:
      sub_43F8(v4);
      result = 9;
      break;
    case 8:
      sub_43F8(v4);
      result = 10;
      break;
    case 9:
      sub_43F8(v4);
      result = 12;
      break;
    case 10:
      sub_43F8(v4);
      result = 14;
      break;
    case 11:
      sub_43F8(v4);
      result = 15;
      break;
    case 12:
      sub_43F8(v4);
      result = 16;
      break;
    case 13:
      sub_43F8(v4);
      result = 17;
      break;
    case 14:
      sub_43F8(v4);
      result = 18;
      break;
    case 15:
      sub_43F8(v4);
      result = 19;
      break;
    case 16:
      sub_43F8(v4);
      result = 21;
      break;
    case 17:
      sub_43F8(v4);
      result = 23;
      break;
    case 18:
      result = 27;
      break;
    case 19:
      result = 7;
      break;
    case 20:
      result = 11;
      break;
    case 21:
      result = 13;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 22;
      break;
    case 27:
      result = 28;
      break;
    case 28:
      result = 29;
      break;
    case 29:
      result = 30;
      break;
    default:
      sub_43F8(v4);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_3A48()
{
  sub_6D57C(31);

  strcpy(v1, "Error code: ");
  sub_37B8();
  v2._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v2);

  v3._countAndFlagsBits = 0x697263736564202CLL;
  v3._object = 0xEF203A6E6F697470;
  sub_6D33C(v3);
  v4._countAndFlagsBits = sub_2B20();
  sub_6D33C(v4);

  return v1[0];
}

uint64_t sub_3B54(uint64_t a1)
{
  v2 = sub_4040(&qword_81430, type metadata accessor for AFLocationServiceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_3BC0(uint64_t a1)
{
  v2 = sub_4040(&qword_81430, type metadata accessor for AFLocationServiceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_3C2C(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_3CA8(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_3D14(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_3D80(void *a1, uint64_t a2)
{
  v4 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_3E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_3EB0()
{
  v2 = *v0;
  sub_6D6BC();
  sub_6D25C();
  return sub_6D6DC();
}

void *sub_3F10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4040(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_41BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_4254()
{
  result = qword_81458;
  if (!qword_81458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81458);
  }

  return result;
}

uint64_t sub_4394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFFlowError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43F8(uint64_t a1)
{
  v2 = type metadata accessor for IFFlowError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_5708(&qword_814F0, &qword_71350);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v58 - v7;
  v8 = sub_6C95C();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_6BF0C();
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v61);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v18 = sub_6C54C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6BF6C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_4B4CC(v22);
  if ((*(v19 + 88))(v22, v18) == enum case for StatementOutcome.failure(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v24 + 32))(v27, v22, v23);
    sub_6BF5C();
    v28 = v61;
    (*(v11 + 104))(v15, enum case for ActionFailure.Failure.actionCanceled(_:), v61);
    v29 = sub_6BEFC();
    v30 = *(v11 + 8);
    v30(v15, v28);
    v30(v17, v28);
    (*(v24 + 8))(v27, v23);
    if (v29)
    {
      v31 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    (*(v19 + 8))(v22, v18);
  }

  v31 = 0;
LABEL_6:
  v32 = sub_6C4DC();
  if (*(v32 + 16))
  {
    v34 = v62;
    v33 = v63;
    v35 = v64;
    (*(v63 + 16))(v62, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v64);

    v36 = sub_6C93C();
    v38 = v37;
    (*(v33 + 8))(v34, v35);
    if (v38)
    {
      if (v36 == 0xD000000000000033 && v38 == 0x800000000006E860 || (sub_6D63C() & 1) != 0)
      {
        v39 = enum case for RequestSummary.ExecutionSource.searchTool(_:);
        v40 = sub_6CD2C();
        (*(*(v40 - 8) + 104))(v66, v39, v40);
      }

      if (v36 == 0xD000000000000062 && 0x800000000006E8A0 == v38 || (sub_6D63C() & 1) != 0)
      {

        v46 = &enum case for RequestSummary.PrescribedGenAITool.generateRichContentFromMediaIntentTool(_:);
      }

      else if (v36 == 0xD000000000000059 && 0x800000000006E910 == v38 || (sub_6D63C() & 1) != 0 || v36 == 0xD000000000000053 && 0x800000000006E970 == v38 || (sub_6D63C() & 1) != 0)
      {

        v46 = &enum case for RequestSummary.PrescribedGenAITool.generateRichContentTool(_:);
      }

      else
      {
        if (v36 == 0xD00000000000005FLL && 0x800000000006E9D0 == v38)
        {
        }

        else
        {
          v56 = sub_6D63C();

          if ((v56 & 1) == 0)
          {
            v57 = sub_6CD3C();
            v50 = v59;
            (*(*(v57 - 8) + 56))(v59, 1, 1, v57);
            goto LABEL_27;
          }
        }

        v46 = &enum case for RequestSummary.PrescribedGenAITool.generateKnowledgeResponseIntentTool(_:);
      }

      v47 = *v46;
      v48 = sub_6CD3C();
      v49 = *(v48 - 8);
      v50 = v59;
      (*(v49 + 104))(v59, v47, v48);
      (*(v49 + 56))(v50, 0, 1, v48);
LABEL_27:
      v51 = v60;
      sub_5D90(v50, v60);
      v52 = sub_6CD0C();
      __chkstk_darwin(v52);
      *(&v58 - 2) = v51;
      *(&v58 - 8) = v31;
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
      v53 = v66;
      sub_6BE5C();
      v54 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
      v55 = sub_6CD2C();
      (*(*(v55 - 8) + 104))(v53, v54, v55);
      return sub_5E20(v51, &qword_814F0, &qword_71350);
    }
  }

  else
  {
  }

  v42 = sub_6CD0C();
  __chkstk_darwin(v42);
  *(&v58 - 16) = v31;
  sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
  v43 = v66;
  sub_6BE5C();
  v44 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
  v45 = sub_6CD2C();
  return (*(*(v45 - 8) + 104))(v43, v44, v45);
}

uint64_t sub_4D58(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_5708(&qword_814F0, &qword_71350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12[-v8];
  v10 = *a1;
  swift_getKeyPath();
  sub_5E80(a2, v9);
  sub_6BE2C();
  swift_getKeyPath();
  v12[15] = a3;
  return sub_6BE3C();
}

uint64_t sub_4E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6C27C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for MessagePayload.RequestPrescribedPlan.searchTool(_:))
  {
    if (v9 == enum case for MessagePayload.RequestPrescribedPlan.lowConfidenceKnowledgeTool(_:) || v9 == enum case for MessagePayload.RequestPrescribedPlan.textTool(_:) || v9 == enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:) || v9 == enum case for MessagePayload.RequestPrescribedPlan.displayTool(_:))
    {
      sub_6CD0C();
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
    }

    else
    {
      v15 = enum case for MessagePayload.RequestPrescribedPlan.knowledgeTool(_:);
      v16 = v9;
      sub_6CD0C();
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
      if (v16 != v15)
      {
        sub_6BE6C();
        sub_6BE4C();

        goto LABEL_15;
      }
    }

    sub_6BE5C();
LABEL_15:
    v14 = &enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
    goto LABEL_16;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v10 = sub_6D04C();
  sub_5CE4(v10, qword_839A0);
  v11 = sub_6D03C();
  v12 = sub_6D46C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Unexpected PrescribedPlan: .searchTool", v13, 2u);
  }

  v14 = &enum case for RequestSummary.ExecutionSource.unknown(_:);
LABEL_16:
  v17 = *v14;
  v18 = sub_6CD2C();
  (*(*(v18 - 8) + 104))(a2, v17, v18);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_533C(uint64_t *a1, unsigned int *a2)
{
  v4 = sub_5708(&qword_814F0, &qword_71350);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  swift_getKeyPath();
  v9 = *a2;
  v10 = sub_6CD3C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  return sub_6BE2C();
}

uint64_t sub_5468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_5708(&qword_814E0, &qword_6FF70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_6C27C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6C2CC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_5E20(v5, &qword_814E0, &qword_6FF70);
    sub_6CD0C();
    sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow);
    sub_6BE6C();
    sub_6BE4C();

    v11 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
    v12 = sub_6CD2C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a1, v11, v12);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_4E58(v10, a1);
    (*(v7 + 8))(v10, v6);
    v12 = sub_6CD2C();
    v13 = *(v12 - 8);
  }

  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t sub_5708(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

BOOL sub_5750()
{
  v0 = sub_5708(&qword_814F0, &qword_71350);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = &v32 - v2;
  v3 = sub_6CD3C();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  __chkstk_darwin(v3);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6CD0C();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6CD2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5708(&qword_814F8, &qword_6FFD8);
  v16 = *(v4 + 72);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_6FF60;
  v19 = v18 + v17;
  v37 = v5;
  v20 = *(v5 + 104);
  v20(v19, enum case for RequestSummary.PrescribedGenAITool.generateRichContentTool(_:), v3);
  v20(v19 + v16, enum case for RequestSummary.PrescribedGenAITool.generateKnowledgeResponseIntentTool(_:), v3);
  v20(v19 + 2 * v16, enum case for RequestSummary.PrescribedGenAITool.generateRichContentFromMediaIntentTool(_:), v3);
  (*(v12 + 16))(v15, v39, v11);
  v21 = (*(v12 + 88))(v15, v11);
  if (v21 == enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v12 + 96))(v15, v11);
    v23 = v34;
    v22 = v35;
    v24 = v36;
    (*(v35 + 32))(v34, v15, v36);
    v25 = v38;
    sub_6CCFC();
    v26 = v37;
    if ((*(v37 + 48))(v25, 1, v3) == 1)
    {
      (*(v22 + 8))(v23, v24);

      sub_5E20(v25, &qword_814F0, &qword_71350);
      return 0;
    }

    v30 = v33;
    (*(v26 + 32))(v33, v25, v3);
    v29 = sub_5BD8(v30, v18);

    (*(v26 + 8))(v30, v3);
    (*(v22 + 8))(v23, v24);
  }

  else
  {
    v27 = v21;
    v28 = enum case for RequestSummary.ExecutionSource.searchTool(_:);

    if (v27 != v28)
    {
      (*(v12 + 8))(v15, v11);
      return 0;
    }

    return 1;
  }

  return v29;
}

BOOL sub_5BD8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_6CD3C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_5F20(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool);
  }

  while ((sub_6D28C() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_5CE4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5D40(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  swift_getKeyPath();
  return sub_6BE3C();
}

uint64_t sub_5D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_814F0, &qword_71350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5708(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_814F0, &qword_71350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_6CCEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_5F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for IFFlowError();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_603C, 0, 0);
}

uint64_t sub_603C()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  sub_4394(v2, v1);
  v4 = sub_6D03C();
  v5 = sub_6D46C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_9764(&qword_81470, type metadata accessor for IFFlowError);
    swift_allocError();
    sub_4394(v7, v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    sub_43F8(v7);
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v4, v5, "IFFlow exiting with error %@", v9, 0xCu);
    sub_5E20(v10, &qword_81508, &unk_70260);
  }

  else
  {

    sub_43F8(v7);
  }

  v13 = v0[5];
  sub_4394(v0[3], v0[6]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
    case 0x12u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x1Au:
      goto LABEL_8;
    case 0xDu:
      v32 = v0[6];
      v33 = *v32;
      v34 = *(v32 + 8);

      if (v34 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    case 0xEu:
    case 0xFu:
      v26 = v0[6];
      v27 = *v26;
      v28 = *(v26 + 8);

      if (v28)
      {
LABEL_19:
        v20 = swift_task_alloc();
        v0[10] = v20;
        *v20 = v0;
        v21 = sub_6780;
LABEL_20:
        v20[1] = v21;
        v29 = v0[3];
        v30 = v0[4];
        v31 = v0[2];

        return sub_7E28(v31, v29);
      }

      else
      {
LABEL_24:
        v14 = swift_task_alloc();
        v0[11] = v14;
        *v14 = v0;
        v15 = sub_68AC;
LABEL_9:
        v14[1] = v15;
        v16 = v0[3];
        v17 = v0[4];
        v18 = v0[2];

        return sub_6C30(v18, v16);
      }

    case 0x10u:
    case 0x11u:
      sub_43F8(v0[6]);
      goto LABEL_17;
    case 0x13u:
    case 0x1Bu:
    case 0x1Cu:
      v22 = swift_task_alloc();
      v0[9] = v22;
      *v22 = v0;
      v22[1] = sub_6654;
      v23 = v0[3];
      v24 = v0[4];
      v25 = v0[2];

      return sub_7878(v25, v23);
    case 0x17u:
    case 0x18u:
    case 0x1Du:
      v20 = swift_task_alloc();
      v0[13] = v20;
      *v20 = v0;
      v21 = sub_6B04;
      goto LABEL_20;
    case 0x19u:
LABEL_17:
      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v15 = sub_69D8;
      goto LABEL_9;
    default:
      sub_43F8(v0[6]);
LABEL_8:
      v14 = swift_task_alloc();
      v0[8] = v14;
      *v14 = v0;
      v15 = sub_6528;
      goto LABEL_9;
  }
}

uint64_t sub_6528()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_6654()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_6780()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_68AC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_69D8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_6B04()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_6C30(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for IFFlow.State();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = type metadata accessor for IFFlowError();
  v3[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = sub_6B89C();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_6DAC, 0, 0);
}

uint64_t sub_6DAC()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_30BD4();
  v3 = sub_6CDBC();
  v5 = v4;

  v6 = *(v1 + 144);
  sub_4E710(v3, v5, v2);

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_6E94;
  v8 = v0[17];
  v9 = v0[8];
  v10 = v0[9];

  return sub_8040(v8, v9);
}

uint64_t sub_6E94()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_7604;
  }

  else
  {
    v3 = sub_6FA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6FA8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v4[10];
  v6 = v4[11];
  sub_99FC(v4 + 7, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for AceOutput;
  v7 = sub_97B0(v0 + 2);
  (*(v2 + 16))(v7, v1, v3);
  v8 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_70A8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v5, v6);
}

uint64_t sub_70A8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_7320;
  }

  else
  {
    v3 = sub_71BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_71BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_9964(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError);
  v13 = swift_allocError();
  sub_4394(v11, v14);
  *v7 = v13;
  *(v7 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v7);
  (*(v8 + 8))(v7, v10);
  sub_6B49C();

  v15 = v0[1];

  return v15();
}

uint64_t sub_7320()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  *v4 = v0[21];
  swift_storeEnumTagMultiPayload();
  sub_9764(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  swift_allocError();
  sub_9814(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_9964(v0 + 2);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v7 = sub_6D04C();
  sub_5CE4(v7, qword_839A0);
  swift_errorRetain();
  v8 = sub_6D03C();
  v9 = sub_6D46C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v8, v9, "Unable to publish error output due to %@.", v10, 0xCu);
    sub_5E20(v11, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v13 = v0[17];
  v14 = v0[13];
  v15 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  v21 = v0[7];
  v20 = v0[8];
  v22 = swift_allocError();
  sub_4394(v20, v23);
  *v16 = v22;
  *(v16 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v16);
  (*(v17 + 8))(v16, v19);
  sub_6B49C();

  v24 = v0[1];

  return v24();
}

uint64_t sub_7604()
{
  v1 = v0[19];
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = sub_6D04C();
  sub_5CE4(v2, qword_839A0);
  swift_errorRetain();
  v3 = sub_6D03C();
  v4 = sub_6D46C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Unable to publish error output due to %@.", v5, 0xCu);
    sub_5E20(v6, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v15 = v0[8];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError);
  v17 = swift_allocError();
  sub_4394(v15, v18);
  *v11 = v17;
  *(v11 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v11);
  (*(v12 + 8))(v11, v14);
  sub_6B49C();

  v19 = v0[1];

  return v19();
}

uint64_t sub_7878(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_6B1AC();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_6B12C();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = type metadata accessor for IFFlow.State();
  v3[11] = v13;
  v14 = *(v13 - 8);
  v3[12] = v14;
  v15 = *(v14 + 64) + 15;
  v3[13] = swift_task_alloc();
  v16 = type metadata accessor for IFFlowError();
  v3[14] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_7A50, 0, 0);
}

uint64_t sub_7A50()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[3];
  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  sub_4394(v2, v1);
  v4 = sub_6D03C();
  v5 = sub_6D45C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_9764(&qword_81470, type metadata accessor for IFFlowError);
    swift_allocError();
    sub_4394(v7, v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    sub_43F8(v7);
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v4, v5, "IFFlow non presentable error FallbackToSiriX %@", v9, 0xCu);
    sub_5E20(v10, &qword_81508, &unk_70260);
  }

  else
  {

    sub_43F8(v7);
  }

  v13 = v0[14];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v27 = v0[10];
  v28 = v0[5];
  v26 = v0[4];
  v21 = v0[3];
  v29 = v0[2];
  v30 = v0[15];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError);
  v22 = swift_allocError();
  sub_4394(v21, v23);
  *v15 = v22;
  *(v15 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v15);
  (*(v14 + 8))(v15, v16);
  sub_9764(&qword_81510, &type metadata accessor for SiriXRedirectContext);
  sub_6BE5C();
  (*(v18 + 16))(v19, v27, v17);
  (*(v20 + 104))(v19, enum case for FlowUnhandledReason.needsSiriXRedirect(_:), v28);
  sub_6B4BC();
  (*(v20 + 8))(v19, v28);
  (*(v18 + 8))(v27, v17);

  v24 = v0[1];

  return v24();
}

uint64_t sub_7E28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for IFFlow.State();
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_7F18, 0, 0);
}

uint64_t sub_7F18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  type metadata accessor for IFFlowError();
  sub_9764(&qword_81470, type metadata accessor for IFFlowError);
  v7 = swift_allocError();
  sub_4394(v5, v8);
  *v1 = v7;
  *(v1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v1);
  (*(v2 + 8))(v1, v4);
  sub_6B49C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_8040(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = sub_6B89C();
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();
  v7 = sub_6AE4C();
  v3[35] = v7;
  v8 = *(v7 - 8);
  v3[36] = v8;
  v9 = *(v8 + 64) + 15;
  v3[37] = swift_task_alloc();
  v10 = sub_6AF0C();
  v3[38] = v10;
  v11 = *(v10 - 8);
  v3[39] = v11;
  v12 = *(v11 + 64) + 15;
  v3[40] = swift_task_alloc();
  v13 = sub_6AEDC();
  v3[41] = v13;
  v14 = *(v13 - 8);
  v3[42] = v14;
  v15 = *(v14 + 64) + 15;
  v3[43] = swift_task_alloc();
  v16 = *(*(sub_5708(&qword_81520, &qword_708D0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v17 = sub_6B64C();
  v3[45] = v17;
  v18 = *(v17 - 8);
  v3[46] = v18;
  v19 = *(v18 + 64) + 15;
  v3[47] = swift_task_alloc();
  v20 = sub_6B55C();
  v3[48] = v20;
  v21 = *(v20 - 8);
  v3[49] = v21;
  v22 = *(v21 + 64) + 15;
  v3[50] = swift_task_alloc();
  v23 = type metadata accessor for IFFlowError();
  v3[51] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_8338, 0, 0);
}

uint64_t sub_8338()
{
  v1 = v0[51];
  sub_4394(v0[30], v0[52]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 24)
  {
    if (EnumCaseMultiPayload != 25)
    {
      if (EnumCaseMultiPayload == 26)
      {
        v3 = 3;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 16)
    {
      if (EnumCaseMultiPayload == 18)
      {
        v3 = 4;
        goto LABEL_11;
      }

LABEL_8:
      sub_43F8(v0[52]);
      v3 = 1;
      goto LABEL_11;
    }

    sub_43F8(v0[52]);
    v3 = 0;
  }

LABEL_11:
  v4 = v0[31];
  sub_6C9CC();
  sub_9878(v4 + 16, (v0 + 18));
  sub_6C9AC();
  sub_5E20((v0 + 18), &qword_81528, &qword_70070);
  v0[53] = sub_6C9BC();

  v5 = 0xD00000000000001ALL;
  v6 = "CommonErrors#GenericError";
  v7 = "IFFlow#CompanionNotFound";
  v8 = "ly *** IFFlow errored out at ";
  v9 = 0xD000000000000018;
  if (v3 != 3)
  {
    v9 = 0xD00000000000001BLL;
    v8 = "GenerateKnowledgeResponseIntent";
  }

  if (v3 == 2)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v10 = v9;
  }

  if (v3 != 2)
  {
    v7 = v8;
  }

  if (v3)
  {
    v5 = 0xD000000000000019;
    v6 = "NetworkAvailability#Timeout";
  }

  if (v3 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v10;
  }

  if (v3 <= 1)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  v0[54] = v11;
  v0[55] = v12;
  v13 = v0[30];
  v0[56] = sub_9540();
  v21 = objc_opt_self();
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[57] = v15;
  v16 = sub_6D2BC();
  v0[58] = v16;
  isa = sub_6D22C().super.isa;
  v0[59] = isa;
  sub_6C99C();
  v18 = sub_6D22C().super.isa;
  v0[60] = v18;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_8694;
  v19 = swift_continuation_init();
  v0[17] = sub_5708(&qword_81530, &qword_70078);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9694;
  v0[13] = &unk_7EF48;
  v0[14] = v19;
  [v21 execute:v15 catId:v16 parameters:isa globals:v18 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8694()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 488) = v3;
  if (v3)
  {
    v5 = *(v1 + 440);
    v4 = *(v1 + 448);

    v6 = sub_9308;
  }

  else
  {
    v6 = sub_87B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_87B4()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 440);
  v5 = *(v0 + 368);
  v107 = *(v0 + 376);
  v108 = *(v0 + 360);
  v114 = *(v0 + 352);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v118 = *(v0 + 232);

  v8 = [v7 print];
  v9 = sub_6D38C();

  v10 = *(v9 + 16);

  sub_2607C(0, 0xE000000000000000, v10);

  v11 = [v7 speak];
  sub_6D38C();

  v12 = [v7 print];
  sub_6D38C();

  (*(v5 + 104))(v107, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v108);

  v13 = [v7 meta];
  sub_6D23C();

  sub_6B54C();
  v14 = *(v6 + 48);
  sub_99FC((v6 + 16), *(v6 + 40));
  sub_6B2AC();
  v15 = sub_6B50C();
  (*(*(v15 - 8) + 56))(v114, 1, 1, v15);
  *(v0 + 184) = 0u;
  *(v0 + 216) = 0;
  *(v0 + 200) = 0u;
  sub_6B42C();
  sub_5E20(v0 + 184, &qword_81538, &qword_70080);
  sub_5E20(v114, &qword_81520, &qword_708D0);
  if (*(v6 + 193) != 1)
  {
    v40 = *(v0 + 440);
    v41 = *(v0 + 448);
    v42 = *(v0 + 424);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

LABEL_14:

    goto LABEL_47;
  }

  v119 = v7;
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = *(v0 + 288);
  v22 = *(v0 + 296);
  v109 = *(v0 + 304);
  v111 = *(v0 + 280);
  v115 = *(v0 + 232);
  v23 = [objc_allocWithZone(NSDateFormatter) init];
  v24 = sub_6D2BC();
  [v23 setDateFormat:v24];

  sub_6AECC();
  isa = sub_6AEBC().super.isa;
  (*(v17 + 8))(v16, v18);
  [v23 setLocale:isa];

  sub_6AEFC();
  v26 = sub_6AEEC().super.isa;
  (*(v20 + 8))(v19, v109);
  [v23 setCalendar:v26];

  sub_6AE3C();
  v27 = sub_6AE2C().super.isa;
  (*(v21 + 8))(v22, v111);
  v110 = v23;
  v28 = [v23 stringFromDate:v27];

  v29 = sub_6D2CC();
  v31 = v30;

  v32 = sub_6B88C();
  v33 = v32;
  v106._countAndFlagsBits = v29;
  v106._object = v31;
  if (!(v32 >> 62))
  {
    v34 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    if (v34)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

LABEL_43:
  v34 = sub_6D5CC();
  if (!v34)
  {
LABEL_44:
    v80 = *(v0 + 440);
    v79 = *(v0 + 448);
    v81 = *(v0 + 424);
    v83 = *(v0 + 392);
    v82 = *(v0 + 400);
    v84 = *(v0 + 384);

    (*(v83 + 8))(v82, v84);
LABEL_47:
    v89 = *(v0 + 416);
    v90 = *(v0 + 400);
    v91 = *(v0 + 376);
    v93 = *(v0 + 344);
    v92 = *(v0 + 352);
    v94 = *(v0 + 320);
    v95 = *(v0 + 296);
    v96 = *(v0 + 272);

    v97 = *(v0 + 8);

    return v97();
  }

LABEL_4:
  v35 = 0;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = sub_6D58C();
    }

    else
    {
      if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_40;
      }

      v36 = *(v33 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      break;
    }

    ++v35;
    if (v38 == v34)
    {
      goto LABEL_44;
    }
  }

  v43 = v39;

  v105 = v43;
  result = [v43 dialogs];
  if (result)
  {
    v45 = result;
    v47 = *(v0 + 440);
    v46 = *(v0 + 448);

    v33 = sub_99B0();
    v48 = sub_6D38C();

    v49 = v48;
    v50 = v119;
    if (v48 >> 62)
    {
      v51 = sub_6D5CC();
      if (v51)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v51 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
      if (v51)
      {
LABEL_18:
        v52 = 0;
        v112 = v48 & 0xFFFFFFFFFFFFFF8;
        v116 = v48 & 0xC000000000000001;
        do
        {
          if (v116)
          {
            v53 = sub_6D58C();
          }

          else
          {
            if (v52 >= *(v112 + 16))
            {
              goto LABEL_42;
            }

            v53 = *(v49 + 8 * v52 + 32);
          }

          v54 = v53;
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_41;
          }

          v56 = [v53 dialogCategory];
          if (v56)
          {
            v57 = v56;
            v33 = v49;
            v58 = sub_6D2CC();
            v60 = v59;

            if (v58 == 0x6C61746146 && v60 == 0xE500000000000000)
            {

              v50 = v119;
LABEL_33:

              v63 = [v54 content];
              if (!v63)
              {
                v70 = *(v0 + 424);
                (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

                goto LABEL_14;
              }

              v64 = v63;
              sub_6D57C(57);
              v65 = [v64 text];
              if (v65)
              {
                v66 = v65;
                v67 = sub_6D2CC();
                v69 = v68;
              }

              else
              {
                v69 = 0xEB0000000065736ELL;
                v67 = 0x6F70736572206F4ELL;
              }

              v102 = *(v0 + 424);
              v103 = *(v0 + 392);
              v104 = *(v0 + 384);
              v71 = *(v0 + 264);
              v100 = *(v0 + 352);
              v101 = *(v0 + 272);
              v113 = *(v0 + 400);
              v117 = *(v0 + 256);
              v72 = *(v0 + 240);
              v98 = *(v0 + 408);
              v99 = *(v0 + 232);
              v121._countAndFlagsBits = v67;
              v121._object = v69;
              sub_6D33C(v121);

              v122._countAndFlagsBits = 0xD00000000000002DLL;
              v122._object = 0x800000000006EA90;
              sub_6D33C(v122);
              sub_6D33C(v106);

              v123._countAndFlagsBits = 0x206874697720;
              v123._object = 0xE600000000000000;
              sub_6D33C(v123);
              sub_9764(&qword_81470, type metadata accessor for IFFlowError);
              v124._countAndFlagsBits = sub_6D66C();
              sub_6D33C(v124);

              v73 = sub_6D2BC();

              [v64 setText:v73];

              [v54 setContent:v64];
              sub_5708(&qword_81548, &qword_70088);
              v74 = swift_allocObject();
              *(v74 + 16) = xmmword_6FFF0;
              *(v74 + 32) = v54;
              v75 = v54;
              v76 = sub_6D37C().super.isa;

              [v105 setDialogs:v76];

              v77 = swift_allocObject();
              *(v77 + 16) = xmmword_6FFF0;
              *(v77 + 32) = v105;
              v78 = v37;
              sub_6B83C();
              sub_6B84C();
              sub_6B85C();

              (*(v103 + 8))(v113, v104);
              (*(v71 + 8))(v99, v117);
              (*(v71 + 32))(v99, v101, v117);
              goto LABEL_47;
            }

            v62 = sub_6D63C();

            v50 = v119;
            v49 = v33;
            if (v62)
            {
              goto LABEL_33;
            }
          }

          ++v52;
        }

        while (v55 != v51);
      }
    }

    v85 = *(v0 + 424);
    v87 = *(v0 + 392);
    v86 = *(v0 + 400);
    v88 = *(v0 + 384);

    (*(v87 + 8))(v86, v88);
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_9308()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[57];
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[50];
  v9 = v0[47];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[34];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[61];

  return v10();
}

uint64_t sub_9410(uint64_t *a1)
{
  v2 = sub_5708(&qword_81518, &qword_70030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_getKeyPath();
  v7 = enum case for SiriXRedirectContext.RedirectReason.ifFlowError(_:);
  v8 = sub_6B10C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v7, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  return sub_6BE3C();
}

void *sub_9540()
{
  v1 = type metadata accessor for IFFlowError();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4394(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v5 = *v4;
    sub_5708(&qword_81550, &qword_70090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_70000;
    v9[1] = 0xD000000000000014;
    v9[2] = 0x800000000006EB40;
    sub_6D54C();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v5;
    v7 = sub_25F40(inited);
    swift_setDeallocating();
    sub_5E20(inited + 32, &qword_81558, &qword_70098);
    return v7;
  }

  else
  {
    sub_43F8(v4);
    return &_swiftEmptyDictionarySingleton;
  }
}

uint64_t sub_9694(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_99FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_5708(&qword_813D0, qword_6FC50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_9764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_97B0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_9814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFFlowError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_98EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9964(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_99B0()
{
  result = qword_81540;
  if (!qword_81540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81540);
  }

  return result;
}

void *sub_99FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_9A40()
{
  v0 = sub_6D04C();
  sub_9AC8(v0, qword_839A0);
  sub_5CE4(v0, qword_839A0);
  sub_9B2C();
  sub_6D4CC();
  return sub_6D05C();
}

uint64_t *sub_9AC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_9B2C()
{
  result = qword_81560;
  if (!qword_81560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81560);
  }

  return result;
}

uint64_t sub_9B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21[1] = a1;
  v5 = sub_5708(&qword_81588, &qword_700C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = sub_6C04C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C14C(a2, v11, &qword_81588, &qword_700C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_5E20(v11, &qword_81588, &qword_700C0);

    sub_6C0CC();
    v17 = &enum case for MessagePayload.RequestContent.text(_:);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v13 + 16))(v9, v16, v12);
    (*(v13 + 56))(v9, 0, 1, v12);

    sub_6C0DC();
    (*(v13 + 8))(v16, v12);
    v17 = &enum case for MessagePayload.RequestContent.speech(_:);
  }

  v18 = *v17;
  v19 = sub_6C0EC();
  return (*(*(v19 - 8) + 104))(a3, v18, v19);
}

uint64_t sub_9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5708(&qword_81580, &unk_70F80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v31 - v7;
  v9 = sub_5708(&qword_81568, &qword_700A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v31 - v11;
  v13 = sub_5708(&qword_81570, &qword_700B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v31 - v15;
  v17 = sub_5708(&unk_82030, &qword_70370);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v31 - v19;
  v21 = sub_5708(&qword_814E0, &qword_6FF70);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v31 - v23;
  sub_6C32C();
  v25 = sub_6C27C();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  sub_6C2DC();
  v26 = sub_6AE9C();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  sub_6C2FC();
  v27 = sub_6C2AC();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  sub_6C30C();
  v28 = sub_6CFCC();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v12, a2, v28);
  (*(v29 + 56))(v12, 0, 1, v28);
  sub_6C2BC();
  sub_C14C(a3, v8, &qword_81580, &unk_70F80);
  return sub_6C2EC();
}

uint64_t sub_A17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81568, &qword_700A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_5708(&qword_81570, &qword_700B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_5708(&unk_82030, &qword_70370);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_5708(&qword_814E0, &qword_6FF70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v32 - v18;
  v20 = sub_6C0EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_6C89C();
  (*(*(v25 - 8) + 16))(v24, a1, v25);
  (*(v21 + 104))(v24, enum case for MessagePayload.RequestContent.promptResolution(_:), v20);
  sub_6C31C();
  sub_6C32C();
  v26 = sub_6C27C();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  sub_6C2DC();
  v27 = sub_6AE9C();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  sub_6C2FC();
  v28 = sub_6C2AC();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_6C30C();
  v29 = sub_6CFCC();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v7, a2, v29);
  (*(v30 + 56))(v7, 0, 1, v29);
  return sub_6C2BC();
}

uint64_t sub_A53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v176 = a6;
  v207 = a4;
  v206 = a3;
  v220 = a2;
  v216 = a1;
  v211 = a7;
  v180 = sub_6C24C();
  v179 = *(v180 - 8);
  v8 = *(v179 + 64);
  __chkstk_darwin(v180);
  v187 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_6C22C();
  v185 = *(v186 - 8);
  v10 = *(v185 + 64);
  __chkstk_darwin(v186);
  v214 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_6C20C();
  v196 = *(v197 - 8);
  v12 = *(v196 + 64);
  __chkstk_darwin(v197);
  v195 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6C0EC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v203 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6C33C();
  v209 = *(v17 - 8);
  v210 = v17;
  v18 = *(v209 + 64);
  v19 = __chkstk_darwin(v17);
  v178 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v184 = &v173 - v22;
  v23 = __chkstk_darwin(v21);
  v194 = &v173 - v24;
  __chkstk_darwin(v23);
  v202 = &v173 - v25;
  v26 = sub_6C27C();
  v204 = *(v26 - 8);
  v205 = v26;
  v27 = *(v204 + 64);
  v28 = __chkstk_darwin(v26);
  v177 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v183 = &v173 - v31;
  v32 = __chkstk_darwin(v30);
  v193 = &v173 - v33;
  __chkstk_darwin(v32);
  v200 = &v173 - v34;
  v201 = sub_6C26C();
  v199 = *(v201 - 8);
  v35 = *(v199 + 64);
  __chkstk_darwin(v201);
  v213 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_6CD4C();
  v217 = *(v219 - 8);
  v37 = *(v217 + 64);
  v38 = __chkstk_darwin(v219);
  v212 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v218 = &v173 - v40;
  v191 = sub_6CCBC();
  v190 = *(v191 - 8);
  v41 = *(v190 + 64);
  __chkstk_darwin(v191);
  v189 = &v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_6CC8C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v173 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_6CC6C();
  v188 = *(v48 - 8);
  v49 = *(v188 + 64);
  __chkstk_darwin(v48);
  v51 = &v173 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6CC9C();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v181 = &v173 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v58 = &v173 - v57;
  v59 = sub_5708(&qword_81578, &qword_700B8);
  v60 = *(*(v59 - 8) + 64);
  v61 = __chkstk_darwin(v59 - 8);
  v175 = &v173 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __chkstk_darwin(v61);
  v182 = &v173 - v64;
  v65 = __chkstk_darwin(v63);
  v192 = &v173 - v66;
  v67 = __chkstk_darwin(v65);
  v198 = &v173 - v68;
  __chkstk_darwin(v67);
  v221 = &v173 - v69;
  v215 = a5;
  sub_6CCAC();
  v70 = (*(v53 + 88))(v58, v52);
  if (v70 == enum case for AjaxMetadata.AjaxQuery.implicit(_:))
  {
    (*(v53 + 96))(v58, v52);
    (*(v44 + 32))(v47, v58, v43);
    v71 = sub_6CC7C();
    v73 = v72;
    (*(v44 + 8))(v47, v43);
    if (v73)
    {
      v216 = v71;
      v220 = v73;
    }

    else
    {
    }

    v93 = v218;
    v94 = v219;
    v77 = v217;
    v95 = v213;
    v78 = v214;
    v96 = v212;
    v97 = sub_6CCDC();
    (*(*(v97 - 8) + 56))(v221, 1, 1, v97);
  }

  else if (v70 == enum case for AjaxMetadata.AjaxQuery.explicit(_:))
  {
    (*(v53 + 96))(v58, v52);
    v74 = v188;
    (*(v188 + 32))(v51, v58, v48);
    v75 = sub_6CC4C();
    v77 = v217;
    v78 = v214;
    if (v76)
    {
      v216 = v75;
      v220 = v76;
    }

    else
    {
    }

    v94 = v219;
    v96 = v212;
    sub_6CC5C();
    (*(v74 + 8))(v51, v48);
    v93 = v218;
    v95 = v213;
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v79 = sub_6D04C();
    sub_5CE4(v79, qword_839A0);
    v80 = v190;
    v81 = v189;
    v82 = v191;
    (*(v190 + 16))(v189, v215, v191);
    v83 = sub_6D03C();
    v84 = sub_6D46C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      LODWORD(v188) = v84;
      v86 = v81;
      v87 = v85;
      v174 = swift_slowAlloc();
      v222 = v174;
      *v87 = 136315138;
      sub_6CCAC();
      v88 = sub_6D2EC();
      v89 = v82;
      v91 = v90;
      (*(v80 + 8))(v86, v89);
      v92 = sub_1076C(v88, v91, &v222);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_0, v83, v188, "Unhandled genAI query type: %s", v87, 0xCu);
      sub_9964(v174);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    v77 = v217;
    v93 = v218;
    v95 = v213;
    v78 = v214;
    v98 = sub_6CCDC();
    (*(*(v98 - 8) + 56))(v221, 1, 1, v98);
    v99 = *(v53 + 8);

    v99(v58, v52);
    v94 = v219;
    v96 = v212;
  }

  sub_6CC3C();
  (*(v77 + 16))(v96, v93, v94);
  v100 = (*(v77 + 88))(v96, v94);
  if (v100 == enum case for PrescribedAjaxTool.generateRichContentTool(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v101 = sub_6D04C();
    sub_5CE4(v101, qword_839A0);
    v102 = sub_6D03C();
    v103 = sub_6D45C();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v201;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v102, v103, "IFFlow: #PrescribedPlanDecision running the generateRichContentTool", v106, 2u);
    }

    v107 = v198;
    sub_C14C(v221, v198, &qword_81578, &qword_700B8);
    v108 = sub_6CCDC();
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v107, 1, v108) == 1)
    {
      sub_5E20(v107, &qword_81578, &qword_700B8);
    }

    else
    {
      sub_6CCCC();
      (*(v109 + 8))(v107, v108);
    }

    v119 = v216;
    sub_6C25C();
    v120 = v95;
    v121 = v199;
    v122 = v200;
    (*(v199 + 16))(v200, v120, v105);
    v124 = v204;
    v123 = v205;
    (*(v204 + 104))(v122, enum case for MessagePayload.RequestPrescribedPlan.textTool(_:), v205);
    sub_9B78(v119, v206, v203);
    v125 = v105;
    v126 = v202;
    sub_6C31C();
    v127 = v208;
    sub_BDE0(v126, v122, v207);
    if (!v127)
    {

      (*(v124 + 8))(v122, v123);
      (*(v121 + 8))(v120, v125);
      v77 = v217;
LABEL_34:
      v128 = v218;
      v129 = v219;
LABEL_45:
      (*(v77 + 8))(v128, v129);
      sub_5E20(v221, &qword_81578, &qword_700B8);
      return (*(v209 + 32))(v211, v126, v210);
    }

    result = (*(v209 + 8))(v126, v210);
  }

  else
  {
    if (v100 == enum case for PrescribedAjaxTool.generateRichContentFromMediaIntentTool(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v110 = sub_6D04C();
      sub_5CE4(v110, qword_839A0);
      v111 = sub_6D03C();
      v112 = sub_6D45C();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v196;
      if (v113)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_0, v111, v112, "IFFlow: #PrescribedPlanDecision running the generateRichContentFromMediaIntentTool", v115, 2u);
      }

      v116 = v192;
      sub_C14C(v221, v192, &qword_81578, &qword_700B8);
      v117 = sub_6CCDC();
      v118 = *(v117 - 8);
      if ((*(v118 + 48))(v116, 1, v117) == 1)
      {
        sub_5E20(v116, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v118 + 8))(v116, v117);
      }

      v137 = v195;
      v138 = v216;
      sub_6C1FC();
      v139 = v193;
      v140 = v197;
      (*(v114 + 16))(v193, v137, v197);
      v142 = v204;
      v141 = v205;
      (*(v204 + 104))(v139, enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:), v205);
      sub_9B78(v138, v206, v203);
      v143 = v194;
      sub_6C31C();
      v144 = v208;
      sub_BDE0(v143, v139, v207);
      if (!v144)
      {

        (*(v142 + 8))(v139, v141);
        (*(v114 + 8))(v137, v140);
        v126 = v143;
        v128 = v218;
        v129 = v219;
        v77 = v217;
        goto LABEL_45;
      }
    }

    else
    {
      if (v100 == enum case for PrescribedAjaxTool.generateImageIntentTool(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v130 = sub_6D04C();
        sub_5CE4(v130, qword_839A0);
        v131 = sub_6D03C();
        v132 = sub_6D45C();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_0, v131, v132, "IFFlow: #PrescribedPlanDecision running the generateImageIntentTool", v133, 2u);
        }

        v134 = v182;
        sub_C14C(v221, v182, &qword_81578, &qword_700B8);
        v135 = sub_6CCDC();
        v136 = *(v135 - 8);
        if ((*(v136 + 48))(v134, 1, v135) == 1)
        {
          sub_5E20(v134, &qword_81578, &qword_700B8);
        }

        else
        {
          sub_6CCCC();
          (*(v136 + 8))(v134, v135);
        }

        v154 = v216;
        sub_6C21C();
        v155 = v78;
        v156 = v185;
        v157 = v183;
        v158 = v186;
        (*(v185 + 16))(v183, v155, v186);
        v160 = v204;
        v159 = v205;
        (*(v204 + 104))(v157, enum case for MessagePayload.RequestPrescribedPlan.displayTool(_:), v205);
        sub_9B78(v154, v206, v203);
        v161 = v184;
        sub_6C31C();
        v162 = v208;
        sub_BDE0(v161, v157, v207);
        if (!v162)
        {

          (*(v160 + 8))(v157, v159);
          (*(v156 + 8))(v214, v158);
          v126 = v161;
          goto LABEL_34;
        }

        result = (*(v209 + 8))(v161, v210);
        goto LABEL_63;
      }

      if (v100 != enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:))
      {

        v163 = v176;
        *v176 = 0xD00000000000003ALL;
        v163[1] = 0x800000000006EB90;
        type metadata accessor for IFFlowError();
        swift_storeEnumTagMultiPayload();
        sub_C0F4();
        swift_willThrowTypedImpl();
        v164 = *(v77 + 8);
        v164(v93, v94);
        sub_5E20(v221, &qword_81578, &qword_700B8);
        return (v164)(v96, v94);
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v146 = sub_6D04C();
      sub_5CE4(v146, qword_839A0);
      v147 = sub_6D03C();
      v148 = sub_6D45C();
      v149 = os_log_type_enabled(v147, v148);
      v150 = v175;
      if (v149)
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_0, v147, v148, "IFFlow: #PrescribedPlanDecision running the generateKnowledgeResponseIntentTool", v151, 2u);
      }

      sub_C14C(v221, v150, &qword_81578, &qword_700B8);
      v152 = sub_6CCDC();
      v153 = *(v152 - 8);
      if ((*(v153 + 48))(v150, 1, v152) == 1)
      {
        sub_5E20(v150, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v153 + 8))(v150, v152);
      }

      v165 = v187;
      v166 = v216;
      sub_6C23C();
      v167 = v179;
      v168 = v177;
      v169 = v180;
      (*(v179 + 16))(v177, v165);
      v171 = v204;
      v170 = v205;
      (*(v204 + 104))(v168, enum case for MessagePayload.RequestPrescribedPlan.knowledgeTool(_:), v205);
      sub_9B78(v166, v206, v203);
      v143 = v178;
      sub_6C31C();
      v172 = v208;
      sub_BDE0(v143, v168, v207);
      if (!v172)
      {

        (*(v171 + 8))(v168, v170);
        (*(v167 + 8))(v187, v169);
        v126 = v143;
        goto LABEL_34;
      }
    }

    result = (*(v209 + 8))(v143, v210);
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5708(&qword_81568, &qword_700A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_5708(&qword_81570, &qword_700B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_5708(&unk_82030, &qword_70370);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_5708(&qword_814E0, &qword_6FF70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v28 - v19;
  sub_6C32C();
  v21 = sub_6C27C();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v20, a2, v21);
  (*(v22 + 56))(v20, 0, 1, v21);
  sub_6C2DC();
  v23 = sub_6AE9C();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_6C2FC();
  v24 = sub_6C2AC();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  sub_6C30C();
  v25 = sub_6CFCC();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v8, a3, v25);
  (*(v26 + 56))(v8, 0, 1, v25);
  return sub_6C2BC();
}

unint64_t sub_C0F4()
{
  result = qword_81470;
  if (!qword_81470)
  {
    type metadata accessor for IFFlowError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81470);
  }

  return result;
}

uint64_t sub_C14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5708(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_C1CC()
{
  v0 = sub_6B7EC();
  v40 = *(v0 - 8);
  v1 = *(v40 + 64);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6C9FC();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6B3AC();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6B3DC();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6B7FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = v40;
    (*(v40 + 32))(v3, v19, v0);
    if (sub_6B7CC() == 0xD00000000000001FLL && 0x800000000006DF40 == v22)
    {
      goto LABEL_4;
    }

    v30 = sub_6D63C();

    if (v30)
    {
LABEL_13:
      v23 = 1;
      goto LABEL_14;
    }

    if (sub_6B7CC() != 0xD000000000000035 || 0x800000000006DF60 != v31)
    {
      v32 = sub_6D63C();

      if (v32)
      {
        goto LABEL_13;
      }

      if (sub_6B7CC() != 0xD00000000000001FLL || 0x800000000006DFA0 != v33)
      {
        v23 = sub_6D63C();
        goto LABEL_5;
      }
    }

LABEL_4:
    v23 = 1;
LABEL_5:

LABEL_14:
    (*(v21 + 8))(v3, v0);
    return v23 & 1;
  }

  if (v20 != enum case for Parse.nlRouter(_:))
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_23;
  }

  (*(v16 + 96))(v19, v15);
  v24 = v38;
  (*(v38 + 32))(v14, v19, v11);
  sub_6B3CC();
  v25 = v39;
  if ((*(v39 + 88))(v10, v7) != enum case for NLRouterParse.InputCandidate.text(_:))
  {
    (*(v24 + 8))(v14, v11);
    (*(v25 + 8))(v10, v7);
    goto LABEL_23;
  }

  (*(v25 + 8))(v10, v7);
  v26 = v35;
  sub_6B3BC();
  (*(v24 + 8))(v14, v11);
  v28 = v36;
  v27 = v37;
  v29 = (*(v36 + 88))(v26, v37);
  if (v29 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriX(_:) || v29 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXRewrite(_:) || v29 == enum case for NLRoutingDecisionMessage.RoutingDecision.queryRewrite(_:))
  {
    goto LABEL_11;
  }

  if (v29 == enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:))
  {
    (*(v28 + 8))(v26, v27);
    v23 = 1;
    return v23 & 1;
  }

  if (v29 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXFallback(_:))
  {
    goto LABEL_23;
  }

  v23 = 1;
  if (v29 != enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:) && v29 != enum case for NLRoutingDecisionMessage.RoutingDecision.search(_:))
  {
LABEL_11:
    (*(v28 + 8))(v26, v27);
LABEL_23:
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v240 = a3;
  v235 = a2;
  v234 = a1;
  v237 = a4;
  v5 = sub_6C26C();
  v224 = *(v5 - 8);
  v225 = v5;
  v6 = *(v224 + 64);
  __chkstk_darwin(v5);
  v223 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_6D10C();
  v205 = *(v206 - 8);
  v8 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5708(&qword_81590, qword_700D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v215 = &v193 - v12;
  v221 = sub_6C20C();
  v220 = *(v221 - 8);
  v13 = *(v220 + 64);
  __chkstk_darwin(v221);
  v217 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5708(&qword_81578, &qword_700B8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v218 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v228 = &v193 - v20;
  v21 = __chkstk_darwin(v19);
  v214 = &v193 - v22;
  __chkstk_darwin(v21);
  v226 = &v193 - v23;
  v243 = sub_6B7EC();
  v241 = *(v243 - 8);
  v24 = *(v241 + 64);
  __chkstk_darwin(v243);
  v242 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_5708(&qword_81580, &unk_70F80);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v207 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v222 = &v193 - v31;
  __chkstk_darwin(v30);
  v199 = &v193 - v32;
  v238 = type metadata accessor for IFFlowError();
  v33 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v203 = (&v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_6CCBC();
  v201 = *(v202 - 8);
  v35 = *(v201 + 64);
  __chkstk_darwin(v202);
  v200 = &v193 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_6C0EC();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v231 = &v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_6C33C();
  v41 = *(v40 - 8);
  v232 = v40;
  v233 = v41;
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v216 = &v193 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v219 = &v193 - v46;
  v47 = __chkstk_darwin(v45);
  v212 = &v193 - v48;
  v49 = __chkstk_darwin(v47);
  v198 = &v193 - v50;
  __chkstk_darwin(v49);
  v195 = &v193 - v51;
  v52 = sub_6C27C();
  v229 = *(v52 - 8);
  v230 = v52;
  v53 = *(v229 + 64);
  v54 = __chkstk_darwin(v52);
  v213 = &v193 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v211 = &v193 - v57;
  __chkstk_darwin(v56);
  v194 = &v193 - v58;
  v197 = sub_6C1DC();
  v193 = *(v197 - 8);
  v59 = *(v193 + 64);
  __chkstk_darwin(v197);
  v196 = &v193 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_6C9FC();
  v209 = *(v210 - 8);
  v61 = *(v209 + 64);
  __chkstk_darwin(v210);
  v208 = &v193 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_6B3AC();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  v67 = (&v193 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = sub_6B3DC();
  v68 = *(v227 - 8);
  v69 = *(v68 + 64);
  __chkstk_darwin(v227);
  v71 = &v193 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_6B7FC();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  v76 = &v193 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v4;
  sub_6B78C();
  v77 = (*(v73 + 88))(v76, v72);
  if (v77 == enum case for Parse.directInvocation(_:))
  {
    (*(v73 + 96))(v76, v72);
    v79 = v241;
    v78 = v242;
    v80 = v76;
    v81 = v243;
    (*(v241 + 32))(v242, v80, v243);
    v82 = sub_6B7CC();
    v84 = v83;
    v85._rawValue = &off_7EE58;
    v245._countAndFlagsBits = v82;
    v245._object = v84;
    v86 = sub_6D5FC(v85, v245);

    if (v86 == 2)
    {
      v115 = sub_22800();
      if (v116)
      {
        v117 = v115;
      }

      else
      {
        v117 = 0;
      }

      if (v116)
      {
        v118 = v116;
      }

      else
      {
        v118 = 0xE000000000000000;
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v119 = sub_6D04C();
      sub_5CE4(v119, qword_839A0);

      v120 = sub_6D03C();
      v121 = sub_6D45C();

      v122 = os_log_type_enabled(v120, v121);
      v123 = v223;
      if (v122)
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v244 = v125;
        *v124 = 136315138;
        *(v124 + 4) = sub_1076C(v117, v118, &v244);
        _os_log_impl(&dword_0, v120, v121, "Received genAIText directInvocation with utterance: %s", v124, 0xCu);
        sub_9964(v125);
      }

      v126 = sub_6CCDC();
      v127 = *(v126 - 8);
      v128 = v228;
      (*(v127 + 56))(v228, 1, 1, v126);
      v129 = v218;
      sub_E508(v128, v218);
      if ((*(v127 + 48))(v129, 1, v126) == 1)
      {
        sub_5E20(v129, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v127 + 8))(v129, v126);
      }

      sub_6C25C();
      v153 = v123;
      v150 = v224;
      v154 = v225;
      v155 = v213;
      (*(v224 + 16))(v213, v153, v225);
      v157 = v229;
      v156 = v230;
      (*(v229 + 104))(v155, enum case for MessagePayload.RequestPrescribedPlan.textTool(_:), v230);
      sub_9B78(v117, v234, v231);
      v158 = v216;
      sub_6C31C();
      v159 = v236;
      sub_C1B4(v158, v155, v235);
      if (!v159)
      {

        (*(v157 + 8))(v155, v156);
        (*(v150 + 8))(v153, v154);
        sub_5E20(v228, &qword_81578, &qword_700B8);
        (*(v241 + 8))(v242, v243);
        return (*(v233 + 32))(v237, v158, v232);
      }

      (*(v233 + 8))(v158, v232);
    }

    else
    {
      if (v86 == 1)
      {
        v106 = sub_22800();
        if (v107)
        {
          v108 = v106;
        }

        else
        {
          v108 = 0;
        }

        v109 = 0xE000000000000000;
        if (v107)
        {
          v109 = v107;
        }

        v239 = v108;
        v240 = v109;
        v110 = v215;
        sub_228B8(v215);
        v111 = sub_6D12C();
        v112 = *(v111 - 8);
        if ((*(v112 + 48))(v110, 1, v111) == 1)
        {
          sub_5E20(v110, &qword_81590, qword_700D0);
          v113 = 0;
          v114 = 0;
        }

        else
        {
          v132 = v204;
          sub_6D11C();
          (*(v112 + 8))(v110, v111);
          v113 = sub_6D0FC();
          v114 = v133;
          (*(v205 + 8))(v132, v206);
        }

        v134 = v240;
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v135 = sub_6D04C();
        sub_5CE4(v135, qword_839A0);

        v136 = sub_6D03C();
        v137 = sub_6D45C();

        v138 = os_log_type_enabled(v136, v137);
        v238 = v113;
        if (v138)
        {
          v139 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          *v139 = 136315394;
          *(v139 + 4) = sub_1076C(v239, v134, &v244);
          *(v139 + 12) = 2080;
          if (v114)
          {
            v140 = v113;
          }

          else
          {
            v140 = 7104878;
          }

          v141 = v79;
          if (v114)
          {
            v142 = v114;
          }

          else
          {
            v142 = 0xE300000000000000;
          }

          v143 = sub_1076C(v140, v142, &v244);
          v79 = v141;

          *(v139 + 14) = v143;
          _os_log_impl(&dword_0, v136, v137, "IFFlow: #AppIntentSuggestionInvocation received directInvocation with utterance: %s and suggestedInvocationId: %s", v139, 0x16u);
          swift_arrayDestroy();
          v81 = v243;

          v78 = v242;
        }

        v144 = v222;
        v145 = sub_6C29C();
        v146 = *(*(v145 - 8) + 56);
        v146(v144, 1, 1, v145);
        if (v114)
        {

          v147 = v81;
          v148 = v207;
          sub_6C28C();
          sub_5E20(v144, &qword_81580, &unk_70F80);
          v146(v148, 0, 1, v145);
          v149 = v148;
          v81 = v147;
          sub_E578(v149, v144);
        }

        v150 = v240;
        sub_9B78(v239, v234, v231);
        v151 = v219;
        sub_6C31C();
        v152 = v236;
        sub_9E14(v151, v235, v144);
        if (!v152)
        {

          sub_5E20(v144, &qword_81580, &unk_70F80);
          (*(v79 + 8))(v78, v81);
          return (*(v233 + 32))(v237, v151, v232);
        }
      }

      else
      {
        if (v86)
        {
          v131 = sub_6B7AC();
          (*(*(v131 - 8) + 16))(v240, v239, v131);
          swift_storeEnumTagMultiPayload();
          sub_C0F4();
          swift_willThrowTypedImpl();
          return (*(v79 + 8))(v78, v81);
        }

        v87 = sub_22800();
        if (v88)
        {
          v89 = v87;
        }

        else
        {
          v89 = 0;
        }

        if (v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = 0xE000000000000000;
        }

        v91 = sub_6CCDC();
        v92 = *(v91 - 8);
        v93 = v226;
        (*(v92 + 56))(v226, 1, 1, v91);
        v94 = v214;
        sub_E508(v93, v214);
        if ((*(v92 + 48))(v94, 1, v91) == 1)
        {
          sub_5E20(v94, &qword_81578, &qword_700B8);
        }

        else
        {
          sub_6CCCC();
          (*(v92 + 8))(v94, v91);
        }

        v160 = v211;

        v161 = v217;
        sub_6C1EC();
        v162 = v220;
        v163 = v221;
        (*(v220 + 16))(v160, v161, v221);
        v165 = v229;
        v164 = v230;
        (*(v229 + 104))(v160, enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:), v230);
        sub_9B78(v89, v234, v231);
        v150 = v90;
        v151 = v212;
        sub_6C31C();
        v166 = v236;
        sub_C1B4(v151, v160, v235);
        v240 = v166;
        v167 = v242;
        if (!v166)
        {

          (*(v165 + 8))(v160, v164);
          (*(v162 + 8))(v161, v163);
          sub_5E20(v226, &qword_81578, &qword_700B8);
          (*(v241 + 8))(v167, v243);
          return (*(v233 + 32))(v237, v151, v232);
        }
      }

      (*(v233 + 8))(v151, v232);
    }

    while (1)
    {
      __break(1u);
LABEL_88:
      (*(v233 + 8))(v150, v232);
    }
  }

  if (v77 != enum case for Parse.nlRouter(_:))
  {
    v104 = sub_6B7AC();
    (*(*(v104 - 8) + 16))(v240, v239, v104);
    swift_storeEnumTagMultiPayload();
    sub_C0F4();
    swift_willThrowTypedImpl();
    return (*(v73 + 8))(v76, v72);
  }

  (*(v73 + 96))(v76, v72);
  v95 = v68;
  v96 = v76;
  v97 = v227;
  (*(v68 + 32))(v71, v96, v227);
  sub_6B3CC();
  if ((*(v64 + 88))(v67, v63) != enum case for NLRouterParse.InputCandidate.text(_:))
  {
    (*(v64 + 8))(v67, v63);
    goto LABEL_40;
  }

  (*(v64 + 96))(v67, v63);
  v99 = *v67;
  v98 = v67[1];
  v100 = v208;
  sub_6B3BC();
  v101 = v209;
  v102 = v210;
  v103 = (*(v209 + 88))(v100, v210);
  if (v103 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriX(_:) || v103 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXRewrite(_:) || v103 == enum case for NLRoutingDecisionMessage.RoutingDecision.queryRewrite(_:))
  {

    (*(v101 + 8))(v100, v102);
LABEL_40:
    v130 = sub_6B7AC();
    (*(*(v130 - 8) + 16))(v240, v239, v130);
    swift_storeEnumTagMultiPayload();
    sub_C0F4();
    swift_willThrowTypedImpl();
    return (*(v95 + 8))(v71, v97);
  }

  if (v103 != enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:))
  {
    if (v103 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXFallback(_:))
    {

      goto LABEL_40;
    }

    if (v103 == enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v173 = sub_6D04C();
      sub_5CE4(v173, qword_839A0);
      v174 = sub_6D03C();
      v175 = sub_6D45C();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        *v176 = 0;
        _os_log_impl(&dword_0, v174, v175, "IFFlow: #PrescribedPlanDecision no prescribed plan, falling back on planner", v176, 2u);
      }

      v177 = sub_6C29C();
      v178 = v199;
      (*(*(v177 - 8) + 56))(v199, 1, 1, v177);
      sub_9B78(v99, v234, v231);
      v150 = v198;
      sub_6C31C();
      v179 = v236;
      sub_9E14(v150, v235, v178);
      if (v179)
      {
        goto LABEL_88;
      }

      sub_5E20(v178, &qword_81580, &unk_70F80);
    }

    else
    {
      if (v103 != enum case for NLRoutingDecisionMessage.RoutingDecision.search(_:))
      {

        v192 = sub_6B7AC();
        (*(*(v192 - 8) + 16))(v240, v239, v192);
        swift_storeEnumTagMultiPayload();
        sub_C0F4();
        swift_willThrowTypedImpl();
        (*(v95 + 8))(v71, v97);
        return (*(v101 + 8))(v100, v102);
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v180 = sub_6D04C();
      sub_5CE4(v180, qword_839A0);
      v181 = sub_6D03C();
      v182 = sub_6D45C();
      v183 = os_log_type_enabled(v181, v182);
      v184 = v193;
      if (v183)
      {
        v185 = swift_slowAlloc();
        *v185 = 0;
        _os_log_impl(&dword_0, v181, v182, "IFFlow: #PrescribedPlanDecision running the searchTool", v185, 2u);
      }

      v186 = v196;
      sub_6C1CC();
      v187 = v194;
      (*(v184 + 16))(v194, v186, v197);
      v188 = v229;
      (*(v229 + 104))(v187, enum case for MessagePayload.RequestPrescribedPlan.searchTool(_:), v230);
      v189 = v99;
      v190 = v187;
      sub_9B78(v189, v234, v231);
      v150 = v195;
      sub_6C31C();
      v191 = v236;
      sub_C1B4(v150, v190, v235);
      if (v191)
      {
        goto LABEL_88;
      }

      (*(v188 + 8))(v190, v230);
      (*(v184 + 8))(v196, v197);
    }

    (*(v95 + 8))(v71, v97);
    return (*(v233 + 32))(v237, v150, v232);
  }

  (*(v101 + 96))(v100, v102);
  v168 = v201;
  v169 = v200;
  v170 = v202;
  (*(v201 + 32))(v200, v100, v202);
  v171 = v236;
  v172 = v203;
  sub_A53C(v99, v98, v234, v235, v169, v203, v237);

  (*(v168 + 8))(v169, v170);
  if (!v171)
  {
    return (*(v95 + 8))(v71, v97);
  }

  (*(v95 + 8))(v71, v97);
  return sub_9814(v172, v240);
}

uint64_t sub_E508(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81578, &qword_700B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E578(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81580, &unk_70F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5E8()
{
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v1;
}

uint64_t sub_E68C(uint64_t a1)
{
  v3 = async function pointer to static ErrorTemplates.genericErrorLegacy()[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_E728;

  return static ErrorTemplates.genericErrorLegacy()(a1);
}

uint64_t sub_E728()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_E81C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for IFFlowError();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_6B7FC();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_6B7AC() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_6B36C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = sub_6C06C();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_E9FC, 0, 0);
}

uint64_t sub_E9FC()
{
  v89 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = sub_6BE7C();
  v6 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse;
  sub_6B5EC();
  v7 = sub_6C05C();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v1, v3);
  if (*(v5 + 16))
  {
    v11 = sub_10DDC(v7, v9);
    v13 = v12;

    if (v13)
    {
      v86 = v10;
      v84 = v0[13];
      v15 = v0[8];
      v14 = v0[9];
      v16 = v4;
      v17 = v0[6];
      v18 = v0[7];
      v19 = (*(v5 + 56) + 16 * v11);
      v20 = *v19;
      v21 = v19[1];

      sub_6BE9C();
      v22 = sub_6B60C();
      (*(*(v22 - 8) + 16))(v15, v16 + v6, v22);
      (*(v18 + 104))(v15, enum case for Parse.ifClientAction(_:), v17);
      sub_6B79C();
      sub_6B34C();
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v23 = v0[12];
      v24 = v0[13];
      v25 = v0[10];
      v26 = v0[11];
      v27 = v0[3];
      v28 = sub_6D04C();
      sub_5CE4(v28, qword_839A0);
      (*(v26 + 16))(v23, v24, v25);

      v29 = sub_6D03C();
      v30 = sub_6D45C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v0[16];
        v33 = v0[11];
        v32 = v0[12];
        v82 = v0[14];
        v83 = v0[10];
        v34 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v34 = 136315394;
        sub_6B5EC();
        v35 = sub_6C05C();
        v37 = v36;
        v86(v31, v82);
        v38 = sub_1076C(v35, v37, &v88);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = v32;
        v40 = sub_6B35C();
        v42 = v41;
        v43 = *(v33 + 8);
        v43(v39, v83);
        v44 = sub_1076C(v40, v42, &v88);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_0, v29, v30, "IFClientActionRoutingFlow redirecting %s shim tool request to %s", v34, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v68 = v0[11];
        v67 = v0[12];
        v69 = v0[10];

        v43 = *(v68 + 8);
        v43(v67, v69);
      }

      v70 = v0[13];
      v71 = v0[10];
      v73 = v0[2];
      v72 = v0[3];
      v74 = *(v72 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
      *(v72 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 1;
      sub_10E54(v74);
      sub_6B4AC();
      v43(v70, v71);
      v75 = v0[16];
      v76 = v0[12];
      v77 = v0[13];
      v79 = v0[8];
      v78 = v0[9];
      v80 = v0[5];

      v81 = v0[1];

      return v81();
    }
  }

  else
  {
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v45 = v0[3];
  v46 = sub_6D04C();
  sub_5CE4(v46, qword_839A0);

  v47 = sub_6D03C();
  v48 = sub_6D46C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v0[16];
    v85 = v0[14];
    v50 = swift_slowAlloc();
    v87 = v10;
    v88 = swift_slowAlloc();
    v51 = v88;
    *v50 = 136315138;
    sub_6B5EC();
    v52 = sub_6C05C();
    v54 = v53;
    v87(v49, v85);
    v55 = sub_1076C(v52, v54, &v88);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_0, v47, v48, "IFClientActionRoutingFlow can't find shim tool for %s", v50, 0xCu);
    sub_9964(v51);
    v10 = v87;
  }

  v56 = v0[16];
  v57 = v0[14];
  v59 = v0[4];
  v58 = v0[5];
  sub_6B5EC();
  v60 = sub_6C05C();
  v62 = v61;
  v10(v56, v57);
  *v58 = v60;
  v58[1] = v62;
  swift_storeEnumTagMultiPayload();
  v63 = swift_task_alloc();
  v0[17] = v63;
  *v63 = v0;
  v63[1] = sub_F0B0;
  v64 = v0[5];
  v65 = v0[3];

  return sub_F274(v64);
}

uint64_t sub_F0B0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 40);
  v4 = *v0;

  sub_43F8(v2);

  return _swift_task_switch(sub_F1C8, 0, 0);
}

uint64_t sub_F1C8()
{
  v1 = v0[2];
  sub_6B49C();
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_F274(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(sub_5708(&qword_81520, &qword_708D0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = sub_6B55C();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = sub_6B89C();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_F3C8, 0, 0);
}

uint64_t sub_F3C8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = *(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil);
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[13] = v1;

  sub_6BC7C();

  v4 = v0[12];
  v5 = sub_6CDBC();
  v7 = v6;

  sub_4E710(v5, v7, v2);

  v8 = *(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator + 8);
  v13 = (*(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator) + **(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator));
  v9 = *(*(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator) + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_F594;
  v11 = v0[19];

  return v13(v11);
}

uint64_t sub_F594()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_FAD4;
  }

  else
  {
    v3 = sub_F6A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F6A8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v17 = *(v0 + 160);
  v3 = *(v0 + 144);
  v15 = *(v0 + 176);
  v16 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState + 32);
  sub_99FC((v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState), *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState + 24));
  sub_6B2AC();
  v7 = sub_6B50C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_6B43C();
  sub_5E20(v0 + 16, &qword_81538, &qword_70080);
  sub_5E20(v5, &qword_81520, &qword_708D0);
  (*(v3 + 8))(v2, v16);
  v8 = (v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
  v9 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher + 24);
  v10 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher + 32);
  sub_99FC(v8, v9);
  *(v0 + 80) = v17;
  *(v0 + 88) = &protocol witness table for AceOutput;
  v11 = sub_97B0((v0 + 56));
  (*(v1 + 16))(v11, v15, v17);
  v12 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_F8CC;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v9, v10);
}

uint64_t sub_F8CC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_FCE0;
  }

  else
  {
    sub_9964((v2 + 56));
    v4 = sub_F9E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F9E8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  type metadata accessor for IFFlowError();
  sub_C0F4();
  v6 = swift_allocError();
  sub_4394(v5, v7);
  v8 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v6;
  sub_10E54(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_FAD4()
{
  v1 = v0[24];
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = sub_6D04C();
  sub_5CE4(v2, qword_839A0);
  swift_errorRetain();
  v3 = sub_6D03C();
  v4 = sub_6D46C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "IFClientActionRoutingFlow error publishing error response: %@", v5, 0xCu);
    sub_5E20(v6, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v8 = v0[22];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  type metadata accessor for IFFlowError();
  sub_C0F4();
  v13 = swift_allocError();
  sub_4394(v12, v14);
  v15 = *(v11 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v11 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v13;
  sub_10E54(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_FCE0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_9964(v0 + 7);
  v1 = v0[26];
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = sub_6D04C();
  sub_5CE4(v2, qword_839A0);
  swift_errorRetain();
  v3 = sub_6D03C();
  v4 = sub_6D46C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "IFClientActionRoutingFlow error publishing error response: %@", v5, 0xCu);
    sub_5E20(v6, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v8 = v0[22];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  type metadata accessor for IFFlowError();
  sub_C0F4();
  v13 = swift_allocError();
  sub_4394(v12, v14);
  v15 = *(v11 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v11 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v13;
  sub_10E54(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_FF0C()
{
  v1 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse;
  v2 = sub_6B60C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_9964((v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState));
  sub_9964((v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher));
  v3 = *(v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil);

  sub_10E54(*(v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state));
  v5 = *(v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow__currentRequest);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IFClientActionRoutingFlow()
{
  result = qword_815F8;
  if (!qword_815F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060()
{
  result = sub_6B60C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10124(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10148(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1019C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_101F8(void *result, int a2)
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

uint64_t sub_10230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_102E0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_102E0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10410(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E728;

  return sub_E81C(a1);
}

unint64_t sub_104AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(*v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
    }

    v4 = v2 != 1;
  }

  else
  {
    v5 = a1;
    type metadata accessor for IFFlowError();
    sub_C0F4();
    v3 = swift_allocError();
    *v6 = 0xD000000000000026;
    v6[1] = 0x800000000006EC80;
    swift_storeEnumTagMultiPayload();
    v2 = 0;
    a1 = v5;
    v4 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_10578(v2);
}

unint64_t sub_10578(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  *a2 = v5;
  return result;
}

uint64_t sub_1063C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10688(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10710(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1076C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1076C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10838(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_98EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_9964(v11);
  return v7;
}

unint64_t sub_10838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10944(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_6D59C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10944(uint64_t a1, unint64_t a2)
{
  v4 = sub_10990(a1, a2);
  sub_10AC0(&off_7EE30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10990(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10BAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_6D59C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_6D34C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10BAC(v10, 0);
        result = sub_6D56C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10AC0(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_10C20(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10BAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5708(&qword_816B0, &unk_70200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10C20(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_816B0, &unk_70200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_10D14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10D24(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_10D98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_6D52C(*(v2 + 40));

  return sub_10E6C(a1, v4);
}

unint64_t sub_10DDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_6D6BC();
  sub_6D31C();
  v6 = sub_6D6DC();

  return sub_10F34(a1, a2, v6);
}

unint64_t sub_10E54(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10E6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10FEC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_6D53C();
      sub_11048(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6D63C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1109C(uint64_t a1)
{
  v2 = sub_6B7AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22C60())
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v7 = sub_6D04C();
    sub_5CE4(v7, qword_839A0);
    v8 = sub_6D03C();
    v9 = sub_6D45C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Input contains cancellation dialog act, returning .cancel() from actionForInput", v10, 2u);
    }

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_23170();
    if (v11)
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v12 = sub_6D04C();
      sub_5CE4(v12, qword_839A0);
      (*(v3 + 16))(v6, a1, v2);
      v13 = sub_6D03C();
      v14 = sub_6D45C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v27 = v16;
        *v15 = 136315138;
        sub_11FB4(&qword_81768, &type metadata accessor for Input);
        v17 = sub_6D61C();
        v19 = v18;
        (*(v3 + 8))(v6, v2);
        v20 = sub_1076C(v17, v19, &v27);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_0, v13, v14, "Input does not appear to contain a disambiguation prompt response, returning ignore from actionForInput. Input: %s)", v15, 0xCu);
        sub_9964(v16);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      return sub_6B40C();
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v21 = sub_6D04C();
      sub_5CE4(v21, qword_839A0);
      v22 = sub_6D03C();
      v23 = sub_6D45C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "Input contains interoperable disambiguation response, returning handle", v24, 2u);
      }

      return sub_6B3FC();
    }
  }
}

uint64_t sub_114EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  return _swift_task_switch(sub_11510, 0, 0);
}

unint64_t sub_11510()
{
  v1 = v0[4];
  result = sub_23170();
  if (v3)
  {
    v4 = v0[6];
    v5 = v0[4];
    sub_6D57C(50);

    v19 = 0xD000000000000030;
    v20 = 0x800000000006ED00;
    sub_6B7AC();
    sub_11FB4(&qword_81768, &type metadata accessor for Input);
LABEL_15:
    v25._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v25);

    *v4 = v19;
    v4[1] = v20;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
    v9 = v0[1];
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v7 = *(v0[5] + 56);
    v6 = v7 + result;
    if (__OFADD__(v7, result))
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = result - 1;
  }

  if (v6 < 0 || v6 >= *(v0[5] + 56))
  {
    v10 = result;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v11 = v0[5];
    v12 = sub_6D04C();
    sub_5CE4(v12, qword_839A0);

    v13 = sub_6D03C();
    v14 = sub_6D46C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[5];
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v6;
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v16 + 56);

      _os_log_impl(&dword_0, v13, v14, "Referenced list index (%ld) outside of choice range (count: %ld", v17, 0x16u);
    }

    else
    {
      v18 = v0[5];
    }

    v4 = v0[6];
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_6D57C(90);
    v22._countAndFlagsBits = 0xD000000000000037;
    v22._object = 0x800000000006ED40;
    sub_6D33C(v22);
    v0[2] = v6;
    v23._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v23);

    v24._object = 0x800000000006ED80;
    v24._countAndFlagsBits = 0xD00000000000001FLL;
    sub_6D33C(v24);
    v0[2] = v10;
    goto LABEL_15;
  }

  v8 = v0[3];
  v0[2] = v6;
  sub_6B62C();
  v9 = v0[1];
LABEL_16:

  return v9();
}

uint64_t sub_118A8()
{
  sub_9964((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_11920(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IFFlowError();
  v2[2] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v2[3] = v7;
  v9 = swift_task_alloc();
  v2[4] = v9;
  *v9 = v2;
  v9[1] = sub_11A00;

  return sub_114EC(a1, a2, v8, v7);
}

uint64_t sub_11A00()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError);
    swift_allocError();
    sub_9814(v6, v8);
  }

  else
  {
    v10 = *(v2 + 24);
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_11B70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11B90, 0, 0);
}

uint64_t sub_11B90()
{
  sub_9878(v0[3] + 16, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_11BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_11CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_11DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_E728;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_11EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t sub_11FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v99 = a4;
  v103 = a3;
  v97 = a2;
  v106 = *v5;
  v107 = a5;
  v88 = sub_6C4EC();
  v87 = *(v88 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_6C35C();
  v100 = *(v102 - 8);
  v9 = *(v100 + 64);
  v10 = __chkstk_darwin(v102);
  v101 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v85 - v12;
  v13 = sub_5708(&qword_81770, &unk_70F70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v85 - v15;
  v93 = sub_6BEEC();
  v91 = *(v93 - 8);
  v17 = *(v91 + 64);
  __chkstk_darwin(v93);
  v94 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6C86C();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  __chkstk_darwin(v19);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_6AE9C();
  v23 = *(v104 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v104);
  v92 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_5708(&unk_82030, &qword_70370);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v85 - v28;
  v30 = sub_6C89C();
  v95 = *(v30 - 8);
  v96 = v30;
  v31 = *(v95 + 64);
  __chkstk_darwin(v30);
  v105 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_5708(&qword_81778, &qword_70378);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v85 - v36;
  (*(v34 + 16))(&v85 - v36, a1, v33);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for PromptResult.answered<A>(_:))
  {
    v85 = v5;
    (*(v34 + 96))(v37, v33);
    v39 = *v37;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v40 = sub_6D04C();
    sub_5CE4(v40, qword_839A0);
    v41 = sub_6D03C();
    v42 = sub_6D44C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "IFFlow Disambiguation item selected. Forwarding to IF", v43, 2u);
    }

    (*(v23 + 56))(v29, 1, 1, v104);
    v44 = v92;
    sub_6C80C();
    *v22 = v39;
    (*(v89 + 104))(v22, enum case for SystemPromptResolution.UserAction.disambiguationIndexSelected(_:), v90);
    (*(v91 + 16))(v94, v97, v93);
    v45 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v46 = sub_6C85C();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v16, v45, v46);
    (*(v47 + 56))(v16, 0, 1, v46);
    v48 = v105;
    sub_6C87C();
    v97 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v49 = v98;
    sub_A17C(v48, v99);
    v50 = v100;
    v51 = v102;
    (*(v100 + 104))(v49, enum case for MessagePayload.request(_:), v102);
    v52 = v107;
    sub_30BF8(v44, v49);
    v53 = *(v50 + 8);
    v53(v49, v51);
    (*(v23 + 8))(v44, v104);
    v54 = v101;
    sub_6C81C();
    if ((*(v50 + 88))(v54, v51) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v50 + 96))(v54, v51);
      v55 = v87;
      v56 = v86;
      v57 = v88;
      (*(v87 + 32))(v86, v54, v88);
      v58 = v97;
      sub_4458(v56, &v52[v97]);
      (*(v55 + 8))(v56, v57);
      (*(v95 + 8))(v105, v96);
      v59 = 0;
      v60 = v58;
    }

    else
    {
      (*(v95 + 8))(v105, v96);
      v53(v54, v51);
      v59 = 1;
      v60 = v97;
    }

    v65 = sub_6CD2C();
    (*(*(v65 - 8) + 56))(&v52[v60], v59, 1, v65);
    v66 = *(v106 + 80);
    v67 = *(v106 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  if (v38 == enum case for PromptResult.error<A>(_:))
  {
    (*(v34 + 96))(v37, v33);
    v61 = v37[8];
    v62 = v107;
    *v107 = *v37;
    v62[8] = v61;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v63 = *(v106 + 80);
    v64 = *(v106 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  v69 = v107;
  if (v38 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v70 = sub_6D04C();
    sub_5CE4(v70, qword_839A0);
    v71 = sub_6D03C();
    v72 = sub_6D45C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "Exiting IFFlow, received userCancelled", v73, 2u);
    }

    *v69 = 0;
    *(v69 + 8) = 0;
    v74 = *(v106 + 80);
    v75 = *(v106 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  if (v38 == enum case for PromptResult.unanswered<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v76 = sub_6D04C();
    sub_5CE4(v76, qword_839A0);
    v77 = sub_6D03C();
    v78 = sub_6D45C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "Exiting IFFlow, received .unaswered from PromptForDisambiguation", v79, 2u);
    }

    *v69 = 0;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v80 = *(v106 + 80);
    v81 = *(v106 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_6D57C(35);

  v108 = 0xD000000000000021;
  v109 = 0x800000000006EDA0;
  sub_12C88();
  v110._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v110);

  v82 = v109;
  *v69 = v108;
  v69[1] = v82;
  type metadata accessor for IFFlowError();
  swift_storeEnumTagMultiPayload();
  v83 = *(v106 + 80);
  v84 = *(v106 + 88);
  type metadata accessor for IFFlow.State();
  swift_storeEnumTagMultiPayload();
  return (*(v34 + 8))(v37, v33);
}

void *sub_12C38(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_12C58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_12C88()
{
  result = qword_81780;
  if (!qword_81780)
  {
    sub_29F8(&qword_81778, &qword_70378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81780);
  }

  return result;
}

id sub_12CF0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v69) = a3;
  v67 = a1;
  v4 = sub_5708(&qword_81798, &qword_703B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - v10;
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v14 = sub_6C54C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = objc_allocWithZone(DialogElement);
  v66 = v19;
  v21 = [v20 init];
  v22 = *(v15 + 16);
  v65 = a2;
  v22(v18, a2, v14);
  LODWORD(v19) = (*(v15 + 88))(v18, v14);
  v23 = enum case for StatementOutcome.failure(_:);
  v24 = *(v15 + 8);
  v63 = v15 + 8;
  v64 = v14;
  v62 = v24;
  v24(v18, v14);
  if (v19 == v23 && (v69 & 1) != 0)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_6D57C(66);
    sub_6C37C();
    v25 = sub_6C45C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v13, 1, v25) == 1)
    {
      sub_5E20(v13, &qword_81798, &qword_703B8);
      v27 = 0xEB0000000065736ELL;
      v28._countAndFlagsBits = 0x6F70736572206F4ELL;
    }

    else
    {
      v30 = sub_6C44C();
      v27 = v31;
      (*(v26 + 8))(v13, v25);
      v28._countAndFlagsBits = v30;
    }

    v28._object = v27;
    sub_6D33C(v28);

    v72._object = 0x800000000006EDD0;
    v72._countAndFlagsBits = 0xD000000000000040;
    sub_6D33C(v72);
  }

  else
  {
    sub_6C37C();
    v25 = sub_6C45C();
    v29 = *(v25 - 8);
    if ((*(v29 + 48))(v11, 1, v25) == 1)
    {
      sub_5E20(v11, &qword_81798, &qword_703B8);
    }

    else
    {
      sub_6C44C();
      (*(v29 + 8))(v11, v25);
    }
  }

  sub_6C36C();
  sub_6C45C();
  v32 = *(v25 - 8);
  if ((*(v32 + 48))(v8, 1, v25) == 1)
  {
    sub_5E20(v8, &qword_81798, &qword_703B8);
  }

  else
  {
    sub_6C44C();
    (*(v32 + 8))(v8, v25);
  }

  v33 = sub_6D2BC();
  [v21 setFullPrint:v33];

  v34 = sub_6D2BC();
  [v21 setFullSpeak:v34];

  v35 = sub_6D2BC();

  [v21 setSupportingPrint:v35];

  v36 = sub_6D2BC();

  [v21 setSupportingSpeak:v36];

  sub_5708(&qword_81548, &qword_70088);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_6FFF0;
  *(v37 + 32) = v21;
  sub_14CB8();
  v38 = v21;
  isa = sub_6D37C().super.isa;

  v40 = v66;
  [v66 setDialog:isa];

  sub_6C48C();
  v41 = sub_6D2BC();

  [v40 setCatId:v41];

  v68 = sub_6C48C();
  v69 = v42;
  if (v42)
  {
    v43 = [v40 dialog];
    v44 = sub_6D38C();

    v61 = v38;
    if (v44 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)); i; i = sub_6D5CC())
    {
      v46 = 0;
      while (1)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v47 = sub_6D58C();
        }

        else
        {
          if (v46 >= *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_29;
          }

          v47 = *(v44 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v50 = [v47 id];
        v51 = sub_6D2CC();
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
          v55 = sub_6D2BC();
          [v48 setId:v55];
        }

        ++v46;
        if (v49 == i)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:

    v57 = v64;
    v56 = v65;
    v40 = v66;
  }

  else
  {

    v57 = v64;
    v56 = v65;
  }

  v62(v56, v57);
  v58 = sub_6C4AC();
  (*(*(v58 - 8) + 8))(v67, v58);
  return v40;
}

uint64_t sub_134C8@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_6BFCC();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v44);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_6C3CC();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6C3FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  result = sub_6C42C();
  v18 = result;
  v49 = *(result + 16);
  if (v49)
  {
    v33 = a1;
    v19 = v2;
    v20 = 0;
    v21 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v48 = v10 + 88;
    v47 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v45 = (v10 + 8);
    v39 = (v10 + 96);
    v36 = (v6 + 8);
    v37 = (v6 + 32);
    v35 = (v19 + 88);
    v34 = enum case for RGPluginModel.archivedView(_:);
    v38 = (v19 + 8);
    v46 = v5;
    v40 = v9;
    v41 = v16;
    while (v20 < *(v18 + 16))
    {
      v23 = *(v10 + 16);
      v23(v16, v21 + *(v10 + 72) * v20, v9);
      v23(v14, v16, v9);
      v24 = (*(v10 + 88))(v14, v9);
      if (v24 == v47)
      {
        v25 = v10;
        v26 = v18;
        (*v39)(v14, v9);
        v27 = v42;
        v28 = v43;
        (*v37)(v42, v14, v43);
        sub_6C3BC();
        (*v36)(v27, v28);
        v29 = v44;
        v30 = (*v35)(v5, v44);
        if (v30 == v34)
        {

          (*v38)(v5, v29);
          v10 = v25;
          a1 = v33;
          v9 = v40;
          (*(v25 + 32))(v33, v41, v40);
          v31 = 0;
          return (*(v10 + 56))(a1, v31, 1, v9);
        }

        (*v38)(v5, v29);
        v22 = *v45;
        v18 = v26;
        v10 = v25;
        v9 = v40;
        v16 = v41;
      }

      else
      {
        v22 = *v45;
        (*v45)(v14, v9);
      }

      ++v20;
      result = (v22)(v16, v9);
      v5 = v46;
      if (v49 == v20)
      {

        v31 = 1;
        a1 = v33;
        return (*(v10 + 56))(a1, v31, 1, v9);
      }
    }

    __break(1u);
  }

  else
  {

    v31 = 1;
    return (*(v10 + 56))(a1, v31, 1, v9);
  }

  return result;
}

uint64_t sub_13950()
{
  v0 = sub_6C3AC();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v35 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6C3FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_5708(&qword_817A8, &qword_703C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v40 = &v35 - v17;
  result = sub_6C42C();
  v19 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v20 = 0;
    v41 = v4 + 88;
    v21 = enum case for ResponseOutput.VisualOutput.pluginSnippet(_:);
    v22 = (v4 + 8);
    while (v20 < *(v19 + 16))
    {
      v23 = *(v4 + 16);
      v23(v12, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v3);
      v23(v10, v12, v3);
      if ((*(v4 + 88))(v10, v3) == v21)
      {

        (*(v4 + 8))(v10, v3);
        v26 = v40;
        (*(v4 + 32))(v40, v12, v3);
        v25 = 0;
        goto LABEL_8;
      }

      ++v20;
      v24 = *v22;
      (*v22)(v10, v3);
      result = (v24)(v12, v3);
      if (v42 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v25 = 1;
    v26 = v40;
LABEL_8:
    (*(v4 + 56))(v26, v25, 1, v3);
    v27 = v39;
    sub_14D04(v26, v39);
    v28 = (*(v4 + 48))(v27, 1, v3);
    v29 = v38;
    if (v28 == 1)
    {
      sub_5E20(v26, &qword_817A8, &qword_703C0);
      sub_5E20(v27, &qword_817A8, &qword_703C0);
      return 0;
    }

    else
    {
      (*(v4 + 16))(v38, v27, v3);
      if ((*(v4 + 88))(v29, v3) == enum case for ResponseOutput.VisualOutput.pluginSnippet(_:))
      {
        (*(v4 + 96))(v29, v3);
        v32 = v35;
        v31 = v36;
        v33 = v37;
        (*(v36 + 32))(v35, v29, v37);
        v30 = sub_6C38C();
        sub_6C39C();
        (*(v31 + 8))(v32, v33);
        sub_5E20(v40, &qword_817A8, &qword_703C0);
        (*(v4 + 8))(v27, v3);
      }

      else
      {
        sub_5E20(v26, &qword_817A8, &qword_703C0);
        v34 = *(v4 + 8);
        v34(v29, v3);
        v30 = 0;
        v34(v27, v3);
      }
    }

    return v30;
  }

  return result;
}

uint64_t sub_13E7C()
{
  v42 = sub_6BFCC();
  v0 = *(v42 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v42);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_6C3CC();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6C3FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v49 = &v33 - v13;
  __chkstk_darwin(v12);
  v52 = &v33 - v14;
  result = sub_6C42C();
  v48 = *(result + 16);
  if (v48)
  {
    v51 = v11;
    v16 = 0;
    v45 = v7 + 88;
    v46 = v7 + 16;
    v44 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v43 = (v7 + 8);
    v37 = (v3 + 32);
    v38 = (v7 + 96);
    v36 = (v3 + 8);
    v35 = (v0 + 88);
    v34 = enum case for RGPluginModel.archivedView(_:);
    v33 = (v0 + 8);
    v50 = (v7 + 32);
    v17 = _swiftEmptyArrayStorage;
    v18 = v49;
    v47 = result;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      v21 = *(v7 + 16);
      v22 = v52;
      v21(v52, result + v19 + v20 * v16, v6);
      v21(v18, v22, v6);
      v23 = (*(v7 + 88))(v18, v6);
      if (v23 != v44)
      {
        break;
      }

      (*v38)(v18, v6);
      v25 = v39;
      v24 = v40;
      (*v37)(v39, v49, v40);
      v26 = v41;
      sub_6C3BC();
      (*v36)(v25, v24);
      v27 = v42;
      LODWORD(v25) = (*v35)(v26, v42);
      (*v33)(v26, v27);
      v28 = v25 == v34;
      v18 = v49;
      if (!v28)
      {
        goto LABEL_10;
      }

      (*v43)(v52, v6);
LABEL_4:
      ++v16;
      result = v47;
      if (v48 == v16)
      {
        goto LABEL_16;
      }
    }

    (*v43)(v18, v6);
LABEL_10:
    v29 = *v50;
    (*v50)(v51, v52, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_27D3C(0, v17[2] + 1, 1);
      v18 = v49;
      v17 = v53;
    }

    v32 = v17[2];
    v31 = v17[3];
    if (v32 >= v31 >> 1)
    {
      sub_27D3C(v31 > 1, v32 + 1, 1);
      v18 = v49;
      v17 = v53;
    }

    v17[2] = v32 + 1;
    v29(v17 + v19 + v32 * v20, v51, v6);
    goto LABEL_4;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_16:

  return v17;
}

uint64_t sub_14344@<X0>(uint64_t a1@<X8>)
{
  v58 = sub_6C3CC();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6BFCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v56 = &v45 - v12;
  __chkstk_darwin(v11);
  v55 = &v45 - v13;
  v14 = sub_6C3FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v45 - v20;
  result = sub_6C42C();
  v65 = *(result + 16);
  if (v65)
  {
    v46 = a1;
    v22 = 0;
    v64 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v63 = v15 + 16;
    v62 = v15 + 88;
    v61 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v60 = (v15 + 8);
    v52 = (v2 + 32);
    v53 = (v15 + 96);
    v50 = (v6 + 32);
    v51 = (v2 + 8);
    v49 = (v6 + 88);
    v48 = enum case for RGPluginModel.actionConfirmationModel(_:);
    v45 = v6;
    v47 = (v6 + 8);
    v23 = result;
    v24 = v59;
    v54 = result;
    while (v22 < *(v23 + 16))
    {
      v26 = *(v15 + 16);
      v26(v24, v64 + *(v15 + 72) * v22, v14);
      v26(v19, v24, v14);
      v27 = (*(v15 + 88))(v19, v14);
      if (v27 == v61)
      {
        v28 = v15;
        (*v53)(v19, v14);
        v29 = v57;
        v30 = v19;
        v31 = v19;
        v32 = v24;
        v33 = v5;
        v34 = v10;
        v35 = v58;
        (*v52)(v57, v31, v58);
        v36 = v56;
        sub_6C3BC();
        v37 = v35;
        v10 = v34;
        v5 = v33;
        (*v51)(v29, v37);
        (*v60)(v32, v14);
        v38 = *v50;
        v39 = v55;
        (*v50)(v55, v36, v5);
        v38(v10, v39, v5);
        v40 = (*v49)(v10, v5);
        if (v40 == v48)
        {

          (*(v45 + 96))(v10, v5);
          v42 = sub_6C8EC();
          v43 = *(v42 - 8);
          v44 = v46;
          (*(v43 + 32))(v46, v10, v42);
          return (*(v43 + 56))(v44, 0, 1, v42);
        }

        result = (*v47)(v10, v5);
        v15 = v28;
        v23 = v54;
        v24 = v59;
        v19 = v30;
      }

      else
      {
        v25 = *v60;
        (*v60)(v24, v14);
        result = (v25)(v19, v14);
      }

      if (v65 == ++v22)
      {

        a1 = v46;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    v41 = sub_6C8EC();
    return (*(*(v41 - 8) + 56))(a1, 1, 1, v41);
  }

  return result;
}

uint64_t sub_148E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6C3FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_6C3EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, v4);
  if ((*(v5 + 88))(v8, v4) == enum case for ResponseOutput.VisualOutput.inAppResponse(_:))
  {
    (*(v5 + 96))(v8, v4);
    (*(v10 + 32))(v13, v8, v9);
    v14 = sub_6C9EC();
    __chkstk_darwin(v14);
    *&v17[-16] = v13;
    sub_14C34();
    sub_6BE5C();
    (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v16 = sub_6C9EC();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_14BB4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_6C3DC();
  return sub_6BE3C();
}

unint64_t sub_14C34()
{
  result = qword_81790;
  if (!qword_81790)
  {
    sub_6C9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81790);
  }

  return result;
}

uint64_t sub_14C8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6C9DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_14CB8()
{
  result = qword_817A0;
  if (!qword_817A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_817A0);
  }

  return result;
}

uint64_t sub_14D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_817A8, &qword_703C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 280) = a6;
  *(v8 + 288) = v7;
  *(v8 + 728) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  *(v8 + 240) = a1;
  v9 = *(*(sub_5708(&qword_817C0, &qword_703E8) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v10 = *(*(sub_5708(&qword_817C8, &qword_703F0) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v11 = sub_6C41C();
  *(v8 + 312) = v11;
  v12 = *(v11 - 8);
  *(v8 + 320) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v14 = *(*(sub_5708(&qword_817A8, &qword_703C0) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  v15 = *(*(sub_5708(&qword_817D0, &qword_703F8) - 8) + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v16 = sub_6C3FC();
  *(v8 + 352) = v16;
  v17 = *(v16 - 8);
  *(v8 + 360) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  v19 = sub_5708(&qword_817D8, &qword_70400);
  *(v8 + 384) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v21 = *(*(sub_5708(&qword_81798, &qword_703B8) - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v22 = sub_6C4AC();
  *(v8 + 440) = v22;
  v23 = *(v22 - 8);
  *(v8 + 448) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v25 = sub_6B74C();
  *(v8 + 472) = v25;
  v26 = *(v25 - 8);
  *(v8 + 480) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  v28 = *(*(sub_5708(&qword_817E0, &qword_71300) - 8) + 64) + 15;
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  v29 = *(*(sub_5708(&qword_817E8, &qword_70408) - 8) + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v30 = *(*(sub_5708(&qword_81520, &qword_708D0) - 8) + 64) + 15;
  *(v8 + 520) = swift_task_alloc();
  v31 = sub_6CD2C();
  *(v8 + 528) = v31;
  v32 = *(v31 - 8);
  *(v8 + 536) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  v34 = sub_6B38C();
  *(v8 + 552) = v34;
  v35 = *(v34 - 8);
  *(v8 + 560) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v37 = sub_6B31C();
  *(v8 + 584) = v37;
  v38 = *(v37 - 8);
  *(v8 + 592) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v40 = sub_6C54C();
  *(v8 + 616) = v40;
  v41 = *(v40 - 8);
  *(v8 + 624) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();

  return _swift_task_switch(sub_15354, 0, 0);
}

uint64_t sub_15354()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 248);
  sub_4B4CC(v1);
  sub_2CA00(v5);
  v178 = *(v3 + 16);
  v178(v2, v1, v4);
  v172 = *(v3 + 88);
  v7 = v172(v2, v4);
  v8 = *(v0 + 648);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v170 = enum case for StatementOutcome.toolDisambiguation(_:);
  v174 = enum case for StatementOutcome.parameterDisambiguation(_:);
  v14 = v7 == enum case for StatementOutcome.toolDisambiguation(_:) || v7 == enum case for StatementOutcome.parameterDisambiguation(_:);
  v176 = enum case for StatementOutcome.valueDisambiguation(_:);
  if (v14 || v7 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
    v16 = *(v9 + 8);
    v17 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v8, v10);
    (*(v12 + 104))(v11, enum case for ResponseType.disambiguation(_:), v13);
  }

  else
  {
    (*(v12 + 104))(v11, enum case for ResponseType.standard(_:), v13);
    v16 = *(v9 + 8);
    v17 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v8, v10);
  }

  *(v0 + 664) = v16;
  v18 = *(v0 + 656);
  v19 = *(v0 + 640);
  v20 = *(v0 + 616);
  v21 = *(v0 + 544);
  v22 = *(v0 + 504);
  v23 = *(v0 + 448);
  v166 = v21;
  v168 = *(v0 + 440);
  v24 = *(v0 + 248);
  (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 568), *(v0 + 552));
  v178(v19, v18, v20);
  v25 = v172(v19, v20);
  v33 = v25 == v170 || v25 == enum case for StatementOutcome.actionConfirmation(_:) || v25 == enum case for StatementOutcome.parameterNeedsValue(_:) || v25 == enum case for StatementOutcome.parameterConfirmation(_:) || v25 == v174 || v25 == enum case for StatementOutcome.parameterNotAllowed(_:) || v25 == enum case for StatementOutcome.parameterCandidatesNotFound(_:) || v25 == v176;
  v173 = v33;
  *(v0 + 672) = v17;
  v16(v19, v20);
  sub_4458(v24, v166);
  v34 = sub_4B728();
  v171 = v35;
  sub_6C4CC();
  v175 = *(v23 + 48);
  v36 = v175(v22, 1, v168);
  v37 = *(v0 + 512);
  if (v36 == 1)
  {
    sub_5E20(*(v0 + 504), &qword_817E0, &qword_71300);
    v38 = sub_6C8EC();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    v40 = *(v0 + 440);
    v39 = *(v0 + 448);
    v41 = v34;
    v42 = *(v0 + 504);
    sub_14344(*(v0 + 512));
    v43 = v42;
    v34 = v41;
    (*(v39 + 8))(v43, v40);
  }

  v44 = *(v0 + 656);
  v45 = *(v0 + 592);
  v164 = *(v0 + 584);
  v165 = *(v0 + 608);
  v46 = *(v0 + 544);
  v47 = *(v0 + 520);
  v48 = *(v0 + 512);
  v167 = *(v0 + 576);
  v169 = *(v0 + 488);
  v49 = *(v0 + 280);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  v162 = *(v0 + 600);
  v163 = *(v0 + 248);
  sub_16FA0(*(v0 + 256), *(v0 + 264), v34, v171, v44, v48, v47);

  sub_5E20(v48, &qword_817E8, &qword_70408);
  sub_177A0(v46, v44, v51, v49);
  (*(v45 + 16))(v162, v165, v164);
  v52 = swift_task_alloc();
  *(v52 + 16) = v167;
  *(v52 + 24) = v163;
  *(v52 + 32) = v173;
  *(v52 + 40) = v46;
  *(v52 + 48) = v47;
  *(v52 + 56) = v44;
  sub_6B67C();

  if (sub_5750())
  {
    v53 = *(v0 + 488);
    sub_6B6CC();
  }

  v54 = *(v0 + 496);
  v55 = *(v0 + 440);
  v56 = *(v0 + 248);
  sub_6C4CC();
  v57 = v175(v54, 1, v55);
  v58 = *(v0 + 496);
  if (v57 == 1)
  {
    sub_5E20(*(v0 + 496), &qword_817E0, &qword_71300);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v59 = sub_6D04C();
    sub_5CE4(v59, qword_839A0);
    v60 = sub_6D03C();
    v61 = sub_6D46C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "IFFlow received SystemResponse with no output, defaulting to minimally empty output", v62, 2u);
    }

    v64 = *(v0 + 288);
    v63 = *(v0 + 296);
    v65 = *(v0 + 248);

    v66 = v64[3];
    v67 = v64[4];
    sub_99FC(v64, v66);
    v68 = sub_6C4EC();
    v69 = *(v68 - 8);
    (*(v69 + 16))(v63, v65, v68);
    (*(v69 + 56))(v63, 0, 1, v68);
    v70 = async function pointer to dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)[1];
    v71 = swift_task_alloc();
    *(v0 + 720) = v71;
    *v71 = v0;
    v71[1] = sub_16BE0;
    v72 = *(v0 + 488);
    v73 = *(v0 + 296);
    v74 = *(v0 + 272);
    v75 = *(v0 + 280);
    v76 = *(v0 + 240);
    v77 = _swiftEmptyArrayStorage;
    goto LABEL_77;
  }

  v78 = *(v0 + 464);
  v80 = *(v0 + 424);
  v79 = *(v0 + 432);
  v82 = *(v0 + 384);
  v81 = *(v0 + 392);
  v83 = *(v0 + 288);
  v84 = *(v0 + 248);
  (*(*(v0 + 448) + 32))(v78, *(v0 + 496), *(v0 + 440));
  v85 = sub_4B728();
  sub_17CD4(v78, v85, v86, v0 + 16);

  sub_6C36C();
  sub_6C37C();
  v87 = *(v82 + 48);
  sub_201AC(v79, v81, &qword_81798, &qword_703B8);
  sub_201AC(v80, v81 + v87, &qword_81798, &qword_703B8);
  v88 = sub_6C45C();
  v89 = *(v88 - 8);
  v90 = v89[6];
  if (v90(v81, 1, v88) == 1)
  {
    goto LABEL_58;
  }

  v91 = (v0 + 416);
  v92 = *(v0 + 416);
  sub_C14C(*(v0 + 392), v92, &qword_81798, &qword_703B8);
  v177 = v89[11];
  v93 = v177(v92, v88);
  v94 = v93;
  if (v93 == enum case for ResponseOutput.DialogType.generated(_:))
  {
    v95 = *v91;
    v96 = v89[1];
    v96(v95, v88);
    if (v90(v81 + v87, 1, v88) == 1)
    {
      goto LABEL_58;
    }

    v97 = *(v0 + 408);
    sub_C14C(v81 + v87, v97, &qword_81798, &qword_703B8);
    v98 = v177(v97, v88);
    v96(v97, v88);
    if (v98 != v94)
    {
      goto LABEL_58;
    }

LABEL_53:
    v100 = *(v0 + 464);
    v101 = *(v0 + 392);
    sub_5E20(v81 + v87, &qword_81798, &qword_703B8);
    sub_5E20(v101, &qword_81798, &qword_703B8);
    v102 = sub_6C42C();
    if (*(v102 + 16))
    {
      v103 = *(v0 + 488);
      v104 = *(v0 + 368);
      v105 = *(v0 + 376);
      v106 = *(v0 + 352);
      v107 = *(v0 + 360);
      v108 = *(v0 + 344);
      (*(v107 + 16))(v104, v102 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v106);

      (*(v107 + 32))(v105, v104, v106);
      sub_148E4(v108);
      sub_6B6AC();
      (*(v107 + 8))(v105, v106);
    }

    else
    {
    }

    goto LABEL_59;
  }

  if (v93 != enum case for ResponseOutput.DialogType.suppressed(_:))
  {
    goto LABEL_57;
  }

  if (v90(v81 + v87, 1, v88) != 1)
  {
    v99 = *(v0 + 400);
    sub_C14C(v81 + v87, v99, &qword_81798, &qword_703B8);
    if (v177(v99, v88) == v94)
    {
      goto LABEL_53;
    }

    v91 = (v0 + 400);
LABEL_57:
    (v89[1])(*v91, v88);
  }

LABEL_58:
  sub_5E20(*(v0 + 392), &qword_817D8, &qword_70400);
LABEL_59:
  sub_C14C(v0 + 16, v0 + 64, &qword_817F0, &qword_70410);
  if (*(v0 + 104))
  {
    sub_5E20(v0 + 64, &qword_81800, &qword_70418);
  }

  else
  {
    sub_5E20(v0 + 64, &qword_817F0, &qword_70410);
  }

  v109 = *(v0 + 488);
  v110 = *(v0 + 464);
  v111 = *(v0 + 352);
  v112 = *(v0 + 360);
  v113 = *(v0 + 336);
  sub_6B70C();
  sub_134C8(v113);
  LODWORD(v109) = (*(v112 + 48))(v113, 1, v111);
  sub_5E20(v113, &qword_817A8, &qword_703C0);
  if (v109 != 1)
  {
    v114 = *(v0 + 464);
    v116 = *(v0 + 320);
    v115 = *(v0 + 328);
    v117 = *(v0 + 312);
    sub_6C49C();
    sub_6C40C();
    (*(v116 + 8))(v115, v117);
  }

  v118 = *(v0 + 488);
  v119 = *(v0 + 728);
  sub_6B73C();
  if (v119 == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v120 = sub_6D04C();
    sub_5CE4(v120, qword_839A0);
    v121 = sub_6D03C();
    v122 = sub_6D45C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 134217984;
      *(v123 + 4) = 25000;
      _os_log_impl(&dword_0, v121, v122, "Setting minimumAutoDismissalTimeInMs to %ld", v123, 0xCu);
    }

    v124 = *(v0 + 488);
    v125 = *(v0 + 304);

    sub_6B59C();
    v126 = sub_6B58C();
    (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
    sub_6B6FC();
  }

  v127 = *(v0 + 656);
  v128 = *(v0 + 632);
  v129 = *(v0 + 616);
  v131 = *(v0 + 456);
  v130 = *(v0 + 464);
  v132 = *(v0 + 440);
  v133 = *(v0 + 448);
  v134 = *(v0 + 288);
  sub_1FD1C();
  (*(v133 + 16))(v131, v130, v132);
  v178(v128, v127, v129);
  v135 = sub_12CF0(v131, v128, *(v134 + 128));
  *(v0 + 680) = v135;
  sub_C14C(v0 + 16, v0 + 112, &qword_817F0, &qword_70410);
  if (!*(v0 + 152))
  {
    sub_5E20(v0 + 112, &qword_817F0, &qword_70410);
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0;
    goto LABEL_76;
  }

  *(v0 + 232) = *(v0 + 144);
  v136 = *(v0 + 112);
  *(v0 + 216) = *(v0 + 128);
  *(v0 + 200) = v136;
  if (!*(v0 + 224))
  {
LABEL_76:
    v152 = *(v0 + 288);
    v153 = *(v0 + 296);
    v154 = *(v0 + 248);
    sub_5E20(v0 + 200, &qword_81800, &qword_70418);
    v66 = v152[3];
    v67 = v152[4];
    sub_99FC(v152, v66);
    sub_5708(&qword_81548, &qword_70088);
    v155 = swift_allocObject();
    *(v0 + 704) = v155;
    *(v155 + 16) = xmmword_6FFF0;
    *(v155 + 32) = v135;
    v156 = sub_6C4EC();
    v157 = *(v156 - 8);
    (*(v157 + 16))(v153, v154, v156);
    (*(v157 + 56))(v153, 0, 1, v156);
    v158 = async function pointer to dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)[1];
    v159 = v135;
    v160 = swift_task_alloc();
    *(v0 + 712) = v160;
    *v160 = v0;
    v160[1] = sub_167C0;
    v72 = *(v0 + 488);
    v73 = *(v0 + 296);
    v74 = *(v0 + 272);
    v75 = *(v0 + 280);
    v76 = *(v0 + 240);
    v77 = v155;
LABEL_77:

    return dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(v76, v77, v72, v73, v74, v75, v66, v67);
  }

  v137 = *(v0 + 288);
  v138 = *(v0 + 296);
  v139 = *(v0 + 248);
  sub_1FD68((v0 + 200), v0 + 160);
  v140 = v137[3];
  sub_99FC(v137, v140);
  sub_5708(&qword_81548, &qword_70088);
  v141 = swift_allocObject();
  *(v0 + 688) = v141;
  *(v141 + 16) = xmmword_6FFF0;
  *(v141 + 32) = v135;
  v142 = sub_6C4EC();
  v143 = *(v142 - 8);
  (*(v143 + 16))(v138, v139, v142);
  (*(v143 + 56))(v138, 0, 1, v142);
  v144 = async function pointer to dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)[1];
  v145 = v135;
  v146 = swift_task_alloc();
  *(v0 + 696) = v146;
  *v146 = v0;
  v146[1] = sub_16398;
  v147 = *(v0 + 488);
  v148 = *(v0 + 296);
  v149 = *(v0 + 272);
  v150 = *(v0 + 280);
  v151 = *(v0 + 240);

  return dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(v151, v0 + 160, v141, v147, v148, v149, v150, v140);
}

uint64_t sub_16398()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 296);
  v5 = *v0;

  sub_5E20(v3, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_164DC, 0, 0);
}

uint64_t sub_164DC()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);

  sub_9964((v0 + 160));
  sub_5E20(v0 + 16, &qword_817F0, &qword_70410);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v20 = *(v0 + 664);
  v21 = *(v0 + 672);
  v10 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v11 = *(v0 + 616);
  v24 = *(v0 + 632);
  v25 = *(v0 + 608);
  v12 = *(v0 + 576);
  v26 = *(v0 + 600);
  v27 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 456);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 376);
  v41 = *(v0 + 368);
  v42 = *(v0 + 344);
  v43 = *(v0 + 336);
  v44 = *(v0 + 328);
  v45 = *(v0 + 304);
  v46 = *(v0 + 296);
  sub_5E20(*(v0 + 520), &qword_81520, &qword_708D0);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v20(v10, v11);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_167C0()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 296);
  v5 = *v0;

  sub_5E20(v3, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_16904, 0, 0);
}

uint64_t sub_16904()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);

  sub_5E20(v0 + 16, &qword_817F0, &qword_70410);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v20 = *(v0 + 664);
  v21 = *(v0 + 672);
  v10 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v11 = *(v0 + 616);
  v24 = *(v0 + 632);
  v25 = *(v0 + 608);
  v12 = *(v0 + 576);
  v26 = *(v0 + 600);
  v27 = *(v0 + 568);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 456);
  v34 = *(v0 + 432);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v39 = *(v0 + 392);
  v40 = *(v0 + 376);
  v41 = *(v0 + 368);
  v42 = *(v0 + 344);
  v43 = *(v0 + 336);
  v44 = *(v0 + 328);
  v45 = *(v0 + 304);
  v46 = *(v0 + 296);
  sub_5E20(*(v0 + 520), &qword_81520, &qword_708D0);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v20(v10, v11);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_16BE0()
{
  v1 = *(*v0 + 720);
  v2 = *(*v0 + 296);
  v4 = *v0;

  sub_5E20(v2, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_16D08, 0, 0);
}

uint64_t sub_16D08()
{
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[73];
  (*(v0[60] + 8))(v0[61], v0[59]);
  (*(v2 + 8))(v1, v3);
  v14 = v0[83];
  v15 = v0[84];
  v4 = v0[82];
  v16 = v0[81];
  v17 = v0[80];
  v5 = v0[77];
  v18 = v0[79];
  v19 = v0[76];
  v6 = v0[72];
  v20 = v0[75];
  v21 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[62];
  v25 = v0[61];
  v26 = v0[58];
  v27 = v0[57];
  v28 = v0[54];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[47];
  v35 = v0[46];
  v36 = v0[43];
  v37 = v0[42];
  v38 = v0[41];
  v39 = v0[38];
  v40 = v0[37];
  sub_5E20(v0[65], &qword_81520, &qword_708D0);
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  v14(v4, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_16FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v61 = a1;
  v67 = a7;
  v71 = sub_6BA3C();
  v73 = *(v71 - 8);
  v9 = v73[8];
  v10 = __chkstk_darwin(v71);
  v74 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v60 - v12;
  v13 = sub_6C68C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6C8BC();
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  __chkstk_darwin(v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6C54C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v65 = a5;
  v27(v26, a5, v22);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == enum case for StatementOutcome.actionConfirmation(_:))
  {
    goto LABEL_2;
  }

  if (v28 == enum case for StatementOutcome.toolDisambiguation(_:))
  {
    (*(v23 + 96))(v26, v22);
    (*(v14 + 32))(v17, v26, v13);
    v31 = *(sub_6C67C() + 16);

    v29 = sub_1AD80(v31);
    (*(v14 + 8))(v17, v13);
  }

  else if (v28 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    v29 = sub_1B0B0();
    (*(v23 + 8))(v26, v22);
  }

  else
  {
    if (v28 == enum case for StatementOutcome.parameterConfirmation(_:))
    {
LABEL_2:
      (*(v23 + 8))(v26, v22);
      v29 = sub_1B8C8(a6);
      goto LABEL_7;
    }

    if (v28 != enum case for StatementOutcome.parameterDisambiguation(_:))
    {
      (*(v23 + 8))(v26, v22);
      v29 = _swiftEmptyArrayStorage;
      v32 = v71;
      v33 = v74;
      v34 = v69;
      goto LABEL_8;
    }

    (*(v23 + 96))(v26, v22);
    v58 = v72;
    (*(v72 + 32))(v21, v26, v18);
    v59 = *(sub_6C8AC() + 16);

    v29 = sub_1AD80(v59);
    (*(v58 + 8))(v21, v18);
  }

LABEL_7:
  v32 = v71;
  v33 = v74;
  v34 = v69;
  if (v29)
  {
LABEL_8:
    v66 = v29;
    v35 = v29[2];
    if (v35)
    {
      v72 = v73[2];
      v73 += 2;
      v36 = v66 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
      v70 = v73[7];
      v37 = (v73 + 2);
      v38 = (v73 - 1);
      *&v30 = 136315138;
      v68 = v30;
      (v72)(v34, v36, v32);
      while (1)
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v39 = sub_6D04C();
        sub_5CE4(v39, qword_839A0);
        (*v37)(v33, v34, v32);
        v40 = sub_6D03C();
        v41 = sub_6D45C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v76 = v43;
          *v42 = v68;
          sub_6BAAC();
          v75[3] = v32;
          v75[4] = sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
          v44 = sub_97B0(v75);
          (v72)(v44, v74, v32);
          v45 = sub_6BA9C();
          v47 = v46;
          (*v38)(v74, v71);
          sub_9964(v75);
          v48 = sub_1076C(v45, v47, &v76);
          v32 = v71;

          *(v42 + 4) = v48;
          _os_log_impl(&dword_0, v40, v41, "Posting SDA: %s", v42, 0xCu);
          sub_9964(v43);
          v33 = v74;

          v34 = v69;
        }

        else
        {

          (*v38)(v33, v32);
        }

        v36 += v70;
        if (!--v35)
        {
          break;
        }

        (v72)(v34, v36, v32);
      }
    }

    v49 = v67;
    sub_6B4FC();
    sub_6B4EC();
    sub_1E214(v61, v62, v63, v64);
    sub_6B4CC();
    v50 = 0;
    goto LABEL_23;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v51 = sub_6D04C();
  sub_5CE4(v51, qword_839A0);
  v52 = sub_6D03C();
  v53 = sub_6D46C();
  v54 = os_log_type_enabled(v52, v53);
  v49 = v67;
  if (v54)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v52, v53, "Failed to create any systemDialogActs", v55, 2u);
  }

  v50 = 1;
LABEL_23:
  v56 = sub_6B50C();
  return (*(*(v56 - 8) + 56))(v49, v50, 1, v56);
}

uint64_t sub_177A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_6CD2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    (*(v8 + 104))(v12, enum case for RequestSummary.ExecutionSource.searchTool(_:), v7);
    v13 = sub_6CD1C();
    result = (*(v8 + 8))(v12, v7);
    if (v13)
    {
      v27 = &type metadata for FeatureEnablementProvider.Key;
      v28 = sub_1FF74();
      v14 = sub_6B8AC();
      result = sub_9964(v26);
      if (v14)
      {
        result = sub_1A85C(a2);
        if (result)
        {
          v15 = v4;
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v16 = sub_6D04C();
          sub_5CE4(v16, qword_839A0);
          v17 = sub_6D03C();
          v18 = sub_6D45C();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_0, v17, v18, "IFFlow SearchTool invoked + ShowASR FF Enabled + PCS result(s). Sending Reveal ASR AceCommand", v19, 2u);
          }

          v20 = [objc_allocWithZone(SAUIRevealRecognizedSpeech) init];
          v21 = *(v15 + 80);
          v22 = v20;
          sub_6CDBC();
          v23 = sub_6D2BC();

          [v22 setRefId:v23];

          v24 = sub_6D2BC();
          [v22 setOverriddenSpeech:v24];

          sub_6B28C();
          sub_99FC(v26, v27);
          sub_6B65C();

          return sub_9964(v26);
        }
      }
    }
  }

  return result;
}

uint64_t sub_17A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[0] = a6;
  v26[1] = a7;
  v10 = sub_5708(&qword_81520, &qword_708D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v26 - v12;
  v14 = sub_6CD2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6B38C();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  (*(v22 + 16))(v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_6B69C();
  sub_4B728();
  sub_6B6BC();
  sub_6B71C();
  sub_6B72C();
  (*(v15 + 16))(v18, a5, v14);
  sub_6B6DC();
  sub_C14C(v26[0], v13, &qword_81520, &qword_708D0);
  sub_6B6EC();
  v23 = sub_1ED90();
  sub_1FA68(a3, v23, v24);

  return sub_6B68C();
}

uint64_t sub_17CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v225 = a2;
  v226 = a3;
  v206 = sub_6C3AC();
  v205 = *(v206 - 8);
  v7 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5708(&qword_817A8, &qword_703C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v215 = v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v211 = v198 - v13;
  v14 = sub_6C3CC();
  v214 = *(v14 - 8);
  v15 = *(v214 + 64);
  v16 = __chkstk_darwin(v14);
  v207 = v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v201 = v198 - v19;
  __chkstk_darwin(v18);
  v238 = v198 - v20;
  v228 = sub_6C3FC();
  v219 = *(v228 - 8);
  v21 = *(v219 + 64);
  v22 = __chkstk_darwin(v228);
  v210 = v198 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v203 = v198 - v25;
  v26 = __chkstk_darwin(v24);
  v209 = v198 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = v198 - v29;
  v31 = __chkstk_darwin(v28);
  v227 = v198 - v32;
  __chkstk_darwin(v31);
  v239 = v198 - v33;
  v224 = sub_6AE9C();
  v216 = *(v224 - 8);
  v34 = *(v216 + 64);
  __chkstk_darwin(v224);
  v223 = v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_6C41C();
  v242 = *(v36 - 8);
  v243 = v36;
  v37 = *(v242 + 64);
  __chkstk_darwin(v36);
  v241 = v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_6C53C();
  v236 = *(v240 - 8);
  v39 = *(v236 + 64);
  __chkstk_darwin(v240);
  v235 = v198 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_5708(&qword_81808, &qword_70420);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v213 = v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v212 = v198 - v46;
  __chkstk_darwin(v45);
  v48 = v198 - v47;
  v229 = sub_6BFCC();
  v218 = *(v229 - 8);
  v49 = *(v218 + 64);
  v50 = __chkstk_darwin(v229);
  v200 = v198 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v202 = v198 - v53;
  v54 = __chkstk_darwin(v52);
  v237 = v198 - v55;
  v56 = __chkstk_darwin(v54);
  v58 = v198 - v57;
  __chkstk_darwin(v56);
  v60 = v198 - v59;
  v61 = v4[15];
  sub_99FC(v4 + 11, v4[14]);
  result = sub_6B2BC();
  if (result)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = _swiftEmptyArrayStorage;
    return result;
  }

  v208 = v30;
  v199 = a4;
  v244 = _swiftEmptyArrayStorage;
  v217 = a1;
  v63 = sub_13950();
  if (v66)
  {
    v67 = v63;
    v68 = v64;
    v69 = v66;
    v234 = v65;
    v70 = sub_6ACFC();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    sub_6ACEC();
    sub_20274(&qword_81818, &type metadata accessor for RGPluginModel);
    v73 = v229;
    v232 = v67;
    v233 = v68;
    sub_6ACDC();
    v74 = v219;

    v75 = v218;
    (*(v218 + 56))(v48, 0, 1, v73);
    (*(v75 + 32))(v60, v48, v73);
    (*(v75 + 16))(v58, v60, v73);
    v76 = (*(v75 + 88))(v58, v73);
    if (v76 == enum case for RGPluginModel.siriSDSView(_:))
    {
      (*(v75 + 96))(v58, v73);
      v77 = v235;
      v78 = v236;
      v79 = v240;
      (*(v236 + 32))(v235, v58, v240);
      v80 = sub_1A384(v77, v225, v226);
      sub_1FD80(v232, v233, v234, v69);
      (*(v78 + 8))(v77, v79);
      (*(v75 + 8))(v60, v73);
      v231 = v80;
      v244 = v80;
    }

    else
    {
      v81 = *(v75 + 8);
      v81(v60, v73);
      v81(v58, v73);
      v240 = v69;
      v82 = v241;
      sub_6C49C();
      v83 = sub_6C40C();
      (*(v242 + 8))(v82, v243);
      v84 = &SAAceViewUIItemTypeItemTypeSmartDialogValue;
      if ((v83 & 1) == 0)
      {
        v84 = &SAAceViewUIItemTypeItemTypeResultValue;
      }

      v85 = *v84;
      sub_6D2CC();
      v86 = [objc_allocWithZone(SAUIPluginSnippet) init];
      v87 = v223;
      sub_6AE8C();
      sub_6AE6C();
      (*(v216 + 8))(v87, v224);
      v88 = sub_6D2BC();

      [v86 setAceId:v88];

      v89 = v86;
      v90 = sub_6D2BC();
      [v89 setViewId:v90];

      v91 = v234;
      v92 = sub_6D2BC();
      [v89 setBundleName:v92];

      v93 = sub_6D2BC();

      [v89 setItemType:v93];

      v95 = v232;
      v94 = v233;
      isa = sub_6AE0C().super.isa;
      [v89 setModelData:isa];

      v97 = sub_6D2BC();
      [v89 setResponseViewId:v97];

      sub_6D36C();
      if (*(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v244 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v195 = *(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8));
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FD80(v95, v94, v91, v240);

      v231 = v244;
      v74 = v219;
    }
  }

  else
  {
    v231 = _swiftEmptyArrayStorage;
    v74 = v219;
    v73 = v229;
  }

  v98 = sub_13E7C();
  v99 = *(v98 + 16);
  v222 = v14;
  v100 = v227;
  if (v99)
  {
    v101 = v74 + 16;
    v243 = *(v74 + 16);
    v102 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v198[1] = v98;
    v103 = v98 + v102;
    v104 = *(v74 + 72);
    v241 = (v74 + 88);
    v242 = v104;
    LODWORD(v240) = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v105 = (v74 + 8);
    v235 = (v101 + 80);
    v233 = (v214 + 8);
    v234 = (v214 + 32);
    v232 = (v218 + 8);
    v221 = SAAceViewUIItemTypeItemTypeResultValue;
    v220 = (v216 + 8);
    v106 = v228;
    v107 = v239;
    v236 = v101;
    do
    {
      v109 = v243;
      v243(v107, v103, v106);
      v109(v100, v107, v106);
      v110 = (*v241)(v100, v106);
      if (v110 == v240)
      {
        (*v235)(v100, v106);
        v111 = v238;
        (*v234)(v238, v100, v14);
        v112 = v237;
        sub_6C3BC();
        (*v233)(v111, v14);
        sub_20274(&qword_81810, &type metadata accessor for RGPluginModel);
        v113 = sub_6AF1C();
        v115 = v114;
        (*v232)(v112, v73);
        if (v115 >> 60 == 15)
        {
          v107 = v239;
          (*v105)(v239, v106);
        }

        else
        {
          v230 = sub_6BFBC();
          v116 = objc_allocWithZone(SAUIPluginSnippet);
          v231 = v113;
          v117 = v116;
          v118 = v221;
          v119 = [v117 init];
          v120 = v223;
          sub_6AE8C();
          sub_6AE6C();
          (*v220)(v120, v224);
          v121 = sub_6D2BC();

          [v119 setAceId:v121];

          v122 = v119;
          v123 = sub_6D2BC();
          [v122 setViewId:v123];

          v124 = sub_6D2BC();

          [v122 setBundleName:v124];

          [v122 setItemType:v118];
          v125 = v231;
          v126 = sub_6AE0C().super.isa;
          [v122 setModelData:v126];

          v127 = sub_6D2BC();
          [v122 setResponseViewId:v127];

          sub_6D36C();
          if (*(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v244 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v128 = *(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8));
            sub_6D3AC();
          }

          sub_6D3CC();
          sub_1FCA0(v125, v115);

          v107 = v239;
          v106 = v228;
          (*v105)(v239, v228);
          v231 = v244;
          v14 = v222;
          v73 = v229;
          v100 = v227;
        }
      }

      else
      {
        v108 = *v105;
        (*v105)(v100, v106);
        v108(v107, v106);
      }

      v103 += v242;
      --v99;
    }

    while (v99);

    v74 = v219;
  }

  else
  {

    v106 = v228;
  }

  v129 = v211;
  sub_6C46C();
  v131 = v74 + 48;
  v130 = *(v74 + 48);
  v132 = v130(v129, 1, v106);
  v133 = v208;
  if (v132 == 1)
  {
    sub_5E20(v129, &qword_817A8, &qword_703C0);
    v134 = v199;
    v135 = v215;
  }

  else
  {
    v243 = v130;
    (*(v74 + 32))(v208, v129, v106);
    v136 = *(v74 + 16);
    v137 = v209;
    v136(v209, v133, v106);
    v138 = v74;
    v139 = *(v74 + 88);
    if (v139(v137, v106) == enum case for ResponseOutput.VisualOutput.pluginSnippet(_:))
    {
      (*(v138 + 96))(v137, v106);
      v140 = v205;
      v141 = v204;
      v142 = v206;
      (*(v205 + 32))(v204, v137, v206);
      v242 = sub_6C38C();
      v144 = v143;
      sub_6C39C();
      (*(v140 + 8))(v141, v142);
      v145 = SAAceViewUIItemTypeItemTypeAttributionValue;
      v146 = objc_allocWithZone(SAUIPluginSnippet);
      v147 = v145;
      v148 = [v146 init];
      v149 = v223;
      sub_6AE8C();
      sub_6AE6C();
      (*(v216 + 8))(v149, v224);
      v150 = sub_6D2BC();

      [v148 setAceId:v150];

      v151 = v148;
      v152 = sub_6D2BC();
      [v151 setViewId:v152];

      v153 = v242;
      v154 = sub_6D2BC();
      [v151 setBundleName:v154];

      [v151 setItemType:v147];
      v155 = sub_6AE0C().super.isa;
      [v151 setModelData:v155];

      v156 = sub_6D2BC();
      [v151 setResponseViewId:v156];

      sub_6D36C();
      if (*(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v244 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v196 = *(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8));
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FCB4(v153, v144);

      v74 = v219;
      v106 = v228;
      (*(v219 + 8))(v208, v228);
      v231 = v244;
      v134 = v199;
      v135 = v215;
      v130 = v243;
    }

    else
    {
      v242 = v131;
      v157 = *(v138 + 8);
      v157(v137, v106);
      v158 = v203;
      v136(v203, v133, v106);
      if (v139(v158, v106) == enum case for ResponseOutput.VisualOutput.systemSnippet(_:))
      {
        v241 = v157;
        v74 = v219;
        (*(v219 + 96))(v158, v106);
        v159 = v214;
        v160 = v201;
        v161 = v158;
        v162 = v222;
        (*(v214 + 32))(v201, v161, v222);
        v163 = v200;
        sub_6C3BC();
        (*(v159 + 8))(v160, v162);
        v164 = v218;
        v165 = v202;
        v166 = v229;
        (*(v218 + 32))(v202, v163, v229);
        sub_20274(&qword_81810, &type metadata accessor for RGPluginModel);
        v167 = sub_6AF1C();
        if (v168 >> 60 != 15)
        {
          v169 = v167;
          v170 = v168;
          v240 = sub_6BFBC();
          v171 = SAAceViewUIItemTypeItemTypeAttributionValue;
          v172 = objc_allocWithZone(SAUIPluginSnippet);
          v173 = v171;
          v174 = [v172 init];
          v175 = v223;
          sub_6AE8C();
          sub_6AE6C();
          (*(v216 + 8))(v175, v224);
          v176 = sub_6D2BC();

          [v174 setAceId:v176];

          v177 = v174;
          v178 = sub_6D2BC();
          [v177 setViewId:v178];

          v179 = sub_6D2BC();

          [v177 setBundleName:v179];

          [v177 setItemType:v173];
          v180 = sub_6AE0C().super.isa;
          [v177 setModelData:v180];

          v181 = sub_6D2BC();
          [v177 setResponseViewId:v181];

          sub_6D36C();
          v182 = v208;
          v183 = v169;
          v130 = v243;
          if (*(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v244 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v197 = *(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8));
            sub_6D3AC();
          }

          sub_6D3CC();
          sub_1FCA0(v183, v170);

          (*(v218 + 8))(v202, v229);
          v106 = v228;
          (v241)(v182, v228);
          v231 = v244;
          v134 = v199;
          v135 = v215;
          v74 = v219;
          goto LABEL_39;
        }

        (*(v164 + 8))(v165, v166);
        (v241)(v208, v106);
        v134 = v199;
        v135 = v215;
      }

      else
      {
        v157(v158, v106);
        v157(v133, v106);
        v134 = v199;
        v135 = v215;
        v74 = v219;
      }

      v130 = v243;
    }
  }

LABEL_39:
  sub_134C8(v135);
  if (v130(v135, 1, v106) == 1)
  {
    sub_5E20(v135, &qword_817A8, &qword_703C0);
    v184 = v218;
    v185 = v212;
    v186 = v229;
    (*(v218 + 56))(v212, 1, 1, v229);
    v187 = v213;
  }

  else
  {
    v188 = v210;
    (*(v74 + 16))(v210, v135, v106);
    v189 = (*(v74 + 88))(v188, v106);
    v185 = v212;
    if (v189 == enum case for ResponseOutput.VisualOutput.systemSnippet(_:))
    {
      (*(v74 + 96))(v188, v106);
      v190 = v214;
      v191 = v207;
      v192 = v222;
      (*(v214 + 32))(v207, v188, v222);
      sub_6C3BC();
      (*(v190 + 8))(v191, v192);
      v184 = v218;
      (*(v218 + 56))(v185, 0, 1, v229);
      v193 = *(v74 + 8);
    }

    else
    {
      v193 = *(v74 + 8);
      v193(v188, v106);
      v184 = v218;
      (*(v218 + 56))(v185, 1, 1, v229);
    }

    v187 = v213;
    v193(v135, v106);
    v186 = v229;
  }

  sub_C14C(v185, v187, &qword_81808, &qword_70420);
  if ((*(v184 + 48))(v187, 1, v186) == 1)
  {
    sub_5E20(v185, &qword_81808, &qword_70420);
    result = sub_5E20(v187, &qword_81808, &qword_70420);
    *v134 = 0u;
    *(v134 + 16) = 0u;
    *(v134 + 32) = 0;
  }

  else
  {
    *(v134 + 24) = v186;
    *(v134 + 32) = sub_20274(&qword_81810, &type metadata accessor for RGPluginModel);
    v194 = sub_97B0(v134);
    (*(v184 + 32))(v194, v187, v186);
    result = sub_5E20(v185, &qword_81808, &qword_70420);
  }

  *(v134 + 40) = v231;
  return result;
}

uint64_t sub_19890@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6B50C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_81520, &qword_708D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v18 - v13;
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  sub_19B34(v18 - v15);
  sub_C14C(v16, v14, &qword_81520, &qword_708D0);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    result = sub_5E20(v16, &qword_81520, &qword_708D0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    (*(v3 + 16))(v11, v6, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    *(a1 + 24) = sub_6B89C();
    *(a1 + 32) = &protocol witness table for AceOutput;
    sub_97B0(a1);
    sub_6B85C();
    (*(v3 + 8))(v6, v2);
    return sub_5E20(v16, &qword_81520, &qword_708D0);
  }

  return result;
}

uint64_t sub_19B34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6CE8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_817B0, &qword_703D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_21308();
  if (v18 >> 60 == 15)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v19 = sub_6D04C();
    sub_5CE4(v19, qword_839A0);
    v20 = sub_6D03C();
    v21 = sub_6D44C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "[IFOutputBuilder] Unable to create pommesContextUpdate from Session Status update", v22, 2u);
    }

    v23 = sub_6B50C();
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }

  else
  {
    v26 = v17;
    v27 = v18;
    v28 = sub_6ACFC();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_6ACEC();
    sub_20274(&qword_817B8, &type metadata accessor for PommesContext);
    v36 = v26;
    sub_6ACDC();
    v37 = a1;

    v31 = *(v3 + 56);
    v31(v16, 0, 1, v2);
    sub_C14C(v16, v14, &qword_817B0, &qword_703D8);
    if ((*(v3 + 48))(v14, 1, v2) == 1)
    {
      sub_5E20(v16, &qword_817B0, &qword_703D8);
      sub_1FCA0(v36, v27);
      v32 = sub_6B50C();
      return (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
    }

    else
    {
      (*(v3 + 32))(v6, v14, v2);
      v33 = v37;
      sub_6B4FC();
      (*(v3 + 16))(v11, v6, v2);
      v31(v11, 0, 1, v2);
      sub_6B4DC();
      sub_1FCA0(v36, v27);
      (*(v3 + 8))(v6, v2);
      sub_5E20(v16, &qword_817B0, &qword_703D8);
      v34 = sub_6B50C();
      return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }
  }
}

void *sub_1A008()
{
  v1 = v0;
  v2 = sub_6C8BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6BFAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6C54C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for StatementOutcome.success(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    sub_5708(&qword_81850, &qword_70430);
    v18 = *(sub_6D1EC() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_70000;
    sub_6BF9C();
    (*(v8 + 8))(v11, v7);
  }

  else if (v17 == enum case for StatementOutcome.parameterDisambiguation(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v3 + 32))(v6, v16, v2);
    v21 = sub_6C8AC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return _swiftEmptyArrayStorage;
  }

  return v21;
}

unint64_t sub_1A384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6AE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _swiftEmptyArrayStorage;
  v11 = sub_6C52C();
  v52 = v12;
  v53 = v11;
  v54 = a1;
  v51 = sub_6C4FC();
  v13 = SAAceViewUIItemTypeItemTypeSmartDialogValue;
  v14 = objc_allocWithZone(SAUIPluginSnippet);
  v15 = v13;
  v16 = [v14 init];
  sub_6AE8C();
  sub_6AE6C();
  v17 = *(v7 + 8);
  v48 = v7 + 8;
  v49 = v6;
  v47 = v17;
  v17(v10, v6);
  v18 = sub_6D2BC();

  [v16 setAceId:v18];

  v19 = v16;
  v20 = sub_6D2BC();
  [v19 setViewId:v20];

  v21 = sub_6D2BC();

  [v19 setBundleName:v21];

  [v19 setItemType:v15];
  v23 = v52;
  v22 = v53;
  isa = sub_6AE0C().super.isa;
  [v19 setModelData:isa];

  v50 = a2;
  v51 = a3;
  v25 = sub_6D2BC();
  [v19 setResponseViewId:v25];

  sub_1FCB4(v22, v23);
  sub_6D36C();
  if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v44 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    sub_6D3AC();
  }

  sub_6D3CC();
  v26 = v55;
  v27 = sub_6C50C();
  if (v28 >> 60 == 15)
  {
  }

  else
  {
    v29 = v27;
    v30 = v28;
    v31 = sub_6C51C();
    if (v32)
    {
      v33 = SAAceViewUIItemTypeItemTypeResultValue;
      v54 = v31;
      v34 = objc_allocWithZone(SAUIPluginSnippet);
      v35 = v33;
      v36 = [v34 init];
      sub_6AE8C();
      sub_6AE6C();
      v47(v10, v49);
      v37 = sub_6D2BC();

      [v36 setAceId:v37];

      v38 = v36;
      v39 = sub_6D2BC();
      [v38 setViewId:v39];

      v40 = sub_6D2BC();

      [v38 setBundleName:v40];

      [v38 setItemType:v35];
      v41 = sub_6AE0C().super.isa;
      [v38 setModelData:v41];

      v42 = sub_6D2BC();
      [v38 setResponseViewId:v42];

      sub_6D36C();
      if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v45 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FCA0(v29, v30);

      return v55;
    }

    else
    {

      sub_1FCA0(v29, v30);
    }
  }

  return v26;
}

uint64_t sub_1A85C(uint64_t a1)
{
  v2 = sub_6D1EC();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  v4 = __chkstk_darwin(v2);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v37 = &v35 - v7;
  __chkstk_darwin(v6);
  v9 = (&v35 - v8);
  v10 = sub_6D15C();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6C54C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6BFAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  if ((*(v15 + 88))(v18, v14) != enum case for StatementOutcome.success(_:))
  {
    (*(v15 + 8))(v18, v14);
LABEL_8:
    v33 = 0;
    return v33 & 1;
  }

  (*(v15 + 96))(v18, v14);
  (*(v20 + 32))(v23, v18, v19);
  sub_6BF9C();
  v24 = v40;
  if ((*(v40 + 88))(v9, v2) != enum case for TypedValue.collection(_:))
  {
    (*(v20 + 8))(v23, v19);
    (*(v24 + 8))(v9, v2);
    goto LABEL_8;
  }

  (*(v24 + 96))(v9, v2);
  v25 = *v9;
  v26 = swift_projectBox();
  v28 = v38;
  v27 = v39;
  (*(v38 + 16))(v13, v26, v39);

  v29 = *(sub_6D14C() + 16);

  if (v29 != 1)
  {
    (*(v28 + 8))(v13, v27);
    (*(v20 + 8))(v23, v19);
    v33 = 1;
    return v33 & 1;
  }

  v30 = sub_6D14C();
  if (!*(v30 + 16))
  {

    (*(v28 + 8))(v13, v27);
    (*(v20 + 8))(v23, v19);
    goto LABEL_8;
  }

  v31 = v36;
  (*(v24 + 16))(v36, v30 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v2);

  v32 = v37;
  (*(v24 + 32))(v37, v31, v2);
  LOBYTE(v31) = sub_203AC();
  (*(v24 + 8))(v32, v2);
  (*(v28 + 8))(v13, v27);
  (*(v20 + 8))(v23, v19);
  v33 = v31 ^ 1;
  return v33 & 1;
}

uint64_t sub_1AD80(uint64_t a1)
{
  v2 = sub_6BB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6BA3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C674();
  sub_23738(a1, v6, v11);
  (*(v3 + 8))(v6, v2);
  sub_5708(&qword_818C8, &qword_70470);
  v12 = *(v8 + 72);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_70000;
  (*(v8 + 32))(v14 + v13, v11, v7);
  return v14;
}

void *sub_1B0B0()
{
  v0 = sub_6BA3C();
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = *(v52 + 64);
  __chkstk_darwin(v0);
  v51 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6B8BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_81878, &qword_70448);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_5708(&qword_818C0, &qword_70468);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v51 - v18;
  v20 = sub_6BB0C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_6BBCC();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_6BBBC();
  sub_1C674();
  sub_6BAEC();
  v29 = v20;
  v30 = v15;
  (*(v21 + 8))(v24, v29);
  sub_5708(&qword_81548, &qword_70088);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_6FFF0;
  *(v31 + 32) = v28;
  v32 = sub_6BB3C();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  v56 = v28;

  v33 = sub_6BB1C();

  sub_5E20(v19, &qword_818C0, &qword_70468);
  v34 = v4;
  v35 = *(v4 + 56);
  v35(v30, 1, 1, v3);
  v57 = v33;
  sub_6BACC();
  v36 = v54;
  sub_5E20(v30, &qword_81878, &qword_70448);
  v35(v13, 0, 1, v3);
  sub_201AC(v13, v30, &qword_81878, &qword_70448);
  v37 = v55;
  sub_C14C(v30, v55, &qword_81878, &qword_70448);
  if ((*(v34 + 48))(v37, 1, v3) == 1)
  {
    sub_5E20(v37, &qword_81878, &qword_70448);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v38 = sub_6D04C();
    sub_5CE4(v38, qword_839A0);
    v39 = sub_6D03C();
    v40 = sub_6D46C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Unexpected nil value for task", v41, 2u);
    }

    sub_5E20(v30, &qword_81878, &qword_70448);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v43 = v36;
    v44 = (*(v34 + 32))(v36, v37, v3);
    __chkstk_darwin(v44);
    *(&v51 - 2) = v36;
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v45 = v51;
    v46 = v53;
    sub_6CE6C();
    sub_5708(&qword_818C8, &qword_70470);
    v47 = v52;
    v48 = *(v52 + 72);
    v49 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_70000;
    (*(v47 + 32))(v50 + v49, v45, v46);

    sub_5E20(v30, &qword_81878, &qword_70448);
    (*(v34 + 8))(v43, v3);
    return v50;
  }
}

char *sub_1B8C8(uint64_t a1)
{
  v2 = sub_6BA3C();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  __chkstk_darwin(v2);
  v103 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_6BA7C();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  __chkstk_darwin(v5);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5708(&qword_81868, &qword_70438);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v99 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = &v90 - v12;
  v13 = sub_5708(&qword_81870, &qword_70440);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v109 = &v90 - v15;
  v16 = sub_6B8BC();
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = *(v107 + 64);
  __chkstk_darwin(v16);
  v97 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5708(&qword_81878, &qword_70448);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v95 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v96 = &v90 - v24;
  v25 = __chkstk_darwin(v23);
  v94 = &v90 - v26;
  __chkstk_darwin(v25);
  v106 = &v90 - v27;
  v28 = sub_5708(&qword_81880, &qword_70450);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v98 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v110 = &v90 - v33;
  __chkstk_darwin(v32);
  v111 = &v90 - v34;
  v35 = sub_6ADFC();
  v92 = *(v35 - 8);
  v36 = *(v92 + 64);
  __chkstk_darwin(v35);
  v38 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_5708(&qword_817E8, &qword_70408);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v43 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v90 - v44;
  v93 = a1;
  sub_C14C(a1, &v90 - v44, &qword_817E8, &qword_70408);
  v46 = sub_6C8EC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v45, 1, v46) == 1)
  {
    sub_5E20(v45, &qword_817E8, &qword_70408);
    v49 = 0;
    v50 = v92;
  }

  else
  {
    sub_6C8CC();
    (*(v47 + 8))(v45, v46);
    sub_6ADEC();
    v49 = v51;
    v50 = v92;
    (*(v92 + 8))(v38, v35);
  }

  sub_C14C(v93, v43, &qword_817E8, &qword_70408);
  if (v48(v43, 1, v46) == 1)
  {
    sub_5E20(v43, &qword_817E8, &qword_70408);
    v93 = 0;
    v52 = 0;
  }

  else
  {
    sub_6C8DC();
    (*(v47 + 8))(v43, v46);
    v93 = sub_6ADEC();
    v52 = v53;
    (*(v50 + 8))(v38, v35);
  }

  v54 = v106;
  v55 = v107;
  sub_1C7A4(v49, v106);

  v56 = v94;
  sub_C14C(v54, v94, &qword_81878, &qword_70448);
  v57 = *(v55 + 48);
  v58 = v108;
  if (v57(v56, 1, v108) == 1)
  {
    sub_5E20(v54, &qword_81878, &qword_70448);
    v59 = sub_6B9AC();
    (*(*(v59 - 8) + 56))(v111, 1, 1, v59);
  }

  else
  {
    v60 = v97;
    (*(v55 + 32))(v97, v56, v58);
    v61 = sub_6B9AC();
    __chkstk_darwin(v61);
    *(&v90 - 2) = v60;
    sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v62 = v111;
    v58 = v108;
    sub_6CE6C();
    sub_5E20(v106, &qword_81878, &qword_70448);
    (*(v55 + 8))(v60, v58);
    (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
  }

  v63 = v109;
  v64 = v101;
  v65 = v95;
  v66 = v96;
  sub_1C7A4(v52, v96);

  sub_C14C(v66, v65, &qword_81878, &qword_70448);
  if (v57(v65, 1, v58) == 1)
  {
    sub_5E20(v66, &qword_81878, &qword_70448);
    v67 = sub_6B9AC();
    (*(*(v67 - 8) + 56))(v110, 1, 1, v67);
  }

  else
  {
    v68 = v107;
    v69 = v97;
    (*(v107 + 32))(v97, v65, v58);
    v70 = v58;
    v67 = sub_6B9AC();
    __chkstk_darwin(v67);
    *(&v90 - 2) = v69;
    sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v71 = v110;
    sub_6CE6C();
    sub_5E20(v66, &qword_81878, &qword_70448);
    v72 = v69;
    v63 = v109;
    (*(v68 + 8))(v72, v70);
    (*(*(v67 - 8) + 56))(v71, 0, 1, v67);
  }

  v73 = v105;
  v74 = v102;
  v75 = v100;
  v76 = v98;
  sub_C14C(v111, v98, &qword_81880, &qword_70450);
  sub_6B9AC();
  v77 = *(v67 - 8);
  if ((*(v77 + 48))(v76, 1, v67) == 1)
  {
    sub_5E20(v76, &qword_81880, &qword_70450);
    v78 = 1;
  }

  else
  {
    sub_6B96C();
    (*(v77 + 8))(v76, v67);
    v78 = 0;
  }

  (*(v64 + 56))(v75, v78, 1, v74);
  v79 = v99;
  sub_C14C(v75, v99, &qword_81868, &qword_70438);
  if ((*(v64 + 48))(v79, 1, v74) == 1)
  {
    sub_5E20(v75, &qword_81868, &qword_70438);
    v80 = 1;
  }

  else
  {
    v81 = v91;
    v82 = (*(v64 + 32))(v91, v79, v74);
    __chkstk_darwin(v82);
    *(&v90 - 2) = v81;
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    sub_6CE6C();
    sub_5E20(v75, &qword_81868, &qword_70438);
    (*(v64 + 8))(v81, v74);
    v80 = 0;
  }

  v83 = v104;
  v84 = (*(v104 + 56))(v63, v80, 1, v73);
  __chkstk_darwin(v84);
  v85 = v110;
  v86 = v111;
  *(&v90 - 2) = v111;
  *(&v90 - 1) = v85;
  sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  v87 = v103;
  sub_6CE6C();
  v88 = sub_1D4E4(v63, v87);
  (*(v83 + 8))(v87, v73);
  sub_5E20(v63, &qword_81870, &qword_70440);
  sub_5E20(v85, &qword_81880, &qword_70450);
  sub_5E20(v86, &qword_81880, &qword_70450);
  return v88;
}

uint64_t sub_1C674()
{
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_6D2CC();
    v5 = v4;

    v6 = 0x800000000006EEC0;
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = v3;
    v10 = v5;
    v11 = 0xD000000000000015;
    v12 = 0x3FF0000000000000;
    v13 = 0;
  }

  else
  {
    v7 = sub_6D5BC();
    __break(1u);
  }

  return UsoIdentifier.init(value:appBundleId:namespace:probability:)(v7, v8, v9, v10, v11, v6, v12, v13);
}

uint64_t sub_1C7A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_5708(&qword_818C0, &qword_70468);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26[-v6];
  v8 = sub_6BB0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v13 = sub_6BBEC();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_6BBDC();
    sub_1C674();
    sub_6BAEC();
    (*(v9 + 8))(v12, v8);
    v17 = sub_6BB7C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_6BB6C();
    sub_6BB5C();
    sub_6BC1C();
    sub_5708(&qword_81548, &qword_70088);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_6FFF0;
    *(v20 + 32) = v16;
    v21 = sub_6BB3C();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);

    sub_6BB1C();

    sub_5E20(v7, &qword_818C0, &qword_70468);
    sub_6BACC();

    v24 = sub_6B8BC();
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  else
  {
    v22 = sub_6B8BC();
    v23 = *(*(v22 - 8) + 56);

    return v23(a2, 1, 1, v22);
  }
}

uint64_t sub_1CB18()
{
  v0 = sub_6BA7C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_81890, &type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
  sub_6CE6C();
  return sub_6B97C();
}

uint64_t sub_1CC20()
{
  v0 = sub_6B8EC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_81898, &type metadata accessor for Siri_Nlu_External_UserRejected);
  sub_6CE6C();
  return sub_6B98C();
}

uint64_t sub_1CD28()
{
  v0 = sub_6B90C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_818A0, &type metadata accessor for Siri_Nlu_External_SystemOffered);
  sub_6CE6C();
  return sub_6BA0C();
}

uint64_t sub_1CE30()
{
  v0 = sub_6B9AC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  sub_6CE6C();
  return sub_6B8FC();
}

uint64_t sub_1CF38()
{
  v0 = sub_6BA6C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_818B0, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
  sub_6CE6C();
  return sub_6B9FC();
}

uint64_t sub_1D044(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t))
{
  v35 = a3;
  v32 = a2;
  v34 = a1;
  v3 = sub_6B9AC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_5708(&qword_81880, &qword_70450);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_5708(&qword_818B8, &qword_70460);
  v14 = *(v7 + 72);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v31 = swift_allocObject();
  v16 = v31 + v15;
  v17 = v3;
  sub_C14C(v32, v16, &qword_81880, &qword_70450);
  sub_C14C(v35, v16 + v14, &qword_81880, &qword_70450);
  sub_C14C(v16, v13, &qword_81880, &qword_70450);
  sub_201AC(v13, v11, &qword_81880, &qword_70450);
  v32 = v4;
  v30 = v4[6];
  v18 = v30(v11, 1, v3);
  v35 = (v4 + 4);
  if (v18 == 1)
  {
    sub_5E20(v11, &qword_81880, &qword_70450);
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = v3;
    v29 = v4[4];
    v29(v36, v11, v3);
    v19 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2B7E0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_2B7E0(v21 > 1, v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v22];
    v17 = v20;
    v29(v23, v36, v20);
  }

  sub_C14C(v16 + v14, v13, &qword_81880, &qword_70450);
  sub_201AC(v13, v11, &qword_81880, &qword_70450);
  if (v30(v11, 1, v17) == 1)
  {
    sub_5E20(v11, &qword_81880, &qword_70450);
  }

  else
  {
    v24 = *v35;
    v25 = v36;
    (*v35)(v36, v11, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2B7E0(0, *(v19 + 2) + 1, 1, v19);
    }

    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_2B7E0(v26 > 1, v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v24(&v19[((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v27], v25, v17);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_6BA4C();
}

char *sub_1D4E4(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v67 = a2;
  v73 = sub_5708(&qword_81870, &qword_70440);
  v3 = *(v73 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v73);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  v13 = __chkstk_darwin(v10);
  v65 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = (&v64 - v16);
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = sub_6BA3C();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v69 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v68 = &v64 - v26;
  __chkstk_darwin(v25);
  v28 = &v64 - v27;
  sub_C14C(a1, v19, &qword_81870, &qword_70440);
  v74 = v21[6];
  v29 = v74(v19, 1, v20);
  v72 = v21;
  v70 = v21 + 6;
  if (v29 == 1)
  {
    sub_5E20(v19, &qword_81870, &qword_70440);
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    sub_6CE6C();
    v30 = v9;
    v31 = v21;
    v32 = v21[7];
    v32(v12, 0, 1, v20);
    sub_20120(v12, a1);
    sub_5708(&qword_818A8, &qword_70458);
    v33 = *(v3 + 72);
    v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v71 = swift_allocObject();
    v35 = v71 + v34;
    (v31[2])(v35, v67, v20);
    v32(v35, 0, 1, v20);
    sub_C14C(a1, v35 + v33, &qword_81870, &qword_70440);
    v36 = (v31 + 4);
    sub_C14C(v35, v30, &qword_81870, &qword_70440);
    v68 = v30;
    v37 = v66;
    sub_201AC(v30, v66, &qword_81870, &qword_70440);
    v38 = v74;
    if (v74(v37, 1, v20) == 1)
    {
      sub_5E20(v37, &qword_81870, &qword_70440);
      v39 = _swiftEmptyArrayStorage;
      v40 = v72;
    }

    else
    {
      v67 = *v36;
      v67(v69, v37, v20);
      v39 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2B7B8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v51 = *(v39 + 2);
      v50 = *(v39 + 3);
      v40 = v72;
      if (v51 >= v50 >> 1)
      {
        v39 = sub_2B7B8(v50 > 1, v51 + 1, 1, v39);
      }

      *(v39 + 2) = v51 + 1;
      v67(&v39[((*(v40 + 80) + 32) & ~*(v40 + 80)) + v40[9] * v51], v69, v20);
    }

    v52 = v35 + v33;
    v53 = v68;
    sub_C14C(v52, v68, &qword_81870, &qword_70440);
    sub_201AC(v53, v37, &qword_81870, &qword_70440);
    if (v38(v37, 1, v20) == 1)
    {
      sub_5E20(v37, &qword_81870, &qword_70440);
    }

    else
    {
      v57 = *v36;
      (*v36)(v69, v37, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2B7B8(0, *(v39 + 2) + 1, 1, v39);
      }

      v59 = *(v39 + 2);
      v58 = *(v39 + 3);
      if (v59 >= v58 >> 1)
      {
        v39 = sub_2B7B8(v58 > 1, v59 + 1, 1, v39);
      }

      *(v39 + 2) = v59 + 1;
      v57(&v39[((*(v40 + 80) + 32) & ~*(v40 + 80)) + v40[9] * v59], v69, v20);
    }
  }

  else
  {
    v41 = v21[4];
    v64 = v21 + 4;
    v69 = v41;
    (v41)(v28, v19, v20);
    sub_5708(&qword_818A8, &qword_70458);
    v42 = *(v3 + 72);
    v43 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v71 = swift_allocObject();
    v44 = v71 + v43;
    v45 = v21[2];
    v66 = v28;
    v45(v44, v28, v20);
    v46 = v21[7];
    v46(v44, 0, 1, v20);
    v45(v44 + v42, v67, v20);
    v46(v44 + v42, 0, 1, v20);
    sub_C14C(v44, v17, &qword_81870, &qword_70440);
    v67 = v17;
    v47 = v65;
    sub_201AC(v17, v65, &qword_81870, &qword_70440);
    v48 = v20;
    if (v74(v47, 1, v20) == 1)
    {
      sub_5E20(v47, &qword_81870, &qword_70440);
      v39 = _swiftEmptyArrayStorage;
      v49 = v72;
    }

    else
    {
      (v69)(v68, v47, v20);
      v39 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2B7B8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v55 = *(v39 + 2);
      v54 = *(v39 + 3);
      v49 = v72;
      if (v55 >= v54 >> 1)
      {
        v39 = sub_2B7B8(v54 > 1, v55 + 1, 1, v39);
      }

      *(v39 + 2) = v55 + 1;
      (v69)(&v39[((*(v49 + 80) + 32) & ~*(v49 + 80)) + v49[9] * v55], v68, v20);
    }

    v56 = v67;
    sub_C14C(v44 + v42, v67, &qword_81870, &qword_70440);
    sub_201AC(v56, v47, &qword_81870, &qword_70440);
    if (v74(v47, 1, v48) == 1)
    {
      sub_5E20(v47, &qword_81870, &qword_70440);
    }

    else
    {
      v60 = v69;
      (v69)(v68, v47, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2B7B8(0, *(v39 + 2) + 1, 1, v39);
      }

      v62 = *(v39 + 2);
      v61 = *(v39 + 3);
      if (v62 >= v61 >> 1)
      {
        v39 = sub_2B7B8(v61 > 1, v62 + 1, 1, v39);
      }

      *(v39 + 2) = v62 + 1;
      (v60)(&v39[((*(v49 + 80) + 32) & ~*(v49 + 80)) + v49[9] * v62], v68, v48);
    }

    (v49[1])(v66, v48);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v39;
}

uint64_t sub_1DEB0()
{
  v0 = sub_6B90C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_818A0, &type metadata accessor for Siri_Nlu_External_SystemOffered);
  sub_6CE6C();
  return sub_6BA0C();
}

uint64_t sub_1DFA0()
{
  v0 = sub_6B9AC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_6B99C();
  return sub_6B8FC();
}

uint64_t sub_1E028()
{
  v0 = sub_6B9BC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_20274(&qword_818D0, &type metadata accessor for Siri_Nlu_External_SystemPrompted);
  sub_6CE6C();
  return sub_6BA1C();
}

uint64_t sub_1E130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = (*(*(a3(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

void *sub_1E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a3;
  v105 = a4;
  v102 = a1;
  v5 = sub_5708(&qword_818D8, &qword_70478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v101 = &v86 - v7;
  v8 = sub_5708(&qword_818E0, &qword_70480);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v100 = &v86 - v10;
  v99 = sub_6AE9C();
  v11 = *(v99 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v99);
  v98 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&qword_818E8, &qword_70488);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v86 - v16;
  v18 = sub_6D0CC();
  v106 = *(v18 - 8);
  v19 = *(v106 + 64);
  v20 = __chkstk_darwin(v18);
  v88 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v97 = &v86 - v23;
  __chkstk_darwin(v22);
  v87 = &v86 - v24;
  v96 = sub_5708(&qword_818F0, &qword_70490);
  v25 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v110 = &v86 - v26;
  v103 = a2;
  if (a2)
  {
    v27 = sub_1A008();
    v29 = v27;
    v95 = v27[2];
    if (v95)
    {
      v30 = 0;
      v92 = (v11 + 8);
      v91 = (v106 + 56);
      v90 = (v106 + 48);
      v31 = _swiftEmptyArrayStorage;
      v89 = (v106 + 32);
      *&v28 = 138412290;
      v86 = v28;
      v93 = v27;
      v94 = v18;
      while (v30 < v29[2])
      {
        v109 = v31;
        v32 = sub_6D1EC();
        v33 = *(v32 - 8);
        v34 = v33;
        v35 = v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v33 + 72) * v30;
        v36 = *(v96 + 48);
        v37 = v110;
        *v110 = v30;
        v38 = *(v33 + 16);
        v108 = 0;
        v38(&v37[v36], v35, v32);
        v39 = v98;
        sub_6AE8C();
        v107 = sub_6AE6C();
        (*v92)(v39, v99);
        v40 = &v37[v36];
        v41 = v100;
        v38(v100, v40, v32);
        (*(v34 + 56))(v41, 0, 1, v32);

        v42 = v101;
        sub_6D08C();
        v43 = sub_6D09C();
        (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
        v44 = v108;
        sub_6D0AC();
        if (v44)
        {
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v45 = sub_6D04C();
          sub_5CE4(v45, qword_839A0);
          swift_errorRetain();
          v46 = sub_6D03C();
          v47 = sub_6D46C();

          v48 = os_log_type_enabled(v46, v47);
          v18 = v94;
          if (v48)
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = v86;
            swift_errorRetain();
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v49 + 4) = v51;
            *v50 = v51;
            _os_log_impl(&dword_0, v46, v47, "Error creating RREntity: %@", v49, 0xCu);
            sub_5E20(v50, &qword_81508, &unk_70260);
          }

          else
          {
          }

          v52 = 1;
        }

        else
        {
          v52 = 0;
          v18 = v94;
        }

        v31 = v109;
        (*v91)(v17, v52, 1, v18);
        sub_5E20(v110, &qword_818F0, &qword_70490);
        if ((*v90)(v17, 1, v18) == 1)
        {
          sub_5E20(v17, &qword_818E8, &qword_70488);
        }

        else
        {
          v53 = *v89;
          v54 = v87;
          (*v89)(v87, v17, v18);
          v53(v97, v54, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2B808(0, v31[2] + 1, 1, v31);
          }

          v56 = v31[2];
          v55 = v31[3];
          if (v56 >= v55 >> 1)
          {
            v31 = sub_2B808(v55 > 1, v56 + 1, 1, v31);
          }

          v31[2] = v56 + 1;
          v53(v31 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v56, v97, v18);
        }

        v29 = v93;
        if (v95 == ++v30)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
LABEL_27:

      if (qword_812A0 == -1)
      {
        goto LABEL_28;
      }
    }

    swift_once();
LABEL_28:
    v61 = sub_6D04C();
    sub_5CE4(v61, qword_839A0);

    v62 = sub_6D03C();
    v63 = sub_6D45C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v112[0] = v65;
      *v64 = 134218499;
      *(v64 + 4) = v31[2];

      *(v64 + 12) = 2081;
      v66 = v31[2];
      if (v66)
      {
        v103 = v65;
        LODWORD(v104) = v63;
        v105 = v64;
        v107 = v62;
        v111 = _swiftEmptyArrayStorage;
        sub_27D80(0, v66, 0);
        v67 = v111;
        v68 = *(v106 + 16);
        v109 = v31;
        v110 = v68;
        v69 = v31 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v108 = *(v106 + 72);
        v106 += 16;
        v70 = (v106 - 8);
        do
        {
          v71 = v88;
          (v110)(v88, v69, v18);
          v72 = sub_6D0BC();
          v74 = v73;
          (*v70)(v71, v18);
          v111 = v67;
          v76 = v67[2];
          v75 = v67[3];
          if (v76 >= v75 >> 1)
          {
            sub_27D80((v75 > 1), v76 + 1, 1);
            v67 = v111;
          }

          v67[2] = v76 + 1;
          v77 = &v67[2 * v76];
          v77[4] = v72;
          v77[5] = v74;
          v69 += v108;
          --v66;
        }

        while (v66);
        v31 = v109;
        v62 = v107;
        v64 = v105;
        LOBYTE(v63) = v104;
      }

      v78 = sub_6D39C();
      v80 = v79;

      v81 = sub_1076C(v78, v80, v112);

      *(v64 + 14) = v81;
      *(v64 + 22) = 2081;
      v82 = sub_6D39C();
      v84 = sub_1076C(v82, v83, v112);

      *(v64 + 24) = v84;
      _os_log_impl(&dword_0, v62, v63, "IFFlow donating %ld with ids: %{private}s and entities RREntities: %{private}s", v64, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return v31;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v57 = sub_6D04C();
  sub_5CE4(v57, qword_839A0);
  v58 = sub_6D03C();
  v59 = sub_6D46C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "Nil requestId. Not donating entities to SRR", v60, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1ED90()
{
  v67 = sub_6D1DC();
  v0 = *(v67 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v67);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_6D1AC();
  v4 = *(v75 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v75);
  v74 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6D1EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = sub_1A008();
  v19 = v18[2];
  if (v19)
  {
    v66 = v12;
    v63 = v3;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v78 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v57 = v18;
    v23 = v18 + v22;
    v24 = *(v20 + 56);
    v76 = (v20 + 72);
    v77 = v24;
    v25 = v4;
    v26 = enum case for TypedValue.entity(_:);
    v27 = v0;
    v28 = (v20 - 8);
    v72 = (v20 + 80);
    v70 = (v25 + 16);
    v69 = (v25 + 8);
    v65 = enum case for TypedValue.primitive(_:);
    v61 = (v27 + 88);
    v62 = (v27 + 16);
    v60 = enum case for TypedValue.PrimitiveValue.string(_:);
    v59 = (v27 + 8);
    v58 = (v27 + 96);
    v64 = _swiftEmptyArrayStorage;
    v73 = v20;
    v71 = enum case for TypedValue.entity(_:);
    do
    {
      v30 = v78;
      v78(v17, v23, v7);
      v30(v15, v17, v7);
      v31 = *v76;
      if ((*v76)(v15, v7) == v26)
      {
        v32 = *v72;
        (*v72)(v15, v7);
        v33 = *v15;
        v34 = swift_projectBox();
        (*v70)(v74, v34, v75);

        v35 = sub_6D18C();
        if (*(v35 + 16) && (v36 = sub_10DDC(0x65736E6F70736572, 0xE800000000000000), (v37 & 1) != 0))
        {
          v38 = v66;
          v78(v66, (*(v35 + 56) + v36 * v77), v7);
          (*v69)(v74, v75);
          v68 = *v28;
          v68(v17, v7);

          v39 = v31(v38, v7);
          if (v39 == v65)
          {
            v32(v38, v7);
            v40 = *v38;
            v41 = swift_projectBox();
            v42 = v63;
            v43 = v67;
            (*v62)(v63, v41, v67);
            v44 = (*v61)(v42, v43);
            if (v44 == v60)
            {
              (*v58)(v42, v67);
              v45 = *(v42 + 1);
              v68 = *v42;

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v46 = v64;
              }

              else
              {
                v46 = sub_2BA0C(0, *(v64 + 2) + 1, 1, v64);
              }

              v48 = *(v46 + 2);
              v47 = *(v46 + 3);
              if (v48 >= v47 >> 1)
              {
                v46 = sub_2BA0C((v47 > 1), v48 + 1, 1, v46);
              }

              *(v46 + 2) = v48 + 1;
              v64 = v46;
              v49 = &v46[16 * v48];
              *(v49 + 4) = v68;
              *(v49 + 5) = v45;
            }

            else
            {
              (*v59)(v42, v67);
            }
          }

          else
          {
            v68(v38, v7);
          }
        }

        else
        {

          (*v69)(v74, v75);
          (*v28)(v17, v7);
        }

        v26 = v71;
      }

      else
      {
        v29 = *v28;
        (*v28)(v17, v7);
        v29(v15, v7);
      }

      v23 += v77;
      --v19;
    }

    while (v19);

    v50 = v64;
  }

  else
  {

    v50 = _swiftEmptyArrayStorage;
  }

  v79 = v50;
  sub_5708(&qword_81840, &qword_70428);
  sub_1FF10();
  v51 = sub_6D27C();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v52 = sub_6D04C();
  sub_5CE4(v52, qword_839A0);

  v53 = sub_6D03C();
  v54 = sub_6D45C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = sub_6D32C();

    _os_log_impl(&dword_0, v53, v54, "IFFlow retrieving string content for feedback form with length: %ld", v55, 0xCu);
  }

  else
  {
  }

  return v51;
}