double sub_100167604@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileView(0);
  sub_1000A6690(a1, a2 + *(v4 + 20));
  type metadata accessor for CompositionModel(0);
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v5 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_10000341C(&qword_100265648, &unk_1001DE260) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_1001676F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v10[6] = v1[6];
  v10[7] = v3;
  v4 = v1[9];
  v10[8] = v1[8];
  v10[9] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  v6 = v1[5];
  v10[4] = v1[4];
  v10[5] = v6;
  v7 = v1[1];
  v10[0] = *v1;
  v10[1] = v7;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = sub_10000341C(&qword_100265600, &qword_1001DE1B8);
  return sub_100165E18(v10, a1 + *(v8 + 44));
}

uint64_t sub_10016778C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001677FC(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100167864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265608, &qword_1001DE1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001678D4()
{
  result = qword_100265658;
  if (!qword_100265658)
  {
    sub_100003E34(&qword_100265648, &unk_1001DE260);
    sub_100167AB0(&qword_100265660, type metadata accessor for FileView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265658);
  }

  return result;
}

uint64_t sub_100167990()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[17];

  v11 = v0[18];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100167A18()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 128);
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100167AB0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100167B3C()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_100265768, &unk_1001DE410);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v19[-v11];
  type metadata accessor for SlotAttachmentView(0);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for FileView(0);
  sub_100169478(v1 + *(v14 + 20), v12, type metadata accessor for Attachment);
  v15 = type metadata accessor for Attachment(0);
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  sub_1000081F8(v13 + v16, v10, &qword_100263020, &qword_1001DA210);
  swift_beginAccess();
  sub_1000A66F4(v12, v13 + v16);
  swift_endAccess();
  sub_100168164(v10);
  sub_10000F500(v10, &qword_100263020, &qword_1001DA210);
  sub_10000F500(v12, &qword_100263020, &qword_1001DA210);
  sub_100169478(v1, v5, type metadata accessor for FileView);
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v17 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  swift_beginAccess();
  sub_1001694E0(v5, v13 + v17);
  swift_endAccess();
  return v13;
}

uint64_t sub_100167E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100169550(&qword_100265770, type metadata accessor for FileView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100167EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100169550(&qword_100265770, type metadata accessor for FileView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100167F44()
{
  sub_100169550(&qword_100265770, type metadata accessor for FileView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_100167F9C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  v11 = type metadata accessor for FileView(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView] = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton] = result;
    v13 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
    v14 = type metadata accessor for Attachment(0);
    (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
    v16.receiver = v4;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
    [*&v15[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton] addTarget:v15 action:"didTapCloseButton" forControlEvents:64];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100168164(uint64_t a1)
{
  v58 = a1;
  v2 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v55 - v4;
  v5 = type metadata accessor for Attachment(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v18 = sub_10000341C(&qword_10025C440, &unk_1001D1120);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v55 - v21;
  v23 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  v24 = *(v19 + 56);
  v59 = v1;
  sub_1000081F8(&v1[v23], v22, &qword_100263020, &qword_1001DA210);
  sub_1000081F8(v58, &v22[v24], &qword_100263020, &qword_1001DA210);
  v25 = *(v6 + 48);
  if (v25(v22, 1, v5) == 1)
  {
    if (v25(&v22[v24], 1, v5) == 1)
    {
      v26 = v22;
LABEL_14:
      sub_10000F500(v26, &qword_100263020, &qword_1001DA210);
      return;
    }
  }

  else
  {
    sub_1000081F8(v22, v17, &qword_100263020, &qword_1001DA210);
    if (v25(&v22[v24], 1, v5) != 1)
    {
      sub_10003D784(&v22[v24], v11);
      v30 = sub_10017EA28(v17, v11);
      sub_100169598(v11, type metadata accessor for Attachment);
      sub_100169598(v17, type metadata accessor for Attachment);
      sub_10000F500(v22, &qword_100263020, &qword_1001DA210);
      if (v30)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100169598(v17, type metadata accessor for Attachment);
  }

  sub_10000F500(v22, &qword_10025C440, &unk_1001D1120);
LABEL_7:
  v27 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView;
  v28 = *&v59[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v59[v27];
  }

  else
  {
    v29 = 0;
  }

  v31 = v59;
  *&v59[v27] = 0;

  v32 = v57;
  sub_1000081F8(&v31[v23], v57, &qword_100263020, &qword_1001DA210);
  if (v25(v32, 1, v5) == 1)
  {
    v26 = v32;
    goto LABEL_14;
  }

  v33 = v56;
  sub_10003D784(v32, v56);
  v34 = [objc_allocWithZone(LPLinkMetadata) init];
  v35 = [objc_allocWithZone(LPFileMetadata) init];
  v36 = (v33 + v5[8]);
  v37 = *v36;
  v38 = v36[1];
  v39 = String._bridgeToObjectiveC()();
  [v35 setName:v39];

  v40 = v55;
  sub_1000081F8(v33 + v5[6], v55, &qword_10025F4E0, &unk_1001D1110);
  v41 = type metadata accessor for UTType();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_10000F500(v40, &qword_10025F4E0, &unk_1001D1110);
    v43 = 0;
  }

  else
  {
    UTType.identifier.getter();
    (*(v42 + 8))(v40, v41);
    v43 = String._bridgeToObjectiveC()();
    v33 = v56;
  }

  [v35 setType:v43];

  v44 = v33 + v5[7];
  if ((*(v44 + 8) & 1) == 0)
  {
    if ((*v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    [v35 setSize:?];
  }

  v45 = *(v33 + v5[9]);
  if (v45)
  {
    v46 = objc_allocWithZone(UIImage);
    v47 = v45;
    v48 = [v46 initWithCGImage:v47];
    v49 = [objc_allocWithZone(LPImage) initWithPlatformImage:v48];

    [v35 setThumbnail:v49];
  }

  v50 = [objc_allocWithZone(LPSharedObjectMetadata) init];
  [v50 setSpecialization:v35];
  [v34 setSpecialization:v50];
  v51 = [objc_allocWithZone(LPLinkView) initWithMetadata:v34];
  [v51 _setBytesLoaded:{objc_msgSend(v35, "size")}];
  [v51 _setDisableTapGesture:1];
  [v51 _setDisableHighlightGesture:1];
  v52 = [objc_opt_self() clearColor];
  [v51 _setOverrideBackgroundColor:v52];

  v53 = v51;
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = v59;
  [v59 addSubview:v53];
  [v54 addSubview:*&v54[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton]];
  [v54 bounds];
  [v53 setBounds:?];

  sub_100169598(v33, type metadata accessor for Attachment);
}

void sub_100168904()
{
  v1 = type metadata accessor for EnvironmentValues();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FileView(0);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  v21 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  swift_beginAccess();
  if ((*(v10 + 48))(v0 + v21, 1, v9))
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F34C(v22, qword_100276EF0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Deleting attachment failed as attachment is nil", v25, 2u);
    }
  }

  else
  {
    v26 = v8;
    v35 = v4;
    sub_100169478(v0 + v21, v13, type metadata accessor for Attachment);
    v27 = v38;
    (*(v38 + 16))(v18, v13, v14);
    sub_100169598(v13, type metadata accessor for Attachment);
    (*(v27 + 32))(v20, v18, v14);
    v28 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
    swift_beginAccess();
    v29 = v14;
    if ((*(v39 + 48))(v0 + v28, 1, v40))
    {
      (*(v27 + 8))(v20, v14);
      swift_endAccess();
    }

    else
    {
      sub_100169478(v0 + v28, v26, type metadata accessor for FileView);
      swift_endAccess();
      v30 = *v26;
      v31 = *(v26 + 8);

      if ((v31 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v32 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v33 = v35;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v36 + 8))(v33, v37);
        v30 = v41;
      }

      sub_100169598(v26, type metadata accessor for FileView);
      swift_getKeyPath();
      v41 = v30;
      sub_100169550(&qword_10025B210, type metadata accessor for CompositionModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

      sub_100175970(v20);

      (*(v27 + 8))(v20, v29);
    }
  }
}

void sub_10016904C()
{
  sub_1001691AC(319, &qword_1002656D0, type metadata accessor for FileView, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001691AC(319, &qword_10025C438, type metadata accessor for Attachment, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001691AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100169224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Attachment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001692DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Attachment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10016937C()
{
  sub_1001691AC(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Attachment(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100169478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001694E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265768, &unk_1001DE410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100169598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100169600()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_slotFileView;
  v2 = type metadata accessor for FileView(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_linkView) = 0;
  v3 = [objc_opt_self() roundButtonWithStyle:0];
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton) = v3;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_attachment;
  v5 = type metadata accessor for Attachment(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_100169734(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100169748(uint64_t *a1, int a2)
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

uint64_t sub_100169790(uint64_t result, int a2, int a3)
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

uint64_t sub_1001697FC@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  v81 = a3;
  v79 = a1;
  v86 = a4;
  v7 = sub_10000341C(&qword_100262108, &qword_1001D8820);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v83 = (&v78 - v9);
  v10 = sub_10000341C(&qword_100265788, &qword_1001DE510);
  v11 = *(v10 - 8);
  v84 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = &v78 - v15;
  v16 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = sub_10000341C(&qword_100262118, &qword_1001D8830);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v78 - v22;
  v24 = sub_10000341C(&qword_100265790, &qword_1001DE518);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24);
  v87 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v78 - v29;
  v82 = &v78 - v29;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v31 = sub_10000341C(&qword_100265798, &qword_1001DE520);
  sub_100169F30(a1, a2, a3, &v23[*(v31 + 44)]);
  v32 = static Color.blue.getter();
  sub_1000E46CC(v32, v30);

  sub_10000F500(v23, &qword_100262118, &qword_1001D8830);
  *(v30 + *(v25 + 44)) = 0x3FF0000000000000;
  LocalizedStringKey.init(stringLiteral:)();
  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  LOBYTE(v30) = v36;
  v37 = Text.bold()();
  v39 = v38;
  LOBYTE(v25) = v40;
  sub_10002A984(v33, v35, v30 & 1);

  v41 = type metadata accessor for Font.Design();
  (*(*(v41 - 8) + 56))(v19, 1, 1, v41);
  static Font.system(size:weight:design:)();
  sub_10000F500(v19, &qword_10025C5D0, &qword_1001D15A0);
  v42 = Text.font(_:)();
  v44 = v43;
  LOBYTE(v35) = v45;
  v47 = v46;

  sub_10002A984(v37, v39, v25 & 1);

  v48 = static Color.blue.getter();
  sub_1000E44F4(v48, v42, v44, v35 & 1, v47, &v89);

  sub_10002A984(v42, v44, v35 & 1);

  LOBYTE(v35) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  LOBYTE(v109[0]) = 0;
  v57 = static VerticalAlignment.center.getter();
  v58 = v83;
  *v83 = v57;
  *(v58 + 8) = 0;
  *(v58 + 16) = 1;
  v59 = sub_10000341C(&qword_1002657A0, &qword_1001DE528);
  sub_10016AC6C(v79, v80, v81, (v58 + *(v59 + 44)));
  v60 = static Color.blue.getter();
  v61 = v88;
  sub_1000E46F0(v60, v88);

  sub_10000F500(v58, &qword_100262108, &qword_1001D8820);
  *(v61 + *(v84 + 44)) = 0x3FF0000000000000;
  v62 = v82;
  v63 = v87;
  sub_1000081F8(v82, v87, &qword_100265790, &qword_1001DE518);
  v64 = v85;
  sub_1000081F8(v61, v85, &qword_100265788, &qword_1001DE510);
  v65 = v63;
  v66 = v86;
  sub_1000081F8(v65, v86, &qword_100265790, &qword_1001DE518);
  v67 = sub_10000341C(&qword_1002657A8, &qword_1001DE530);
  v68 = v66 + *(v67 + 48);
  v101 = v92;
  v102 = v93;
  v103 = v94;
  v104 = v95;
  v98 = v89;
  v99 = v90;
  v100 = v91;
  LOBYTE(v105) = v35;
  *(&v105 + 1) = *v96;
  DWORD1(v105) = *&v96[3];
  *(&v105 + 1) = v50;
  *&v106 = v52;
  *(&v106 + 1) = v54;
  *&v107 = v56;
  BYTE8(v107) = 0;
  *(&v107 + 9) = *v97;
  HIDWORD(v107) = *&v97[3];
  v108 = 0x3FE0000000000000;
  *(v68 + 160) = 0x3FE0000000000000;
  v69 = v104;
  v70 = v101;
  v71 = v102;
  *(v68 + 32) = v100;
  *(v68 + 48) = v70;
  v72 = v99;
  *v68 = v98;
  *(v68 + 16) = v72;
  v73 = v103;
  *(v68 + 64) = v71;
  *(v68 + 80) = v73;
  v74 = v106;
  v75 = v105;
  *(v68 + 96) = v69;
  *(v68 + 112) = v75;
  v76 = v107;
  *(v68 + 128) = v74;
  *(v68 + 144) = v76;
  sub_1000081F8(v64, v66 + *(v67 + 64), &qword_100265788, &qword_1001DE510);
  sub_1000081F8(&v98, v109, &qword_1002657B0, &qword_1001DE538);
  sub_10000F500(v88, &qword_100265788, &qword_1001DE510);
  sub_10000F500(v62, &qword_100265790, &qword_1001DE518);
  sub_10000F500(v64, &qword_100265788, &qword_1001DE510);
  v109[3] = v92;
  v109[4] = v93;
  v109[5] = v94;
  v109[6] = v95;
  v109[0] = v89;
  v109[1] = v90;
  v109[2] = v91;
  v110 = v35;
  *&v111[3] = *&v96[3];
  *v111 = *v96;
  v112 = v50;
  v113 = v52;
  v114 = v54;
  v115 = v56;
  v116 = 0;
  *&v117[3] = *&v97[3];
  *v117 = *v97;
  v118 = 0x3FE0000000000000;
  sub_10000F500(v109, &qword_1002657B0, &qword_1001DE538);
  return sub_10000F500(v87, &qword_100265790, &qword_1001DE518);
}

void sub_100169F30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v103 = a2;
  v98 = a4;
  v92 = type metadata accessor for FeedbackView();
  v5 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v101 = *(v100 - 8);
  v7 = *(v101 + 64);
  __chkstk_darwin(v100 - 8);
  v91 = &v84 - v8;
  v9 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v84 - v13;
  v14 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v84 - v19;
  v21 = sub_10000341C(&qword_1002657B8, &qword_1001DE540);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v84 - v24;
  v26 = sub_10000341C(&qword_100265830, &qword_1001DE690);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = __chkstk_darwin(v26);
  v95 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v84 - v31;
  v33 = swift_allocObject();
  v33[2] = a1;
  v34 = v99;
  v33[3] = v103;
  v33[4] = v34;

  v93 = a1;

  sub_10000341C(&qword_10025C890, &qword_1001DEC00);
  sub_100048DE0();
  Button.init(action:label:)();
  LODWORD(v112) = 16777472;
  v35 = v102;
  sub_100007120(&qword_1002657C8, &qword_1002657B8, &qword_1001DE540);
  v36 = sub_100035980();
  View.buttonStyle<A>(_:)();
  (*(v22 + 8))(v25, v21);
  static Alignment.leading.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = *(v27 + 44);
  v94 = v32;
  v39 = &v32[v38];
  v40 = v110;
  *v39 = v109;
  *(v39 + 1) = v40;
  *(v39 + 2) = v111;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = *(v15 + 44);
  v99 = v20;
  v42 = &v20[v41];
  v43 = v101;
  v44 = v113;
  *v42 = v112;
  *(v42 + 1) = v44;
  *(v42 + 2) = v114;
  v45 = type metadata accessor for FeedbackFeatureFlags();
  v107 = v45;
  v108 = sub_10016CB94(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v46 = sub_10002DB6C(&v105);
  (*(*(v45 - 8) + 104))(v46, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v45);
  LOBYTE(v45) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v105);
  if ((v45 & 1) == 0)
  {
LABEL_9:
    v76 = v35;
    (*(v43 + 56))(v35, v37, 1, v100);
    v77 = v94;
    v78 = v95;
    sub_1000081F8(v94, v95, &qword_100265830, &qword_1001DE690);
    v79 = v99;
    v80 = v96;
    sub_1000081F8(v99, v96, &qword_10025D700, &unk_1001DE550);
    v81 = v97;
    sub_1000081F8(v35, v97, &qword_10025BD18, &unk_1001D0C90);
    v82 = v98;
    sub_1000081F8(v78, v98, &qword_100265830, &qword_1001DE690);
    v83 = sub_10000341C(&qword_100265838, &qword_1001DE698);
    sub_1000081F8(v80, v82 + *(v83 + 48), &qword_10025D700, &unk_1001DE550);
    sub_1000081F8(v81, v82 + *(v83 + 64), &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v76, &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v79, &qword_10025D700, &unk_1001DE550);
    sub_10000F500(v77, &qword_100265830, &qword_1001DE690);
    sub_10000F500(v81, &qword_10025BD18, &unk_1001D0C90);
    sub_10000F500(v80, &qword_10025D700, &unk_1001DE550);
    sub_10000F500(v78, &qword_100265830, &qword_1001DE690);
    return;
  }

  v88 = v36;
  v47 = v93;
  v48 = v103;
  v105 = v93;
  v106 = v103;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v49 = v104;
  swift_getKeyPath();
  v105 = v49;
  v89 = sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v49 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);

  v51 = [v50 baseResponse];

  if (v51)
  {
  }

  v105 = v47;
  v106 = v48;
  State.wrappedValue.getter();
  v52 = v104;
  swift_getKeyPath();
  v105 = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v52 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);

  v54 = [v53 tiInputContextHistory];

  if (v54)
  {
    v55 = [v54 threadIdentifier];

    if (v55)
    {
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v56;
    }

    else
    {
      v87 = 0;
      v86 = 0;
    }

    v57 = v51 == 0;
    v105 = v47;
    v106 = v48;
    State.wrappedValue.getter();
    v58 = v104;
    swift_getKeyPath();
    v105 = v58;
    sub_10016CB94(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v58 + 40);
    *&v60 = *(v58 + 32);
    v85 = v60;

    v105 = v47;
    v106 = v48;
    State.wrappedValue.getter();
    v61 = v104;
    swift_getKeyPath();
    v105 = v61;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v62 = *(v61 + 56);
    *&v63 = *(v61 + 48);
    v84 = v63;

    v105 = v47;
    v106 = v48;
    State.wrappedValue.getter();
    v64 = v104;
    swift_getKeyPath();
    v105 = v64;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
    v65 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

    v67 = v90;
    *(v90 + 25) = 0;
    v68 = *(v92 + 92);
    *(v67 + v68) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v67 + 128) = 0;
    *(v67 + 136) = 0;
    *(v67 + 144) = 0;
    *(v67 + 152) = -1;
    *&v69 = v85;
    *(&v69 + 1) = v59;
    *&v70 = v84;
    *(&v70 + 1) = v62;
    *(v67 + 24) = v70;
    *(v67 + 8) = v69;
    *v67 = 0;
    *(v67 + 40) = 0u;
    *(v67 + 56) = 0u;
    *(v67 + 72) = 0u;
    *(v67 + 88) = 0u;
    *(v67 + 153) = v57;
    *(v67 + 154) = 0;
    *(v67 + 156) = 0;
    v104 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v71 = v106;
    *(v67 + 208) = v105;
    *(v67 + 216) = v71;
    v72 = type metadata accessor for SmartReplyAnalytics();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v75 = sub_10014F2CC(v87, v86);
    *(v67 + 184) = v72;
    *(v67 + 192) = &off_100250760;
    *(v67 + 160) = v75;
    *(v67 + 104) = _swiftEmptyArrayStorage;
    *(v67 + 112) = _swiftEmptyArrayStorage;
    *(v67 + 120) = _swiftEmptyArrayStorage;
    *(v67 + 224) = v66;
    *(v67 + 232) = v65;
    LODWORD(v105) = 0x1000000;
    sub_10016CB94(&qword_10025BBA0, type metadata accessor for FeedbackView);
    View.buttonStyle<A>(_:)();
    sub_10016C91C(v67, type metadata accessor for FeedbackView);
    v43 = v101;
    v35 = v102;
    (*(v101 + 32))();
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_10016ABB4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.leading.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10016AC6C@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_10000341C(&qword_1002657B8, &qword_1001DE540);
  v63 = *(v8 - 8);
  v9 = *(v63 + 8);
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v62 = sub_10000341C(&qword_1002657C0, &qword_1001DE548);
  v73 = *(v62 - 8);
  v12 = v73[8];
  v13 = __chkstk_darwin(v62);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v60 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = swift_allocObject();
  v72 = v24;
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = 0x4042000000000000;

  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v70 = v76;
  v71 = v74;
  v68 = v79;
  v69 = v78;
  v84 = v75;
  v83 = v77;
  v67 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v64 = v84;
  v65 = v83;
  LOBYTE(v94) = 0;
  v66 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = &v23[*(v18 + 44)];
  v59 = v23;
  v42 = v81;
  *v41 = v80;
  *(v41 + 1) = v42;
  *(v41 + 2) = v82;
  v43 = swift_allocObject();
  v43[2] = a1;
  v43[3] = a2;
  v43[4] = a3;

  sub_10000341C(&qword_10025C890, &qword_1001DEC00);
  sub_100048DE0();
  Button.init(action:label:)();
  v94 = a1;
  v95 = a2;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v44 = v85;
  swift_getKeyPath();
  v94 = v44;
  sub_10016CB94(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a2) = *(v44 + 112);

  LOBYTE(v94) = a2;
  *(&v94 + 1) = 1;
  BYTE3(v94) = 1;
  sub_100007120(&qword_1002657C8, &qword_1002657B8, &qword_1001DE540);
  sub_100035980();
  v58 = v16;
  View.buttonStyle<A>(_:)();
  (*(v63 + 1))(v11, v8);
  v45 = v60;
  sub_1000081F8(v23, v60, &qword_10025D700, &unk_1001DE550);
  v46 = v73[2];
  v47 = v61;
  v48 = v16;
  v49 = v62;
  v46(v61, v48, v62);
  v63 = sub_10016C4AC;
  *&v85 = sub_10016C4AC;
  *(&v85 + 1) = v72;
  *&v86 = v71;
  BYTE8(v86) = v64;
  *&v87 = v70;
  BYTE8(v87) = v65;
  *&v88 = v69;
  *(&v88 + 1) = v68;
  LOBYTE(v89) = v67;
  *(&v89 + 1) = v26;
  *&v90 = v28;
  *(&v90 + 1) = v30;
  *&v91 = v32;
  BYTE8(v91) = 0;
  LOBYTE(v92) = v66;
  *(&v92 + 1) = v34;
  *&v93[0] = v36;
  *(&v93[0] + 1) = v38;
  *&v93[1] = v40;
  BYTE8(v93[1]) = 0;
  v50 = v93[0];
  a4[7] = v92;
  a4[8] = v50;
  v51 = v91;
  a4[5] = v90;
  a4[6] = v51;
  v52 = v86;
  v53 = v87;
  *a4 = v85;
  a4[1] = v52;
  v54 = v89;
  a4[3] = v88;
  a4[4] = v54;
  a4[2] = v53;
  *(a4 + 137) = *(v93 + 9);
  v55 = sub_10000341C(&qword_1002657D0, &qword_1001DE588);
  sub_1000081F8(v45, a4 + *(v55 + 48), &qword_10025D700, &unk_1001DE550);
  v46(a4 + *(v55 + 64), v47, v49);
  sub_1000081F8(&v85, &v94, &qword_1002657D8, &qword_1001DE590);
  v56 = v73[1];
  v56(v58, v49);
  sub_10000F500(v59, &qword_10025D700, &unk_1001DE550);
  v56(v47, v49);
  sub_10000F500(v45, &qword_10025D700, &unk_1001DE550);
  v94 = v63;
  v95 = v72;
  v96 = v71;
  v97 = v64;
  v98 = v70;
  v99 = v65;
  v100 = v69;
  v101 = v68;
  v102 = v67;
  v103 = v26;
  v104 = v28;
  v105 = v30;
  v106 = v32;
  v107 = 0;
  v108 = v66;
  v109 = v34;
  v110 = v36;
  v111 = v38;
  v112 = v40;
  v113 = 0;
  return sub_10000F500(&v94, &qword_1002657D8, &qword_1001DE590);
}

uint64_t sub_10016B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v43 = a4;
  v48 = a1;
  v50 = a5;
  v46 = type metadata accessor for GeometryProxy();
  v41 = *(v46 - 8);
  v45 = *(v41 + 64);
  __chkstk_darwin(v46);
  v44 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for InputDashboardQuestionnaireButtonStyle(0);
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000341C(&qword_1002657E0, &qword_1001DE598);
  v39 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v47 = sub_10000341C(&qword_1002657E8, &qword_1001DE5A0);
  v49 = *(v47 - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(v47);
  v51 = &v36 - v17;
  v52 = a2;
  v53 = a3;
  v40 = a3;
  v54 = v5;
  sub_10000341C(&qword_1002657F0, &qword_1001DE5A8);
  sub_10016C510();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v15[*(v12 + 36)];
  v19 = v61;
  *v18 = v60;
  *(v18 + 1) = v19;
  *(v18 + 2) = v62;
  v55 = a2;
  v56 = a3;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v20 = v59;
  swift_getKeyPath();
  v55 = v20;
  sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  *v11 = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v22 = v42;
  *(v11 + *(v42 + 20)) = (v21 & 1) == 0;
  v38 = sub_10016C664();
  v37 = sub_10016CB94(&qword_100265828, type metadata accessor for InputDashboardQuestionnaireButtonStyle);
  v23 = v39;
  View.buttonStyle<A>(_:)();
  sub_10016C91C(v11, type metadata accessor for InputDashboardQuestionnaireButtonStyle);
  sub_10000F500(v15, &qword_1002657E0, &qword_1001DE598);
  v24 = v40;
  v55 = a2;
  v56 = v40;
  State.wrappedValue.getter();
  v25 = v59;
  swift_getKeyPath();
  v55 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v5) = *(v25 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  LOBYTE(v59) = v5;
  v26 = v41;
  v27 = v44;
  v28 = v46;
  (*(v41 + 16))(v44, v48, v46);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = (v45 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v29, v27, v28);
  v32 = (v31 + v30);
  *v32 = a2;
  v32[1] = v24;
  v32[2] = v43;

  v55 = v23;
  v56 = v22;
  v57 = v38;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  v33 = v51;
  v34 = v47;
  View.onChange<A>(of:initial:_:)();

  return (*(v49 + 8))(v33, v34);
}

double sub_10016B9F4@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v9;
  v11 = v13[1];
  *(a2 + 24) = v13[0];
  *(a2 + 40) = v11;
  result = *&v14;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_10016BB44(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for GlobalCoordinateSpace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*a1 & 1) == 0 && *a2)
  {
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    (*(v10 + 8))(v14, v9);
    *&v30 = a4;
    *(&v30 + 1) = a5;
    sub_10000341C(&qword_10025B648, &qword_1001D0050);
    State.wrappedValue.getter();
    v23 = v29;
    *&v30 = v16;
    *(&v30 + 1) = v18;
    *&v31 = v20;
    *(&v31 + 1) = v22;
    v32 = 0;
    v24 = v29 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
    if ((*(v29 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32) & 1) != 0 || (v33.origin.x = v16, v33.origin.y = v18, v33.size.width = v20, v33.size.height = v22, !CGRectEqualToRect(*v24, v33)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v28[-16] = v23;
      *&v28[-8] = &v30;
      v29 = v23;
      sub_10016CB94(&qword_10025D578, type metadata accessor for QuestionnaireModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v25 = v30;
      v26 = v31;
      *(v24 + 32) = v32;
      *v24 = v25;
      *(v24 + 16) = v26;
      sub_10004EA6C();
    }
  }

  return result;
}

uint64_t sub_10016BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void))
{
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;

  sub_100051DE8(a5, 0, a6, v11);
}

uint64_t sub_10016BEA0()
{
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10016BF1C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10002A984(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.trailing.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10016C010(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_10016C0A8, v4, v3);
}

uint64_t sub_10016C0A8()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10016C168;

  return sub_1000501F4();
}

uint64_t sub_10016C168()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_10016C2AC, v5, v4);
}

uint64_t sub_10016C2AC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016C30C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = 0x4010000000000000;
  v6 = sub_10000341C(&qword_100265778, &qword_1001DE4F0);
  sub_1001697FC(v3, v4, v5, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v8 = (a1 + *(sub_10000341C(&qword_100265780, &qword_1001DE508) + 36));
  v9 = *(type metadata accessor for _TaskModifier() + 20);

  result = static TaskPriority.userInitiated.getter();
  *v8 = &unk_1001DE500;
  v8[1] = v7;
  return result;
}

uint64_t sub_10016C3FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100028688;

  return sub_10016C010(v2, v3);
}

double sub_10016C504@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10016B9F4(v1[4], a1);
}

unint64_t sub_10016C510()
{
  result = qword_1002657F8;
  if (!qword_1002657F8)
  {
    sub_100003E34(&qword_1002657F0, &qword_1001DE5A8);
    sub_10016C59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002657F8);
  }

  return result;
}

unint64_t sub_10016C59C()
{
  result = qword_100265800;
  if (!qword_100265800)
  {
    sub_100003E34(&qword_100265808, &unk_1001DE5B0);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265800);
  }

  return result;
}

unint64_t sub_10016C664()
{
  result = qword_100265810;
  if (!qword_100265810)
  {
    sub_100003E34(&qword_1002657E0, &qword_1001DE598);
    sub_100007120(&qword_100265818, &qword_100265820, &qword_1001DE620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265810);
  }

  return result;
}

uint64_t sub_10016C71C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10016C7CC(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_10016BB44(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_10016C91C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016C97C(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[4];

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10016C9D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10016BEA0();
}

unint64_t sub_10016C9F4()
{
  result = qword_100265840;
  if (!qword_100265840)
  {
    sub_100003E34(&qword_100265780, &qword_1001DE508);
    sub_10016CAB0();
    sub_10016CB94(&qword_10025A930, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265840);
  }

  return result;
}

unint64_t sub_10016CAB0()
{
  result = qword_100265848;
  if (!qword_100265848)
  {
    sub_100003E34(&qword_100265778, &qword_1001DE4F0);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90);
    sub_100007120(&qword_100265850, &qword_100265858, &qword_1001DE798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265848);
  }

  return result;
}

uint64_t sub_10016CB94(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10016CC1C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10016CD30(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_10016CE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v9 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_10000341C(&qword_100265870, &qword_1001DE860);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_10000341C(&qword_100265878, &qword_1001DE868);
  sub_10016D1A8(a1, a2, a3, a4, &v23[*(v24 + 44)]);
  v25 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v26 = &v23[*(v17 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  Divider.init()();
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v15;
  v32 = &v15[*(v10 + 44)];
  *v32 = v17;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = [a3 suggestionCategory];
  if (v37)
  {
    v38 = v37;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v55 = 0;
    v40 = 0xE000000000000000;
  }

  v41 = [a3 suggestionDescription];
  if (v41)
  {
    v42 = v41;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v54 = 0;
    v44 = 0xE000000000000000;
  }

  sub_1000081F8(v23, v21, &qword_100265870, &qword_1001DE860);
  v45 = v56;
  sub_1000081F8(v15, v56, &qword_10025B888, &qword_1001D0300);
  v46 = v21;
  v53 = v21;
  v47 = v57;
  sub_1000081F8(v46, v57, &qword_100265870, &qword_1001DE860);
  v48 = sub_10000341C(&qword_100265880, &qword_1001DE870);
  sub_1000081F8(v45, v47 + *(v48 + 48), &qword_10025B888, &qword_1001D0300);
  v49 = (v47 + *(v48 + 64));
  v50 = v54;
  *v49 = v55;
  v49[1] = v40;
  v49[2] = v50;
  v49[3] = v44;

  sub_10000F500(v31, &qword_10025B888, &qword_1001D0300);
  sub_10000F500(v23, &qword_100265870, &qword_1001DE860);

  sub_10000F500(v45, &qword_10025B888, &qword_1001D0300);
  return sub_10000F500(v53, &qword_100265870, &qword_1001DE860);
}

uint64_t sub_10016D1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v9 = sub_10000341C(&qword_100265888, &qword_1001DE878);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v39 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v36[-v14];
  v16 = [a4 attributedText];
  v17 = [a3 originalRange];
  v19 = [v16 attributedSubstringFromRange:{v17, v18}];

  v20 = [v19 string];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v40 = v21;
  v41 = v23;
  sub_10002AC34();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v37 = v27;
  v29 = v28;
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = v38;
  v30[4] = a3;
  v30[5] = a4;

  v31 = a3;
  v32 = a4;

  sub_10000341C(&qword_10025C940, &qword_1001DE880);
  sub_100007120(&qword_10025C948, &qword_10025C940, &qword_1001DE880);
  Button.init(action:label:)();
  *&v15[*(v10 + 44)] = 0x3FE3333333333333;
  v33 = v39;
  sub_1000081F8(v15, v39, &qword_100265888, &qword_1001DE878);
  *a5 = v24;
  *(a5 + 8) = v26;
  LOBYTE(a1) = v37 & 1;
  *(a5 + 16) = v37 & 1;
  *(a5 + 24) = v29;
  *(a5 + 32) = 0x3FE0000000000000;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  v34 = sub_10000341C(&qword_100265890, &unk_1001DE888);
  sub_1000081F8(v33, a5 + *(v34 + 64), &qword_100265888, &qword_1001DE878);
  sub_100007D98(v24, v26, a1);

  sub_10000F500(v15, &qword_100265888, &qword_1001DE878);
  sub_10000F500(v33, &qword_100265888, &qword_1001DE878);
  sub_10002A984(v24, v26, a1);
}

uint64_t sub_10016D4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = a1;
  v13[3] = a2;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v11 = [a3 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A7170(3, v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10016D5FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  sub_100125454(2);
  v19 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  static Font.system(size:weight:design:)();
  sub_10000F500(v5, &qword_10025C5D0, &qword_1001D15A0);
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v5) = v15;
  v17 = v16;

  sub_10002A984(v6, v8, v10 & 1);

  *a1 = v19;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  LOBYTE(v5) = v5 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v17;

  sub_100007D98(v12, v14, v5);

  sub_10002A984(v12, v14, v5);
}

uint64_t sub_10016D80C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v11 = sub_1001A6F98(a3);

  if (v11 == 1)
  {
    v15 = a1;
    v16 = a2;
    State.wrappedValue.getter();
    v13 = [a3 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v10);

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_10016D988@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v7 = sub_10000341C(&qword_100265860, &qword_1001DE850);
  sub_10016CE3C(v3, v4, v6, v5, a1 + *(v7 + 44));
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v5;
  v9 = (a1 + *(sub_10000341C(&qword_100265868, &qword_1001DE858) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = sub_10016DA7C;
  v9[3] = v8;

  v10 = v6;
  v11 = v5;
}

uint64_t sub_10016DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v60 - v10;
  v110 = a1;
  v111 = a2;
  v65 = sub_10002AC34();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  LOBYTE(a1) = v15;
  v66 = Text.bold()();
  v17 = v16;
  v19 = v18;
  v60 = v20;
  sub_10002A984(v12, v14, a1 & 1);

  v61 = type metadata accessor for Font.Design();
  v21 = *(v61 - 8);
  v22 = *(v21 + 56);
  v62 = v21 + 56;
  v63 = v22;
  v22(v11, 1, 1, v61);
  static Font.system(size:weight:design:)();
  sub_10000F500(v11, &qword_10025C5D0, &qword_1001D15A0);
  LOBYTE(v12) = v19;
  v23 = v66;
  v24 = Text.font(_:)();
  v69 = v25;
  v70 = v24;
  LOBYTE(v14) = v26;
  v64 = v27;

  sub_10002A984(v23, v17, v12 & 1);

  LOBYTE(v17) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LODWORD(v14) = v14 & 1;
  LODWORD(v66) = v14;
  LOBYTE(v103) = 0;
  v110 = v67;
  v111 = v68;

  v36 = Text.init<A>(_:)();
  v67 = v37;
  v68 = v38;
  LOBYTE(v23) = v39;
  v63(v11, 1, 1, v61);
  v40 = static Font.system(size:weight:design:)();
  sub_10000F500(v11, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v23) = v23 & 1;
  LOBYTE(v110) = v23;
  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *&v99 = v70;
  *(&v99 + 1) = v69;
  LOBYTE(v100) = v14;
  *(&v100 + 1) = *v98;
  DWORD1(v100) = *&v98[3];
  v42 = v64;
  *(&v100 + 1) = v64;
  LOBYTE(v101) = v17;
  DWORD1(v101) = *&v97[3];
  *(&v101 + 1) = *v97;
  *(&v101 + 1) = v29;
  *&v102[0] = v31;
  *(&v102[0] + 1) = v33;
  *&v102[1] = v35;
  BYTE8(v102[1]) = 0;
  *(v85 + 9) = *(v102 + 9);
  v84 = v101;
  v85[0] = v102[0];
  v82 = v99;
  v83 = v100;
  v43 = v36;
  v44 = v67;
  *&v103 = v36;
  *(&v103 + 1) = v67;
  LOBYTE(v104) = v23;
  DWORD1(v104) = *(v95 + 3);
  *(&v104 + 1) = v95[0];
  v45 = v68;
  *(&v104 + 1) = v68;
  LOWORD(v105) = 256;
  WORD3(v105) = v94;
  *(&v105 + 2) = v93;
  *(&v105 + 1) = KeyPath;
  *&v106 = v40;
  BYTE8(v106) = v12;
  HIDWORD(v106) = *(v96 + 3);
  *(&v106 + 9) = v96[0];
  *&v107 = v46;
  *(&v107 + 1) = v47;
  *&v108 = v48;
  *(&v108 + 1) = v49;
  v109 = 0;
  v92 = 0;
  v90 = v107;
  v91 = v108;
  v88 = v105;
  v89 = v106;
  v86 = v103;
  v87 = v104;
  v50 = v99;
  v51 = v100;
  v52 = v102[0];
  *(a5 + 32) = v101;
  *(a5 + 48) = v52;
  *a5 = v50;
  *(a5 + 16) = v51;
  v53 = v85[1];
  v54 = v86;
  v55 = v88;
  *(a5 + 96) = v87;
  *(a5 + 112) = v55;
  *(a5 + 64) = v53;
  *(a5 + 80) = v54;
  v56 = v89;
  v57 = v90;
  v58 = v91;
  *(a5 + 176) = v92;
  *(a5 + 144) = v57;
  *(a5 + 160) = v58;
  *(a5 + 128) = v56;
  v110 = v43;
  v111 = v44;
  v112 = v23;
  *v113 = v95[0];
  *&v113[3] = *(v95 + 3);
  v114 = v45;
  v115 = 256;
  v116 = v93;
  v117 = v94;
  v118 = KeyPath;
  v119 = v40;
  v120 = v12;
  *&v121[3] = *(v96 + 3);
  *v121 = v96[0];
  v122 = v46;
  v123 = v47;
  v124 = v48;
  v125 = v49;
  v126 = 0;
  sub_1000081F8(&v99, v71, &qword_10025C890, &qword_1001DEC00);
  sub_1000081F8(&v103, v71, &qword_100265908, &qword_1001DEC08);
  sub_10000F500(&v110, &qword_100265908, &qword_1001DEC08);
  v71[0] = v70;
  v71[1] = v69;
  v72 = v66;
  *v73 = *v98;
  *&v73[3] = *&v98[3];
  v74 = v42;
  v75 = v17;
  *v76 = *v97;
  *&v76[3] = *&v97[3];
  v77 = v29;
  v78 = v31;
  v79 = v33;
  v80 = v35;
  v81 = 0;
  return sub_10000F500(v71, &qword_10025C890, &qword_1001DEC00);
}

uint64_t sub_10016DF70@<X0>(uint64_t a1@<X8>)
{
  sub_10016DA88(*v1, v1[1], v1[2], v1[3], v14);
  v3 = static Edge.Set.leading.getter();
  result = EdgeInsets.init(_all:)();
  v5 = v14[9];
  *(a1 + 128) = v14[8];
  *(a1 + 144) = v5;
  *(a1 + 160) = v14[10];
  *(a1 + 176) = v15;
  v6 = v14[5];
  *(a1 + 64) = v14[4];
  *(a1 + 80) = v6;
  v7 = v14[7];
  *(a1 + 96) = v14[6];
  *(a1 + 112) = v7;
  v8 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v8;
  v9 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v9;
  *(a1 + 184) = v3;
  *(a1 + 192) = v10;
  *(a1 + 200) = v11;
  *(a1 + 208) = v12;
  *(a1 + 216) = v13;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_10016E020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v11 = sub_10000341C(&qword_100265940, &qword_1001DEC70);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(sub_10000341C(&qword_100265948, &qword_1001DEC78) + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  result = sub_10000341C(&qword_100265950, &qword_1001DEC80);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10016E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_100265910, &qword_1001DEC10);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_100265918, &qword_1001DEC18) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_100265920, &qword_1001DEC20) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = (a2 + *(sub_10000341C(&qword_100265928, &qword_1001DEC28) + 36));
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #14.0 }

  *v24 = _Q0;
  if (qword_10025A7E0 != -1)
  {
    swift_once();
  }

  v33 = qword_100277190;
  v34 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v24[*(v34 + 52)] = v33;
  *&v24[*(v34 + 56)] = 256;

  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v24[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v41 = (a2 + *(sub_10000341C(&qword_100265930, &qword_1001DEC60) + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  LOBYTE(v39) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  result = sub_10000341C(&qword_100265938, &qword_1001DEC68);
  v51 = a2 + *(result + 36);
  *v51 = v39;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_10016E460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265900, &qword_1001DEBC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10016E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_1002658E0, &qword_1001DEBA8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_1002658E8, &qword_1001DEBB0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_1002658F0, &qword_1001DEBB8) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = sub_10000341C(&qword_1002658F8, &qword_1001DEBC0);
  v33 = a2 + *(result + 36);
  *v33 = a1;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_10016E640()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10016E69C(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v31 = a2;
  v32 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_100277358;
  if (!*(qword_100277358 + 16) || (v12 = sub_100005044(a1), (v13 & 1) == 0))
  {
LABEL_11:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_12;
  }

  v29 = a1;
  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  swift_getKeyPath();
  v36 = v14;
  sub_10016EA28();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  v16 = swift_beginAccess();
  v17 = *(v14 + v15);
  __chkstk_darwin(v16);
  v30 = a3;
  *(&v29 - 2) = a3;

  v18 = sub_10016CC1C(sub_10016EA80, (&v29 - 4), v17);

  if (v18)
  {
    v20 = [v18 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getKeyPath();
    v35 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
    swift_beginAccess();
    v22 = *(v14 + v21);
    if (*(v22 + 16))
    {
      v23 = *(v14 + v21);

      v24 = sub_100005044(v10);
      v26 = v25;

      if (v26)
      {
        *(*(v22 + 56) + 8 * v24);

        v27 = *(v7 + 8);
        v27(v10, v6);
        v33 = v14;
        type metadata accessor for ProofreadingModel();

        State.init(wrappedValue:)();

        v27(v32, v6);
        v27(v29, v6);
        v28 = v34;
        v27(v30, v6);
        return v28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_10016EA28()
{
  result = qword_10025BAB0;
  if (!qword_10025BAB0)
  {
    type metadata accessor for ProofreadingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAB0);
  }

  return result;
}

unint64_t sub_10016EAFC()
{
  result = qword_100265898;
  if (!qword_100265898)
  {
    sub_100003E34(&qword_100265868, &qword_1001DE858);
    sub_10016EB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265898);
  }

  return result;
}

unint64_t sub_10016EB88()
{
  result = qword_1002658A0;
  if (!qword_1002658A0)
  {
    sub_100003E34(&qword_1002658A8, &qword_1001DEA00);
    sub_10016EC14();
    sub_10016ED20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658A0);
  }

  return result;
}

unint64_t sub_10016EC14()
{
  result = qword_1002658B0;
  if (!qword_1002658B0)
  {
    sub_100003E34(&qword_1002658B8, &qword_1001DEA08);
    sub_100007120(&qword_1002658C0, &qword_1002658C8, qword_1001DEA10);
    sub_10016ECCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658B0);
  }

  return result;
}

unint64_t sub_10016ECCC()
{
  result = qword_1002658D0;
  if (!qword_1002658D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658D0);
  }

  return result;
}

unint64_t sub_10016ED20()
{
  result = qword_1002658D8;
  if (!qword_1002658D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002658D8);
  }

  return result;
}

unint64_t sub_10016EE14()
{
  result = qword_100265958;
  if (!qword_100265958)
  {
    sub_100003E34(&qword_1002658F8, &qword_1001DEBC0);
    sub_10016EEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265958);
  }

  return result;
}

unint64_t sub_10016EEA0()
{
  result = qword_100265960;
  if (!qword_100265960)
  {
    sub_100003E34(&qword_1002658F0, &qword_1001DEBB8);
    sub_10016EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265960);
  }

  return result;
}

unint64_t sub_10016EF2C()
{
  result = qword_100265968;
  if (!qword_100265968)
  {
    sub_100003E34(&qword_1002658E8, &qword_1001DEBB0);
    sub_100007120(&qword_100265970, &qword_1002658E0, &qword_1001DEBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265968);
  }

  return result;
}

unint64_t sub_10016F02C()
{
  result = qword_100265980;
  if (!qword_100265980)
  {
    sub_100003E34(&qword_100265988, &qword_1001DEC88);
    sub_10016F0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265980);
  }

  return result;
}

unint64_t sub_10016F0B8()
{
  result = qword_100265990;
  if (!qword_100265990)
  {
    sub_100003E34(&qword_100265998, &qword_1001DEC90);
    sub_100007120(&qword_1002659A0, &qword_1002659A8, &qword_1001DEC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265990);
  }

  return result;
}

unint64_t sub_10016F16C()
{
  result = qword_1002659B0;
  if (!qword_1002659B0)
  {
    sub_100003E34(&qword_100265938, &qword_1001DEC68);
    sub_10016F1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659B0);
  }

  return result;
}

unint64_t sub_10016F1F8()
{
  result = qword_1002659B8;
  if (!qword_1002659B8)
  {
    sub_100003E34(&qword_100265930, &qword_1001DEC60);
    sub_10016F2B0();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659B8);
  }

  return result;
}

unint64_t sub_10016F2B0()
{
  result = qword_1002659C0;
  if (!qword_1002659C0)
  {
    sub_100003E34(&qword_100265928, &qword_1001DEC28);
    sub_10016F368();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659C0);
  }

  return result;
}

unint64_t sub_10016F368()
{
  result = qword_1002659C8;
  if (!qword_1002659C8)
  {
    sub_100003E34(&qword_100265920, &qword_1001DEC20);
    sub_10016F3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659C8);
  }

  return result;
}

unint64_t sub_10016F3F4()
{
  result = qword_1002659D0;
  if (!qword_1002659D0)
  {
    sub_100003E34(&qword_100265918, &qword_1001DEC18);
    sub_100007120(&qword_1002659D8, &qword_100265910, &qword_1001DEC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659D0);
  }

  return result;
}

unint64_t sub_10016F4B0()
{
  result = qword_1002659E0;
  if (!qword_1002659E0)
  {
    sub_100003E34(&qword_100265950, &qword_1001DEC80);
    sub_10016F568();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659E0);
  }

  return result;
}

unint64_t sub_10016F568()
{
  result = qword_1002659E8;
  if (!qword_1002659E8)
  {
    sub_100003E34(&qword_100265948, &qword_1001DEC78);
    sub_100007120(&qword_1002659F0, &qword_100265940, &qword_1001DEC70);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002659E8);
  }

  return result;
}

uint64_t sub_10016F650()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10016F6C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10016F778(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10016F87C()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_10016F8F0(uint64_t result, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = result;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10016F9F4(uint64_t result, uint64_t a2, char a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3 & 1;
  return result;
}

uint64_t sub_10016FA04()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_10016FA78(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1001701F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10016FB7C()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 57);
}

uint64_t sub_10016FBEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_10016FC8C(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001701F8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_10016FD74()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

void sub_10016FDE4(double a1, double a2)
{
  if (*(v2 + 64) == a1 && *(v2 + 72) == a2)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001701F8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10016FED4(uint64_t result, double a2, double a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

BOOL sub_10016FEDC()
{
  swift_getKeyPath();
  sub_1001701F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + 24) & 1) == 0 && *(v0 + 16) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return (*(v0 + 24) & 1) == 0 && *(v0 + 16) == 1;
}

uint64_t PresentationModel.deinit()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17PresentationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PresentationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17PresentationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentationModel()
{
  result = qword_100265A28;
  if (!qword_100265A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017010C()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1001701F8()
{
  result = qword_10025A910;
  if (!qword_10025A910)
  {
    type metadata accessor for PresentationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A910);
  }

  return result;
}

__n128 sub_100170258()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

void sub_1001702AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_1001702C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

void sub_100170300()
{
  v62 = type metadata accessor for URL();
  v1 = *(v62 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v62);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v54 - v6;
  swift_getKeyPath();
  v69 = v0;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v0[2] + 16);
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      sub_100173BA0(v9--);
    }

    while (v9 != -1);
  }

  swift_getKeyPath();
  v68 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = v0[8];
  v0[8] = &_swiftEmptyArrayStorage;

  v67 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v65 = objc_opt_self();
  v11 = [v65 defaultManager];
  if (qword_10025A860 != -1)
  {
    swift_once();
  }

  v12 = v62;
  sub_10000F34C(v62, qword_1002772C0);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v67 = 0;
  v16 = [v11 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:&v67];

  v17 = v67;
  if (v16)
  {
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v17;

    v21 = *(v18 + 16);
    if (v21)
    {
      v22 = v1 + 16;
      v66 = *(v1 + 16);
      v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v54[1] = v18;
      v24 = v18 + v23;
      v25 = *(v22 + 56);
      v63 = (v22 - 8);
      v64 = v25;
      *&v20 = 136643075;
      v57 = v20;
      v58 = v22;
      v56 = v7;
      v55 = v5;
      v66(v7, v18 + v23, v12);
      while (1)
      {
        v28 = [v65 defaultManager];
        URL._bridgeToObjectiveC()(v29);
        v31 = v30;
        v67 = 0;
        v32 = [v28 removeItemAtURL:v30 error:&v67];

        if (v32)
        {
          v26 = *v63;
          v27 = v67;
          v26(v7, v12);
        }

        else
        {
          v33 = v67;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_10025A6D8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_10000F34C(v34, qword_100276EF0);
          v66(v5, v7, v12);
          swift_errorRetain();
          swift_errorRetain();
          v35 = Logger.logObject.getter();
          v36 = v5;
          v37 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v37))
          {
            v38 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v60 = v35;
            v61 = v39;
            v67 = v39;
            *v38 = v57;
            v40 = URL.path(percentEncoded:)(1);
            v41 = *v63;
            (*v63)(v36, v62);
            v42 = sub_10002510C(v40._countAndFlagsBits, v40._object, &v67);

            *(v38 + 4) = v42;
            *(v38 + 12) = 2112;
            swift_errorRetain();
            v43 = _swift_stdlib_bridgeErrorToNSError();
            *(v38 + 14) = v43;
            v44 = v59;
            *v59 = v43;

            v45 = v60;
            _os_log_impl(&_mh_execute_header, v60, v37, "failed to remove file at %{sensitive}s: %@", v38, 0x16u);
            sub_10000F500(v44, &unk_10025D580, &qword_1001CFA60);
            v12 = v62;

            sub_10000F4B4(v61);

            v7 = v56;
            v41(v56, v12);
            v5 = v55;
          }

          else
          {

            v5 = v36;
            v46 = *v63;
            (*v63)(v5, v12);
            v46(v7, v12);
          }
        }

        v24 += v64;
        if (!--v21)
        {
          break;
        }

        v66(v7, v24, v12);
      }
    }
  }

  else
  {
    v47 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000F34C(v48, qword_100276EF0);
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v52 = v53;

      _os_log_impl(&_mh_execute_header, v49, v50, "failed to enumerate attachments tmp directory: %@", v51, 0xCu);
      sub_10000F500(v52, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }
  }
}

uint64_t sub_100170B3C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for DocumentRegistration.Progress();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for DocumentRegistration.Status();
  v2[37] = v6;
  v7 = *(v6 - 8);
  v2[38] = v7;
  v8 = *(v7 + 64) + 15;
  v2[39] = swift_task_alloc();
  v9 = type metadata accessor for DocumentRegistration();
  v2[40] = v9;
  v10 = *(v9 - 8);
  v2[41] = v10;
  v11 = *(v10 + 64) + 15;
  v2[42] = swift_task_alloc();
  v12 = *(*(sub_10000341C(&qword_100265F58, &qword_1001DF1C0) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v13 = sub_10000341C(&qword_100265F60, &qword_1001DF1C8);
  v2[44] = v13;
  v14 = *(v13 - 8);
  v2[45] = v14;
  v15 = *(v14 + 64) + 15;
  v2[46] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v2[47] = v16;
  v17 = *(v16 - 8);
  v2[48] = v17;
  v18 = *(v17 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v19 = sub_10000341C(&qword_100265F68, &qword_1001DF1D0);
  v2[52] = v19;
  v20 = *(v19 - 8);
  v2[53] = v20;
  v21 = *(v20 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v22 = *(*(sub_10000341C(&qword_100265F70, &qword_1001DF1D8) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v23 = type metadata accessor for DocumentResource();
  v2[57] = v23;
  v24 = *(v23 - 8);
  v2[58] = v24;
  v25 = *(v24 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v26 = *(*(sub_10000341C(&qword_100265F78, &qword_1001DF1E0) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v27 = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  v2[62] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v29 = *(*(type metadata accessor for Attachment.UploadState(0) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v30 = *(*(sub_10000341C(&qword_100265F80, &qword_1001DF1E8) - 8) + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v31 = type metadata accessor for DocumentResourceIdentifier();
  v2[71] = v31;
  v32 = *(v31 - 8);
  v2[72] = v32;
  v33 = *(v32 + 64) + 15;
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v34 = type metadata accessor for Attachment(0);
  v2[76] = v34;
  v35 = *(v34 - 8);
  v2[77] = v35;
  v36 = *(v35 + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = type metadata accessor for MainActor();
  v2[80] = static MainActor.shared.getter();
  v38 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[81] = v38;
  v2[82] = v37;

  return _swift_task_switch(sub_100171108, v38, v37);
}

uint64_t sub_100171108()
{
  v211 = v0;
  if (qword_10025A6D8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v1 = *(v0 + 256);
    v2 = type metadata accessor for Logger();
    *(v0 + 664) = sub_10000F34C(v2, qword_100276EF0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 608);
      v6 = *(v0 + 256);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v210[0] = v8;
      *v7 = 136315138;
      swift_getKeyPath();
      *(v0 + 240) = v6;
      sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v9 = *(v6 + 64);

      v10 = Array.description.getter();
      v12 = v11;

      v13 = sub_10002510C(v10, v12, v210);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "unregistering attachments: %s", v7, 0xCu);
      sub_10000F4B4(v8);
    }

    v14 = *(v0 + 256);
    swift_getKeyPath();
    *(v0 + 672) = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
    *(v0 + 152) = v14;
    *(v0 + 680) = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v177 = v14;
    v15 = *(v14 + 64);
    v16 = *(v15 + 16);
    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v18 = *(v0 + 616);
      v19 = *(v0 + 576);
      v196 = *(*(v0 + 608) + 40);
      v201 = *(v0 + 624);
      v20 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v192 = *(v18 + 72);
      v206 = (v19 + 32);
      v180 = v19;
      v184 = (v19 + 48);
      v188 = (v19 + 56);

      v21 = _swiftEmptyArrayStorage;
      v22 = &unk_100265F80;
      do
      {
        v23 = v22;
        v24 = *(v0 + 624);
        v25 = *(v0 + 544);
        sub_10017F384(v20, v24, type metadata accessor for Attachment);
        sub_10017F384(v201 + v196, v25, type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v24, type metadata accessor for Attachment);
        v26 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
        if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
        {
          sub_10017F3EC(*(v0 + 544), type metadata accessor for Attachment.UploadState);
          v27 = 1;
        }

        else
        {
          (*v206)(*(v0 + 552), *(v0 + 544), *(v0 + 568));
          v27 = 0;
        }

        v28 = *(v0 + 568);
        v29 = *(v0 + 560);
        v30 = *(v0 + 552);
        (*v188)(v30, v27, 1, v28);
        v31 = v30;
        v22 = v23;
        sub_10002A894(v31, v29, v23, &qword_1001DF1E8);
        if ((*v184)(v29, 1, v28) == 1)
        {
          sub_10000F500(*(v0 + 560), v23, &qword_1001DF1E8);
        }

        else
        {
          v32 = *v206;
          (*v206)(*(v0 + 600), *(v0 + 560), *(v0 + 568));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_10017D948(0, *(v21 + 2) + 1, 1, v21, &qword_100265F98, &qword_1001DF1F8, &type metadata accessor for DocumentResourceIdentifier);
          }

          v34 = *(v21 + 2);
          v33 = *(v21 + 3);
          if (v34 >= v33 >> 1)
          {
            v21 = sub_10017D948(v33 > 1, v34 + 1, 1, v21, &qword_100265F98, &qword_1001DF1F8, &type metadata accessor for DocumentResourceIdentifier);
          }

          v35 = *(v0 + 600);
          v36 = *(v0 + 568);
          *(v21 + 2) = v34 + 1;
          v32(&v21[((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v34], v35, v36);
          v22 = v23;
        }

        v20 += v192;
        --v16;
      }

      while (v16);

      v17 = _swiftEmptyArrayStorage;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v37 = *(v0 + 248);
    GenerativeExperiencesSession.unregister(documents:)(v21);
    if (v38)
    {
      v39 = *(v0 + 640);

      v40 = *(v0 + 624);
      v41 = *(v0 + 600);
      v42 = *(v0 + 592);
      v43 = *(v0 + 584);
      v44 = *(v0 + 560);
      v45 = *(v0 + 552);
      v46 = *(v0 + 544);
      v47 = *(v0 + 536);
      v48 = *(v0 + 528);
      v49 = *(v0 + 520);
      v156 = *(v0 + 512);
      v157 = *(v0 + 504);
      v159 = *(v0 + 488);
      v161 = *(v0 + 480);
      v163 = *(v0 + 472);
      v165 = *(v0 + 448);
      v167 = *(v0 + 440);
      v170 = *(v0 + 432);
      v173 = *(v0 + 408);
      v175 = *(v0 + 400);
      v178 = *(v0 + 392);
      v181 = *(v0 + 368);
      v185 = *(v0 + 344);
      v189 = *(v0 + 336);
      v193 = *(v0 + 312);
      v197 = *(v0 + 288);
      v202 = *(v0 + 280);

      v50 = *(v0 + 8);
      goto LABEL_55;
    }

    v51 = *(v0 + 256);

    swift_getKeyPath();
    *(v0 + 160) = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 168) = v51;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v52 = *(v177 + 64);
    *(v177 + 64) = _swiftEmptyArrayStorage;

    *(v0 + 176) = v51;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 184) = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v203 = *(*(v51 + 16) + 16);
    v207 = v51;
    if (!v203)
    {
      break;
    }

    v53 = 0;
    v198 = *(v0 + 616);
    v54 = *(v0 + 576);
    v168 = (v54 + 32);
    v186 = (v54 + 8);
    v55 = *(v0 + 496);
    v190 = v55;
    v194 = *(v0 + 608);
    while (1)
    {
      v59 = *(v0 + 256);
      swift_getKeyPath();
      *(v0 + 192) = v59;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v60 = *(v207 + 16);
      if (v53 >= *(v60 + 16))
      {
        break;
      }

      v61 = *(v0 + 536);
      v62 = *(v0 + 528);
      v63 = *(v0 + 504);
      sub_10017F384(v60 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v53 + *(v194 + 40), v61, type metadata accessor for Attachment.UploadState);
      v64 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
      v65 = *(v64 - 8);
      (*(v65 + 56))(v62, 1, 1, v64);
      v66 = *(v190 + 48);
      sub_10017F384(v61, v63, type metadata accessor for Attachment.UploadState);
      sub_10017F384(v62, v63 + v66, type metadata accessor for Attachment.UploadState);
      v67 = *(v65 + 48);
      if (v67(v63, 1, v64) == 1)
      {
        v68 = *(v0 + 536);
        sub_10017F3EC(*(v0 + 528), type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v68, type metadata accessor for Attachment.UploadState);
        if (v67(v63 + v66, 1, v64) == 1)
        {
          sub_10017F3EC(*(v0 + 504), type metadata accessor for Attachment.UploadState);
LABEL_32:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v210[0] = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163C40(0, v17[2] + 1, 1);
            v17 = v210[0];
          }

          v79 = v17[2];
          v78 = v17[3];
          if (v79 >= v78 >> 1)
          {
            sub_100163C40((v78 > 1), v79 + 1, 1);
            v17 = v210[0];
          }

          v17[2] = v79 + 1;
          v17[v79 + 4] = v53;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      sub_10017F384(*(v0 + 504), *(v0 + 520), type metadata accessor for Attachment.UploadState);
      if (v67(v63 + v66, 1, v64) == 1)
      {
        v56 = *(v0 + 568);
        v57 = *(v0 + 536);
        v58 = *(v0 + 520);
        sub_10017F3EC(*(v0 + 528), type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v57, type metadata accessor for Attachment.UploadState);
        (*v186)(v58, v56);
LABEL_24:
        sub_10000F500(*(v0 + 504), &qword_100265F30, &qword_1001DF118);
        goto LABEL_25;
      }

      v69 = *(v0 + 592);
      v70 = *(v0 + 568);
      v71 = *(v0 + 536);
      v72 = *(v0 + 528);
      v182 = v17;
      v73 = *(v0 + 520);
      v171 = *(v0 + 504);
      (*v168)(v69, v63 + v66, v70);
      v74 = static DocumentResourceIdentifier.== infix(_:_:)();
      v75 = *v186;
      (*v186)(v69, v70);
      sub_10017F3EC(v72, type metadata accessor for Attachment.UploadState);
      sub_10017F3EC(v71, type metadata accessor for Attachment.UploadState);
      v76 = v73;
      v17 = v182;
      v75(v76, v70);
      sub_10017F3EC(v171, type metadata accessor for Attachment.UploadState);
      if (v74)
      {
        goto LABEL_32;
      }

LABEL_25:
      if (v203 == ++v53)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_37:
  v80 = v17[2];
  if (v80)
  {

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134217984;
      *(v83 + 4) = v17[2];

      _os_log_impl(&_mh_execute_header, v81, v82, "Attaching %ld attachment(s)", v83, 0xCu);
    }

    else
    {
    }

    v85 = 0;
    v86 = *(v0 + 464);
    v87 = (v86 + 48);
    v204 = v86;
    v88 = (v86 + 32);
    v89 = _swiftEmptyArrayStorage;
    v208 = v80;
    v199 = (v86 + 48);
    do
    {
      if (v85 >= v17[2])
      {
        goto LABEL_64;
      }

      v91 = *(v0 + 448);
      v90 = *(v0 + 456);
      v92 = *(v0 + 256);
      v210[0] = v17[v85 + 4];
      sub_100179DAC(v210, v92, v91);
      if ((*v87)(v91, 1, v90) == 1)
      {
        sub_10000F500(*(v0 + 448), &qword_100265F70, &qword_1001DF1D8);
      }

      else
      {
        v93 = v17;
        v95 = *(v0 + 472);
        v94 = *(v0 + 480);
        v96 = *(v0 + 456);
        v97 = *v88;
        (*v88)(v94, *(v0 + 448), v96);
        v97(v95, v94, v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_10017D948(0, v89[2] + 1, 1, v89, &qword_100265FA0, &unk_1001DF200, &type metadata accessor for DocumentResource);
        }

        v99 = v89[2];
        v98 = v89[3];
        v17 = v93;
        if (v99 >= v98 >> 1)
        {
          v89 = sub_10017D948(v98 > 1, v99 + 1, 1, v89, &qword_100265FA0, &unk_1001DF200, &type metadata accessor for DocumentResource);
        }

        v80 = v208;
        v100 = *(v0 + 472);
        v101 = *(v0 + 456);
        v89[2] = v99 + 1;
        v97(v89 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v99, v100, v101);
        v87 = v199;
      }

      ++v85;
    }

    while (v80 != v85);
    v102 = *(v0 + 248);
    v103 = GenerativeExperiencesSession.register(documents:)();

    *(v0 + 16) = v103;
    *(v0 + 24) = 0;
    *(v0 + 32) = v17;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 52) = enum case for DocumentRegistration.Status.registering(_:);
    *(v0 + 744) = enum case for DocumentRegistration.Status.finished(_:);
    v104 = *(v0 + 488);
    sub_1001746A8(v104);
    v105 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
    if ((*(*(v105 - 8) + 48))(v104, 1, v105) == 1)
    {
      v106 = *(v0 + 640);
      v107 = *(v0 + 16);

      v108 = *(v0 + 32);

      goto LABEL_54;
    }

    v120 = *(v0 + 680);
    v121 = *(v0 + 672);
    v122 = *(v0 + 440);
    v123 = *(v0 + 416);
    v124 = *(v0 + 424);
    v125 = *(v0 + 256);
    v126 = *(*(v0 + 488) + *(v105 + 48));
    *(v0 + 688) = v126;
    (*(v124 + 32))(v122);
    swift_getKeyPath();
    *(v0 + 200) = v125;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v126 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v133 = *(v125 + 16);
      if (v126 < *(v133 + 16))
      {
        v134 = *(v0 + 616);
        v135 = *(v0 + 432);
        v136 = *(v0 + 440);
        v137 = *(v0 + 416);
        v138 = *(v0 + 424);
        v139 = *(v0 + 408);
        v140 = *(v0 + 376);
        v141 = *(v0 + 384);
        v142 = *(v0 + 368);
        v143 = *(v134 + 80);
        *(v0 + 748) = v143;
        v144 = *(v134 + 72);
        *(v0 + 696) = v144;
        v145 = v133 + ((v143 + 32) & ~v143) + v144 * v126;
        v146 = *(v141 + 16);
        *(v0 + 704) = v146;
        *(v0 + 712) = (v141 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v146(v139, v145, v140);
        (*(v138 + 16))(v135, v136, v137);
        *(v0 + 720) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        v147 = *(v0 + 720);
        v148 = *(v0 + 632);
        v149 = *(v0 + 416);
        v150 = *(v0 + 352);
        v151 = static MainActor.shared.getter();
        *(v0 + 728) = v151;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v153 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
        v154 = swift_task_alloc();
        *(v0 + 736) = v154;
        *v154 = v0;
        v154[1] = sub_1001723F8;
        v155 = *(v0 + 368);
        v127 = *(v0 + 344);
        v131 = *(v0 + 352);
        v129 = &protocol witness table for MainActor;
        v130 = v0 + 208;
        v128 = v151;
        v132 = AssociatedConformanceWitness;

        return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v127, v128, v129, v130, v131, v132);
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v127, v128, v129, v130, v131, v132);
  }

  v84 = *(v0 + 640);

LABEL_54:

  v109 = *(v0 + 624);
  v110 = *(v0 + 600);
  v111 = *(v0 + 592);
  v112 = *(v0 + 584);
  v113 = *(v0 + 560);
  v114 = *(v0 + 552);
  v115 = *(v0 + 544);
  v116 = *(v0 + 536);
  v117 = *(v0 + 528);
  v118 = *(v0 + 520);
  v158 = *(v0 + 512);
  v160 = *(v0 + 504);
  v162 = *(v0 + 488);
  v164 = *(v0 + 480);
  v166 = *(v0 + 472);
  v169 = *(v0 + 448);
  v172 = *(v0 + 440);
  v174 = *(v0 + 432);
  v176 = *(v0 + 408);
  v179 = *(v0 + 400);
  v183 = *(v0 + 392);
  v187 = *(v0 + 368);
  v191 = *(v0 + 344);
  v195 = *(v0 + 336);
  v200 = *(v0 + 312);
  v205 = *(v0 + 288);
  v209 = *(v0 + 280);

  v50 = *(v0 + 8);
LABEL_55:

  return v50();
}

uint64_t sub_1001723F8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 736);
  v5 = *v1;

  v6 = v2[91];
  if (v0)
  {
    v7 = v3[2];

    v8 = v3[4];

    v9 = v3[82];
    v10 = v3[81];
    v11 = sub_100173120;
  }

  else
  {

    v9 = v3[82];
    v10 = v3[81];
    v11 = sub_10017254C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10017254C()
{
  v165 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v27 = *(v0 + 52);
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 296);
    (*(v3 + 32))(*(v0 + 336), v1, v2);
    DocumentRegistration.status.getter();
    v31 = (*(v29 + 88))(v28, v30);
    if (v31 == v27)
    {
      v32 = *(v0 + 704);
      v156 = *(v0 + 712);
      v160 = *(v0 + 664);
      v34 = *(v0 + 400);
      v33 = *(v0 + 408);
      v35 = *(v0 + 376);
      v36 = *(v0 + 312);
      v37 = *(v0 + 288);
      v38 = *(v0 + 272);
      v39 = *(v0 + 280);
      v40 = *(v0 + 264);
      (*(*(v0 + 304) + 96))(v36, *(v0 + 296));
      (*(v38 + 32))(v37, v36, v40);
      v32(v34, v33, v35);
      (*(v38 + 16))(v39, v37, v40);
      v41 = Logger.logObject.getter();
      v154 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v41, v154);
      v43 = *(v0 + 400);
      v44 = *(v0 + 376);
      v45 = *(v0 + 384);
      v46 = *(v0 + 328);
      v47 = *(v0 + 336);
      v48 = *(v0 + 320);
      v49 = *(v0 + 280);
      v50 = *(v0 + 272);
      v157 = *(v0 + 264);
      v161 = *(v0 + 288);
      if (v42)
      {
        v152 = *(v0 + 320);
        v51 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v164 = v148;
        *v51 = 136643075;
        sub_10017B970(&qword_100265F90, &type metadata accessor for URL);
        loga = v41;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v150 = v47;
        v54 = v53;
        (*(v45 + 8))(v43, v44);
        v55 = sub_10002510C(v52, v54, &v164);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2048;
        DocumentRegistration.Progress.progress.getter();
        v57 = v56;
        v58 = *(v50 + 8);
        v58(v49, v157);
        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, loga, v154, "Attachment uploading %{sensitive}s - Progress: %f %%", v51, 0x16u);
        sub_10000F4B4(v148);

        v58(v161, v157);
        (*(v46 + 8))(v150, v152);
      }

      else
      {

        v102 = *(v50 + 8);
        v102(v49, v157);
        (*(v45 + 8))(v43, v44);
        v102(v161, v157);
        (*(v46 + 8))(v47, v48);
      }

      goto LABEL_21;
    }

    if (v31 != *(v0 + 744))
    {
      v103 = *(v0 + 312);
      v104 = *(v0 + 296);
      v105 = *(v0 + 304);
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      (*(v105 + 8))(v103, v104);
      goto LABEL_21;
    }

    v81 = *(v0 + 712);
    v82 = *(v0 + 704);
    v162 = *(v0 + 664);
    v83 = *(v0 + 584);
    v84 = *(v0 + 576);
    v85 = *(v0 + 568);
    v86 = *(v0 + 408);
    v87 = *(v0 + 392);
    v88 = *(v0 + 376);
    v89 = *(v0 + 312);
    (*(*(v0 + 304) + 96))(v89, *(v0 + 296));
    (*(v84 + 32))(v83, v89, v85);
    v82(v87, v86, v88);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    v92 = os_log_type_enabled(v90, v91);
    v94 = *(v0 + 384);
    v93 = *(v0 + 392);
    v95 = *(v0 + 376);
    if (v92)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v164 = v97;
      *v96 = 136642819;
      sub_10017B970(&qword_100265F90, &type metadata accessor for URL);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      (*(v94 + 8))(v93, v95);
      v101 = sub_10002510C(v98, v100, &v164);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v90, v91, "Attachment upload complete %{sensitive}s", v96, 0xCu);
      sub_10000F4B4(v97);
    }

    else
    {

      (*(v94 + 8))(v93, v95);
    }

    v106 = *(v0 + 680);
    v107 = *(v0 + 672);
    v108 = *(v0 + 512);
    v109 = *(v0 + 256);
    (*(*(v0 + 576) + 16))(v108, *(v0 + 584), *(v0 + 568));
    v110 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
    (*(*(v110 - 8) + 56))(v108, 0, 1, v110);
    swift_getKeyPath();
    *(v0 + 216) = v109;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 224) = v109;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v66 = *(v109 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v109 + 16) = v66;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_19:
      v117 = *(v0 + 688);
      if (v117 >= v66[2])
      {
        __break(1u);
        return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(isUniquelyReferenced_nonNull_native, v112, v113, v114, v115, v116);
      }

      v118 = *(v0 + 680);
      v119 = *(v0 + 672);
      v120 = *(v0 + 584);
      v121 = *(v0 + 576);
      v122 = *(v0 + 568);
      v123 = *(v0 + 328);
      v158 = *(v0 + 320);
      v163 = *(v0 + 336);
      v124 = *(v0 + 256);
      sub_10017F50C(*(v0 + 512), v66 + ((*(v0 + 748) + 32) & ~*(v0 + 748)) + *(v0 + 696) * v117 + *(*(v0 + 608) + 40));
      *(v124 + 16) = v66;
      swift_endAccess();
      *(v0 + 232) = v124;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      (*(v121 + 8))(v120, v122);
      (*(v123 + 8))(v163, v158);
LABEL_21:
      v125 = *(v0 + 720);
      v126 = *(v0 + 632);
      v127 = *(v0 + 416);
      v128 = *(v0 + 352);
      v129 = static MainActor.shared.getter();
      *(v0 + 728) = v129;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v131 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v132 = swift_task_alloc();
      *(v0 + 736) = v132;
      *v132 = v0;
      v132[1] = sub_1001723F8;
      v133 = *(v0 + 368);
      isUniquelyReferenced_nonNull_native = *(v0 + 344);
      v115 = *(v0 + 352);
      v113 = &protocol witness table for MainActor;
      v114 = v0 + 208;
      v112 = v129;
      v116 = AssociatedConformanceWitness;

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(isUniquelyReferenced_nonNull_native, v112, v113, v114, v115, v116);
    }

LABEL_26:
    v134 = *(v0 + 256);
    isUniquelyReferenced_nonNull_native = sub_10017E430(v66);
    v66 = isUniquelyReferenced_nonNull_native;
    *(v134 + 16) = isUniquelyReferenced_nonNull_native;
    goto LABEL_19;
  }

  v4 = *(v0 + 440);
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 488);
  sub_1001746A8(v10);
  v11 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v59 = *(v0 + 680);
    v60 = *(v0 + 672);
    v61 = *(v0 + 440);
    v62 = *(v0 + 416);
    v63 = *(v0 + 424);
    v64 = *(v0 + 256);
    v65 = *(*(v0 + 488) + *(v11 + 48));
    *(v0 + 688) = v65;
    (*(v63 + 32))(v61);
    swift_getKeyPath();
    *(v0 + 200) = v64;
    v66 = (v64 + v60);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v65 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v67 = *(v64 + 16);
      if (v65 < *(v67 + 16))
      {
        v68 = *(v0 + 616);
        v69 = *(v0 + 432);
        v70 = *(v0 + 440);
        v71 = *(v0 + 416);
        v72 = *(v0 + 424);
        v73 = *(v0 + 408);
        v74 = *(v0 + 376);
        v75 = *(v0 + 384);
        v76 = *(v0 + 368);
        v77 = *(v68 + 80);
        *(v0 + 748) = v77;
        v78 = *(v68 + 72);
        *(v0 + 696) = v78;
        v79 = v67 + ((v77 + 32) & ~v77) + v78 * v65;
        v80 = *(v75 + 16);
        *(v0 + 704) = v80;
        *(v0 + 712) = (v75 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v80(v73, v79, v74);
        (*(v72 + 16))(v69, v70, v71);
        *(v0 + 720) = swift_getOpaqueTypeConformance2();
        dispatch thunk of AsyncSequence.makeAsyncIterator()();
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v0 + 640);
  v13 = *(v0 + 16);

  v14 = *(v0 + 32);

  v15 = *(v0 + 624);
  v16 = *(v0 + 600);
  v17 = *(v0 + 592);
  v18 = *(v0 + 584);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);
  v135 = *(v0 + 512);
  v136 = *(v0 + 504);
  v137 = *(v0 + 488);
  v138 = *(v0 + 480);
  v139 = *(v0 + 472);
  v140 = *(v0 + 448);
  v141 = *(v0 + 440);
  v142 = *(v0 + 432);
  v143 = *(v0 + 408);
  v144 = *(v0 + 400);
  log = *(v0 + 392);
  v147 = *(v0 + 368);
  v149 = *(v0 + 344);
  v151 = *(v0 + 336);
  v153 = *(v0 + 312);
  v155 = *(v0 + 288);
  v159 = *(v0 + 280);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100173120()
{
  v1 = v0[80];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[51];
  v6 = v0[47];
  v7 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[44];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v40 = v0[26];
  v11 = v0[78];
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[66];
  v20 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[61];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[56];
  v29 = v0[55];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[46];
  v35 = v0[43];
  v36 = v0[42];
  v37 = v0[39];
  v38 = v0[36];
  v39 = v0[35];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100173358()
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100173410(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Attachment(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1001734FC()
{
  v1 = v0;
  v38 = type metadata accessor for DocumentResourceIdentifier();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  v5 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Attachment.UploadState(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v43 = v1;
  v40 = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  v41 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v19 = *(*(v1 + 16) + 16);
  if (v19)
  {
    v33 = (v2 + 32);
    v36 = (v2 + 8);
    while (1)
    {
      swift_getKeyPath();
      v42 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v1 + 16);
      if (v19 > *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      --v19;
      v21 = type metadata accessor for Attachment(0);
      sub_10017F384(v20 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(*(v21 - 8) + 72) * v19 + *(v21 + 40), v16, type metadata accessor for Attachment.UploadState);
      v22 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
      v23 = *(v22 - 8);
      (*(v23 + 56))(v14, 1, 1, v22);
      v24 = *(v39 + 48);
      sub_10017F384(v16, v7, type metadata accessor for Attachment.UploadState);
      sub_10017F384(v14, &v7[v24], type metadata accessor for Attachment.UploadState);
      v25 = *(v23 + 48);
      if (v25(v7, 1, v22) == 1)
      {
        break;
      }

      v26 = v37;
      sub_10017F384(v7, v37, type metadata accessor for Attachment.UploadState);
      if (v25(&v7[v24], 1, v22) == 1)
      {
        sub_10017F3EC(v14, type metadata accessor for Attachment.UploadState);
        sub_10017F3EC(v16, type metadata accessor for Attachment.UploadState);
        (*v36)(v26, v38);
LABEL_4:
        result = sub_10000F500(v7, &qword_100265F30, &qword_1001DF118);
        goto LABEL_5;
      }

      v27 = &v7[v24];
      v28 = v26;
      v29 = v34;
      v30 = v38;
      (*v33)(v34, v27, v38);
      v35 = static DocumentResourceIdentifier.== infix(_:_:)();
      v31 = *v36;
      (*v36)(v29, v30);
      sub_10017F3EC(v14, type metadata accessor for Attachment.UploadState);
      sub_10017F3EC(v16, type metadata accessor for Attachment.UploadState);
      v31(v28, v30);
      result = sub_10017F3EC(v7, type metadata accessor for Attachment.UploadState);
      if (v35)
      {
        goto LABEL_12;
      }

LABEL_5:
      if (!v19)
      {
        return result;
      }
    }

    sub_10017F3EC(v14, type metadata accessor for Attachment.UploadState);
    sub_10017F3EC(v16, type metadata accessor for Attachment.UploadState);
    if (v25(&v7[v24], 1, v22) == 1)
    {
      sub_10017F3EC(v7, type metadata accessor for Attachment.UploadState);
LABEL_12:
      result = sub_100173BA0(v19);
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  return result;
}

BOOL sub_100173A94(uint64_t a1, uint64_t a2)
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

    v6 = *(type metadata accessor for UTType() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10017B970(&qword_100265F28, &type metadata accessor for UTType);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100173BA0(unint64_t a1)
{
  v2 = v1;
  v70 = type metadata accessor for Attachment(0);
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v70);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v63 - v9;
  v11 = __chkstk_darwin(v8);
  v71 = &v63 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v74[0] = v1;
  v19 = sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(v1[2] + 16) <= a1)
  {
    return result;
  }

  swift_getKeyPath();
  v74[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v1[2];
    if (*(v21 + 16) > a1)
    {
      v68 = v19;
      v67 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = *(v4 + 72);
      v65 = a1;
      v66 = v22;
      sub_10017F384(v21 + v67 + v22 * a1, v17, type metadata accessor for Attachment);
      if (qword_10025A6D8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_5:
  v23 = type metadata accessor for Logger();
  v24 = sub_10000F34C(v23, qword_100276EF0);
  sub_10017F384(v17, v15, type metadata accessor for Attachment);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v64 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v63 = v18;
    v30 = v10;
    v31 = v17;
    v32 = v29;
    v74[0] = v29;
    *v28 = 136642819;
    v33 = sub_100178CB8();
    v35 = v34;
    sub_10017F3EC(v15, type metadata accessor for Attachment);
    v36 = sub_10002510C(v33, v35, v74);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "removing attachment: %{sensitive}s", v28, 0xCu);
    sub_10000F4B4(v32);
    v17 = v31;
    v10 = v30;
  }

  else
  {

    sub_10017F3EC(v15, type metadata accessor for Attachment);
  }

  v37 = v70;
  v38 = &v17[*(v70 + 20)];
  v39 = v38[1];
  if (!v39)
  {
    URL.stopAccessingSecurityScopedResource()();
    swift_getKeyPath();
    v72[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000081F8((v2 + 3), v74, &unk_10025B1C0, &unk_1001CFA90);
    if (v75)
    {
      sub_100028458(v74, v72);
      sub_10000F500(v74, &unk_10025B1C0, &unk_1001CFA90);
      v48 = *sub_100027874(v72, v73);
      sub_10000A9C0(0, 1, 0, 1, 0, 1, 1, 0, *&v17[*(v37 + 44)], *&v17[*(v37 + 44) + 8]);
      goto LABEL_14;
    }

LABEL_17:
    sub_10000F500(v74, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_19;
  }

  v70 = *v38;
  v40 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v74[0] = 0;
  v44 = [v40 removeItemAtURL:v42 error:v74];

  v45 = v74[0];
  if ((v44 & 1) == 0)
  {
    v49 = v74[0];
    v50 = _convertNSErrorToError(_:)();

    v63 = v50;
    swift_willThrow();
    v51 = v69;
    sub_10017F384(v17, v69, type metadata accessor for Attachment);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v74[0] = v64;
      *v54 = 136315395;
      *(v54 + 4) = sub_10002510C(v70, v39, v74);
      *(v54 + 12) = 2085;
      v55 = URL.path(percentEncoded:)(1);
      sub_10017F3EC(v51, type metadata accessor for Attachment);
      v56 = sub_10002510C(v55._countAndFlagsBits, v55._object, v74);

      *(v54 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "failed to remove photo %s at %{sensitive}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10017F3EC(v51, type metadata accessor for Attachment);
    }

    goto LABEL_19;
  }

  swift_getKeyPath();
  v72[0] = v2;
  v46 = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8((v2 + 3), v74, &unk_10025B1C0, &unk_1001CFA90);
  if (!v75)
  {
    goto LABEL_17;
  }

  sub_100028458(v74, v72);
  sub_10000F500(v74, &unk_10025B1C0, &unk_1001CFA90);
  v47 = *sub_100027874(v72, v73);
  sub_10000A9C0(0, 1, 0, 1, 1, 0, 0, 1, *&v17[*(v37 + 44)], *&v17[*(v37 + 44) + 8]);
LABEL_14:
  sub_10000F4B4(v72);
LABEL_19:
  v57 = v67;
  swift_getKeyPath();
  v74[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v58 = v71;
  sub_100179C8C(v65, v71);
  sub_10017F3EC(v58, type metadata accessor for Attachment);
  swift_endAccess();
  v74[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_10017F384(v17, v10, type metadata accessor for Attachment);
  swift_getKeyPath();
  v74[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v59 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[8] = v59;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v59 = sub_10017D948(0, v59[2] + 1, 1, v59, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
    v2[8] = v59;
  }

  v62 = v59[2];
  v61 = v59[3];
  if (v62 >= v61 >> 1)
  {
    v59 = sub_10017D948(v61 > 1, v62 + 1, 1, v59, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
  }

  v59[2] = v62 + 1;
  sub_10003D784(v10, v59 + v57 + v62 * v66);
  v2[8] = v59;
  swift_endAccess();
  v74[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return sub_10017F3EC(v17, type metadata accessor for Attachment);
}

uint64_t sub_1001746A8@<X0>(char *a1@<X8>)
{
  v3 = sub_10000341C(&qword_100265F68, &qword_1001DF1D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  if (*(v1 + 32) != 1)
  {
    v13 = *v1;
    v14 = sub_10017CF90(*v1, &qword_100265F68, &qword_1001DF1D0);
    v15 = *(v1 + 8);
    if (v15 == v14)
    {
LABEL_15:
      *(v1 + 32) = 1;
      v20 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
      return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      sub_10017CF1C(v15, (v13 & 0xC000000000000001) == 0, v13, &qword_100265F68, &qword_1001DF1D0);
      if ((v13 & 0xC000000000000001) != 0)
      {
        result = sub_10017D018(v15, v13);
        if (v5 != 8)
        {
          goto LABEL_21;
        }

        v25 = result;
        (*(v4 + 16))(v7, &v25, v3);
        result = swift_unknownObjectRelease();
LABEL_12:
        if (__OFADD__(v15, 1))
        {
          __break(1u);
        }

        else
        {
          *(v1 + 8) = v15 + 1;
          v16 = *(v4 + 32);
          result = v16(v9, v7, v3);
          v17 = *(v1 + 16);
          v18 = *(v1 + 24);
          v19 = *(v17 + 16);
          if (v18 == v19)
          {
            (*(v4 + 8))(v9, v3);
            goto LABEL_15;
          }

          if (v18 < v19)
          {
            v21 = *(v17 + 8 * v18 + 32);
            *(v1 + 24) = v18 + 1;
            v22 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
            v23 = *(v22 + 48);
            v16(a1, v9, v3);
            *&a1[v23] = v21;
            return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_10017CF1C(v15, 1, v13, &qword_100265F68, &qword_1001DF1D0);
    }

    result = (*(v4 + 16))(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v3);
    goto LABEL_12;
  }

  v10 = sub_10000341C(&qword_100265F88, &qword_1001DF1F0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 1, 1, v10);
}

uint64_t sub_100174A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for Attachment(0);
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[38] = v8;
  v9 = *(v8 - 8);
  v4[39] = v9;
  v10 = *(v9 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v12;
  v4[48] = v11;

  return _swift_task_switch(sub_100174BD8, v12, v11);
}

uint64_t sub_100174BD8()
{
  v86 = v0;
  if (qword_10025A6D8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v1 = *(v0 + 240);
    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276EF0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 304);
      v6 = *(v0 + 240);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v85 = v8;
      *v7 = 136642819;
      v9 = Array.description.getter();
      v11 = sub_10002510C(v9, v10, &v85);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "adding files: %{sensitive}s", v7, 0xCu);
      sub_10000F4B4(v8);
    }

    v12 = *(v0 + 264);
    v13 = *(*(v0 + 240) + 16);
    *(v0 + 392) = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
    swift_beginAccess();
    v80 = v13;
    if (v13)
    {
      v14 = 0;
      v15 = *(v0 + 312);
      v16 = *(v0 + 280);
      v75 = *(v15 + 16);
      v71 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v73 = *(v0 + 240) + v71;
      v83 = *(v15 + 72);
      v70 = (v15 + 8);
      v78 = (v15 + 32);
      v79 = _swiftEmptyArrayStorage;
LABEL_10:
      v21 = *(v0 + 264);
      v75(*(v0 + 352), v73 + v14 * v83, *(v0 + 304));
      ++v14;
      swift_getKeyPath();
      *(v0 + 200) = v21;
      sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v12 + 16);
      v23 = *(v22 + 16);

      v24 = 0;
      while (1)
      {
        if (v23 == v24)
        {
          v28 = *(v0 + 344);
          v27 = *(v0 + 352);
          v29 = *(v0 + 304);

          v30 = *v78;
          (*v78)(v28, v27, v29);
          v32 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163D24(0, v79[2] + 1, 1);
            v32 = v85;
          }

          v18 = v32[2];
          v17 = v32[3];
          if (v18 >= v17 >> 1)
          {
            sub_100163D24(v17 > 1, v18 + 1, 1);
            v32 = v85;
          }

          v19 = *(v0 + 344);
          v20 = *(v0 + 304);
          v32[2] = v18 + 1;
          v79 = v32;
          v30(v32 + v71 + v18 * v83, v19, v20);
LABEL_9:
          if (v14 == v80)
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        }

        if (v24 >= *(v22 + 16))
        {
          break;
        }

        v25 = *(v0 + 352);
        v26 = *(v0 + 296);
        sub_10017F384(v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24++, v26, type metadata accessor for Attachment);
        LOBYTE(v25) = static URL.== infix(_:_:)();
        sub_10017F3EC(v26, type metadata accessor for Attachment);
        if (v25)
        {
          (*v70)(*(v0 + 352), *(v0 + 304));

          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v79 = _swiftEmptyArrayStorage;
LABEL_18:
    v33 = v79[2];
    if (v33)
    {
      v34 = *(v0 + 312);
      v77 = *(v0 + 280);
      v85 = _swiftEmptyArrayStorage;
      sub_100163CE0(0, v33, 0);
      v35 = v85;
      v36 = *(v34 + 16);
      v34 += 16;
      v37 = v79 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v74 = *(v34 + 56);
      v76 = v36;
      v72 = (v34 - 8);
      do
      {
        v82 = v33;
        v84 = v35;
        v39 = *(v0 + 328);
        v38 = *(v0 + 336);
        v40 = *(v0 + 320);
        v41 = *(v0 + 304);
        v81 = *(v0 + 288);
        v76(v38, v37, v41);
        v76(v39, v38, v41);
        URL.deletingPathExtension()();
        v42 = URL.lastPathComponent.getter();
        v44 = v43;
        v45 = *v72;
        (*v72)(v40, v41);
        v46 = v39;
        v35 = v84;
        sub_1001762AC(v46, 0, 0, v42, v44, v81);
        sub_100177108();
        v45(v38, v41);
        v85 = v84;
        v48 = v84[2];
        v47 = v84[3];
        if (v48 >= v47 >> 1)
        {
          sub_100163CE0(v47 > 1, v48 + 1, 1);
          v35 = v85;
        }

        v49 = *(v0 + 288);
        v35[2] = v48 + 1;
        sub_10003D784(v49, v35 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v48);
        v37 += v74;
        --v33;
      }

      while (v82 != 1);
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v50 = *(v0 + 256);
    *(v0 + 192) = v35;
    if (!v50)
    {
      break;
    }

    v51 = v35[2];
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v54 = *(v0 + 272);
    v53 = *(v0 + 280);
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_10017E430(v35);
      }

      if (v52 >= v35[2])
      {
        break;
      }

      v55 = v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52 + *(v54 + 44);
      v56 = *(v55 + 8);
      *v55 = *(v0 + 248);

      if (v51 == ++v52)
      {
        *(v0 + 192) = v35;
        goto LABEL_33;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_33:
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 272);
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v85 = v61;
    *v60 = 136642819;

    v62 = Array.description.getter();
    v64 = v63;

    v65 = sub_10002510C(v62, v64, &v85);

    *(v60 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v57, v58, "deduped files: %{sensitive}s", v60, 0xCu);
    sub_10000F4B4(v61);
  }

  v66 = *(v0 + 360);
  swift_beginAccess();
  *(v0 + 400) = static MainActor.shared.getter();
  v68 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 408) = v68;
  *(v0 + 416) = v67;

  return _swift_task_switch(sub_1001753BC, v68, v67);
}

uint64_t sub_1001753BC()
{
  v1 = v0[45];
  sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  v0[53] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[54] = v2;
  *(v2 + 16) = v0 + 24;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_1001754D4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001754D4()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v8 = *v0;

  v5 = *(v1 + 416);
  v6 = *(v1 + 408);

  return _swift_task_switch(sub_100175634, v6, v5);
}

uint64_t sub_100175634()
{
  v1 = v0[50];

  swift_endAccess();
  v2 = v0[47];
  v3 = v0[48];

  return _swift_task_switch(sub_1001756A0, v2, v3);
}

uint64_t sub_1001756A0()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[33];

  v4 = v0[24];
  swift_getKeyPath();
  v0[26] = v3;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[27] = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019E53C(v4);
  swift_endAccess();
  v0[28] = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[29] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8(v3 + 24, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[5])
  {
    v6 = v0[31];
    v5 = v0[32];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v7 = *sub_100027874(v0 + 7, v0[10]);
    sub_10000A9C0(0, 1, *(v4 + 16), 0, 0, 1, 0, 1, v6, v5);
    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v9 = v0[43];
  v8 = v0[44];
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[40];
  v14 = v0[36];
  v13 = v0[37];

  v15 = v0[1];

  return v15(v4);
}

void sub_100175970(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v22 = v1;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(v1 + 16);
  v20 = a1;

  v9 = sub_100173410(sub_10017F4DC, v19, v8);
  v11 = v10;

  if (v11)
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F34C(v12, qword_100276EF0);
    (*(v4 + 16))(v7, a1, v3);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136642819;
      v17 = URL.path(percentEncoded:)(1);
      (*(v4 + 8))(v7, v3);
      v18 = sub_10002510C(v17._countAndFlagsBits, v17._object, &v21);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "no attachment with ID %{sensitive}s to remove", v15, 0xCu);
      sub_10000F4B4(v16);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    sub_100173BA0(v9);
  }
}

Swift::Int sub_100175C80()
{
  v1 = v0;
  v2 = type metadata accessor for DocumentResourceIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Attachment.UploadState(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10017F384(v1, v10, type metadata accessor for Attachment.UploadState);
  v11 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

void sub_100175E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017F384(v2, v12, type metadata accessor for Attachment.UploadState);
  v13 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v9, v4);
  }
}

Swift::Int sub_100176090(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for DocumentResourceIdentifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10017F384(v4, v13, type metadata accessor for Attachment.UploadState);
  v14 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v10, v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001762AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v52 = a3;
  v56 = type metadata accessor for URL();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v56);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = &v43 - v14;
  v45 = type metadata accessor for URLResourceValues();
  v44 = *(v45 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v45);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Attachment(0);
  v19 = v18[6];
  v20 = type metadata accessor for UTType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v53 = v19;
  v50 = v22;
  v51 = v20;
  v49 = v21 + 56;
  v22(a6 + v19, 1, 1);
  *(a6 + v18[9]) = 0;
  v23 = v18[10];
  v24 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  (*(*(v24 - 8) + 56))(a6 + v23, 1, 1, v24);
  v57 = v18;
  v25 = (a6 + v18[11]);
  v25->super.isa = 0;
  v25->_urlString = 0;
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = _CFURLCopySecurityScopeFromFileURL();

  if (v28)
  {

    URL.startAccessingSecurityScopedResource()();
  }

  v29 = v56;
  v30 = v57;
  v31 = a6 + v57[7];
  v32 = a1;
  v47 = *(v9 + 16);
  v47(a6, a1, v56);
  v33 = (a6 + v30[5]);
  v34 = v52;
  *v33 = a2;
  v33[1] = v34;
  sub_10000341C(&qword_100265F10, &unk_1001DF100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLContentTypeKey;
  v36 = NSURLFileSizeKey;
  v37 = NSURLContentTypeKey;
  sub_100007BA4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  URL.resourceValues(forKeys:)();

  *v31 = URLResourceValues.fileSize.getter();
  *(v31 + 8) = v38 & 1;
  v39 = v46;
  URLResourceValues.contentType.getter();
  (*(v9 + 8))(v32, v29);
  (*(v44 + 8))(v17, v45);
  result = sub_10017F2F8(v39, a6 + v53);
  v41 = (a6 + v57[8]);
  v42 = v55;
  *v41 = v54;
  v41[1] = v42;
  return result;
}

size_t sub_100176914()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.path.getter();
  String.utf8CString.getter();

  v5 = sandbox_extension_issue_file();

  if (v5)
  {
    result = strlen(v5);
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v1 + 104))(v4, enum case for Data.Deallocator.free(_:), v0);
      v8 = sub_10017F0C0(v5, v7, v4);
      v10 = v9;
      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      isa = Data._bridgeToObjectiveC()().super.isa;
      _CFURLAttachSecurityScopeToFileURL();

      return sub_10004DD08(v8, v10);
    }
  }

  else
  {
    sub_100124620();
    swift_allocError();
    *v15 = 0xD000000000000019;
    v15[1] = 0x80000001001E82C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100176B14()
{
  v1 = v0[19];
  v2 = objc_allocWithZone(QLThumbnailGenerationRequest);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithFileAtURL:v4 size:-1 scale:100.0 representationTypes:{100.0, 2.0}];
  v0[20] = v6;

  [v6 setIconMode:1];
  v7 = [objc_opt_self() sharedGenerator];
  v0[21] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100176CC4;
  v8 = swift_continuation_init();
  v0[17] = sub_10000341C(&qword_100265FF0, &qword_1001DF378);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100177030;
  v0[13] = &unk_100251748;
  v0[14] = v8;
  [v7 generateBestRepresentationForRequest:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100176CC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100176E68;
  }

  else
  {
    v3 = sub_100176DD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100176DD4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = [v3 CGImage];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100176E68()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276EF0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  v9 = v0[20];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "failed to generate thumbnail: %@", v10, 0xCu);
    sub_10000F500(v11, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_100177030(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100027874((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_100177108()
{
  v112 = type metadata accessor for URL.DirectoryHint();
  isa = v112[-1].isa;
  v1 = *(isa + 8);
  __chkstk_darwin(v112);
  v111 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v110 = *(v7 - 8);
  v8 = *(v110 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v96 - v13;
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  v17 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v96 - v19;
  v21 = type metadata accessor for UTType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Attachment(0);
  if (*(v0 + *(v26 + 20) + 8))
  {
    v30 = Data.init(contentsOf:options:)();
    v32 = v31;
    v33 = objc_allocWithZone(UIImage);
    v34 = Data._bridgeToObjectiveC()().super.isa;
    v35 = [v33 initWithData:v34];

    sub_10004DD08(v30, v32);
    if (v35)
    {
      v112 = v35;
      v36 = sub_100070390(0, 1, 0, 1);

      v37 = UIImageJPEGRepresentation(v36, 0.75);
      if (v37)
      {
        v38 = v37;
        v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        Data.write(to:options:)();

        sub_10004DD08(v39, v41);
        return;
      }
    }

    else
    {
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_10000F34C(v79, qword_100276EF0);
      v112 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v112, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v112, v80, "Failed to resize image.", v81, 2u);
      }
    }

    v27 = v112;
  }

  else
  {
    v103 = v11;
    v104 = v6;
    v105 = v16;
    v106 = v14;
    v28 = v111;
    v29 = v112;
    v102 = v26;
    sub_1000081F8(v0 + *(v26 + 24), v20, &qword_10025F4E0, &unk_1001D1110);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10000F500(v20, &qword_10025F4E0, &unk_1001D1110);
      return;
    }

    v101 = v22;
    v42 = *(v22 + 32);
    v43 = v25;
    v42(v25, v20, v21);
    v44 = v21;
    if (qword_10025A780 != -1)
    {
      swift_once();
    }

    v45 = sub_100173A94(v25, qword_1002770A0);
    v46 = v29;
    v48 = isa;
    v47 = v110;
    v49 = v28;
    v50 = v108;
    v51 = v106;
    if (v45)
    {
      v52 = sub_1000ABBD4();
      if (v52)
      {
        v98 = v43;
        v99 = v44;
        v100 = v52;
        v96 = v0;
        v97 = objc_opt_self();
        v53 = [v97 defaultManager];
        v54 = [v53 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v104;
        UUID.init()();
        v56 = UUID.uuidString.getter();
        v58 = v57;
        (*(v107 + 8))(v55, v50);
        v113 = v56;
        v114 = v58;
        (*(v48 + 13))(v49, enum case for URL.DirectoryHint.inferFromPath(_:), v46);
        sub_10002AC34();
        v59 = v51;
        v60 = v105;
        URL.appending<A>(component:directoryHint:)();
        (*(v48 + 1))(v49, v46);

        v61 = *(v47 + 8);
        v61(v59, v7);
        v62 = [v97 defaultManager];
        URL._bridgeToObjectiveC()(v63);
        v65 = v64;
        v113 = 0;
        v66 = [v62 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:&v113];

        v67 = v113;
        if (v66)
        {
          v68 = v96 + *(v102 + 32);
          v69 = *(v68 + 8);
          v113 = *v68;
          v114 = v69;
          v70 = v67;

          v71._countAndFlagsBits = 1717858350;
          v71._object = 0xE400000000000000;
          String.append(_:)(v71);
          v72 = v103;
          URL.appendingPathComponent(_:)();

          URL._bridgeToObjectiveC()(v73);
          v75 = v74;
          v113 = 0;
          v76 = v100;
          LODWORD(v69) = [v100 writeToURL:v74 options:0 error:&v113];

          v77 = v98;
          if (v69)
          {
            v78 = v113;

            v61(v60, v7);
            (*(v101 + 8))(v77, v99);
            (*(v110 + 40))(v96, v72, v7);
            return;
          }

          v89 = v113;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v61(v72, v7);
        }

        else
        {
          v88 = v113;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v77 = v98;
        }

        v61(v60, v7);
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000F34C(v90, qword_100276EF0);
        swift_errorRetain();
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *v93 = 138412290;
          swift_errorRetain();
          v95 = _swift_stdlib_bridgeErrorToNSError();
          *(v93 + 4) = v95;
          *v94 = v95;
          _os_log_impl(&_mh_execute_header, v91, v92, "Failed to write PDF to disk: %@", v93, 0xCu);
          sub_10000F500(v94, &unk_10025D580, &qword_1001CFA60);
        }

        else
        {
        }

        (*(v101 + 8))(v77, v99);
      }

      else
      {
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_10000F34C(v82, qword_100276EF0);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        v85 = os_log_type_enabled(v83, v84);
        v86 = v101;
        if (v85)
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Failed to convert to PDF.", v87, 2u);
        }

        (*(v86 + 8))(v43, v44);
      }
    }

    else
    {
      (*(v101 + 8))(v43, v44);
    }
  }
}

void sub_100177E0C()
{
  v1 = v0;
  v2 = type metadata accessor for DocumentResourceIdentifier();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Attachment.UploadState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - v15;
  type metadata accessor for URL();
  sub_10017B970(&qword_100265F08, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v17 = type metadata accessor for Attachment(0);
  v18 = (v0 + v17[5]);
  if (v18[1])
  {
    v19 = *v18;
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000081F8(v0 + v17[6], v16, &qword_10025F4E0, &unk_1001D1110);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    Hasher._combine(_:)(1u);
    sub_10017B970(&qword_100265F38, &type metadata accessor for UTType);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v12, v8);
  }

  v20 = v0 + v17[7];
  if (*(v20 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v21);
  }

  v22 = (v0 + v17[8]);
  v23 = *v22;
  v24 = v22[1];
  String.hash(into:)();
  if (*(v0 + v17[9]))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGImage(0);
    sub_10017B970(&qword_100265F20, type metadata accessor for CGImage);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = v35;
  sub_10017F384(v1 + v17[10], v35, type metadata accessor for Attachment.UploadState);
  v26 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28 = v32;
    v27 = v33;
    v29 = v34;
    (*(v33 + 32))(v32, v25, v34);
    Hasher._combine(_:)(1uLL);
    sub_10017B970(&qword_100265F40, &type metadata accessor for DocumentResourceIdentifier);
    dispatch thunk of Hashable.hash(into:)();
    (*(v27 + 8))(v28, v29);
  }

  v30 = (v1 + v17[11]);
  if (v30[1])
  {
    v31 = *v30;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100178384@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_1001783F0()
{
  Hasher.init(_seed:)();
  sub_100177E0C();
  return Hasher._finalize()();
}

Swift::Int sub_100178434()
{
  Hasher.init(_seed:)();
  sub_100177E0C();
  return Hasher._finalize()();
}

uint64_t sub_100178470(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int sub_1001784B4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100178524()
{
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10017859C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100178608(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001787C4, 0, 0);
}

uint64_t sub_1001787C4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[6];
  ReceivedTransferredFile.file.getter();
  URL.deletingPathExtension()();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v39 = URL.lastPathComponent.getter();
  v44 = v7;
  v6(v2, v3);
  ReceivedTransferredFile.file.getter();
  URL.pathExtension.getter();
  v45 = v6;
  v6(v2, v3);
  if (qword_10025A860 != -1)
  {
    swift_once();
  }

  v8 = v0[17];
  v9 = v0[12];
  v40 = v0[15];
  v41 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v42 = v0[6];
  sub_10000F34C(v41, qword_1002772C0);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v9, v10);
  v0[2] = v15;
  v0[3] = v17;
  (*(v13 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
  sub_10002AC34();
  URL.appending<A>(path:directoryHint:)();
  (*(v13 + 8))(v12, v14);

  URL.appendingPathExtension(_:)();

  v45(v8, v41);
  v18 = [objc_opt_self() defaultManager];
  ReceivedTransferredFile.file.getter();
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v45(v8, v41);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v0[4] = 0;
  LODWORD(v17) = [v18 moveItemAtURL:v21 toURL:v23 error:v0 + 4];

  v25 = v0[4];
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[15];
  if (v17)
  {
    v29 = v0[13];
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[5];
    (*(v0[14] + 16))(v0[17], v0[15], v29);
    v33 = v25;
    sub_1001762AC(v27, 0, 0xE000000000000000, v39, v44, v32);
    v45(v28, v29);
  }

  else
  {
    v36 = v0[12];
    v35 = v0[13];
    v43 = v0[9];
    v37 = v25;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v45(v28, v35);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_100178C08()
{
  v0 = type metadata accessor for UTType();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static UTType.data.getter();
  return FileRepresentation.init(importedContentType:shouldAttemptToOpenInPlace:importing:)();
}

id sub_100178F80()
{
  v0 = type metadata accessor for URL();
  sub_10002B2EC(v0, qword_1002772C0);
  v1 = sub_10000F34C(v0, qword_1002772C0);
  return sub_100178FCC(v1);
}

id sub_100178FCC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v16 = [v15 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = 0xD000000000000016;
  v32 = 0x80000001001E2FC0;
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_10002AC34();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v5, v1);
  v17 = *(v7 + 8);
  v17(v11, v6);
  v18 = [v14 defaultManager];
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v31 = 0;
  LODWORD(v5) = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v31];

  v28 = v31;
  if (v5)
  {
    (*(v7 + 32))(v29, v13, v6);
    v22 = v28;

    return v22;
  }

  else
  {
    v24 = v28;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v17(v13, v6);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v26._object = 0x80000001001E8180;
    String.append(_:)(v26);
    v30 = v25;
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001793BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_10017947C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1001794A8(v4);
}

uint64_t sub_1001794A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_10017C1D8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001795F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_100179658@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000081F8(v1 + 24, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_100179728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000081F8(v3 + 24, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001797F8(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v5, &unk_10025B1C0, &unk_1001CFA90);
  v3 = *a2;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v5, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_100179900(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000C38DC(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_100179964()
{
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_100179A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_100179ADC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);

  v5 = sub_10017C1D8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100179C24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

size_t sub_100179C8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10017E430(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Attachment(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10003D784(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100179DAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for URL();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = *a1;
  swift_getKeyPath();
  v37 = a2;
  sub_10017B970(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(a2 + 16);
  if (v17 >= *(v18 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  sub_10017F384(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v16, type metadata accessor for Attachment);
  v19 = v35;
  sub_100176914();
  if (!v19)
  {
    (*(v34 + 16))(v8, v16, v5);
    v30 = v36;
    DocumentResource.init(url:)();
    sub_10017F3EC(v16, type metadata accessor for Attachment);
    v31 = 0;
    goto LABEL_10;
  }

  if (qword_10025A6D8 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v20 = type metadata accessor for Logger();
  sub_10000F34C(v20, qword_100276EF0);
  sub_10017F384(v16, v14, type metadata accessor for Attachment);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v23 = 136643075;
    v25 = sub_100178CB8();
    v27 = v26;
    sub_10017F3EC(v14, type metadata accessor for Attachment);
    v28 = sub_10002510C(v25, v27, &v38);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v29;
    *v24 = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "failed to extend sandbox extension to %{sensitive}s: %@", v23, 0x16u);
    sub_10000F500(v24, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v35);
  }

  else
  {

    sub_10017F3EC(v14, type metadata accessor for Attachment);
  }

  sub_10017F3EC(v16, type metadata accessor for Attachment);
  v31 = 1;
  v30 = v36;
LABEL_10:
  v32 = type metadata accessor for DocumentResource();
  return (*(*(v32 - 8) + 56))(v30, v31, 1, v32);
}

uint64_t sub_10017A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v4 = type metadata accessor for Attachment(0);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();
  v6 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_10000341C(&qword_100265FE8, &unk_1001DF330);
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v10 = sub_10000341C(&qword_100261F10, &qword_1001D8590);
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = *(*(sub_10000341C(&qword_100261F18, &unk_1001DF340) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for MainActor();
  v3[28] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v15;
  v3[30] = v14;

  return _swift_task_switch(sub_10017A4F8, v15, v14);
}

uint64_t sub_10017A4F8()
{
  v2 = *(v1 + 184);
  v53 = *(v1 + 112);
  v54 = *(v1 + 176);
  v3 = *(**(v1 + 96) + 16);
  v51 = (v2 + 48);
  v52 = (v2 + 56);
  v49 = **(v1 + 96);

  v4 = 0;
  v50 = v3;
  while (1)
  {
    if (v4 == v3)
    {
      v6 = 1;
      v7 = v3;
    }

    else
    {
      if (v4 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v9 = *(v1 + 192);
      v8 = *(v1 + 200);
      v7 = v4 + 1;
      v10 = v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v4;
      v11 = *(v54 + 48);
      *v9 = v4;
      sub_10017F384(v10, v9 + v11, type metadata accessor for Attachment);
      sub_10002A894(v9, v8, &qword_100261F10, &qword_1001D8590);
      v6 = 0;
    }

    v13 = *(v1 + 200);
    v12 = *(v1 + 208);
    v14 = *(v1 + 176);
    (*v52)(v13, v6, 1, v14);
    sub_10002A894(v13, v12, &qword_100261F18, &unk_1001DF340);
    if ((*v51)(v12, 1, v14) == 1)
    {
      break;
    }

    v55 = v7;
    v15 = *(v1 + 208);
    v16 = *(v1 + 136);
    v17 = *(v1 + 144);
    v18 = *(v1 + 120);
    v19 = *(v1 + 128);
    v20 = *v15;
    v21 = *(v54 + 48);
    v22 = type metadata accessor for TaskPriority();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v17, 1, 1, v22);
    sub_10003D784(v15 + v21, v19);
    v24 = (*(v53 + 80) + 40) & ~*(v53 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v20;
    sub_10003D784(v19, v25 + v24);
    sub_1000081F8(v17, v16, &unk_10025B5D0, &qword_1001D05A0);
    v27 = (*(v23 + 48))(v16, 1, v22);
    v28 = *(v1 + 136);
    if (v27 == 1)
    {
      sub_10000F500(*(v1 + 136), &unk_10025B5D0, &qword_1001D05A0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v23 + 8))(v28, v22);
    }

    v3 = v50;
    if (*v26)
    {
      v29 = v25[3];
      v30 = *v26;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = **(v1 + 88);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_1001DF358;
    *(v35 + 24) = v25;

    sub_10000341C(&qword_100262FE8, &qword_1001DA180);
    v36 = v33 | v31;
    if (v33 | v31)
    {
      v36 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v31;
      *(v1 + 40) = v33;
    }

    v5 = *(v1 + 144);
    *(v1 + 48) = 1;
    *(v1 + 56) = v36;
    *(v1 + 64) = v34;
    v0 = swift_task_create();

    sub_10000F500(v5, &unk_10025B5D0, &qword_1001D05A0);
    v4 = v55;
  }

  v37 = *(v1 + 168);
  v38 = *(v1 + 88);
  v39 = *(v1 + 96);

  v40 = *v38;
  sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  TaskGroup.makeAsyncIterator()();
  v0 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v0 = sub_10017E430(v0);
LABEL_17:
  **(v1 + 96) = v0;
  v42 = *(v1 + 216);
  v43 = static MainActor.shared.getter();
  *(v1 + 248) = v43;
  v44 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v45 = swift_task_alloc();
  *(v1 + 256) = v45;
  *v45 = v1;
  v45[1] = sub_10017A9DC;
  v46 = *(v1 + 168);
  v47 = *(v1 + 152);

  return TaskGroup.Iterator.next(isolation:)(v1 + 72, v43, &protocol witness table for MainActor, v47);
}

uint64_t sub_10017A9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return _swift_task_switch(sub_10017AB20, v5, v4);
}

uint64_t sub_10017AB20()
{
  v2 = v0[9];
  v1 = v0[10];
  if (v1 != 1)
  {
    v12 = v0[12];
    v13 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v26 = v0[12];
      isUniquelyReferenced_nonNull_native = sub_10017E430(v13);
      v13 = isUniquelyReferenced_nonNull_native;
      *v26 = isUniquelyReferenced_nonNull_native;
      if ((v2 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v2 < v13[2])
        {
          v18 = v13 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v2;
          v19 = *(v0[13] + 36);
          v20 = *(v18 + v19);
          *(v18 + v19) = v1;

          v21 = v0[27];
          v22 = static MainActor.shared.getter();
          v0[31] = v22;
          v23 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
          v24 = swift_task_alloc();
          v0[32] = v24;
          *v24 = v0;
          v24[1] = sub_10017A9DC;
          v25 = v0[21];
          v17 = v0[19];
          v16 = &protocol witness table for MainActor;
          isUniquelyReferenced_nonNull_native = (v0 + 9);
          v15 = v22;

          return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
        }

LABEL_13:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[18];
  v9 = v0[16];
  v8 = v0[17];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10017AD44, 0, 0);
}

uint64_t sub_10017AD44()
{
  **(v0 + 16) = *(v0 + 24);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10017ADDC;
  v2 = *(v0 + 32);

  return sub_100176AF4();
}

uint64_t sub_10017ADDC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10017AEDC, 0, 0);
}

uint64_t sub_10017AEFC()
{
  v1 = *(v0 + 2);

  sub_10000F500((v0 + 24), &unk_10025B1C0, &unk_1001CFA90);
  v2 = *(v0 + 8);

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17AttachmentManager___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10017AFE8()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10017B0A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10017B260(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10017B404()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10017B550(319, &qword_100265DF0, &type metadata accessor for UTType);
    if (v1 <= 0x3F)
    {
      sub_10017B5A4(319, &qword_100265DF8);
      if (v2 <= 0x3F)
      {
        sub_10017B550(319, &unk_100265E00, type metadata accessor for CGImage);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Attachment.UploadState(319);
          if (v4 <= 0x3F)
          {
            sub_10017B5A4(319, &qword_10025B490);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10017B550(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10017B5A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10017B5F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10017B640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10017B694(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10017B6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017B75C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10017B7E8()
{
  sub_10017B840();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10017B840()
{
  if (!qword_100265ED0)
  {
    v0 = type metadata accessor for DocumentResourceIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_100265ED0);
    }
  }
}

unint64_t sub_10017B8D4()
{
  result = qword_100265F00;
  if (!qword_100265F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265F00);
  }

  return result;
}

uint64_t sub_10017B970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017BA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10017BAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + (v3 << 6));
      v7 = v6[1];
      v22 = *v6;
      v23 = v7;
      v8 = v6[3];
      v24 = v6[2];
      v25 = v8;
      v9 = (v5 + (v3 << 6));
      v10 = v9[1];
      v26 = *v9;
      v27 = v10;
      v11 = v9[3];
      v28 = v9[2];
      v29 = v11;
      if (v22 != v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v12 = *(v23 + 16);
      if (v12 != *(v27 + 16))
      {
        break;
      }

      if (v12 && v23 != v27)
      {
        v13 = (v23 + 40);
        v14 = (v27 + 40);
        do
        {
          v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
          if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

          v13 += 2;
          v14 += 2;
        }

        while (--v12);
      }

      v16 = *(&v23 + 1);
      v17 = *(&v27 + 1);
      sub_10004CBCC(&v22, v21);
      sub_10004CBCC(&v26, v21);
      if ((sub_10017CBE0(v16, v17) & 1) == 0)
      {
        goto LABEL_34;
      }

      if (*(&v24 + 1))
      {
        if (!*(&v28 + 1) || v24 != v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_34:
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
          return 0;
        }
      }

      else if (*(&v28 + 1))
      {
        goto LABEL_34;
      }

      v18 = *(&v29 + 1);
      if (*(&v25 + 1))
      {
        if (!*(&v29 + 1))
        {
          goto LABEL_34;
        }

        if (v25 == v29)
        {
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000CCB60(&v26);
          sub_1000CCB60(&v22);
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_1000CCB60(&v26);
        sub_1000CCB60(&v22);
        if (v18)
        {
          return 0;
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10017BD04(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1000081B0(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10017BF6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v21 = *v5;
    v22 = v8;
    v9 = v5[3];
    *v23 = v5[2];
    *&v23[16] = v9;
    v10 = v6[1];
    v24 = *v6;
    v25 = v10;
    v11 = v6[3];
    *v26 = v6[2];
    *&v26[16] = v11;
    if (v21 != v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v22 != v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v23[0])
    {
      if (v23[0] == 1)
      {
        v12 = 0x74786554676E6F6CLL;
      }

      else
      {
        v12 = 0x6F746F6870;
      }

      if (v23[0] == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = v26[0];
      if (v26[0])
      {
LABEL_17:
        if (v14 == 1)
        {
          v15 = 0x74786554676E6F6CLL;
        }

        else
        {
          v15 = 0x6F746F6870;
        }

        if (v14 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 != v15)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0x78655474726F6873;
      v13 = 0xE900000000000074;
      v14 = v26[0];
      if (v26[0])
      {
        goto LABEL_17;
      }
    }

    v16 = 0xE900000000000074;
    if (v12 != 0x78655474726F6873)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (v13 == v16)
    {
      sub_10017F570(&v21, v20);
      sub_10017F570(&v24, v20);

      goto LABEL_30;
    }

LABEL_29:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10017F570(&v21, v20);
    sub_10017F570(&v24, v20);

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (*&v23[8] != *&v26[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_37:
      sub_10004C65C(&v24);
      sub_10004C65C(&v21);
      return 0;
    }

    v18 = sub_10017BAAC(*&v23[24], *&v26[24]);
    sub_10004C65C(&v24);
    sub_10004C65C(&v21);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

BOOL sub_10017C1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10017F384(v14, v11, type metadata accessor for Attachment);
        sub_10017F384(v15, v8, type metadata accessor for Attachment);
        v17 = sub_10017EA28(v11, v8);
        sub_10017F3EC(v8, type metadata accessor for Attachment);
        sub_10017F3EC(v11, type metadata accessor for Attachment);
        if (!v17)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    return 0;
  }

  return v17;
}

uint64_t sub_10017C380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v27 = __DataStorage._bytes.getter();
      if (v27)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      __DataStorage._length.getter();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = __DataStorage._length.getter();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = __DataStorage._length.getter();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_10004DD08(v8, v7);
          sub_10004DD08(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_10004DD08(v8, v7);
    sub_10004DD08(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_10004DC4C(v5, v6);
      sub_10004DC4C(v8, v7);
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = __DataStorage._length.getter();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_10004DC4C(v5, v6);
  sub_10004DC4C(v8, v7);
  v27 = __DataStorage._bytes.getter();
  if (v27)
  {
    v28 = __DataStorage._offset.getter();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  __DataStorage._length.getter();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = __DataStorage._length.getter();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = __DataStorage._bytes.getter();
    if (v29)
    {
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = __DataStorage._length.getter();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_10004DD08(v8, v7);
    sub_10004DD08(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __DataStorage._length.getter();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = __DataStorage._length.getter();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_10017CBE0(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10017CD98(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10017CF1C(uint64_t result, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v6 = result;
  sub_10000341C(a4, a5);
  result = _swift_isClassOrObjCExistentialType();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v7 = a3;
  }

  if (*(v7 + 16) <= v6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10017CF90(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000341C(a2, a3);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v5 = a1;
    }

    return *(v5 + 16);
  }
}

void *sub_10017D590(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265FD0, &unk_1001DF250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10017D6C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265F50, &qword_1001DF1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017D814(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265488, &unk_1001DDEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10017D948(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10017DB24(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265FC0, &qword_1001DF238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017DC30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002653E8, &qword_1001DDC80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10017DD84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017DE90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265490, &qword_1001DF230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10017DFC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265498, &unk_1001DDEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017E10C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265FA8, &qword_1001DF210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10017E240(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(&qword_100265588, &unk_1001DF380);
  v10 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10017E4A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10017E50C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_10017E600;

  return v6(v2 + 16);
}

uint64_t sub_10017E600()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10017E714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.UploadState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_100265F30, &qword_1001DF118);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_10017F384(a1, &v24 - v16, type metadata accessor for Attachment.UploadState);
  sub_10017F384(a2, &v17[v18], type metadata accessor for Attachment.UploadState);
  v19 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    sub_10017F384(v17, v12, type metadata accessor for Attachment.UploadState);
    if (v20(&v17[v18], 1, v19) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = static DocumentResourceIdentifier.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_10017F3EC(v17, type metadata accessor for Attachment.UploadState);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v18], 1, v19) != 1)
  {
LABEL_6:
    sub_10000F500(v17, &qword_100265F30, &qword_1001DF118);
    v21 = 0;
    return v21 & 1;
  }

  sub_10017F3EC(v17, type metadata accessor for Attachment.UploadState);
  v21 = 1;
  return v21 & 1;
}

BOOL sub_10017EA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_10000341C(&qword_100265F18, &qword_1001DF110);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Attachment(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v56 = v17;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  v54 = a1;
  sub_1000081F8(a1 + v24, v16, &qword_10025F4E0, &unk_1001D1110);
  v55 = a2;
  v26 = a2 + v24;
  v27 = v5;
  sub_1000081F8(v26, &v16[v25], &qword_10025F4E0, &unk_1001D1110);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v25], 1, v4) == 1)
    {
      sub_10000F500(v16, &qword_10025F4E0, &unk_1001D1110);
      goto LABEL_19;
    }

LABEL_16:
    sub_10000F500(v16, &qword_100265F18, &qword_1001DF110);
    return 0;
  }

  sub_1000081F8(v16, v12, &qword_10025F4E0, &unk_1001D1110);
  if (v28(&v16[v25], 1, v4) == 1)
  {
    (*(v27 + 8))(v12, v4);
    goto LABEL_16;
  }

  (*(v27 + 32))(v8, &v16[v25], v4);
  sub_10017B970(&qword_100265F28, &type metadata accessor for UTType);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v27 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_10000F500(v16, &qword_10025F4E0, &unk_1001D1110);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v32 = v55;
  v33 = v56;
  v34 = v56[7];
  v35 = v54;
  v36 = (v54 + v34);
  v37 = *(v54 + v34 + 8);
  v38 = (v55 + v34);
  v39 = *(v55 + v34 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v56[8];
  v41 = *(v54 + v40);
  v42 = *(v54 + v40 + 8);
  v43 = (v55 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v44 = v33[9];
  v45 = *(v32 + v44);
  if (*(v35 + v44))
  {
    if (!v45)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    sub_10017B970(&qword_100265F20, type metadata accessor for CGImage);
    v46 = v45;
    v47 = static _CFObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  if ((sub_10017E714(v35 + v33[10], v32 + v33[10]) & 1) == 0)
  {
    return 0;
  }

  v48 = v33[11];
  v49 = (v35 + v48);
  v50 = *(v35 + v48 + 8);
  v51 = (v32 + v48);
  v52 = v51[1];
  if (v50)
  {
    return v52 && (*v49 == *v51 && v50 == v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v52;
}