id sub_3DBC(void *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = sub_3EF4(a1, a2, a3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([v8 isEqualToString:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          v10 = &dword_0 + 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

id sub_3EF4(void *a1, int a2, int a3)
{
  v4 = a2 & ~(a2 >> 31);
  v5 = a1;
  v6 = [v5 length];
  if (v4 + a3 <= v6)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = (v6 - v4) & ~((v6 - v4) >> 31);
  }

  v8 = [v5 substringWithRange:{v4, v7}];

  return v8;
}

id sub_3F74(void *a1, unsigned int a2)
{
  v3 = a1;
  if ([v3 length] >= a2)
  {
    v4 = [v3 characterAtIndex:a2];
  }

  else
  {
    v4 = &stru_20;
  }

  return v4;
}

BOOL sub_3FC8(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"W"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"K") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"CZ") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"WITZ") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

id sub_4138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _translateWord:a2];
  [v3 appendString:v4];

  v5 = *(a1 + 32);

  return [v5 appendString:@" "];
}

void sub_41E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_44B8(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_74B40;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_73790();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_5258();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_73610();

    v21 = v8;
    (a3)(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_initStackObject();
    sub_B5BC(0);
    sub_73980();
    v13 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_74B40;
    v15 = v13;
    v16 = sub_B4FC();
    v18 = v17;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_5258();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_73620();

    swift_allocObject();
    v19 = sub_B5BC(1);
    sub_4F08(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    swift_allocError();
    *v20 = v19;
    a3();
  }
}

id sub_44B8(uint64_t a1)
{
  v51 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v48 - v5;
  v6 = type metadata accessor for HealthNLIntent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_731D0();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_72830();
  v19 = sub_5394(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = v21[2];
  v29(&v48 - v27, v51, v18);
  v30 = v21[11];
  v31 = sub_5388();
  v33 = v32(v31);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v34 = v21[12];
    v35 = sub_5388();
    v36(v35);
    (*(v13 + 32))(v17, v28, v10);
    (*(v13 + 16))(v9, v17, v10);
    sub_51B4();
    v37 = sub_5C3D0(v9);
    sub_51F8(v9, type metadata accessor for HealthNLIntent);
    (*(v13 + 8))(v17, v10);
  }

  else if (v33 == enum case for Parse.directInvocation(_:))
  {
    v29(v26, v51, v18);
    v38 = v49;
    sub_6AFB0(v26, v49);
    v39 = v50;
    sub_50B4(v38, v50);
    v40 = type metadata accessor for DirectInvocationData();
    if (sub_5124(v39, 1, v40) == 1)
    {
      sub_514C(v38);
      sub_514C(v39);
      v37 = 0;
    }

    else
    {
      sub_6B824(v53);
      sub_514C(v38);
      sub_51F8(v39, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_51B4();
      if (swift_dynamicCast())
      {
        v37 = v52;
      }

      else
      {
        v37 = 0;
      }
    }

    v44 = v21[1];
    v45 = sub_5388();
    v46(v45);
  }

  else
  {
    v41 = v21[1];
    v42 = sub_5388();
    v43(v42);
    return 0;
  }

  return v37;
}

uint64_t sub_48CC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_71DF0();
    v4 = v3;
    v5 = sub_71DD0();

    return v5;
  }

  else
  {

    return sub_45750(a1, a2);
  }
}

uint64_t sub_4930()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_4A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_4AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_4F08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_5000(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_4FE0();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_5034@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_506C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_50B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_514C(uint64_t a1)
{
  v2 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_51B4()
{
  result = qword_A3BA0;
  if (!qword_A3BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A3BA0);
  }

  return result;
}

uint64_t sub_51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_5258()
{
  result = qword_A3BB0;
  if (!qword_A3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3BB0);
  }

  return result;
}

void sub_52E8(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for HealthWorkoutResumeCATs()
{
  result = qword_A3F40;
  if (!qword_A3F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5434(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_74F60;
  *(v11 + 32) = 1953459315;
  *(v11 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v10, &qword_A3F98, qword_75450);
  v12 = sub_73350();
  if (sub_5124(v10, 1, v12) == 1)
  {
    sub_5B50(v10, &qword_A3F98, qword_75450);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    sub_5BAC((v11 + 48));
    sub_5C0C(v12);
    (*(v13 + 32))();
  }

  *(v11 + 80) = 0x4E74756F6B726F77;
  *(v11 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v8, &qword_A3F98, qword_75450);
  if (sub_5124(v8, 1, v12) == 1)
  {
    sub_5B50(v8, &qword_A3F98, qword_75450);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    sub_5BAC((v11 + 96));
    sub_5C0C(v12);
    (*(v14 + 32))();
  }

  sub_732A0();
}

uint64_t sub_56CC(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_74B40;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C(v7);
    (*(v8 + 32))();
  }

  sub_732A0();
}

uint64_t sub_5868(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_58BC(a1, a2);
}

uint64_t sub_58BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v14 - v11, &qword_A3F90, &unk_74FC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v12;
}

uint64_t sub_5A48()
{
  v0 = sub_732C0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5AEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_506C(a3, a4);
  sub_5C0C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_5B50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_506C(a2, a3);
  sub_5C0C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *sub_5BAC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_5C18(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97BE8;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5C64(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 1886352499;
      break;
    case 3:
      result = 0x656D75736572;
      break;
    case 4:
      result = 0x6C65636E6163;
      break;
    case 5:
      result = 2003789939;
      break;
    case 6:
      result = 0x74736575516B7361;
      break;
    case 7:
      result = 0x7075746573;
      break;
    case 8:
      result = 0x796669646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5D5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_58C0C();
}

uint64_t sub_5D80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C18(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5C64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5F40);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5F90()
{
  result = qword_A3FA8;
  if (!qword_A3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FA8);
  }

  return result;
}

uint64_t sub_5FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_60FC();
  v5 = sub_6150();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_6050()
{
  result = qword_A3FB0;
  if (!qword_A3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FB0);
  }

  return result;
}

unint64_t sub_60A8()
{
  result = qword_A3FB8;
  if (!qword_A3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FB8);
  }

  return result;
}

unint64_t sub_60FC()
{
  result = qword_A3FC0;
  if (!qword_A3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FC0);
  }

  return result;
}

unint64_t sub_6150()
{
  result = qword_A3FC8[0];
  if (!qword_A3FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_A3FC8);
  }

  return result;
}

uint64_t sub_61A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_61F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6234(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_62D4()
{
  v0 = sub_73720();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_736F0();
  sub_7EEC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_73710();
  v7 = sub_73970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "WorkoutNeedsValueStrategyAsync actionForInput", v8, 2u);
    sub_7EBC();
  }

  v9 = *(v1 + 8);
  v10 = sub_7F28();
  v11(v10);
  return sub_72060();
}

uint64_t sub_643C()
{
  sub_7F1C();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[15] = *(v2 + 16);
  v5 = sub_72640();
  v0[16] = v5;
  sub_7E94(v5);
  v0[17] = v6;
  v8 = *(v7 + 64);
  v0[18] = sub_7ED4();
  v9 = sub_72830();
  v0[19] = v9;
  sub_7E94(v9);
  v0[20] = v10;
  v12 = *(v11 + 64);
  v0[21] = sub_7ED4();
  v13 = sub_72330();
  v0[22] = v13;
  sub_7E94(v13);
  v0[23] = v14;
  v16 = *(v15 + 64);
  v0[24] = sub_7ED4();
  v17 = sub_73720();
  v0[25] = v17;
  sub_7E94(v17);
  v0[26] = v18;
  v20 = *(v19 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_65F4()
{
  v102 = v0;
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = sub_736F0();
  sub_7EEC();
  v96 = v4;
  v94 = *(v2 + 16);
  v94(v1, v4, v3);
  v5 = sub_73710();
  v6 = sub_73970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "WorkoutNeedsValueStrategyAsync parseValueResponse", v7, 2u);
    sub_7EBC();
  }

  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v14 = v0[16];
  v15 = v0[13];

  v99 = *(v9 + 8);
  v99(v8, v10);
  sub_72630();
  sub_72320();
  v16 = *(v12 + 8);
  v16(v11, v13);
  v17 = sub_7F28();
  if (sub_453DC(v17, v18))
  {
    v19 = v0[27];
    v20 = v0[25];
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[13];
    sub_7EEC();
    v94(v19, v96, v20);
    (*(v21 + 16))(v22, v24, v23);
    v25 = sub_73710();
    v26 = sub_73980();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[27];
    v98 = v0[26];
    v29 = v0[25];
    if (v27)
    {
      v30 = v0[24];
      v91 = v0[22];
      log = v25;
      v97 = v0[25];
      v32 = v0[17];
      v31 = v0[18];
      v93 = v26;
      v33 = v0[15];
      v34 = v0[16];
      v95 = v0[27];
      v35 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_73ED0();
      v38 = sub_19144(v36, v37, v101);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      sub_72630();
      sub_72320();
      v16(v30, v91);
      (*(v32 + 8))(v31, v34);
      v39 = sub_7F28();
      v42 = sub_19144(v39, v40, v41);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_0, log, v93, "%s NeedsValueStrategy: Slot - %s is not workoutName slot", v35, 0x16u);
      swift_arrayDestroy();
      sub_7EBC();
      sub_7EBC();

      v43 = v97;
      v44 = v95;
    }

    else
    {
      v51 = v0[17];
      v50 = v0[18];
      v52 = v0[16];

      v53 = *(v51 + 8);
      v54 = sub_7F34();
      v55(v54);
      v44 = v28;
      v43 = v29;
    }

    v99(v44, v43);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v56 = sub_B5BC(2);
    sub_7D5C();
    sub_7EB0();
    swift_allocError();
    *v57 = v56;
    swift_willThrow();
    v59 = v0[28];
    v58 = v0[29];
    v60 = v0[27];
    v61 = v0[24];
    v62 = v0[21];
    v63 = v0[18];

    sub_7EA4();
  }

  else
  {
    v45 = v0[21];
    v46 = v0[14];
    v47 = v0[15];
    v48 = v0[12];
    sub_727E0();
    v49 = *(v46 + 32);
    v66 = sub_33058(v45, v47, v47, v49);
    v67 = v0[28];
    v68 = v0[25];
    (*(v0[20] + 8))(v0[21], v0[19]);
    sub_7EEC();
    v69 = sub_7F34();
    (v94)(v69);
    v70 = v66;
    v71 = sub_73710();
    v72 = sub_73970();

    if (os_log_type_enabled(v71, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      *(v74 + 4) = v70;
      *v75 = v70;
      v76 = v70;
      _os_log_impl(&dword_0, v71, v72, "Updated intent after prompting for value: %@", v74, 0xCu);
      sub_7DF8(v75);
      sub_7EBC();
      sub_7EBC();
    }

    v77 = v0[28];
    v78 = v0[25];
    v79 = v0[26];
    v80 = v0[15];

    v99(v77, v78);
    v81 = (*(v49 + 24))(v80, v49);
    v82 = v81;
    if (v81)
    {
      v81 = sub_7DB4();
    }

    else
    {
      v101[1] = 0;
      v101[2] = 0;
    }

    v84 = v0[28];
    v83 = v0[29];
    v85 = v0[27];
    v86 = v0[24];
    v87 = v0[21];
    v100 = v0[18];
    v101[0] = v82;
    v88 = v0[15];
    v89 = v0[11];
    v101[3] = v81;
    sub_722A0();
    v90 = sub_722B0();
    sub_7CC4(v89, 0, 1, v90);

    sub_7EA4();
  }

  return v64();
}

uint64_t sub_6C68()
{
  sub_7F1C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = *(*(sub_71F70() - 8) + 64);
  v1[9] = sub_7ED4();
  v6 = sub_72580();
  v1[10] = v6;
  sub_7E94(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = sub_7ED4();
  v10 = sub_73720();
  v1[13] = v10;
  sub_7E94(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_6D84()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_736F0();
  sub_7EEC();
  v4 = *(v2 + 16);
  v5 = sub_7F28();
  v6(v5);
  v7 = sub_73710();
  v8 = sub_73970();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "WorkoutNeedsValueStrategyAsync makePromptForValue", v9, 2u);
    sub_7EBC();
  }

  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 104);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v15 = *(v0 + 48);

  (*(v11 + 8))(v10, v12);
  v16 = *(v14 + 16);
  sub_72640();
  v17 = sub_72610();
  *(v0 + 160) = sub_73F8();

  v18 = *sub_7C78((v13 + 200), *(v13 + 224));
  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *v19 = v0;
  v19[1] = sub_6F34;

  return sub_45DBC();
}

uint64_t sub_6F34()
{
  v2 = *v1;
  sub_7F04();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  v2[17] = v6;

  if (v0)
  {
    v7 = v2[15];
    v8 = v2[12];
    v9 = v2[9];

    sub_7EA4();

    return v10();
  }

  else
  {
    sub_7F10();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_7088()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_71F50();
  *(swift_task_alloc() + 16) = v1;
  sub_72530();

  v5 = v4[33];
  v6 = v4[34];
  sub_7C78(v4 + 30, v5);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_71A4;
  v9 = *(v0 + 136);
  v10 = *(v0 + 96);
  v11 = *(v0 + 40);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v11, v9, v10, v5, v6);
}

uint64_t sub_71A4()
{
  sub_7F1C();
  v2 = *v1;
  sub_7F04();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_7F04();
  *v8 = v7;
  *(v9 + 152) = v0;

  sub_7F10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_72A8()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  (*(v3 + 8))(v2, v4);

  sub_7EA4();

  return v6();
}

uint64_t sub_7354()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  v4 = *(v2 + 8);
  v5 = sub_7F34();
  v6(v5);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);

  sub_7EA4();

  return v11();
}

uint64_t sub_73F8()
{
  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 4;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 2;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 3;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  result = sub_73CC0();
  __break(1u);
  return result;
}

uint64_t sub_7508(uint64_t a1, char a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_5C64(a2);
  sub_737F0();

  sub_73350();
  sub_7F40();
  v8 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  sub_7CEC(v7, a1 + *(v8 + 20));
  sub_737F0();
  sub_7F40();
  v9 = sub_7F34();
  return sub_7CEC(v9, v10);
}

uint64_t sub_75F8(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  sub_36B58(a2, &v9 - v5);
  v7 = sub_721F0();
  sub_7CC4(v6, 0, 1, v7);
  sub_72550();
  return sub_72570();
}

uint64_t sub_76C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E90;

  return sub_643C();
}

uint64_t sub_777C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E90;

  return sub_6C68();
}

uint64_t sub_782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_7E90;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_7E90;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_79B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_7A90;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_7A90()
{
  sub_7F1C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_7F04();
  *v3 = v2;

  sub_7EA4();

  return v4();
}

uint64_t sub_7B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_7E90;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_7C78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_7D5C()
{
  result = qword_A3BB8;
  if (!qword_A3BB8)
  {
    type metadata accessor for HealthFlowError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3BB8);
  }

  return result;
}

unint64_t sub_7DB4()
{
  result = qword_A4058;
  if (!qword_A4058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4058);
  }

  return result;
}

uint64_t sub_7DF8(uint64_t a1)
{
  v2 = sub_506C(&qword_A4060, &qword_75440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7EA4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_7EBC()
{
}

uint64_t sub_7ED4()
{

  return swift_task_alloc();
}

uint64_t sub_7EEC()
{

  return swift_beginAccess();
}

uint64_t sub_7F40()
{

  return sub_7CC4(v0, 0, 1, v1);
}

void sub_7F68()
{
  sub_822C(319, &qword_A40F0);
  if (v0 <= 0x3F)
  {
    sub_81DC(319, &qword_A40F8, &type metadata accessor for DeviceUnit);
    if (v1 <= 0x3F)
    {
      sub_81DC(319, &qword_A4100, &type metadata accessor for DeviceIdiom);
      if (v2 <= 0x3F)
      {
        sub_822C(319, &qword_A4108);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_8090(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_506C(qword_A4068, qword_752D0);
    v9 = a1 + *(a3 + 52);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_8138(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_506C(qword_A4068, qword_752D0);
    v8 = v5 + *(a4 + 52);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_81DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_B138();
    v4 = sub_73A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_822C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_8290()
{
  sub_7F1C();
  v3 = v2;
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v4;
  v1[26] = v5;
  v6 = sub_71F70();
  sub_B1C0(v6);
  v8 = *(v7 + 64);
  v1[29] = sub_7ED4();
  v9 = sub_72580();
  v1[30] = v9;
  sub_7E94(v9);
  v1[31] = v10;
  v12 = *(v11 + 64);
  v1[32] = sub_7ED4();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = sub_72420();
  v1[33] = v15;
  sub_7E94(v15);
  v1[34] = v16;
  v18 = *(v17 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v19 = sub_73720();
  v1[37] = v19;
  sub_7E94(v19);
  v1[38] = v20;
  v22 = *(v21 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_843C()
{
  v47 = v0;
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[26];
  v9 = sub_736F0();
  v0[43] = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v0[44] = v10;
  v0[45] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v2);
  v11 = *(v7 + 16);
  v11(v4, v8, v6);
  v11(v5, v8, v6);
  v12 = sub_73710();
  v13 = sub_73970();
  if (os_log_type_enabled(v12, v13))
  {
    v43 = v0[38];
    v44 = v0[37];
    v45 = v0[42];
    v14 = v0[36];
    v41 = v0[35];
    v15 = v0[33];
    v16 = v0[34];
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v17 = 136315394;
    v0[24] = sub_72400();
    v18 = *(v16 + 8);
    v18(v14, v15);
    sub_733D0();
    sub_AF54(&qword_A4120, &type metadata accessor for App);
    v19 = sub_73DA0();
    v21 = v20;

    v22 = sub_19144(v19, v21, &v46);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = sub_72410();
    v18(v41, v15);
    *(v17 + 14) = v23;
    *v40 = v23;
    _os_log_impl(&dword_0, v12, v13, "Launching app: %s with intent: %@", v17, 0x16u);
    sub_AEF4(v40, &qword_A4060, &qword_75440);
    sub_7EBC();
    sub_AE38(v42);
    sub_7EBC();
    sub_7EBC();

    v24 = *(v43 + 8);
    v24(v45, v44);
  }

  else
  {
    v25 = v0[42];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[35];
    v29 = v0[33];
    v30 = *(v0[34] + 8);
    v30(v0[36], v29);

    v30(v28, v29);
    v24 = *(v27 + 8);
    v24(v25, v26);
  }

  v0[46] = v24;
  v31 = v0[33];
  v32 = v0[26];
  sub_ADF8(0, &qword_A4110, SAIntentGroupLaunchAppWithIntent_ptr);
  sub_72400();
  v33 = sub_72410();
  v34 = sub_723F0();
  v0[47] = sub_73A10();

  v35 = swift_task_alloc();
  v0[48] = v35;
  *v35 = v0;
  v35[1] = sub_882C;
  v36 = v0[27];
  v37 = v0[28];
  v38 = v0[26];

  return sub_9434();
}

uint64_t sub_882C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v5 = *(v4 + 384);
  *v3 = *v1;
  *(v2 + 392) = v6;
  *(v2 + 400) = v0;

  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v11 = v10[32];
  v13 = v10[28];
  v12 = v10[29];
  sub_71F30();
  sub_72530();
  v14 = *(v13 + 280);
  v10[51] = v14;
  v16 = v10[44];
  v15 = v10[45];
  v17 = v10[43];
  v18 = v10[37];
  if (v14)
  {
    v19 = v10[41];
    sub_B168();
    v16(v19, v17, v18);
    v20 = v14;
    v21 = sub_73710();
    v22 = sub_73970();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v14;
      v25 = v20;
      _os_log_impl(&dword_0, v21, v22, "Submitting SAIntentGroupLaunchAppWithIntent to remote device: %@", v23, 0xCu);
      sub_AEF4(v24, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_7EBC();
    }

    v26 = v10[46];
    v27 = v10[41];
    v28 = v10[37];
    v29 = v10[38];
    v30 = v10[28];

    v10[52] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v27, v28);
    v31 = v30[3];
    v32 = v30[4];
    sub_7C78(v30, v31);
    (*(v32 + 24))(v31, v32);
    v33 = v10[11];
    sub_7C78(v10 + 7, v10[10]);
    sub_73590();
    v10[53] = v34;
    v35 = async function pointer to AceServiceInvokerAsync.submitToRemote<A>(_:_:)[1];
    v36 = swift_task_alloc();
    v10[54] = v36;
    sub_ADF8(0, &qword_A4118, SABaseCommand_ptr);
    *v36 = v10;
    v36[1] = sub_8D10;
    v37 = v10[47];
    sub_B108();

    return AceServiceInvokerAsync.submitToRemote<A>(_:_:)(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
  }

  else
  {
    v46 = v10[39];
    sub_B168();
    v16(v46, v17, v18);
    v47 = sub_73710();
    v48 = sub_73970();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Submitting SAIntentGroupLaunchAppWithIntent to local device", v49, 2u);
      sub_7EBC();
    }

    v51 = v10[46];
    v50 = v10[47];
    v53 = v10[38];
    v52 = v10[39];
    v54 = v10[37];
    v55 = v10[32];

    v51(v52, v54);
    sub_506C(&unk_A63F0, &unk_760C0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_752C0;
    *(v56 + 32) = v50;
    v57 = v50;
    sub_72560();
    v59 = v10[27];
    v58 = v10[28];
    sub_71D90();
    sub_B204();
    v60 = sub_71E60();
    sub_B1CC(v60);

    sub_B184();
    v61 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
    swift_task_alloc();
    sub_B144();
    v10[57] = v62;
    *v62 = v63;
    sub_B078(v62);
    sub_B108();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v64, v65, v66, v67, v68);
  }
}

uint64_t sub_8D10()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 424);
  v7 = *v1;
  sub_B044();
  *v8 = v7;
  *(v10 + 440) = v9;
  *(v10 + 448) = v0;

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_8E28()
{
  sub_B120();
  sub_B0B0();
  v1 = *(v0 + 440);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  sub_AE38((v0 + 56));
  sub_B168();
  v3(v5, v4, v6);
  v7 = v1;
  sub_B150();
  v8 = sub_73710();
  v9 = sub_73970();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 440);
  v12 = *(v0 + 408);
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v11;
    *v14 = v11;
    v15 = v11;
    _os_log_impl(&dword_0, v8, v9, "Result from submitting to remote device: %@", v13, 0xCu);
    sub_AEF4(v14, &qword_A4060, &qword_75440);
    sub_7EBC();
    sub_7EBC();
    v11 = v8;
    v8 = v15;
  }

  v16 = *(v0 + 416);
  (*(v0 + 368))(*(v0 + 320), *(v0 + 296));
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  sub_71D90();
  sub_B204();
  v19 = sub_71E60();
  sub_B1CC(v19);

  sub_B184();
  v20 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_B144();
  *(v0 + 456) = v21;
  *v21 = v22;
  sub_B078(v21);
  sub_B108();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v23, v24, v25, v26, v27);
}

uint64_t sub_8FE0()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  sub_B044();
  *v7 = v6;
  *(v8 + 464) = v0;

  sub_7F10();

  return _swift_task_switch(v9, v10, v11);
}

void sub_90D8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v12 = *(v0 + 280);
  v13 = *(v0 + 232);

  (*(v7 + 8))(v8, v9);

  sub_7EA4();
  sub_B0EC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_91C4()
{
  sub_B0B0();

  v1 = *(v0 + 400);
  sub_B0C8();

  sub_7EA4();

  return v2();
}

uint64_t sub_9274()
{
  sub_B0B0();
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);

  (*(v4 + 8))(v3, v5);
  sub_AE38((v0 + 56));
  v6 = *(v0 + 448);
  sub_B0C8();

  sub_7EA4();

  return v7();
}

uint64_t sub_935C()
{
  sub_B0B0();
  v1 = *(v0 + 376);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 464);
  sub_B0C8();

  sub_7EA4();

  return v6();
}

uint64_t sub_9434()
{
  sub_7F1C();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_731F0();
  v1[23] = v4;
  sub_7E94(v4);
  v1[24] = v5;
  v7 = *(v6 + 64);
  v1[25] = sub_7ED4();
  v8 = sub_506C(&qword_A4128, &qword_75448);
  v1[26] = v8;
  sub_B1C0(v8);
  v10 = *(v9 + 64);
  v1[27] = sub_7ED4();
  v11 = sub_506C(qword_A4068, qword_752D0);
  sub_B1C0(v11);
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v14 = sub_73720();
  v1[30] = v14;
  sub_7E94(v14);
  v1[31] = v15;
  v17 = *(v16 + 64);
  v1[32] = sub_7ED4();
  v18 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v18);
  v20 = *(v19 + 64);
  v1[33] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v21, v22, v23);
}

void sub_95C8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_72420();
  v0[34] = sub_72400();
  swift_retain_n();
  v5 = sub_72250();
  if (v5 && (v6 = v5, v7 = [v5 displayAppName], v6, v7))
  {
    v8 = v0[33];
    sub_73790();

    sub_737F0();

    v9 = 0;
  }

  else
  {

    v9 = 1;
  }

  v10 = v0[33];
  v11 = v0[20];
  v12 = sub_73350();
  sub_7CC4(v10, v9, 1, v12);
  v0[35] = sub_72410();
  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    v13 = v0[33];
    sub_7C78((v0[22] + 40), *(v0[22] + 64));
    sub_B150();
    sub_733C0();
    v14 = sub_B1EC();
    v0[36] = v14;
    sub_B1B4(v14);
    swift_task_alloc();
    sub_B144();
    v0[37] = v15;
    *v15 = v16;
    v15[1] = sub_9E10;
    sub_B064();
    sub_B0EC();

    sub_2F4FC();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    v18 = v0[33];
    sub_7C78((v0[22] + 80), *(v0[22] + 104));
    sub_B150();
    sub_733C0();
    v19 = sub_B1EC();
    v0[39] = v19;
    sub_B1B4(v19);
    swift_task_alloc();
    sub_B144();
    v0[40] = v20;
    *v20 = v21;
    v20[1] = sub_A090;
    sub_B064();
    sub_B0EC();

    sub_624C4();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    v24 = v0[31];
    v23 = v0[32];
    v25 = v0[30];
    v26 = sub_736F0();
    swift_beginAccess();
    (*(v24 + 16))(v23, v26, v25);
    v27 = sub_73710();
    v28 = sub_73970();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Pause Workout Intent, Continue in app", v29, 2u);
      sub_7EBC();
    }

    v30 = v0[32];
    v31 = v0[33];
    v32 = v0[30];
    v33 = v0[31];
    v34 = v0[22];

    (*(v33 + 8))(v30, v32);
    sub_7C78((v34 + 120), *(v34 + 144));
    sub_B150();
    sub_733C0();
    v35 = sub_B1EC();
    v0[42] = v35;
    sub_B1B4(v35);
    swift_task_alloc();
    sub_B144();
    v0[43] = v36;
    *v36 = v37;
    v36[1] = sub_A310;
    sub_B064();
    sub_B0EC();

    sub_6A074();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    v39 = v0[33];
    sub_7C78((v0[22] + 160), *(v0[22] + 184));
    sub_B150();
    sub_733C0();
    v40 = sub_B1EC();
    v0[45] = v40;
    sub_B1B4(v40);
    swift_task_alloc();
    sub_B144();
    v0[46] = v41;
    *v41 = v42;
    v41[1] = sub_A590;
    sub_B064();
    sub_B0EC();

    sub_66A44();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (!swift_dynamicCastObjCClass())
  {
    sub_73CC0();
    sub_B0EC();
    return;
  }

  v44 = v0[29];
  v46 = v0[26];
  v45 = v0[27];
  v47 = v0[23];
  v48 = v0[22];
  v49 = *(v0[21] + 52);
  (*(v0[24] + 104))(v44, enum case for DeviceIdiom.watch(_:), v47);
  sub_7CC4(v44, 0, 1, v47);
  v50 = *(v46 + 48);
  sub_AE84(v48 + v49, v45);
  sub_AE84(v44, v45 + v50);
  if (sub_5124(v45, 1, v47) != 1)
  {
    v52 = v0[23];
    sub_AE84(v0[27], v0[28]);
    v53 = sub_5124(v45 + v50, 1, v52);
    v54 = v0[28];
    v55 = v0[29];
    if (v53 != 1)
    {
      v71 = v0[27];
      v59 = v0[24];
      v58 = v0[25];
      v60 = v0[23];
      (*(v59 + 32))(v58, v45 + v50, v60);
      sub_AF54(&qword_A4130, &type metadata accessor for DeviceIdiom);
      v61 = sub_73770();
      v62 = *(v59 + 8);
      v62(v58, v60);
      sub_AEF4(v55, qword_A4068, qword_752D0);
      v62(v54, v60);
      sub_AEF4(v71, qword_A4068, qword_752D0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v56 = v0[23];
    v57 = v0[24];
    sub_AEF4(v0[29], qword_A4068, qword_752D0);
    (*(v57 + 8))(v54, v56);
LABEL_30:
    sub_AEF4(v0[27], &qword_A4128, &qword_75448);
    goto LABEL_34;
  }

  v51 = v0[23];
  sub_AEF4(v0[29], qword_A4068, qword_752D0);
  if (sub_5124(v45 + v50, 1, v51) != 1)
  {
    goto LABEL_30;
  }

  sub_AEF4(v0[27], qword_A4068, qword_752D0);
LABEL_33:
  v63 = *(v0[22] + 280);
LABEL_34:
  v64 = v0[33];
  v65 = sub_7C78((v0[22] + 200), *(v0[22] + 224));
  sub_733C0();
  v66 = swift_task_alloc();
  v0[48] = v66;
  *(v66 + 16) = v64;
  v67 = *v65;
  swift_task_alloc();
  sub_B144();
  v0[49] = v68;
  *v68 = v69;
  v68[1] = sub_A810;
  sub_B0EC();

  sub_64BF8();
}

uint64_t sub_9E10()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v6 = *(v5 + 296);
  v8 = *(v7 + 288);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 304) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_9F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[6];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[38];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A090()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v6 = *(v5 + 320);
  v8 = *(v7 + 312);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 328) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[9];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[41];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A310()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v6 = *(v5 + 344);
  v8 = *(v7 + 336);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 352) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[12];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[44];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A590()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v6 = *(v5 + 368);
  v8 = *(v7 + 360);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 376) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[15];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[47];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A810()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  sub_B15C();
  v6 = *(v5 + 392);
  v8 = *(v7 + 384);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 400) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[18];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = v11[34];
  v13 = v11[35];

  v14 = v11[50];
  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_AA94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_8290();
}

uint64_t sub_AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, a3, a4);
}

uint64_t sub_AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_ACC4;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_ACC4()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  sub_7EA4();

  return v5();
}

uint64_t sub_ADF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_AE38(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_AE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(qword_A4068, qword_752D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AEF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_506C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AF54(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_B138();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_B01C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
}

uint64_t sub_B078(uint64_t a1)
{
  *(a1 + 8) = sub_8FE0;
  v2 = v1[49];
  v3 = v1[32];
  return v1[25];
}

uint64_t sub_B0C8()
{
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
  v9 = v0[29];
}

uint64_t sub_B168()
{

  return swift_beginAccess();
}

void *sub_B184()
{
  sub_AE38((v0 + 16));
  v3 = (v1 + *(v2 + 56));
  v4 = v3[4];
  return sub_7C78(v3, v3[3]);
}

uint64_t sub_B1B4(uint64_t result)
{
  *(result + 16) = v2;
  v3 = *v1;
  return result;
}

uint64_t sub_B1CC(uint64_t a1)
{

  return dispatch thunk of SiriKitEventSending.send(_:)(a1, v1, v2);
}

uint64_t sub_B1EC()
{

  return swift_task_alloc();
}

uint64_t sub_B204()
{
  v1 = v0[6];
  sub_7C78(v0 + 2, v0[5]);

  return type metadata accessor for SiriKitEvent(0);
}

uint64_t sub_B23C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_72240();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_72230();
  a1[6] = v6;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v9;
  result = sub_73750();
  *a1 = 0xD000000000000014;
  a1[1] = 0x800000000007CFC0;
  a1[2] = v5;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for PauseWorkoutContinueInAppStrategy()
{
  result = qword_A4160;
  if (!qword_A4160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3C4(uint64_t a1)
{
  switch(a1)
  {
    case 10:
      return 0;
    case 11:
      return 1;
    case 70:
      return 9;
    case 20:
      return 3;
    case 30:
      return 4;
    case 40:
      return 5;
    case 41:
      return 6;
    case 50:
      return 7;
    case 60:
      return 8;
    case 12:
      return 2;
  }

  return 10;
}

uint64_t sub_B4A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B3C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_B4D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B46C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_B4FC()
{
  BYTE8(v2) = 0;
  sub_73B60(24);
  v3._object = 0x800000000007D260;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_73820(v3);
  *&v2 = *(v0 + 16);
  sub_73C40();
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  sub_73820(v4);
  sub_73820(*(v0 + 24));
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_73820(v5);
  return *(&v2 + 1);
}

uint64_t sub_B5BC(char a1)
{
  v2 = 0xD000000000000038;
  *(v1 + 16) = a1;
  v3 = "t had unexpected contents";
  switch(a1)
  {
    case 1:
      v3 = " any of the supported slots";
      v2 = 0xD000000000000029;
      break;
    case 2:
      v3 = "n and didn't find one";
      v2 = 0xD00000000000003BLL;
      break;
    case 3:
      v3 = "slot that was provided";
      v2 = 0xD000000000000045;
      break;
    case 4:
      v3 = "tem after disambiguation";
      v2 = 0xD000000000000036;
      break;
    case 5:
      v3 = "type of disambiguation items";
      break;
    case 6:
      v3 = "The cat failed to execute";
      v2 = 0xD00000000000004CLL;
      break;
    case 7:
      v3 = "ad an unknown code";
      v2 = 0xD000000000000019;
      break;
    case 8:
      v3 = "User canceled the flow";
      v2 = 0xD000000000000022;
      break;
    case 9:
      v3 = "HealthFlowError";
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  *(v1 + 24) = v2;
  *(v1 + 32) = v3 | 0x8000000000000000;
  return v1;
}

uint64_t sub_B6DC()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for HealthFlowErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthFlowErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xB88CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_B8C8()
{
  result = qword_A42D8;
  if (!qword_A42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A42D8);
  }

  return result;
}

uint64_t sub_B960(uint64_t a1)
{
  v77 = a1;
  v1 = sub_506C(&qword_A42E0, &unk_77840);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v76 = &v70 - v3;
  v4 = sub_729E0();
  v5 = sub_5394(v4);
  v72 = v6;
  v73 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_C2A4();
  v11 = v10 - v9;
  v75 = sub_72AB0();
  v12 = sub_5394(v75);
  v71 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  v70 = v17 - v16;
  v18 = sub_72880();
  v19 = sub_5394(v18);
  v74 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_C2A4();
  v25 = v24 - v23;
  v26 = type metadata accessor for HealthNLIntent(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  sub_C2A4();
  v30 = v29 - v28;
  v31 = sub_731D0();
  v32 = sub_5394(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_C2A4();
  v39 = v38 - v37;
  v40 = sub_72830();
  v41 = sub_5394(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41);
  sub_C2A4();
  v48 = v47 - v46;
  (*(v43 + 16))(v47 - v46, v77, v40);
  v49 = *(v43 + 88);
  v50 = sub_5388();
  v52 = v51(v50);
  if (v52 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v53 = *(v43 + 96);
    v54 = sub_5388();
    v55(v54);
    (*(v34 + 32))(v39, v48, v31);
    (*(v34 + 16))(v30, v39, v31);
    v56 = sub_BE5C();
    sub_BFD8(v30);
    (*(v34 + 8))(v39, v31);
  }

  else
  {
    if (v52 == enum case for Parse.uso(_:))
    {
      v57 = *(v43 + 96);
      v58 = sub_5388();
      v59(v58);
      v60 = v74;
      (*(v74 + 32))(v25, v48, v18);
      sub_72870();
      v61 = sub_729D0();
      (*(v72 + 8))(v11, v73);
      v62 = v76;
      sub_5F1B0(v61, v76);

      v63 = v75;
      if (sub_5124(v62, 1, v75) != 1)
      {
        v68 = v70;
        v67 = v71;
        (*(v71 + 32))(v70, v62, v63);
        v56 = sub_BF0C();
        (*(v67 + 8))(v68, v63);
        (*(v60 + 8))(v25, v18);
        return v56;
      }

      (*(v60 + 8))(v25, v18);
      sub_AEF4(v62, &qword_A42E0, &unk_77840);
    }

    else
    {
      v64 = *(v43 + 8);
      v65 = sub_5388();
      v66(v65);
    }

    return 5;
  }

  return v56;
}

uint64_t sub_BE5C()
{
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  if (v1 >= 5uLL)
  {
    return 5;
  }

  else
  {
    return (0x304010200uLL >> (8 * v1));
  }
}

uint64_t sub_BF0C()
{
  v0 = sub_72C00();
  if (sub_114FC(v0))
  {
    sub_11500(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = sub_73B70();
    }

    else
    {
      v1 = *(v0 + 32);
    }

    if (sub_72A60())
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    v3 = sub_C034(v1, v2);

    return v3;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_BFD8(uint64_t a1)
{
  v2 = type metadata accessor for HealthNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C034(uint64_t a1, uint64_t a2)
{
  sub_72EB0();
  if (!v6)
  {
    goto LABEL_16;
  }

  sub_C210(v5, v4);
  sub_73020();
  if (!swift_dynamicCast())
  {
    sub_73080();
    if (!sub_C280())
    {
      sub_72F60();
      if (sub_C280())
      {

        sub_AE38(v4);
        a2 = 1;
        goto LABEL_17;
      }

      sub_72FD0();
      if (sub_C280())
      {

        sub_AE38(v4);
        a2 = 2;
        goto LABEL_17;
      }

      sub_73040();
      if (sub_C280())
      {

        sub_AE38(v4);
        a2 = 4;
        goto LABEL_17;
      }

      sub_73010();
      if (sub_C280())
      {

        sub_AE38(v4);
        a2 = 3;
        goto LABEL_17;
      }

      sub_73030();
      if (sub_C280())
      {

        sub_AE38(v4);
        goto LABEL_17;
      }

      sub_AE38(v4);
LABEL_16:
      a2 = 5;
      goto LABEL_17;
    }
  }

  sub_AE38(v4);
  a2 = 0;
LABEL_17:
  sub_AEF4(v5, &qword_A42F0, &qword_77260);
  return a2;
}

unint64_t sub_C1B8()
{
  result = qword_A42E8;
  if (!qword_A42E8)
  {
    type metadata accessor for HealthNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A42E8);
  }

  return result;
}

uint64_t sub_C210(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A42F0, &qword_77260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C280()
{

  return swift_dynamicCast();
}

uint64_t sub_C2B4()
{
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  sub_ADF8(0, &qword_A4520, INStartWorkoutIntentResponse_ptr);
  sub_DB00();
  sub_71CE0();
  sub_506C(&qword_A4528, &qword_75860);
  sub_737A0();
  sub_DC18();
  swift_allocObject();
  sub_DB78();
  sub_DA14();
  sub_D960(v0, v1);
  sub_71B20();
  sub_DCA8();
  sub_506C(&qword_A4530, &qword_75868);
  sub_DC9C();
  sub_DAF0();
  sub_71C80();
  type metadata accessor for StartWorkoutHandleIntentStrategy();
  v2 = swift_allocObject();
  sub_71E80();
  v3 = sub_D960(&qword_A4538, type metadata accessor for StartWorkoutHandleIntentStrategy);
  sub_DB58(v3, v4, v5, v6, v7, v8, v9, v10, v59, v2);
  sub_71B00();
  sub_DBF0();
  sub_DACC();
  sub_71C70();
  type metadata accessor for StartWorkoutsNeedsValueStrategy();
  sub_DC80();
  sub_DD38();
  v11 = sub_D960(&qword_A4540, type metadata accessor for StartWorkoutsNeedsValueStrategy);
  sub_DB58(v11, v12, v13, v14, v15, v16, v17, v18, v60, v65);
  sub_71AE0();
  sub_DBF0();
  sub_DACC();
  sub_71C60();
  type metadata accessor for StartWorkoutConfirmSlotStrategy();
  sub_DC80();
  sub_DD38();
  v19 = sub_D960(&qword_A4548, type metadata accessor for StartWorkoutConfirmSlotStrategy);
  sub_DB58(v19, v20, v21, v22, v23, v24, v25, v26, v61, v65);
  sub_71B50();
  sub_DBF0();
  sub_DACC();
  sub_71CB0();
  type metadata accessor for StartWorkoutDisambiguationStrategy();
  sub_DC80();
  sub_DD38();
  v27 = sub_D960(&qword_A4550, type metadata accessor for StartWorkoutDisambiguationStrategy);
  sub_DB58(v27, v28, v29, v30, v31, v32, v33, v34, v62, v65);
  sub_71B70();
  sub_DBF0();
  sub_DACC();
  sub_71CC0();
  type metadata accessor for StartWorkoutUnsupportedValueStrategy();
  sub_DC80();
  sub_DD38();
  v35 = sub_D960(&qword_A4558, type metadata accessor for StartWorkoutUnsupportedValueStrategy);
  sub_DB58(v35, v36, v37, v38, v39, v40, v41, v42, v63, v65);
  sub_71BB0();
  sub_DBF0();
  sub_DACC();
  sub_71CA0();
  type metadata accessor for StartWorkoutContinueInAppStrategy();
  v43 = sub_DBD4();
  *(v43 + 16) = 0;
  LOBYTE(v65) = v43;
  v44 = sub_D960(&qword_A4560, type metadata accessor for StartWorkoutContinueInAppStrategy);
  sub_DB58(v44, v45, v46, v47, v48, v49, v50, v51, v64, v65);
  sub_71B40();
  sub_DBF0();
  sub_DACC();
  sub_71C90();
  sub_72840();
  v52 = sub_DD2C();
  sub_506C(v52, v53);
  sub_DD10();
  sub_D9F8();
  *&v65 = sub_D898(&v65, v54, 0);
  sub_DA2C();
  sub_DC0C();
  sub_D9A8(v55, v56, v57);
  sub_71B90();
  sub_DCB4();
  sub_DAF0();
  sub_71CD0();
}

uint64_t sub_C680(void *a1)
{
  sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
  sub_ADF8(0, &qword_A4420, INEndWorkoutIntentResponse_ptr);
  sub_DB00();
  sub_71CE0();
  sub_506C(&qword_A4428, &unk_757F0);
  sub_737A0();
  sub_DC18();
  sub_DCF4();
  sub_DB78();
  sub_DA14();
  sub_D960(v2, v3);
  sub_71B20();
  sub_DD44();
  sub_506C(&qword_A4430, &qword_76E30);
  sub_DC9C();
  sub_DB4C();
  sub_71C80();
  type metadata accessor for EndWorkoutHandleIntentStrategy();
  v4 = sub_DBD4();
  *(v4 + 16) = a1;
  *&v46[0] = v4;
  sub_D960(&qword_A4438, type metadata accessor for EndWorkoutHandleIntentStrategy);
  v43 = a1;
  sub_DBBC();
  sub_71B00();

  sub_DBB0();
  sub_DB4C();
  sub_71C70();
  v5 = sub_DBB0();
  sub_506C(v5, v6);
  sub_DA98();
  sub_D9A8(v7, v8, &qword_75800);
  sub_71AE0();
  sub_DB4C();
  sub_71C60();
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_CB04(v44, &qword_A4418, INEndWorkoutIntent_ptr, sub_5E46C, v46);
  v9 = sub_DBB0();
  sub_506C(v9, v10);
  sub_DA7C();
  sub_D9A8(v11, v12, &qword_75808);
  sub_71B50();
  sub_DBBC();
  sub_AEF4(v13, v14, v15);
  sub_DB4C();
  v16 = sub_71CB0();
  sub_DC34(v16, v17, v18, v19);
  v20 = sub_DBB0();
  sub_506C(v20, v21);
  sub_DA60();
  sub_D9A8(v22, v23, &qword_75810);
  sub_71B70();
  sub_DBBC();
  sub_AEF4(v24, v25, v26);
  sub_DB4C();
  v27 = sub_71CC0();
  sub_DC34(v27, v28, v29, v30);
  v31 = sub_DBB0();
  sub_506C(v31, v32);
  sub_DA44();
  sub_D9A8(v33, v34, &qword_75818);
  sub_71BB0();
  sub_DBBC();
  sub_AEF4(v35, v36, v37);
  sub_DB4C();
  sub_71CA0();
  type metadata accessor for EndWorkoutContinueInAppStrategy();
  v38 = sub_DBD4();
  *(v38 + 16) = a1;
  *&v46[0] = v38;
  sub_D960(&qword_A4480, type metadata accessor for EndWorkoutContinueInAppStrategy);
  v39 = v43;
  sub_71B40();
  sub_DCA8();

  sub_DAF0();
  sub_71C90();
  sub_72840();
  sub_506C(&qword_A4488, &qword_75820);
  swift_allocObject();
  sub_D9F8();
  *&v46[0] = sub_D898(v46, v40, 0);
  sub_DA2C();
  sub_D9A8(v41, &qword_A4488, &qword_75820);
  sub_71B90();

  sub_DB4C();
  sub_71CD0();
}

uint64_t sub_CB04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_D8F0(a1, &v17);
  if (v18)
  {
    sub_AEF4(a1, &qword_A4410, &qword_757E8);
    sub_D8D8(&v17, v19);
    return sub_D8D8(v19, a5);
  }

  else
  {
    sub_DC0C();
    sub_AEF4(v11, v12, v13);
    sub_ADF8(0, a2, a3);
    a4();
    sub_DC0C();
    return sub_AEF4(v14, v15, v16);
  }
}

uint64_t sub_D850(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_D898(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = 0;
  sub_D8D8(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_D8D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_D8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A4410, &qword_757E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_D9A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_DB78()
{

  sub_4A414();
}

uint64_t sub_DBD4()
{

  return swift_allocObject();
}

uint64_t sub_DBF0()
{
}

uint64_t sub_DC18()
{

  return type metadata accessor for WorkoutAppResolutionStrategy();
}

uint64_t sub_DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v12 = 0;
  v9 = 0u;
  v11 = 0u;

  return sub_CB04(va, v5, v4, v6, va1);
}

uint64_t sub_DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_CB04(a1, v3, v2, v4, a2);
}

uint64_t sub_DC80()
{

  return swift_allocObject();
}

uint64_t sub_DCB4()
{
}

uint64_t sub_DCD0()
{

  return sub_71B20();
}

uint64_t sub_DCF4()
{

  return swift_allocObject();
}

uint64_t sub_DD10()
{

  return swift_allocObject();
}

uint64_t sub_DD88()
{

  return sub_71B90();
}

void sub_DDA8()
{
  sub_11784();
  v149 = v0;
  v1 = sub_73720();
  v2 = sub_5394(v1);
  v144 = v3;
  v145 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v143 = v7 - v6;
  sub_115DC();
  v8 = sub_72820();
  v9 = sub_5394(v8);
  v146 = v10;
  v147 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_11544();
  v135 = v13;
  sub_11658();
  v15 = __chkstk_darwin(v14);
  v17 = &v132 - v16;
  __chkstk_darwin(v15);
  sub_117D0();
  v148 = v18;
  v19 = sub_506C(&qword_A42E0, &unk_77840);
  v20 = sub_B1C0(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v138 = &v132 - v23;
  sub_115DC();
  v24 = sub_729E0();
  v25 = sub_5394(v24);
  v136 = v26;
  v137 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  v31 = v30 - v29;
  v142 = sub_72AB0();
  v32 = sub_5394(v142);
  v134 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_C2A4();
  v133 = v37 - v36;
  sub_115DC();
  v38 = sub_72880();
  v39 = sub_5394(v38);
  v140 = v40;
  v141 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_C2A4();
  v139 = v44 - v43;
  sub_115DC();
  v45 = type metadata accessor for DisambiguateAppNLIntent();
  v46 = sub_B1C0(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_C2A4();
  v51 = v50 - v49;
  v52 = type metadata accessor for HealthNLIntent(0);
  v53 = sub_B1C0(v52);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  sub_C2A4();
  v58 = v57 - v56;
  v59 = sub_731D0();
  v60 = sub_5394(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_C2A4();
  v67 = v66 - v65;
  v68 = sub_72830();
  v69 = sub_5394(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  __chkstk_darwin(v69);
  sub_C2A4();
  v76 = v75 - v74;
  (*(v71 + 16))(v75 - v74, v149, v68);
  v77 = *(v71 + 88);
  v78 = sub_11680();
  v80 = v79(v78);
  if (v80 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v81 = *(v71 + 96);
    v82 = sub_11680();
    v83(v82);
    (*(v62 + 32))(v67, v76, v59);
    v84 = *(v62 + 16);
    v84(v58, v67, v59);
    sub_E724();
    v86 = v85;
    sub_115C4();
    sub_103BC(v58, v87);
    if (!v86)
    {
      v84(v51, v67, v59);
      sub_E9EC();
      sub_103BC(v51, type metadata accessor for DisambiguateAppNLIntent);
    }

    (*(v62 + 8))(v67, v59);
    goto LABEL_19;
  }

  if (v80 == enum case for Parse.directInvocation(_:))
  {
    v88 = *(v71 + 96);
    v89 = sub_11680();
    v90(v89);
    v92 = v146;
    v91 = v147;
    v93 = v148;
    (*(v146 + 32))(v148, v76, v147);
    v94 = *(v92 + 16);
    v94(v17, v93, v91);
    v95 = sub_3185C(v17);
    if (v96)
    {
      if (v96 == 1)
      {
        v97 = sub_736F0();
        swift_beginAccess();
        v98 = v144;
        (*(v144 + 16))(v143, v97, v145);
        v99 = v135;
        v94(v135, v93, v91);
        v100 = sub_73710();
        v101 = sub_73980();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v150 = v103;
          *v102 = 136315138;
          v104 = sub_72800();
          v106 = v105;
          v107 = *(v92 + 8);
          v107(v99, v91);
          v108 = sub_19144(v104, v106, &v150);

          *(v102 + 4) = v108;
          _os_log_impl(&dword_0, v100, v101, "Unknow DirectInvocation with identifier: %s", v102, 0xCu);
          sub_AE38(v103);
          sub_7EBC();
          sub_7EBC();

          (*(v144 + 8))(v143, v145);
          v107(v148, v91);
        }

        else
        {

          v124 = *(v92 + 8);
          v124(v99, v91);
          v125 = *(v98 + 8);
          v126 = sub_11680();
          v127(v126);
          v124(v93, v91);
        }

        goto LABEL_19;
      }

      sub_733D0();
      sub_733A0();
    }

    else
    {
      sub_10328(v95, 0);
    }

    (*(v92 + 8))(v93, v91);
LABEL_19:
    sub_11754();
    return;
  }

  if (v80 != enum case for Parse.uso(_:))
  {
    v117 = *(v71 + 8);
    v118 = sub_11680();
    v119(v118);
    goto LABEL_19;
  }

  v109 = *(v71 + 96);
  v110 = sub_11680();
  v111(v110);
  (*(v140 + 32))(v139, v76, v141);
  sub_72870();
  v112 = sub_729D0();
  (*(v136 + 8))(v31, v137);
  v113 = v138;
  sub_5F1B0(v112, v138);

  v114 = v142;
  if (sub_5124(v113, 1, v142) == 1)
  {
    v115 = sub_116DC();
    v116(v115);
    sub_10364(v113, &qword_A42E0, &unk_77840);
    goto LABEL_19;
  }

  v120 = v134;
  v121 = v133;
  (*(v134 + 32))(v133, v113, v114);
  v128 = sub_72C00();
  if (!sub_FB90(v128))
  {

    (*(v120 + 8))(v121, v114);
    v122 = sub_116DC();
    v123(v122);
    goto LABEL_19;
  }

  if ((v128 & 0xC000000000000001) != 0)
  {
    sub_73B70();
    goto LABEL_24;
  }

  if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)))
  {
    v129 = *(v128 + 32);

LABEL_24:

    sub_ECB4();

    (*(v120 + 8))(v121, v114);
    v130 = sub_116DC();
    v131(v130);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_E724()
{
  sub_11784();
  v1 = sub_506C(&qword_A45F8, &qword_758B8);
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  if (qword_A3938 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  v7 = type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_10468(&qword_A42E8, type metadata accessor for HealthNLIntent);
  sub_11504();
  sub_10468(v8, v9);
  sub_116EC();
  if (sub_5124(v6, 1, v7) == 1)
  {
    sub_10364(v6, &qword_A45F8, &qword_758B8);
  }

  else
  {
    if (qword_A3978 != -1)
    {
      sub_11618();
    }

    sub_11504();
    sub_10468(v10, v11);
    sub_11664();
    if (v12[7])
    {
      sub_1151C();
    }

    else
    {
      if (qword_A3970 != -1)
      {
        sub_115F8();
      }

      sub_11664();
      if (!v12[5])
      {
        sub_103BC(v6, type metadata accessor for HealthNLIntent.HealthNLApp);
        goto LABEL_10;
      }

      sub_11814();
      v12[2] = v0;
      v12[3] = 0x800000000007D2B0;
      sub_10414();
      if (sub_11714())
      {
        sub_11578();
        sub_11828();
        sub_1151C();
      }

      else
      {
        sub_103BC(v6, type metadata accessor for HealthNLIntent.HealthNLApp);
      }
    }

    sub_733D0();
    sub_117B8();
    sub_733A0();
  }

LABEL_10:
  sub_11754();
}

void sub_E9EC()
{
  sub_11784();
  v1 = sub_506C(&qword_A45F8, &qword_758B8);
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  if (qword_A38D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for DisambiguateAppNLIntent();
  v7 = type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_10468(&qword_A4600, type metadata accessor for DisambiguateAppNLIntent);
  sub_11504();
  sub_10468(v8, v9);
  sub_116EC();
  if (sub_5124(v6, 1, v7) == 1)
  {
    sub_10364(v6, &qword_A45F8, &qword_758B8);
  }

  else
  {
    if (qword_A3978 != -1)
    {
      sub_11618();
    }

    sub_11504();
    sub_10468(v10, v11);
    sub_11664();
    if (v12[7])
    {
      sub_1151C();
    }

    else
    {
      if (qword_A3970 != -1)
      {
        sub_115F8();
      }

      sub_11664();
      if (!v12[5])
      {
        sub_103BC(v6, type metadata accessor for HealthNLIntent.HealthNLApp);
        goto LABEL_10;
      }

      sub_11814();
      v12[2] = v0;
      v12[3] = 0x800000000007D2B0;
      sub_10414();
      if (sub_11714())
      {
        sub_11578();
        sub_11828();
        sub_1151C();
      }

      else
      {
        sub_103BC(v6, type metadata accessor for HealthNLIntent.HealthNLApp);
      }
    }

    sub_733D0();
    sub_117B8();
    sub_733A0();
  }

LABEL_10:
  sub_11754();
}

uint64_t sub_ECB4()
{
  if (!sub_73470())
  {
    return 0;
  }

  sub_72E10();
  if (!v0)
  {

    return 0;
  }

  sub_733D0();
  v1 = sub_733A0();

  return v1;
}

void sub_ED34()
{
  sub_11784();
  v1 = v0;
  v2 = sub_73720();
  v3 = sub_5394(v2);
  v155 = v4;
  v156 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_C2A4();
  v158 = (v8 - v7);
  sub_115DC();
  v140 = sub_72B20();
  v9 = sub_5394(v140);
  v138 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_C2A4();
  v137 = v14 - v13;
  sub_115DC();
  v141 = sub_729C0();
  v15 = sub_5394(v141);
  v139 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_11544();
  v135 = v19;
  sub_11658();
  __chkstk_darwin(v20);
  sub_117D0();
  v136 = v21;
  v22 = sub_506C(&qword_A42E0, &unk_77840);
  v23 = sub_B1C0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_11544();
  v143 = v26;
  sub_11658();
  __chkstk_darwin(v27);
  sub_117D0();
  v148 = v28;
  sub_115DC();
  v29 = sub_729E0();
  v153 = sub_5394(v29);
  v154 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v153);
  sub_11544();
  v142 = v33;
  sub_11658();
  __chkstk_darwin(v34);
  sub_117D0();
  v147 = v35;
  sub_115DC();
  v149 = sub_72AB0();
  v36 = sub_5394(v149);
  v145 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_C2A4();
  v146 = v41 - v40;
  sub_115DC();
  v152 = sub_72880();
  v42 = sub_5394(v152);
  v150 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_C2A4();
  v151 = v47 - v46;
  v48 = sub_115DC();
  v49 = type metadata accessor for HealthNLIntent(v48);
  v50 = sub_B1C0(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  sub_C2A4();
  v55 = v54 - v53;
  v56 = sub_731D0();
  v57 = sub_5394(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  __chkstk_darwin(v57);
  sub_C2A4();
  v64 = v63 - v62;
  v65 = sub_72830();
  v66 = sub_5394(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v66);
  sub_11544();
  v144 = v71;
  sub_11658();
  __chkstk_darwin(v72);
  v157 = &v135 - v73;
  sub_11658();
  __chkstk_darwin(v74);
  v76 = &v135 - v75;
  v77 = v68[2];
  v77(&v135 - v75, v1, v65);
  v78 = v68[11];
  v79 = sub_117FC();
  v81 = v80(v79);
  if (v81 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v82 = v68[12];
    v83 = sub_117FC();
    v84(v83);
    (*(v59 + 32))(v64, v76, v56);
    (*(v59 + 16))(v55, v64, v56);
    sub_590CC();
    sub_115C4();
    sub_103BC(v55, v85);
    (*(v59 + 8))(v64, v56);
LABEL_11:
    sub_11754();
    return;
  }

  if (v81 != enum case for Parse.uso(_:))
  {
    v98 = sub_736E0();
    swift_beginAccess();
    v100 = v155;
    v99 = v156;
    (*(v155 + 16))(v158, v98, v156);
    v77(v157, v1, v65);
    v101 = sub_73710();
    v102 = sub_73980();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v159 = v154;
      *v103 = 136315138;
      LODWORD(v153) = v102;
      v104 = v157;
      v77(v144, v157, v65);
      v105 = sub_737A0();
      v107 = v106;
      v108 = v68[1];
      v108(v104, v65);
      v109 = sub_19144(v105, v107, &v159);

      *(v103 + 4) = v109;
      _os_log_impl(&dword_0, v101, v153, "Failed to find nlv3 or uso from %s", v103, 0xCu);
      sub_AE38(v154);
      sub_7EBC();
      sub_7EBC();

      (*(v155 + 8))(v158, v156);
    }

    else
    {

      v108 = v68[1];
      v108(v157, v65);
      (*(v100 + 8))(v158, v99);
    }

    v114 = sub_117FC();
    (v108)(v114);
    goto LABEL_11;
  }

  v86 = v68[12];
  v87 = sub_117FC();
  v88(v87);
  v89 = v150;
  (*(v150 + 32))(v151, v76, v152);
  v90 = v147;
  sub_72870();
  v91 = sub_729D0();
  v93 = v154 + 1;
  v92 = v154[1];
  v92(v90, v153);
  v94 = v148;
  sub_5F1B0(v91, v148);

  v95 = v149;
  if (sub_5124(v94, 1, v149) == 1)
  {
    v96 = sub_1169C();
    v97(v96);
    sub_10364(v94, &qword_A42E0, &unk_77840);
    goto LABEL_11;
  }

  v111 = v145;
  v110 = v146;
  (*(v145 + 32))(v146, v94, v95);
  v115 = sub_72C00();
  if (!sub_FB90(v115))
  {

    (*(v111 + 8))(v110, v95);
    v112 = sub_1169C();
    v113(v112);
    goto LABEL_11;
  }

  v154 = v93;
  if ((v115 & 0xC000000000000001) != 0)
  {
    sub_73B70();
LABEL_16:

    sub_734A0();
    sub_73480();

    v117 = v142;
    sub_72870();
    v118 = sub_729D0();
    v92(v117, v153);
    v119 = v143;
    sub_5F1B0(v118, v143);

    v120 = sub_5124(v119, 1, v95);
    v121 = (v145 + 8);
    if (v120 == 1)
    {

      (*v121)(v146, v95);
      v122 = sub_1169C();
      v123(v122);
      sub_10364(v119, &qword_A42E0, &unk_77840);
    }

    else
    {
      v124 = v137;
      sub_72A70();
      v158 = *v121;
      v158(v119, v95);
      v125 = v89;
      v126 = v135;
      sub_72AF0();
      (*(v138 + 8))(v124, v140);
      v127 = v95;
      v128 = v139;
      v129 = v136;
      v130 = v126;
      v131 = v141;
      (*(v139 + 32))(v136, v130, v141);
      sub_F7F8();
      v157 = v132;
      v134 = v133;

      (*(v128 + 8))(v129, v131);
      v158(v146, v127);
      (*(v125 + 8))(v151, v152);
      if (v134)
      {
      }
    }

    goto LABEL_11;
  }

  if (*(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
  {
    v116 = *(v115 + 32);

    goto LABEL_16;
  }

  __break(1u);
}

void sub_F7F8()
{
  sub_11784();
  v52 = sub_73580();
  v0 = sub_5394(v52);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_C2A4();
  v7 = v6 - v5;
  v8 = sub_72BE0();
  v9 = sub_5394(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_C2A4();
  v16 = v15 - v14;
  v17 = *(sub_729B0() + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v20 = *(v18 + 64);
    sub_11778();
    v23 = v21 + v22;
    v50 = *(v18 + 56);
    v51 = v24;
    v48 = (v18 - 8);
    v49 = (v2 + 8);
    v25 = &_swiftEmptyArrayStorage;
    v47 = v8;
    while (1)
    {
      v51(v16, v23, v8);
      sub_72BD0();
      v26 = sub_73570();
      v28 = v27;
      (*v49)(v7, v52);
      v29 = v26 == 0x7974697669746361 && v28 == 0xEC000000656D614ELL;
      if (v29 || (sub_73DB0() & 1) != 0)
      {
        break;
      }

      if (v26 == 0x4E74756F6B726F77 && v28 == 0xEB00000000656D61)
      {

LABEL_23:
        v30 = 2;
LABEL_9:
        v31 = sub_72BC0();
        v33 = v32;
        v34 = *v48;
        v35 = sub_117B8();
        v36(v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_FCB4(0, v25[2] + 1, 1, v25);
        }

        v38 = v25[2];
        v37 = v25[3];
        if (v38 >= v37 >> 1)
        {
          v25 = sub_FCB4((v37 > 1), v38 + 1, 1, v25);
        }

        v25[2] = v38 + 1;
        v39 = &v25[3 * v38];
        v39[4] = v30;
        v39[5] = v31;
        v39[6] = v33;
        v8 = v47;
        goto LABEL_14;
      }

      v41 = sub_73DB0();

      if (v41)
      {
        goto LABEL_23;
      }

      v42 = *v48;
      v43 = sub_117B8();
      v44(v43);
LABEL_14:
      v23 += v50;
      if (!--v17)
      {

        goto LABEL_25;
      }
    }

    v30 = 1;
    goto LABEL_9;
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_25:
  v53 = v25;

  sub_104B0(&v53);

  if (v53[2])
  {
    v45 = v53[5];
    v46 = v53[6];
  }

  sub_11754();
}

uint64_t sub_FB90(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_73CD0();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

char *sub_FBB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_506C(&qword_A4630, &qword_758D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_FCB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4620, &qword_758C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4628, &qword_758C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_FDEC()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4640, &qword_758E0, &type metadata accessor for DisplayHint);
  sub_117F0();
  v7 = sub_71FA0();
  sub_117C4(v7);
  v9 = *(v8 + 80);
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for DisplayHint, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_FED0()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4638, &qword_758D8, &type metadata accessor for SemanticValue);
  sub_117F0();
  v7 = sub_72040();
  sub_117C4(v7);
  v9 = *(v8 + 80);
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for SemanticValue, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_FFB4()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4650, &unk_7B680, &type metadata accessor for TerminalIntentNode);
  sub_117F0();
  v7 = sub_72E00();
  sub_117C4(v7);
  v9 = *(v8 + 80);
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for TerminalIntentNode, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_10098()
{
  sub_11808();
  if (v5)
  {
    sub_11568();
    if (v7 != v8)
    {
      sub_1176C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_115E8(v6);
  if (v3)
  {
    sub_506C(&qword_A4648, &qword_758E8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_1173C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_506C(a3, a4);
  v8 = sub_117F0();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (&result[-v11] != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10268(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_1168C(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_117DC();

    return _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_117DC();

    return _swift_arrayInitWithTakeBackToFront(v11);
  }

  return result;
}

uint64_t sub_10328(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10340(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_506C(a2, a3);
  sub_1168C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_103BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1168C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10414()
{
  result = qword_A4618;
  if (!qword_A4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4618);
  }

  return result;
}

uint64_t sub_10468(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_104B0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_114E8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10520(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10520(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_73D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_506C(&qword_A4628, &qword_758C8);
        v6 = sub_738B0();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_106A8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10624(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_106A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = result;
  v88 = &_swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v9;
      if ((result & 1) == 0)
      {
        result = sub_FBB4(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v40 = *(v8 + 2);
      v39 = *(v8 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_FBB4((v39 > 1), v40 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v41;
      v42 = v8 + 32;
      v43 = &v8[16 * v40 + 32];
      *v43 = v7;
      v43[1] = v85;
      v86 = *v84;
      if (!*v84)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[16 * v41 - 16];
          v46 = &v8[16 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 4);
            v48 = *(v8 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = *(v46 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = *(v45 + 1);
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = *(v46 + 1);
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = *(v45 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[16 * v44 - 16];
          v77 = *v76;
          v78 = &v42[16 * v44];
          v79 = *(v78 + 1);
          result = sub_10CF0((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v86);
          if (v5)
          {
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = *(v8 + 2);
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          *(v76 + 1) = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          result = memmove(&v42[16 * v44], v78 + 16, 16 * (v81 - 1 - v44));
          *(v80 + 2) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[16 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = *(v46 + 1);
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = *(v45 + 1);
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*v84)
  {
    goto LABEL_115;
  }

  sub_10BB8(&v88, *v84, a3);
}

uint64_t sub_10BB8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10EC4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_10CF0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_10CF0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_25:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v11 - 3) < *v17)
    {
      v14 = v5 + 24 == v6;
      v6 -= 24;
      if (!v14)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 24))
    {
      v19 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v19;
    }

    v11 -= 24;
  }

LABEL_38:
  v21 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_10ED8()
{
  sub_11808();
  if (v5)
  {
    sub_11568();
    if (v7 != v8)
    {
      sub_1176C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_115E8(v6);
  if (v3)
  {
    sub_506C(&qword_A4648, &qword_758E8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_1173C(v10);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10FB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4620, &qword_758C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4628, &qword_758C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_11160()
{
  sub_11784();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_11568();
    if (v13 != v14)
    {
      sub_1176C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_506C(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = v6(0);
  sub_117C4(v23);
  v25 = *(v24 + 80);
  sub_11778();
  if (v10)
  {
    sub_10268(v8 + v26, v15, v20 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_11754();
}

void sub_112FC()
{
  sub_11808();
  if (v5)
  {
    sub_11568();
    if (v7 != v8)
    {
      sub_1176C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_115E8(v6);
  if (v3)
  {
    sub_506C(&qword_A4658, &qword_758F0);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4660, &qword_758F8);
    swift_arrayInitWithCopy();
  }
}

void sub_11414()
{
  sub_11808();
  if (v5)
  {
    sub_11568();
    if (v7 != v8)
    {
      sub_1176C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_115E8(v6);
  if (v3)
  {
    sub_506C(&qword_A4668, &qword_75900);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

uint64_t sub_1151C()
{

  return sub_103BC(v0, type metadata accessor for HealthNLIntent.HealthNLApp);
}

uint64_t sub_11578()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 128) = v2;
  *(v4 - 120) = v3;
  *(v4 - 144) = 0;
  *(v4 - 136) = 0xE000000000000000;

  return sub_73AD0();
}

void sub_115E8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_115F8()
{

  return swift_once();
}

uint64_t sub_11618()
{

  return swift_once();
}

uint64_t sub_11638()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_11664()
{

  return sub_72E30();
}

uint64_t sub_116EC()
{

  return sub_72E20();
}

uint64_t sub_11714()
{

  return sub_73AE0();
}

uint64_t sub_1173C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_1179C@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_10268(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_11828()
{
}

uint64_t getEnumTagSinglePayload for HealthActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xAA)
  {
    if (a2 + 86 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 86) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 87;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x57;
  v5 = v6 - 87;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthActivity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 86 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 86) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xAA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA9)
  {
    v6 = ((a2 - 170) >> 8) + 1;
    *result = a2 + 86;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1199CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 86;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_119D8()
{
  result = qword_A4678;
  if (!qword_A4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4678);
  }

  return result;
}

uint64_t sub_11A2C(char a1)
{
  result = 7629139;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x7370657453;
    case 3:
      return 0x646E617453;
    case 4:
      return 1702260557;
    case 5:
      return 1802264919;
    case 6:
      return 1634168665;
    case 7:
      v11 = 1668178244;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 8:
      return 0x61727473736F7243;
    case 9:
      return 0x63697470696C6C45;
    case 10:
      v14 = 1702326098;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 11:
      v11 = 1818458435;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x737269617453;
    case 13:
      v14 = 1701344335;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 14:
      return 0x7572726F6F646E49;
    case 15:
      return 0x7963726F6F646E49;
    case 16:
      return 0x6177726F6F646E49;
    case 17:
      v13 = 0x696372657845;
      return v13 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 18:
      return 1835628371;
    case 19:
      return 1701538120;
    case 20:
      return 0xD00000000000001DLL;
    case 21:
    case 37:
      return 0xD000000000000010;
    case 22:
      return 0xD000000000000012;
    case 23:
      return 0x79726568637241;
    case 24:
      return 0x6F746E696D646142;
    case 25:
      v11 = 1920098626;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 26:
      v5 = 1702060354;
      goto LABEL_88;
    case 27:
      v9 = 0x74656B736142;
      goto LABEL_73;
    case 28:
      v10 = 1819766594;
      return v10 | 0x676E6900000000;
    case 29:
      return 0x676E69786F42;
    case 30:
      return 0x676E69626D696C43;
    case 31:
      v8 = 1701998403;
      return v8 | 0x6961725400000000;
    case 32:
      return 0x74656B63697243;
    case 33:
      return 0xD000000000000012;
    case 34:
      v10 = 1819440451;
      return v10 | 0x676E6900000000;
    case 35:
      v6 = 1668507972;
      return v6 | 0x726F705300000000;
    case 36:
      v7 = 0x69686E776F44;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 38:
      v10 = 1668179270;
      return v10 | 0x676E6900000000;
    case 39:
      v10 = 1752394054;
      return v10 | 0x676E6900000000;
    case 40:
      return 0x477373656E746946;
    case 41:
      return 0x6C69626978656C46;
    case 42:
      return 0xD00000000000001ALL;
    case 43:
      return 1718382407;
    case 44:
      return 0x697473616E6D7947;
    case 45:
      v5 = 1684955464;
      goto LABEL_88;
    case 46:
      return 0x6C637943646E6148;
    case 47:
      return 0x79656B636F48;
    case 48:
      v10 = 1953396040;
      return v10 | 0x676E6900000000;
    case 49:
      return 0x65706F52706D754ALL;
    case 50:
      return 0x69786F626B63694BLL;
    case 51:
      v13 = 0x736F7263614CLL;
      return v13 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 52:
      return 0x416C61697472614DLL;
    case 53:
      return 0x42646E41646E694DLL;
    case 54:
      v12 = 0x43646578694DLL;
      return v12 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 55:
      return 0x7053656C64646150;
    case 56:
      return 0x736574616C6950;
    case 57:
      return 2036427856;
    case 58:
      return 0xD000000000000016;
    case 59:
      return 0x6274657571636152;
    case 60:
      return 0x7962677552;
    case 61:
      v10 = 1818845523;
      return v10 | 0x676E6900000000;
    case 62:
      v4 = 1952541523;
      return v4 | 0x53676E6900000000;
    case 63:
      v12 = 0x6F62776F6E53;
      return v12 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 64:
      v6 = 2003791443;
      return v6 | 0x726F705300000000;
    case 65:
      return 0x726563636F53;
    case 66:
      v5 = 1952870227;
LABEL_88:
      v7 = v5 & 0xFFFF0000FFFFFFFFLL | 0x616200000000;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 67:
      return 0x687361757153;
    case 68:
      return 0x6C43737269617453;
    case 69:
      v8 = 1885697107;
      return v8 | 0x6961725400000000;
    case 70:
      v4 = 1718777171;
      return v4 | 0x53676E6900000000;
    case 71:
      return 0x6E6554656C626154;
    case 72:
      return 0x696843696154;
    case 73:
      return 0x73696E6E6554;
    case 74:
      return 0x646E416B63617254;
    case 75:
      return 0xD00000000000001BLL;
    case 76:
      v9 = 0x79656C6C6F56;
      goto LABEL_73;
    case 77:
      return 0x7469467265746157;
    case 78:
      return 0x6C6F507265746157;
    case 79:
      return 0x6F70537265746157;
    case 80:
      return 0x6E696C7473657257;
    case 81:
      return 0xD000000000000012;
    case 82:
      return 0xD000000000000011;
    case 83:
      v3 = 0x6F6964726143;
      goto LABEL_5;
    case 84:
      v3 = 0x6C6169636F53;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 85:
      v9 = 0x656C6B636950;
LABEL_73:
      result = v9 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 86:
      result = 0x6E776F646C6F6F43;
      break;
    default:
      result = 7238994;
      break;
  }

  return result;
}

unint64_t sub_123E0(char a1)
{
  sub_73B60(42);

  v3._countAndFlagsBits = sub_11A2C(a1);
  sub_73820(v3);

  return 0xD000000000000028;
}

uint64_t sub_12460()
{
  v0 = sub_73DC0();

  if (v0 >= 0x57)
  {
    return 87;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_124B4(char a1)
{
  result = 7239026;
  switch(a1)
  {
    case 1:
      return 7629171;
    case 2:
      return 0x7370657473;
    case 3:
      return 0x646E617473;
    case 4:
      return 1702260589;
    case 5:
      return 1802264951;
    case 6:
      return 1634168697;
    case 7:
      v14 = 1668178276;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 8:
      return 0x61727473736F7263;
    case 9:
      return 0x63697470696C6C65;
    case 10:
      v19 = 1702326130;
      return v19 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 11:
      v14 = 1818458467;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x737269617473;
    case 13:
      v19 = 1701344367;
      return v19 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 14:
      return 0x7572726F6F646E69;
    case 15:
      return 0x7963726F6F646E69;
    case 16:
      return 0x6177726F6F646E69;
    case 17:
      v16 = 0x696372657865;
      return v16 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 18:
      return 1835628403;
    case 19:
      return 1701538152;
    case 20:
      sub_130B8();
      return v17 + 11;
    case 21:
    case 37:
      sub_130B8();
      return v18 - 2;
    case 22:
      return 0xD000000000000012;
    case 23:
      return 0x79726568637261;
    case 24:
      return 0x6F746E696D646162;
    case 25:
      v14 = 1920098658;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 26:
      v5 = 1702060386;
      goto LABEL_88;
    case 27:
      v10 = 0x74656B736162;
      goto LABEL_73;
    case 28:
      v11 = 1819766626;
      return v11 | 0x676E6900000000;
    case 29:
      return 0x676E69786F62;
    case 30:
      return 0x676E69626D696C63;
    case 31:
      v9 = 1701998435;
      return v9 | 0x6961727400000000;
    case 32:
      return 0x74656B63697263;
    case 33:
      return 0xD000000000000012;
    case 34:
      v11 = 1819440483;
      return v11 | 0x676E6900000000;
    case 35:
      v7 = 1668508004;
      return v7 | 0x726F707300000000;
    case 36:
      v8 = 0x69686E776F64;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 38:
      v11 = 1668179302;
      return v11 | 0x676E6900000000;
    case 39:
      v11 = 1752394086;
      return v11 | 0x676E6900000000;
    case 40:
      return 0x677373656E746966;
    case 41:
      return 0x6C69626978656C66;
    case 42:
      sub_130B8();
      return v20 | 8;
    case 43:
      return 1718382439;
    case 44:
      return 0x697473616E6D7967;
    case 45:
      v5 = 1684955496;
      goto LABEL_88;
    case 46:
      v21 = 0x7963646E6168;
      return v21 & 0xFFFFFFFFFFFFLL | 0x6C63000000000000;
    case 47:
      return 0x79656B636F68;
    case 48:
      v11 = 1953396072;
      return v11 | 0x676E6900000000;
    case 49:
      return 0x65706F72706D756ALL;
    case 50:
      return 0x69786F626B63696BLL;
    case 51:
      v16 = 0x736F7263616CLL;
      return v16 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 52:
      return 0x616C61697472616DLL;
    case 53:
      return 0x62646E61646E696DLL;
    case 54:
      v15 = 0x63646578696DLL;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 55:
      return 0x7073656C64646170;
    case 56:
      return 0x736574616C6970;
    case 57:
      return 2036427888;
    case 58:
      sub_130B8();
      return v12 | 4;
    case 59:
      return 0x6274657571636172;
    case 60:
      return 0x7962677572;
    case 61:
      v11 = 1818845555;
      return v11 | 0x676E6900000000;
    case 62:
      v4 = 1952541555;
      return v4 | 0x73676E6900000000;
    case 63:
      v15 = 0x6F62776F6E73;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 64:
      v7 = 2003791475;
      return v7 | 0x726F707300000000;
    case 65:
      return 0x726563636F73;
    case 66:
      v5 = 1952870259;
LABEL_88:
      v8 = v5 & 0xFFFF0000FFFFFFFFLL | 0x616200000000;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 67:
      return 0x687361757173;
    case 68:
      v21 = 0x737269617473;
      return v21 & 0xFFFFFFFFFFFFLL | 0x6C63000000000000;
    case 69:
      v9 = 1885697139;
      return v9 | 0x6961727400000000;
    case 70:
      v4 = 1718777203;
      return v4 | 0x73676E6900000000;
    case 71:
      return 0x6E6574656C626174;
    case 72:
      return 0x696863696174;
    case 73:
      return 0x73696E6E6574;
    case 74:
      return 0x646E616B63617274;
    case 75:
      sub_130B8();
      return v6 + 7;
    case 76:
      v10 = 0x79656C6C6F76;
      goto LABEL_73;
    case 77:
      return 0x7469667265746177;
    case 78:
      return 0x6C6F707265746177;
    case 79:
      return 0x6F70737265746177;
    case 80:
      return 0x6E696C7473657277;
    case 81:
      return 0xD000000000000012;
    case 82:
      sub_130B8();
      return v13 - 1;
    case 83:
      v3 = 0x6F6964726163;
      goto LABEL_5;
    case 84:
      v3 = 0x6C6169636F73;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 85:
      v10 = 0x656C6B636950;
LABEL_73:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 86:
      result = 0x6E776F646C6F6F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_12E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_12460();
  *a2 = result;
  return result;
}

uint64_t sub_12ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_124B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_12EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_13010();
  v5 = sub_13064();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_12F64()
{
  result = qword_A4680;
  if (!qword_A4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4680);
  }

  return result;
}

unint64_t sub_12FBC()
{
  result = qword_A4688;
  if (!qword_A4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4688);
  }

  return result;
}

unint64_t sub_13010()
{
  result = qword_A4690;
  if (!qword_A4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4690);
  }

  return result;
}

unint64_t sub_13064()
{
  result = qword_A4698;
  if (!qword_A4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4698);
  }

  return result;
}

uint64_t sub_130CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_72240();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_72230();
  a1[6] = v6;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v9;
  result = sub_73750();
  *a1 = 0xD000000000000014;
  a1[1] = 0x800000000007D490;
  a1[2] = v5;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for StartWorkoutContinueInAppStrategy()
{
  result = qword_A46C8;
  if (!qword_A46C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1323C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v159 = a8;
  v160 = a7;
  v157 = a9;
  v152 = sub_722B0();
  sub_73A90();
  sub_D850(&qword_A4828, qword_75BA0);
  v13 = sub_73E80();
  v14 = sub_5394(v13);
  v161 = v15;
  v162 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v158 = (&v150 - v18);
  sub_115DC();
  v19 = sub_73720();
  v20 = sub_5394(v19);
  v163 = v21;
  v164 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v20);
  v26 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v156 = &v150 - v28;
  v29 = __chkstk_darwin(v27);
  v153 = &v150 - v30;
  v31 = __chkstk_darwin(v29);
  __chkstk_darwin(v31);
  v151 = &v150 - v32;
  v33 = sub_115DC();
  v34 = type metadata accessor for HealthNLIntent(v33);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  sub_C2A4();
  v38 = v37 - v36;
  sub_115DC();
  v39 = sub_72830();
  v40 = sub_5394(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v40);
  sub_C2A4();
  v47 = v46 - v45;
  v48 = sub_731D0();
  v49 = sub_5394(v48);
  v155 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_C2A4();
  v154 = v54 - v53;

  v55 = sub_453DC(a3, a4);
  if (v55 == 5)
  {
    v60 = type metadata accessor for HealthFlowError();
    v61 = sub_14F70();
    v62 = sub_B5BC(2);
    sub_736E0();
    sub_14EE0();
    v64 = v163;
    v63 = v164;
    (*(v163 + 16))(v26, v61, v164);

    v65 = sub_73710();
    v66 = sub_73980();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v156 = v60;
      v68 = v67;
      v69 = sub_14F44();
      v70 = sub_14F88();
      v165[0] = v70;
      *v68 = 136315394;
      v71 = sub_73ED0();
      v73 = v64;
      v74 = sub_19144(v71, v72, v165);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2112;
      sub_14EC8();
      sub_14CF8(v75, v76);
      sub_14F2C();
      *v77 = v62;

      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v78;
      *v69 = v78;
      _os_log_impl(&dword_0, v65, v66, "%s NeedsValueStrategy: %@", v68, 0x16u);
      sub_AEF4(v69, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v70);
      sub_7EBC();
      sub_7EBC();

      (*(v73 + 8))(v26, v164);
    }

    else
    {

      (*(v64 + 8))(v26, v63);
    }

    goto LABEL_13;
  }

  if (v55)
  {
    v79 = v55;
    type metadata accessor for HealthFlowError();
    v80 = sub_14F70();
    v62 = sub_B5BC(2);
    sub_736E0();
    sub_14EE0();
    v81 = v163;
    v82 = v164;
    v83 = v156;
    (*(v163 + 16))(v156, v80, v164);

    v84 = sub_73710();
    v85 = sub_73980();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = sub_14F88();
      v87 = sub_14F44();
      v155 = swift_slowAlloc();
      v165[0] = v155;
      *v86 = 136315650;
      v88 = sub_73ED0();
      v90 = sub_19144(v88, v89, v165);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2080;
      v91 = sub_45428(v79);
      v93 = sub_19144(v91, v92, v165);

      *(v86 + 14) = v93;
      *(v86 + 22) = 2112;
      sub_14EC8();
      sub_14CF8(v94, v95);
      sub_14F2C();
      *v96 = v62;

      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 24) = v97;
      *v87 = v97;
      _os_log_impl(&dword_0, v84, v85, "%s NeedsValueStrategy: Slot - %s %@", v86, 0x20u);
      sub_AEF4(v87, &qword_A4060, &qword_75440);
      sub_7EBC();
      swift_arrayDestroy();
      sub_7EBC();
      sub_7EBC();

      (*(v163 + 8))(v83, v164);
    }

    else
    {

      (*(v81 + 8))(v83, v82);
    }

LABEL_13:
    sub_14EC8();
    sub_14CF8(v115, v116);
    v117 = sub_14F2C();
    *v118 = v62;
    v119 = v158;
    *v158 = v117;
    v120 = v162;
    swift_storeEnumTagMultiPayload();

    v160(v119);

    v121 = sub_14F1C();
    v123 = v120;
    return v122(v121, v123);
  }

  sub_727E0();
  if ((*(v42 + 88))(v47, v39) != enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v42 + 8))(v47, v39);
    type metadata accessor for HealthFlowError();
    v98 = sub_14F70();
    v99 = sub_B5BC(0);
    sub_736E0();
    sub_14EE0();
    v100 = v163;
    v101 = v164;
    v102 = v153;
    (*(v163 + 16))(v153, v98, v164);

    v103 = sub_73710();
    v104 = sub_73980();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = sub_14F44();
      v107 = sub_14F88();
      v165[0] = v107;
      *v105 = 136315394;
      v108 = sub_73ED0();
      v110 = sub_19144(v108, v109, v165);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2112;
      sub_14EC8();
      sub_14CF8(v111, v112);
      sub_14F2C();
      *v113 = v99;

      v114 = _swift_stdlib_bridgeErrorToNSError();
      *(v105 + 14) = v114;
      *v106 = v114;
      _os_log_impl(&dword_0, v103, v104, "%s NeedsValueStrategy: %@", v105, 0x16u);
      sub_AEF4(v106, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v107);
      sub_7EBC();
      sub_7EBC();

      (*(v100 + 8))(v153, v164);
    }

    else
    {

      (*(v100 + 8))(v102, v101);
    }

    sub_14EC8();
    sub_14CF8(v125, v126);
    v127 = sub_14F2C();
    *v128 = v99;
    v129 = v158;
    *v158 = v127;
    v130 = v162;
    swift_storeEnumTagMultiPayload();

    v160(v129);

    v121 = sub_14F1C();
    v123 = v130;
    return v122(v121, v123);
  }

  (*(v42 + 96))(v47, v39);
  v56 = v155;
  v57 = v154;
  (*(v155 + 32))(v154, v47, v48);
  v58 = v38;
  (*(v56 + 16))(v38, v57, v48);
  v59 = v157;
  v131 = sub_33D50(v157, v157, a11);
  v132 = (*(a11 + 24))(v59, a11);
  v166[3] = sub_506C(&qword_A4838, &qword_763E0);
  v166[0] = v132;
  v133 = sub_736E0();
  swift_beginAccess();
  v134 = v163;
  v135 = v151;
  (*(v163 + 16))(v151, v133, v164);
  v136 = v131;
  v137 = sub_73710();
  v138 = sub_73970();

  if (os_log_type_enabled(v137, v138))
  {
    v140 = swift_slowAlloc();
    v141 = sub_14F44();
    *v140 = 138412290;
    *(v140 + 4) = v136;
    *v141 = v136;
    v142 = v136;
    _os_log_impl(&dword_0, v137, v138, "Updated intent after prompting for value: %@", v140, 0xCu);
    sub_AEF4(v141, &qword_A4060, &qword_75440);
    sub_7EBC();
    sub_7EBC();
  }

  (*(v134 + 8))(v135, v164);
  sub_14E68(v166, v165);
  v143 = v136;
  v144 = v158;
  sub_722A0();
  sub_7CC4(v144, 0, 1, v152);
  v145 = v162;
  swift_storeEnumTagMultiPayload();
  v160(v144);

  v146 = sub_14F1C();
  v147(v146, v145);
  sub_BFD8(v58);
  v148 = sub_14F00();
  v149(v148);
  return sub_AE38(v166);
}

uint64_t sub_1404C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(void))
{
  v88 = a8;
  v89 = sub_73720();
  v12 = sub_5394(v89);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  v19 = v18 - v17;
  v20 = sub_72270();
  v21 = sub_5394(v20);
  v84 = v22;
  v85 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_C2A4();
  v83 = v26 - v25;
  sub_115DC();
  v27 = sub_73390();
  v28 = sub_5394(v27);
  v86 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_C2A4();
  v34 = v33 - v32;
  v87 = sub_506C(&unk_A6CD0, &unk_75B80);
  v35 = *(*(v87 - 1) + 64);
  v36 = __chkstk_darwin(v87);
  v38 = (&v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v40 = (&v82 - v39);

  v41 = sub_453DC(a3, a4);
  if (v41 == 5)
  {
    type metadata accessor for HealthFlowError();
    sub_14F70();
    v42 = sub_B5BC(2);
    sub_736E0();
    swift_beginAccess();
    v43 = sub_14F5C();
    v44(v43);

    v45 = sub_73710();
    v46 = sub_73980();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v86 = sub_14F44();
      v87 = sub_14F88();
      v90 = v87;
      *v47 = 136315394;
      v48 = sub_73ED0();
      v50 = sub_19144(v48, v49, &v90);
      v88 = a6;
      v51 = v50;

      *(v47 + 4) = v51;
      *(v47 + 12) = 2112;
      sub_14EC8();
      sub_14CF8(v52, v53);
      sub_14F2C();
      *v54 = v42;

      a6 = v88;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v55;
      v56 = v86;
      *v86 = v55;
      _os_log_impl(&dword_0, v45, v46, "%s NeedsValueStrategy: %@", v47, 0x16u);
      sub_AEF4(v56, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v87);
      sub_7EBC();
      sub_7EBC();
    }

    (*(v14 + 8))(v19, v89);
    sub_14EC8();
    sub_14CF8(v57, v58);
    v59 = sub_14F2C();
    *v60 = v42;
    v90 = v59;
    v92 = 1;

    a6(&v90);

    v61 = &qword_A4810;
    v62 = &unk_760A0;
    v63 = &v90;
  }

  else
  {
    v64 = v41;
    v88 = a6;
    v89 = a7;
    sub_73970();
    v65 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v66 = swift_allocObject();
    v82 = xmmword_74B40;
    *(v66 + 16) = xmmword_74B40;
    v90 = 0;
    v91 = 0xE000000000000000;
    v93 = v64;
    v67 = v65;
    sub_73C40();
    v69 = v90;
    v68 = v91;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = sub_5258();
    *(v66 + 32) = v69;
    *(v66 + 40) = v68;
    sub_73620();

    sub_73280();
    v70 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v71 = *(v86 + 72);
    v72 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v82;
    sub_73380();
    v90 = v73;
    sub_14CF8(&unk_A6CE0, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    v74 = type metadata accessor for HealthCATWrapper();
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    sub_4F648(v70, v34);
    sub_4F78C(v64, 4);

    sub_14DA4(v40, v38);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v90 = *v38;
    }

    else
    {
      v79 = v83;
      v78 = v84;
      v80 = v85;
      (*(v84 + 32))(v83, v38, v85);
      sub_14754(&v90);
      (*(v78 + 8))(v79, v80);
    }

    v92 = EnumCaseMultiPayload == 1;
    v88(&v90);
    sub_AEF4(&v90, &qword_A4810, &unk_760A0);
    v61 = &unk_A6CD0;
    v62 = &unk_75B80;
    v63 = v40;
  }

  return sub_AEF4(v63, v61, v62);
}

uint64_t sub_14754@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_506C(&qword_A4050, &unk_75290);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a1[3] = v7;
  a1[4] = &protocol witness table for AceOutput;
  sub_5BAC(a1);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_14974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_14A58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_14C5C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_14CBC(void (*a1)(void))
{
  a1();

  return sub_73ED0();
}

uint64_t sub_14CF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_14D40()
{
  result = qword_A6CF0;
  if (!qword_A6CF0)
  {
    sub_D850(&qword_A4820, qword_77FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6CF0);
  }

  return result;
}

uint64_t sub_14DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&unk_A6CD0, &unk_75B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_14E14()
{
  result = qword_A4830;
  if (!qword_A4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4830);
  }

  return result;
}

uint64_t sub_14E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_14EE0()
{

  return swift_beginAccess();
}

uint64_t sub_14F2C()
{

  return swift_allocError();
}

uint64_t sub_14F44()
{

  return swift_slowAlloc();
}

uint64_t sub_14F70()
{

  return swift_allocObject();
}

uint64_t sub_14F88()
{

  return swift_slowAlloc();
}

uint64_t sub_14FA0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_72240();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_72230();
  a1[6] = v6;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v9;
  result = sub_73750();
  *a1 = 0xD000000000000015;
  a1[1] = 0x800000000007D530;
  a1[2] = v5;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for ResumeWorkoutContinueInAppStrategy()
{
  result = qword_A4868;
  if (!qword_A4868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_150F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_506C(&qword_A4A08, &qword_75D10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_73910();
  sub_7CC4(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = a4;
  v13[6] = a5;

  sub_54390(0, 0, v11, &unk_75D48, v13);
}

uint64_t sub_151F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_15214, 0, 0);
}

uint64_t sub_15214()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_15360;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return sub_45028();
}

uint64_t sub_15360()
{
  sub_7F1C();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;
  sub_B044();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1547C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_506C(&qword_A4A08, &qword_75D10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_73910();
  sub_7CC4(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a1;
  v15[6] = v5;
  v15[7] = a4;
  v15[8] = a5;
  v16 = a3;

  sub_54390(0, 0, v13, &unk_75D20, v15);
}

uint64_t sub_1559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  return _swift_task_switch(sub_155C4, 0, 0);
}

uint64_t sub_155C4()
{
  v2 = v0[33];
  v1 = v0[34];
  sub_506C(&qword_A4A10, &qword_75D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74F60;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [v2 code];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;

  v4 = sub_72250();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 displayAppName];

    v7 = v0[34];
    if (v6)
    {
      v5 = sub_73790();
      v9 = v8;

      goto LABEL_7;
    }

    v11 = v0[34];

    v5 = 0;
  }

  else
  {
    v10 = v0[34];
  }

  v9 = 0;
LABEL_7:
  v12 = v0[35];
  *(inited + 120) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 96) = v5;
  *(inited + 104) = v9;
  v13 = sub_73750();
  v14 = *v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = sub_72240();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_72230();
  v0[24] = v17;
  v0[25] = &protocol witness table for ResponseFactory;
  v0[18] = 0xD000000000000019;
  v0[20] = v16;
  v0[21] = v20;
  v0[19] = 0x800000000007D5A0;
  v0[26] = v13;
  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_15868;

  return sub_2CCDC((v0 + 27), (v0 + 18), &_swiftEmptyArrayStorage);
}

uint64_t sub_15868()
{
  sub_7F1C();
  v1 = *(*v0 + 304);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  return _swift_task_switch(sub_15958, 0, 0);
}

uint64_t sub_15958()
{
  sub_7F1C();
  v1 = *(v0 + 296);
  (*(v0 + 288))(v0 + 216);
  sub_16074(v0 + 216);
  sub_160DC(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_159D0()
{
  sub_AE38((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_15A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, started, a3);
}

uint64_t sub_15D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, started, a4);
}

uint64_t sub_15DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, started, a6);
}

unint64_t sub_15E1C()
{
  result = qword_A4A00;
  if (!qword_A4A00)
  {
    type metadata accessor for StartWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4A00);
  }

  return result;
}

uint64_t sub_15E70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_15EC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v10 = sub_1622C(v9);

  return sub_1559C(v10, v11, v12, v13, v14, v6, v7, v8);
}

uint64_t sub_15F8C()
{
  sub_7F1C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_16074(uint64_t a1)
{
  v2 = sub_506C(&qword_A4810, &unk_760A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16130()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_16178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_1622C(v7);

  return sub_151F0(v8, v9, v10, v11, v12, v6);
}

uint64_t *sub_1624C(uint64_t a1)
{
  v3 = &qword_A4A28;
  v4 = sub_506C(&qword_A4A28, &unk_7A800);
  v5 = sub_B1C0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_16F44();
  v9 = __chkstk_darwin(v8);
  sub_16F60(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  v17 = sub_730B0();
  sub_16FAC(v17);
  if (!v18)
  {
    v19 = sub_16FD8();
    sub_16EE8(v19, v20, v21, v22);
    v23 = *(a1 - 8);
    v24 = *(v23 + 88);
    v25 = sub_7F28();
    v27 = v26(v25);
    if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Inch(_:))
    {
      v3 = (&dword_0 + 1);
    }

    else if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Mile(_:))
    {
      v3 = &dword_4;
    }

    else
    {
      if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Calorie(_:))
      {
        goto LABEL_7;
      }

      if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Meter(_:))
      {
        v3 = (&dword_0 + 2);
        goto LABEL_12;
      }

      if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Yard(_:))
      {
        v3 = (&dword_4 + 1);
        goto LABEL_12;
      }

      if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilocalorie(_:))
      {
LABEL_7:
        v3 = (&dword_8 + 2);
      }

      else if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Foot(_:))
      {
        v3 = (&dword_0 + 3);
      }

      else if (v27 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilojoule(_:))
      {
        v3 = (&dword_8 + 1);
      }

      else
      {
        v29 = *(v23 + 8);
        v30 = sub_7F28();
        v31(v30);
        v3 = 0;
      }
    }
  }

LABEL_12:
  sub_10364(v1, &qword_A4A28, &unk_7A800);
  return v3;
}

uint64_t *sub_1644C(uint64_t a1)
{
  v3 = &qword_A4A18;
  v4 = sub_506C(&qword_A4A18, &qword_75D58);
  v5 = sub_B1C0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_16F44();
  v9 = __chkstk_darwin(v8);
  sub_16F60(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  v17 = sub_72EF0();
  sub_16FAC(v17);
  if (!v18)
  {
    v19 = sub_16FD8();
    sub_16EE8(v19, v20, v21, v22);
    v23 = *(a1 - 8);
    v24 = *(v23 + 88);
    v25 = sub_7F28();
    v27 = v26(v25);
    if (v27 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:))
    {
      v3 = (&dword_4 + 2);
    }

    else if (v27 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Minute(_:))
    {
      v3 = (&dword_4 + 3);
    }

    else if (v27 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Hour(_:))
    {
      v3 = &dword_8;
    }

    else
    {
      v28 = *(v23 + 8);
      v29 = sub_7F28();
      v30(v29);
      v3 = 0;
    }
  }

  sub_10364(v1, &qword_A4A18, &qword_75D58);
  return v3;
}

uint64_t sub_165C8()
{
  v0 = sub_72EC0();
  v1 = v0;
  if (v0)
  {
    if (sub_114FC(v0))
    {
      sub_11500(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_73B70();
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_72DB0();

      if (v5)
      {
        v3 = sub_730D0();

        if (v3)
        {
          v1 = sub_72E80();

          return v1;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return v1;
}

uint64_t sub_166B0(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_730B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v56 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_506C(&qword_A4A20, &qword_75D60);
  v8 = sub_1168C(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v50[-v14];
  v16 = sub_506C(&qword_A4A28, &unk_7A800);
  v17 = sub_B1C0(v16);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v50[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v50[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v50[-v27];
  __chkstk_darwin(v26);
  v30 = &v50[-v29];
  if (!a1)
  {
    return a1;
  }

  v31 = sub_72F90();
  a1 = v31;
  if (!v31)
  {
    return a1;
  }

  if (!sub_114FC(v31))
  {

    return 0;
  }

  v54 = v13;
  v55 = v4;
  sub_11500(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_73B70();
  }

  else
  {
    v32 = *(a1 + 32);
  }

  sub_72DB0();

  a1 = v58;
  if (!v58)
  {
    return a1;
  }

  v33 = sub_73120();

  if (!v33)
  {
    return 0;
  }

  a1 = sub_72E80();
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    v36 = *&a1;
    v52 = *(v55 + 104);
    v53 = v55 + 104;
    v52(v30, enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Calorie(_:), v3);
    sub_7CC4(v30, 0, 1, v3);
    v37 = *(v7 + 48);
    sub_16FE4(v30, v15);
    sub_16FE4(v57, &v15[v37]);
    sub_16F8C(v15);
    if (v39)
    {
      sub_10364(v30, &qword_A4A28, &unk_7A800);
      sub_16F8C(&v15[v37]);
      if (v39)
      {
        sub_10364(v15, &qword_A4A28, &unk_7A800);
        goto LABEL_22;
      }
    }

    else
    {
      sub_16EE8(v15, v28, &qword_A4A28, &unk_7A800);
      sub_16F8C(&v15[v37]);
      if (!v39)
      {
        v40 = v56;
        (*(v55 + 32))(v56, &v15[v37], v3);
        sub_16E90();
        v51 = sub_73770();
        v41 = *(v55 + 8);
        v41(v40, v3);
        sub_10364(v30, &qword_A4A28, &unk_7A800);
        v41(v28, v3);
        sub_10364(v15, &qword_A4A28, &unk_7A800);
        if ((v51 & 1) == 0)
        {
LABEL_23:
          v52(v25, enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilojoule(_:), v3);
          sub_7CC4(v25, 0, 1, v3);
          v42 = *(v7 + 48);
          v43 = v54;
          sub_16FE4(v25, v54);
          sub_16FE4(v57, v43 + v42);
          sub_16F8C(v43);
          if (v39)
          {
            sub_10364(v25, &qword_A4A28, &unk_7A800);
            sub_16F8C(v43 + v42);
            if (v39)
            {
              sub_10364(v43, &qword_A4A28, &unk_7A800);
LABEL_33:
              v36 = v36 * 1000.0;
              return *&v36;
            }
          }

          else
          {
            sub_16EE8(v43, v22, &qword_A4A28, &unk_7A800);
            sub_16F8C(v43 + v42);
            if (!v44)
            {
              v45 = v55;
              v46 = v43 + v42;
              v47 = v56;
              (*(v55 + 32))(v56, v46, v3);
              sub_16E90();
              v48 = sub_73770();
              v49 = *(v45 + 8);
              v49(v47, v3);
              sub_10364(v25, &qword_A4A28, &unk_7A800);
              v49(v22, v3);
              sub_10364(v43, &qword_A4A28, &unk_7A800);
              if ((v48 & 1) == 0)
              {
                return *&v36;
              }

              goto LABEL_33;
            }

            sub_10364(v25, &qword_A4A28, &unk_7A800);
            (*(v55 + 8))(v22, v3);
          }

          sub_10364(v43, &qword_A4A20, &qword_75D60);
          return *&v36;
        }

LABEL_22:
        v36 = v36 / 1000.0;
        goto LABEL_23;
      }

      sub_10364(v30, &qword_A4A28, &unk_7A800);
      (*(v55 + 8))(v28, v3);
    }

    sub_10364(v15, &qword_A4A20, &qword_75D60);
    goto LABEL_23;
  }

  return a1;
}

uint64_t *sub_16D30(uint64_t a1)
{
  v3 = &qword_A4A38;
  v4 = sub_506C(&qword_A4A38, &qword_75D68);
  v5 = sub_B1C0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_16F44();
  v9 = __chkstk_darwin(v8);
  sub_16F60(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  v17 = sub_72FF0();
  sub_16FAC(v17);
  if (!v18)
  {
    v19 = sub_16FD8();
    sub_16EE8(v19, v20, v21, v22);
    v23 = *(a1 - 8);
    v24 = *(v23 + 88);
    v25 = sub_7F28();
    v27 = v26(v25);
    if (v27 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
      v3 = (&dword_0 + 1);
    }

    else if (v27 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v3 = (&dword_0 + 2);
    }

    else
    {
      v28 = *(v23 + 8);
      v29 = sub_7F28();
      v30(v29);
      v3 = 0;
    }
  }

  sub_10364(v1, &qword_A4A38, &qword_75D68);
  return v3;
}

unint64_t sub_16E90()
{
  result = qword_A4A30;
  if (!qword_A4A30)
  {
    sub_730B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4A30);
  }

  return result;
}

uint64_t sub_16EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_506C(a3, a4);
  sub_1168C(v5);
  v7 = *(v6 + 16);
  v8 = sub_16FD8();
  v9(v8);
  return a2;
}

uint64_t sub_16F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_16EE8(v10, &a9 - v9, v11, v12);
}

uint64_t sub_16FE4(uint64_t a1, uint64_t a2)
{

  return sub_16EE8(a1, a2, v2, v3);
}

uint64_t sub_1701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_17040, 0, 0);
}

uint64_t sub_17040()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = sub_17B28(&dword_78B68);
  *(v0 + 56) = v6;
  *v6 = v0;
  sub_17B14(v6);
  v7 = sub_17B00(18);

  return v8(v7);
}

uint64_t sub_17184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_73910();
  sub_7CC4(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v7;
  v16[5] = a4;
  v16[6] = a5;

  sub_54390(0, 0, v14, a7, v16);
}

uint64_t sub_17278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1729C, 0, 0);
}

uint64_t sub_1729C()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = sub_17B28(&dword_78B68);
  *(v0 + 56) = v6;
  *v6 = v0;
  sub_17B14(v6);
  v7 = sub_17B00(23);

  return v8(v7);
}

uint64_t sub_173C0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_176A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_177C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_1780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_17870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_178E0()
{
  result = qword_A4AF8;
  if (!qword_A4AF8)
  {
    type metadata accessor for EndWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4AF8);
  }

  return result;
}

uint64_t sub_17938()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_17278(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_179D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17A20()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_1701C(v2, v3, v4, v5, v6, v7);
}

void sub_17AEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_17B14(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_17B28@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_17B48()
{
  v0 = sub_73720();
  sub_19830(v0, qword_A4B00);
  sub_18D3C(v0, qword_A4B00);
  sub_ADF8(0, qword_A4C68, OS_os_log_ptr);
  sub_73A70();
  return sub_73730();
}

uint64_t sub_17BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_714B0();
  v5 = sub_19894(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v10 = [objc_allocWithZone(NSMetaphone) init];
  result = sub_197B0(a1, a2, v10);
  if (v12)
  {
    sub_714A0();
    sub_10414();
    v13 = sub_73AC0();

    v14 = *(v7 + 8);
    v15 = sub_5388();
    v16(v15);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_17D24()
{
  sub_198DC();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0x7473696C70;
  v0[5] = 0xE500000000000000;
  v0[6] = 0;
}

uint64_t sub_17D5C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];

  v9 = sub_1971C(v5, v6, v8, v7, v4);

  if (v9)
  {
    sub_714F0();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_71500();

  return sub_7CC4(a1, v10, 1, v11);
}

uint64_t sub_17E40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_17E70()
{
  sub_17E40();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *guestNames()()
{
  v0 = sub_506C(&qword_A3F90, &unk_74FC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  type metadata accessor for SearchBundleHelper();
  swift_initStackObject();
  sub_198DC();
  v4[2] = v5;
  v4[3] = v6;
  v4[4] = 0x7473696C70;
  v4[5] = 0xE500000000000000;
  v4[6] = 0;
  sub_17D5C(v3);
  v7 = guestNames(dataPath:)(v3);

  sub_AEF4(v3, &qword_A3F90, &unk_74FC0);
  return v7;
}

void *guestNames(dataPath:)(uint64_t a1)
{
  v3 = sub_506C(&qword_A3F90, &unk_74FC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v35 - v5;
  v7 = sub_71500();
  v8 = sub_19894(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_198CC();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v35 - v17;
  sub_1828C(a1, v6);
  if (sub_5124(v6, 1, v1) == 1)
  {
    v19 = &qword_A3F90;
    v20 = &unk_74FC0;
    v21 = v6;
LABEL_3:
    sub_AEF4(v21, v19, v20);
    return &_swiftEmptyArrayStorage;
  }

  (*(v10 + 32))(v18, v6, v1);
  sub_ADF8(0, &qword_A4B18, NSDictionary_ptr);
  (*(v10 + 16))(v15, v18, v1);
  v22 = sub_182FC(v15);
  if (!v22)
  {
    v28 = *(v10 + 8);
    v29 = sub_5388();
    v30(v29);
    return &_swiftEmptyArrayStorage;
  }

  v23 = v22;
  *&v36 = 0x737473657567;
  *(&v36 + 1) = 0xE600000000000000;
  v24 = [v22 __swift_objectForKeyedSubscript:sub_73DD0()];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_73B00();

    swift_unknownObjectRelease();
    v25 = *(v10 + 8);
    v26 = sub_5388();
    v27(v26);
  }

  else
  {
    v31 = *(v10 + 8);
    v32 = sub_5388();
    v33(v32);

    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {
    v19 = &qword_A42F0;
    v20 = &qword_77260;
    v21 = v38;
    goto LABEL_3;
  }

  sub_506C(&qword_A4B20, &unk_75EA0);
  if (swift_dynamicCast())
  {
    return v35[1];
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1828C(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F90, &unk_74FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_182FC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_714E0(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL:v4];

  v7 = sub_71500();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void *search(dataPath:guest:modality:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v106 = a4;
  v107 = a5;
  v108 = sub_506C(&qword_A3F90, &unk_74FC0);
  v9 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  sub_198CC();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v101 - v14;
  v16 = sub_71500();
  v17 = sub_19894(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_198CC();
  v24 = v22 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v101 - v27;
  __chkstk_darwin(v26);
  v30 = &v101 - v29;
  sub_1828C(a1, v15);
  if (sub_5124(v15, 1, v5) == 1)
  {
    v31 = &qword_A3F90;
    v32 = &unk_74FC0;
    v33 = v15;
LABEL_3:
    sub_AEF4(v33, v31, v32);
LABEL_17:
    if (qword_A38C0 != -1)
    {
      sub_198AC();
    }

    v66 = sub_73720();
    sub_18D3C(v66, qword_A4B00);
    sub_1828C(a1, v12);
    v67 = sub_73710();
    v68 = sub_73980();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v112 = v70;
      *v69 = 136315138;
      v71 = sub_73A80();
      v73 = v72;
      sub_AEF4(v12, &qword_A3F90, &unk_74FC0);
      v74 = sub_19144(v71, v73, &v112);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_0, v67, v68, "No data file present: %s", v69, 0xCu);
      sub_AE38(v70);
      sub_7EBC();
      sub_7EBC();
    }

    else
    {

      sub_AEF4(v12, &qword_A3F90, &unk_74FC0);
    }

    return _swiftEmptyArrayStorage;
  }

  v104 = a2;
  v105 = a3;
  (*(v19 + 32))(v30, v15, v5);
  sub_ADF8(0, &qword_A4B18, NSDictionary_ptr);
  v34 = v5;
  v35 = v30;
  v36 = v19;
  v38 = (v19 + 16);
  v37 = *(v19 + 16);
  v39 = sub_5388();
  v37(v39);
  v40 = sub_182FC(v28);
  if (!v40)
  {
    (*(v36 + 8))(v35, v34);
    goto LABEL_17;
  }

  v41 = v40;
  v102 = v35;
  v103 = v36;
  *&v110 = sub_17BE8(v104, v105);
  *(&v110 + 1) = v42;
  v43 = sub_73DD0();
  v101 = v41;
  v44 = [v41 __swift_objectForKeyedSubscript:v43];
  swift_unknownObjectRelease();
  if (v44)
  {
    sub_73B00();
    swift_unknownObjectRelease();
  }

  else
  {
    v110 = 0u;
    v111 = 0u;
  }

  v45 = v102;
  v46 = v34;
  v112 = v110;
  v113 = v111;
  if (!*(&v111 + 1))
  {
    v60 = *(v103 + 8);
    v61 = sub_5388();
    v62(v61);

    v31 = &qword_A42F0;
    v32 = &qword_77260;
    v33 = &v112;
    goto LABEL_3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = *(v103 + 8);
    v64 = sub_5388();
    v65(v64);

    goto LABEL_17;
  }

  v47 = v109;
  if (qword_A38C0 != -1)
  {
    sub_198AC();
  }

  v48 = sub_73720();
  v49 = sub_18D3C(v48, qword_A4B00);
  (v37)(v24, v45, v34);
  v108 = v49;
  v50 = sub_73710();
  v51 = sub_73970();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v47;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v112 = v54;
    *v53 = 136315138;
    sub_196C4(&qword_A4B30, &type metadata accessor for URL);
    v55 = sub_73DA0();
    v57 = v56;
    v58 = sub_198FC();
    v38(v58);
    v59 = sub_19144(v55, v57, &v112);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_0, v50, v51, "Looking at data file found at %s", v53, 0xCu);
    sub_AE38(v54);
    sub_7EBC();
    v47 = v52;
    sub_7EBC();
  }

  else
  {

    v77 = sub_198FC();
    v38(v77);
  }

  v78 = v105;
  if (v107)
  {
    *&v112 = sub_737B0();
    *(&v112 + 1) = v79;
    sub_10414();
    v80 = sub_73AB0();
    v82 = v81;

    *&v110 = v80;
    *(&v110 + 1) = v82;

    v83 = [v47 __swift_objectForKeyedSubscript:sub_73DD0()];
    swift_unknownObjectRelease();
    if (v83)
    {
      sub_73B00();
      swift_unknownObjectRelease();
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
    }

    v112 = v110;
    v113 = v111;
    if (*(&v111 + 1))
    {
      sub_ADF8(0, &qword_A4B28, NSArray_ptr);
      if (swift_dynamicCast())
      {

        v93 = v109;
        v75 = sub_18D74(v109);

        (v38)(v102, v46);
        return v75;
      }
    }

    else
    {
      sub_AEF4(&v112, &qword_A42F0, &qword_77260);
    }

    v94 = sub_73710();
    v95 = sub_73980();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v108 = v38;
      v97 = v47;
      v98 = v96;
      *&v112 = swift_slowAlloc();
      *v98 = 136315394;
      *(v98 + 4) = sub_19144(v104, v78, &v112);
      *(v98 + 12) = 2080;
      v99 = sub_19144(v80, v82, &v112);

      *(v98 + 14) = v99;
      _os_log_impl(&dword_0, v94, v95, "No adamIds found for %s and %s", v98, 0x16u);
      swift_arrayDestroy();
      sub_7EBC();
      v47 = v97;
      v38 = v108;
      sub_7EBC();
    }

    else
    {
    }

    v100 = v101;
  }

  else
  {
    v84 = sub_73710();
    v85 = sub_73980();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = v38;
      v88 = v47;
      v89 = swift_slowAlloc();
      *&v110 = v89;
      *v86 = 136315138;
      v112 = v106;
      sub_506C(&qword_A6D00, &unk_75D30);
      v90 = sub_73A80();
      v92 = sub_19144(v90, v91, &v110);

      *(v86 + 4) = v92;
      _os_log_impl(&dword_0, v84, v85, "Failed to normalize modality: %s", v86, 0xCu);
      sub_AE38(v89);
      v47 = v88;
      v38 = v87;
      sub_7EBC();
      sub_7EBC();
    }
  }

  (v38)(v102, v46);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_18D3C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18D74(void *a1)
{
  v23 = sub_714D0();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v28 = _swiftEmptyArrayStorage;
  sub_401D0();
  v8 = v28;
  result = sub_73A20();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v21 = v3;
  v22 = v1;
  if (v7)
  {
    sub_196C4(&qword_A4C58, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      result = sub_73AA0();
      if (!v27)
      {
        goto LABEL_15;
      }

      sub_14E68(&v26, &v24);
      v10 = sub_737A0();
      v12 = v11;
      sub_AE38(&v26);
      v28 = v8;
      v13 = v8[2];
      if (v13 >= v8[3] >> 1)
      {
        sub_401D0();
        v8 = v28;
      }

      v8[2] = v13 + 1;
      v14 = &v8[2 * v13];
      v14[4] = v10;
      v14[5] = v12;
    }

    while (--v7);
  }

  sub_196C4(&qword_A4C58, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    sub_73AA0();
    if (!v25)
    {
      break;
    }

    sub_1970C(&v24, &v26);
    sub_14E68(&v26, &v24);
    v15 = sub_737A0();
    v17 = v16;
    sub_AE38(&v26);
    v28 = v8;
    v18 = v8[2];
    if (v18 >= v8[3] >> 1)
    {
      sub_401D0();
      v8 = v28;
    }

    v8[2] = v18 + 1;
    v19 = &v8[2 * v18];
    v19[4] = v15;
    v19[5] = v17;
  }

  (*(v21 + 8))(v6, v23);
  sub_AEF4(&v24, &qword_A42F0, &qword_77260);
  return v8;
}

uint64_t sub_19074(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_190E8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_19144(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_19144(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19208(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_14E68(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_AE38(v11);
  return v7;
}

unint64_t sub_19208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19308(a5, a6);
    *a1 = v9;
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
    result = sub_73BA0();
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

char *sub_19308(uint64_t a1, unint64_t a2)
{
  v4 = sub_19354(a1, a2);
  sub_1946C(&off_97BC0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_19354(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_73830())
  {
    result = sub_19550(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_73B50();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_73BA0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1946C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_195C0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19550(uint64_t a1, uint64_t a2)
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

  sub_506C(&qword_A4C60, &qword_75F08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_195C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_506C(&qword_A4C60, &qword_75F08);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_196B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_196C4(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1970C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_73780();

  v7 = sub_73780();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_197B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  v5 = [a3 translate:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_73790();

  return v6;
}

uint64_t *sub_19830(uint64_t a1, uint64_t *a2)
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

uint64_t sub_198AC()
{

  return swift_once();
}

uint64_t sub_19910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1994C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_19A30()
{
  sub_73E40();
  sub_73E50(0);
  return sub_73E60();
}

Swift::Int sub_19A7C()
{
  sub_73E40();
  sub_73E50(0);
  return sub_73E60();
}

void sub_19ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void))
{
  v9 = sub_73720();
  v10 = sub_5394(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = [a6 disambiguationItems];
  v19 = sub_73870();

  v20 = sub_3E538(v19);

  if (v20)
  {
    v21 = sub_506C(&qword_A4CF8, &qword_75FF0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_727A0();
    a7();
    sub_11754();
  }

  else
  {
    type metadata accessor for HealthFlowError();
    sub_14F70();
    v25 = sub_B5BC(6);
    v26 = sub_736E0();
    sub_7EEC();
    (*(v12 + 16))(v17, v26, v9);

    v27 = sub_73710();
    v28 = sub_73980();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_1BA10();
      v30 = sub_14F44();
      v42 = sub_14F88();
      v44 = v42;
      *v29 = 136315394;
      v31 = sub_73ED0();
      v43 = a7;
      v33 = sub_19144(v31, v32, &v44);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2112;
      sub_1B9A0();
      sub_1B78C(v34, v35);
      swift_allocError();
      *v36 = v25;

      a7 = v43;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v37;
      *v30 = v37;
      _os_log_impl(&dword_0, v27, v28, "%s Error: %@", v29, 0x16u);
      sub_AEF4(v30, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v42);
      sub_7EBC();
      sub_7EBC();

      (*(v12 + 8))(v17, v9);
    }

    else
    {

      (*(v12 + 8))(v17, v9);
    }

    sub_1B9A0();
    sub_1B78C(v38, v39);
    v40 = sub_1B9D8();
    *v41 = v25;

    (a7)(v40, 1);

    sub_11754();
  }
}