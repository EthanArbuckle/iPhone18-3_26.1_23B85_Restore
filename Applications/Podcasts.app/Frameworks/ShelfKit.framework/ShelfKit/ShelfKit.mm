__CFString *ASKMetricsGetCookieString()
{
  v0 = [NSURL URLWithString:@"http://www.apple.com/"];
  v1 = +[ACAccountStore ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  [v2 ams_cookiesForURL:v0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v13 = v1;
    v14 = v0;
    v6 = *v16;
    v7 = &stru_4CB290;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"Cookie"];

        if (v11)
        {
          v7 = [v9 value];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v1 = v13;
    v0 = v14;
  }

  else
  {
    v7 = &stru_4CB290;
  }

  return v7;
}

id ASKMetricsGetDeviceUserAgent()
{
  v0 = +[AMSProcessInfo currentProcess];
  v1 = [AMSUserAgent userAgentForProcessInfo:v0];

  return v1;
}

__CFString *ASKMetricsGetNetworkConnectionTypeString()
{
  v0 = +[IMNetworkObserver sharedInstance];
  v1 = [v0 connectionTypeHeader];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

NSURL *ASKFinanceTypeGetUrl(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(&off_4AF2E8 + a1);
  }

  return [NSURL URLWithString:v1];
}

void sub_67A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ASKLog(void *a1, os_log_type_t a2)
{
  v3 = a1;
  v4 = +[AMSLogConfig ask_generalLogConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, a2))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v5, a2, "%@", &v6, 0xCu);
  }
}

void ASKNQMLParserStartDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void ASKNQMLParserEndDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void ASKNQMLParserError(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

void ASKNQMLParserStartElement(void *a1, const xmlChar *a2, xmlChar **a3)
{
  v16 = a1;
  if (xmlStrEqual(a2, "li"))
  {
    v5 = [v16 delegate];
    [v5 parserDidStartListElement:v16];
  }

  else
  {
    v18 = 0;
    if (TryListTypeFromName(a2, &v18))
    {
      v5 = [v16 delegate];
      [v5 parser:v16 didStartListOfStyle:v18];
    }

    else
    {
      v17 = 0;
      if (!TryTextElementFromName(a2, &v17))
      {
        goto LABEL_14;
      }

      v5 = [v16 delegate];
      v6 = v17;
      if (a3)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = *a3;
        if (*a3)
        {
          v9 = a3 + 2;
          do
          {
            v10 = *(v9 - 1);
            v11 = xmlStrlen(v8);
            v12 = NSStringFromXmlChar(v8, v11);
            v13 = xmlStrlen(v10);
            v14 = NSStringFromXmlChar(v10, v13);
            [v7 setObject:v14 forKeyedSubscript:v12];

            v15 = *v9;
            v9 += 2;
            v8 = v15;
          }

          while (v15);
        }
      }

      else
      {
        v7 = &__NSDictionary0__struct;
      }

      [v5 parser:v16 didStartElement:v6 attributes:v7];
    }
  }

LABEL_14:
}

void ASKNQMLParserEndElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  if (xmlStrEqual(a2, "br"))
  {
    v3 = [v4 delegate];
    [v3 parserDidFindNewline:v4];
  }

  else if (xmlStrEqual(a2, "li"))
  {
    v3 = [v4 delegate];
    [v3 parserDidEndListElement:v4];
  }

  else
  {
    v6 = 0;
    if (TryListTypeFromName(a2, &v6))
    {
      v3 = [v4 delegate];
      [v3 parser:v4 didEndListOfStyle:v6];
    }

    else
    {
      v5 = 0;
      if (!TryTextElementFromName(a2, &v5))
      {
        goto LABEL_10;
      }

      v3 = [v4 delegate];
      [v3 parser:v4 didEndElement:v5];
    }
  }

LABEL_10:
}

void ASKNQMLParserCharacters(void *a1, __CFString *a2, int a3)
{
  v7 = a1;
  v5 = NSStringFromXmlChar(a2, a3);
  if (v5)
  {
    v6 = [v7 delegate];
    [v6 parser:v7 didFindCharacters:v5];
  }
}

uint64_t TryListTypeFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "ol"))
  {
    v4 = 0;
  }

  else
  {
    result = xmlStrEqual(a1, "ul");
    if (!result)
    {
      return result;
    }

    v4 = 1;
  }

  *a2 = v4;
  return 1;
}

uint64_t TryTextElementFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "em"))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "i"))
  {
    v4 = 1;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "u"))
  {
    v4 = 2;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "strike") || xmlStrEqual(a1, "del"))
  {
    v4 = 3;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "p") || xmlStrEqual(a1, "div"))
  {
    v4 = 4;
    goto LABEL_4;
  }

  result = xmlStrEqual(a1, "mark");
  if (result)
  {
    v4 = 5;
    goto LABEL_4;
  }

  return result;
}

__CFString *NSStringFromXmlChar(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      a1 = [[NSString alloc] initWithBytes:a1 length:a2 encoding:4];
    }

    else
    {
      a1 = &stru_4CB290;
    }

    v2 = vars8;
  }

  return a1;
}

void sub_77CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9094(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_91E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_933C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Swift::Int IntentFeedUnsubscriptionError.hashValue.getter()
{
  sub_3EE954();
  sub_3EE964(0);
  return sub_3EE9A4();
}

Swift::Int sub_9EE0()
{
  sub_3EE954();
  sub_3EE964(0);
  return sub_3EE9A4();
}

ShelfKit::AccountLink::LinkDisplayType_optional __swiftcall AccountLink.LinkDisplayType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4AF618;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t AccountLink.LinkDisplayType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x697461676976616ELL;
  }
}

uint64_t sub_9FC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x697461676976616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0x697461676976616ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

uint64_t sub_A068@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4AF618;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A0C8(uint64_t *a1@<X8>)
{
  v2 = 0x697461676976616ELL;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_A108()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_A18C()
{
  sub_3ED394();
}

Swift::Int sub_A1FC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t NSUserDefaults.Keys.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountLink.action.getter()
{
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_3E7F94();
  return v1;
}

uint64_t type metadata accessor for AccountLink()
{
  result = qword_4E8E30;
  if (!qword_4E8E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_A394@<X0>(void *a1@<X8>)
{
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  result = sub_3E7F94();
  *a1 = v3;
  return result;
}

uint64_t sub_A3FC()
{
  type metadata accessor for AccountLink();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  return sub_3E7FA4();
}

uint64_t AccountLink.action.setter()
{
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  return sub_3E7FA4();
}

void (*AccountLink.action.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  *(v3 + 32) = sub_3E7F84();
  return sub_A560;
}

void sub_A560(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AccountLink.displayType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccountLink();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_A5E0@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_3E5FC4();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3EC1F4();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 syncValueForKey:kBagKeyAddFundsURL];

  if (v14)
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v15 = sub_3E5DC4();
    v16 = swift_dynamicCast();
    (*(*(v15 - 8) + 56))(v12, v16 ^ 1u, 1, v15);
  }

  else
  {
    sub_FCF8(v42, &unk_501090);
    v17 = sub_3E5DC4();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  v18 = [objc_opt_self() mainBundle];
  v33._countAndFlagsBits = 0xE000000000000000;
  v43._object = 0x80000000004237E0;
  v43._countAndFlagsBits = 0xD000000000000011;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v19.super.isa = v18;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v35 = sub_3E5A74(v43, v44, v19, v45, v33);
  v21 = v20;

  sub_FBD0(v12, v9, &unk_4E9EE0);
  swift_storeEnumTagMultiPayload();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v22 = swift_allocObject();
  sub_FC38(v9, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 5;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v24 = v36;
  (*(v4 + 16))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6, v36);
  v25 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v26 = sub_3EC634();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;
  (*(v37 + 8))(v3, v38);
  (*(v4 + 8))(v6, v24);
  sub_FC9C(v9);
  *(v22 + 16) = v27;
  *(v22 + 24) = v29;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 48;
  v30 = v39;
  *v39 = v35;
  v30[1] = v21;
  v31 = type metadata accessor for AccountLink();
  *&v42[0] = v22;
  type metadata accessor for Action();
  sub_3E7F74();
  *(v30 + *(v31 + 24)) = 1;
  return sub_FCF8(v12, &unk_4E9EE0);
}

uint64_t sub_AB44@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_3E5FC4();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_3EC1F4();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v9 = __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 syncValueForKey:kBagKeyManageSubscriptionsURL];

  if (v18)
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (*(&v53 + 1))
  {
    v19 = sub_3E5DC4();
    v20 = swift_dynamicCast();
    (*(*(v19 - 8) + 56))(v16, v20 ^ 1u, 1, v19);
  }

  else
  {
    sub_FCF8(v54, &unk_501090);
    v19 = sub_3E5DC4();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v46 = v16;
  sub_FBD0(v16, v11, &unk_4E9EE0);
  sub_3E5DC4();
  v21 = *(v19 - 8);
  v22 = *(v21 + 48);
  if (v22(v11, 1, v19) == 1)
  {
    if (qword_4E88E0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v8, qword_4E88E8);
    sub_FBD0(v23, v14, &unk_4E9EE0);
    if (v22(v11, 1, v19) != 1)
    {
      sub_FCF8(v11, &unk_4E9EE0);
    }
  }

  else
  {
    (*(v21 + 32))(v14, v11, v19);
    (*(v21 + 56))(v14, 0, 1, v19);
  }

  v24 = [objc_opt_self() mainBundle];
  v43._countAndFlagsBits = 0xE000000000000000;
  v55._object = 0x8000000000423770;
  v55._countAndFlagsBits = 0xD000000000000015;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v25.super.isa = v24;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v26 = sub_3E5A74(v55, v56, v25, v57, v43);
  v44 = v27;

  sub_FBD0(v14, v7, &unk_4E9EE0);
  swift_storeEnumTagMultiPayload();
  v28 = v4;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v29 = swift_allocObject();
  sub_FC38(v7, v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v30 = (v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v30 = 0;
  v30[1] = 0;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 5;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v31 = v45;
  v32 = v48;
  (*(v45 + 16))(v29 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v28, v48);
  v33 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v34 = sub_3EC634();
  (*(*(v34 - 8) + 56))(v29 + v33, 1, 1, v34);
  v35 = v47;
  sub_3E5FB4();
  v36 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v38 = v37;
  (*(v49 + 8))(v35, v50);
  (*(v31 + 8))(v28, v32);
  sub_FC9C(v7);
  *(v29 + 16) = v36;
  *(v29 + 24) = v38;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 48;
  v39 = v51;
  v40 = v44;
  *v51 = v26;
  v39[1] = v40;
  v41 = type metadata accessor for AccountLink();
  *&v54[0] = v29;
  type metadata accessor for Action();
  sub_3E7F74();
  sub_FCF8(v14, &unk_4E9EE0);
  *(v39 + *(v41 + 24)) = 1;
  return sub_FCF8(v46, &unk_4E9EE0);
}

uint64_t sub_B268@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for AccountLink();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9160);
  v5 = *(v29 - 8);
  v6 = __chkstk_darwin(v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9168);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v13 = v25 + v12;
  sub_B68C((v25 + v12));
  sub_BC90((v13 + v11));
  sub_FBD0(v13, v10, &qword_4E9160);
  sub_FACC(v10, v8, &qword_4E9160);
  v28 = v2;
  v14 = *(v2 + 48);
  v24 = v1;
  v15 = v14(v8, 1, v1);
  v27 = v4;
  if (v15 == 1)
  {
    sub_FCF8(v8, &qword_4E9160);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_FA1C(v8, v4);
    v16 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_DFAC0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_DFAC0(v17 > 1, v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    sub_FA1C(v27, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v18);
  }

  sub_FBD0(v13 + v11, v10, &qword_4E9160);
  sub_FACC(v10, v8, &qword_4E9160);
  if (v14(v8, 1, v24) == 1)
  {
    sub_FCF8(v8, &qword_4E9160);
  }

  else
  {
    v19 = v27;
    sub_FA1C(v8, v27);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_DFAC0(0, v16[2] + 1, 1, v16);
    }

    v21 = v16[2];
    v20 = v16[3];
    if (v21 >= v20 >> 1)
    {
      v16 = sub_DFAC0(v20 > 1, v21 + 1, 1, v16);
    }

    v16[2] = v21 + 1;
    sub_FA1C(v19, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v23 = v26;
  *v26 = 0;
  v23[1] = v16;
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = 0;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_B68C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E5FC4();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_3EC1F4();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  sub_3ED244();
  sub_3E5D94();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &unk_4E9EE0);
    v23 = type metadata accessor for AccountLink();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  else
  {
    v25 = *(v17 + 32);
    v48 = v22;
    v25(v22, v15, v16);
    v49 = a1;
    v45 = v7;
    v26 = [objc_opt_self() mainBundle];
    v43._countAndFlagsBits = 0xE000000000000000;
    v56._object = 0x8000000000423730;
    v56._countAndFlagsBits = 0xD000000000000011;
    v57.value._countAndFlagsBits = 0;
    v57.value._object = 0;
    v27.super.isa = v26;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v28 = sub_3E5A74(v56, v57, v27, v58, v43);
    v46 = v29;
    v47 = v28;

    v30 = *(v17 + 16);
    v44 = v20;
    v30(v20, v22, v16);
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ExternalUrlAction();
    v31 = swift_allocObject();
    v30((v31 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url), v20, v16);
    *(v31 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = 0;
    *(v31 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = 0;
    v32 = v50;
    v33 = v51;
    (*(v50 + 16))(v54, v12, v51);
    v34 = sub_3EC634();
    v35 = v45;
    (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
    sub_3E5FB4();
    v36 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v38 = v37;
    (*(v52 + 8))(v4, v53);
    (*(v32 + 8))(v12, v33);
    v39 = *(v17 + 8);
    v39(v44, v16);
    *(v31 + 16) = v36;
    *(v31 + 24) = v38;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    *(v31 + 48) = 32;
    (*(v32 + 32))(v31 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v54, v33);
    sub_FACC(v35, v31 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    v40 = v49;
    v41 = v46;
    *v49 = v47;
    v40[1] = v41;
    v42 = type metadata accessor for AccountLink();
    v55 = v31;
    type metadata accessor for Action();
    sub_3E7F74();
    v39(v48, v16);
    *(v40 + *(v42 + 24)) = 1;
    return (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
  }
}

uint64_t sub_BC90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E5FC4();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_3EC1F4();
  v54 = *(v56 - 8);
  v7 = __chkstk_darwin(v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_3E5DC4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  sub_FA80();
  sub_3ED9A4();
  sub_3E5D94();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_FCF8(v14, &unk_4E9EE0);
    v22 = type metadata accessor for AccountLink();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  else
  {
    v24 = *(v16 + 32);
    v52 = v21;
    v24(v21, v14, v15);
    v53 = a1;
    v49 = v6;
    v25 = [objc_opt_self() mainBundle];
    v45._countAndFlagsBits = 0xE000000000000000;
    v60._object = 0x8000000000423710;
    v60._countAndFlagsBits = 0xD000000000000015;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v26.super.isa = v25;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v27 = sub_3E5A74(v60, v61, v26, v62, v45);
    v50 = v28;
    v51 = v27;

    v29 = *(v16 + 16);
    v47 = v19;
    v29(v19, v21, v15);
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for ExternalUrlAction();
    v30 = swift_allocObject();
    v29((v30 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url), v19, v15);
    *(v30 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = 0;
    *(v30 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = 0;
    v31 = v54;
    v32 = *(v54 + 16);
    v48 = v9;
    v33 = v9;
    v34 = v56;
    v32(v33, v11, v56);
    v35 = sub_3EC634();
    v36 = v49;
    (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
    v37 = v55;
    sub_3E5FB4();
    v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v40 = v39;
    (*(v57 + 8))(v37, v58);
    (*(v31 + 8))(v11, v34);
    v41 = *(v16 + 8);
    v41(v47, v15);
    *(v30 + 16) = v38;
    *(v30 + 24) = v40;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0;
    *(v30 + 48) = 32;
    (*(v31 + 32))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v48, v34);
    sub_FACC(v36, v30 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    v42 = v53;
    v43 = v50;
    *v53 = v51;
    v42[1] = v43;
    v44 = type metadata accessor for AccountLink();
    v59 = v30;
    type metadata accessor for Action();
    sub_3E7F74();
    v41(v52, v15);
    *(v42 + *(v44 + 24)) = 1;
    return (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
  }
}

uint64_t AccountLink.hash(into:)()
{
  sub_3ED394();
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_E838();
  sub_3ED124();
  sub_3ED394();
}

Swift::Int AccountLink.hashValue.getter()
{
  sub_3EE954();
  sub_3ED394();
  type metadata accessor for AccountLink();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_E838();
  sub_3ED124();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_C460()
{
  sub_3EE954();
  sub_3ED394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_E838();
  sub_3ED124();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C538()
{
  sub_3ED394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_E838();
  sub_3ED124();
  sub_3ED394();
}

Swift::Int sub_C608()
{
  sub_3EE954();
  sub_3ED394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
  sub_E838();
  sub_3ED124();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_C6FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E5FC4();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC1F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = [objc_opt_self() mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v38._countAndFlagsBits = 0x5F544E554F434341;
  v38._object = 0xEE004D4545444552;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v16.super.isa = v15;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v17 = sub_3E5A74(v38, v39, v16, v40, v31);
  v33 = v18;
  v34 = v17;

  v19 = ASKFinanceTypeGetUrl(1uLL);
  sub_3E5D44();

  v20 = sub_3E5DC4();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_FBD0(v14, v11, &unk_4E9EE0);
  swift_storeEnumTagMultiPayload();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v21 = swift_allocObject();
  sub_FC38(v11, v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v22 = (v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 5;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v6 + 16))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v8, v5);
  v23 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v24 = sub_3EC634();
  (*(*(v24 - 8) + 56))(v21 + v23, 1, 1, v24);
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v35 + 8))(v4, v36);
  (*(v6 + 8))(v8, v5);
  sub_FC9C(v11);
  *(v21 + 16) = v25;
  *(v21 + 24) = v27;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 48;
  sub_FCF8(v14, &unk_4E9EE0);
  v28 = v33;
  *a1 = v34;
  a1[1] = v28;
  v29 = type metadata accessor for AccountLink();
  v37 = v21;
  type metadata accessor for Action();
  result = sub_3E7F74();
  *(a1 + *(v29 + 24)) = 1;
  return result;
}

uint64_t sub_CBA8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for AccountLink();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_CC00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3E5FC4();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC1F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = [objc_opt_self() mainBundle];
  v31._countAndFlagsBits = 0xE000000000000000;
  v38._object = 0x8000000000423750;
  v38._countAndFlagsBits = 0xD000000000000011;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v16.super.isa = v15;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v17 = sub_3E5A74(v38, v39, v16, v40, v31);
  v33 = v18;
  v34 = v17;

  v19 = ASKFinanceTypeGetUrl(2uLL);
  sub_3E5D44();

  v20 = sub_3E5DC4();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_FBD0(v14, v11, &unk_4E9EE0);
  swift_storeEnumTagMultiPayload();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for FlowAction(0);
  v21 = swift_allocObject();
  sub_FC38(v11, v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v22 = (v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 5;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v21 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v6 + 16))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v8, v5);
  v23 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v24 = sub_3EC634();
  (*(*(v24 - 8) + 56))(v21 + v23, 1, 1, v24);
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v35 + 8))(v4, v36);
  (*(v6 + 8))(v8, v5);
  sub_FC9C(v11);
  *(v21 + 16) = v25;
  *(v21 + 24) = v27;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 48;
  sub_FCF8(v14, &unk_4E9EE0);
  v28 = v33;
  *a1 = v34;
  a1[1] = v28;
  v29 = type metadata accessor for AccountLink();
  v37 = v21;
  type metadata accessor for Action();
  result = sub_3E7F74();
  *(a1 + *(v29 + 24)) = 1;
  return result;
}

uint64_t sub_D084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __swift_allocate_value_buffer(v0, qword_4E88E8);
  __swift_project_value_buffer(v0, qword_4E88E8);
  return sub_3E5D94();
}

uint64_t sub_D0F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_D16C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_D1A4(uint64_t a1, uint64_t a2)
{
  result = sub_3E6C34();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_D1F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_3E6C44();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_D250@<X0>(void *a1@<X8>)
{
  result = sub_3E6C54();
  *a1 = v3;
  return result;
}

void *sub_D2DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_D328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_D354@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_D454(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_D484@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_D4B0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_D55C(uint64_t a1, id *a2)
{
  result = sub_3ED224();
  *a2 = 0;
  return result;
}

uint64_t sub_D5D4(uint64_t a1, id *a2)
{
  v3 = sub_3ED234();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_D654@<X0>(void *a1@<X8>)
{
  sub_3ED244();
  v2 = sub_3ED204();

  *a1 = v2;
  return result;
}

uint64_t sub_D6A0()
{
  swift_getWitnessTable();

  return sub_3E6C74();
}

uint64_t sub_D70C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_F9E4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_D788@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10520(a1);

  *a2 = v3;
  return result;
}

_DWORD *sub_D7C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_D7F4(uint64_t a1)
{
  v2 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_D860(uint64_t a1)
{
  v2 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_D8CC(void *a1, uint64_t a2)
{
  v4 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_D980(uint64_t a1, uint64_t a2)
{
  v4 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_D9FC()
{
  sub_3EE954();
  sub_3ED124();
  return sub_3EE9A4();
}

uint64_t sub_DA60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3ED244();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_DA8C()
{
  sub_F210(&qword_4E9110, type metadata accessor for Name);
  sub_F210(&qword_4E9118, type metadata accessor for Name);

  return sub_3EE614();
}

double sub_DB48@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_DB54()
{
  sub_F210(&qword_4E9280, type metadata accessor for Weight);
  sub_F210(&qword_4E9288, type metadata accessor for Weight);
  sub_104CC();
  return sub_3EE614();
}

uint64_t sub_DC1C()
{
  sub_F210(&qword_4E9140, type metadata accessor for Key);
  sub_F210(&qword_4E9148, type metadata accessor for Key);

  return sub_3EE614();
}

uint64_t sub_DCD8()
{
  sub_F210(&qword_4E9130, type metadata accessor for OpenExternalURLOptionsKey);
  sub_F210(&qword_4E9138, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_3EE614();
}

uint64_t sub_DD94()
{
  sub_F210(&qword_4E9120, type metadata accessor for Mode);
  sub_F210(&qword_4E9128, type metadata accessor for Mode);

  return sub_3EE614();
}

uint64_t sub_DE64()
{
  sub_F210(&qword_4E9100, type metadata accessor for TextStyle);
  sub_F210(&qword_4E9108, type metadata accessor for TextStyle);

  return sub_3EE614();
}

uint64_t sub_DF20()
{
  sub_F210(&qword_4E90F0, type metadata accessor for AttributeName);
  sub_F210(&qword_4E90F8, type metadata accessor for AttributeName);

  return sub_3EE614();
}

uint64_t sub_DFDC()
{
  sub_F210(&qword_504580, type metadata accessor for NqmlAttributeName);
  sub_F210(&qword_4E92B0, type metadata accessor for NqmlAttributeName);

  return sub_3EE614();
}

uint64_t sub_E098()
{
  sub_F210(&qword_4E9298, type metadata accessor for TraitKey);
  sub_F210(&unk_4E92A0, type metadata accessor for TraitKey);

  return sub_3EE614();
}

uint64_t sub_E154@<X0>(void *a1@<X8>)
{
  v2 = sub_3ED204();

  *a1 = v2;
  return result;
}

uint64_t sub_E19C()
{
  sub_F210(&qword_4E9150, type metadata accessor for OptionKey);
  sub_F210(&qword_4E9158, type metadata accessor for OptionKey);

  return sub_3EE614();
}

uint64_t sub_E258(uint64_t a1)
{
  v2 = sub_F210(&qword_4E9238, type metadata accessor for ASWebAuthenticationSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_E2C4(uint64_t a1)
{
  v2 = sub_F210(&qword_4E9238, type metadata accessor for ASWebAuthenticationSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_E334(uint64_t a1)
{
  v2 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_E3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F210(&qword_4E9230, type metadata accessor for ASWebAuthenticationSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

Swift::Int sub_E4C8()
{
  sub_3EE954();
  swift_getWitnessTable();
  sub_3E6C84();
  return sub_3EE9A4();
}

void sub_E538()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_3EE994(*&v1);
}

uint64_t sub_E58C()
{
  sub_3ED244();
  v0 = sub_3ED454();

  return v0;
}

uint64_t sub_E5C8()
{
  sub_3ED244();
  sub_3ED394();
}

Swift::Int sub_E61C()
{
  sub_3ED244();
  sub_3EE954();
  sub_3ED394();
  v0 = sub_3EE9A4();

  return v0;
}

uint64_t sub_E6A4()
{
  v0 = sub_3ED244();
  v2 = v1;
  if (v0 == sub_3ED244() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

uint64_t _s8ShelfKit11AccountLinkV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_3EE804()) && (v5 = type metadata accessor for AccountLink(), type metadata accessor for Action(), (sub_3E7FB4()))
  {
    v6 = *(v5 + 24);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7)
    {
      v9 = 0x6E6F69746361;
    }

    else
    {
      v9 = 0x697461676976616ELL;
    }

    if (v7)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEA00000000006E6FLL;
    }

    if (v8)
    {
      v11 = 0x6E6F69746361;
    }

    else
    {
      v11 = 0x697461676976616ELL;
    }

    if (v8)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
    }

    if (v9 == v11 && v10 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_3EE804();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_E838()
{
  result = qword_4E8C98;
  if (!qword_4E8C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E8C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E8C98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_E8E8()
{
  result = qword_4E8DC0;
  if (!qword_4E8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E8DC0);
  }

  return result;
}

unint64_t sub_E940()
{
  result = qword_4E8DC8;
  if (!qword_4E8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E8DC8);
  }

  return result;
}

uint64_t sub_E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_EAC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_EB70()
{
  sub_EBF4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_EBF4()
{
  if (!qword_4E8E40)
  {
    type metadata accessor for Action();
    v0 = sub_3E7FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4E8E40);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountLink.Title(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AccountLink.Title(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountLink.LinkDisplayType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountLink.LinkDisplayType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_EF6C(uint64_t a1, int a2)
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

uint64_t sub_EF8C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FrameMultiplierLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FrameMultiplierLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_F16C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F18C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_F210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F9A8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_F9E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_FA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_FA80()
{
  result = qword_4E9180;
  if (!qword_4E9180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4E9180);
  }

  return result;
}

uint64_t sub_FACC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_FBD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC9C(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FCF8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101E8(uint64_t a1, unint64_t *a2)
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

unint64_t sub_103A0()
{
  result = qword_4E9260;
  if (!qword_4E9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9260);
  }

  return result;
}

unint64_t sub_104CC()
{
  result = qword_4E9290;
  if (!qword_4E9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9290);
  }

  return result;
}

uint64_t sub_10520(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t AccountSetting.title.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = "_CATEGORIES_TITLE";
  if (v1)
  {
    v3 = "v24@0:8@NSSet16";
    v4._countAndFlagsBits = 0xD000000000000021;
  }

  else
  {
    v4._countAndFlagsBits = 0xD00000000000001BLL;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_3E5A74(v4, v9, v5, v10, v8);

  return v6;
}

uint64_t AccountSetting.navigationFlowAction.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3EC1F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v35[-v10];
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0)
  {
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v15 = [objc_opt_self() currentTraitCollection];
    v16 = [v15 userInterfaceIdiom];
    v38 = v2;
    v17 = v16;

    v18 = 0x80000000202uLL >> (8 * v17);
    if (v17 >= 6)
    {
      LODWORD(v18) = 0;
    }

    v36 = v18;
    *v14 = 1;
    swift_storeEnumTagMultiPayload();
    v19 = *(v6 + 16);
    v19(v11, v9, v5);
    type metadata accessor for FlowAction(0);
    v20 = swift_allocObject();
    v37 = v1;
    sub_FC38(v14, v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v21 = (v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v21 = 0;
    v21[1] = 0;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v36;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v19((v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v11, v5);
    v22 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v23 = sub_3EC634();
    (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
    sub_3E5FB4();
    v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v26 = v25;
    (*(v38 + 8))(v4, v37);
    v27 = *(v6 + 8);
    v27(v11, v5);
    sub_FC9C(v14);
    *(v20 + 16) = v24;
    *(v20 + 24) = v26;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 48;
    v27(v9, v5);
  }

  else
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v20 = swift_allocObject();
    sub_FC38(v14, v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v28 = (v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v28 = 0;
    v28[1] = 0;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v20 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    (*(v6 + 16))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v5);
    v29 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v30 = sub_3EC634();
    (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
    sub_3E5FB4();
    v31 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v33 = v32;
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v11, v5);
    sub_FC9C(v14);
    *(v20 + 16) = v31;
    *(v20 + 24) = v33;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 48;
  }

  return v20;
}

Swift::Int PreviewingPresentationHint.hashValue.getter()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

Swift::Int sub_10C5C()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

unint64_t sub_10CA4()
{
  result = qword_4E92C0;
  if (!qword_4E92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E92C0);
  }

  return result;
}

uint64_t sub_10D08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10E54();
  sub_3E6BC4();

  *a2 = *(v3 + 16);
}

uint64_t sub_10DB0()
{
  swift_getKeyPath();
  sub_10E54();
  sub_3E6BC4();
}

unint64_t sub_10E54()
{
  result = qword_4E92D0;
  if (!qword_4E92D0)
  {
    type metadata accessor for AccountSettingsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E92D0);
  }

  return result;
}

uint64_t type metadata accessor for AccountSettingsController()
{
  result = qword_4E9300;
  if (!qword_4E9300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10EF8(uint64_t a1)
{

  v4 = sub_115DF8(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10E54();
    sub_3E6BB4();
  }
}

void *AccountSettingsController.__allocating_init(asPartOf:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_11AA4(a1);

  return v2;
}

void *AccountSettingsController.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_11AA4(a1);

  return v1;
}

void sub_1109C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 ams_activeiTunesAccount];
    v7 = *(v5 + 32);
    *(v5 + 32) = v6;
    v8 = v6;

    sub_113D0();
  }
}

uint64_t sub_11130(uint64_t a1)
{
  v2 = sub_3E5954();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_3E5944();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_11224()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = [objc_opt_self() sharedStore];
    v1 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_122B4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_823CC;
    aBlock[3] = &block_descriptor_38;
    v2 = _Block_copy(aBlock);

    [v0 profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter:v2 completion:56.0];
    _Block_release(v2);
  }
}

uint64_t sub_1135C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    *(result + 24) = a1;
    v4 = a1;

    sub_113D0();
  }

  return result;
}

uint64_t sub_113D0()
{
  v1 = *(v0 + 32);
  if (v1 && (v2 = [v1 ams_DSID]) != 0)
  {

    v3 = sub_114B4();
  }

  else
  {
    v3 = *(v0 + 56);
  }

  swift_getKeyPath();
  sub_10E54();
  sub_3E6BC4();

  v5 = sub_115DF8(v4, v3);

  if (v5)
  {
  }

  else
  {
    return sub_10EF8(v3);
  }
}

uint64_t sub_114B4()
{
  v1 = v0;
  v2 = type metadata accessor for AccountLink();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v41 - v7);
  v9 = sub_3E5B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = [v13 ams_firstName];
    if (v14)
    {
      v43 = v3;
      v15 = v14;
      sub_3ED244();

      sub_3E5AF4();
      sub_3E5AC4();
      v16 = *(v1 + 32);
      if (v16)
      {
        v17 = [v16 ams_lastName];
        if (v17)
        {
          v18 = v17;
          sub_3ED244();

          sub_3E5AD4();
        }
      }

      v19 = objc_opt_self();
      v20 = sub_3E5AE4();
      v21 = [v19 localizedStringFromPersonNameComponents:v20 style:0 options:0];

      v44 = sub_3ED244();
      v23 = v22;

      (*(v10 + 8))(v12, v9);
      v3 = v43;
      v24 = *(v1 + 32);
      if (!v24)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v44 = 0;
      v23 = 0xE000000000000000;
      v24 = *(v1 + 32);
      if (!v24)
      {
LABEL_12:
        v43 = 0;
        goto LABEL_13;
      }
    }

    v25 = [v24 username];
    if (v25)
    {
      v26 = v25;
      v43 = sub_3ED244();
      v28 = v27;

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v43 = 0;
  v44 = 0;
  v23 = 0xE000000000000000;
LABEL_13:
  v28 = 0xE000000000000000;
LABEL_14:
  v29 = *(v1 + 24);
  v42 = v29;
  sub_A5E0(v8);
  sub_AB44(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9480);
  v30 = v3;
  v31 = *(v3 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v41 = xmmword_3F52F0;
  *(v33 + 16) = xmmword_3F52F0;
  v34 = v33 + v32;
  sub_120AC(v6, v34);
  if (qword_4E88A0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v2, qword_4E88A8);
  sub_120AC(v35, v34 + v31);
  if (qword_4E88C0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v2, qword_4E88C8);
  sub_120AC(v36, v34 + 2 * v31);
  sub_120AC(v8, v34 + 3 * v31);
  sub_12110(v6);
  sub_12110(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9488);
  v37 = swift_allocObject();
  *(v37 + 16) = v41;
  v38 = v43;
  *(v37 + 32) = v44;
  *(v37 + 40) = v23;
  *(v37 + 48) = v38;
  *(v37 + 56) = v28;
  *(v37 + 64) = v29;
  *(v37 + 72) = 1;
  *(v37 + 80) = &off_4AF668;
  *(v37 + 88) = 0u;
  *(v37 + 104) = 0u;
  *(v37 + 120) = 2;
  *(v37 + 128) = 1;
  *(v37 + 136) = v33;
  *(v37 + 152) = 0;
  *(v37 + 160) = 0;
  *(v37 + 144) = 0;
  *(v37 + 168) = 0;
  v39 = v42;

  sub_B268((v37 + 176));

  return v37;
}

uint64_t AccountSettingsController.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit25AccountSettingsController___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AccountSettingsController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit25AccountSettingsController___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_11AA4(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = _swiftEmptyArrayStorage;
  v2[6] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9488);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_3F5300;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 72) = 3;
  *(v4 + 64) = 0;
  *(v4 + 80) = &off_4AF668;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 2;
  sub_B268((v4 + 128));
  v2[7] = v4;
  sub_3E6BF4();
  v2[5] = a1;
  sub_121A8();

  sub_3EC394();
  v5 = aBlock;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = ACDAccountStoreDidChangeNotification;
  v9 = objc_opt_self();
  v10 = [v9 mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5;
  v32 = sub_1226C;
  v33 = v12;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_11130;
  v31 = &block_descriptor;
  v13 = _Block_copy(&aBlock);

  v27 = v5;

  v14 = [v7 addObserverForName:v8 object:0 queue:v10 usingBlock:v13];
  _Block_release(v13);

  v15 = [v6 defaultCenter];
  v16 = [v9 mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();

  v32 = sub_1228C;
  v33 = v17;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_11130;
  v31 = &block_descriptor_29;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 addObserverForName:@"ASKProfilePictureStoreDidChange" object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9498);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_3F5310;
  *(v20 + 56) = swift_getObjectType();
  *(v20 + 32) = v14;
  *(v20 + 88) = swift_getObjectType();
  *(v20 + 64) = v19;
  v2[6] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v21 = [v27 ams_activeiTunesAccount];
  v22 = v2[4];
  v2[4] = v21;

  sub_113D0();
  v23 = [objc_opt_self() sharedStore];
  v24 = swift_allocObject();
  swift_weakInit();
  v32 = sub_12294;
  v33 = v24;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_823CC;
  v31 = &block_descriptor_33;
  v25 = _Block_copy(&aBlock);

  [v23 profilePictureForAccountOwnerWithoutMonogramFallbackWithPictureDiameter:v25 completion:56.0];
  _Block_release(v25);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_11FA0()
{
  result = sub_3E6C04();
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

uint64_t sub_120AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12110(uint64_t a1)
{
  v2 = type metadata accessor for AccountLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1216C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_121A8()
{
  result = qword_4E9490;
  if (!qword_4E9490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4E9490);
  }

  return result;
}

uint64_t sub_121F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1222C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AccountSettingsSection.header.getter()
{
  if (*(v0 + 40) != 2 && (*(v0 + 40) || (*v0 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return sub_3EABC4();
  }
}

uint64_t AccountSettingsSection.footer.getter()
{
  if (*(v0 + 40) == 3 && (v1 = vorrq_s8(*(v0 + 8), *(v0 + 24)), !(*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *v0)))
  {
    return sub_3EABC4();
  }

  else
  {
    return 0;
  }
}

void AccountSettingsSection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 40) > 1u)
  {
    if (*(v2 + 40) == 2)
    {
      sub_3EE964(3uLL);
      sub_3EE964(*(v4 + 16));
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = (v4 + 32);
        do
        {
          v8 = *v7++;
          sub_3EE964(v8);
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      sub_3EE964(0);
    }
  }

  else
  {
    v5 = v2[1];
    if (*(v2 + 40))
    {
      v9 = v2[4];
      sub_3EE964(2uLL);
      sub_3ED394();
      sub_3ED394();
      if (v9)
      {
        sub_3EE974(1u);
        v10 = v9;
        sub_3EDED4();
      }

      else
      {
        sub_3EE974(0);
      }
    }

    else
    {
      sub_3EE964(1uLL);
      if (v4)
      {
        sub_3EE974(0);
      }

      else
      {
        sub_3EE974(1u);
        sub_3EE964(0);
      }

      sub_12974(a1, v5);
    }
  }
}

Swift::Int AccountSettingsSection.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_3EE954();
  AccountSettingsSection.hash(into:)(v5);
  return sub_3EE9A4();
}

Swift::Int sub_12590()
{
  sub_3EE954();
  AccountSettingsSection.hash(into:)(v1);
  return sub_3EE9A4();
}

void sub_125CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E6AE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TabMenu.Item(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  sub_3EE964(v14);
  if (v14)
  {
    v15 = v5;
    v16 = v10[5];
    v17 = a2;
    v18 = &v13[v10[6]];
    v19 = v10[7];
    v40 = v10[8];
    v41 = v19;
    v20 = v10[9];
    v38 = v10[10];
    v39 = v20;
    v21 = v10[11];
    v36 = v10[12];
    v37 = v21;
    v35 = v10[13];
    v22 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v33 = (v15 + 48);
    v34 = v23;
    v29 = (v15 + 8);
    v30 = (v15 + 32);
    v31 = v18;
    do
    {
      sub_130FC(v22, v13, type metadata accessor for TabMenu.Item);
      sub_13034();
      sub_3ED124();
      sub_1308C(&v13[v16], v9);
      if ((*v33)(v9, 1, v4) == 1)
      {
        sub_3EE974(0);
      }

      else
      {
        v24 = v16;
        v25 = v32;
        (*v30)(v32, v9, v4);
        sub_3EE974(1u);
        sub_3ED124();
        v26 = v25;
        v16 = v24;
        (*v29)(v26, v4);
      }

      sub_3ED394();
      NavigationTab.hash(into:)(a1, *&v13[v41]);
      sub_3EE964(v13[v40]);
      sub_3EE974(v13[v39]);
      sub_3EE974(v13[v38]);
      sub_3EE974(v13[v37]);
      sub_3EE974(v13[v36]);
      v27 = *&v13[v35];
      if (v27)
      {
        sub_3EE974(1u);
        sub_125CC(a1, v27);
      }

      else
      {
        sub_3EE974(0);
      }

      sub_13164(v13, type metadata accessor for TabMenu.Item);
      v22 += v34;
      --v14;
    }

    while (v14);
  }
}

void sub_12974(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountLink();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  sub_3EE964(v7);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_130FC(v8, v6, type metadata accessor for AccountLink);
      sub_3ED394();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E8C90);
      sub_E838();
      sub_3ED124();
      sub_3ED394();

      sub_13164(v6, type metadata accessor for AccountLink);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t _s8ShelfKit22AccountSettingsSectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v51[0] = v4;
  v51[1] = v3;
  v51[2] = v6;
  v51[3] = v5;
  v51[4] = v7;
  v52 = v8;
  v53 = v9;
  v54 = v10;
  v55 = v11;
  v56 = v12;
  v57 = v13;
  v58 = v14;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_28;
      }

      v21 = *(v4 + 16);
      if (v21 != *(v9 + 16))
      {
LABEL_32:
        sub_131C4(v9, v10, v11, v12, v13, 2);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 2;
        goto LABEL_29;
      }

      if (v21 && v4 != v9)
      {
        v22 = (v4 + 32);
        v23 = (v9 + 32);
        while (*v22 == *v23)
        {
          ++v22;
          ++v23;
          if (!--v21)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_32;
      }

LABEL_14:
      sub_131C4(v9, v10, v11, v12, v13, 2);
      sub_131C4(v4, v3, v6, v5, v7, 2);
    }

    else if (v14 != 3 || v10 | v9 | v11 | v12 | v13)
    {
      goto LABEL_28;
    }

    sub_13238(v51);
    return 1;
  }

  if (!v8)
  {
    if (!v14)
    {
      if ((v9 ^ v4))
      {
        sub_131C4(v9, v10, v11, v12, v13, 0);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 0;
LABEL_29:
        sub_131C4(v15, v16, v17, v18, v19, v20);
        sub_13238(v51);
        return 0;
      }

      v47 = v10;
      sub_131C4(v9, v10, v11, v12, v13, 0);
      sub_131C4(v4, v3, v6, v5, v7, 0);
      v48 = sub_11535C(v3, v47);
      sub_13238(v51);
      return v48 & 1;
    }

LABEL_28:
    sub_131C4(v9, v10, v11, v12, v13, v14);
    v15 = v4;
    v16 = v3;
    v17 = v6;
    v18 = v5;
    v19 = v7;
    v20 = v8;
    goto LABEL_29;
  }

  if (v14 != 1)
  {
    goto LABEL_28;
  }

  if (v4 != v9 || v3 != v10)
  {
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v13;
    v29 = sub_3EE804();
    v11 = v26;
    v12 = v27;
    v10 = v25;
    v13 = v28;
    v30 = v29;
    v9 = v24;
    if ((v30 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (v6 != v11 || v5 != v12)
  {
    v31 = v9;
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v35 = v13;
    v36 = sub_3EE804();
    v11 = v33;
    v12 = v34;
    v10 = v32;
    v13 = v35;
    v37 = v36;
    v9 = v31;
    if ((v37 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (!v7)
  {
    v49 = v13;
    sub_131C4(v9, v10, v11, v12, v13, 1);
    sub_131C4(v4, v3, v6, v5, 0, 1);
    v50 = v49;
    sub_13238(v51);
    if (v49)
    {

      return 0;
    }

    return 1;
  }

  if (!v13)
  {
LABEL_33:
    sub_131C4(v9, v10, v11, v12, v13, 1);
    v15 = v4;
    v16 = v3;
    v17 = v6;
    v18 = v5;
    v19 = v7;
    v20 = 1;
    goto LABEL_29;
  }

  v38 = v9;
  v39 = v13;
  v40 = v10;
  v41 = v12;
  v42 = v11;
  sub_132A0();
  sub_131C4(v38, v40, v42, v41, v39, 1);
  sub_131C4(v4, v3, v6, v5, v7, 1);
  v43 = v39;
  v44 = v7;
  v45 = sub_3EDEC4();
  sub_13238(v51);

  result = 1;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_12EF0()
{
  result = qword_4E94A0;
  if (!qword_4E94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit22AccountSettingsSectionO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_12F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_12FFC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_13034()
{
  result = qword_4E94A8;
  if (!qword_4E94A8)
  {
    sub_3E6AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94A8);
  }

  return result;
}

uint64_t sub_1308C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_130FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_131C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    if (a6 != 2)
    {
      if (a6 != 1)
      {
        return result;
      }

      v7 = a5;
    }
  }
}

uint64_t sub_13238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E94B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_132A0()
{
  result = qword_4E94B8;
  if (!qword_4E94B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4E94B8);
  }

  return result;
}

uint64_t sub_13304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_13360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FlowAction.__allocating_init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, int a7, int a8, char *a9, uint64_t a10)
{
  v41 = a8;
  v37 = a7;
  v39 = a4;
  v40 = a5;
  v34 = a2;
  v35 = a3;
  v36 = a10;
  v12 = sub_3E5FC4();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_3EC1F4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  LOBYTE(a6) = *a6;
  v23 = *a9;
  v38 = a1;
  sub_16764(a1, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  v24 = v35;
  swift_storeEnumTagMultiPayload();
  v25 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v25 = 0;
  v25[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = a6;
  v26 = v36;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = v37;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = v23;
  (*(v19 + 16))(v21, v26, v18);
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  if (v24)
  {
    (*(v19 + 8))(v26, v18);
    sub_16820(v38, type metadata accessor for FlowDestination);
    v28 = v34;
  }

  else
  {
    sub_3E5FB4();
    v28 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v24 = v29;
    (*(v19 + 8))(v26, v18);
    sub_16820(v38, type metadata accessor for FlowDestination);
    (*(v32 + 8))(v14, v33);
  }

  *(v22 + 16) = v28;
  *(v22 + 24) = v24;
  v30 = v40;
  *(v22 + 32) = v39;
  *(v22 + 40) = v30;
  *(v22 + 48) = v41;
  (*(v19 + 32))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v21, v18);
  sub_14A10(v17, v22 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v22;
}

ShelfKit::FlowPresentationContext_optional __swiftcall FlowPresentationContext.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4AF690;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 15;
  if (v5 < 0xF)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FlowPresentationContext.rawValue.getter()
{
  result = 0x7265666E69;
  switch(*v0)
  {
    case 1:
      v2 = 2003789939;
      goto LABEL_10;
    case 2:
      result = 1752397168;
      break;
    case 3:
      v2 = 1752397168;
LABEL_10:
      result = v2 | 0x6174654400000000;
      break;
    case 4:
      result = 0x4D746E6573657270;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x43746E6573657270;
      break;
    case 9:
      result = 0x53746E6573657270;
      break;
    case 0xA:
      result = 0x50746E6573657270;
      break;
    case 0xB:
      result = 0xD00000000000001ALL;
      break;
    case 0xC:
      result = 0x7463656C6573;
      break;
    case 0xD:
      result = 0x6563616C706572;
      break;
    case 0xE:
      result = 0x546563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_139D0()
{
  v0 = FlowPresentationContext.rawValue.getter();
  v2 = v1;
  if (v0 == FlowPresentationContext.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

Swift::Int sub_13A6C()
{
  sub_3EE954();
  FlowPresentationContext.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13AD4()
{
  FlowPresentationContext.rawValue.getter();
  sub_3ED394();
}

Swift::Int sub_13B38()
{
  sub_3EE954();
  FlowPresentationContext.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13BA8@<X0>(uint64_t *a1@<X8>)
{
  result = FlowPresentationContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlowAnimationBehavior.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265666E69;
  }

  if (a1 == 1)
  {
    return 0x726576656ELL;
  }

  return 0x737961776C61;
}

uint64_t sub_13C20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265666E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_13D0C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13DA4()
{
  sub_3ED394();
}

Swift::Int sub_13E28()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_13EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit21FlowAnimationBehaviorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_13EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FlowOrigin.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

uint64_t FlowOrigin.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x7070616E69;
  }
}

ShelfKit::FlowOrigin_optional __swiftcall FlowOrigin.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4AF880;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_14080()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_14100()
{
  sub_3ED394();
}

Swift::Int sub_1416C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_141E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4AF880;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_14248(uint64_t *a1@<X8>)
{
  v2 = 0x7070616E69;
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

ShelfKit::FlowDestinationPageHeader_optional __swiftcall FlowDestinationPageHeader.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4AF8D0;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FlowDestinationPageHeader.rawValue.getter()
{
  v1 = 1919246965;
  if (*v0 != 1)
  {
    v1 = 0x746954656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_14338(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919246965;
  if (v2 != 1)
  {
    v4 = 0x746954656772616CLL;
    v3 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1919246965;
  if (*a2 != 1)
  {
    v8 = 0x746954656772616CLL;
    v7 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261646E617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_14434()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_144D4()
{
  sub_3ED394();
}

Swift::Int sub_14560()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_14608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919246965;
  if (v2 != 1)
  {
    v5 = 0x746954656772616CLL;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, int a7, int a8, char *a9, uint64_t a10)
{
  v11 = v10;
  v42 = a8;
  v38 = a7;
  v40 = a4;
  v41 = a5;
  v35 = a2;
  v36 = a3;
  v37 = a10;
  v14 = sub_3E5FC4();
  v33 = *(v14 - 8);
  v34 = v14;
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v20 = sub_3EC1F4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a6) = *a6;
  v24 = *a9;
  v39 = a1;
  sub_16764(a1, v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  v25 = v36;
  swift_storeEnumTagMultiPayload();
  v26 = (v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = a6;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = v38;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = v24;
  v27 = v37;
  (*(v21 + 16))(v23, v37, v20);
  v28 = sub_3EC634();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  if (v25)
  {
    (*(v21 + 8))(v27, v20);
    sub_16820(v39, type metadata accessor for FlowDestination);
    v29 = v35;
  }

  else
  {
    sub_3E5FB4();
    v29 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v25 = v30;
    (*(v21 + 8))(v27, v20);
    sub_16820(v39, type metadata accessor for FlowDestination);
    (*(v33 + 8))(v16, v34);
  }

  *(v11 + 16) = v29;
  *(v11 + 24) = v25;
  v31 = v41;
  *(v11 + 32) = v40;
  *(v11 + 40) = v31;
  *(v11 + 48) = v42;
  (*(v21 + 32))(v11 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v23, v20);
  sub_14A10(v19, v11 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v11;
}

uint64_t sub_14A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlowAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_3EBF94();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v67 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v58 - v7;
  v9 = sub_3EBDF4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v66 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v65 = v58 - v14;
  v15 = __chkstk_darwin(v13);
  v64 = v58 - v16;
  v17 = __chkstk_darwin(v15);
  v63 = v58 - v18;
  __chkstk_darwin(v17);
  v20 = v58 - v19;
  v21 = type metadata accessor for LazyJSFlowDestination(0);
  __chkstk_darwin(v21 - 8);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v10;
  v70 = v9;
  v26 = *(v10 + 16);
  v24 = v10 + 16;
  v25 = v26;
  v74 = a1;
  v26(v20, a1, v9);
  v72 = v4;
  v27 = v4 + 16;
  v28 = *(v4 + 16);
  v29 = v73;
  v28(v8);
  v30 = v68;
  v31 = sub_19D58(v20, v8, v23);
  if (v30)
  {
    v32 = v72 + 8;
    (*(v72 + 8))(v29, v3, v31);
    (*(v69 + 8))(v74, v70);
    type metadata accessor for FlowAction(0);
    swift_deallocPartialClassInstance();
    return v32;
  }

  v58[0] = v28;
  v58[1] = v27;
  v59 = v25;
  v60 = v24;
  v68 = v23;
  v61 = 0;
  v62 = v3;
  v33 = v71;
  v34 = v63;
  sub_3EBE04();
  v35 = sub_3EBDC4();
  v38 = v69;
  v37 = v70;
  v39 = v64;
  if (!v36)
  {
    goto LABEL_9;
  }

  if (v35 != 0xD00000000000001BLL || v36 != 0x8000000000423C40)
  {
    v40 = sub_3EE804();

    if (v40)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_166BC();
    sub_3EBCF4();
    v69 = *(v38 + 8);
    (v69)(v34, v37);
    v41 = v77;
    if (v77 == 15)
    {
      v41 = 0;
    }

    goto LABEL_11;
  }

LABEL_8:
  v69 = *(v38 + 8);
  (v69)(v34, v37);
  v41 = 13;
LABEL_11:
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v41;
  v42 = v74;
  sub_3EBE04();
  sub_16710();
  sub_3EBCC4();
  v43 = v69;
  (v69)(v39, v37);
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = v76;
  sub_16764(v68, v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for LazyJSFlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  sub_3EBE04();
  v44 = sub_3EBDC4();
  v46 = v45;
  v43(v39, v37);
  v47 = (v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v47 = v44;
  v47[1] = v46;
  v48 = v65;
  sub_3EBE04();
  sub_167CC();
  sub_3EBCF4();
  v43(v48, v37);
  v49 = v75;
  if (v75 == 3)
  {
    v49 = 0;
  }

  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = v49;
  v50 = v66;
  v59(v66, v42, v37);
  v51 = v67;
  v52 = v73;
  v53 = v62;
  (v58[0])(v67, v73, v62);
  v54 = v51;
  v32 = v33;
  v55 = v61;
  v56 = Action.init(deserializing:using:)(v50, v54);
  if (!v55)
  {
    v32 = v56;
  }

  (*(v72 + 8))(v52, v53);
  (v69)(v42, v37);
  sub_16820(v68, type metadata accessor for LazyJSFlowDestination);
  return v32;
}

uint64_t sub_15174@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for LazyJSFlowDestination(0);
  __chkstk_darwin(v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FlowAction.DestinationType(0);
  __chkstk_darwin(v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_16764(v1 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v11, type metadata accessor for FlowAction.DestinationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_16880(v11, v8, type metadata accessor for LazyJSFlowDestination);
    v12 = *v8;
    sub_FBD0(&v8[v6[5]], v5, &unk_4E9EE0);
    sub_FBD0(&v8[v6[6]], v17, &unk_501090);
    v16 = v8[v6[7]];
    sub_1B324(v12, v5, v17, &v16, a1);
    return sub_16820(v8, type metadata accessor for LazyJSFlowDestination);
  }

  else
  {
    sub_16880(v11, a1, type metadata accessor for FlowDestination);
    v14 = type metadata accessor for FlowDestination();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t FlowAction.referrerUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);

  return v1;
}

uint64_t sub_15418@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1546C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1551C()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_15560(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_15628@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LazyJSFlowDestination(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAction.DestinationType(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16764(v1 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v8, type metadata accessor for FlowAction.DestinationType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_16880(v8, v5, type metadata accessor for LazyJSFlowDestination);
    LazyJSFlowDestination.appEntityAnnotation()(a1);
    v9 = type metadata accessor for LazyJSFlowDestination;
    v10 = v5;
  }

  else
  {
    v11 = sub_3E5764();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    v9 = type metadata accessor for FlowAction.DestinationType;
    v10 = v8;
  }

  return sub_16820(v10, v9);
}

uint64_t sub_157FC()
{
  sub_16820(v0 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowAction.DestinationType);
}

uint64_t FlowAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  sub_16820(v0 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowAction.DestinationType);

  return v0;
}

uint64_t FlowAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType;

  sub_16820(v0 + v3, type metadata accessor for FlowAction.DestinationType);

  return swift_deallocClassInstance();
}

uint64_t FlowAction.metricsData(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for ActionOrigin() + 20);
  _s8ShelfKit10FlowActionC9metricsId6senderSSypSg_tF_0(a1 + v5);
  v6 = sub_3E6414();
  sub_169CC(a1 + v5, v6);
  sub_3E8504();
  v7 = sub_3E5DC4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_3E67A4();
  sub_3EBFC4();
  v15 = v9;
  sub_FCF8(&v15, &unk_4F8A10);
  v14 = v10;
  sub_FCF8(&v14, &qword_4E94E0);
  v13 = v11;
  sub_FCF8(&v13, &unk_4F8A20);
  sub_16AC0(v12);

  return sub_FCF8(v4, &unk_4E9EE0);
}

uint64_t FlowAction.locationFields(from:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for ActionOrigin() + 20);
  v7 = _s8ShelfKit10FlowActionC9metricsId6senderSSypSg_tF_0(a1 + v6);
  v9 = v8;
  v10 = sub_3E7A14();
  v12 = v11;
  v13 = sub_3E6414();
  v14 = sub_169CC(a1 + v6, v13);
  v16 = v15;
  result = _s8ShelfKit10FlowActionC11metricsName6senderSSypSg_tF_0(a1 + v6);
  *a3 = v7;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = a2;
  a3[5] = v14;
  a3[6] = v16;
  a3[7] = result;
  a3[8] = v18;
  return result;
}

uint64_t ChannelPowerSwooshAction.channelAdamId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId);

  return v1;
}

uint64_t ChannelPowerSwooshAction.channelName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelName);

  return v1;
}

uint64_t ChannelPowerSwooshAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_3EBF94();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v31 - v11;
  sub_3EBE04();
  v13 = sub_3EBDC4();
  v15 = v14;
  v16 = *(v8 + 8);
  v16(v12, v7);
  v17 = (v3 + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelAdamId);
  *v17 = v13;
  v17[1] = v15;
  v18 = a1;
  sub_3EBE04();
  v19 = sub_3EBDC4();
  v21 = v20;
  v33 = v16;
  v16(v12, v7);
  v22 = v32;
  v23 = (v31[1] + OBJC_IVAR____TtC8ShelfKit24ChannelPowerSwooshAction_channelName);
  *v23 = v19;
  v23[1] = v21;
  v24 = v18;
  (*(v8 + 16))(v22, v18, v7);
  v25 = v37;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  (*(v35 + 16))(v34, v37);
  v29 = FlowAction.init(deserializing:using:)(v22, v26);
  (*(v27 + 8))(v25, v28);
  v33(v24, v7);
  return v29;
}

uint64_t sub_16114()
{
}

uint64_t ChannelPowerSwooshAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  sub_16820(v0 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowAction.DestinationType);

  return v0;
}

uint64_t ChannelPowerSwooshAction.__deallocating_deinit()
{
  ChannelPowerSwooshAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s8ShelfKit10FlowActionC20manageCategoriesPage13actionMetrics23pushPresentationContextAC9JetEngine0dI0V_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_3E5FC4();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v11);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [objc_opt_self() currentTraitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == &dword_4 + 1)
  {
    v28 = 8;
  }

  else
  {
    if (v15 == &dword_0 + 1)
    {
      v16 = (a2 & 1) == 0;
      v17 = 5;
    }

    else
    {
      if (v15)
      {
        v28 = 0;
        goto LABEL_11;
      }

      v16 = (a2 & 1) == 0;
      v17 = 4;
    }

    if (!v16)
    {
      v17 = 2;
    }

    v28 = v17;
  }

LABEL_11:
  *v13 = a2 & 1;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 16);
  v18(v10, a1, v7);
  type metadata accessor for FlowAction(0);
  v19 = swift_allocObject();
  sub_16764(v13, v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v20 = (v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v20 = 0;
  v20[1] = 0;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v28;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v18((v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v10, v7);
  v21 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v22 = sub_3EC634();
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v29 + 8))(v6, v30);
  (*(v8 + 8))(v10, v7);
  sub_16820(v13, type metadata accessor for FlowDestination);
  *(v19 + 16) = v23;
  *(v19 + 24) = v25;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 48;
  return v19;
}

uint64_t _s8ShelfKit21FlowAnimationBehaviorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4AF818;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_166BC()
{
  result = qword_4E94C8;
  if (!qword_4E94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94C8);
  }

  return result;
}

unint64_t sub_16710()
{
  result = qword_4E94D0;
  if (!qword_4E94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94D0);
  }

  return result;
}

uint64_t sub_16764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_167CC()
{
  result = qword_4E94D8;
  if (!qword_4E94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94D8);
  }

  return result;
}

uint64_t sub_16820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_16880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8ShelfKit10FlowActionC9metricsId6senderSSypSg_tF_0(uint64_t a1)
{
  sub_FBD0(a1, v4, &unk_501090);
  if (v4[3])
  {
    type metadata accessor for LegacyLockup();
    if (swift_dynamicCast())
    {
      v4[0] = *(v3 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      sub_17A28();
      v1 = sub_3EE1F4();

      return v1;
    }
  }

  else
  {
    sub_FCF8(v4, &unk_501090);
  }

  return 0;
}

uint64_t sub_169CC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
    if (a2 - 2 < 3)
    {

      return sub_3E85B4();
    }

    goto LABEL_12;
  }

  if (a2 == 5)
  {
    goto LABEL_12;
  }

  if (a2 != 7)
  {
    if (a2 == 6)
    {

      return sub_3E8594();
    }

LABEL_12:

    return sub_3E8554();
  }

  v7 = v2;
  v8 = v3;
  sub_FBD0(a1, v5, &unk_501090);
  if (v6)
  {
    type metadata accessor for LegacyLockup();
    if (swift_dynamicCast())
    {

      return sub_3E85B4();
    }
  }

  else
  {
    sub_FCF8(v5, &unk_501090);
  }

  return sub_3E8594();
}

uint64_t sub_16AC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s8ShelfKit10FlowActionC11metricsName6senderSSypSg_tF_0(uint64_t a1)
{
  sub_FBD0(a1, v4, &unk_501090);
  if (v5)
  {
    type metadata accessor for LegacyLockup();
    if (swift_dynamicCast())
    {
      if (*(v3 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8))
      {
        v1 = *(v3 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);

        return v1;
      }
    }
  }

  else
  {
    sub_FCF8(v4, &unk_501090);
  }

  return 0;
}

uint64_t _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC544();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_3EC1F4();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FlowDestination;
  sub_16764(a1, v12, type metadata accessor for FlowDestination);
  v13 = [objc_opt_self() mainBundle];
  v32._countAndFlagsBits = 0xE000000000000000;
  v50._countAndFlagsBits = 0x535F4E4F49544341;
  v50._object = 0xEE004C4C415F4545;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v14.super.isa = v13;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v15 = sub_3E5A74(v50, v51, v14, v52, v32);
  v36 = v16;
  v37 = v15;

  sub_3E81B4();
  sub_3E8594();
  v17 = sub_3E5DC4();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v18 = v34;
  sub_3EC1C4();
  v49 = v43;
  sub_FCF8(&v49, &unk_4F8A10);
  v48 = v44;
  sub_FCF8(&v48, &qword_4E94E0);
  v47 = v45;
  sub_FCF8(&v47, &unk_4F8A20);
  sub_16AC0(v46);
  sub_FCF8(v7, &unk_4E9EE0);
  type metadata accessor for FlowAction(0);
  v19 = swift_allocObject();
  v20 = v35;
  sub_16764(v12, v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v35);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v21 = (v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v19 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v23 = v38;
  v22 = v39;
  (*(v38 + 16))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v18, v39);
  v24 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  v26 = v40;
  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;
  (*(v23 + 8))(v18, v22);
  sub_16820(v12, v20);
  (*(v41 + 8))(v26, v42);
  *(v19 + 16) = v27;
  *(v19 + 24) = v29;
  v30 = v36;
  *(v19 + 32) = v37;
  *(v19 + 40) = v30;
  *(v19 + 48) = 48;
  return v19;
}

unint64_t sub_171B4()
{
  result = qword_4E94E8;
  if (!qword_4E94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94E8);
  }

  return result;
}

unint64_t sub_1720C()
{
  result = qword_4E94F0;
  if (!qword_4E94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94F0);
  }

  return result;
}

unint64_t sub_17264()
{
  result = qword_4E94F8;
  if (!qword_4E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E94F8);
  }

  return result;
}

unint64_t sub_172BC()
{
  result = qword_4E9500;
  if (!qword_4E9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9500);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FlowPresentationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeaderButtonItem.ButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeaderButtonItem.ButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_176BC()
{
  result = type metadata accessor for FlowAction.DestinationType(319);
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

uint64_t sub_178E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_179B4()
{
  result = type metadata accessor for FlowDestination();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LazyJSFlowDestination(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_17A28()
{
  result = qword_4E9858;
  if (!qword_4E9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9858);
  }

  return result;
}

uint64_t static FlowDestination.page(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
  *a2 = a1;
  v5 = sub_3E5DC4();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  type metadata accessor for FlowDestination();
  swift_storeEnumTagMultiPayload();
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
  *a2 = 0;
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&a2[v4], a1, v5);
  (*(v6 + 56))(&a2[v4], 0, 1, v5);
  type metadata accessor for FlowDestination();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for FlowDestination()
{
  result = qword_4E98F8;
  if (!qword_4E98F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ShelfKit::FlowPresentationContext __swiftcall FlowDestination.preferredPresentationContext(for:)(UITraitCollection a1)
{
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FC38(v3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(EnumCaseMultiPayload) = sub_FC9C(v7);
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 14)
      {
        sub_FC9C(v7);
        LOBYTE(EnumCaseMultiPayload) = sub_3EDC24();
        if (EnumCaseMultiPayload)
        {
          v11 = 5;
        }

        else
        {
          v11 = 6;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        *v4 = 12;
        LOBYTE(EnumCaseMultiPayload) = sub_FCF8(v7, &unk_4E9EE0);
        return EnumCaseMultiPayload;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9868);
        sub_FCF8(&v7[*(v9 + 48)], &qword_4F1D50);
        v10 = sub_3E5DC4();
        LOBYTE(EnumCaseMultiPayload) = (*(*(v10 - 8) + 8))(v7, v10);
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 39)
    {
      if ((EnumCaseMultiPayload - 22) < 2)
      {
        LOBYTE(EnumCaseMultiPayload) = sub_FCF8(v7, &unk_4E9EE0);
LABEL_16:
        v11 = 6;
LABEL_22:
        *v4 = v11;
        return EnumCaseMultiPayload;
      }

      if (EnumCaseMultiPayload != 31)
      {
        goto LABEL_18;
      }

LABEL_21:
      v11 = 4;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 40)
    {
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 46)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  *v4 = 2;
  LOBYTE(EnumCaseMultiPayload) = sub_FC9C(v7);
  return EnumCaseMultiPayload;
}

Swift::Bool __swiftcall FlowDestination.requiresNavigationController()()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FC38(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 24)
  {
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9868);
        sub_FCF8(&v3[*(v7 + 48)], &qword_4F1D50);
        v8 = sub_3E5DC4();
        (*(*(v8 - 8) + 8))(v3, v8);
        return 0;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_17;
      }
    }

LABEL_12:
    sub_FC9C(v3);
    return 0;
  }

  if (EnumCaseMultiPayload <= 30)
  {
    if (EnumCaseMultiPayload != 25 && EnumCaseMultiPayload != 26)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 31)
  {
    return 0;
  }

  v6 = EnumCaseMultiPayload == 45;
  result = 0;
  if (!v6)
  {
LABEL_17:
    sub_FC9C(v3);
    return 1;
  }

  return result;
}

uint64_t FlowDestination.representsTheSameContent(other:)(uint64_t a1)
{
  v87 = a1;
  v1 = sub_3E5DC4();
  v82 = *(v1 - 8);
  v83 = v1;
  __chkstk_darwin(v1);
  v80 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v85);
  v84 = &v80 - v3;
  v4 = type metadata accessor for FlowDestination();
  v5 = __chkstk_darwin(v4);
  v81 = (&v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v9 = &v80 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v80 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v80 - v14);
  __chkstk_darwin(v13);
  v17 = (&v80 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9878);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v80 - v27;
  __chkstk_darwin(v26);
  v30 = &v80 - v29;
  v31 = &v21[*(v19 + 56)];
  sub_FC38(v86, v21);
  sub_FC38(v87, v31);
  v87 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload != 27)
    {
      if (EnumCaseMultiPayload != 16)
      {
        if (EnumCaseMultiPayload == 9)
        {
          v33 = v21;
          sub_FC38(v21, v17);
          v34 = *v17;
          v35 = v17[1];

          if (swift_getEnumCaseMultiPayload() == 9)
          {
            v37 = *v31;
            v36 = *(v31 + 1);

            if (v34 == v37 && v35 == v36)
            {
              v38 = 1;
            }

            else
            {
              v38 = sub_3EE804();
            }

            goto LABEL_55;
          }

          v21 = v33;
        }

        goto LABEL_32;
      }

      sub_FC38(v21, v15);
      v55 = *v15;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v33 = v21;
        if (*(v55 + 32) == *(*v31 + 32) && *(v55 + 40) == *(*v31 + 40))
        {
          v38 = 1;
        }

        else
        {
          v38 = sub_3EE804();
        }

        goto LABEL_55;
      }

      goto LABEL_30;
    }

    v46 = v81;
    sub_FC38(v21, v81);
    v47 = *v46;
    if (swift_getEnumCaseMultiPayload() != 27)
    {
LABEL_30:

      goto LABEL_32;
    }

    v33 = v21;
    v48 = *v31;
    v49 = sub_3E9334();
    v51 = v50;
    if (v49 == sub_3E9334() && v51 == v52)
    {
    }

    else
    {
      v54 = sub_3EE804();

      if ((v54 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v69 = sub_3E9344();
    v71 = v70;
    if (v69 == sub_3E9344() && v71 == v72)
    {
    }

    else
    {
      v75 = sub_3EE804();

      if ((v75 & 1) == 0)
      {
LABEL_54:

        v38 = 0;
LABEL_55:
        sub_FC9C(v33);
        return v38 & 1;
      }
    }

    if (*(v47 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime + 8))
    {
      if ((*(v48 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime + 8) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if ((*(v48 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime + 8) & 1) != 0 || *(v47 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime) != *(v48 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_playerTime))
    {
      goto LABEL_54;
    }

    v76 = *(v47 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime);
    v77 = *(v47 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime + 8);

    v78 = *(v48 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime);
    v38 = *(v48 + OBJC_IVAR____TtC8ShelfKit16TranscriptDetail_referenceTime + 8);

    if ((v77 & 1) == 0)
    {
      v38 = (v76 == v78) & ~v38;
    }

    goto LABEL_55;
  }

  v39 = v9;
  v86 = v28;
  v41 = v84;
  v40 = v85;
  v81 = v25;
  if (EnumCaseMultiPayload == 3)
  {
    v42 = v21;
    sub_FC38(v21, v12);

    v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
    v45 = &v12[*v44];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_32:
      v66 = &qword_4E9878;
      v67 = v21;
LABEL_33:
      sub_FCF8(v67, v66);
      v38 = 0;
      return v38 & 1;
    }

    v42 = v21;
    v43 = v39;
    sub_FC38(v21, v39);

    v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
    v45 = v43 + *v44;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
LABEL_12:
      sub_FCF8(v45, &unk_4E9EE0);
      v21 = v42;
      goto LABEL_32;
    }
  }

  v57 = *v44;
  sub_1893C(v45, v30);
  v58 = &v31[v57];
  v59 = v30;
  v60 = v86;
  sub_1893C(v58, v86);
  sub_FC9C(v42);
  v61 = *(v40 + 48);
  v62 = v41;
  sub_189AC(v59, v41);
  sub_189AC(v60, v41 + v61);
  v64 = v82;
  v63 = v83;
  v65 = *(v82 + 48);
  if (v65(v62, 1, v83) != 1)
  {
    v68 = v81;
    sub_189AC(v62, v81);
    if (v65(v62 + v61, 1, v63) != 1)
    {
      v73 = v80;
      (*(v64 + 32))(v80, v62 + v61, v63);
      sub_18A1C();
      v38 = sub_3ED174();
      v74 = *(v64 + 8);
      v74(v73, v63);
      sub_FCF8(v86, &unk_4E9EE0);
      sub_FCF8(v59, &unk_4E9EE0);
      v74(v68, v63);
      sub_FCF8(v62, &unk_4E9EE0);
      return v38 & 1;
    }

    sub_FCF8(v86, &unk_4E9EE0);
    sub_FCF8(v59, &unk_4E9EE0);
    (*(v64 + 8))(v68, v63);
    goto LABEL_36;
  }

  sub_FCF8(v60, &unk_4E9EE0);
  sub_FCF8(v59, &unk_4E9EE0);
  if (v65(v62 + v61, 1, v63) != 1)
  {
LABEL_36:
    v66 = &qword_4E9870;
    v67 = v62;
    goto LABEL_33;
  }

  sub_FCF8(v62, &unk_4E9EE0);
  v38 = 1;
  return v38 & 1;
}

uint64_t sub_1893C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18A1C()
{
  result = qword_4E9880;
  if (!qword_4E9880)
  {
    sub_3E5DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9880);
  }

  return result;
}

uint64_t FlowDestination.pageDestinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FC38(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 3)
  {

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860);
    return sub_1893C(&v6[*(v8 + 48)], a1);
  }

  else
  {
    v10 = sub_3E5DC4();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_FC9C(v6);
  }
}

uint64_t FlowDestination.pageDestinationPage.getter()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_FC38(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 3)
  {
    v5 = *v3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860);
    sub_FCF8(v3 + *(v6 + 48), &unk_4E9EE0);
  }

  else
  {
    sub_FC9C(v3);
    return 0;
  }

  return v5;
}

id FlowDestination.isStoreShowEpisodeOrChannelDetailPage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  sub_FC38(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 3)
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860);
    sub_1893C(&v4[*(v12 + 48)], v8);
  }

  else
  {
    v13 = sub_3E5DC4();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_FC9C(v4);
  }

  sub_1893C(v8, v10);
  v14 = sub_3E5DC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_FCF8(v10, &unk_4E9EE0);
    return 0;
  }

  else
  {
    sub_3E5D14(v16);
    v19 = v18;
    (*(v15 + 8))(v10, v14);
    v20 = [objc_opt_self() isNotEmpty:{objc_msgSend(v19, "pf_cleanUrlToSlashStoreId")}];

    return v20;
  }
}

BOOL FlowDestination.requiresDoneButton.getter()
{
  v1 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FC38(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 28)
  {
    sub_FC9C(v3);
  }

  return EnumCaseMultiPayload != 28;
}

void sub_18FA8()
{
  sub_1932C();
  if (v0 <= 0x3F)
  {
    sub_19894(319, &qword_4E9910, &qword_4E9918, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_19398();
      if (v2 <= 0x3F)
      {
        sub_19418();
        if (v3 <= 0x3F)
        {
          sub_194A4();
          if (v4 <= 0x3F)
          {
            sub_194F0();
            if (v5 <= 0x3F)
            {
              sub_19570(319);
              if (v6 <= 0x3F)
              {
                sub_196B0(319, &qword_4E9960, type metadata accessor for ChannelDetail);
                if (v7 <= 0x3F)
                {
                  sub_196FC();
                  if (v8 <= 0x3F)
                  {
                    sub_196B0(319, &qword_4E9970, sub_1972C);
                    if (v9 <= 0x3F)
                    {
                      sub_196B0(319, &qword_4E9980, type metadata accessor for StationDetail);
                      if (v10 <= 0x3F)
                      {
                        sub_1977C(319);
                        if (v11 <= 0x3F)
                        {
                          sub_196B0(319, &qword_4E9990, type metadata accessor for PodcastDetail);
                          if (v12 <= 0x3F)
                          {
                            sub_196B0(319, &qword_4E9998, type metadata accessor for Page);
                            if (v13 <= 0x3F)
                            {
                              sub_196B0(319, &qword_4E99A0, type metadata accessor for UpsellInformation);
                              if (v14 <= 0x3F)
                              {
                                sub_196B0(319, &qword_4E99A8, type metadata accessor for LongDescription);
                                if (v15 <= 0x3F)
                                {
                                  sub_19894(319, &qword_4E99B0, &qword_4E99B8, type metadata accessor for LegacyChannelLockup, &type metadata accessor for Array);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_196B0(319, &qword_4E99C0, type metadata accessor for TranscriptDetail);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1994C();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1997C();
                                        if (v19 <= 0x3F)
                                        {
                                          type metadata accessor for Category();
                                          if (v20 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_1932C()
{
  if (!qword_4E9908)
  {
    sub_3E5DC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4E9908);
    }
  }
}

void sub_19398()
{
  if (!qword_4E9920)
  {
    sub_3E5DC4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1D50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4E9920);
    }
  }
}

void sub_19418()
{
  if (!qword_4E9928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4E9EE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4E9928);
    }
  }
}

unint64_t sub_194A4()
{
  result = qword_502180;
  if (!qword_502180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_502180);
  }

  return result;
}

void sub_194F0()
{
  if (!qword_4E9938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9940);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_4E9938);
    }
  }
}

void sub_19570(uint64_t a1)
{
  if (!qword_4E9948)
  {
    __chkstk_darwin(a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9958);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_4E9948);
    }
  }
}

void sub_196B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void *sub_196FC()
{
  result = qword_4E9968;
  if (!qword_4E9968)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_4E9968);
  }

  return result;
}

void sub_1972C()
{
  if (!qword_4E9978)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4E9978);
    }
  }
}

void sub_1977C(uint64_t a1)
{
  if (!qword_4E9988)
  {
    __chkstk_darwin(a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9950);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_4E9988);
    }
  }
}

void sub_19894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_198E8(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_198E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1994C()
{
  result = qword_4E99C8;
  if (!qword_4E99C8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_4E99C8);
  }

  return result;
}

void sub_1997C()
{
  if (!qword_4E99D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9950);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4E99D0);
    }
  }
}

uint64_t FlowTransitionSource.__allocating_init(view:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t FlowTransitionSource.init(view:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t FlowTransitionSource.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_19B50@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t LazyJSFlowDestination.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = *v1;
  v7 = type metadata accessor for LazyJSFlowDestination(0);
  sub_FBD0(&v1[v7[5]], v5, &unk_4E9EE0);
  sub_FBD0(&v1[v7[6]], v11, &unk_501090);
  v10 = v1[v7[7]];
  return sub_1B324(v6, v5, v11, &v10, a1);
}

double sub_19D58@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v72 = a3;
  v76 = a2;
  v4 = sub_3EBF94();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9AB0);
  v7 = __chkstk_darwin(v6 - 8);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_3EBDF4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v74 = &v67 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  sub_3EBE04();
  v73 = sub_3EBDC4();
  v75 = v24;
  v25 = *(v14 + 8);
  v26 = v23;
  v27 = v14;
  v25(v26, v13);
  sub_3EBE04();
  v78 = v12;
  v28 = v76;
  sub_3EBD14();
  v25(v21, v13);
  v29 = v82;
  sub_3EBE04();
  (*(v14 + 56))(v29, 0, 1, v13);
  (*(v80 + 16))(v79, v28, v81);
  v30 = v74;
  v77 = a1;
  sub_3EBE04();
  sub_1FA68();
  sub_3EBCC4();
  v25(v30, v13);
  if (v75 && (v31 = v86, v32 = sub_1F370(), v32 != 35))
  {
    LODWORD(v73) = v31;
    v75 = v25;
    v41 = v32;
    v42 = v72;
    *v72 = v32;
    v67 = type metadata accessor for LazyJSFlowDestination(0);
    v74 = &v42[*(v67 + 20)];
    sub_FBD0(v78, v74, &unk_4E9EE0);
    v43 = v69;
    sub_FBD0(v82, v69, &qword_4E9AB0);
    v44 = *(v27 + 48);
    v45 = v44(v43, 1, v13);
    v68 = v13;
    if (v45 == 1)
    {
      v83 = 0u;
      v84 = 0u;
      v46 = v70;
      sub_3EBDE4();
      v47 = v44(v43, 1, v13);
      v48 = v79;
      if (v47 != 1)
      {
        sub_FCF8(v43, &qword_4E9AB0);
      }
    }

    else
    {
      v49 = *(v27 + 32);
      v46 = v70;
      v49(v70, v43, v13);
      v48 = v79;
    }

    v50 = v71;
    sub_1AB50(v41, v46, v48, v85);
    v51 = v46;
    if (!v50)
    {
      v58 = *(v80 + 8);
      v59 = v28;
      v60 = v81;
      v58(v59, v81);
      v61 = v68;
      v62 = v75;
      v75(v77, v68);
      v62(v51, v61);
      v58(v48, v60);
      sub_FCF8(v82, &qword_4E9AB0);
      sub_FCF8(v78, &unk_4E9EE0);
      v63 = v67;
      v64 = v72;
      v65 = &v72[*(v67 + 24)];
      result = *v85;
      v66 = v85[1];
      *v65 = v85[0];
      v65[1] = v66;
      v64[*(v63 + 28)] = v73;
      return result;
    }

    v52 = *(v80 + 8);
    v53 = v28;
    v54 = v81;
    v52(v53, v81);
    v55 = v68;
    v56 = v75;
    v75(v77, v68);
    v56(v51, v55);
    v52(v48, v54);
    sub_FCF8(v82, &qword_4E9AB0);
    sub_FCF8(v78, &unk_4E9EE0);
    v40 = v74;
  }

  else
  {
    v33 = sub_3ECEE4();
    sub_1F9BC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for LazyJSFlowDestination(0);
    *v35 = 1701273968;
    v35[1] = 0xE400000000000000;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, enum case for JSONError.missingProperty(_:), v33);
    swift_willThrow();
    v37 = *(v80 + 8);
    v38 = v28;
    v39 = v81;
    v37(v38, v81);
    v25(v77, v13);
    v37(v79, v39);
    sub_FCF8(v82, &qword_4E9AB0);
    v40 = v78;
  }

  sub_FCF8(v40, &unk_4E9EE0);
  return result;
}

uint64_t LazyJSFlowDestination.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LazyJSFlowDestination(0);
  sub_FBD0(v1 + *(v3 + 24), v8, &unk_501090);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9AA8);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1D4F0(&v9, v12);
        v4 = v13;
        v5 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v5 + 8))(v4, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_FCF8(v8, &unk_501090);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_FCF8(&v9, &qword_4E9AA0);
  v7 = sub_3E5764();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

double LazyJSFlowDestination.init(pageString:pageUrl:pageDataJSON:context:origin:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, _BYTE *a6@<X8>)
{
  v38 = a3;
  v42 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9AB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_3EBDF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v36 = *a5, v17 = sub_1F370(), v17 != 35))
  {
    v24 = v17;
    *a6 = v17;
    v34 = type metadata accessor for LazyJSFlowDestination(0);
    v35 = &a6[*(v34 + 20)];
    sub_FBD0(v42, v35, &unk_4E9EE0);
    sub_FBD0(v38, v12, &qword_4E9AB0);
    v25 = *(v14 + 48);
    if (v25(v12, 1, v13) == 1)
    {
      v39 = 0u;
      v40 = 0u;
      sub_3EBDE4();
      if (v25(v12, 1, v13) != 1)
      {
        sub_FCF8(v12, &qword_4E9AB0);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    v26 = v37;
    sub_1AB50(v24, v16, a4, v41);
    if (!v26)
    {
      v29 = sub_3EBF94();
      (*(*(v29 - 8) + 8))(a4, v29);
      sub_FCF8(v38, &qword_4E9AB0);
      sub_FCF8(v42, &unk_4E9EE0);
      (*(v14 + 8))(v16, v13);
      v30 = v34;
      v31 = &a6[*(v34 + 24)];
      result = *v41;
      v32 = v41[1];
      *v31 = v41[0];
      v31[1] = v32;
      a6[*(v30 + 28)] = v36;
      return result;
    }

    v27 = sub_3EBF94();
    (*(*(v27 - 8) + 8))(a4, v27);
    sub_FCF8(v38, &qword_4E9AB0);
    sub_FCF8(v42, &unk_4E9EE0);
    (*(v14 + 8))(v16, v13);
    v23 = v35;
  }

  else
  {
    v18 = sub_3ECEE4();
    sub_1F9BC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v20 = v19;
    v21 = type metadata accessor for LazyJSFlowDestination(0);
    *v20 = 1701273968;
    v20[1] = 0xE400000000000000;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v18);
    swift_willThrow();
    v22 = sub_3EBF94();
    (*(*(v22 - 8) + 8))(a4, v22);
    sub_FCF8(v38, &qword_4E9AB0);
    v23 = v42;
  }

  sub_FCF8(v23, &unk_4E9EE0);
  return result;
}

uint64_t sub_1AB50@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v87 = a3;
  LODWORD(v90) = a1;
  v78 = type metadata accessor for LazyModel._State(0);
  __chkstk_darwin(v78);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBF94();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  v9 = __chkstk_darwin(v7);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v81 = &v76 - v12;
  v13 = __chkstk_darwin(v11);
  v80 = &v76 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v76 - v16;
  v18 = __chkstk_darwin(v15);
  v77 = &v76 - v19;
  __chkstk_darwin(v18);
  v84 = &v76 - v20;
  v86 = sub_3EBDF4();
  v91 = *(v86 - 8);
  v21 = __chkstk_darwin(v86);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v76 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v76 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v76 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v76 - v34;
  v36 = __chkstk_darwin(v33);
  v83 = &v76 - v37;
  __chkstk_darwin(v36);
  v39 = &v76 - v38;
  v85 = a2;
  result = sub_3EBDA4();
  if (result)
  {
    v41 = 0uLL;
LABEL_3:
    *a4 = v41;
    *(a4 + 1) = v41;
    return result;
  }

  v76 = a4;
  if (v90 <= 0x19u)
  {
    if (v90 == 17)
    {
      v57 = v85;
      sub_3EBE04();
      v58 = sub_3EBD24();
      v60 = v91 + 8;
      v59 = *(v91 + 8);
      v61 = v86;
      v59(v39, v86);
      if (v58 == 2 || (v58 & 1) != 0)
      {
        v90 = type metadata accessor for Page();
        v62 = sub_1F9BC(&qword_4E9B90, type metadata accessor for Page);
        v81 = v59;
        v82 = v62;
        v63 = *(v91 + 16);
        v64 = v83;
        v63(v83, v57, v61);
        v65 = v88;
        v91 = v60;
        v66 = *(v89 + 16);
        v66(v84, v87, v88);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B78) + 48);
        v68 = v79;
        v69 = v64;
        v70 = v61;
        v63(v79, v69, v61);
        v71 = v84;
        v66((v68 + v67), v84, v65);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B98);
        v72 = swift_allocObject();
        *(v72 + ((*(*v72 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        sub_1FA04(v68, v72 + *(*v72 + class metadata base offset for ManagedBuffer + 16));
        (*(v89 + 8))(v71, v65);
        (v81)(v83, v70);
        result = sub_1F8FC(v68);
        v73 = v76;
        v74 = v90;
        *v76 = v72;
        v73[1] = v74;
        v73[2] = v82;
        v73[3] = &type metadata for LazyModel;
        return result;
      }

      v46 = type metadata accessor for Page();
      (*(v91 + 16))(v35, v57, v61);
      v75 = v77;
      (*(v89 + 16))(v77, v87, v88);
      v47 = v35;
      v48 = v75;
    }

    else
    {
      if (v90 != 21)
      {
        goto LABEL_23;
      }

      v46 = type metadata accessor for Page();
      (*(v91 + 16))(v32, v85, v86);
      (*(v89 + 16))(v17, v87, v88);
      v47 = v32;
      v48 = v17;
    }

    v49 = v92;
    result = Page.__allocating_init(deserializing:using:)(v47, v48);
    if (v49)
    {
      return result;
    }

LABEL_17:
    v52 = v76;
    v76[3] = v46;
    *v52 = result;
    return result;
  }

  if (v90 == 26)
  {
    v46 = type metadata accessor for UpsellInformation();
    (*(v91 + 16))(v29, v85, v86);
    v50 = v80;
    (*(v89 + 16))(v80, v87, v88);
    v51 = v92;
    result = UpsellInformation.__allocating_init(deserializing:using:)(v29, v50);
    if (v51)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v90 != 31)
  {
    if (v90 == 34)
    {
      (*(v91 + 16))(v23, v85, v86);
      v42 = v82;
      (*(v89 + 16))(v82, v87, v88);
      v43 = type metadata accessor for Category();
      v44 = v76;
      v76[3] = v43;
      __swift_allocate_boxed_opaque_existential_0Tm(v44);
      v45 = v92;
      result = sub_3DC77C(v23, v42);
      if (v45)
      {
        return __swift_deallocate_boxed_opaque_existential_0Tm(v44);
      }

      return result;
    }

LABEL_23:
    v41 = 0uLL;
    a4 = v76;
    goto LABEL_3;
  }

  (*(v91 + 16))(v26, v85, v86);
  v53 = v81;
  (*(v89 + 16))(v81, v87, v88);
  v54 = v92;
  result = sub_7C83C(v26, v53);
  if (!v54)
  {
    v55 = result;
    result = type metadata accessor for TranscriptDetail();
    v56 = v76;
    v76[3] = result;
    *v56 = v55;
  }

  return result;
}

uint64_t sub_1B324@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a5;
  v190 = a3;
  v192 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BA8);
  __chkstk_darwin(v7 - 8);
  v179 = &v160 - v8;
  v178 = type metadata accessor for Category();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v164 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_3E5994();
  v180 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v161 = &v160 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v13 - 8);
  v169 = &v160 - v14;
  v170 = sub_3E59F4();
  v171 = *(v170 - 8);
  __chkstk_darwin(v170);
  v167 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3E9A04();
  v17 = *(v16 - 8);
  v185 = v16;
  v186 = v17;
  __chkstk_darwin(v16);
  v176 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v175 = &v160 - v20;
  __chkstk_darwin(v21);
  v166 = &v160 - v22;
  __chkstk_darwin(v23);
  v174 = &v160 - v24;
  __chkstk_darwin(v25);
  v173 = &v160 - v26;
  __chkstk_darwin(v27);
  v29 = &v160 - v28;
  __chkstk_darwin(v30);
  v32 = &v160 - v31;
  __chkstk_darwin(v33);
  v165 = &v160 - v34;
  __chkstk_darwin(v35);
  v162 = &v160 - v36;
  __chkstk_darwin(v37);
  v163 = &v160 - v38;
  __chkstk_darwin(v39);
  v168 = &v160 - v40;
  __chkstk_darwin(v41);
  v43 = &v160 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v44 - 8);
  v46 = &v160 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v160 - v48;
  v50 = sub_3E5DC4();
  v51 = *(v50 - 8);
  v183 = v50;
  v184 = v51;
  __chkstk_darwin(v50);
  v172 = &v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v160 - v54;
  v188 = type metadata accessor for FlowDestination();
  v191 = *(v188 - 8);
  __chkstk_darwin(v188);
  v187 = (&v160 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = *a4;
  v58 = 10;
  v59 = 0;
  v60 = a1;
  v61 = 0;
  switch(v60)
  {
    case 5:
      goto LABEL_17;
    case 7:
      v61 = 0;
      goto LABEL_16;
    case 12:
      v61 = 0;
      v59 = 5;
      goto LABEL_17;
    case 13:
      v58 = 6;
      v61 = 256;
LABEL_16:
      v59 = 1;
      goto LABEL_17;
    case 14:
    case 17:
    case 18:
    case 19:
      v62 = v190;
      v63 = sub_1DBD8(v190);
      sub_FCF8(v62, &unk_501090);
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
      v65 = v187;
      *v187 = v63;
      sub_1893C(v192, v65 + v64);
      v66 = v188;
      goto LABEL_18;
    case 15:
    case 23:
    case 24:
      sub_FCF8(v190, &unk_501090);
      v65 = v187;
      sub_1893C(v192, v187);
      v66 = v188;
      goto LABEL_18;
    case 16:
      v84 = v192;
      sub_FBD0(v192, v49, &unk_4E9EE0);
      v86 = v183;
      v85 = v184;
      if ((*(v184 + 48))(v49, 1, v183) != 1)
      {
        sub_FCF8(v190, &unk_501090);
        sub_FCF8(v84, &unk_4E9EE0);
        v107 = *(v85 + 32);
        v107(v55, v49, v86);
        v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB8) + 48);
        v65 = v187;
        v107(v187, v55, v86);
        *(v65 + v108) = v57;
        v66 = v188;
        goto LABEL_18;
      }

      sub_FCF8(v49, &unk_4E9EE0);
      sub_3E98D4();
      v87 = sub_3E99F4();
      v88 = sub_3ED9C4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v194 = v90;
        *v89 = 136315138;
        v91 = sub_2EDD0(0x6E776F6E6B6E75, 0xE700000000000000, &v194);

        *(v89 + 4) = v91;
        _os_log_impl(&dword_0, v87, v88, "Missing URL for %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
      }

      sub_FCF8(v190, &unk_501090);
      sub_FCF8(v84, &unk_4E9EE0);
      (*(v186 + 8))(v43, v185);
      goto LABEL_74;
    case 20:
      v92 = v192;
      sub_FBD0(v192, v46, &unk_4E9EE0);
      v94 = v183;
      v93 = v184;
      if ((*(v184 + 48))(v46, 1, v183) == 1)
      {
        sub_FCF8(v46, &unk_4E9EE0);
        v95 = v168;
        sub_3E98D4();
        v96 = sub_3E99F4();
        v97 = sub_3ED9C4();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v194 = v99;
          *v98 = 136315138;
          v100 = sub_2EDD0(0x7665526574697277, 0xEB00000000776569, &v194);

          *(v98 + 4) = v100;
          _os_log_impl(&dword_0, v96, v97, "Missing URL for %s", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
        }

        sub_FCF8(v190, &unk_501090);
        sub_FCF8(v92, &unk_4E9EE0);
        (*(v186 + 8))(v95, v185);
        goto LABEL_74;
      }

      (*(v93 + 32))(v172, v46, v94);
      v109 = v169;
      sub_3E59C4();
      v110 = v171;
      v111 = v170;
      if ((*(v171 + 48))(v109, 1, v170) == 1)
      {
        sub_FCF8(v109, &qword_503D70);
        v112 = v163;
        sub_3E98D4();
        v113 = sub_3E99F4();
        v114 = sub_3ED9C4();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v194 = v116;
          *v115 = 136315138;
          v117 = sub_2EDD0(0x7665526574697277, 0xEB00000000776569, &v194);

          *(v115 + 4) = v117;
          _os_log_impl(&dword_0, v113, v114, "Invalid review URL for %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v116);

          sub_FCF8(v190, &unk_501090);
          sub_FCF8(v92, &unk_4E9EE0);
          (*(v186 + 8))(v112, v185);
          (*(v184 + 8))(v172, v94);
LABEL_74:
          v82 = 1;
          v81 = v189;
          goto LABEL_75;
        }

        sub_FCF8(v190, &unk_501090);
        sub_FCF8(v92, &unk_4E9EE0);
        (*(v186 + 8))(v112, v185);
        goto LABEL_92;
      }

      (*(v110 + 32))(v167, v109, v111);
      v141 = sub_3E59A4();
      if (!v141)
      {
        goto LABEL_89;
      }

      v142 = v141;
      v143 = *(v141 + 16);
      if (!v143)
      {
LABEL_84:

        v92 = v192;
        v94 = v183;
        v110 = v171;
LABEL_89:
        v153 = v162;
        sub_3E98D4();
        v154 = sub_3E99F4();
        v155 = sub_3ED9C4();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v194 = v157;
          *v156 = 136315138;
          v158 = sub_2EDD0(0x7665526574697277, 0xEB00000000776569, &v194);

          *(v156 + 4) = v158;
          _os_log_impl(&dword_0, v154, v155, "Unable to find adam id for %s", v156, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v157);

          sub_FCF8(v190, &unk_501090);
          sub_FCF8(v92, &unk_4E9EE0);
          (*(v186 + 8))(v153, v185);
          (*(v110 + 8))(v167, v111);
          (*(v184 + 8))(v172, v183);
          goto LABEL_74;
        }

        sub_FCF8(v190, &unk_501090);
        sub_FCF8(v92, &unk_4E9EE0);
        (*(v186 + 8))(v153, v185);
        (*(v110 + 8))(v167, v111);
LABEL_92:
        (*(v184 + 8))(v172, v94);
        goto LABEL_74;
      }

      v144 = 0;
      v145 = (v180 + 8);
      while (1)
      {
        if (v144 >= *(v142 + 16))
        {
          __break(1u);
          JUMPOUT(0x1D464);
        }

        (*(v180 + 16))(v181, v142 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v144, v182);
        if (sub_3E5974() == 25705 && v146 == 0xE200000000000000)
        {
          break;
        }

        v147 = sub_3EE804();

        if (v147)
        {
          goto LABEL_87;
        }

        ++v144;
        (*v145)(v181, v182);
        if (v143 == v144)
        {
          goto LABEL_84;
        }
      }

LABEL_87:

      v148 = v180 + 32;
      v149 = v161;
      v150 = v182;
      (*(v180 + 32))(v161, v181, v182);
      sub_3E5984();
      v152 = v151;
      (*(v148 - 24))(v149, v150);
      v92 = v192;
      v94 = v183;
      v110 = v171;
      if (!v152)
      {
        goto LABEL_89;
      }

      v159 = sub_3E9494();

      v74 = v191;
      sub_FCF8(v190, &unk_501090);
      sub_FCF8(v92, &unk_4E9EE0);
      (*(v110 + 8))(v167, v111);
      (*(v184 + 8))(v172, v94);
      v65 = v187;
      v66 = v188;
      *v187 = v159;
LABEL_41:
      swift_storeEnumTagMultiPayload();
      v81 = v189;
LABEL_19:
      sub_1FABC(v65, v81, type metadata accessor for FlowDestination);
      v82 = 0;
      return (*(v74 + 56))(v81, v82, 1, v66);
    case 21:
      v101 = v190;
      v102 = sub_1DBD8(v190);
      if (v102)
      {
        v103 = v102;
        sub_FCF8(v101, &unk_501090);
        sub_FCF8(v192, &unk_4E9EE0);
        v65 = v187;
        *v187 = v103;
        v66 = v188;
        goto LABEL_18;
      }

      v128 = v165;
      sub_3E98D4();
      v129 = sub_3E99F4();
      v130 = sub_3ED9C4();
      v131 = os_log_type_enabled(v129, v130);
      v81 = v189;
      v132 = v192;
      if (v131)
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v194 = v134;
        *v133 = 136315138;
        v135 = sub_2EDD0(0x73776569766572, 0xE700000000000000, &v194);

        *(v133 + 4) = v135;
        _os_log_impl(&dword_0, v129, v130, "Missing reviews page data for %s", v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
      }

      sub_FCF8(v101, &unk_501090);
      sub_FCF8(v132, &unk_4E9EE0);
      (*(v186 + 8))(v128, v185);
      v82 = 1;
LABEL_75:
      v66 = v188;
      v74 = v191;
      return (*(v74 + 56))(v81, v82, 1, v66);
    case 25:
      v61 = 0;
      v59 = 6;
LABEL_17:
      sub_FCF8(v190, &unk_501090);
      sub_FCF8(v192, &unk_4E9EE0);
      v65 = v187;
      v66 = v188;
      *v187 = v61 | v59;
      *(v65 + 1) = 0u;
      *(v65 + 3) = 0u;
      *(v65 + 5) = 0u;
      v65[7] = 0;
      *(v65 + 64) = v58;
      goto LABEL_18;
    case 26:
      v67 = v190;
      v68 = sub_1DE04(v190);
      if (v68)
      {
        goto LABEL_43;
      }

      sub_3E98D4();
      v136 = sub_3E99F4();
      v137 = sub_3ED9C4();
      v138 = os_log_type_enabled(v136, v137);
      v139 = v192;
      if (v138)
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_0, v136, v137, "Missing upsellInformation data", v140, 2u);
      }

      sub_FCF8(v67, &unk_501090);
      sub_FCF8(v139, &unk_4E9EE0);
      (*(v186 + 8))(v32, v185);
      goto LABEL_74;
    case 27:
      v67 = v190;
      v68 = sub_1E030(v190);
      if (v68)
      {
        goto LABEL_43;
      }

      sub_3E98D4();
      v118 = sub_3E99F4();
      v119 = sub_3ED9C4();
      v120 = os_log_type_enabled(v118, v119);
      v121 = v192;
      if (v120)
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_0, v118, v119, "Missing longDescription data", v122, 2u);
      }

      sub_FCF8(v67, &unk_501090);
      sub_FCF8(v121, &unk_4E9EE0);
      (*(v186 + 8))(v29, v185);
      goto LABEL_74;
    case 29:
      v67 = v190;
      sub_FBD0(v190, &v194, &unk_501090);
      if (v195)
      {
        type metadata accessor for UpsellInformation();
        v105 = swift_dynamicCast();
        v74 = v191;
        v75 = v192;
        v76 = v173;
        if (v105)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_FCF8(&v194, &unk_501090);
        v74 = v191;
        v75 = v192;
        v76 = v173;
      }

      sub_3E98D4();
      v123 = sub_3E99F4();
      v124 = sub_3ED9C4();
      if (!os_log_type_enabled(v123, v124))
      {
        goto LABEL_69;
      }

      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "Could not get channel data for single subscription confirmation sheet";
      goto LABEL_68;
    case 30:
      v67 = v190;
      sub_FBD0(v190, &v194, &unk_501090);
      if (v195)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB0);
        v104 = swift_dynamicCast();
        v74 = v191;
        v75 = v192;
        v76 = v174;
        if (v104)
        {
LABEL_40:
          sub_FCF8(v67, &unk_501090);
          sub_FCF8(v75, &unk_4E9EE0);
          v65 = v187;
          v66 = v188;
          *v187 = v193;
          goto LABEL_41;
        }
      }

      else
      {
        sub_FCF8(&v194, &unk_501090);
        v74 = v191;
        v75 = v192;
        v76 = v174;
      }

      sub_3E98D4();
      v123 = sub_3E99F4();
      v124 = sub_3ED9C4();
      if (!os_log_type_enabled(v123, v124))
      {
        goto LABEL_69;
      }

      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "Could not get channel data for multiple subscription confirmation sheet";
      goto LABEL_68;
    case 31:
      v67 = v190;
      v68 = sub_1E25C(v190);
      if (v68)
      {
LABEL_43:
        v106 = v68;
        sub_FCF8(v67, &unk_501090);
        sub_FCF8(v192, &unk_4E9EE0);
        v65 = v187;
        v66 = v188;
        *v187 = v106;
LABEL_18:
        swift_storeEnumTagMultiPayload();
        v81 = v189;
        v74 = v191;
        goto LABEL_19;
      }

      v76 = v166;
      sub_3E98D4();
      v123 = sub_3E99F4();
      v124 = sub_3ED9C4();
      v127 = os_log_type_enabled(v123, v124);
      v74 = v191;
      v75 = v192;
      if (!v127)
      {
        goto LABEL_69;
      }

      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "Missing Info to request full transcript";
      goto LABEL_68;
    case 32:
      sub_FCF8(v190, &unk_501090);
      sub_FCF8(v192, &unk_4E9EE0);
      v65 = v187;
      v66 = v188;
      *v187 = 0;
      goto LABEL_18;
    case 33:
      v67 = v190;
      sub_FBD0(v190, &v194, &unk_501090);
      if (v195)
      {
        v79 = swift_dynamicCast();
        v74 = v191;
        v75 = v192;
        v76 = v175;
        if (v79)
        {
          sub_FCF8(v67, &unk_501090);
          sub_FCF8(v75, &unk_4E9EE0);
          v80 = v193;
          v65 = v187;
          v66 = v188;
          v187[1] = 0;
          v65[2] = 0;
          *v65 = v80;
          goto LABEL_41;
        }
      }

      else
      {
        sub_FCF8(&v194, &unk_501090);
        v74 = v191;
        v75 = v192;
        v76 = v175;
      }

      sub_3E98D4();
      v123 = sub_3E99F4();
      v124 = sub_3ED9C4();
      if (!os_log_type_enabled(v123, v124))
      {
        goto LABEL_69;
      }

      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "Missing app adam ID to build inAppProductPage";
      goto LABEL_68;
    case 34:
      v67 = v190;
      sub_FBD0(v190, &v194, &unk_501090);
      if (v195)
      {
        v69 = v178;
        v70 = v179;
        v71 = swift_dynamicCast();
        v72 = v177;
        (*(v177 + 56))(v70, v71 ^ 1u, 1, v69);
        v73 = (*(v72 + 48))(v70, 1, v69);
        v74 = v191;
        v75 = v192;
        v76 = v176;
        if (v73 != 1)
        {
          sub_FCF8(v67, &unk_501090);
          sub_FCF8(v75, &unk_4E9EE0);
          v77 = v70;
          v78 = v164;
          sub_1FABC(v77, v164, type metadata accessor for Category);
          v65 = v187;
          sub_1FABC(v78, v187, type metadata accessor for Category);
          v66 = v188;
          goto LABEL_41;
        }
      }

      else
      {
        sub_FCF8(&v194, &unk_501090);
        v70 = v179;
        (*(v177 + 56))(v179, 1, 1, v178);
        v74 = v191;
        v75 = v192;
        v76 = v176;
      }

      sub_FCF8(v70, &qword_4E9BA8);
      sub_3E98D4();
      v123 = sub_3E99F4();
      v124 = sub_3ED9C4();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        v126 = "Could not get Category data for the category page.";
LABEL_68:
        _os_log_impl(&dword_0, v123, v124, v126, v125, 2u);
      }

LABEL_69:

      sub_FCF8(v67, &unk_501090);
      sub_FCF8(v75, &unk_4E9EE0);
      (*(v186 + 8))(v76, v185);
      v82 = 1;
      v66 = v188;
      v81 = v189;
      return (*(v74 + 56))(v81, v82, 1, v66);
    default:
      sub_FCF8(v190, &unk_501090);
      sub_FCF8(v192, &unk_4E9EE0);
      v65 = v187;
      v66 = v188;
      goto LABEL_18;
  }
}

uint64_t sub_1D4F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D54C(char a1)
{
  result = 0x6E657473696CLL;
  switch(a1)
  {
    case 1:
      result = 0x7972617262696CLL;
      break;
    case 2:
      result = 0x547972617262696CLL;
      break;
    case 3:
      result = 0x73776F6873;
      break;
    case 4:
    case 28:
      result = 0x796C746E65636572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x6957646572616873;
      break;
    case 9:
      result = 0x6867696C68676968;
      break;
    case 10:
      result = 0x736C656E6E616863;
      break;
    case 11:
      result = 0x69726F6765746163;
      break;
    case 12:
    case 31:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6F4E6E657473696CLL;
      break;
    case 14:
      result = 0x676F6C61746163;
      break;
    case 15:
      result = 0x686372616573;
      break;
    case 16:
      result = 0x6E776F6E6B6E75;
      break;
    case 17:
      result = 1701273968;
      break;
    case 18:
      result = 0x6C6576654C706F74;
      break;
    case 19:
      result = 0x6F546E7265646F6DLL;
      break;
    case 20:
      result = 0x7665526574697277;
      break;
    case 21:
      result = 0x73776569766572;
      break;
    case 22:
      result = 0x746E756F636361;
      break;
    case 23:
      result = 0x65636E616E6966;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0x6B72616D6B6F6F62;
      break;
    case 26:
      result = 0x6C6C65737075;
      break;
    case 27:
      result = 0x63736544676E6F6CLL;
      break;
    case 29:
      result = 0xD00000000000001ELL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 34:
      result = 0x79726F6765746163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9AC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D54C(*a1);
  v5 = v4;
  if (v3 == sub_1D54C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_1DA34()
{
  v1 = *v0;
  sub_3EE954();
  sub_1D54C(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1DA98()
{
  sub_1D54C(*v0);
  sub_3ED394();
}

Swift::Int sub_1DAEC()
{
  v1 = *v0;
  sub_3EE954();
  sub_1D54C(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1DB4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1F370();
  *a1 = result;
  return result;
}

unint64_t sub_1DB7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D54C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DBA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1F370();
  *a1 = result;
  return result;
}

uint64_t sub_1DBD8(uint64_t a1)
{
  sub_FBD0(a1, &v9, &unk_501090);
  if (v10)
  {
    sub_1FB90(&v9, v11);
    sub_1FB90(v11, &v9);
    type metadata accessor for Page();
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_FCF8(&v9, &unk_501090);
  }

  sub_FBD0(a1, v11, &unk_501090);
  if (!v12)
  {
    sub_FCF8(v11, &unk_501090);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9;
  v4 = type metadata accessor for Page();
  if (*(&v3 + 1) != v4)
  {

    return 0;
  }

  __chkstk_darwin(v4);
  v5 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1FB70((v3 + v5), v11);
  os_unfair_lock_unlock((v3 + v6));

  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DE04(uint64_t a1)
{
  sub_FBD0(a1, &v9, &unk_501090);
  if (v10)
  {
    sub_1FB90(&v9, v11);
    sub_1FB90(v11, &v9);
    type metadata accessor for UpsellInformation();
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_FCF8(&v9, &unk_501090);
  }

  sub_FBD0(a1, v11, &unk_501090);
  if (!v12)
  {
    sub_FCF8(v11, &unk_501090);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9;
  v4 = type metadata accessor for UpsellInformation();
  if (*(&v3 + 1) != v4)
  {

    return 0;
  }

  __chkstk_darwin(v4);
  v5 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1FE78((v3 + v5), v11);
  os_unfair_lock_unlock((v3 + v6));

  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E030(uint64_t a1)
{
  sub_FBD0(a1, &v9, &unk_501090);
  if (v10)
  {
    sub_1FB90(&v9, v11);
    sub_1FB90(v11, &v9);
    type metadata accessor for LongDescription();
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_FCF8(&v9, &unk_501090);
  }

  sub_FBD0(a1, v11, &unk_501090);
  if (!v12)
  {
    sub_FCF8(v11, &unk_501090);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9;
  v4 = type metadata accessor for LongDescription();
  if (*(&v3 + 1) != v4)
  {

    return 0;
  }

  __chkstk_darwin(v4);
  v5 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1FE78((v3 + v5), v11);
  os_unfair_lock_unlock((v3 + v6));

  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E25C(uint64_t a1)
{
  sub_FBD0(a1, &v9, &unk_501090);
  if (v10)
  {
    sub_1FB90(&v9, v11);
    sub_1FB90(v11, &v9);
    type metadata accessor for TranscriptDetail();
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_FCF8(&v9, &unk_501090);
  }

  sub_FBD0(a1, v11, &unk_501090);
  if (!v12)
  {
    sub_FCF8(v11, &unk_501090);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9;
  v4 = type metadata accessor for TranscriptDetail();
  if (*(&v3 + 1) != v4)
  {

    return 0;
  }

  __chkstk_darwin(v4);
  v5 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1FE78((v3 + v5), v11);
  os_unfair_lock_unlock((v3 + v6));

  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E488@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a4;
  v77 = a2;
  v78 = a3;
  v73 = a5;
  v6 = sub_3E9A04();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v69 - v10;
  v11 = sub_3EBF94();
  v76 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v79 = &v69 - v15;
  v16 = sub_3EBDF4();
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = type metadata accessor for LazyModel._State(0);
  __chkstk_darwin(v22);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1FA04(a1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v72;
      sub_3E9934();

      swift_errorRetain();
      v27 = sub_3E99F4();
      v28 = sub_3ED9D4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v82[0] = v31;
        *v29 = 136315394;
        v32 = sub_3EEB34();
        v34 = sub_2EDD0(v32, v33, v82);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2112;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 14) = v35;
        *v30 = v35;
        _os_log_impl(&dword_0, v27, v28, "LazyModel: Object of type %s previously failed to decode with %@", v29, 0x16u);
        sub_FCF8(v30, &unk_502160);

        __swift_destroy_boxed_opaque_existential_1Tm(v31);
      }

      (*(v74 + 8))(v26, v75);
      return swift_willThrow();
    }

    else
    {
      sub_1D4F0(v24, v82);
      v56 = v83;
      v57 = __swift_project_boxed_opaque_existential_1(v82, v83);
      v58 = v73;
      v73[3] = v56;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v58);
      (*(*(v56 - 8) + 16))(boxed_opaque_existential_0Tm, v57, v56);
      return __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }
  }

  else
  {
    v72 = v22;
    v69 = v9;
    v70 = a1;
    sub_1F8FC(a1);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B78) + 48);
    v38 = v80;
    v39 = v81;
    (*(v80 + 32))(v21, v24, v81);
    v40 = v76;
    v41 = v24 + v37;
    v42 = v79;
    (*(v76 + 32))(v79, v41, v11);
    (*(v38 + 16))(v19, v21, v39);
    (*(v40 + 16))(v14, v42, v11);
    v83 = v78;
    v84 = v71;
    __swift_allocate_boxed_opaque_existential_0Tm(v82);
    v43 = v85;
    sub_3EC554();
    v44 = v11;
    v45 = v43;
    if (v43)
    {
      v85 = v21;
      __swift_deallocate_boxed_opaque_existential_0Tm(v82);
      v46 = v69;
      sub_3E9934();

      swift_errorRetain();
      v47 = sub_3E99F4();
      v48 = sub_3ED9D4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v82[0] = v51;
        *v49 = 136315394;
        v52 = sub_3EEB34();
        v54 = sub_2EDD0(v52, v53, v82);
        v45 = v43;

        *(v49 + 4) = v54;
        *(v49 + 12) = 2112;
        swift_errorRetain();
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 14) = v55;
        *v50 = v55;
        _os_log_impl(&dword_0, v47, v48, "LazyModel: Object of type %s failed to decode with %@", v49, 0x16u);
        sub_FCF8(v50, &unk_502160);

        __swift_destroy_boxed_opaque_existential_1Tm(v51);

        (*(v74 + 8))(v69, v75);
      }

      else
      {

        (*(v74 + 8))(v46, v75);
      }

      v64 = v76;
      v66 = v80;
      v65 = v81;
      v67 = v79;
      v68 = v85;
      *v70 = v45;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_errorRetain();
      (*(v64 + 8))(v67, v44);
      return (*(v66 + 8))(v68, v65);
    }

    else
    {
      sub_1F958(v82, v70);
      swift_storeEnumTagMultiPayload();
      v60 = v83;
      v61 = __swift_project_boxed_opaque_existential_1(v82, v83);
      v62 = v73;
      v73[3] = v60;
      v63 = __swift_allocate_boxed_opaque_existential_0Tm(v62);
      (*(*(v60 - 8) + 16))(v63, v61, v60);
      (*(v40 + 8))(v79, v44);
      (*(v80 + 8))(v21, v81);
      return __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }
  }
}

uint64_t sub_1ECA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3EBDF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for LazyModel._State(0);
  __chkstk_darwin(v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_3E9874();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B78) + 48);
    (*(v3 + 32))(v5, v8, v2);
    sub_1EFAC(a1);
    (*(v3 + 8))(v5, v2);
    v11 = sub_3EBF94();
    return (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1F8FC(v8);
  }

  else
  {
    sub_1D4F0(v8, v21);
    sub_1F958(v21, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9AA8);
    if (swift_dynamicCast())
    {
      v13 = *(&v19 + 1);
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      (*(v14 + 8))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    }

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_FCF8(&v18, &qword_4E9AA0);
  }

  v15 = sub_3E5764();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_1EFAC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_3EBDF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  sub_3EBE04();
  v11 = sub_3EBDC4();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v10, v1);
  if (!v13)
  {
    v26 = 1;
    v25 = v30;
    goto LABEL_23;
  }

  sub_3EBE04();
  v15 = sub_3EBDC4();
  v17 = v16;
  v14(v7, v1);
  if (v17)
  {
    if (v11 == v15 && v13 == v17)
    {
    }

    else
    {
      v19 = sub_3EE804();

      if ((v19 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_3E6E44();
    v31 = v11;
    v32 = v13;
    sub_1F9BC(&qword_4E9B88, &type metadata accessor for ChannelEntity);
    v25 = v30;
LABEL_22:
    sub_3E5754();
    v26 = 0;
    goto LABEL_23;
  }

LABEL_8:
  sub_3EBE04();
  v20 = sub_3EBDC4();
  v22 = v21;
  v14(v4, v1);
  if (v22)
  {
    if (v11 == v20 && v13 == v22)
    {

      v25 = v30;
LABEL_21:
      sub_3E6D44();
      v31 = v11;
      v32 = v13;
      sub_1F9BC(&qword_4E9B80, &type metadata accessor for ShowEntity);
      goto LABEL_22;
    }

    v24 = sub_3EE804();

    v25 = v30;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v25 = v30;
  }

  v26 = 1;
LABEL_23:
  v27 = sub_3E5764();
  return (*(*(v27 - 8) + 56))(v25, v26, 1, v27);
}

uint64_t sub_1F370()
{
  v0 = sub_3EE834();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1F3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1F4C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_1F594()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    sub_1F688();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1F630()
{
  if (!qword_4E9918)
  {
    sub_3E5DC4();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4E9918);
    }
  }
}

void sub_1F688()
{
  if (!qword_4E9B28)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4E9B28);
    }
  }
}

uint64_t getEnumTagSinglePayload for FlowPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1F830()
{
  result = qword_4E9B60;
  if (!qword_4E9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9B60);
  }

  return result;
}

unint64_t sub_1F888()
{
  result = qword_4E9B68;
  if (!qword_4E9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9B68);
  }

  return result;
}

uint64_t sub_1F8FC(uint64_t a1)
{
  v2 = type metadata accessor for LazyModel._State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1F9BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1FA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyModel._State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1FA68()
{
  result = qword_4E9BA0;
  if (!qword_4E9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9BA0);
  }

  return result;
}

uint64_t sub_1FABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

_OWORD *sub_1FB90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0Tm(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

void sub_1FC54()
{
  sub_1FCFC();
  if (v0 <= 0x3F)
  {
    sub_1FD70(319, &qword_4E9C48);
    if (v1 <= 0x3F)
    {
      sub_1FD70(319, &unk_4E9C50);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1FCFC()
{
  if (!qword_4E9C40)
  {
    sub_3EBDF4();
    sub_3EBF94();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4E9C40);
    }
  }
}

uint64_t sub_1FD70(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1FDE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1FE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PlaybackActionImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1FF9C, 0, 0);
}

uint64_t sub_1FF9C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = *(v1 - 8);
  v0[18] = v5;
  (*(v5 + 16))(v4, v2, v1);
  v6 = type metadata accessor for PlaybackActionImplementation();
  v0[19] = v6;
  *(v4 + *(v6 + 36)) = v3;

  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_200D8;
  v8 = v0[17];
  v9 = v0[15];

  return BaseObjectGraph.inject<A>(_:)(v8, v9, v9);
}

uint64_t sub_200D8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_20A44;
  }

  else
  {
    v2 = sub_201F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_201F4()
{
  (*(v0[16] + 32))(v0[10] + *(v0[19] + 40), v0[17], v0[15]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9D40);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_202D8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_202D8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_20B0C;
  }

  else
  {
    v2 = sub_203F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_203F4()
{
  sub_1D4F0((v0 + 16), *(v0 + 80) + *(*(v0 + 152) + 44));
  v1 = sub_3E7404();
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_204BC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v1, v1);
}

uint64_t sub_204BC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_20BE0;
  }

  else
  {
    v2 = sub_205D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_205D8()
{
  *(v0[10] + *(v0[19] + 48)) = v0[7];
  v1 = type metadata accessor for FreezableContentSubject();
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_2069C;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 8, v1, v1);
}

uint64_t sub_2069C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_20CC8;
  }

  else
  {
    v2 = sub_207B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_207B8()
{
  *(v0[10] + *(v0[19] + 56)) = v0[8];
  v1 = type metadata accessor for NowPlayingLiveActivityController();
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_2087C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 9, v1, v1);
}

uint64_t sub_2087C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_20DC4;
  }

  else
  {
    v2 = sub_209AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_209AC()
{
  v1 = v0[19];
  v2 = v0[10];
  (*(v0[18] + 8))(v0[12], v0[13]);
  *(v2 + *(v1 + 52)) = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20A44()
{
  v1 = *(v0[18] + 8);
  v1(v0[12], v0[13]);
  v2 = v0[21];
  v1(v0[10], v0[13]);

  if (!v2)
  {
    (*(v0[16] + 8))(v0[10] + *(v0[19] + 40), v0[15]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_20B0C()
{
  v1 = *(v0[18] + 8);
  v1(v0[12], v0[13]);
  v2 = v0[21];
  v1(v0[10], v0[13]);

  if (!v2)
  {
    (*(v0[16] + 8))(v0[10] + *(v0[19] + 40), v0[15]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BE0()
{
  v1 = *(v0[18] + 8);
  v1(v0[12], v0[13]);
  v2 = v0[21];
  v1(v0[10], v0[13]);

  if (!v2)
  {
    (*(v0[16] + 8))(v0[10] + *(v0[19] + 40), v0[15]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0[10] + *(v0[19] + 44));

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CC8()
{
  v1 = *(v0[18] + 8);
  v1(v0[12], v0[13]);
  v2 = v0[21];
  v1(v0[10], v0[13]);

  if (!v2)
  {
    (*(v0[16] + 8))(v0[10] + *(v0[19] + 40), v0[15]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0[10] + *(v0[19] + 44));

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DC4()
{
  v1 = *(v0[18] + 8);
  v1(v0[12], v0[13]);
  v2 = v0[21];
  v1(v0[10], v0[13]);

  if (!v2)
  {
    (*(v0[16] + 8))(v0[10] + *(v0[19] + 40), v0[15]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0[10] + *(v0[19] + 44));

  v3 = v0[1];

  return v3();
}

uint64_t PlaybackActionImplementation.perform()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_3E7324();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_4E9D48);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_3E7FE4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_3E7DE4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  sub_3ED6B4();
  v3[16] = sub_3ED6A4();
  v8 = sub_3ED684();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_210E0, v8, v7);
}

uint64_t sub_210E0()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  (*(v2 + 32))(v3, v2);
  v4 = sub_3E73D4();
  if (v4 && (v5 = v4, v7 = v0[11], v6 = v0[12], v8 = v0[10], sub_3E7D94(), v9 = v5, v10 = sub_3E7FD4(), v9, v9, (*(v7 + 8))(v6, v8), (v10 & 1) != 0))
  {
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_213B8;
    v12 = v0[3];

    return sub_21DB8(v12);
  }

  else
  {
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[5];
    v17 = v0[6];
    (*(v2 + 24))(v3, v2);
    sub_227DC(v14, v15);
    v18 = *(v17 + 48);
    v0[21] = v18;
    v0[22] = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v18(v15, 1, v16) == 1)
    {
      sub_FCF8(v0[8], qword_4E9D48);
    }

    else
    {
      v20 = v0[6];
      v19 = v0[7];
      v21 = v0[4];
      v22 = v0[5];
      v23 = v0[3];
      (*(v20 + 32))(v19, v0[8], v22);
      __swift_project_boxed_opaque_existential_1((v21 + *(v23 + 44)), *(v21 + *(v23 + 44) + 24));
      sub_3E7304();
      (*(v20 + 8))(v19, v22);
    }

    if (*(v0[4] + *(v0[3] + 56)))
    {
      FreezableContentSubject.send(_:)(ShelfKit_FreezableContentSubject_State_frozen);
    }

    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_21654;
    v25 = v0[15];

    return PlaybackController.performIntent(_:whenPossible:)(v25, 1);
  }
}

uint64_t sub_213B8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    v2[25] = v4;
    *v4 = v3;
    v4[1] = sub_218E0;
    v5 = v2[3];

    return sub_222B8(v0, v5);
  }

  else
  {
    v7 = v2[17];
    v8 = v2[18];

    return _swift_task_switch(sub_21538, v7, v8);
  }
}

uint64_t sub_21538()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);
  v4 = v0[2];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_3EC204();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21654(void *a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_21ACC;
  }

  else
  {

    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_2177C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_2177C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[3];
  v4 = v0[4];

  v6 = *(v4 + *(v5 + 52));
  LODWORD(v4) = [objc_opt_self() isThinJetApp];
  (*(v3 + 8))(v1, v2);
  if (v4)
  {
    *(v6 + 16) = 0;
  }

  sub_FCF8(v0[9], qword_4E9D48);
  v7 = v0[2];
  v8 = enum case for ActionOutcome.performed(_:);
  v9 = sub_3EC204();
  (*(*(v9 - 8) + 104))(v7, v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_218E0()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_21A00, v3, v2);
}

uint64_t sub_21A00()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21ACC()
{
  if ((*(v0 + 168))(*(v0 + 72), 1, *(v0 + 40)) != 1)
  {
    v1 = (*(v0 + 32) + *(*(v0 + 24) + 44));
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_3E72F4();
  }

  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_21BB0;
  v3 = *(v0 + 192);
  v4 = *(v0 + 24);

  return sub_222B8(v3, v4);
}