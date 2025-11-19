uint64_t sub_100445A18(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v32 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    (*((swift_isaMask & *Strong) + 0x260))(Strong);

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      v20 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v5 + 16))(v7, v20, v4);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "[Suggestion] Returning joinURL for session after requesting", v23, 2u);
      }

      (*(v5 + 8))(v7, v4);
      if (a2)
      {
        URL._bridgeToObjectiveC()(v24);
        v26 = v25;
        a2(v25);
      }

      return (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_1000095E8(v13, &qword_101183A20);
  v28 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v5 + 16))(v10, v28, v4);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "[Suggestion] Session had no joinURL after requesting it", v31, 2u);
  }

  result = (*(v5 + 8))(v10, v4);
  if (a2)
  {
    return (a2)(0, 0);
  }

  return result;
}

id GroupActivitiesManager.SuggestionProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v3 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 8) = 0;
  v4 = &v0[OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 8) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100445F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101190238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100445FD4(uint64_t a1, uint64_t a2)
{
  sub_100442468(a1, v13);
  sub_100442468(a2, v14);
  if (v13[48])
  {
    sub_100442468(v13, v11);
    v3 = v12;
    if (v16 == 1)
    {
      v4 = v15;

      v5 = v3 == v4;
      sub_10000959C(v14);
      sub_10000959C(v11);
LABEL_9:
      sub_100442874(v13);
      return v5;
    }

    sub_10000959C(v11);
  }

  else
  {
    sub_100442468(v13, v11);
    v6 = v11[0];
    if ((v16 & 1) == 0)
    {
      v7 = v14[0];
      v8 = [v11[0] identifiers];
      v9 = [v7 identifiers];
      v5 = [v8 intersectsSet:v9];

      goto LABEL_9;
    }
  }

  sub_1000095E8(v13, &qword_1011902F8);
  return 0;
}

id sub_100446128()
{
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v0 = (*(*qword_101218AC8 + 528))();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(NSItemProvider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v8[4] = sub_100446624;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10056401C;
  v8[3] = &unk_1010AC6A8;
  v5 = _Block_copy(v8);
  v6 = v1;

  [v2 registerItemForTypeIdentifier:v3 loadHandler:v5];
  _Block_release(v5);

  return v2;
}

uint64_t sub_100446338()
{
  v1 = (v0 + 16);
  if (*(v0 + 64) == 1)
  {
    sub_10000959C(v1);
    v1 = (v0 + 56);
  }

  return swift_deallocObject();
}

__n128 sub_1004463AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004463C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100446404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100446454(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 sub_10044648C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004464B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004464F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100446560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1004447DC(a1, v4, v5, v6, v7);
}

uint64_t sub_10044662C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100444EA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100446708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100442E74(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

id sub_1004467EC()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_101218CE8 = result;
  return result;
}

id sub_100446820@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UIContentUnavailableConfiguration();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  v8 = objc_opt_self();
  result = [v8 _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
  if (result)
  {
    v10 = UIContentUnavailableConfiguration.textProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.font.setter();
    v10(v21, 0);
    v11 = objc_opt_self();
    v12 = [v11 labelColor];
    v13 = UIContentUnavailableConfiguration.textProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.color.setter();
    v13(v21, 0);
    v14 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
    v15 = UIContentUnavailableConfiguration.secondaryTextProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.font.setter();
    v15(v21, 0);
    v16 = [v11 secondaryLabelColor];
    v17 = UIContentUnavailableConfiguration.secondaryTextProperties.modify();
    UIContentUnavailableConfiguration.TextProperties.color.setter();
    v17(v21, 0);
    UIContentUnavailableConfiguration.textToSecondaryTextPadding.setter();
    (*(v4 + 104))(v6, enum case for UIButton.Configuration.Size.medium(_:), v3);
    v18 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.buttonSize.setter();
    v18(v21, 0);
    v19 = [v11 tintColor];
    v20 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.baseForegroundColor.setter();
    return v20(v21, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100446B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v21 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIContentUnavailableConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a2);
  (*(v12 + 8))(v14, v11);
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() _systemImageNamed:v15];

  UIContentUnavailableConfiguration.image.setter();
  sub_100008FE4(a1, v22);
  sub_10010FC20(&unk_101190300);
  if (swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (swift_dynamicCast())
  {

LABEL_4:

LABEL_5:
    sub_10000959C(v22);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.text.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    return UIContentUnavailableConfiguration.secondaryText.setter();
  }

  if (swift_dynamicCast())
  {
    v18 = _s10TVEpisodesVMa;
    v19 = v10;
LABEL_10:
    sub_1004479DC(v19, v18);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v18 = _s11MusicVideosVMa;
    v19 = v7;
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  return sub_10000959C(v22);
}

uint64_t sub_10044705C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a1);
  (*(v5 + 8))(v7, v4);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

uint64_t sub_1004472B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100006080(v6, qword_101218D08);
  v7 = sub_1000060E4(v2, qword_101218D08);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(v7);
  (*(v3 + 8))(v5, v2);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v10(v14, 0);
  sub_100447990();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v11(v14, 0);
}

uint64_t sub_100447638()
{
  v0 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 208);

  v0(0, 0);
}

uint64_t sub_1004476CC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  sub_100006080(v5, a2);
  sub_1000060E4(v5, a2);
  return a3();
}

uint64_t sub_100447724@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a1);
  (*(v5 + 8))(v7, v4);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

unint64_t sub_100447990()
{
  result = qword_1011839A0;
  if (!qword_1011839A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011839A0);
  }

  return result;
}

uint64_t sub_1004479DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100447A3C@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  LODWORD(v29) = a2;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIContentUnavailableConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  static UIContentUnavailableConfiguration.empty()();
  v18 = a5;
  sub_100446820(a5);
  v19 = *(v12 + 8);
  v19(v17, v11);
  sub_100447F98(a1);
  if (v29)
  {
    v29 = v20;
    static UIContentUnavailableConfiguration.search()();
    sub_100446820(v17);
    v19(v14, v11);
    v19(v18, v11);
    (*(v12 + 32))(v18, v17, v11);

    UIContentUnavailableConfiguration.secondaryText.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v21 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v21(v34, 0);
  }

  else
  {
    v22 = String._bridgeToObjectiveC()();

    v23 = [objc_opt_self() _systemImageNamed:v22];

    UIContentUnavailableConfiguration.image.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIContentUnavailableConfiguration.secondaryText.setter();

    v24 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v24(v34, 0);
  }

  sub_100447990();
  v25 = swift_allocObject();
  *(v25 + 16) = v32;
  *(v25 + 24) = v33;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v26 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  return v26(v34, 0);
}

uint64_t sub_100447F98(char a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  switch(a1)
  {
    case 2:
    case 5:
    case 10:
    case 12:
    case 13:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = 0;
      break;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      break;
  }

  String.init(localized:table:bundle:locale:comment:)();
  return v4;
}

uint64_t sub_100448498@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIContentUnavailableConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a1);
  (*(v3 + 8))(v5, v2);
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() _systemImageNamed:v6];

  UIContentUnavailableConfiguration.image.setter();
  sub_1004486A0();
  return UIContentUnavailableConfiguration.secondaryText.setter();
}

uint64_t sub_1004486A0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_1004488D4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openRestrictions()();
  }
}

uint64_t sub_10044894C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static UIContentUnavailableConfiguration.empty()();
  sub_100446820(a3);
  (*(v9 + 8))(v11, v8);
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() _systemImageNamed:v12];

  UIContentUnavailableConfiguration.image.setter();
  sub_100448E3C(a1);
  UIContentUnavailableConfiguration.secondaryText.setter();
  if (a1 == 2)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  if (sub_10045EC58(a2) == 0x6C507265646C6F66 && v16 == 0xEF737473696C7961)
  {
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v18 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v18(v21, 0);
    sub_100447990();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v19 = UIContentUnavailableConfiguration.buttonProperties.modify();
    UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
    return v19(v21, 0);
  }

  return result;
}

uint64_t sub_100448E3C(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() currentDevice];
  [v4 userInterfaceIdiom];

  if (a1 <= 1u || (result = 0, a1 == 2))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

void sub_10044933C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openMusic(tabIdentifier:)(2);
  }
}

uint64_t sub_1004493CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100449438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPropertySource();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t _s14descr101094081C15DataSourceErrorOMa()
{
  result = qword_101190380;
  if (!qword_101190380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100449500(uint64_t a1)
{
  result = type metadata accessor for MusicPropertySource();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1004495A8()
{
  result = qword_1011903B0;
  if (!qword_1011903B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011903B0);
  }

  return result;
}

uint64_t _s7ArtworkVMa()
{
  result = qword_101190418;
  if (!qword_101190418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100449670()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_1004497D4(319, &qword_101182200, &type metadata accessor for VideoArtwork, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100449784();
      if (v2 <= 0x3F)
      {
        sub_1004497D4(319, &unk_101190430, &type metadata accessor for MotionMode, &type metadata accessor for AppStorage);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100449784()
{
  if (!qword_101190428)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101190428);
    }
  }
}

void sub_1004497D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100449854@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v115 = *(v2 - 8);
  v116 = v2;
  __chkstk_darwin(v2);
  v114 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v112 = *(v4 - 8);
  v113 = v4;
  __chkstk_darwin(v4);
  v111 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v6 - 8);
  v119 = &v88[-v7];
  v8 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v8 - 8);
  v92 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v91 = &v88[-v11];
  v12 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v12 - 8);
  v118 = &v88[-v13];
  v14 = type metadata accessor for MotionMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v18 - 8);
  v20 = &v88[-v19];
  v21 = type metadata accessor for ArtworkMotionView();
  __chkstk_darwin(v21);
  v23 = &v88[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_10010FC20(&qword_101190468);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v88[-v24];
  v100 = sub_10010FC20(&qword_101190470);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v88[-v25];
  v104 = sub_10010FC20(&qword_101190478);
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = &v88[-v26];
  v27 = sub_10010FC20(&qword_101190480);
  v105 = *(v27 - 8);
  v106 = v27;
  __chkstk_darwin(v27);
  v102 = &v88[-v28];
  v107 = sub_10010FC20(&qword_101190488);
  __chkstk_darwin(v107);
  v108 = &v88[-v29];
  v110 = sub_10010FC20(&qword_101190490);
  __chkstk_darwin(v110);
  v109 = &v88[-v30];
  v31 = _s7ArtworkVMa();
  v32 = v1;
  AppStorage.wrappedValue.getter();
  v33 = MotionMode.allowsMotion.getter();
  (*(v15 + 8))(v17, v14);
  if (v33)
  {
    sub_1000089F8(v1 + *(v31 + 20), v20, &unk_101192950);
  }

  else
  {
    v34 = type metadata accessor for VideoArtwork();
    (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
  }

  v35 = v91;
  sub_1000089F8(v1, v91, &unk_10118A5E0);
  v36 = type metadata accessor for ArtworkImage.ViewModel(0);
  v37 = *(*(v36 - 8) + 48);
  v38 = v37(v35, 1, v36);
  v103 = v31;
  v93 = v20;
  if (v38 == 1)
  {
    sub_10044A6F4(v35);
    v39 = type metadata accessor for Artwork();
    (*(*(v39 - 8) + 56))(v118, 1, 1, v39);
  }

  else
  {
    v40 = v35;
    v41 = type metadata accessor for Artwork();
    v42 = *(v41 - 8);
    v43 = v118;
    (*(v42 + 16))(v118, v40, v41);
    sub_10044AA2C(v40, type metadata accessor for ArtworkImage.ViewModel);
    (*(v42 + 56))(v43, 0, 1, v41);
  }

  v44 = v92;
  sub_1000089F8(v32, v92, &unk_10118A5E0);
  v45 = v37(v44, 1, v36);
  v46 = v119;
  if (v45 == 1)
  {
    sub_10044A6F4(v44);
    v47 = type metadata accessor for Artwork.CropStyle();
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }

  else
  {
    sub_1000089F8(&v44[*(v36 + 20)], v119, &unk_101184060);
    sub_10044AA2C(v44, type metadata accessor for ArtworkImage.ViewModel);
  }

  v48 = type metadata accessor for ArtworkImage.Info(0);
  v49 = v32 + *(v48 + 28);
  v50 = *v49;
  LODWORD(v92) = *(v49 + 8);
  v51 = *(v49 + 16);
  v52 = *(v49 + 24);
  v53 = *(v49 + 32);
  LODWORD(v91) = *(v49 + 40);
  v89 = *(v49 + 41);
  v54 = v21[8];
  v55 = v32 + *(v48 + 20);
  v90 = v32;
  sub_10044A75C(v55, &v23[v54]);
  v56 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v56 - 8) + 56))(&v23[v54], 0, 1, v56);
  v57 = v21[9];
  v58 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v59 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v59 - 8) + 104))(&v23[v57], v58, v59);
  sub_10003D17C(v93, v23, &unk_101192950);
  sub_10003D17C(v118, &v23[v21[5]], &unk_101188920);
  sub_10003D17C(v119, &v23[v21[6]], &unk_101184060);
  v60 = &v23[v21[7]];
  *v60 = v50;
  v60[8] = v92;
  *(v60 + 2) = v51;
  v60[24] = v52;
  *(v60 + 4) = v53;
  v60[40] = v91;
  v60[41] = v89;
  v23[v21[10]] = 0;
  *&v23[v21[11]] = 0;
  v120 = 0x6B726F77747241;
  v121 = 0xE700000000000000;
  v61 = sub_10044A9B4(&qword_101190498, type metadata accessor for ArtworkMotionView);
  v62 = v94;
  View.presentationSource<A>(id:)();
  sub_10044AA2C(v23, type metadata accessor for ArtworkMotionView);
  v120 = v21;
  v121 = &type metadata for String;
  v122 = v61;
  v123 = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v96;
  v65 = v97;
  View.corner(_:)();
  (*(v95 + 8))(v62, v65);
  Border.artwork.unsafeMutableAddressor();

  v120 = v65;
  v121 = OpaqueTypeConformance2;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v99;
  v68 = v100;
  View.border(_:corner:)();

  (*(v98 + 8))(v64, v68);
  v69 = v111;
  static AccessibilityChildBehavior.ignore.getter();
  v120 = v68;
  v121 = v66;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v102;
  v72 = v104;
  View.accessibilityElement(children:)();
  (*(v112 + 8))(v69, v113);
  (*(v101 + 8))(v67, v72);
  v73 = v114;
  static AccessibilityTraits.isImage.getter();
  v120 = v72;
  v121 = v70;
  swift_getOpaqueTypeConformance2();
  v74 = v108;
  v75 = v106;
  View.accessibilityAddTraits(_:)();
  (*(v115 + 8))(v73, v116);
  (*(v105 + 8))(v71, v75);
  v76 = AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v77 = *v76;
  v78 = v76[1];
  v79 = v76[2];
  v80 = v76[3];
  v81 = sub_10044A7C0();

  v82 = v109;
  View.accessibilityIdentifier(_:)(v77, v78, v79, v80, v107, v81);

  sub_1000095E8(v74, &qword_101190488);
  v83 = (v90 + *(v103 + 24));
  v84 = *v83;
  v85 = v83[1];
  v86 = sub_10044A9FC();
  View.accessibilityLabel(_:)(v84, v85, v110, v86);
  return sub_1000095E8(v82, &qword_101190490);
}

uint64_t sub_10044A6F4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118A5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044A75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10044A7C0()
{
  result = qword_1011904A0;
  if (!qword_1011904A0)
  {
    sub_1001109D0(&qword_101190488);
    sub_1001109D0(&qword_101190478);
    sub_1001109D0(&qword_101190470);
    sub_1001109D0(&qword_101190468);
    type metadata accessor for ArtworkMotionView();
    sub_10044A9B4(&qword_101190498, type metadata accessor for ArtworkMotionView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10044A9B4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011904A0);
  }

  return result;
}

uint64_t sub_10044A9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10044AA2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044AA8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_10044A9B4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044AB94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10044ACA0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_1007E976C(v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_10044ADDC(uint64_t (*a1)(char *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v27 = type metadata accessor for Track();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_10010FC20(&unk_10118C0B0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  (*(v6 + 16))(v8, v2, v5);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  dispatch thunk of Sequence.makeIterator()();
  v13 = *(v10 + 44);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  v24 = (v3 + 16);
  v25 = (v3 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v14 = v31[0];
    v30 = *&v12[v13];
    if (v30 == v31[0])
    {
      break;
    }

    v15 = dispatch thunk of Collection.subscript.read();
    v16 = v5;
    v17 = v26;
    v18 = v27;
    (*v24)(v26);
    v15(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v19 = v32;
    v20 = v28(v17);
    v32 = v19;
    if (v19)
    {
      (*v25)(v17, v18);
      break;
    }

    v21 = v20;
    (*v25)(v17, v18);
    v5 = v16;
  }

  while ((v21 & 1) == 0);
  sub_1000095E8(v12, &unk_10118C0B0);
  return v30 != v14;
}

void sub_10044B170(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10044B2EC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v17 = a4;
      v18 = a3 & 0xC000000000000001;
      v7 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v8 = a3;
          v9 = v17(v6, a3);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v8 = a3;
          v9 = *(a3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v20 = v9;
        v12 = a1(&v20);

        if (!v4 && (v12 & 1) == 0)
        {
          ++v6;
          a3 = v8;
          if (v11 != v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v13 = a4;
      v14 = a3;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v14;
      a4 = v13;
      v5 = v15;
    }

    while (v15);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_10044B424(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10044B4CC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_10010FC20(&unk_1011972C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = 0xD000000000000021;
      v2 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0x8000000100E4BB70;
      *(inited + 48) = 0xD000000000000024;
      *(inited + 56) = 0x8000000100E4BBA0;
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    sub_10010FC20(&unk_1011972C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0xD000000000000020;
    v2 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000100E4BBD0;
    *(inited + 48) = 0x3534313332323036;
    *(inited + 56) = 0xEF30303938313939;
LABEL_6:
    v3 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_1000095E8(v2, &unk_1011927D0);
    return v3;
  }

  return sub_10010BC60(_swiftEmptyArrayStorage);
}

uint64_t sub_10044B664@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  __chkstk_darwin(v10);
  v12 = v27 - v11;
  __chkstk_darwin(v13);
  v15 = v27 - v14;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      URL.init(string:)();
      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v9, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a2, v9, v19);
      }

      goto LABEL_15;
    }

    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v23._countAndFlagsBits = 0xD000000000000036;
    v23._object = 0x8000000100E4B890;
    String.append(_:)(v23);
    v24._object = 0x8000000100E4B8D0;
    v24._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v24);
    URL.init(string:)();

    v25 = type metadata accessor for URL();
    v26 = *(v25 - 8);
    result = (*(v26 + 48))(v6, 1, v25);
    if (result == 1)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    return (*(v26 + 32))(a2, v6, v25);
  }

  else
  {
    if (!a1)
    {
      URL.init(string:)();
      v16 = type metadata accessor for URL();
      v17 = *(v16 - 8);
      result = (*(v17 + 48))(v12, 1, v16);
      if (result != 1)
      {
        return (*(v17 + 32))(a2, v12, v16);
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    URL.init(string:)();
    v21 = type metadata accessor for URL();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v15, 1, v21);
    if (result == 1)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return (*(v22 + 32))(a2, v15, v21);
  }
}

unint64_t sub_10044BA2C(unsigned __int8 a1)
{
  v1 = 0xD00000000000003FLL;
  if (a1 == 2)
  {
    v1 = 0xD000000000000028;
  }

  v2 = 0xD00000000000002BLL;
  if (a1)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10044BAA0(unsigned __int8 a1)
{
  v1 = 0xD000000000000035;
  if (a1 == 2)
  {
    v1 = 0xD000000000000025;
  }

  v2 = 0xD000000000000028;
  if (a1)
  {
    v2 = 0xD000000000000027;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10044BB14()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10044BC7C(unsigned __int8 a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BagProvider.shared.unsafeMutableAddressor();

  v9 = BagProvider.bag.getter();

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v9 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_100407258(v11);

  if (!v12)
  {
    goto LABEL_11;
  }

  if (!*(v12 + 16) || (v13 = sub_100019C10(0xD000000000000027, 0x8000000100E4B7E0), (v14 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1000160F8(*(v12 + 56) + 40 * v13, v28);

  sub_10010FC20(&qword_101183BC8);
  v15 = swift_dynamicCast();
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v19 = 1;
    goto LABEL_12;
  }

  v16 = v27[2];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v17 = "com.zhiliaoapp.musically";
      v18 = 0xD000000000000017;
    }

    else
    {
      v17 = "xtensionSetForBundleIds";
      v18 = 0xD000000000000018;
    }
  }

  else if (a1)
  {
    v18 = 0xD000000000000015;
    v17 = "com.burbn.instagram";
  }

  else
  {
    v17 = "com.toyopagroup.picaboo";
    v18 = 0xD000000000000013;
  }

  v28[0] = v18;
  v28[1] = v17 | 0x8000000000000000;
  __chkstk_darwin(v15);
  v27[-2] = v28;
  v26 = sub_10044AB94(sub_10044CF58, &v27[-4], v16);

  v19 = v26 ^ 1;
LABEL_12:
  v20 = [objc_opt_self() sharedApplication];
  if (a1 <= 2u)
  {
    sub_10044B664(a1, v8);
    v4 = v8;
LABEL_15:
    URL._bridgeToObjectiveC()(v21);
    v24 = v23;
    (*(v6 + 8))(v4, v5);
    v25 = [v20 canOpenURL:v24];

    return v19 & v25 & 1;
  }

  URL.init(string:)();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10044C064(unsigned __int8 a1)
{
  BagProvider.shared.unsafeMutableAddressor();

  v2 = BagProvider.bag.getter();

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];

  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100407258(v4);

  if (!v5)
  {
    goto LABEL_11;
  }

  if (!*(v5 + 16) || (v6 = 0xD000000000000013, v7 = sub_100019C10(0xD00000000000002CLL, 0x8000000100E4BB40), (v8 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1000160F8(*(v5 + 56) + 40 * v7, v15);

  sub_10010FC20(&qword_101183BC8);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = "com.zhiliaoapp.musically";
      v6 = 0xD000000000000017;
    }

    else
    {
      v10 = "xtensionSetForBundleIds";
      v6 = 0xD000000000000018;
    }
  }

  else if (a1)
  {
    v6 = 0xD000000000000015;
    v10 = "com.burbn.instagram";
  }

  else
  {
    v10 = "com.toyopagroup.picaboo";
  }

  v15[0] = v6;
  v15[1] = v10 | 0x8000000000000000;
  __chkstk_darwin(v9);
  v14[2] = v15;
  v13 = sub_10044AB94(sub_10044D034, v14, v14[6]);

  v11 = v13 ^ 1;
  return v11 & 1;
}

uint64_t sub_10044C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v77 = a3;
  v70 = a2;
  v73 = a1;
  v7 = a4;
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v81 = &v65 - v9;
  v10 = type metadata accessor for UUID();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URLQueryItem();
  v78 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v65 - v14;
  __chkstk_darwin(v15);
  v72 = &v65 - v16;
  __chkstk_darwin(v17);
  v71 = &v65 - v18;
  v19 = type metadata accessor for CharacterSet();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v26 - 8);
  v28 = &v65 - v27;
  v29 = type metadata accessor for URLComponents();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v84 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 == 3)
  {
    v69 = a5;
    sub_10044B664(3u, v25);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v68 = v23;
    (*(v23 + 8))(v25, v22);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      sub_1000095E8(v28, &qword_101194980);
      return sub_10044B664(3u, v69);
    }

    else
    {
      v66 = v22;
      (*(v30 + 32))(v84, v28, v29);
      v33 = v21;
      static CharacterSet.urlQueryAllowed.getter();
      v34._object = 0x8000000100E4BB20;
      v34._countAndFlagsBits = 0xD000000000000012;
      CharacterSet.remove(charactersIn:)(v34);
      v35 = URLComponents.percentEncodedQueryItems.getter();
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }

      v86 = 0x2F2F3A636973756DLL;
      v87 = 0xE800000000000000;
      sub_100009838();
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v37 = v71;
      URLQueryItem.init(name:value:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_10049A5A8(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = v72;
      v40 = *(v36 + 2);
      v39 = *(v36 + 3);
      v67 = v29;
      v65 = v30;
      if (v40 >= v39 >> 1)
      {
        v36 = sub_10049A5A8(v39 > 1, v40 + 1, 1, v36);
      }

      *(v36 + 2) = v40 + 1;
      v41 = v78 + 32;
      v42 = *(v78 + 32);
      v78 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v72 = *(v41 + 40);
      v43 = v42;
      v42(&v36[v78 + v72 * v40], v37, v85);
      v86 = URL.absoluteString.getter();
      v87 = v44;
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();

      URLQueryItem.init(name:value:)();

      v46 = *(v36 + 2);
      v45 = *(v36 + 3);
      if (v46 >= v45 >> 1)
      {
        v36 = sub_10049A5A8(v45 > 1, v46 + 1, 1, v36);
      }

      *(v36 + 2) = v46 + 1;
      v47 = v85;
      v43(&v36[v78 + v46 * v72], v38, v85);
      v48 = v74;
      UUID.init()();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      (*(v75 + 8))(v48, v76);
      v86 = v49;
      v87 = v51;
      StringProtocol.addingPercentEncoding(withAllowedCharacters:)();

      URLQueryItem.init(name:value:)();

      v53 = *(v36 + 2);
      v52 = *(v36 + 3);
      if (v53 >= v52 >> 1)
      {
        v36 = sub_10049A5A8(v52 > 1, v53 + 1, 1, v36);
      }

      v54 = v69;
      *(v36 + 2) = v53 + 1;
      v43(&v36[v78 + v53 * v72], v83, v47);
      if (v77)
      {
        v86 = v70;
        v87 = v77;
        StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        URLQueryItem.init(name:value:)();

        v56 = *(v36 + 2);
        v55 = *(v36 + 3);
        if (v56 >= v55 >> 1)
        {
          v36 = sub_10049A5A8(v55 > 1, v56 + 1, 1, v36);
        }

        v58 = v81;
        v57 = v82;
        v59 = v66;
        *(v36 + 2) = v56 + 1;
        v43(&v36[v78 + v56 * v72], v57, v47);
      }

      else
      {
        v58 = v81;
        v59 = v66;
      }

      v60 = v84;
      URLComponents.percentEncodedQueryItems.setter();
      URLComponents.url.getter();
      v61 = v68;
      v62 = *(v68 + 48);
      v63 = v62(v58, 1, v59);
      v64 = v65;
      if (v63 == 1)
      {
        sub_10044B664(3u, v54);
        (*(v79 + 8))(v33, v80);
        (*(v64 + 8))(v60, v67);
        result = v62(v58, 1, v59);
        if (result != 1)
        {
          return sub_1000095E8(v58, &qword_101183A20);
        }
      }

      else
      {
        (*(v79 + 8))(v33, v80);
        (*(v64 + 8))(v60, v67);
        return (*(v61 + 32))(v54, v58, v59);
      }
    }
  }

  else
  {

    return sub_10044B664(a4, a5);
  }

  return result;
}

Swift::Int sub_10044CC58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10044CD08()
{
  String.hash(into:)();
}

Swift::Int sub_10044CDA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10044CE50@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10044CF74(*a1);
  *a2 = result;
  return result;
}

void sub_10044CE80(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "ited";
  v4 = "com.apple.Music.FacebookStories";
  v5 = 0xD00000000000001DLL;
  if (*v1 == 2)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "com.apple.Music.SnapchatStories";
  }

  if (*v1)
  {
    v3 = "InstagramStories";
  }

  else
  {
    v2 = 0xD000000000000020;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_10044CF04()
{
  result = qword_1011904D0;
  if (!qword_1011904D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011904D0);
  }

  return result;
}

unint64_t sub_10044CF74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099498, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10044CFC0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10044D050()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Class sub_10044D0C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  v0 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v0)
  {
    return 0;
  }

  while (1)
  {
    sub_10010FC20(&qword_101183990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6C0;
    type metadata accessor for MusicLibrary();
    *(inited + 32) = static MusicLibrary.shared.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = v15;
    v15 = inited;
    sub_1001251C8(v2);
    v3 = v15;
    if (v15 >> 62)
    {
      break;
    }

    v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }

LABEL_5:
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E976C(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v13 = v7;
      sub_10044D934(&v13, &v14);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v5;
      if (v6 == v4)
      {

        preferredElementSize = v15;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v9 = _CocoaArrayWrapper.endIndex.getter();

    if (!v9)
    {
      return 0;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_19:

  preferredElementSize = _swiftEmptyArrayStorage;
LABEL_20:
  sub_100009F78(0, &unk_1011845F0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12).super.super.isa;
}

uint64_t sub_10044D3B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10044D424()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_10010FC20(&unk_101197230);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_1011905E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MusicSharedLibrariesRequest();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) == 1)
  {
    v34 = v9;
    v35 = v8;
    v17 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse;
    if (*(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse))
    {
      v18 = *(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse);
    }

    else
    {
      v33 = v4;
      v19 = v11;
      v20 = v5;
      v21 = result;
      MusicSharedLibrariesRequest.init()();
      v22 = v7;
      v23 = MusicSharedLibrariesRequest.autoupdatingResponse.getter();
      v24 = v21;
      v5 = v20;
      v11 = v19;
      v4 = v33;
      (*(v13 + 8))(v16, v24);
      *(v1 + v17) = v23;
      v18 = v23;
      v7 = v22;
    }

    v25 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription;
    swift_beginAccess();
    sub_10044EF08(v1 + v25, v37);
    v26 = v38;

    if (v26)
    {

      return sub_1000095E8(v37, &qword_10118D380);
    }

    else
    {
      sub_1000095E8(v37, &qword_10118D380);
      dispatch thunk of MusicAutoupdatingSharedLibrariesResponse.$libraries.getter();
      sub_100009F78(0, &qword_101182960);
      v27 = static OS_dispatch_queue.main.getter();
      v37[0] = v27;
      v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
      sub_100020674(&qword_10118DF80, &unk_101197230);
      v33 = v18;
      v29 = v36;
      sub_1000206BC();
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v4, &qword_101182140);

      (*(v29 + 8))(v7, v5);
      swift_allocObject();
      swift_weakInit();
      sub_100020674(&qword_1011905F0, &qword_1011905E8);
      v30 = v35;
      v31 = Publisher<>.sink(receiveValue:)();

      (*(v34 + 8))(v11, v30);
      v38 = type metadata accessor for AnyCancellable();
      v39 = &protocol witness table for AnyCancellable;

      v37[0] = v31;
      swift_beginAccess();
      sub_10016E1E0(v37, v1 + v25);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_10044D934(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = *a1;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  LOBYTE(a1) = static MusicLibrary.== infix(_:_:)();

  if (a1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    MusicLibrary.name.getter();
  }

  static MusicLibrary.shared.getter();
  v6 = static MusicLibrary.== infix(_:_:)();

  if (v6)
  {
    v7 = &selRef__systemImageNamed_;
  }

  else
  {
    v7 = &selRef_systemImageNamed_;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() *v7];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static MusicLibrary.== infix(_:_:)();

  sub_100009F78(0, &qword_1011839A0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v5;

  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  _StringGuts.grow(_:)(28);

  v13._countAndFlagsBits = MusicLibrary.name.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x8000000100E4BD00;
  AccessibilityIdentifier.init(name:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v15];

  *a2 = v12;
}

uint64_t sub_10044DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10044DD80(a3);
  }

  return result;
}

uint64_t sub_10044DD80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v12[1] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  type metadata accessor for MusicLibrary();
  sub_10031D190();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v7 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    MusicLibrary.disconnect()();

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v2;
    v11[5] = a1;
    sub_1001F4CB8(0, 0, v6, &unk_100ECD2B8, v11);
  }

  return result;
}

uint64_t sub_10044DFA4(unint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v39[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = sub_10047D074(v9, v50);

    if ((v12 & 1) == 0)
    {
      v13 = Logger.libraryMenu.unsafeMutableAddressor();
      (*(v3 + 16))(v8, v13, v2);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v47 = v11;
        v16 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        v46 = v16;
        *v16 = 136446210;
        v48 = v6;
        if (v9 >> 62)
        {
          v17 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v17)
        {
          v40 = v15;
          v41 = v14;
          v42 = v8;
          v43 = v3;
          v44 = v2;
          v49 = _swiftEmptyArrayStorage;
          result = sub_100015C04(0, v17 & ~(v17 >> 63), 0);
          if (v17 < 0)
          {
            __break(1u);
            return result;
          }

          v18 = 0;
          v19 = v49;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              sub_1007E976C(v18, v9);
            }

            else
            {
            }

            v20 = MusicLibrary.name.getter();
            v22 = v21;

            v49 = v19;
            v24 = v19[2];
            v23 = v19[3];
            if (v24 >= v23 >> 1)
            {
              sub_100015C04((v23 > 1), v24 + 1, 1);
              v19 = v49;
            }

            ++v18;
            v19[2] = v24 + 1;
            v25 = &v19[2 * v24];
            v25[4] = v20;
            v25[5] = v22;
          }

          while (v17 != v18);
          v3 = v43;
          v2 = v44;
          v14 = v41;
          v8 = v42;
          LOBYTE(v15) = v40;
        }

        v26 = Array.description.getter();
        v28 = v27;

        v29 = sub_1000105AC(v26, v28, &v50);

        v30 = v46;
        *(v46 + 1) = v29;
        _os_log_impl(&_mh_execute_header, v14, v15, "Discovered new shared libraries %{public}s", v30, 0xCu);
        sub_10000959C(v45);

        (*(v3 + 8))(v8, v2);
        v6 = v48;
      }

      else
      {

        (*(v3 + 8))(v8, v2);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v9;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for MusicLibrary();
    v49 = static MusicLibrary.shared.getter();
    sub_10031D190();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v31 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      __chkstk_darwin(v32);
      *&v39[-16] = &v50;
      v33 = sub_10044ACA0(sub_10044EFE0, &v39[-32], v9);

      if ((v33 & 1) == 0)
      {
        v34 = Logger.libraryMenu.unsafeMutableAddressor();
        (*(v3 + 16))(v6, v34, v2);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Currently selected Library become unavailable, resetting to device library", v37, 2u);
        }

        (*(v3 + 8))(v6, v2);
        v38 = static MusicLibrary.shared.getter();
        sub_10044DD80(v38);
      }
    }
  }

  return result;
}

uint64_t sub_10044E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_10044E6E8, v8, v7);
}

uint64_t sub_10044E6E8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting;
  v0[13] = OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10044E794;

  return MusicLibrary.connect()();
}

uint64_t sub_10044E794()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_10044E9A0;
  }

  else
  {
    v5 = sub_10044E8D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10044E8D0()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];

  *(v2 + v1) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v3;

  static Published.subscript.setter();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10044E9A0()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  v4 = Logger.libraryMenu.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to connect to shared library with error=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    (*(v17 + 8))(v16, v18);
  }

  *(v0[5] + v0[13]) = 0;
  type metadata accessor for MusicLibrary();
  v19 = static MusicLibrary.shared.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v19;

  static Published.subscript.setter();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10044EC18()
{
  v1 = OBJC_IVAR____TtC5Music25SharedLibrariesController__availableSharedLibraries;
  v2 = sub_10010FC20(&unk_101197240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music25SharedLibrariesController__selectedLibrary;
  v4 = sub_10010FC20(&unk_101197250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription, &qword_10118D380);

  return swift_deallocClassInstance();
}

uint64_t sub_10044ED44@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10044EDC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10044EE48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10044E5F4(a1, v4, v5, v7, v6);
}

uint64_t sub_10044EF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118D380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044EF80()
{
  type metadata accessor for MusicLibrary();
  sub_10031D190();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_10044F000(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011906A8);
  __chkstk_darwin(v2 - 8);
  v141 = (&v125 - v3);
  v4 = type metadata accessor for MusicCollaborativePlaylist.Error();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v130 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = &v125 - v8;
  __chkstk_darwin(v9);
  v136 = &v125 - v10;
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v128 = &v125 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v132 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v131 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v140 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v133 = &v125 - v21;
  __chkstk_darwin(v22);
  v134 = &v125 - v23;
  __chkstk_darwin(v24);
  v26 = &v125 - v25;
  v27 = Logger.collaboration.unsafeMutableAddressor();
  v28 = *(v18 + 2);
  v137 = v27;
  v138 = v28;
  v139 = v18 + 16;
  (v28)(v26);
  swift_errorRetain();
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v127 = v4;
    v125 = v33;
    *&v146 = v33;
    *v32 = 136446210;
    swift_getErrorValue();
    v126 = v29;
    v34 = Error.localizedDescription.getter();
    v36 = v18;
    v37 = v17;
    v38 = v5;
    v39 = sub_1000105AC(v34, v35, &v146);
    v29 = v126;

    *(v32 + 4) = v39;
    v5 = v38;
    v17 = v37;
    v18 = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Handling error=%{public}s", v32, 0xCu);
    sub_10000959C(v125);
    v4 = v127;
  }

  v40 = *(v18 + 1);
  v40(v26, v17);
  *&v142 = v29;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0);
  v41 = swift_dynamicCast();
  v42 = v141;
  if (!v41)
  {
    v138(v140, v137, v17);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138543362;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Not handled error=%{public}@", v55, 0xCu);
      sub_1000095E8(v56, &unk_101183D70);
    }

    v40(v140, v17);
    return;
  }

  v43 = v146;
  v44 = v147;
  if (!v147)
  {
    goto LABEL_41;
  }

  if (v147 == 1)
  {
    sub_10045262C(v146, *(&v146 + 1), 1u);
    swift_errorRetain();
    v58 = swift_dynamicCast();
    v59 = *(v5 + 7);
    if ((v58 & 1) == 0)
    {
      v59(v42, 1, 1, v4);
      sub_1000095E8(v42, &qword_1011906A8);
      v138(v133, v137, v17);
      swift_errorRetain();
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      sub_100452604(v43, *(&v43 + 1), 1u);
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138543362;
        swift_errorRetain();
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v76;
        *v75 = v76;
        _os_log_impl(&_mh_execute_header, v72, v73, "Not handled MusicKit error=%{public}@", v74, 0xCu);
        sub_1000095E8(v75, &unk_101183D70);
      }

      v40(v133, v17);
      sub_100450988();
      sub_100452604(v43, *(&v43 + 1), 1u);
      v78 = *(&v43 + 1);
      v77 = v43;
      v44 = 1;
      goto LABEL_42;
    }

    v128 = v18;
    v140 = *(&v43 + 1);
    v133 = v43;
    v59(v42, 0, 1, v4);
    v60 = v136;
    (*(v5 + 4))(v136, v42, v4);
    v61 = v137;
    v137 = v17;
    v138(v134, v61, v17);
    v62 = *(v5 + 2);
    v63 = v129;
    v62(v129, v60, v4);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v139 = v5;
      v67 = v66;
      v138 = swift_slowAlloc();
      *v67 = 138543362;
      sub_100452654();
      swift_allocError();
      v68 = v4;
      v62(v69, v63, v4);
      v70 = _swift_stdlib_bridgeErrorToNSError();
      v141 = *(v139 + 1);
      v141(v63, v68);
      *(v67 + 4) = v70;
      v71 = v138;
      *v138 = v70;
      v4 = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "Getting MusicKit error=%{public}@", v67, 0xCu);
      sub_1000095E8(v71, &unk_101183D70);

      v5 = v139;
    }

    else
    {

      v141 = *(v5 + 1);
      v141(v63, v4);
    }

    v40(v134, v137);
    v79 = v130;
    v62(v130, v136, v4);
    v80 = (*(v5 + 11))(v79, v4);
    if (v80 == enum case for MusicCollaborativePlaylist.Error.expiredLink(_:))
    {
      v81 = v4;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v82 = String._bridgeToObjectiveC()();

      v83 = String._bridgeToObjectiveC()();

      v84 = [objc_opt_self() alertControllerWithTitle:v82 message:v83 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v85 = String._bridgeToObjectiveC()();

      v86 = [objc_opt_self() actionWithTitle:v85 style:1 handler:0];

      [v84 addAction:v86];
      v87 = *(v135 + 16);
      v88 = v140;
      if (v87)
      {
        v89 = *(v87 + 32);
        if (v89 >= 0)
        {
          v90 = v89;
        }

        else
        {
          v90 = (v89 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v142 = 0u;
        v143 = 0u;
        v144 = 0;
        v145 = xmmword_100EBCEF0;
        v91 = (v89 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v90, &v142, &v146);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v84, 1, 1, 0, 0);

        v92 = v133;
        sub_100452604(v133, v88, 1u);
        v93 = v92;
        v94 = v88;
LABEL_50:
        sub_100452604(v93, v94, 1u);
        sub_10012BA6C(&v146);
LABEL_63:
        v141(v136, v81);
        return;
      }

      v117 = v133;
      sub_100452604(v133, v140, 1u);

      v118 = v117;
      v119 = v88;
    }

    else
    {
      v95 = v140;
      if (v80 != enum case for MusicCollaborativePlaylist.Error.maximumCollaboratorsReached(_:) && v80 != enum case for MusicCollaborativePlaylist.Error.maximumPendingCollaboratorsReached(_:))
      {
        if (v80 == enum case for MusicCollaborativePlaylist.Error.underageUser(_:))
        {
          sub_1004525B0();
          swift_allocError();
          *v121 = 0;
          *(v121 + 8) = 0;
          *(v121 + 16) = 3;
          sub_10044F000();
          v122 = v133;
          sub_100452604(v133, v95, 1u);
          sub_100452604(v122, v95, 1u);
          v141(v136, v4);
        }

        else
        {
          sub_100450988();
          v123 = v133;
          sub_100452604(v133, v95, 1u);
          sub_100452604(v123, v95, 1u);
          v124 = v141;
          v141(v136, v4);
          v124(v79, v4);
        }

        return;
      }

      v81 = v4;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v96 = String._bridgeToObjectiveC()();

      v97 = String._bridgeToObjectiveC()();

      v98 = [objc_opt_self() alertControllerWithTitle:v96 message:v97 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v99 = String._bridgeToObjectiveC()();

      v100 = [objc_opt_self() actionWithTitle:v99 style:1 handler:0];

      [v98 addAction:v100];
      v101 = *(v135 + 16);
      if (v101)
      {
        v102 = *(v101 + 32);
        if (v102 >= 0)
        {
          v103 = v102;
        }

        else
        {
          v103 = (v102 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v142 = 0u;
        v143 = 0u;
        v144 = 0;
        v145 = xmmword_100EBCEF0;
        v104 = (v102 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v103, &v142, &v146);
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v98, 1, 1, 0, 0);

        v105 = v133;
        sub_100452604(v133, v95, 1u);
        v93 = v105;
        v94 = v95;
        goto LABEL_50;
      }

      v120 = v133;
      sub_100452604(v133, v95, 1u);

      v118 = v120;
      v119 = v95;
    }

    sub_100452604(v118, v119, 1u);
    goto LABEL_63;
  }

  if (v147 != 3)
  {
    goto LABEL_41;
  }

  if (v146 <= 3)
  {
    if (__PAIR128__((v146 != 0) + *(&v146 + 1) - 1, v146 - 1) < 2)
    {
      return;
    }

    if (v146 == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v106 = String._bridgeToObjectiveC()();

      v107 = String._bridgeToObjectiveC()();

      v108 = [objc_opt_self() alertControllerWithTitle:v106 message:v107 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v109 = String._bridgeToObjectiveC()();

      v110 = [objc_opt_self() actionWithTitle:v109 style:1 handler:0];
      goto LABEL_53;
    }

    if (!(v146 ^ 3 | *(&v146 + 1)))
    {
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      v149 = -3;
      static SubscriptionUpsellPresenter.present(for:)(&v146);
      sub_100309980(&v146);
      return;
    }

LABEL_41:
    v78 = *(&v146 + 1);
    v77 = v146;
LABEL_42:
    sub_100452604(v77, v78, v44);
    return;
  }

  if (v146 <= 6)
  {
    if (__PAIR128__((v146 >= 4) + *(&v146 + 1) - 1, v146 - 4) < 2)
    {
      return;
    }

    if (!(v146 ^ 6 | *(&v146 + 1)))
    {
      v45 = *(v135 + 16);
      if (v45)
      {
        v46 = *(v45 + 32);
        if (v46 >= 0)
        {
          v47 = v46;
        }

        else
        {
          v47 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
        }

        memset(v150, 0, sizeof(v150));
        v151 = 0;
        v152 = xmmword_100EBCEF0;
        v48 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
        PresentationSource.init(viewController:position:)(v47, v150, &v146);
        v49 = type metadata accessor for TaskPriority();
        v50 = v128;
        (*(*(v49 - 8) + 56))(v128, 1, 1, v49);
        sub_10012B7A8(&v146, &v142);
        type metadata accessor for MainActor();
        v51 = static MainActor.shared.getter();
        v52 = swift_allocObject();
        *(v52 + 16) = v51;
        *(v52 + 24) = &protocol witness table for MainActor;
        sub_10012B828(&v142, v52 + 32);
        sub_1001F5D9C(0, 0, v50, &unk_100ECD340, v52);

LABEL_58:
        sub_10012BA6C(&v146);
        return;
      }

      return;
    }

    goto LABEL_41;
  }

  if (v146 ^ 7 | *(&v146 + 1))
  {
    if (!(v146 ^ 9 | *(&v146 + 1)))
    {
      static Collaboration.Error.tapToRadarAlert()();
      return;
    }

    goto LABEL_41;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v111 = String._bridgeToObjectiveC()();

  v108 = [objc_opt_self() alertControllerWithTitle:0 message:v111 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v109 = String._bridgeToObjectiveC()();

  v110 = [objc_opt_self() actionWithTitle:v109 style:1 handler:0];
LABEL_53:
  v112 = v110;

  [v108 addAction:v112];
  v113 = *(v135 + 16);
  if (v113)
  {
    v114 = *(v113 + 32);
    if (v114 >= 0)
    {
      v115 = v114;
    }

    else
    {
      v115 = (v114 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v142 = 0u;
    v143 = 0u;
    v144 = 0;
    v145 = xmmword_100EBCEF0;
    v116 = (v114 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v115, &v142, &v146);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v108, 1, 1, 0, 0);

    goto LABEL_58;
  }
}

uint64_t sub_10045071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1004507D8;

  return static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(3, a4, 0);
}

uint64_t sub_1004507D8(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045091C, v3, v2);
}

uint64_t sub_10045091C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_100450988()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = *(v8 + 32);
    if (v9 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    }

    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v15 = xmmword_100EBCEF0;
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v10, v13, v12);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

    sub_10012BA6C(v12);
  }

  else
  {
  }
}

uint64_t sub_100450C7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100450CD8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v49 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v49);
  v50 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Collaboration.Flow.View(0);
  v6 = __chkstk_darwin(v5 - 8);
  v51 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v53 = &v47[-v8];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v52 = &v47[-v13];
  __chkstk_darwin(v12);
  v15 = &v47[-v14];
  v16 = type metadata accessor for Playlist();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (Playlist.hasActiveCollaboration.getter())
  {
    (*(v17 + 16))(v19, a1, v16);
    type metadata accessor for Collaboration.Management.Model(0);
    swift_allocObject();

    Collaboration.Management.Model.init(manager:playlist:)(v20, v19);
    v21 = objc_allocWithZone(type metadata accessor for Collaboration.Management.ViewController(0));

    v22 = Collaboration.Management.ViewController.init(model:)();
    [v22 setModalPresentationStyle:2];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v22, 0, 1, 0, 0);
    v23 = Logger.collaboration.unsafeMutableAddressor();
    (*(v10 + 16))(v15, v23, v9);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Management view presented", v26, 2u);
    }

    else
    {
    }

    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    Collaboration.Manager.canCollaborate(for:)();
    v28 = Collaboration.Manager.participantProfile.getter();
    v29 = v2;
    if (v28)
    {
      v30 = v28;
      v31 = [v28 collaborationAllowed];

      v32 = v31 ^ 1;
    }

    else
    {
      v32 = 1;
    }

    v48 = v32;
    v33 = v54;
    v34 = v50;
    swift_storeEnumTagMultiPayload();
    (*(v17 + 16))(v19, a1, v16);
    sub_10012B7A8(v33, v55);
    v35 = swift_allocObject();
    sub_10012B828(v55, v35 + 16);
    *(v35 + 112) = v29;
    swift_retain_n();
    v36 = v53;
    Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v34, v19, v29, v48, &unk_100ECD320, 0, sub_100452474, v35, v53);
    v37 = v51;
    sub_100452480(v36, v51);
    v38 = objc_allocWithZone(sub_10010FC20(&qword_101190698));
    v39 = Card.ViewController.init(content:)(v37);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v39, 0, 1, 0, 0);
    v40 = Logger.collaboration.unsafeMutableAddressor();
    v41 = v10;
    v42 = *(v10 + 16);
    v43 = v52;
    v42(v52, v40, v9);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Initialization sheet presented", v46, 2u);
    }

    (*(v41 + 8))(v43, v9);
    return sub_1004524E4(v36);
  }
}

uint64_t sub_1004513D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = type metadata accessor for Logger();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011906A0);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v12 = v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  __chkstk_darwin(v13);
  v50 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Playlist();
  v54 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_1011814D0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v46 - v23;
  v25 = sub_10010FC20(&qword_1011A4820);
  __chkstk_darwin(v25);
  v27 = (v46 - v26);
  v46[1] = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  sub_1000089F8(a1, v27, &qword_1011A4820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    Collaboration.Manager.handleError(_:)(*v27);
  }

  sub_100452540(v27, v24);
  sub_1000089F8(v24, v22, &unk_1011814D0);
  v31 = v54;
  if ((*(v54 + 48))(v22, 1, v16) == 1)
  {
    sub_1000095E8(v24, &unk_1011814D0);
    v32 = v22;
    v33 = &unk_1011814D0;
  }

  else
  {
    (*(v31 + 32))(v18, v22, v16);
    Playlist.collaboration.getter();
    v34 = type metadata accessor for Playlist.Collaboration();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v9, 1, v34) == 1)
    {
      (*(v31 + 8))(v18, v16);
      sub_1000095E8(v24, &unk_1011814D0);
      sub_1000095E8(v9, &qword_1011906A0);
      (*(v52 + 56))(v12, 1, 1, v51);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      (*(v35 + 8))(v9, v34);
      v37 = v51;
      v36 = v52;
      if ((*(v52 + 48))(v12, 1, v51) != 1)
      {
        (*(v36 + 32))(v50, v12, v37);
        v38 = Collaboration.Manager.activityViewController(for:url:)();
        PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v38, 1, 1, 0, 0);
        v39 = Logger.collaboration.unsafeMutableAddressor();
        v41 = v47;
        v40 = v48;
        v42 = v49;
        (*(v48 + 16))(v47, v39, v49);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "ShareSheet invite presented", v45, 2u);

          (*(v40 + 8))(v41, v42);
          (*(v52 + 8))(v50, v51);
        }

        else
        {

          (*(v40 + 8))(v41, v42);
          (*(v52 + 8))(v50, v37);
        }

        (*(v54 + 8))(v18, v16);
        v33 = &unk_1011814D0;
        v32 = v24;
        return sub_1000095E8(v32, v33);
      }

      (*(v31 + 8))(v18, v16);
      sub_1000095E8(v24, &unk_1011814D0);
    }

    v33 = &qword_101183A20;
    v32 = v12;
  }

  return sub_1000095E8(v32, v33);
}

uint64_t sub_100451AF4(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_100451B8C, v3, v2);
}

uint64_t sub_100451B8C()
{
  if ((*(**(v0 + 64) + 280))())
  {
    v1 = 0;
  }

  else
  {
    v2 = (*(**(v0 + 64) + 312))();
    if (v2 <= 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }
  }

  *(v0 + 96) = v1;
  *(v0 + 16) = (*(**(v0 + 64) + 272))();
  *(v0 + 104) = v3;
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v1;
  *(v0 + 56) = 513;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_100451D04;

  return sub_10040CEDC(v0 + 16, 1);
}

uint64_t sub_100451D04()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_100451EC0;
  }

  else
  {
    v5 = sub_100451E40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100451E40()
{
  v1 = *(v0 + 96);

  sub_10040DEF8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100451EC0()
{
  v1 = v0[15];
  v2 = v0[12];

  sub_1004525B0();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();

  sub_10040DEF8(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100452004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v19[-v11];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a2, v6);
  sub_10012B7A8(a3, v19);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v14;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = a1;
  (*(v7 + 32))(&v17[v15], v9, v6);
  sub_10012B828(v19, &v17[v16]);
  sub_1001F4CB8(0, 0, v12, &unk_100ECD318, v17);
}

uint64_t sub_100452234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004522D0, v8, v7);
}

uint64_t sub_1004522D0()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100450CD8(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100452348(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_100452234(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_100452480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Collaboration.Flow.View(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004524E4(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100452540(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004525B0()
{
  result = qword_1011A4800;
  if (!qword_1011A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4800);
  }

  return result;
}

uint64_t sub_100452604(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10045262C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100452654()
{
  result = qword_1011906B0;
  if (!qword_1011906B0)
  {
    type metadata accessor for MusicCollaborativePlaylist.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011906B0);
  }

  return result;
}

uint64_t sub_1004526AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10045071C(a1, v4, v5, v1 + 32);
}

uint64_t sub_10045275C()
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100030444(v1);
  return v1;
}

uint64_t sub_1004527E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_100030444(a2);
  return sub_100020438(v3);
}

uint64_t sub_10045282C()
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1004528A0(uint64_t a1)
{
  if (sub_100190304(*(v1 + 32), a1))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004530DC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

__n128 sub_1004529B0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1004530DC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 72);
  result = *(v1 + 81);
  *(a1 + 41) = result;
  return result;
}

uint64_t sub_100452A3C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 64);
  v4 = *(result + 24);
  v5 = v4 & 0xFF0000;
  if ((v3 & 0xFF0000) != 0x20000)
  {
    if (v5 == 0x20000)
    {
      goto LABEL_7;
    }

    v14 = *result;
    v6 = *(result + 16);
    v17[0] = *(result + 32);
    *(v17 + 9) = *(result + 41);
    v15 = v6;
    v16 = v4;
    v10 = *(v1 + 40);
    v7 = *(v1 + 56);
    v13[0] = *(v1 + 72);
    *(v13 + 9) = *(v1 + 81);
    v11 = v7;
    v12 = v3;
    result = static HI.Grid.Metrics.__derived_struct_equals(_:_:)(&v10, &v14);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = v2[1];
    *(v1 + 40) = *v2;
    *(v1 + 56) = v8;
    *(v1 + 72) = v2[2];
    *(v1 + 81) = *(v2 + 41);
    return result;
  }

  if (v5 == 0x20000)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1004530DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100452BA0()
{
  sub_100020438(*(v0 + 16));

  v1 = OBJC_IVAR____TtCV5Music12SearchHeader13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s13ConfigurationCMa_1()
{
  result = qword_1011906E8;
  if (!qword_1011906E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100452CA0()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100452D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  sub_100452FB8(a1, v19 - v9);
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100453028(v10);
LABEL_6:
    v14 = &off_10109AE90;
    goto LABEL_7;
  }

  v13 = Playlist.supportsSing.getter();
  (*(v12 + 8))(v10, v11);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = &off_10109AE68;
LABEL_7:
  v15 = sub_10010E594(v14);
  _s13ConfigurationCMa_1();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0x20000;
  *(v16 + 80) = 0;
  *(v16 + 88) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  ObservationRegistrar.init()();
  *(v16 + 32) = v15;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v19[-4] = v16;
  v19[-3] = a2;
  v19[-2] = a3;
  v19[1] = v16;
  sub_100030444(a2);
  sub_1004530DC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(a2);

  sub_100452A3C(a4);
  sub_100453028(a1);
  return v16;
}

uint64_t sub_100452FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453028(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011814D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100453090()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_100030444(v1);
  return sub_100020438(v4);
}

unint64_t sub_1004530DC()
{
  result = qword_101190850;
  if (!qword_101190850)
  {
    _s13ConfigurationCMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190850);
  }

  return result;
}

__n128 sub_100453134()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v1 + 81) = *(v2 + 41);
  *(v1 + 72) = v5;
  *(v1 + 56) = v4;
  *(v1 + 40) = result;
  return result;
}

uint64_t sub_100453158()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

void sub_100453194(char a1)
{
  v2 = OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType;
  if (v1[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] == a1)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  v6 = [v5 cgColor];
  v7 = v5;
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v6;
  v9 = [v3 blackColor];
  v10 = [v9 cgColor];
  v11 = v9;
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = v10;
  if (v1[v2])
  {
    if (v1[v2] == 1)
    {
      v13 = [objc_allocWithZone(CAGradientLayer) init];
      sub_10010FC20(&qword_101183990);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100EBC6C0;
      v15 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v16) = 1045220557;
      LODWORD(v17) = 1061997773;
      LODWORD(v18) = 1.0;
      *(v14 + 32) = [v15 initWithControlPoints:0.0 :v16 :v18 :v17];
      sub_100009F78(0, &qword_1011908A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 setInterpolations:isa];

      v20 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
      *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = v13;
      v21 = v13;

      sub_10010FC20(&qword_101181530);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100EBDC20;
      type metadata accessor for CGColor(0);
      *(v22 + 32) = v12;
      *(v22 + 88) = v23;
      *(v22 + 56) = v23;
      *(v22 + 64) = v8;
    }

    else
    {
      v25 = [objc_allocWithZone(CAGradientLayer) init];
      sub_10010FC20(&qword_101183990);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100EBC6C0;
      v27 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v28) = 1045220557;
      LODWORD(v29) = 1061997773;
      LODWORD(v30) = 1.0;
      *(v26 + 32) = [v27 initWithControlPoints:0.0 :v28 :v30 :v29];
      sub_100009F78(0, &qword_1011908A0);
      v31 = Array._bridgeToObjectiveC()().super.isa;

      [v25 setInterpolations:v31];

      v32 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
      *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = v25;
      v21 = v25;

      sub_10010FC20(&qword_101181530);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100EBDC20;
      type metadata accessor for CGColor(0);
      *(v33 + 32) = v8;
      *(v33 + 88) = v34;
      *(v33 + 56) = v34;
      *(v33 + 64) = v12;
    }

    v35 = v12;
    v36 = v8;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setColors:v24];
  }

  else
  {
    v24 = *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
    *&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = 0;
  }

  v37 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMask:*&v1[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer]];
}

id sub_1004535E4(int a1, id a2)
{
  v3 = [a2 traitCollection];
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  v5 = &selRef_clearColor;
  if ((v4 & 1) == 0)
  {
    v6 = [a2 layer];
    objc_opt_self();
    v7 = [swift_dynamicCastObjCClassUnconditional() captureOnly];

    if (!v7)
    {
      v5 = &selRef_systemBackgroundColor;
    }
  }

  v8 = [objc_opt_self() *v5];

  return v8;
}

void sub_1004537C0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BackdropView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC5Music12BackdropView_overlayView];
  [v0 bounds];
  [v3 setFrame:?];
}

void sub_1004538E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music12BackdropView_overlayView);
}

id sub_100453928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004539E0()
{
  result = qword_101190898;
  if (!qword_101190898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190898);
  }

  return result;
}

char *sub_100453A34()
{
  v0[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 0;
  *&v0[OBJC_IVAR____TtC5Music12BackdropView_gradientLayer] = 0;
  v1 = OBJC_IVAR____TtC5Music12BackdropView_overlayView;
  type metadata accessor for PassthroughView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BackdropView();
  v2 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC5Music12BackdropView_overlayView;
  v4 = *&v2[OBJC_IVAR____TtC5Music12BackdropView_overlayView];
  v5 = v2;
  [v5 addSubview:v4];
  v6 = [v5 traitCollection];

  v7 = [v6 userInterfaceIdiom];
  v8 = [v5 layer];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  if (v7 == 6)
  {
    v10 = [objc_opt_self() blackColor];
    v11 = [v10 CGColor];

    [v9 setBackgroundColor:v11];
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();
    [v9 setGroupName:v12];

    v13 = *&v2[v3];
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    v15 = objc_allocWithZone(UIColor);
    v19[4] = sub_100453CEC;
    v19[5] = v14;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10003640C;
    v19[3] = &unk_1010ACA98;
    v16 = _Block_copy(v19);
    v17 = v5;
    v8 = v13;
    v11 = [v15 initWithDynamicProvider:v16];
    _Block_release(v16);

    [v8 setBackgroundColor:v11];
  }

  return v5;
}

uint64_t sub_100453CF4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  v4 = *(v2 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  v5 = *(v2 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  v7 = sub_1004541CC();
  if (v3[1])
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  v9 = sub_100454100();
  Artwork.View.invalidatePlaceholderView()();

LABEL_14:
}

id sub_100453DF0()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_100453E54(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100453E54(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = UIView.forAutolayout.getter();

  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  [v3 setBackgroundColor:v6];
  v7 = [v3 layer];
  v8 = [a1 traitCollection];
  [v8 displayScale];
  v10 = v9;

  [v7 setBorderWidth:1.0 / v10];
  v11 = [v3 layer];
  v12 = [v4 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.04];

  v14 = [v13 CGColor];
  [v11 setBorderColor:v14];

  v15 = [v3 layer];
  [v15 setShadowOffset:{0.0, 2.0}];

  v16 = [v3 layer];
  v17 = [v4 blackColor];
  v18 = [v17 colorWithAlphaComponent:0.02];

  v19 = [v18 CGColor];
  [v16 setShadowColor:v19];

  v20 = [v3 layer];
  [v20 setShadowPathIsBounds:1];

  return v3;
}

char *sub_100454100()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView;
  v6 = *(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView);
  }

  else
  {
    Artwork.init()(v4);
    v8 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
    v9 = Artwork.View.init(configuration:)(v4);
    v10 = *(v1 + v5);
    *(v1 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

id sub_1004541CC()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel);
  }

  else
  {
    v4 = sub_10045422C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10045422C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = UIView.forAutolayout.getter();

  sub_100009F78(0, &qword_101183A00);
  v2 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v1 setFont:v2];

  v3 = v1;
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  return v3;
}

char *sub_10045431C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork] = 0;
  v13 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v4[v13] = swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel] = 0;
  v14 = type metadata accessor for NowPlayingAttributionView();
  v70.receiver = v4;
  v70.super_class = v14;
  v15 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  v16 = sub_100453DF0();
  [v15 addSubview:v16];

  v17 = sub_100454100();
  v18 = UIView.forAutolayout.getter();

  [v15 addSubview:v18];
  v19 = sub_1004541CC();
  [v15 addSubview:v19];

  v20 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView;
  v21 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView];
  v69 = v15;
  v22 = v21;
  static Artwork.with(_:)(sub_1001D1CCC, v11);
  Artwork.View.typedConfiguration.setter(v11);

  v68 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100ECD4F0;
  v24 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView;
  v25 = [*&v15[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView] topAnchor];
  v26 = [v15 topAnchor];

  v27 = [v25 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [*&v15[v24] bottomAnchor];
  v29 = [v15 bottomAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v23 + 40) = v30;
  v31 = [*&v15[v24] trailingAnchor];
  v32 = [v15 trailingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v23 + 48) = v33;
  v34 = [*&v15[v24] leadingAnchor];
  v35 = [v15 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  *(v23 + 56) = v36;
  v37 = [*&v15[v20] leadingAnchor];
  v38 = [v15 leadingAnchor];

  v39 = [v37 constraintEqualToAnchor:v38 constant:4.0];
  *(v23 + 64) = v39;
  v40 = [*&v15[v20] topAnchor];
  v41 = [v15 topAnchor];

  v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
  *(v23 + 72) = v42;
  v43 = [*&v15[v20] bottomAnchor];
  v44 = [v15 bottomAnchor];

  v45 = [v43 constraintEqualToAnchor:v44 constant:-4.0];
  *(v23 + 80) = v45;
  v46 = [*&v15[v20] heightAnchor];
  v47 = [*&v15[v20] widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v23 + 88) = v48;
  v49 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel;
  v50 = [*&v15[OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel] centerYAnchor];
  v51 = [v15 centerYAnchor];

  v52 = [v50 constraintEqualToAnchor:v51];
  *(v23 + 96) = v52;
  v53 = [*&v15[v49] topAnchor];
  v54 = [v15 topAnchor];

  v55 = [v53 constraintEqualToAnchor:v54 constant:2.0];
  *(v23 + 104) = v55;
  v56 = [*&v15[v49] bottomAnchor];
  v57 = [v15 bottomAnchor];

  v58 = [v56 constraintEqualToAnchor:v57 constant:-2.0];
  *(v23 + 112) = v58;
  v59 = [*&v15[v49] leadingAnchor];
  v60 = [*&v15[v20] trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:5.0];

  *(v23 + 120) = v61;
  v62 = [*&v15[v49] trailingAnchor];
  v63 = [v15 trailingAnchor];

  v64 = [v62 constraintEqualToAnchor:v63 constant:-10.0];
  *(v23 + 128) = v64;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];

  return v15;
}

void sub_100454B2C()
{
  v1 = type metadata accessor for UIView.Corner.Radius();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NowPlayingAttributionView();
  v12.receiver = v0;
  v12.super_class = v8;
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v9 = sub_100453DF0();
  [v0 frame];
  *v4 = v10 * 0.5;
  *(v4 + 8) = 1;
  (*(v2 + 104))(v4, enum case for UIView.Corner.Radius.value(_:), v1);
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v11 = type metadata accessor for UIView.Corner();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  UIView.corner.setter();
}

uint64_t sub_100454D38(void **a1, char *a2)
{
  v4 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-1] - v5;
  v7 = *&a2[OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork];
  v8 = v7;
  v9 = Artwork.Content.init(catalog:background:)(v7, 0);
  v11 = v10;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v9;
  a1[1] = v11;
  static UIView.Corner.rounded.getter();
  v12 = type metadata accessor for UIView.Corner();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = type metadata accessor for Artwork(0);
  v14 = (a1 + *(v13 + 28));
  v15 = type metadata accessor for Artwork.Decoration(0);
  sub_10006B010(v6, v14 + *(v15 + 20), &qword_101183A90);
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
  UIView.Border.init(thickness:color:)();
  v17 = v16;
  v19 = v18;
  v21 = (v20 & 1);

  *v14 = v17;
  v14[1] = v21;
  v14[2] = v19;

  Artwork.Caching.init(reference:)(v26);
  sub_10006B010(v26, (a1 + 2), &qword_101190910);
  v22 = (a1 + *(v13 + 36));
  v23 = a2;
  result = swift_unknownObjectRelease();
  *v22 = a2;
  v22[1] = &off_1010ACAC0;
  return result;
}

id sub_100454F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingAttributionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10045500C(void *a1)
{
  if (a1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = a1;
  }

  else
  {
    v6 = [objc_opt_self() defaultSettings];
    v4 = [objc_allocWithZone(CNAvatarView) initWithSettings:v6];
  }

  sub_10010FC20(&qword_101183990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6C0;
  if (*(v1 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName + 8))
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() contactWithDisplayName:v8 handleStrings:0];

  *(v7 + 32) = v9;
  sub_100009F78(0, &qword_101190908);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setContacts:isa];

  return v4;
}

void sub_1004551A0()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_displayName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artwork) = 0;
  v2 = OBJC_IVAR____TtC5Music25NowPlayingAttributionView_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v0 + v2) = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25NowPlayingAttributionView____lazy_storage___displayNameLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100455260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1004552A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100455300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryMusicMovieFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100455348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v148 = a2;
  v142 = type metadata accessor for Logger();
  v114 = *(v142 - 8);
  __chkstk_darwin(v142);
  v115 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for UploadedVideo();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v111 = &v109 - v5;
  v135 = sub_10010FC20(&qword_101180370);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v109 - v6;
  v133 = type metadata accessor for MusicMovie();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10010FC20(&qword_10118CEE8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v109 - v8;
  v124 = type metadata accessor for MusicVideo();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v10 - 8);
  v117 = &v109 - v11;
  v119 = sub_10010FC20(&qword_10118A3B0);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v137 = &v109 - v12;
  v128 = type metadata accessor for Playlist();
  v120 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101188E88);
  v139 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v109 - v15;
  v138 = type metadata accessor for Album();
  v150 = *(v138 - 8);
  __chkstk_darwin(v138);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecentlyAddedMusicItem();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v141 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v136 = &v109 - v23;
  __chkstk_darwin(v24);
  v109 = &v109 - v25;
  __chkstk_darwin(v26);
  v28 = &v109 - v27;
  v29 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v29 - 8);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v129 = &v109 - v33;
  __chkstk_darwin(v34);
  v36 = &v109 - v35;
  __chkstk_darwin(v37);
  v116 = &v109 - v38;
  __chkstk_darwin(v39);
  v41 = &v109 - v40;
  __chkstk_darwin(v42);
  v44 = &v109 - v43;
  v45 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v149 = v44;
  v48 = v44;
  v49 = v20;
  v147 = v45;
  v146 = v47;
  v145 = v46 + 56;
  (v47)(v48, 1, 1);
  v50 = *(v20 + 16);
  v144 = v20 + 16;
  v143 = v50;
  v50(v28, v152, v19);
  v51 = (*(v20 + 88))(v28, v19);
  v140 = v20;
  if (v51 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v20 + 96))(v28, v19);
    v52 = v28;
    v53 = v138;
    (*(v150 + 32))(v18, v52, v138);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    swift_getKeyPath();
    LOBYTE(v156[0]) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    *(&v157 + 1) = v14;
    *&v158 = sub_100457744(&qword_101188E90, &qword_101188E88);
    v54 = sub_10001C8B8(v156);
    v55 = v139;
    (*(v139 + 16))(v54, v16, v14);
    v155 = 0;
    v154 = 0u;
    v153 = 0u;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v55 + 8))(v16, v14);
    (*(v150 + 8))(v18, v53);
LABEL_7:
    v83 = v149;
    sub_1000095E8(v149, &unk_10118CDB0);
    goto LABEL_16;
  }

  if (v51 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v20 + 96))(v28, v19);
    v56 = v132;
    v57 = v130;
    v58 = v28;
    v59 = v133;
    (*(v132 + 32))(v130, v58, v133);
    type metadata accessor for TitledSection();
    sub_10003DB40(&qword_1011800D8, &type metadata accessor for MusicMovie);
    v60 = v131;
    MusicLibrarySectionedRequest.init()();

    v61 = v135;
    MusicLibrarySectionedRequest.library.setter();
    swift_getKeyPath();
    v156[0] = MusicMovie.id.getter();
    v156[1] = v62;
    MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

    *(&v157 + 1) = v61;
    *&v158 = sub_100457744(&qword_1011803D8, &qword_101180370);
    v63 = sub_10001C8B8(v156);
    v64 = v134;
    (*(v134 + 16))(v63, v60, v61);
    v155 = 0;
    v154 = 0u;
    v153 = 0u;
    v65 = v129;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v64 + 8))(v60, v61);
    (*(v56 + 8))(v57, v59);
    v83 = v149;
    sub_1000095E8(v149, &unk_10118CDB0);
    v41 = v65;
LABEL_16:
    v146(v41, 0, 1, v147);
    sub_1003FAC48(v41, v83);
    return sub_1003FAC48(v83, v148);
  }

  if (v51 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v20 + 96))(v28, v19);
    v66 = v123;
    v67 = v121;
    v68 = v28;
    v69 = v124;
    (*(v123 + 32))(v121, v68, v124);
    type metadata accessor for TitledSection();
    v70 = v122;
    MusicLibrarySectionedRequest.init()();

    v71 = v126;
    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
    *(&v157 + 1) = v71;
    *&v158 = sub_100457744(&qword_101190A00, &qword_10118CEE8);
    v72 = sub_10001C8B8(v156);
    v73 = v125;
    (*(v125 + 16))(v72, v70, v71);
    v155 = 0;
    v154 = 0u;
    v153 = 0u;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v73 + 8))(v70, v71);
    (*(v66 + 8))(v67, v69);
    v83 = v149;
    sub_1000095E8(v149, &unk_10118CDB0);
    v41 = v36;
    goto LABEL_16;
  }

  if (v51 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v20 + 96))(v28, v19);
    (*(v120 + 32))(v127, v28, v128);
    type metadata accessor for Playlist.Entry();
    MusicLibrarySectionedRequest.init()();

    v74 = v119;
    MusicLibrarySectionedRequest.library.setter();
    KeyPath = swift_getKeyPath();
    if (qword_10117F5D0 != -1)
    {
      swift_once();
    }

    v76 = qword_101218AB0;
    v77 = *(qword_101218AB0 + 16);
    if (!v77)
    {
      v82 = v128;
      goto LABEL_20;
    }

    v150 = KeyPath;
    v78 = sub_1003ADCE4(v77, 0);
    v79 = *(type metadata accessor for Playlist.Variant() - 8);
    v80 = sub_1001975FC(v156, &v78[(*(v79 + 80) + 32) & ~*(v79 + 80)], v77, v76);

    result = sub_10005C9F8();
    if (v80 == v77)
    {
      v74 = v119;
      v82 = v128;
LABEL_20:
      sub_10003DB40(&qword_10118A3C0, &type metadata accessor for Playlist.Variant);
      MusicLibrarySectionedRequest<>.filterSections<A>(matching:memberOf:)();

      swift_getKeyPath();
      v87 = v120;
      v88 = v117;
      v89 = v127;
      (*(v120 + 16))(v117, v127, v82);
      (*(v87 + 56))(v88, 0, 1, v82);
      sub_10003DB40(&qword_101186EC0, &type metadata accessor for Playlist);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      sub_1000095E8(v88, &unk_1011814D0);
      type metadata accessor for PlaylistSortingController();
      static PlaylistSortingController.apply(for:to:)(v89);
      v90 = v137;
      *(&v157 + 1) = v74;
      *&v158 = sub_100457744(&qword_1011831B8, &qword_10118A3B0);
      v91 = sub_10001C8B8(v156);
      v92 = v118;
      (*(v118 + 16))(v91, v90, v74);
      v155 = 0;
      v154 = 0u;
      v153 = 0u;
      v41 = v116;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      (*(v92 + 8))(v90, v74);
      (*(v87 + 8))(v127, v128);
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    if (v51 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      sub_1000095E8(v149, &unk_10118CDB0);
      v146(v148, 1, 1, v147);
      return (*(v20 + 8))(v28, v19);
    }

    if (v51 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v20 + 96))(v28, v19);
      v84 = v112;
      v85 = v111;
      v86 = v113;
      (*(v112 + 32))(v111, v28, v113);
      (*(v84 + 16))(v110, v85, v86);
      sub_10003DB40(&qword_101181148, &type metadata accessor for UploadedVideo);
      MusicPlaybackIntentDescriptor.init<A>(item:)();
      (*(v84 + 8))(v85, v86);
      v83 = v149;
      sub_1000095E8(v149, &unk_10118CDB0);
      v41 = v31;
      goto LABEL_16;
    }

    v93 = Logger.musicKit.unsafeMutableAddressor();
    v94 = v114;
    (*(v114 + 16))(v115, v93, v142);
    v95 = v109;
    v96 = v19;
    v97 = v143;
    v143(v109, v152, v19);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v151 = v99;
      v101 = v100;
      v152 = swift_slowAlloc();
      v156[0] = v152;
      *v101 = 136315138;
      v97(v136, v95, v19);
      v102 = String.init<A>(describing:)();
      v104 = v103;
      v105 = *(v49 + 8);
      v105(v95, v19);
      v106 = v105;
      v96 = v19;
      v107 = sub_1000105AC(v102, v104, v156);

      *(v101 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v98, v151, "Unknown Recently Added Item=%s", v101, 0xCu);
      sub_10000959C(v152);

      v108 = v106;
      (*(v114 + 8))(v115, v142);
    }

    else
    {

      v108 = *(v49 + 8);
      v108(v95, v19);
      (*(v94 + 8))(v115, v142);
    }

    sub_1000095E8(v149, &unk_10118CDB0);
    v146(v148, 1, 1, v147);
    return (v108)(v28, v96);
  }

  return result;
}

uint64_t sub_100456F68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t sub_100456FC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTrackSortProperties.title.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100457040(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

void sub_100457090(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10003DB40(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

uint64_t sub_1004572D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for RecentlyAddedMusicItem();
  sub_10003DB40(&qword_10118CFF8, &type metadata accessor for RecentlyAddedMusicItem);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFF0);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  MusicLibrarySectionedRequest.filterItems(text:)(v4);
  MusicLibrarySectionedRequest.limit.setter();
  if (v1 == 1)
  {
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    return MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.setter();
  }

  else
  {
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
  }
}

Swift::Int sub_10045745C()
{
  Hasher.init(_seed:)();
  sub_100457090(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004574A0()
{
  Hasher.init(_seed:)();
  sub_100457090(v1);
  return Hasher._finalize()();
}

uint64_t sub_1004574DC(uint64_t a1, uint64_t a2)
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
  return sub_100457548(v11, v13) & 1;
}

uint64_t sub_100457548(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 41);
  v12 = *(a2 + 41);
  if (sub_1006B8B0C(*(a1 + 40), *(a2 + 40)) & 1) == 0 || ((v11 ^ v12))
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10047B908(*(a1 + 64), *(a2 + 64)) & 1) == 0 || (sub_10018FCA0(*(a1 + 72), *(a2 + 72)) & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 96);
  v14 = *(a2 + 96);

  return sub_10047BC00(v13, v14);
}

uint64_t sub_1004576F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_100457744(unint64_t *a1, uint64_t *a2)
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

char *sub_100457798(char a1, char a2)
{
  v3 = v2;
  v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode] = a1 & 1;
  if (a1)
  {
    v5 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
    v6 = &off_1010ACCF0;
  }

  else
  {
    v5 = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
    v6 = &off_1010ACD48;
  }

  v7 = [objc_allocWithZone(v5) init];
  v8 = &v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  *v8 = v7;
  v8[1] = v6;
  v9 = objc_allocWithZone(type metadata accessor for LibraryArtistsListViewController());
  *&v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController] = sub_100766448(a2 & 1);
  v23.receiver = v3;
  v23.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v10 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v11 = &v10[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v12 = *&v10[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v13 = v10;
  v14 = v12;
  UIViewController.add(_:)(v14);

  [*v11 didMoveToParentViewController:v13];
  v15 = *v11;
  v16 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v18 = *&v13[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController];
  v19 = *(v16 + 32);
  v20 = v15;
  v21 = v18;
  v19(v18, ObjectType, v16);

  UIViewController.playActivityFeatureIdentifier.setter(2);
  return v13;
}

void sub_1004579BC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode);
  *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutMode) = a1 & 1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
      v4 = &off_1010ACCF0;
    }

    else
    {
      v3 = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
      v4 = &off_1010ACD48;
    }

    v5 = [objc_allocWithZone(v3) init];
    v6 = (v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
    v7 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
    v10 = *(v1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
    *v6 = v5;
    v6[1] = v4;
    v8 = v5;
    v9.super.super.isa = v10;
    sub_1004583A4(v9, v7);
  }
}

void sub_100457A94()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
LABEL_4:
    v6 = OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer;
    v7 = [*&v0[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer] view];
    if (v7)
    {
      v8 = v7;
      v9 = [v0 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        [v8 setFrame:{v12, v14, v16, v18}];
        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v21 = [*&v0[v6] view];
          if (v21)
          {
            v22 = v21;
            [v20 addSubview:v21];

            return;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    goto LABEL_4;
  }

LABEL_13:
  __break(1u);
}

void sub_100457CDC()
{
  v33[0].receiver = v0;
  v33[0].super_class = type metadata accessor for LibraryArtistsContainerViewController();
  [(objc_super *)v33 viewDidLayoutSubviews];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 != 2)
  {
LABEL_7:
    v21 = [*&v0[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer] view];
    if (v21)
    {
      v22 = v21;
      v23 = [v0 view];
      if (v23)
      {
        v24 = v23;
        memset(&v33[1], 0, 32);
        v34 = 1;
        CGRect.applyingLayoutDirection(in:bounds:)();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        [v22 setFrame:{v26, v28, v30, v32}];
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 safeAreaInsets];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 safeAreaInsets];

  v17 = [v0 view];
  if (v17)
  {
    v18 = v17;
    [v17 effectiveUserInterfaceLayoutDirection];

    UIEdgeInsets.applyingLayoutDirection(_:)();
    sub_100058728(v4, v6, v8, v10, v19, v20);
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
}

void sub_100457FA8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  type metadata accessor for ApplicationMainMenu();
  v10 = sub_100314AEC();
  if (v10)
  {
    v11 = v10;
    a5(v9, v10);
  }
}

id sub_1004580FC(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for LibraryArtistsContainerViewController();
  result = objc_msgSendSuper2(&v6, "didMoveToParentViewController:", a1);
  if (a1)
  {
    sub_10010FC20(&unk_101182D80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6B0;
    *(v4 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v4 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101183D40);
    v5 = a1;
    UIViewController.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100458220(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong parentViewController];

    if (v4)
    {
      sub_100009F78(0, &qword_101183D40);
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        swift_beginAccess();
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          v9 = [v5 traitCollection];
          v10 = sub_10045B524(v9);

          sub_1004579BC(v10 & 1);
        }
      }
    }
  }
}

void sub_1004583A4(UIViewController a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  v7 = *&v2[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer];
  ObjectType = swift_getObjectType();
  if (v7 != a1.super.super.isa)
  {
    v9 = ObjectType;
    v10 = (*(a2 + 48))(ObjectType, a2);
    (*(a2 + 32))(0, v9, a2);
    if (v10)
    {
      v43[0] = a1.super.super.isa;
      v11 = *(*(a2 + 8) + 24);
      v12 = v10;
      v13 = v11(v12);
    }

    UIViewController.remove(_:)(a1);
    v14 = *v6;
    v15 = *(v6 + 1);
    v16 = swift_getObjectType();
    v17 = *&v3[OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController];
    v18 = *(v15 + 32);
    v19 = v14;
    v20 = v17;
    v18(v17, v16, v15);

    v21 = *v6;
    UIViewController.add(_:)(v21);

    if (![v3 isViewLoaded])
    {
      goto LABEL_10;
    }

    v22 = [*v6 view];
    if (v22)
    {
      v23 = v22;
      [v22 setAutoresizingMask:18];

      v24 = [*v6 view];
      if (v24)
      {
        v25 = v24;
        v26 = [v3 view];
        if (v26)
        {
          v27 = v26;
          [v26 bounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          [v25 setFrame:{v29, v31, v33, v35}];
          v36 = [v3 view];
          if (v36)
          {
            v37 = v36;
            [v36 layoutIfNeeded];

LABEL_10:
            if (v10)
            {
              v38 = [objc_opt_self() sharedApplication];
              v39 = swift_allocObject();
              *(v39 + 16) = v3;
              *(v39 + 24) = v10;
              v43[4] = sub_10045BB2C;
              v43[5] = v39;
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 1107296256;
              v43[2] = sub_10002BC98;
              v43[3] = &unk_1010ACDD0;
              v40 = _Block_copy(v43);
              v41 = v10;
              v42 = v3;

              [v38 _performBlockAfterCATransactionCommits:v40];
              _Block_release(v40);
            }

            return;
          }

LABEL_16:
          __break(1u);
          return;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_1004586F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
  v5 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
  ObjectType = swift_getObjectType();
  v7 = *(a1 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_artistListViewController);
  v8 = *(v5 + 8);
  v9 = *(v8 + 16);
  v10 = v4;
  v9(a2, v7, 0, ObjectType, v8);
}

void sub_1004589E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LibraryArtistsContainerViewController.PlainLayoutContainer();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
    if (v1)
    {
      v2 = [v1 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 view];
        if (v4)
        {
          v5 = v4;
          [v4 bounds];
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          [v3 setFrame:{v7, v9, v11, v13}];
          [v3 setAutoresizingMask:18];
          v14 = [v0 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview:v3];

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void sub_100458B70(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController;
  v6 = *&v2[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
  if (v6)
  {
    if (v6 == a1)
    {
      return;
    }

    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else if (!a1)
  {
    return;
  }

  v7 = a1;
  UIViewController.remove(_:)(v7);

  v6 = *&v2[v5];
  if (!v6)
  {
    return;
  }

LABEL_7:
  v8 = v6;
  UIViewController.traitOverrides.getter();
  sub_10045B4D0();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  UIViewController.add(_:)(v8);
  if (![v2 isViewLoaded])
  {
    goto LABEL_13;
  }

  v9 = *&v2[v5];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = [v9 view];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v2 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame:{v15, v17, v19, v21}];
  [v11 setAutoresizingMask:18];
  v22 = [v2 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 addSubview:v11];

LABEL_13:
}

uint64_t sub_100458D84(void *a1, id a2, char a3)
{
  v4 = v3;
  result = [v3 navigationController];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController];
  if (!a2)
  {
    if (v10)
    {
      goto LABEL_30;
    }

    v14 = 0;
    goto LABEL_8;
  }

  if (!v10)
  {
    v23 = 0;
    goto LABEL_30;
  }

  sub_100009F78(0, &qword_101183D40);
  v11 = v10;
  v12 = a2;
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
LABEL_8:
    v35 = a1;
    v34 = a3;
    v15 = [v9 viewControllers];
    sub_100009F78(0, &qword_101183D40);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
LABEL_37:
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    while (1)
    {
      if (v17 == v18)
      {

        return 0;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = sub_10004056C(v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = UIViewController.isDescendant(of:)(v19);

      if (v21)
      {
        break;
      }

      if (__OFADD__(v18++, 1))
      {
        goto LABEL_36;
      }
    }

    type metadata accessor for LibraryArtistDetailViewController(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = *&v4[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController];
    *&v4[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController] = v24;
    v27 = v35;

    v28 = [v9 viewControllers];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v30, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= v30 - 1)
      {
        [v9 navigateTo:v27 from:a2 animated:v34 & 1];

        goto LABEL_34;
      }

      a2 = v27;
      v31 = [v9 viewControllers];
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v32 >> 62))
      {
        result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result > v18)
        {
LABEL_29:
          sub_1003BB868(v18 + 1, v18 + 1, v25);

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v9 setViewControllers:isa];

LABEL_34:
          return 1;
        }

LABEL_41:
        __break(1u);
        return result;
      }
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result > v18)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_30:

  return 0;
}

id sub_100459108(void *a1, char a2)
{
  v3 = v2;
  result = [v3 navigationController];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController;
    v9 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController];
    if (v9 && (sub_100009F78(0, &qword_101183D40), v10 = a1, v11 = v9, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
    {
      v13 = *&v3[v8];
      *&v3[v8] = 0;

      v14 = [v7 drop:v10 animated:a2 & 1];
      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1004592C4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_artistListViewController);
  v2 = v1;
  return v1;
}

void *sub_100459314()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F20PlainLayoutContainer_navigatedArtistDetailViewController);
  v2 = v1;
  return v1;
}

id sub_100459390()
{
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController] = 0;
  *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v1 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  v2 = [v1 navigationItem];
  if ((sub_10005A544() & 1) == 0)
  {
    if (qword_10117FD70 != -1)
    {
      swift_once();
    }

    v3 = qword_1011A3E60;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    objc_setAssociatedObject(v2, v3, isa, 3);
  }

  return v1;
}

void sub_100459554(void *a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController);
  if (v4)
  {
    if (v4 != a1)
    {
      v5 = v4;
      UIViewController.traitOverrides.getter();
      sub_10045B4D0();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIViewController.traitOverrides.setter();
      v6 = objc_allocWithZone(sub_10010FC20(&qword_101190B60));
      v7 = v5;
      v8 = sub_10045AB44(v7, &qword_101190B60);
      v9 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
      *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController) = v8;
      v10 = v8;
      sub_10045A3F4(v9);
    }
  }

  else if (a1)
  {
    v11 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
    *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController) = 0;
    sub_10045A3F4(v11);
  }
}

void sub_1004596F4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = v3;
    v5 = [v2 view];
    if (!v5)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v6 = v5;
    [v4 addSubview:v5];
  }

  v7 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
  if (!v7)
  {
LABEL_9:
    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10045A340();
      [v14 addSubview:v15];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v8 view];
  if (v11)
  {
    v12 = v11;
    [v10 addSubview:v11];

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1004598BC(char a1)
{
  v3 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v23.receiver = v1;
  v23.super_class = v13;
  objc_msgSendSuper2(&v23, "viewWillAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController;
  v15 = *&v1[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController];
  if (!v15)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_5;
  }

  v16 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  sub_1000089F8(v15 + v16, v5, &unk_101184930);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_1000095E8(v5, &unk_101184930);
    goto LABEL_6;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  v17 = [v1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  LOBYTE(v17) = sub_10049CB78();

  v18 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
  v19 = sub_1001FAE8C(v9, v17 & 1);
  v20 = *&v1[v14];
  v21 = v20;
  sub_10016EEEC(v19, v20, 0, v1);

  (*(v7 + 8))(v12, v6);
LABEL_6:
  sub_10045A73C();
}

void sub_100459C10()
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer();
  v99.receiver = v0;
  v99.super_class = v2;
  objc_msgSendSuper2(&v99, "viewDidLayoutSubviews");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10045A1F0(&v96, v6, v8, v10, v12);
  v13 = *(&v96 + 1);
  v14 = *&v96;
  v16 = *(&v97 + 1);
  v15 = *&v97;
  v17 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v17)
  {
    v18 = [v17 view];
    if (!v18)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v19 = v18;
    v20 = [v0 view];
    if (!v20)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v21 = v20;
    v97 = 0u;
    v96 = 0u;
    v98 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v23 = v22;
    v24 = v16;
    v25 = v15;
    v26 = v13;
    v27 = v14;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = v29;
    v14 = v27;
    v13 = v26;
    v15 = v25;
    v16 = v24;
    [v19 setFrame:{v23, v34, v31, v33}];
  }

  v35 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v36 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
  if (v36)
  {
    v37 = [v36 view];
    if (!v37)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v38 = v37;
    v39 = v14;
    v40 = [v0 view];
    if (!v40)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v41 = v40;
    v103 = 0u;
    v104 = 0u;
    v105 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v38 setFrame:{v43, v45, v47, v49}];
    v14 = v39;
  }

  v50 = sub_10045A340();
  v106.origin.x = v14;
  v106.origin.y = v13;
  v106.size.width = v15;
  v106.size.height = v16;
  CGRectGetMaxX(v106);
  v51 = [v0 view];
  if (!v51)
  {
    goto LABEL_19;
  }

  v52 = v51;
  [v51 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v107.origin.x = v54;
  v107.origin.y = v56;
  v107.size.width = v58;
  v107.size.height = v60;
  CGRectGetMinY(v107);
  v61 = [v0 traitCollection];
  [v61 displayScale];

  v62 = [v0 view];
  if (!v62)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v63 = v62;
  [v62 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v108.origin.x = v65;
  v108.origin.y = v67;
  v108.size.width = v69;
  v108.size.height = v71;
  CGRectGetHeight(v108);
  v72 = [v0 view];
  if (!v72)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v73 = v72;
  v100 = 0u;
  v101 = 0u;
  v102 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;

  [v50 setFrame:{v75, v77, v79, v81}];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v83 = v82;
  [v82 bringSubviewToFront:*&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator]];

  v84 = *&v0[v35];
  if (!v84)
  {
    return;
  }

  v85 = v84;
  v86 = [v85 view];
  if (!v86)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v87 = v86;
  [v86 frame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;

  v109.origin.x = v89;
  v109.origin.y = v91;
  v109.size.width = v93;
  v109.size.height = v95;
  CGRectGetWidth(v109);
  UIViewController.traitOverrides.getter();
  UIMutableTraits.horizontalSizeClass.setter();
  UIViewController.traitOverrides.setter();
}

void sub_10045A1F0(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v11 = [v5 traitCollection];
  [v11 displayScale];

  CGFloat.floorValue(scale:)();
  v13 = v12;
  v14 = [objc_opt_self() defaultMetrics];
  [v14 scaledValueForValue:366.0];
  v16 = v15;

  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&v21, 0, sizeof(v21));
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectDivide(v23, &slice, &v21, v17, CGRectMinXEdge);
  origin = v21.origin;
  size = v21.size;
  v20 = slice.size;
  *a1 = slice.origin;
  *(a1 + 16) = v20;
  *(a1 + 32) = origin;
  *(a1 + 48) = size;
}

id sub_10045A340()
{
  v1 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer____lazy_storage___verticalSeparator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10045A3F4(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  v5 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController;
  v6 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController);
  if (v6)
  {
    if (!a1)
    {
LABEL_7:
      v10 = v6;
      UIViewController.traitOverrides.getter();
      UIMutableTraits.horizontalSizeClass.setter();
      UIViewController.traitOverrides.setter();
      UIViewController.add(_:)(v10);
      v11 = [v10 navigationBar];
      v12 = String._bridgeToObjectiveC()();
      [v11 _setBackdropViewLayerGroupName:v12];

      return;
    }

    sub_10010FC20(&qword_101190B60);
    v7 = v6;
    a1 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = a1;
  UIViewController.remove(_:)(v9);

  v6 = *(v2 + v5);
  if (v6)
  {
    goto LABEL_7;
  }

  v13 = *(v2 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  *(v2 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController) = 0;
  sub_10045A5EC(v13);
}

void sub_10045A5EC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v5 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v8 = v3;
    UIViewController.remove(_:)(v8);

    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_10010FC20(&qword_101190B68);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v9 = v5;
  UIViewController.add(_:)(v9);
  v10 = [v9 navigationBar];
  v11 = String._bridgeToObjectiveC()();
  [v10 _setBackdropViewLayerGroupName:v11];
}

void sub_10045A73C()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return;
  }

  v25 = v2;
  v3 = [v2 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1003FC8BC(v0, v4);
  v7 = v6;

  if ((v7 & 1) == 0 && v5 >= 1)
  {
    v8 = [v25 viewControllers];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_10004056C(v5 - 1, v9);
    }

    else
    {
      if (v5 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * (v5 - 1) + 32);
    }

    v11 = v10;

    v12 = [v11 navigationItem];
    v13 = [v12 backButtonTitle];

    if (!v13)
    {
      v14 = [v11 title];
      if (!v14)
      {
        v15 = 0;
        v17 = 0;
LABEL_11:
        sub_100009F78(0, &qword_101181580);
        sub_100009F78(0, &qword_1011839A0);
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v19.value._countAndFlagsBits = v15;
        v19.value._object = v17;
        v27.value.super.isa = 0;
        v28.value.super.super.isa = 0;
        v20.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v19, v27, v28, v29).super.super.isa;
        [(objc_class *)v20.super.super.isa _setShowsBackButtonIndicator:1, 0, 0, 0, sub_10045BB24, v18];
        v21 = *&v1[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
        if (v21)
        {
          v22 = [*(v21 + qword_101190AC8) navigationItem];
          v20.super.super.isa = v20.super.super.isa;
          [v22 setLeftBarButtonItem:v20.super.super.isa];
        }

        else
        {
        }

        goto LABEL_18;
      }

      v13 = v14;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    goto LABEL_11;
  }

  v23 = *&v0[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_leftViewController];
  if (v23)
  {
    v20.super.super.isa = [*(v23 + qword_101190AC8) navigationItem];
    [(objc_class *)v20.super.super.isa setLeftBarButtonItem:0];
    v11 = v25;
LABEL_18:

    v24 = v11;
    goto LABEL_19;
  }

  v24 = v25;
LABEL_19:
}

void sub_10045AAB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      v3 = [v2 popViewControllerAnimated:1];
    }
  }
}

id sub_10045AB44(void *a1, uint64_t *a2)
{
  *&v2[qword_101190AC8] = a1;
  v4 = a1;
  v12.receiver = v2;
  v12.super_class = sub_10010FC20(a2);
  v5 = objc_msgSendSuper2(&v12, "initWithNavigationBarClass:toolbarClass:", 0, 0);
  sub_10010FC20(&qword_101183990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  *(v6 + 32) = v4;
  sub_100009F78(0, &qword_101183D40);
  v7 = v5;
  v8 = v4;
  v9 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setViewControllers:isa];

  return v9;
}

void sub_10045ACB4(uint64_t a1, uint64_t a2)
{
  sub_1000089F8(a2, v6, &unk_101183F30);
  if (v7)
  {
    sub_100009F78(0, &qword_101183D40);
    if (swift_dynamicCast())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1000095E8(v6, &unk_101183F30);
    v4 = 0;
  }

  sub_10016EEEC(a1, v4, 1, v2);
}

uint64_t sub_10045AD88(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3;
    v7 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = a3;
    v9 = a1;
  }

  sub_10045ACB4(a3, v11);

  return sub_1000095E8(v11, &unk_101183F30);
}

id sub_10045AE24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v4 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    return 0;
  }

  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v12.receiver = v4;
    v12.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer.DummyNavigationController();
    return objc_msgSendSuper2(&v12, "navigateTo:from:animated:", a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10045AF6C(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_10045AE24(v8, a4, a5);

  return v11 & 1;
}

id sub_10045B024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryArtistsContainerViewController.SplayedLayoutContainer.DummyNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10045B0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10045B214()
{
  result = qword_101190B50;
  if (!qword_101190B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190B50);
  }

  return result;
}

void *sub_10045B268()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController);
  v2 = v1;
  return v1;
}

void sub_10045B2B8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id))
{
  v8 = *(v5 + *a4);
  *(v5 + *a4) = a1;
  v7 = a1;
  a5(v8);
}

void *sub_10045B324()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + qword_101190AC8);
  v3 = v2;
  return v2;
}

void *sub_10045B3B8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer;
  v2 = *(v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer);
  v3 = *(v0 + OBJC_IVAR____TtC5Music37LibraryArtistsContainerViewController_layoutContainer + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = v2;
  v7 = v5(ObjectType, v3);

  if (v7)
  {
    v8 = sub_100766268();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = swift_getObjectType();
  v12 = *(v10 + 48);
  v13 = v9;
  v14 = v12(v11, v10);

  if (v14)
  {
    v15 = sub_100211590();
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  sub_1001252D8(v15);
  return v8;
}

unint64_t sub_10045B4D0()
{
  result = qword_101190B58;
  if (!qword_101190B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190B58);
  }

  return result;
}

uint64_t sub_10045B524(void *a1)
{
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    sub_100217F14();
    UITraitCollection.subscript.getter();
    v2 = sub_10049CB78();

    if ((v2 & 1) == 0)
    {
      v3 = UITraitCollection.mediaLibrary.getter();
      v4 = [objc_opt_self() deviceMediaLibrary];
      if (v4)
      {
        v5 = v4;
        sub_100009F78(0, &qword_101183F80);
        v6 = static NSObject.== infix(_:_:)();

        if ((v6 & 1) != 0 && [a1 horizontalSizeClass] == 2)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_10045B630(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_artistListViewController];
  if (!a2)
  {
    if (!v13)
    {
      v17 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  if (!v13)
  {
    v26 = 0;
    return 0;
  }

  sub_100009F78(0, &qword_101183D40);
  v14 = v13;
  v15 = a2;
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  [v3 loadViewIfNeeded];
  type metadata accessor for LibraryArtistDetailViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v38 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
    v20 = *&v3[OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController];
    if (v20)
    {
      v21 = *(v20 + qword_101190AC8);
      v22 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
      swift_beginAccess();
      (*(v7 + 16))(v12, v21 + v22, v6);
      v23 = a1;
      v39 = Artist.id.getter();
      v25 = v24;
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v27 = a1;
      v39 = 0;
      v25 = 0;
    }

    v28 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v19[v28], v6);
    v29 = Artist.id.getter();
    v31 = v30;
    (*(v7 + 8))(v9, v6);
    if (v25)
    {
      if (v39 == v29 && v25 == v31)
      {

        return 1;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {

        return 1;
      }
    }

    else
    {
    }

    v33 = objc_allocWithZone(sub_10010FC20(&qword_101190B68));
    v34 = a1;
    v35 = sub_10045AB44(v19, &qword_101190B68);
    v36 = *&v3[v38];
    *&v3[v38] = v35;
    v37 = v35;
    sub_10045A5EC(v36);

    return 1;
  }

  return result;
}

uint64_t sub_10045B99C(void *a1)
{
  v2 = OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController;
  v3 = *(v1 + OBJC_IVAR____TtCC5Music37LibraryArtistsContainerViewControllerP33_CE2A41BFB64A7DDBA59CF94A5FD1A01F22SplayedLayoutContainer_rightViewController);
  if (!v3)
  {
    return 0;
  }

  v4 = v1;
  v6 = *(v3 + qword_101190AC8);
  sub_100009F78(0, &qword_101183D40);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = *(v1 + v2);
    if (!v10)
    {
      return 0;
    }

    v11 = v8;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(v4 + v2);
  *(v4 + v2) = 0;
  sub_10045A5EC(v14);

  v15 = *(v4 + v2);
  if (!v15)
  {
    return 0;
  }

  v16 = *(v4 + v2);
  v17 = v15;
  return v16;
}

void sub_10045BB4C(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_10066CCB4(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1007482D0(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 role];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_10066CCB4((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_10010FC20(&qword_101190C18);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1000D8F7C(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_1000D8F7C(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_1000D8F7C(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_10045BEF0(CGFloat *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = *(Strong + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  v4 = Strong;

  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);

  if (v5 < 0)
  {

LABEL_6:
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    goto LABEL_7;
  }

  sub_100062AB8();
  top = v7;
  leading = v9;
  bottom = v11;
  trailing = v13;

LABEL_7:
  a1[3] = top;
  a1[4] = leading;
  a1[5] = bottom;
  a1[6] = trailing;
}

void sub_10045BFDC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  SharePlayTogetherSession.needsDisplayNameAckDefaultsKey.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  [v1 removeObjectForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = SharePlayTogetherSession.didShowDisplayNameAck.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];
  v9 = &type metadata for Bool;
  v8[0] = 1;
  v7[0] = v5;
  v7[1] = v6;
  sub_100009838();

  NSUserDefaults.subscript.setter(v8, v7, &type metadata for String);
}

id sub_10045C0E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.scenes.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v46 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v45 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136446210;
    v16 = [v9 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    v20 = v19;

    v21 = sub_1000105AC(v17, v20, v49);
    v2 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Main scene did enter background %{public}s", v14, 0xCu);
    sub_10000959C(v15);

    (*(v5 + 8))(v7, v45);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 0;
  if (qword_10117FC88 == -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    swift_once();
LABEL_5:
    swift_beginAccess();
    v22 = sub_100195B58(v46);
    swift_endAccess();

    sub_10005EDE8();
    v23 = [objc_opt_self() sharedApplication];
    v24 = [v23 connectedScenes];

    v25 = sub_100009F78(0, &qword_1011839F0);
    sub_10005C54C(&qword_101183DE0, &qword_1011839F0);
    v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v25;
    if ((v26 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v28 = v49[0];
      v27 = v49[1];
      v29 = v49[2];
      v30 = v49[3];
      v31 = v49[4];
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v27 = v26 + 56;
      v29 = ~v32;
      v33 = -v32;
      v34 = v33 < 64 ? ~(-1 << v33) : -1;
      v31 = v34 & *(v26 + 56);

      v30 = 0;
      v28 = v26;
    }

    v45 = v29;
    v35 = (v29 + 64) >> 6;
    if (v28 < 0)
    {
      break;
    }

LABEL_12:
    v36 = v30;
    v37 = v31;
    v38 = v30;
    if (v31)
    {
LABEL_16:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v28 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
      if (v40)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_23;
      }

      v37 = *(v27 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v41 = __CocoaSet.Iterator.next()();
    if (!v41)
    {
      break;
    }

    v47 = v41;
    swift_dynamicCast();
    v40 = v48;
    v38 = v30;
    v39 = v31;
    if (!v48)
    {
      break;
    }

LABEL_20:
    if (![v40 activationState])
    {
      sub_10005C9F8();

      goto LABEL_25;
    }

    v30 = v38;
    v31 = v39;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_10005C9F8();

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v43 = result;
    [result resignActive];

    [objc_opt_self() endDiscoveringMediaLibraries];
LABEL_25:
    BackgroundRefreshController.shared.unsafeMutableAddressor();

    BackgroundRefreshController.scheduleAllTasks()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10045C684(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.scenes.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = [v9 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_1000105AC(v16, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Main sceneDidDisconnect %{public}s", v13, 0xCu);
    sub_10000959C(v14);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext) = 0;

  sub_1000593FC();
  v20 = *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window) = 0;
}

void sub_10045C984(void *a1, void *a2)
{
  v82 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v75[-v9];
  v11 = sub_10010FC20(&qword_101183A20);
  v12 = __chkstk_darwin(v11 - 8);
  v80 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v75[-v14];
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v75[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  v83 = sub_100060CB0(_swiftEmptyArrayStorage);
  v20 = Logger.scenes.unsafeMutableAddressor();
  v21 = *(v17 + 16);
  v79 = v16;
  v21(v19, v20, v16);
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v84 = v22;
  v81 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v89[0] = v77;
    *v26 = 136446210;
    v27 = [v84 description];
    v78 = v4;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v24;
    v30 = v10;
    v31 = v5;
    v32 = v29;
    v33 = v8;
    v35 = v34;

    v36 = v32;
    v5 = v31;
    v10 = v30;
    v37 = sub_1000105AC(v36, v35, v89);
    v8 = v33;

    *(v26 + 4) = v37;
    v4 = v78;
    _os_log_impl(&_mh_execute_header, v23, v76, "[MainSceneDelegate] continue userActivity: %{public}s", v26, 0xCu);
    sub_10000959C(v77);

    v22 = v84;
  }

  (*(v17 + 8))(v19, v79);
  v38 = [v22 _sourceApplication];
  v39 = v83;
  v40 = v82;
  if (v38)
  {
    v41 = v38;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *&v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v87 + 1) = v45;
    AnyHashable.init<A>(_:)();
    v88 = &type metadata for String;
    *&v87 = v42;
    *(&v87 + 1) = v44;
    sub_100016270(&v87, v86);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v39;
    sub_10006800C(v86, v89, isUniquelyReferenced_nonNull_native);
    sub_10001621C(v89);
    v39 = v85;
  }

  v47 = v80;
  v48 = [v22 referrerURL];
  if (v48)
  {
    v49 = v48;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  (*(v5 + 56))(v47, v50, 1, v4);
  v51 = v81;
  sub_100027998(v47, v81);
  if ((*(v5 + 48))(v51, 1, v4))
  {
    sub_1000095E8(v51, &qword_101183A20);
  }

  else
  {
    (*(v5 + 16))(v10, v51, v4);
    sub_1000095E8(v51, &qword_101183A20);
    v52 = URL.absoluteString.getter();
    v54 = v53;
    (*(v5 + 8))(v10, v4);
    sub_10010FC20(&qword_101190BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v56;
    *(inited + 48) = v52;
    *(inited + 56) = v54;
    v57 = sub_10010C578(inited);
    swift_setDeallocating();
    v22 = v84;
    sub_1000095E8(inited + 32, &qword_101183AA0);
    *&v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v87 + 1) = v58;
    AnyHashable.init<A>(_:)();
    v88 = sub_10010FC20(&unk_10118A3F0);
    *&v87 = v57;
    sub_100016270(&v87, v86);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v39;
    sub_10006800C(v86, v89, v59);
    sub_10001621C(v89);
    v39 = v85;
  }

  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (!v60)
  {

    return;
  }

  v61 = v60;
  v62 = v40;
  v63 = [v22 activityType];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {

    v68 = v84;
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v68 = v84;
    if ((v69 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v70 = [v68 webpageURL];
  if (v70)
  {
    v71 = v70;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 16))(v10, v8, v4);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v72 = v62;
    sub_1002B8D68(v10, v39, v61);
    (*(v5 + 8))(v8, v4);
    goto LABEL_20;
  }

LABEL_19:

  type metadata accessor for LaunchOptions(0);
  swift_allocObject();
  v73 = v68;
  v74 = v62;
  if (!sub_1002C4B38(v73, v61))
  {

    return;
  }

LABEL_20:
  sub_1002C5A04();
}

uint64_t sub_10045D310(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a1;
  v34 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.scenes.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v16 = 136446210;
    v17 = [v13 description];
    v32 = a4;
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v15;
    v20 = v19;
    v30 = v8;
    v21 = v5;
    v23 = v22;

    v24 = sub_1000105AC(v20, v23, &v35);
    v5 = v21;

    *(v16 + 4) = v24;
    a4 = v32;
    _os_log_impl(&_mh_execute_header, v14, v29, "[MainSceneDelegate] performActionFor shortcutItem: %{public}s", v16, 0xCu);
    sub_10000959C(v31);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  *(v5 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  type metadata accessor for LaunchOptions(0);
  swift_allocObject();
  v25 = v13;

  v26 = v33;
  result = sub_1002C3090(v25, v26, v34, a4);
  if (result)
  {
    sub_1002C5A04();
  }

  return result;
}

id sub_10045D7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_10045D8A4()
{
  result = String._bridgeToObjectiveC()();
  qword_101218D40 = result;
  return result;
}

uint64_t sub_10045D8DC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10045D994(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.scenes.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000105AC(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Main sceneWillResignActive %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10045DB88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.scenes.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000105AC(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "[MainSceneDelegate] willContinueUserActivityWithType: %{public}s", v13, 0xCu);
    sub_10000959C(v14);
  }

  result = (*(v7 + 8))(v9, v6);
  *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = 1;
  return result;
}

uint64_t Logger.libraryView.unsafeMutableAddressor()
{
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.libraryView);
}

Swift::Int sub_10045DDF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045DF18()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045E054()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10045E174()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10045E2D4(__int16 a1)
{
  if (a1 == 6)
  {
    v1 = 5;
  }

  else
  {
    v1 = 8;
  }

  if (a1 == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a1 <= 5u)
  {
    v1 = v2;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 11;
  }

  else
  {
    v3 = 12;
  }

  if ((a1 & 0x100) != 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = 9;
  }

  if (a1 != 2)
  {
    v3 = v4;
  }

  if (a1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 6;
  }

  if (a1 > 1u)
  {
    v5 = v3;
  }

  if (a1 <= 3u)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10045E340()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10045E540(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if (((1 << a2) & 0x6E) != 0 || (result = 0, ((1 << a2) & 0x11) != 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

unint64_t sub_10045E750@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10045FE40(*a1);
  *a2 = result;
  return result;
}

void sub_10045E780(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E747369747261;
  v5 = 0x8000000100E3C6C0;
  v6 = 0xD000000000000010;
  if (v2 != 6)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xEC00000065707954;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 4)
  {
    v8 = 0x79616C507473616CLL;
    v7 = 0xEE00657461446465;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x44657361656C6572;
  if (v2 != 2)
  {
    v10 = 1918985593;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100E3C680;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10045E968(void *a1, char a2)
{
  v5 = sub_10010FC20(&qword_101190C68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1004600A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_100460150();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10045EB00(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

uint64_t sub_10045EC58(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x7265736F706D6F63;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x6C507265646C6F66;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x59726F466564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x646956636973756DLL;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x796C746E65636572;
      break;
    case 11:
      result = 0x73676E6F73;
      break;
    case 12:
      result = 0x646F736970457674;
      break;
    case 13:
      result = 0x73776F68537674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10045EDE8()
{
  if (*v0)
  {
    return 0x646E656373417369;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

uint64_t sub_10045EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E656373417369 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10045EF04(uint64_t a1)
{
  v2 = sub_1004600A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10045EF40(uint64_t a1)
{
  v2 = sub_1004600A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10045EF7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_10045EB00(v5, v3 | v1);
  return Hasher._finalize()();
}

void sub_10045EFD4(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_10045EB00(a1, v2 | *v1);
}

Swift::Int sub_10045EFF0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_10045EB00(v5, v3 | v1);
  return Hasher._finalize()();
}

uint64_t sub_10045F044@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10045FEE0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_10045F0A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1006B8B0C(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_10045F0E4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10045EC58(*a1);
  v5 = v4;
  if (v3 == sub_10045EC58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10045F16C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10045EC58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10045F1D0()
{
  sub_10045EC58(*v0);
  String.hash(into:)();
}

Swift::Int sub_10045F224()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10045EC58(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10045F284@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004601A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10045F2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10045EC58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10045F2E0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10045F8A0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.libraryView);
  sub_1000060E4(v0, static Logger.libraryView);
  String.musicSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.libraryView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.libraryView);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s11ContentSortVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentSortVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10045FC9C()
{
  result = qword_101190C30;
  if (!qword_101190C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C30);
  }

  return result;
}

unint64_t sub_10045FCF4()
{
  result = qword_101190C38;
  if (!qword_101190C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C38);
  }

  return result;
}

unint64_t sub_10045FD4C()
{
  result = qword_101190C40;
  if (!qword_101190C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C40);
  }

  return result;
}

uint64_t sub_10045FDA0(unsigned __int8 a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = NSUserDefaults.sortType(for:keyDomain:)(a1, 0, 0);

  if (v3 - 2) <= 8u && ((0x1DFu >> (v3 - 2)))
  {
    return word_100ECDE70[(v3 - 2)] | byte_100ECDE66[(v3 - 2)];
  }

  else
  {
    return 512;
  }
}

unint64_t sub_10045FE40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AF08, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10045FE8C()
{
  result = qword_101190C48;
  if (!qword_101190C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C48);
  }

  return result;
}

uint64_t sub_10045FEE0(void *a1)
{
  v3 = sub_10010FC20(&qword_101190C50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000954C(a1, a1[3]);
  sub_1004600A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000959C(a1);
  }

  v11[14] = 0;
  sub_1004600FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000959C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_1004600A8()
{
  result = qword_101190C58;
  if (!qword_101190C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C58);
  }

  return result;
}

unint64_t sub_1004600FC()
{
  result = qword_101190C60;
  if (!qword_101190C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C60);
  }

  return result;
}

unint64_t sub_100460150()
{
  result = qword_101190C70;
  if (!qword_101190C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C70);
  }

  return result;
}

unint64_t sub_1004601A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AFE8, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100460204()
{
  result = qword_101190C78;
  if (!qword_101190C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C78);
  }

  return result;
}

unint64_t sub_10046025C()
{
  result = qword_101190C80;
  if (!qword_101190C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C80);
  }

  return result;
}

unint64_t sub_1004602B4()
{
  result = qword_101190C88;
  if (!qword_101190C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C88);
  }

  return result;
}

id sub_1004603DC(void *a1, SEL *a2)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();

    return v3;
  }

  else
  {
    v5 = [objc_opt_self() *a2];

    return v5;
  }
}

uint64_t sub_100460480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void sub_1004604BC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = objc_opt_self();
  v6 = [v5 configurationWithTextStyle:UIFontTextStyleSubheadline];
  v7 = [v5 configurationWithWeight:7];
  v8 = [v6 configurationByApplyingConfiguration:v7];

  if (v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8] == 1)
  {
    v9 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView];
    if (*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style])
    {
      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView] setHidden:0];
      v10 = [objc_opt_self() quaternarySystemFillColor];
      [v9 setBackgroundColor:v10];

      v11 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
      v12 = [v9 backgroundColor];
      [v11 setBackgroundColor:v12];

      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton] setPreferredSymbolConfiguration:v8];
      static UIView.Corner.rounded.getter();
      v13 = type metadata accessor for UIView.Corner();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView] setHidden:1];
      v19 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
      v20 = [objc_opt_self() clearColor];
      [v19 setBackgroundColor:v20];

      v21 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton];
      v22 = [v5 configurationWithTextStyle:UIFontTextStyleTitle3];
      v23 = [v5 configurationWithWeight:6];
      v24 = [v22 configurationByApplyingConfiguration:v23];

      [v21 setPreferredSymbolConfiguration:v24];
      v25 = type metadata accessor for UIView.Corner();
      (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    }
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView];
    [v14 setHidden:0];
    v15 = [objc_opt_self() tertiarySystemFillColor];
    [v14 setBackgroundColor:v15];

    v16 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

    [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton] setPreferredSymbolConfiguration:v8];
    static UIView.Corner.rounded.getter();
    v18 = type metadata accessor for UIView.Corner();
    (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  }

  UIView.corner.setter();
  v26 = objc_opt_self();
  sub_100294F58();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 deactivateConstraints:isa];

  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v26 deactivateConstraints:v28];

  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:v29];

  [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton] setNeedsUpdateConfiguration];
  [v1 invalidateIntrinsicContentSize];
}

double sub_100460AE8(void *a1, char a2)
{
  if (a2)
  {
    x = CGRectNull.origin.x;
    v5 = [v2 superview];
    if (!v5)
    {
      return x;
    }

    v6 = v5;
    v7 = [v2 window];
    if (!v7)
    {

      return x;
    }

    v8 = v7;
    v9 = [v7 screen];
    v10 = [v9 coordinateSpace];

    [a1 frame];
    [v2 convertRect:v10 toCoordinateSpace:?];
    x = v11;
    v12 = [v2 superview];
    if (v12)
    {
      v13 = v12;
      [v2 frame];
      [v13 convertPoint:v10 toCoordinateSpace:?];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    [a1 bounds];
    x = v15;
    [v2 frame];
    v17 = v16;
    v19 = v18;
    v20 = [v2 superview];
    [a1 convertPoint:v20 fromView:{v17, v19}];
  }

  if (qword_10117F780 != -1)
  {
    swift_once();
  }

  return x;
}

char *sub_100460D14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v10 - 8);
  v12 = v97 - v11;
  v13 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v14 = [objc_allocWithZone(MPRouteButton) init];
  v15 = UIView.forAutolayout.getter();

  *&v5[v13] = v15;
  v16 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  v17 = [objc_allocWithZone(UIButton) init];
  v18 = UIView.forAutolayout.getter();

  *&v5[v16] = v18;
  v19 = &v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
  *v19 = 0;
  v19[8] = 1;
  v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] = 0;
  v20 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  v21 = [objc_allocWithZone(UIStackView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  *&v5[v23] = [objc_allocWithZone(UIView) init];
  v24 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  *&v5[v25] = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints] = _swiftEmptyArrayStorage;
  v26 = &v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds];
  v27 = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  *v26 = 0u;
  v26[1] = 0u;
  v105.receiver = v5;
  v105.super_class = v27;
  v28 = objc_msgSendSuper2(&v105, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 layer];
  [v29 setAllowsGroupBlending:0];

  v30 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  [*&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] setAxis:0];
  [*&v28[v30] setDistribution:1];
  [*&v28[v30] setAlignment:0];
  [*&v28[v30] setSpacing:1.0];
  [*&v28[v30] setClipsToBounds:1];
  v31 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  [*&v28[v30] addArrangedSubview:*&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView]];
  v32 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  [*&v28[v30] addArrangedSubview:*&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView]];
  v99 = v30;
  [v28 addSubview:*&v28[v30]];
  v33 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  [v28 addSubview:*&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView]];
  [*&v28[v33] setHidden:1];
  v34 = *&v28[v33];
  [v34 setBackgroundColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];

  v35 = *&v28[v33];
  v36 = qword_10117F768;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  static UIView.Corner.value(_:continuous:)();
  v38 = type metadata accessor for UIView.Corner();
  (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
  UIView.corner.setter();

  v39 = *&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton];
  v40 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v103 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  [v39 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [*&v28[v40] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*&v28[v31] addSubview:*&v28[v40]];
  v41 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  [*&v28[v32] addSubview:*&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton]];
  v42 = *&v28[v41];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v42;

  aBlock[4] = sub_100462610;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010AD250;
  v45 = _Block_copy(aBlock);

  [v44 setConfigurationUpdateHandler:v45];
  _Block_release(v45);

  v46 = sub_10010FC20(&qword_101183990);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100EBC6C0;
  v48 = [*&v28[v41] centerXAnchor];
  v49 = [*&v28[v32] centerXAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v47 + 32) = v50;
  *&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints] = v47;

  v97[1] = v46;
  v51 = swift_allocObject();
  v98 = xmmword_100EBC6D0;
  *(v51 + 16) = xmmword_100EBC6D0;
  v52 = *&v28[v41];
  v102 = v41;
  v53 = [v52 leadingAnchor];
  v54 = *&v28[v32];
  v101 = v32;
  v55 = [v54 leadingAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:6.0];

  *(v51 + 32) = v56;
  v57 = [*&v28[v41] trailingAnchor];
  v58 = [*&v28[v32] trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-10.0];

  *(v51 + 40) = v59;
  *&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints] = v51;

  v60 = swift_allocObject();
  *(v60 + 16) = v98;
  v61 = v103;
  v62 = [*&v28[v103] leadingAnchor];
  v100 = v31;
  v63 = [*&v28[v31] leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v60 + 32) = v64;
  v65 = [*&v28[v61] trailingAnchor];
  v66 = [*&v28[v31] trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v60 + 40) = v67;
  *&v28[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints] = v60;

  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100EBEE80;
  v69 = v99;
  v70 = [*&v28[v99] leadingAnchor];
  v71 = [v28 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v68 + 32) = v72;
  v73 = [*&v28[v69] trailingAnchor];
  v74 = [v28 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v68 + 40) = v75;
  v76 = [*&v28[v69] topAnchor];
  v77 = [v28 topAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v68 + 48) = v78;
  v79 = [*&v28[v69] bottomAnchor];
  v80 = [v28 bottomAnchor];

  v81 = [v79 constraintEqualToAnchor:v80];
  *(v68 + 56) = v81;
  v82 = v103;
  v83 = [*&v28[v103] centerXAnchor];
  v84 = v100;
  v85 = [*&v28[v100] centerXAnchor];
  v86 = [v83 constraintEqualToAnchor:v85];

  *(v68 + 64) = v86;
  v87 = [*&v28[v82] centerYAnchor];
  v88 = [*&v28[v84] centerYAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v68 + 72) = v89;
  v90 = [*&v28[v102] centerYAnchor];
  v91 = [*&v28[v101] centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v68 + 80) = v92;
  aBlock[0] = v68;

  sub_100124054(v93);
  v94 = objc_opt_self();
  sub_100294F58();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v94 activateConstraints:isa];

  sub_1004604BC();
  return v28;
}