uint64_t AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_100536D74(a1, v1);
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100536A04(a1, a2);
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double sub_100536A04(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_100751014();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750A94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750AB4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_10000C518(&qword_100946760);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A6580;
  sub_10000C824(a1, v31);
  v16 = sub_100750FD4();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v15 + 32));
  sub_100750FE4();
  sub_10000C824(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v15 + 72));
  sub_100750FE4();
  sub_100750AA4();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_10000D134(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  sub_100751004();
  sub_100750FF4();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

uint64_t sub_100536D74(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v9[0] = a2[18];
  v9[1] = v7;
  sub_100753BA4();
  sub_1000CD5F0((a2 + 26), &v10);
  if (v11)
  {
    sub_100012160(&v10, v12);
    sub_10000C888(v12, v12[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a2 + 10, a2[13]);
      sub_1007502D4();
      sub_100750564();
      (*(v4 + 8))(v6, v3);
    }

    sub_10000C620(v12);
  }

  else
  {
    sub_1002C9F48(&v10);
  }

  sub_10000C888(a2 + 21, a2[24]);
  sub_100750404();
  sub_10000C888(a2, a2[3]);
  sub_100750584();
  sub_10000C888(a2 + 5, a2[8]);
  sub_1007502D4();
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  return sub_100753BC4();
}

uint64_t sub_100537058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005370A0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100537198(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_100752624();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000C518(&qword_100939100);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10000C518(&unk_100923210);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v12 = sub_100752E44();
  v54 = sub_10000D0FC(v12, qword_100983318);
  v13 = sub_10000C518(&qword_100923930);
  v14 = *(*(sub_100752454() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007A7250;
  sub_1007523A4();
  v38 = sub_100742DB4();
  v56 = v38;
  v55[0] = a2;

  sub_100752444();
  sub_1000277BC(v55);
  sub_1007523A4();
  v15 = sub_100752CD4();
  v56 = v15;
  v16 = sub_10000D134(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_100752444();
  sub_1000277BC(v55);
  v51 = a2;
  sub_1007523A4();
  v56 = sub_100016C60(0, &qword_10093D898);
  v55[0] = v52;
  v17 = v52;
  sub_100752444();
  sub_1000277BC(v55);
  sub_100752CF4();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    sub_1007523A4();
    v56 = v38;
    v55[0] = v51;

    sub_100752444();
    sub_1000277BC(v55);
    sub_1007523A4();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_100752444();
    sub_1000277BC(v55);
    sub_100752D04();

    v30 = sub_100742D74();
    if (v30)
    {
      v31 = v30;
      sub_100752764();
      v32 = v44;
      v33 = v47;
      sub_100752D34();
      v56 = sub_10074ECD4();
      v57 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_1007527E4();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_10000C620(v55);
    }

    sub_1005383C0();
    swift_allocError();
    sub_100752DA4();
  }

  else
  {
    v18 = sub_100742D84();
    if (v18)
    {
      v19 = v18;
      sub_100752764();
      v20 = v44;
      v21 = v47;
      sub_100752D34();
      v56 = sub_10074ECD4();
      v57 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_1007527E4();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_10000C620(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_100752DB4();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_100537968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10000C518(&qword_100939100);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10000C518(&unk_100923210);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100752E44();
  v27 = sub_10000D0FC(v11, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  sub_1007523A4();
  v31 = sub_100742DB4();
  v30[0] = a2;

  sub_100752444();
  sub_1000277BC(v30);
  sub_1007523A4();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_10000D134(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_100752444();
  sub_1000277BC(v30);
  sub_100752D04();

  v15 = sub_100742D74();
  if (v15)
  {
    v16 = v15;
    sub_100752764();
    sub_100752D34();
    v31 = sub_10074ECD4();
    v32 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_1007527E4();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_10000C620(v30);
  }

  return sub_100752DA4();
}

uint64_t sub_100537DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752CD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_10000C518(&qword_100930CA0);
  v32 = sub_100752DE4();
  sub_100016C60(0, &unk_10093D880);
  sub_100752764();
  sub_100752D34();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  sub_100752D34();
  sub_100016C60(0, &qword_100930CB0);
  sub_100752D34();
  v11 = v33[0];
  sub_100744AC4();
  sub_100752D34();
  v12 = v33[0];
  sub_10000C518(&qword_10092BBA0);
  sub_100752D34();
  v13 = v33[0];
  if (sub_100742D94())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = sub_100742DA4();
  swift_unknownObjectRelease();
  v15 = v31;
  v16 = v29;
  (*(v5 + 16))(v31, v14, v29);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26[0] = v10;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v5 + 32))(v20 + v17, v15, v16);
  *(v20 + v18) = a2;
  v21 = v32;
  *(v20 + v19) = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v23 = sub_100016C60(0, &qword_100926D00);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = sub_100753774();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  sub_100752D64();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_10000C620(v33);
  return v21;
}

uint64_t sub_10053817C()
{
  v1 = sub_100752CD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10053826C(id *a1)
{
  v3 = *(sub_100752CD4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_100537198(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_100538318()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053836C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005383C0()
{
  result = qword_10093D8A0;
  if (!qword_10093D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D8A0);
  }

  return result;
}

unint64_t sub_100538428()
{
  result = qword_10093D8A8;
  if (!qword_10093D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D8A8);
  }

  return result;
}

uint64_t sub_10053847C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100750B04();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_100039C50(v10, qword_1009822D8);
  v31 = v10;
  v30 = sub_10000D0FC(v10, qword_1009822D8);
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v29 = sub_10000D0FC(v11, qword_100980D98);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v39);
  v29 = v16;
  v16(v18, v3, v0);
  sub_100750B14();
  v17(v3, v0);
  if (qword_100921038 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v11, qword_100980DE0);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v39);
  v29(v20, v3, v0);
  v21 = v32;
  sub_100750B14();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_1005388F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  if (qword_100921808 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_10000D0FC(v17, qword_1009822D8);
  sub_100539948(v18, &v5[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_metrics]);
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100980D98);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel] = sub_100745C74();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v44.receiver = v5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  v35.super.isa = v34;
  isa = sub_100750514(v35).super.isa;
  v37 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

  if (v38)
  {
    [*&v28[v29] setFont:v38];
    v34 = v38;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v39 = [v28 traitCollection];
  sub_1007537F4();

  sub_100753F54();
  sub_10000C518(&unk_1009249D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007A5A00;
  *(v40 + 32) = sub_1007519E4();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43[3] = v23;
  v43[0] = v28;
  v41 = v28;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v43);
  return v41;
}

id sub_100538EF0()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = sub_1007537B4();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
  sub_1007477B4();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_100753D84();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  sub_1007477B4();
  sub_100753B34();
  return [v10 setFrame:?];
}

uint64_t sub_1005391A8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || (result = sub_1007537F4(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    sub_1007537F4();

    return sub_100753F54();
  }

  return result;
}

void sub_1005392F8()
{
  v1 = v0;
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v2 = sub_100750534();
  sub_10000D0FC(v2, qword_100980D98);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  v4 = sub_100750514(v3).super.isa;
  v5 = [(objc_class *)v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    if (!v6)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel] setFont:v6];
    v7 = v6;
  }

  else
  {
    v7 = isa;
  }
}

id sub_1005394A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053954C()
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_100539620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1005396A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100539710()
{
  result = sub_100750B04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100539784(double a1, double a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921808 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v8, qword_1009822D8);
  sub_100539948(v11, v10);
  sub_1007537B4();
  sub_1007502D4();
  sub_100750AD4();
  (*(v5 + 8))(v7, v4);
  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  v13 = ceil(v12);
  sub_1005399AC(v10);
  return v13;
}

uint64_t sub_100539948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005399AC(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100539A08(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100539C58();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_100752A74();
  sub_10000C8CC(v19, &unk_100923520);
  sub_10000C8CC(v20, &unk_100923520);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100539C58()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100539D78(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10074FB64();
  sub_10074E324();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100539C58();
    v13 = sub_10074E314();
    sub_10029DBC8(v13, a3, a4);

    v14 = sub_10074F704();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v11, v5 + v16);
    swift_endAccess();
    sub_1005F3E54(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10074FA74();
      if (!v19)
      {
        sub_10000D198();
        v19 = sub_100753E64();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_100539FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  sub_10000C824(a1, v20);
  sub_10000C518(&unk_100923100);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    sub_10074FB64();

    sub_10074E324();
    if (swift_dynamicCastClass())
    {
      v5 = sub_100539C58();
      v6 = sub_10074E314();
      [v2 bounds];
      v21[3] = sub_10074E164();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_10000C824(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        sub_10074E154();
        v8 = sub_10074EF24();

        if (v8)
        {
          if (sub_10074E144())
          {
            v19 = v7;
            if (qword_100920850 != -1)
            {
              swift_once();
            }

            sub_10029F304();
            sub_10074F4B4();
            sub_100055D54(v20);
            sub_10074F374();
            v17 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
            sub_10074F324();
            sub_100743364();
            [v9 setContentMode:sub_10074F184()];
            sub_100747FB4();
            sub_1007433A4();
            v16 = v8;
            if (!sub_10074F1E4())
            {
              sub_10000D198();
              sub_100753E34();
            }

            sub_100743224();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
            v11 = sub_1007433C4();
            v12 = sub_10004D658();
            v13 = v10;
            v18 = v11;
            sub_100744204();

            sub_10074F374();
            v14 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            sub_10074F324();
            sub_100743364();
            [v15 setContentMode:{sub_10074F184(), v16, v12, v18, v19}];
            sub_100747FB4();
            sub_1007433A4();
            if (!sub_10074F1E4())
            {
              sub_10000D198();
              sub_100753E34();
            }

            sub_100743224();
            [*&v5[v14] setContentMode:2];
            sub_100744204();
          }
        }
      }

      sub_10000C620(v21);
    }

    else
    {
    }
  }
}

void sub_10053A440()
{
  v4 = sub_100539C58();
  v0 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v1 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();

  sub_100743344();
  v2 = *(*&v4[v0] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10004D658();
  v3 = v2;
  sub_100744274();

  sub_100744274();
}

void (*sub_10053A6B0(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_10053AC68;
}

void sub_10053A778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0);
      sub_10074FBB4();
      if (swift_dynamicCast())
      {
        sub_10074FB64();

        sub_1007451E4();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_10053AA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell()
{
  result = qword_10093D9B8;
  if (!qword_10093D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10053AAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100539C58();
  sub_1002EF4D8(a1, a2);
}

uint64_t sub_10053AB68()
{
  v0 = sub_100539C58();
  v1 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10053ABB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10053ABE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10053AC20()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10053AC74(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_100754664();
    if (v14)
    {
      v15 = v14;
      v1 = sub_100632C90(v14, 0);
      sub_1004A1558(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_100754664();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_100754574();
          v10 = sub_100754574();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10025F2C0(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_10025F2C0(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_10053AE88(size_t a1)
{
  v2 = sub_100746674();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10025DAA8(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_10053B0B4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_100754664();
    if (v19)
    {
      v20 = v19;
      v1 = sub_100632C90(v19, 0);
      sub_1004A2564(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_100754664();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_100754574();
          v11 = sub_100754574();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10025F2C0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_10025F2C0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_10053B2C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10053B318(int a1)
{
  sub_100754534(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x64726177726F66;
    }

    else
    {
      v2._countAndFlagsBits = 1701736302;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v2._countAndFlagsBits = 0x647261776B636162;
  }

  v2._object = v3;
  sub_1007531B4(v2);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  sub_1007531B4(v11);
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v6._countAndFlagsBits = v5;
  }

  else
  {
    v6._countAndFlagsBits = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  v6._object = v7;
  sub_1007531B4(v6);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_1007531B4(v12);
  v13._countAndFlagsBits = sub_100753434();
  sub_1007531B4(v13);

  v14._object = 0x80000001007833C0;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_1007531B4(v14);
  if ((a1 & 0x10000) != 0)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_1007531B4(v8);

  return 0;
}

uint64_t sub_10053B4D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10053EF08(*(a1 + 8) | v2, *(a2 + 8) | v3, *a1, *a2);
}

uint64_t sub_10053B510()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10053B318(*(v0 + 8) | v1);
}

Swift::Int sub_10053B530()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_10053B5CC()
{
  sub_100753174();
}

Swift::Int sub_10053B654()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_10053B6EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10053F128(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10053B71C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10053B774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
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
    v11 = sub_100754754();
  }

  return v11 & 1;
}

Swift::Int sub_10053B868()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_10053B910()
{
  sub_100753174();
}

Swift::Int sub_10053B9A4()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_10053BA48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10053F1DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10053BA78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10053BADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100754754();
  }

  return v11 & 1;
}

id sub_10053BBE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_10041553C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_10053BEF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_10011CB8C(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_10053D324();
    v5 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!sub_100754664())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = sub_100754574();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_10053C4A0(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

uint64_t sub_10053C07C(uint64_t result)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating] = result;
  if (v3 != (result & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [*(result + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10053C154()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = sub_100754754();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_100754574();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_10053D898(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_10053D898(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = sub_100754754();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = sub_100754664();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = sub_100754574();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = (v19 - 1);
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
    v20 = (v21 - 1);
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_10053D668(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void *sub_10053C4A0(void *result)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || result && v2[2] == result[2])
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_100233B94(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = sub_100754664();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v25 = sub_100754574();

    v26 = v2[2];
    v27 = *(v25 + 16);
    swift_unknownObjectRelease();
    if (v26 != v27)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      result = (v14 - 1);
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    result = (v15 - 1);
    if (!__OFSUB__(v15, 1))
    {
LABEL_25:
      sub_10053D668(result);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v13 = sub_100754754();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v16 = *&v1[v6];
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v17 = *(v16 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v17 = sub_100754574();

LABEL_33:
  v18 = v2[2];

  v19 = *(v17 + 16);

  if (v18 != v19)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v20 = sub_100754754();

  if (v20)
  {
LABEL_38:
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      v24 = v2[2];
      if (v24 == v23)
      {
        result = 0;
LABEL_42:
        sub_10053D898(result);
        goto LABEL_45;
      }

      result = (v24 + 1);
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

id sub_10053C8B8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = sub_100754664();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = sub_100754664();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  result = [v3 setScrollEnabled:?];
  v40 = _swiftEmptyArrayStorage;
  v35 = v11;
  v13 = *&v3[v11];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v14 = 0;
      v15 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
      v33 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex;
      v36 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = sub_100754574();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v18 = *(a1 + 32 + 8 * a2);
        }

        v19 = v18;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = a2;
        *(v20 + 32) = v19;

        sub_100753284();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v37 = v40;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *&v3[v15];
        *&v3[v15] = 0x8000000000000000;
        sub_100673634(v20, v14, isUniquelyReferenced_nonNull_native);
        *&v3[v15] = v39;
        swift_endAccess();
        [v3 addSubview:*(v20 + 32)];
        v22 = *(v20 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v41);
        [v3 bounds];
        Width = CGRectGetWidth(v42);
        [v3 bounds];
        [v22 setFrame:{0.0, MinY, Width, CGRectGetHeight(v43)}];

        [*(v20 + 32) layoutIfNeeded];
        v25 = sub_10074F3E4();
        v38[3] = v25;
        v38[4] = sub_1002968B4();
        v26 = sub_10000D134(v38);
        (*(*(v25 - 8) + 104))(v26, v36, v25);
        LOBYTE(v25) = sub_10074FC74();
        sub_10000C620(v38);
        if ((v25 & 1) != 0 && *&v3[v33] == -1)
        {
          *&v3[v33] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_100233E10(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v27 = [v5 layoutDirection];

        if (v27 == 1)
        {
          break;
        }

        v28 = *&v3[v35];
        v16 = __OFSUB__(v28, 1);
        v29 = (v28 - 1);
        if (v16)
        {
          goto LABEL_51;
        }

        if (a2 != v29)
        {
          v16 = __OFADD__(a2++, 1);
          if (v16)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v17 == v13)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v17 == v13)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v14;
        if (v17 >= v13)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v16 = __OFSUB__(a2--, 1);
        if (v16)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v30 = *&v3[v35];
        a2 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_47:
    v31 = *&v3[v32];
    *&v3[v32] = v37;
    sub_10053BEF8(v31);
  }

  return result;
}

void sub_10053CDE0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_100754754();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = sub_100754754();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = sub_100754754();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_100412104(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_10053C154();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_1005EAD48(a1 | 0x100, 1.0);

        sub_10053C07C(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_1005EAD48(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_10053D1F0(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_10053D324()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10053F1AC;
    *(v4 + 24) = v3;
    v7[4] = sub_100045E0C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10011B528;
    v7[3] = &unk_10087A618;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

uint64_t sub_10053D4B4(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }
}

id sub_10053D668(id result)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_10053BEF8(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v17];
    v1[v18] = 0;
    return result;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_100412104(v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (v4 == v9)
    {
      v4 = 0;
    }

    else
    {
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

id sub_10053D898(uint64_t a1)
{
  result = sub_100754754();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_10053AC74(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = v8;
    sub_10053BEF8(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v28];
    v1[v29] = 0;
    return result;
  }

  v7 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_100412104(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_10053DB8C()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_100754574();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_10053C4A0(v13);
}

unint64_t sub_10053DDA8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (result >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = result;

  result = sub_10001E77C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = result;
        v3 = sub_100754664();
        result = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_10053E2E8(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10001E77C((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      v4[2] = v15 + 1;
      v16 = &v4[2 * v15];
      v16[4] = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = sub_100754664();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          result = sub_100754574();
          v20 = result;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = v4[2];
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *&v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = sub_100754754();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = sub_100754754();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_1005EA524();
          sub_1005EA828();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }

  return result;
}

id sub_10053E2E8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_100754754();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = sub_100754754();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = sub_100754754();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_10053E76C(void *a1)
{
  sub_10053C07C(0);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v6 = v4, objc_msgSend(*(v5 + 32), "frame"), v6 == v7))
  {
    *(v1 + v3) = 0;

    sub_10053E8A0(0);
  }

  else
  {
    *(v1 + v3) = 1;

    sub_10053CDE0(1u);
  }
}

void sub_10053E8A0(char a1)
{
  v2 = v1;
  v4 = sub_10074A204();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_10053D668(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_100754754();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_100754754();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_10053D898(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_100233E10(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_10074F3E4();
      v35 = v18;
      v36 = sub_1002968B4();
      v19 = sub_10000D134(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_10074FC74();
      sub_10000C620(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_10074A1E4();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_100232B60(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_10074F3E4();
    v35 = v25;
    v36 = sub_1002968B4();
    v26 = sub_10000D134(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_10074FC74();
    sub_10000C620(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_10053ECF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10053EEB4()
{
  result = qword_10093DB08;
  if (!qword_10093DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB08);
  }

  return result;
}

uint64_t sub_10053EF08(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = sub_100754754();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = sub_100754754();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

uint64_t sub_10053F128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862CF0;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10053F174()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10053F1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10053F1DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862D58;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_10053F228()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_10041553C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10053F344()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_10053C154();
  }

  sub_10053DB8C();
  sub_10053DDA8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10074F3E4();
    v19 = v10;
    v11 = sub_1002968B4();
    v20 = v11;
    v12 = sub_10000D134(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_10074FC74();
    sub_10000C620(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_10000D134(v18);
      v14(v16, v13, v10);
      v17 = sub_10074FC74();
      sub_10000C620(v18);
      if ((v17 & 1) == 0)
      {
        sub_100234A3C(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10053F4F4()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_10053C154();
    }

    sub_10053DB8C();

    sub_10053DDA8();
  }
}

unint64_t sub_10053F5D8()
{
  result = qword_10093DB18;
  if (!qword_10093DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB18);
  }

  return result;
}

char *sub_10053F62C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_10053F7F4(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10053F874;
}

void sub_10053F874(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300);
        v10 = v4;
        v11 = sub_100753FC4();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_10062FDFC();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016C60(0, &qword_100922300);
      v16 = v4;
      v17 = sub_100753FC4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_10062FDFC();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_10053FB44()
{
  v1 = v0;
  v2 = sub_10074A8C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AE04();
  v138 = *(v6 - 8);
  v139 = v6;
  __chkstk_darwin(v6);
  v128 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v131 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007479B4();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin(v10);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v102 - v13;
  v146 = sub_10074A8A4();
  v140 = *(v146 - 8);
  __chkstk_darwin(v146);
  v136 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v147 = &v102 - v16;
  v17 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v17 - 8);
  v127 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v144 = &v102 - v20;
  v21 = sub_10000C518(&unk_100923180);
  v145 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v185.receiver = v0;
  v185.super_class = v24;
  objc_msgSendSuper2(&v185, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
  sub_1007477B4();
  sub_10017CB48();
  sub_1007477B4();
  sub_1007477B4();
  sub_100753B24();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v122 = v5;
    v123 = v3;
    v124 = v2;
    sub_10074DF44();
    v27 = [v0 traitCollection];
    v28 = sub_100751034();
    v119 = sub_10000C518(&unk_1009231A0);
    v29 = swift_allocObject();
    v135 = xmmword_1007A5CF0;
    *(v29 + 16) = xmmword_1007A5CF0;
    *(v29 + 32) = v27;
    v30 = v27;
    v129 = v28;
    v31 = sub_100751044();
    v117 = sub_10001B5C0();
    sub_100750544();

    v33 = v145 + 8;
    v32 = *(v145 + 8);
    v121 = v21;
    v118 = v32;
    v32(v23, v21);
    sub_1007477B4();
    CGRectGetMinX(v186);
    [v25 frame];
    MaxY = CGRectGetMaxY(v187);
    v35 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8];
    v110 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    v109 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100753094();
      v111 = v40;
      v112 = v39;
    }

    else
    {
      v111 = 0;
      v112 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_100753094();
      v113 = v44;
      v114 = v43;
    }

    else
    {
      v113 = 0;
      v114 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v137 = *(v45 + v46);

    v47 = v144;
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    (*(v138 + 56))(v47, 0, 1, v139);
    v48 = *(*&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
    v103 = v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
    v134 = v48;

    sub_1007477B4();
    v49 = [v1 traitCollection];
    if (qword_100920410 != -1)
    {
      swift_once();
    }

    v50 = v146;
    v51 = sub_10000D0FC(v146, qword_10097E010);
    v115 = *(v140 + 16);
    v116 = v140 + 16;
    v115(v147, v51, v50);
    v52 = sub_100753804();
    v125 = v1;
    v145 = v33;
    v120 = v23;
    if (v52)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v53 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v53 = qword_10093FF58;
    }

    v54 = v143;
    v55 = sub_10000D0FC(v143, v53);
    v56 = v142;
    v57 = v130;
    (*(v142 + 16))(v130, v55, v54);
    (*(v56 + 32))(v141, v57, v54);
    v58 = [v49 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v108 = sub_100750F34();
    swift_allocObject();
    v130 = sub_100750F14();
    v59 = objc_opt_self();
    v106 = v59;
    v60 = [v59 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = sub_10074F3F4();
    v184[3] = v61;
    v62 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v184[4] = v62;
    v105 = v62;
    v63 = sub_10000D134(v184);
    v64 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65 = *(v61 - 8);
    v66 = *(v65 + 104);
    v107 = v65 + 104;
    v104 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v66(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
    sub_10074FC74();
    v126 = v49;
    sub_10000C620(v184);
    v67 = v131;
    sub_10074CD04();
    sub_10074CCE4();
    v68 = v133;
    v132 = *(*&v132 + 8);
    (*&v132)(v67, v133);
    v69 = [v59 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v61;
    v183[4] = v62;
    v70 = sub_10000D134(v183);
    v66(v70, v64, v61);
    sub_10074FC74();
    sub_10000C620(v183);
    sub_10074CD04();
    sub_10074CCE4();
    v71 = v132;
    (*&v132)(v67, v68);
    v72 = [v106 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v61;
    v182[4] = v105;
    v73 = sub_10000D134(v182);
    v66(v73, v104, v61);
    sub_10074FC74();
    sub_10000C620(v182);
    sub_10074CD04();
    sub_10074CCE4();
    (*&v71)(v67, v68);
    v74 = v137;
    LODWORD(v133) = sub_10001BB7C(0, v137) & (v74 != 0);
    if (v133 == 1)
    {
      v75 = v108;
      v132 = MaxY;
      v76 = objc_allocWithZone(v129);
      v77 = v126;
      v78 = sub_100751024();
      v79 = v127;
      sub_100016B4C(v144, v127, &unk_1009393C0);
      v81 = v138;
      v80 = v139;
      v82 = *(v138 + 48);
      if (v82(v79, 1, v139) == 1)
      {
        v83 = v128;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v82(v79, 1, v80) != 1)
        {
          sub_10000C8CC(v79, &unk_1009393C0);
        }
      }

      else
      {
        v83 = v128;
        (*(v81 + 32))(v128, v79, v80);
      }

      v86 = v78;
      sub_100018CE4(v137, v83, v86);

      (*(v81 + 8))(v83, v80);
      v84 = v75;
      swift_allocObject();
      v85 = sub_100750F04();
    }

    else
    {
      v84 = v108;
      swift_allocObject();
      v85 = sub_100750F14();
    }

    v139 = v85;

    v87 = v134;
    if ((sub_10001BB7C(v134, 0) & (v87 != 0)) == 1)
    {
      v88 = v126;
      sub_100077794(v87, v103);
      swift_allocObject();
      v89 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v89 = sub_100750F14();
      v88 = v126;
    }

    v115(v136, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v84;
    v179 = v130;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10000C824(v184, v176);
    sub_10000C824(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v90 = sub_100750F24();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v84;
    v166 = v90;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_10000C824(v182, v154);
    v152 = v84;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v139;
    v149 = v84;
    v148 = v89;
    v91 = v122;
    sub_10074A8B4();
    v92 = swift_allocObject();
    *(v92 + 16) = v135;
    *(v92 + 32) = v88;
    v93 = v88;
    v94 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v95 = v124;
    sub_100750404();

    (*(v123 + 8))(v91, v95);
    sub_10000C620(v182);
    sub_10000C620(v183);
    sub_10000C620(v184);
    (*(v142 + 8))(v141, v143);
    (*(v140 + 8))(v147, v146);
    v96 = v120;
    sub_10074DF44();
    v97 = swift_allocObject();
    *(v97 + 16) = v135;
    *(v97 + 32) = v93;
    v98 = v93;
    v99 = sub_100751044();
    v100 = v121;
    sub_100750544();

    v118(v96, v100);
    sub_10000C8CC(v144, &unk_1009393C0);
    v101 = *&v125[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
    [v125 bounds];
    sub_100753B24();
    return [v101 setFrame:?];
  }

  return result;
}

id sub_100540CF8()
{
  v1 = v0;
  sub_10017D15C();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
  result = sub_100630618();
  v4 = v1[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_100540D9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v247 = a2;
  swift_getObjectType();
  v5 = sub_10000C518(&qword_100923450);
  __chkstk_darwin(v5 - 8);
  v208 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v214 = &v196 - v8;
  v9 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v9 - 8);
  v225 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v226 = &v196 - v12;
  v13 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v13 - 8);
  v224 = &v196 - v14;
  v15 = sub_100744864();
  __chkstk_darwin(v15 - 8);
  v212 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v211 = &v196 - v18;
  __chkstk_darwin(v19);
  v218 = &v196 - v20;
  __chkstk_darwin(v21);
  v217 = &v196 - v22;
  v223 = sub_100744894();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v210 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v216 = &v196 - v25;
  v219 = sub_100747D94();
  v227 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v234 = &v196 - v28;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v232 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v30 - 8);
  v32 = &v196 - v31;
  v221 = sub_1007504F4();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v233 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_100746B04();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100746A94();
  v241 = *(v239 - 8);
  __chkstk_darwin(v239);
  v205 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v196 - v37;
  __chkstk_darwin(v39);
  v235 = &v196 - v40;
  __chkstk_darwin(v41);
  v215 = &v196 - v42;
  __chkstk_darwin(v43);
  v238 = &v196 - v44;
  v45 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v45 - 8);
  v209 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v196 - v48;
  __chkstk_darwin(v49);
  v245 = &v196 - v50;
  v51 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v51 - 8);
  v53 = &v196 - v52;
  v54 = sub_10074F704();
  v246 = *(v54 - 8);
  __chkstk_darwin(v54);
  v250 = &v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_10074A7F4();
  v56 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v196 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v196 - v59;
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult);
  result = sub_1007468B4();
  if (!v252[0])
  {
    return result;
  }

  v240 = v56;
  v244 = v54;
  v62 = v252[0];
  v63 = sub_100742364();
  v248 = v60;
  v243 = v63;
  sub_100745E24();
  v236 = v62;
  v64 = sub_100742354();
  v65 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &stru_1008F2000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10074F634();
  v68 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_1007469A4();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v243;
  sub_100028DB0(v243, v53, v247);
  sub_10000C8CC(v53, &unk_100923200);
  v242 = v71;
  v73 = v71[v65];
  v74 = v244;
  v75 = v240;
  v76 = v248;
  if (v73 != 1 || (sub_10074A7E4() & 1) == 0)
  {
LABEL_150:
    [v242 setNeedsLayout];

    (*(v246 + 8))(v250, v74);
    return (*(v75 + 8))(v76, v249);
  }

  v77 = sub_100745DD4();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_100754664();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v201 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v201 = sub_100754574();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v201 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v242[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
  v202 = sub_100745E04();
  v204 = sub_100745DE4();
  v80 = sub_100745E54();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_100754664();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v203 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v203 = sub_100754574();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v203 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_100746914();

  v84 = v252[0];
  sub_100222B00(v245);

  a1 = sub_100745E04();
  v53 = sub_100745DE4();
  v85 = sub_100745DD4();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_100754664();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_100754574();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_100745E54();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_100754664();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_100754574();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v53 = v241;
    v95 = v238;
    v84 = v239;
    (*(v241 + 104))(v238, enum case for LockupMediaLayout.DisplayType.none(_:), v239);
    v91 = v204;
LABEL_46:
    v38 = v201;
    goto LABEL_68;
  }

  v91 = v204;
  if (v53 | a1)
  {
    v96 = v215;
    sub_100750504();

    v53 = v241;
    v84 = v239;
    (*(v241 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v239);
    v95 = v238;
    (*(v53 + 32))(v238, v96, v84);
    goto LABEL_46;
  }

  v92 = sub_100631A30(v72, v88, 0, 1);
  v53 = v92;
  v84 = (v92 >> 62);
  if (v92 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v200 = i;
    v94 = v72 ? sub_100743844() : 0;
    v97 = sub_100631D8C(v94);

    v197 = v97;
    v98 = v72 ? sub_100743844() : 0;
    v99 = v249;
    (*(v75 + 16))(v32, v248, v249);
    (*(v75 + 56))(v32, 0, 1, v99);
    a1 = sub_1006322B4(v98, v32);

    sub_10000C8CC(v32, &unk_100934D80);
    if (v84 ? sub_100754664() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v101 = sub_10074F194();

      if (v101)
      {

        v53 = v241;
        v102 = v215;
        v84 = v239;
        (*(v241 + 104))(v215, enum case for LockupMediaLayout.DisplayType.landscape(_:), v239);
LABEL_66:
        v95 = v238;
        v91 = v204;
        v38 = v201;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v103 = a1;
    v104 = v241;
    v105 = v239;
    v199 = *(v241 + 104);
    v198 = v241 + 104;
    (v199)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v239);
    v106 = sub_100746A84();
    v196 = *(v104 + 8);
    v196(v38, v105);
    if (((v200 >= v106) & v103) != 0 || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v105), v107 = sub_100746A84(), v196(v38, v105), ((v200 >= v107) & v197) != 0) || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v105), v108 = sub_100746A84(), v196(v38, v105), v200 >= v108))
    {

      v102 = v215;
      v199();
      v84 = v105;
      v53 = v241;
      goto LABEL_66;
    }

    (v199)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v105);
    sub_100746A84();

    v196(v38, v105);
    v109 = v105;
    v102 = v215;
    v199();
    v53 = v241;
    v95 = v238;
    v91 = v204;
    v38 = v201;
    v84 = v109;
LABEL_67:
    (*(v53 + 32))(v95, v102, v84);
LABEL_68:
    v32 = v235;

    v252[3] = &type metadata for CGFloat;
    v252[4] = &protocol witness table for CGFloat;
    v252[0] = 0x4021000000000000;
    sub_10000C824(v252, v251);
    v72 = v53 + 16;
    v110 = v95;
    a1 = *(v53 + 16);
    (a1)(v32, v110, v84);
    if (v91 | v202)
    {
      goto LABEL_86;
    }

    v85 = sub_100631A30(v38, v203, 0, 1);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      sub_10074F2A4();
      sub_100750504();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v111 = v85;
  v112 = sub_100754664();
  v85 = v111;
  if (v112)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_100750504();
LABEL_87:
  sub_100016B4C(v245, v237, &unk_1009281D0);
  v113 = v229;
  sub_100746AD4();
  sub_10000C620(v252);
  v114 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v115 = v230;
  v116 = v67 + v114;
  v117 = v231;
  (*(v230 + 24))(v116, v113, v231);
  swift_endAccess();
  [(__objc2_prop *)v67 setNeedsLayout];
  (*(v115 + 8))(v113, v117);
  if (v38)
  {
    v118 = sub_100743844();
  }

  else
  {
    v118 = 0;
  }

  sub_100743864();
  v119 = v232;
  sub_1002898DC(v118, v232);

  v120 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v119, v67 + v120);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v119);
  if (v38)
  {
    v121 = sub_100743844();
  }

  else
  {
    v121 = 0;
  }

  v122 = v228;
  *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform) = v121;

  sub_10062F3F8();

  v123 = v249;
  (*(v75 + 16))(v122, v248, v249);
  v124 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v124, v122, v123);
  swift_endAccess();
  [(__objc2_prop *)v67 setNeedsLayout];
  (*(v75 + 8))(v122, v123);
  if (v204)
  {
    (*(v222 + 104))(v216, enum case for VideoFillMode.scaleAspectFill(_:), v223);

    sub_10074EC14();
    sub_10074F2A4();
    v125 = v237;
    sub_100750504();

    (*(v220 + 56))(v125, 0, 1, v221);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v126 = v67;
    v127 = v224;
    sub_10074EC24();
    v128 = sub_100741264();
    (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    v129 = v226;
    sub_10074EBE4();
    v130 = v225;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v131 = sub_1007464A4();
    sub_10000C8CC(v130, &unk_1009281C0);
    sub_10000C8CC(v129, &unk_1009281C0);
    v132 = v127;
    v67 = v126;
    sub_10000C8CC(v132, &unk_100923970);
    sub_10000C8CC(v252, &unk_1009276E0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v241;
    if (Strong)
    {
      v134 = Strong;
      v135 = [Strong superview];
      if (!v135)
      {
        goto LABEL_99;
      }

      v136 = v135;
      sub_100016C60(0, &qword_100922300);
      v137 = v126;
      v138 = sub_100753FC4();

      if (v138)
      {
        v139 = swift_unknownObjectWeakLoadStrong();
        if (v139)
        {
          v134 = v139;
          [v139 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v140 = swift_unknownObjectWeakLoadStrong();
    if (v140)
    {
      v141 = v140;
      [(__objc2_prop *)v67 addSubview:v140];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];

    v142 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v143 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    v75 = v240;
    v144 = v219;
    if (v143)
    {
      [v143 removeFromSuperview];
      v145 = *(&v67->name + v142);
    }

    else
    {
      v145 = 0;
    }

    v74 = v244;
    *(&v67->name + v142) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v227 + 8))(v234, v144);
LABEL_148:
    v181 = v238;
LABEL_149:
    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v53 + 8))(v181, v239);
    sub_10000C8CC(v245, &unk_1009281D0);
    v76 = v248;
    goto LABEL_150;
  }

  v53 = v241;
  if (!v203)
  {
    goto LABEL_135;
  }

  result = sub_10074F794();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v184 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v185 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    if (v185)
    {
      [v185 removeFromSuperview];
      v186 = *(&v67->name + v184);
    }

    else
    {
      v186 = 0;
    }

    v74 = v244;
    *(&v67->name + v184) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];
    v187 = swift_unknownObjectWeakLoadStrong();
    if (v187)
    {
      v188 = v187;
      sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v189 = [v188 superview];
      if (v189)
      {
        v190 = v189;
        sub_100016C60(0, &qword_100922300);
        v191 = v67;
        v192 = sub_100753FC4();

        v74 = v244;
        if (v192)
        {
          v193 = swift_unknownObjectWeakLoadStrong();
          if (v193)
          {
            v188 = v193;
            [v193 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v244;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v194 = swift_unknownObjectWeakLoadStrong();
    if (v194)
    {
      v195 = v194;
      [(__objc2_prop *)v67 addSubview:v194];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];
    goto LABEL_148;
  }

  v182 = result;
  v183 = sub_100754664();
  result = v182;
  if (!v183)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_100754574();
LABEL_110:
    v146 = v67;
    v201 = v38;

    v147 = v205;
    v148 = v239;
    (a1)(v205, v238, v239);
    v149 = (*(v53 + 88))(v147, v148);
    v150 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v147, v148);
    if (v149 == v150)
    {
      v151 = 1;
      v152 = v214;
    }

    else
    {
      v153 = sub_10074F784();
      v152 = v214;
      sub_1002898DC(v153, v214);

      v151 = 0;
    }

    v154 = v226;
    v155 = v207;
    v156 = v223;
    v157 = v222;
    v158 = v206;
    v159 = v221;
    (*(v206 + 56))(v152, v151, 1, v207);
    (*(v157 + 104))(v210, enum case for VideoFillMode.scaleAspectFill(_:), v156);
    sub_10074EC14();
    sub_10074F2A4();
    v160 = v209;
    sub_100750504();

    (*(v220 + 56))(v160, 0, 1, v159);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    v161 = v152;
    v162 = v208;
    sub_100016B4C(v161, v208, &qword_100923450);
    if ((*(v158 + 48))(v162, 1, v155) == 1)
    {
      sub_10000C8CC(v162, &qword_100923450);
    }

    else
    {
      sub_100024440(v162);
    }

    v67 = v146;
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v163 = v224;
    sub_10074EC24();
    v164 = sub_100741264();
    (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
    sub_10074EBE4();
    v165 = v225;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v166 = sub_1007464A4();
    sub_10000C8CC(v165, &unk_1009281C0);
    sub_10000C8CC(v154, &unk_1009281C0);
    sub_10000C8CC(v163, &unk_100923970);
    sub_10000C8CC(v252, &unk_1009276E0);
    v167 = swift_unknownObjectWeakLoadStrong();
    if (v167)
    {
      v168 = v167;
      v169 = [v167 superview];
      if (v169)
      {
        v170 = v169;
        sub_100016C60(0, &qword_100922300);
        v171 = v67;
        v172 = sub_100753FC4();

        v75 = v240;
        if ((v172 & 1) == 0)
        {
          goto LABEL_124;
        }

        v173 = swift_unknownObjectWeakLoadStrong();
        if (!v173)
        {
          goto LABEL_124;
        }

        v168 = v173;
        [v173 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v174 = swift_unknownObjectWeakLoadStrong();
    if (v174)
    {
      v175 = v174;
      [(__objc2_prop *)v67 addSubview:v174];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];

    v176 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v177 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    v53 = v241;
    v178 = v238;
    if (v177)
    {
      [v177 removeFromSuperview];
      v179 = *(&v67->name + v176);
    }

    else
    {
      v179 = 0;
    }

    v180 = v219;
    *(&v67->name + v176) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v227 + 8))(v213, v180);
    sub_10000C8CC(v214, &qword_100923450);
    v74 = v244;
    v181 = v178;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005431A4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100749574();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  return sub_10017D40C();
}

id sub_100543264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10054334C()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_1005433A0(void *a1)
{
  sub_10054971C();
}

uint64_t (*sub_1005433D8(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10053F7F4(v2);
  return sub_1000181A8;
}

uint64_t sub_100543490(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100543548()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_1005435A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_100543664()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_100549890(&qword_1009393D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10074D3C4();
}

uint64_t sub_100543710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100543764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005437D0(uint64_t *a1))()
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10054386C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016C60(0, &qword_100922300);
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_100543A28(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100549890(&qword_10093DB98, a2, type metadata accessor for AppSearchResultContentView);
  result = sub_100549890(&unk_10093DBA0, v3, type metadata accessor for AppSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100543AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100923180);
  v145 = *(v6 - 8);
  v146 = v6;
  __chkstk_darwin(v6);
  v144 = &v112 - v7;
  v8 = sub_10074A8C4();
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v141 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10074AE04();
  *&v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074CD14();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v137 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007479B4();
  v152 = *(v13 - 8);
  v153 = v13;
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v151 = &v112 - v17;
  v155 = sub_10074A8A4();
  v150 = *(v155 - 8);
  __chkstk_darwin(v155);
  v140 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v112 - v20;
  v21 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v21 - 8);
  v133 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v112 - v24;
  v25 = sub_10074A7F4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_10074F314();
  __chkstk_darwin(v29 - 8);
  sub_10000C824(a1, v193);
  sub_10000C518(&unk_100923100);
  sub_100742374();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v135 = v192[0];
  v136 = v28;
  sub_100742364();

  if (sub_10074EF24())
  {
    v130 = a2;
    v131 = v26;
    v129 = v25;
    v132 = v2;
    v31 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
    v32 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v33 = qword_100920548;
    v34 = *(v31 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_100747064();
    sub_10000D0FC(v35, qword_10097E3A8);
    sub_100746F34();
    [v34 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v34 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    v36 = *(v31 + v32);
    sub_1007433C4();
    sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    v37 = v36;
    a2 = v130;
    sub_100744204();

    v26 = v131;
    v3 = v132;
    v25 = v129;
  }

  v38 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  sub_100265EBC(a1, a2);

  v39 = v136;
  sub_100745E24();
  if ((sub_100742354() & 1) == 0 || (sub_10074A7E4() & 1) == 0)
  {

    goto LABEL_50;
  }

  v129 = v25;
  sub_10074EF34();
  v117 = v40;
  v41 = sub_10074EFB4();
  v118 = v42;
  v119 = v41;
  v43 = sub_10074EED4();

  if (v43 && (v44 = sub_100748644(), , v44))
  {
    v45 = sub_10074F764();
    v120 = v46;
    v121 = v45;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v128 = sub_100745DF4();
  v47 = v154;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v147 + 56))(v47, 0, 1, v148);
  v127 = sub_100745E14();
  v112 = sub_100745E34();
  v48 = [v3 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v49 = v155;
  v50 = sub_10000D0FC(v155, qword_10097E010);
  v123 = *(v150 + 16);
  v124 = v150 + 16;
  v123(v156, v50, v49);
  v51 = sub_100753804();
  v130 = a2;
  v131 = v26;
  v132 = v3;
  if ((v51 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v52 = qword_10093FF58;
    goto LABEL_23;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v52 = qword_10093FF40;
LABEL_23:
    v53 = v153;
    v54 = sub_10000D0FC(v153, v52);
    v55 = v152;
    (*(v152 + 16))(v15, v54, v53);
    (*(v55 + 32))(v151, v15, v53);
    v56 = [v48 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v122 = sub_100750F34();
    swift_allocObject();
    v125 = sub_100750F14();
    v57 = objc_opt_self();
    v126 = v48;
    v58 = v57;
    v115 = v57;
    v59 = [v57 preferredFontForTextStyle:UIFontTextStyleBody];
    v60 = sub_10074F3F4();
    v193[3] = v60;
    v61 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v193[4] = v61;
    v114 = v61;
    v62 = sub_10000D134(v193);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v64 = *(v60 - 8);
    v65 = *(v64 + 104);
    v116 = v64 + 104;
    v113 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
    sub_10074FC74();
    sub_10000C620(v193);
    v66 = v137;
    sub_10074CD04();
    sub_10074CCE4();
    v67 = v139;
    v138 = *(v138 + 8);
    (v138)(v66, v139);
    v68 = [v58 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v192[3] = v60;
    v192[4] = v61;
    v69 = sub_10000D134(v192);
    v65(v69, v63, v60);
    sub_10074FC74();
    sub_10000C620(v192);
    sub_10074CD04();
    sub_10074CCE4();
    v70 = v138;
    (v138)(v66, v67);
    v71 = [v115 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v191[3] = v60;
    v191[4] = v114;
    v72 = sub_10000D134(v191);
    v65(v72, v113, v60);
    sub_10074FC74();
    sub_10000C620(v191);
    sub_10074CD04();
    sub_10074CCE4();
    v70(v66, v67);
    v73 = v128;
    LODWORD(v139) = sub_10001BB7C(0, v128) & (v73 != 0);
    if (v139 == 1)
    {
      v74 = objc_allocWithZone(sub_100751034());
      v75 = v126;
      v76 = sub_100751024();
      v77 = v133;
      sub_100016B4C(v154, v133, &unk_1009393C0);
      v78 = v147;
      v79 = *(v147 + 48);
      v80 = v148;
      if (v79(v77, 1, v148) == 1)
      {
        v81 = v134;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v79(v77, 1, v80) != 1)
        {
          sub_10000C8CC(v77, &unk_1009393C0);
        }
      }

      else
      {
        v81 = v134;
        (*(v78 + 32))(v134, v77, v80);
      }

      v84 = v76;
      sub_100018CE4(v128, v81, v84);

      (*(v78 + 8))(v81, v80);
      v82 = v122;
      swift_allocObject();
      v83 = sub_100750F04();
    }

    else
    {
      v82 = v122;
      swift_allocObject();
      v83 = sub_100750F14();
    }

    v85 = v83;

    v86 = v127;
    if ((sub_10001BB7C(v127, 0) & (v86 != 0)) == 1)
    {
      sub_100077794(v86, v112 & 1);
      swift_allocObject();
      v87 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v87 = sub_100750F14();
    }

    v88 = v87;
    v123(v140, v156, v155);
    v190 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v82;
    v188 = v125;
    v187 = 0;
    *&v185[40] = 0u;
    v186 = 0u;
    sub_10000C824(v193, v185);
    sub_10000C824(v192, &v184);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0;
    v178 = 0u;
    v179 = 0u;

    v148 = v88;
    v89 = sub_100750F24();
    v177 = &protocol witness table for LayoutViewPlaceholder;
    v176 = v82;
    v175 = v89;
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v165 = 0;
    v164 = 0u;
    *&v163[40] = 0u;
    sub_10000C824(v191, v163);
    v161 = v82;
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v159 = &protocol witness table for LayoutViewPlaceholder;
    v160 = v85;
    v158 = v82;
    v157 = v88;
    v90 = v141;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v91 = swift_allocObject();
    v147 = xmmword_1007A5CF0;
    *(v91 + 16) = xmmword_1007A5CF0;
    v92 = v126;
    *(v91 + 32) = v126;
    v48 = v92;
    v93 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v94 = v143;
    sub_100750404();

    (*(v142 + 8))(v90, v94);
    sub_10000C620(v191);
    sub_10000C620(v192);
    sub_10000C620(v193);
    (*(v152 + 8))(v151, v153);
    (*(v150 + 8))(v156, v155);
    v95 = v144;
    sub_10074DF44();
    v96 = swift_allocObject();
    *(v96 + 16) = v147;
    *(v96 + 32) = v48;
    v97 = v48;
    v98 = sub_100751044();
    sub_10001B5C0();
    v99 = v146;
    sub_100750544();

    (*(v145 + 8))(v95, v99);
    sub_10000C8CC(v154, &unk_1009393C0);
    v100 = v132;
    v15 = sub_100745E04();
    v101 = sub_100745DE4();
    v102 = sub_100745DD4();
    if (v102 >> 62)
    {
      v104 = v102;
      v105 = sub_100754664();
      v102 = v104;
      v26 = v131;
      if (!v105)
      {
LABEL_40:

        v103 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v131;
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      v48 = v102;
      v103 = sub_100754574();
    }

    else
    {
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v48 = v102;
      v103 = *(v102 + 32);
    }

LABEL_41:
    v106 = sub_100745E54();
    if (!(v106 >> 62))
    {
      if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v108 = v106;
    v109 = sub_100754664();
    v106 = v108;
    if (!v109)
    {
      break;
    }

LABEL_43:
    if ((v106 & 0xC000000000000001) != 0)
    {
      v107 = sub_100754574();
      goto LABEL_46;
    }

    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v106 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v107 = 0;
LABEL_49:
  v110 = [v100 traitCollection];
  v111 = v136;
  sub_1006A541C(v15, v101, v103, v107, v110, v130, v136);

  v39 = v111;

  v25 = v129;
LABEL_50:

  return (*(v26 + 8))(v39, v25);
}

uint64_t sub_100544EDC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v2 - 8);
  v164 = &v161 - v3;
  v4 = sub_100746A94();
  v191 = *(v4 - 8);
  v192 = v4;
  __chkstk_darwin(v4);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v161 - v8;
  __chkstk_darwin(v9);
  v185 = &v161 - v10;
  v11 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v161 - v12;
  v14 = sub_10000C518(&unk_100923180);
  v189 = *(v14 - 8);
  v190 = v14;
  __chkstk_darwin(v14);
  v188 = &v161 - v15;
  v16 = sub_10074A8C4();
  v199 = *(v16 - 8);
  v200 = v16;
  __chkstk_darwin(v16);
  v198 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_10074AE04();
  *&v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v187 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074CD14();
  v195 = *(v19 - 8);
  v196 = v19;
  __chkstk_darwin(v19);
  v194 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007479B4();
  v213 = *(v21 - 8);
  v214 = v21;
  __chkstk_darwin(v21);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v212 = &v161 - v25;
  v216 = sub_10074A8A4();
  v211 = *(v216 - 8);
  __chkstk_darwin(v216);
  v197 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v217 = &v161 - v28;
  v29 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v29 - 8);
  v186 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v161 - v32;
  v33 = sub_100747C14();
  __chkstk_darwin(v33 - 8);
  v34 = sub_10074F704();
  v193 = *(v34 - 8);
  __chkstk_darwin(v34);
  v210 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10074A7F4();
  v201 = *(v36 - 8);
  v202 = v36;
  __chkstk_darwin(v36);
  v38 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult);
  result = sub_1007468B4();
  v40 = v254[0];
  if (!v254[0])
  {
    return result;
  }

  v162 = v6;
  v41 = sub_100742364();
  v207 = v38;
  v208 = v41;
  sub_100745E24();
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F674();
  v168 = v40;
  v42 = sub_100742354();
  v169 = v34;
  if (v42)
  {
    v184 = sub_10074A7E4();
  }

  else
  {
    v184 = 0;
  }

  v43 = v205;

  v174 = sub_10074EF34();
  v175 = v44;
  v45 = sub_10074EFB4();
  v176 = v46;
  v177 = v45;
  v47 = sub_10074EED4();

  if (v47 && (v48 = sub_100748644(), , v48))
  {
    v49 = sub_10074F764();
    v178 = v50;
    v179 = v49;
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  v51 = v206;
  v209 = sub_100745DF4();
  v52 = v215;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v43 + 56))(v52, 0, 1, v51);
  v204 = sub_100745E14();
  v163 = sub_100745E34();
  swift_getKeyPath();
  sub_100746914();

  v53 = v254[5];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v54 = v216;
  v55 = sub_10000D0FC(v216, qword_10097E010);
  v181 = *(v211 + 16);
  v182 = v211 + 16;
  v181(v217, v55, v54);
  v56 = sub_100753804();
  v166 = v13;
  v167 = a1;
  if (v56)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v57 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v57 = qword_10093FF58;
  }

  v58 = v214;
  v59 = sub_10000D0FC(v214, v57);
  v60 = v213;
  (*(v213 + 16))(v23, v59, v58);
  (*(v60 + 32))(v212, v23, v58);
  v61 = [v53 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v180 = sub_100750F34();
  swift_allocObject();
  v183 = sub_100750F14();
  v62 = objc_opt_self();
  v172 = v62;
  v63 = [v62 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = sub_10074F3F4();
  v254[3] = v64;
  v65 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v254[4] = v65;
  v171 = v65;
  v66 = sub_10000D134(v254);
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = *(v64 - 8);
  v69 = *(v68 + 104);
  v173 = v68 + 104;
  v170 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v69(v66, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
  sub_10074FC74();
  sub_10000C620(v254);
  v70 = v194;
  sub_10074CD04();
  sub_10074CCE4();
  v203 = v53;
  v71 = v196;
  v195 = *(v195 + 8);
  (v195)(v70, v196);
  v72 = [v62 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v253[3] = v64;
  v253[4] = v65;
  v73 = sub_10000D134(v253);
  v69(v73, v67, v64);
  sub_10074FC74();
  sub_10000C620(v253);
  sub_10074CD04();
  sub_10074CCE4();
  v74 = v195;
  (v195)(v70, v71);
  v75 = [v172 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v252[3] = v64;
  v252[4] = v171;
  v76 = sub_10000D134(v252);
  v69(v76, v170, v64);
  sub_10074FC74();
  sub_10000C620(v252);
  sub_10074CD04();
  sub_10074CCE4();
  v74(v70, v71);
  v77 = v209;
  if ((sub_10001BB7C(0, v209) & (v77 != 0)) == 1)
  {
    v78 = objc_allocWithZone(sub_100751034());
    v79 = v203;
    v80 = sub_100751024();
    v81 = v186;
    sub_100016B4C(v215, v186, &unk_1009393C0);
    v82 = v205;
    v83 = *(v205 + 48);
    v84 = v206;
    if (v83(v81, 1, v206) == 1)
    {
      v85 = v187;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v83(v81, 1, v84) != 1)
      {
        sub_10000C8CC(v81, &unk_1009393C0);
      }
    }

    else
    {
      v85 = v187;
      (*(v82 + 32))(v187, v81, v84);
    }

    v88 = v80;
    sub_100018CE4(v209, v85, v88);

    (*(v82 + 8))(v85, v84);
    v86 = v180;
    swift_allocObject();
    v87 = sub_100750F04();
  }

  else
  {
    v86 = v180;
    swift_allocObject();
    v87 = sub_100750F14();
  }

  v89 = v87;

  v90 = v204;
  if ((sub_10001BB7C(v204, 0) & (v90 != 0)) == 1)
  {
    sub_100077794(v90, v163 & 1);
    swift_allocObject();
    v91 = sub_100750F04();
  }

  else
  {
    swift_allocObject();
    v91 = sub_100750F14();
  }

  v92 = v91;
  v181(v197, v217, v216);
  v251 = &protocol witness table for LayoutViewPlaceholder;
  v250 = v86;
  v93 = v86;
  v94 = v183;
  v249 = v183;
  v248 = 0;
  *&v246[40] = 0u;
  v247 = 0u;
  sub_10000C824(v254, v246);
  sub_10000C824(v253, &v245);
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;

  v95 = sub_100750F24();
  v238 = &protocol witness table for LayoutViewPlaceholder;
  v237 = v93;
  v236 = v95;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v229 = 0;
  v227 = 0u;
  v228 = 0u;
  v226 = 0;
  v225 = 0u;
  *&v224[40] = 0u;
  sub_10000C824(v252, v224);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v93;
  v220 = &protocol witness table for LayoutViewPlaceholder;
  v221 = v89;
  v219 = v93;
  v218 = v92;
  v96 = v198;
  sub_10074A8B4();
  v97 = sub_100751034();
  v98 = sub_10000C518(&unk_1009231A0);
  v99 = swift_allocObject();
  v205 = xmmword_1007A5CF0;
  *(v99 + 16) = xmmword_1007A5CF0;
  v100 = v203;
  *(v99 + 32) = v203;
  v101 = v100;
  v206 = v97;
  v102 = sub_100751044();
  sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
  v103 = v200;
  sub_100750404();

  (*(v199 + 8))(v96, v103);
  sub_10000C620(v252);
  sub_10000C620(v253);
  sub_10000C620(v254);
  (*(v213 + 8))(v212, v214);
  (*(v211 + 8))(v217, v216);
  sub_10000C8CC(v215, &unk_1009393C0);
  if ((v184 & 1) == 0)
  {

    (*(v193 + 8))(v210, v169);
    return (*(v201 + 8))(v207, v202);
  }

  v104 = v188;
  sub_10074DF44();
  swift_getKeyPath();
  v105 = v167;
  sub_100746914();

  v106 = v254[0];
  v107 = swift_allocObject();
  *(v107 + 16) = v205;
  *(v107 + 32) = v106;
  v108 = v106;
  v109 = sub_100751044();
  sub_10001B5C0();
  v110 = v190;
  sub_100750544();

  (*(v189 + 8))(v104, v110);
  v217 = sub_100745E04();
  v111 = sub_100745DE4();
  v112 = sub_100745DD4();
  if (v112 >> 62)
  {
    v113 = v112;
    v114 = sub_100754664();
    v112 = v113;
    if (v114)
    {
      goto LABEL_34;
    }

LABEL_40:

    v98 = 0;
    goto LABEL_41;
  }

  if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v112 & 0xC000000000000001) != 0)
  {
    v98 = sub_100754574();
  }

  else
  {
    if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v98 = *(v112 + 32);
  }

LABEL_41:
  v115 = sub_100745E54();
  if (v115 >> 62)
  {
    v116 = v115;
    v117 = sub_100754664();
    v115 = v116;
    if (v117)
    {
      goto LABEL_43;
    }

LABEL_48:

    v216 = 0;
    goto LABEL_49;
  }

  if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v115 & 0xC000000000000001) != 0)
  {
    v216 = sub_100754574();
  }

  else
  {
    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v216 = *(v115 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v118 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_100746914();

  v94 = v254[0];
  sub_100222B00(v166);

  v105 = sub_100745E04();
  v108 = sub_100745DE4();
  v119 = sub_100745DD4();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = sub_100754664();
    v119 = v120;
    v109 = v207;
    if (v121)
    {
LABEL_51:
      if ((v119 & 0xC000000000000001) == 0)
      {
        if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v94 = *(v119 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v94 = sub_100754574();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v109 = v207;
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v94 = 0;
LABEL_57:
  v122 = sub_100745E54();
  if (v122 >> 62)
  {
    v125 = v122;
    v126 = sub_100754664();
    v122 = v125;
    v215 = v98;
    if (v126)
    {
LABEL_59:
      if ((v122 & 0xC000000000000001) == 0)
      {
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v124 = *(v122 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v213 = sub_100754664();
        if (v94)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v124 = sub_100754574();
      goto LABEL_62;
    }
  }

  else
  {
    v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v215 = v98;
    if (v123)
    {
      goto LABEL_59;
    }
  }

  v124 = 0;
LABEL_65:
  v127 = sub_10074A7E4();
  v214 = v111;
  if ((v127 & 1) == 0)
  {

    v130 = v191;
    v131 = v185;
    (*(v191 + 104))(v185, enum case for LockupMediaLayout.DisplayType.none(_:), v192);
LABEL_72:
    v134 = v166;
    v135 = v193;
LABEL_104:
    type metadata accessor for LockupMediaView();
    v159 = sub_10007DC04();
    swift_getObjectType();
    v160 = v207;
    sub_1006A6BAC(v217, v214, v215, v216, v134, v131, v159, v207);

    swift_unknownObjectRelease();

    (*(v130 + 8))(v131, v192);
    sub_10000C8CC(v134, &unk_1009281D0);
    (*(v135 + 8))(v210, v169);
    return (*(v201 + 8))(v160, v202);
  }

  if (v108 | v105)
  {
    v132 = v165;
    sub_100750504();

    v130 = v191;
    v133 = v192;
    (*(v191 + 104))(v132, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v192);
    v131 = v185;
    (*(v130 + 32))(v185, v132, v133);
    goto LABEL_72;
  }

  v128 = sub_100631A30(v94, v124, 0, 1);
  v108 = v128;
  v109 = (v128 >> 62);
  if (v128 >> 62)
  {
    goto LABEL_81;
  }

  v213 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v94)
  {
LABEL_69:
    v129 = sub_100743844();
    goto LABEL_83;
  }

LABEL_82:
  v129 = 0;
LABEL_83:
  v136 = sub_100631D8C(v129);

  LODWORD(v211) = v136;
  if (v94)
  {
    v137 = sub_100743844();
  }

  else
  {
    v137 = 0;
  }

  v139 = v201;
  v138 = v202;
  v140 = v164;
  (*(v201 + 16))(v164, v207, v202);
  (*(v139 + 56))(v140, 0, 1, v138);
  v141 = sub_1006322B4(v137, v140);

  sub_10000C8CC(v140, &unk_100934D80);
  if (v109)
  {
    result = sub_100754664();
    v142 = v162;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v142 = v162;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v108 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_91:

    v143 = sub_10074F194();

    if (v143)
    {

      v130 = v191;
      v144 = v192;
      v145 = v165;
      (*(v191 + 104))(v165, enum case for LockupMediaLayout.DisplayType.landscape(_:), v192);
LABEL_103:
      v131 = v185;
      v158 = v166;
      v135 = v193;
      (*(v130 + 32))(v185, v145, v144);
      v134 = v158;
      goto LABEL_104;
    }

LABEL_95:
    v146 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v147 = v141;
    v148 = v191;
    v149 = v142;
    v150 = v142;
    v144 = v192;
    v212 = *(v191 + 104);
    (v212)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v192);
    v151 = sub_100746A84();
    v209 = *(v148 + 8);
    v209(v150, v144);
    if (((v213 >= v151) & v147) != 0 || (v146 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v144), v152 = sub_100746A84(), v153 = v209, v209(v150, v144), ((v213 >= v152) & v211) != 0) || (v146 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v144), v154 = sub_100746A84(), v153(v150, v144), v213 >= v154))
    {
    }

    else
    {
      v146 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v212)(v150, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v144);
      v155 = sub_100746A84();

      v153(v150, v144);
      if (v213 != v155)
      {
        v156 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v145 = v165;
        v157 = v165;
LABEL_102:
        (v212)(v157, v156, v144);
        v130 = v191;
        goto LABEL_103;
      }
    }

    v145 = v165;
    v157 = v165;
    v156 = v146;
    goto LABEL_102;
  }

  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

void sub_100546AA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_100549890(&qword_100923470, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v29);
    v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_100743384(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    type metadata accessor for VideoView();
    sub_100549890(&qword_10093DD00, 255, type metadata accessor for VideoView);
    v14 = v13;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_100743384(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_100743384(v32, v25);
        sub_1007433C4();
        sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView);
        sub_100744274();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_1007433C4();
  sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_100744274();
}

uint64_t sub_100546ED4(uint64_t a1, uint64_t a2)
{
  v268 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v261 = &v208[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v5 - 8);
  v232 = &v208[-v6];
  v7 = sub_1007504F4();
  v250 = *(v7 - 8);
  __chkstk_darwin(v7);
  v240 = &v208[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v249 = &v208[-v10];
  v11 = sub_100746B04();
  v236 = *(v11 - 8);
  __chkstk_darwin(v11);
  v260 = &v208[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v13 - 8);
  v239 = &v208[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v264 = &v208[-v16];
  v17 = sub_100746A94();
  v251 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v230 = &v208[-v21];
  __chkstk_darwin(v22);
  v254 = &v208[-v23];
  __chkstk_darwin(v24);
  v233 = &v208[-v25];
  __chkstk_darwin(v26);
  v263 = &v208[-v27];
  v28 = sub_10000C518(&unk_100923180);
  v247 = *(v28 - 8);
  v248 = v28;
  __chkstk_darwin(v28);
  v246 = &v208[-v29];
  v30 = sub_10074A8C4();
  v244 = *(v30 - 8);
  v245 = v30;
  __chkstk_darwin(v30);
  v243 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_10074AE04();
  v252 = *(v32 - 1);
  v253 = v32;
  __chkstk_darwin(v32);
  v235 = &v208[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v265 = sub_10074CD14();
  v241 = *(v265 - 8);
  __chkstk_darwin(v265);
  v35 = &v208[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_1007479B4();
  v258 = *(v36 - 1);
  v259 = v36;
  __chkstk_darwin(v36);
  v38 = &v208[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v257 = &v208[-v40];
  v266 = sub_10074A8A4();
  v256 = *(v266 - 8);
  __chkstk_darwin(v266);
  v242 = &v208[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v267 = &v208[-v43];
  v44 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v44 - 8);
  v234 = &v208[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v262 = &v208[-v47];
  v48 = sub_100747C14();
  __chkstk_darwin(v48 - 8);
  v49 = sub_10074F704();
  v237 = *(v49 - 8);
  v238 = v49;
  __chkstk_darwin(v49);
  v255 = &v208[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_10074A7F4();
  v270 = *(v51 - 8);
  v271 = v51;
  __chkstk_darwin(v51);
  v273 = &v208[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult);
  v272 = a1;
  result = sub_1007468B4();
  if (!v311[0])
  {
    return result;
  }

  v231 = v19;
  v228 = v11;
  v269 = v311[0];
  sub_100742364();
  v315 = _swiftEmptyArrayStorage;

  if (sub_10074EF24())
  {
    if (qword_100920548 != -1)
    {
      swift_once();
    }

    v54 = sub_100747064();
    sub_10000D0FC(v54, qword_10097E3A8);
    sub_100746F34();
    sub_10074F374();
    sub_100753284();
    if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v229 = v7;
  v55 = sub_100745DF4();
  swift_getKeyPath();
  sub_100746914();

  v56 = v311[0];
  v57 = sub_100266258(v55, v311[0]);

  sub_10049FCD8(v57);
  v58 = v273;
  sub_100745E24();
  v59 = sub_100745DD4();
  if (v59 >> 62)
  {
    v131 = sub_100754664();
    v58 = v273;

    if (v131)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_100742354() & 1) == 0 || (sub_10074A7E4() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v272;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F5A4();
  sub_100544EDC(v61);
  v62 = sub_10074EF34();
  v213 = v63;
  v214 = v62;
  v64 = sub_10074EFB4();
  v215 = v65;
  v216 = v64;
  v66 = sub_10074EED4();

  if (v66)
  {
    v67 = sub_100748644();

    v69 = v252;
    v68 = v253;
    if (v67)
    {
      v70 = sub_10074F764();
      v217 = v71;
      v218 = v70;
    }

    else
    {
      v217 = 0;
      v218 = 0;
    }
  }

  else
  {
    v217 = 0;
    v218 = 0;
    v69 = v252;
    v68 = v253;
  }

  v226 = sub_100745DF4();
  v72 = v262;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (v69[7])(v72, 0, 1, v68);
  v225 = sub_100745E14();
  v73 = sub_100745E34();
  swift_getKeyPath();
  sub_100746914();

  v74 = v314;
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v75 = v266;
  v76 = sub_10000D0FC(v266, qword_10097E010);
  v77 = v256 + 16;
  v78 = *(v256 + 16);
  v78(v267, v76, v75);
  v79 = sub_100753804();
  v227 = v17;
  v220 = v78;
  v221 = v77;
  v209 = v73;
  if ((v79 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v80 = qword_10093FF58;
    goto LABEL_27;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v80 = qword_10093FF40;
LABEL_27:
    v81 = v259;
    v82 = sub_10000D0FC(v259, v80);
    v83 = v258;
    (*(v258 + 16))(v38, v82, v81);
    (*(v83 + 32))(v257, v38, v81);
    v84 = [v74 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v219 = sub_100750F34();
    swift_allocObject();
    v222 = sub_100750F14();
    v223 = objc_opt_self();
    v85 = [v223 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = sub_10074F3F4();
    v312 = v86;
    v87 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v313 = v87;
    v211 = v87;
    v88 = sub_10000D134(v311);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v90 = *(v86 - 8);
    v91 = *(v90 + 104);
    v212 = v90 + 104;
    v91(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    v210 = v91;
    sub_10074FC74();
    v224 = v74;
    sub_10000C620(v311);
    sub_10074CD04();
    sub_10074CCE4();
    v92 = *(v241 + 8);
    v92(v35, v265);
    v93 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v310[3] = v86;
    v310[4] = v87;
    v94 = sub_10000D134(v310);
    v91(v94, v89, v86);
    sub_10074FC74();
    sub_10000C620(v310);
    sub_10074CD04();
    sub_10074CCE4();
    v92(v35, v265);
    v95 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v309[3] = v86;
    v309[4] = v211;
    v96 = sub_10000D134(v309);
    v210(v96, v89, v86);
    sub_10074FC74();
    sub_10000C620(v309);
    sub_10074CD04();
    sub_10074CCE4();
    v92(v35, v265);
    v97 = v226;
    LODWORD(v265) = sub_10001BB7C(0, v226) & (v97 != 0);
    if (v265 == 1)
    {
      v98 = objc_allocWithZone(sub_100751034());
      v99 = v224;
      v100 = sub_100751024();
      v101 = v234;
      sub_100016B4C(v262, v234, &unk_1009393C0);
      v103 = v252;
      v102 = v253;
      v104 = v252[6];
      if (v104(v101, 1, v253) == 1)
      {
        v105 = v235;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v104(v101, 1, v102) != 1)
        {
          sub_10000C8CC(v101, &unk_1009393C0);
        }
      }

      else
      {
        v105 = v235;
        (v103[4])(v235, v101, v102);
      }

      v108 = v100;
      sub_100018CE4(v226, v105, v108);

      (v103[1])(v105, v102);
      v106 = v219;
      swift_allocObject();
      v107 = sub_100750F04();
    }

    else
    {
      v106 = v219;
      swift_allocObject();
      v107 = sub_100750F14();
    }

    v109 = v107;

    v110 = v225;
    if ((sub_10001BB7C(v225, 0) & (v110 != 0)) == 1)
    {
      sub_100077794(v110, v209 & 1);
      swift_allocObject();
      v111 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v111 = sub_100750F14();
    }

    v112 = v111;
    v220(v242, v267, v266);
    v308 = &protocol witness table for LayoutViewPlaceholder;
    v307 = v106;
    v306 = v222;
    v305 = 0;
    *&v303[40] = 0u;
    v304 = 0u;
    sub_10000C824(v311, v303);
    sub_10000C824(v310, &v302);
    v301 = 0;
    v299 = 0u;
    v300 = 0u;
    v298 = 0;
    v296 = 0u;
    v297 = 0u;

    v253 = v112;
    v113 = sub_100750F24();
    v295 = &protocol witness table for LayoutViewPlaceholder;
    v294 = v106;
    v293 = v113;
    v292 = 0;
    v290 = 0u;
    v291 = 0u;
    v289 = 0;
    v287 = 0u;
    v288 = 0u;
    v286 = 0;
    v284 = 0u;
    v285 = 0u;
    v283 = 0;
    v282 = 0u;
    *&v281[40] = 0u;
    sub_10000C824(v309, v281);
    v280 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v106;
    v278 = v109;
    v277 = &protocol witness table for LayoutViewPlaceholder;
    v276 = v106;
    v275 = v112;
    v114 = v243;
    sub_10074A8B4();
    sub_100751034();
    v115 = sub_10000C518(&unk_1009231A0);
    v116 = swift_allocObject();
    v265 = xmmword_1007A5CF0;
    *(v116 + 16) = xmmword_1007A5CF0;
    v117 = v224;
    *(v116 + 32) = v224;
    v118 = v117;
    v119 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v120 = v245;
    sub_100750404();

    (*(v244 + 8))(v114, v120);
    sub_10000C620(v309);
    sub_10000C620(v310);
    sub_10000C620(v311);
    (*(v258 + 8))(v257, v259);
    (*(v256 + 8))(v267, v266);
    v74 = v246;
    sub_10074DF44();
    v121 = swift_allocObject();
    *(v121 + 16) = v265;
    *(v121 + 32) = v118;
    v122 = v118;
    v38 = sub_100751044();
    sub_10001B5C0();
    v123 = v248;
    sub_100750544();

    (*(v247 + 8))(v74, v123);
    sub_10000C8CC(v262, &unk_1009393C0);
    v124 = sub_100745E04();
    v35 = sub_100745DE4();
    v125 = sub_100745DD4();
    if (v125 >> 62)
    {
      v38 = v125;
      v126 = sub_100754664();
      v125 = v38;
    }

    else
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v127 = v263;
    v128 = v231;
    if (v126)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v38 = v125;
        v123 = sub_100754574();
      }

      else
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v125;
        v123 = *(v125 + 32);
      }
    }

    else
    {

      v123 = 0;
    }

    v129 = sub_100745E54();
    if (v129 >> 62)
    {
      v38 = v129;
      v133 = sub_100754664();
      v129 = v38;
      v262 = v35;
      if (!v133)
      {
LABEL_57:

        v267 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v262 = v35;
      if (!v130)
      {
        goto LABEL_57;
      }
    }

    if ((v129 & 0xC000000000000001) != 0)
    {
      v38 = v129;
      v267 = sub_100754574();
    }

    else
    {
      if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v137 = sub_100754574();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v129;
      v267 = *(v129 + 32);
    }

LABEL_58:
    v115 = sub_100745E04();
    v74 = sub_100745DE4();
    v125 = sub_100745DD4();
    if (v125 >> 62)
    {
      v38 = v125;
      v134 = sub_100754664();
      v125 = v38;
      if (!v134)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v125 & 0xC000000000000001) == 0)
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v125;
        v38 = *(v125 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v125;
      v38 = sub_100754574();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v135 = sub_100745E54();
    if (v135 >> 62)
    {
      break;
    }

    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v266 = v123;
    if (!v136)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v135 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v137 = *(v135 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v138 = v135;
  v139 = sub_100754664();
  v135 = v138;
  v266 = v123;
  if (v139)
  {
    goto LABEL_68;
  }

LABEL_73:

  v137 = 0;
LABEL_74:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v127, enum case for LockupMediaLayout.DisplayType.none(_:), v227);
LABEL_82:
    v143 = v229;
    v141 = v250;
    goto LABEL_110;
  }

  if (v74 | v115)
  {
    v145 = v233;
    sub_100750504();

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v145, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v227);
    (*(v137 + 32))(v127, v145, v38);
    goto LABEL_82;
  }

  v140 = sub_100631A30(v38, v137, 0, 1);
  v127 = v140;
  v141 = v140 >> 62;
  if (v140 >> 62)
  {
    goto LABEL_175;
  }

  v142 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v143 = v229;
    *&v265 = v142;
    if (v38)
    {
      v144 = sub_100743844();
    }

    else
    {
      v144 = 0;
    }

    LODWORD(v258) = sub_100631D8C(v144);

    v248 = v124;
    if (v38)
    {
      v146 = sub_100743844();
    }

    else
    {
      v146 = 0;
    }

    v147 = v270;
    v148 = v271;
    v149 = v232;
    (*(v270 + 16))(v232, v273, v271);
    (*(v147 + 56))(v149, 0, 1, v148);
    v128 = sub_1006322B4(v146, v149);

    sub_10000C8CC(v149, &unk_100934D80);
    if (v141)
    {
      v151 = sub_100754664();
    }

    else
    {
      v151 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v141 = v250;
    v124 = v248;
    if (!v151)
    {

      goto LABEL_97;
    }

    if ((v127 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v152 = sub_10074F194();

    if ((v152 & 1) == 0)
    {
LABEL_97:
      v154 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v155 = v251;
      v156 = v227;
      v157 = v230;
      v259 = *(v251 + 104);
      v259(v230, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v227);
      v158 = v128;
      v159 = sub_100746A84();
      v257 = *(v155 + 8);
      (v257)(v157, v156);
      if (((v265 >= v159) & v158) != 0)
      {

        v153 = v233;
        v160 = v233;
        v161 = v154;
      }

      else
      {
        v162 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v259(v157, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v156);
        v163 = sub_100746A84();
        v164 = v257;
        (v257)(v157, v156);
        if (((v265 >= v163) & v258) == 0)
        {
          v165 = v157;
          v166 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v259(v157, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v156);
          v167 = sub_100746A84();
          v164(v165, v156);
          v168 = v265 < v167;
          v169 = v165;
          v127 = v263;
          if (v168)
          {
            LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v259)(v169);
            v170 = sub_100746A84();

            v164(v169, v156);
            if (v265 == v170)
            {
              v153 = v233;
              v171 = v233;
              v172 = v258;
            }

            else
            {
              v172 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v153 = v233;
              v171 = v233;
            }
          }

          else
          {

            v153 = v233;
            v171 = v233;
            v172 = v166;
          }

          v259(v171, v172, v156);
          v38 = v156;
          v137 = v251;
          goto LABEL_108;
        }

        v153 = v233;
        v160 = v233;
        v161 = v162;
      }

      v259(v160, v161, v156);
      v38 = v156;
      v137 = v251;
      v127 = v263;
LABEL_108:
      v143 = v229;
      v141 = v250;
      v124 = v248;
      goto LABEL_109;
    }

    v137 = v251;
    v153 = v233;
    v38 = v227;
    (*(v251 + 104))(v233, enum case for LockupMediaLayout.DisplayType.landscape(_:), v227);
    v127 = v263;
LABEL_109:
    (*(v137 + 32))(v127, v153, v38);
    v128 = v231;
LABEL_110:
    v173 = sub_10007DC04();
    (*(v141 + 56))(v264, 1, 1, v143);
    v252 = v173;
    v253 = [v173 traitCollection];
    v312 = &type metadata for CGFloat;
    v313 = &protocol witness table for CGFloat;
    v311[0] = 0x4021000000000000;
    sub_10000C824(v311, v310);
    v174 = *(v137 + 16);
    v272 = v137 + 16;
    *&v265 = v174;
    v174(v254, v127, v38);
    if (v262 | v124)
    {
      goto LABEL_129;
    }

    v175 = sub_100631A30(v266, v267, 0, 1);
    if (!(v175 >> 62))
    {
      if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v175 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v142 = sub_100754664();
          continue;
        }
      }

      sub_10074F2A4();
      sub_100750504();

      goto LABEL_130;
    }

    break;
  }

  v176 = v175;
  v177 = sub_100754664();
  v175 = v176;
  if (v177)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_100750504();
LABEL_130:
  sub_100016B4C(v264, v239, &unk_1009281D0);
  sub_100746AD4();
  sub_10000C620(v311);
  v178 = v240;
  sub_100746AE4();
  sub_1007504C4();
  v179 = *(v141 + 8);
  v141 += 8;
  v179(v178, v143);
  if (v262)
  {
    v128 = v137;

    sub_10074EC14();
    v180 = sub_10074F374();
    v181 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
    v141 = *(v181 + 2);
    v182 = *(v181 + 3);
    v183 = v141 + 1;
    if (v141 >= v182 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v124)
  {

    v185 = sub_10074F374();
    v181 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
    v187 = *(v181 + 2);
    v186 = *(v181 + 3);
    if (v187 >= v186 >> 1)
    {
      v181 = sub_100254D74((v186 > 1), v187 + 1, 1, v181);
    }

    (*(v236 + 8))(v260, v228);
    sub_10000C8CC(v264, &unk_1009281D0);
    *(v181 + 2) = v187 + 1;
    v188 = &v181[16 * v187];
    *(v188 + 4) = v185;
    v188[40] = 0;
    goto LABEL_180;
  }

  v189 = sub_100746A84();
  v190 = sub_100631A30(v266, v267, v189, 0);
  sub_100746B24();
  v150 = v190;
  if (!(v190 >> 62))
  {
    result = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v236 + 8))(v260, v228);
    sub_10000C8CC(v264, &unk_1009281D0);
    v181 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v204 = v150;
  result = sub_100754664();
  v150 = v204;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v248 = v124;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v191 = 0;
  v259 = (v150 & 0xC000000000000001);
  v192 = (v137 + 88);
  LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v250) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v254 = (v137 + 8);
  v181 = _swiftEmptyArrayStorage;
  v256 = result;
  v257 = v150;
  while (2)
  {
    if (v259)
    {
      v183 = sub_100754574();
    }

    else
    {
      v183 = *(v150 + 8 * v191 + 32);
    }

    v193 = v227;
    (v265)(v128, v127, v227);
    v194 = (*v192)(v128, v193);
    if (v194 == v258)
    {
      (*v254)(v128, v193);
      goto LABEL_147;
    }

    if (v194 != v250)
    {
      v195 = sub_10074F194();
      (*v254)(v128, v227);
      if (v267)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v266)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v195 = 0;
    if (!v267)
    {
      goto LABEL_148;
    }

LABEL_151:
    v180 = v267;
    v197 = sub_10074F794();
    if (!(v197 >> 62))
    {
      if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v266)
      {
LABEL_162:
        v196 = 0;
LABEL_163:
        sub_100743864();
        v201 = v261;
        sub_1002898DC(v196, v261);

        sub_100753BA4();
        v199 = sub_10074F374();
        sub_100024440(v201);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_100254D74(0, *(v181 + 2) + 1, 1, v181);
        }

        v141 = *(v181 + 2);
        v202 = *(v181 + 3);
        if (v141 >= v202 >> 1)
        {
          v181 = sub_100254D74((v202 > 1), v141 + 1, 1, v181);
        }

        ++v191;

        *(v181 + 2) = v141 + 1;
        v203 = &v181[16 * v141];
        *(v203 + 4) = v199;
        v203[40] = v195 & 1;
        v150 = v257;
        v128 = v231;
        if (v256 == v191)
        {

          (*(v236 + 8))(v260, v228);
          sub_10000C8CC(v264, &unk_1009281D0);
          v137 = v251;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v180 = v197;
  v200 = sub_100754664();
  v197 = v180;
  if (!v200)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v197 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_156;
  }

  v182 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v182)
  {

LABEL_156:

    sub_10074F3D4();
    sub_10074EC14();
    v198 = sub_10074F224();

    if (v198)
    {
      v199 = sub_10074F374();

      v127 = v263;
      goto LABEL_164;
    }

    v127 = v263;
    if (!v266)
    {
      goto LABEL_162;
    }

LABEL_149:
    v196 = sub_100743844();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v181 = sub_100254D74((v182 > 1), v183, 1, v181);
LABEL_132:

  (*(v236 + 8))(v260, v228);
  sub_10000C8CC(v264, &unk_1009281D0);
  *(v181 + 2) = v183;
  v184 = &v181[16 * v141];
  *(v184 + 4) = v180;
  v184[40] = 0;
  v137 = v128;
LABEL_180:
  v205 = *(v181 + 2);
  if (v205)
  {
    v311[0] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v206 = 32;
    do
    {

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v206 += 16;
      --v205;
    }

    while (v205);
    swift_unknownObjectRelease();

    (*(v137 + 8))(v263, v227);
    v207 = v311[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v137 + 8))(v127, v227);
    v207 = _swiftEmptyArrayStorage;
  }

  sub_10049FCD8(v207);
  (*(v237 + 8))(v255, v238);
  v58 = v273;
LABEL_53:
  v132._rawValue = v315;
  sub_100744224(v132);

  return (*(v270 + 8))(v58, v271);
}

void sub_100549624()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_100754644();
  __break(1u);
}

id sub_10054971C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100016C60(0, &qword_100922300);
    v6 = v1;
    v7 = sub_100753FC4();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_10062FDFC();

  return [v1 setNeedsLayout];
}

uint64_t sub_100549890(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_1005498DC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_100549B40()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void (*sub_100549BBC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100549C64;
}

void sub_100549C64(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_10054A76C(&qword_1009230E0, type metadata accessor for VideoView);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_100009D34();
        v10 = v6;
        v11 = sub_100753FC4();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10057A514(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_10093CB38 + 8) = &off_1008690D8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10054A76C(&qword_1009230E0, type metadata accessor for VideoView);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_100009D34();
        v15 = v6;
        v16 = sub_100753FC4();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v21 = *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v22 = v3;
    sub_10057A514(v21);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        *(v23 + qword_10093CB38 + 8) = &off_1008690D8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_10054A0BC(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_10093CB60) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_10054A278()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell()
{
  result = qword_10093DBE0;
  if (!qword_10093DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054A350()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_10054A428(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100549BBC(v2);
  return sub_1000181A8;
}

uint64_t sub_10054A498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10054A4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10054A558(uint64_t *a1))()
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10054A5F4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100009D34();
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_10054A76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10054A80C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10093DC18 = sub_100752E44();
  unk_10093DC20 = &protocol witness table for OSLogger;
  sub_10000D134(qword_10093DC00);
  return sub_100752E34();
}

uint64_t sub_10054A950(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&qword_100930CA0);
  v5 = sub_100752DE4();
  sub_100016C60(0, &qword_100939F50);
  sub_100752764();
  sub_100752D34();
  v6 = v11[0];
  sub_10054AAF0(v11[0]);
  sub_10054B970(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_10054B9F8(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100016C60(0, &qword_100926D00);
  swift_retain_n();

  v9 = sub_100753774();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_100752D64();

  sub_10000C620(v11);
  return v5;
}

id sub_10054AAF0(void *a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10093B7C0);
  v10 = sub_100752DE4();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_100752DB4();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100016C60(0, &qword_100926D00);
      v25 = sub_100753774();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_10054BADC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10087A820;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10054BB00(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      sub_1007543A4();
      v22 = v25;
      sub_100753784();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_100921810 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10093DC00, qword_10093DC18);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      sub_10054BA40();
      swift_allocError();
      sub_100752DA4();
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054B01C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a1;
  v34 = a3;
  v40 = a2;
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100742CF4();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007493D4();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A304();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100752614();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v20 - 8);
  v22 = &v31 - v21;
  v23 = sub_10074F4D4();
  v26 = __chkstk_darwin(v23);
  if (*v39 == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_100741264();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_100743FE4();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v42 = sub_10074D5B4();
    v41 = v34;

    sub_1007525F4();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v31 + 104))(v35, enum case for FlowAnimationBehavior.infer(_:), v32);
    (*(v33 + 104))(v37, enum case for FlowOrigin.inapp(_:), v36);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v29 = sub_100742C84();
    sub_10052AD94(v29, 1, v38);
    sub_100752D54();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_100752DB4();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_10054B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_10054BB48;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1001A67C4;
  v11 = &unk_10087A848;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_10054BB74;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100049748;
  v11 = &unk_10087A870;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_10054B78C()
{
  if (qword_100921810 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10093DC00, qword_10093DC18);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000D134(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_100752424();
  sub_1000277BC(v3);
  sub_100752D04();

  LOBYTE(v3[0]) = 0;
  return sub_100752DB4();
}

uint64_t sub_10054B9A8()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10054BA40()
{
  result = qword_10093DC30;
  if (!qword_10093DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DC30);
  }

  return result;
}

uint64_t sub_10054BA94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10054BAE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10054BB00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10054BB90()
{
  result = qword_10093DC38;
  if (!qword_10093DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DC38);
  }

  return result;
}

id sub_10054BBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter) = a1;
  sub_1007495B4();

  sub_100752754();
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_10062DFAC(v8, a2);

  sub_10054CC00(&unk_10093DCA0);
  v10 = v9;
  sub_100748DF4();

  return v10;
}

id sub_10054BD94()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_10062BAF4(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_10062BB08(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_10000D198();
    v28 = sub_100753E04();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1007539D4();
    v38 = sub_100753064();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    sub_100752A84();
    sub_10000C8CC(v49, &unk_100923520);
    sub_100753C74();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return sub_100744314();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10054C2E0(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_10054CC78;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1003ED3AC;
    v21[3] = &unk_10087A970;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_10054C58C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10054C740()
{
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_impressionsCalculator])
  {
    sub_100749574();
  }

  sub_10000C518(&qword_1009366A8);
  sub_100752754();
  if (v2)
  {
    swift_getObjectType();
    sub_1007529A4();
    swift_unknownObjectRelease();
  }

  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_10054C804()
{
}

id sub_10054C874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_10054C948()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_10054C990()
{
  sub_10000C518(&qword_1009366A8);
  sub_100752754();
  return v1;
}

uint64_t sub_10054C9EC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25SearchHintsViewController_presenter);
  a1[3] = sub_100748E04();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;
}

uint64_t sub_10054CA48(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_10054CC00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10054CC40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10054CC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10054CDDC(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = sub_1007537D4();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = sub_1007537D4();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_10054D74C;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1000CF7B0;
      v44 = &unk_10087AA60;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_100124C08;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100144DD8;
      v44 = &unk_10087AAB0;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}