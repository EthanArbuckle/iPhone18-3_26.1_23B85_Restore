uint64_t sub_25A6C8()
{

  if (qword_3BB760 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2ED0);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to apply update to view model with error: %@", v8, 0xCu);
    sub_69198(v9, &qword_3BFEE0);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25A8E8()
{

  if (qword_3BB760 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2ED0);
  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to apply update to view model with error: %@", v8, 0xCu);
    sub_69198(v9, &qword_3BFEE0);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25AB08(void *a1, double a2, double a3)
{
  v6 = sub_2C57E8();
  swift_unknownObjectRetain();
  v7 = a1;
  BooksUIComponentHostingController.update(rawComponentModel:size:feedControllerHost:)(v6, a2, a3);
  swift_unknownObjectRelease();
}

id BooksUIComponentHostingControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BooksUIComponentHostingControllerFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id BooksUIComponentHostingControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BooksUIComponentHostingControllerFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_25AC84(uint64_t a1, char a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_2C4D68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ListItemComponentModel();

  sub_2C4D78();
  v29 = &type metadata for ListItemComponent;
  v30 = sub_230EDC();
  v14 = swift_allocObject();
  *&v28 = v14;
  *(v14 + 16) = a1;
  a2 &= 1u;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  a4 &= 1u;
  *(v14 + 40) = a4;
  sub_68D1C(&v28, v26);
  sub_146B38(a1, a2);
  sub_C9C28(a3, a4);
  LOBYTE(a3) = swift_isUniquelyReferenced_nonNull_native();
  v25 = a5;
  v15 = sub_8C564(v26, v27);
  __chkstk_darwin(v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = *(v17 + 2);
  v21 = v17[24];
  v24 = v17[8];
  v23[8] = v21;
  sub_25E9D4(v19, v24, v20, v21, v13, a3, &v25, &type metadata for ListItemComponent, sub_230EDC, &unk_394228, sub_230EDC);
  (*(v11 + 8))(v13, v10);
  sub_68CD0(v26);
  return v25;
}

uint64_t sub_25AF0C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_2C4D68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ContentUnavailableComponentModel();

  sub_2C4D78();
  v30 = &type metadata for ContentUnavailableComponent;
  v31 = sub_210784();
  v14 = swift_allocObject();
  *&v29 = v14;
  *(v14 + 16) = a1;
  a2 &= 1u;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4 & 1;
  sub_68D1C(&v29, v27);
  sub_146B38(a1, a2);

  LOBYTE(a3) = swift_isUniquelyReferenced_nonNull_native();
  v26 = a5;
  v15 = sub_8C564(v27, v28);
  v16 = __chkstk_darwin(v15);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v21 = *(v18 + 2);
  v22 = v18[24];
  v25 = v18[8];
  v24[8] = v22;
  sub_25E9D4(v20, v25, v21, v22, v13, a3, &v26, &type metadata for ContentUnavailableComponent, sub_210784, &unk_394200, sub_210784);
  (*(v11 + 8))(v13, v10);
  sub_68CD0(v27);
  return v26;
}

uint64_t sub_25B190(void *a1, char a2, uint64_t a3)
{
  v6 = sub_2C4D68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendationItemComponentModel();

  sub_2C4D78();
  v22 = &type metadata for RecommendationItemComponent;
  v23 = sub_2646B0();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_68D1C(&v21, v19);
  sub_C9C28(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = sub_8C564(v19, v20);
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_25ECB4(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for RecommendationItemComponent, sub_2646B0, sub_2646B0);
  (*(v7 + 8))(v9, v6);
  sub_68CD0(v19);
  return v18;
}

uint64_t sub_25B3B8(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DividerComponentModel();

  sub_2C4D78();
  v13 = &type metadata for DividerComponent;
  v14 = sub_1E0818();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for DividerComponent, sub_1E0818, sub_1E0818);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25B524(void *a1, char a2, uint64_t a3)
{
  v6 = sub_2C4D68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwooshItemComponentModel();

  sub_2C4D78();
  v22 = &type metadata for SwooshItemComponent;
  v23 = sub_13BF60();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_68D1C(&v21, v19);
  sub_C9C28(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = sub_8C564(v19, v20);
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_25ECB4(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for SwooshItemComponent, sub_13BF60, sub_13BF60);
  (*(v7 + 8))(v9, v6);
  sub_68CD0(v19);
  return v18;
}

uint64_t sub_25B74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextComponentModel(0);

  sub_2C4D78();
  v20 = type metadata accessor for TextComponent();
  v21 = sub_2644C4(&qword_3C69A0, type metadata accessor for TextComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for TextComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_25EF4C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25B978(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&unk_3C85C0);

  sub_2C4D78();
  v8 = sub_6620C(&qword_3C1C58);
  v21 = v8;
  v22 = sub_72B74(&unk_3C85D0, &qword_3C1C58);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_25F218(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25BBD4(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SingleBookWidgetComponentModel();

  sub_2C4D78();
  v13 = &type metadata for SingleBookWidgetComponent;
  v14 = sub_96ADC();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SingleBookWidgetComponent, sub_96ADC, sub_96ADC);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25BD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SheetHeaderComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for SheetHeaderComponent();
  v21 = sub_2644C4(&unk_3C85E0, type metadata accessor for SheetHeaderComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for SheetHeaderComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_25F6E8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25BF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeriesRoomHeaderComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for SeriesRoomHeaderComponent(0);
  v21 = sub_2644C4(&qword_3C5E90, type metadata accessor for SeriesRoomHeaderComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for SeriesRoomHeaderComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_25F9B4(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25C198(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C4D68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeriesEntityCardComponentModel();

  sub_2C4D78();
  v22 = &type metadata for SeriesEntityCardComponent;
  v23 = sub_CF258();
  *&v21 = a1;
  *(&v21 + 1) = a2;
  sub_68D1C(&v21, v19);
  v10 = a1;
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = sub_8C564(v19, v20);
  v12 = __chkstk_darwin(v11);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  sub_25FC80(*v14, v14[1], v9, a1, &v18);
  (*(v7 + 8))(v9, v6);
  sub_68CD0(v19);
  return v18;
}

uint64_t sub_25C380(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReviewBrickComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for ReviewBrickComponent();
  v21 = sub_2644C4(&qword_3C8540, type metadata accessor for ReviewBrickComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for ReviewBrickComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_25FEFC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25C5AC(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RatingSummaryComponentModel();

  sub_2C4D78();
  v13 = &type metadata for RatingSummaryComponent;
  v14 = sub_711AC();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for RatingSummaryComponent, sub_711AC, sub_711AC);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25C718(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1A08();

  sub_2C4D78();
  v8 = sub_2C13C8();
  v21 = v8;
  v22 = sub_2644C4(&unk_3C8600, &type metadata accessor for LabelItemComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_2601C8(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25C958(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoItemComponentModel(0);

  sub_2C4D78();
  v20 = type metadata accessor for InfoItemComponent();
  v21 = sub_2644C4(&qword_3C80B0, type metadata accessor for InfoItemComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for InfoItemComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_2604EC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25CB84(void *a1, char a2, uint64_t a3)
{
  v6 = sub_2C4D68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeroComponentModel();

  sub_2C4D78();
  v22 = &type metadata for HeroComponent;
  v23 = sub_C7DC8();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  sub_68D1C(&v21, v19);
  sub_C9C28(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = sub_8C564(v19, v20);
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_25ECB4(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for HeroComponent, sub_C7DC8, sub_C7DC8);
  (*(v7 + 8))(v9, v6);
  sub_68CD0(v19);
  return v18;
}

uint64_t sub_25CDAC(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GridItemComponentModel();

  sub_2C4D78();
  v13 = &type metadata for GridItemComponent;
  v14 = sub_264730();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GridItemComponent, sub_264730, sub_264730);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25CF18(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FanComponentModel();

  sub_2C4D78();
  v13 = &type metadata for FanComponent;
  v14 = sub_1E204C();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FanComponent, sub_1E204C, sub_1E204C);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25D084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1418();

  sub_2C4D78();
  v8 = sub_2C0DD8();
  v21 = v8;
  v22 = sub_2644C4(&qword_3C8568, &type metadata accessor for EmptyComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_2607B8(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25D2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescriptionHeaderComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for DescriptionHeaderComponent(0);
  v21 = sub_2644C4(&qword_3C0ED8, type metadata accessor for DescriptionHeaderComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for DescriptionHeaderComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_260ADC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25D4F0(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_2C4D68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ChartSwooshItemComponentModel();

  sub_2C4D78();
  v30 = &type metadata for ChartSwooshItemComponent;
  v31 = sub_14625C();
  v14 = swift_allocObject();
  *&v29 = v14;
  *(v14 + 16) = a1;
  a2 &= 1u;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  a4 &= 1u;
  *(v14 + 40) = a4;
  sub_68D1C(&v29, v27);
  sub_C9C28(a1, a2);
  sub_146B38(a3, a4);
  LOBYTE(a3) = swift_isUniquelyReferenced_nonNull_native();
  v26 = a5;
  v15 = sub_8C564(v27, v28);
  v16 = __chkstk_darwin(v15);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v21 = *(v18 + 2);
  v22 = v18[24];
  v25 = v18[8];
  v24[8] = v22;
  sub_25E9D4(v20, v25, v21, v22, v13, a3, &v26, &type metadata for ChartSwooshItemComponent, sub_14625C, &unk_394250, sub_14625C);
  (*(v11 + 8))(v13, v10);
  sub_68CD0(v27);
  return v26;
}

uint64_t sub_25D778(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for ChartComponent(0);
  v21 = sub_2644C4(&qword_3BDE08, type metadata accessor for ChartComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for ChartComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_260DA8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25D9A4(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BrickComponentModel();

  sub_2C4D78();
  v13 = &type metadata for BrickComponent;
  v14 = sub_2288C8();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for BrickComponent, sub_2288C8, sub_2288C8);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25DB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1F98();

  sub_2C4D78();
  v8 = sub_2C1D28();
  v21 = v8;
  v22 = sub_2644C4(&qword_3C8588, &type metadata accessor for ShelfHeaderTitleComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_261074(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25DD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeriesRoomListHeaderComponentModel();

  sub_2C4D78();
  v20 = type metadata accessor for SeriesRoomListHeaderComponent();
  v21 = sub_2644C4(&unk_3C8590, type metadata accessor for SeriesRoomListHeaderComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for SeriesRoomListHeaderComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_261398(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25DF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReviewsHeaderComponentModel(0);

  sub_2C4D78();
  v20 = type metadata accessor for ReviewsHeaderComponent(0);
  v21 = sub_2644C4(&qword_3C8648, type metadata accessor for ReviewsHeaderComponent);
  v8 = sub_720C8(&v19);
  sub_264810(a1, v8, type metadata accessor for ReviewsHeaderComponent);
  sub_68D1C(&v19, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = sub_8C564(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_261664(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v17);
  return v16;
}

uint64_t sub_25E1A8(uint64_t a1)
{
  v2 = sub_2C4D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LargeNavigationBarComponentModel();

  sub_2C4D78();
  v13 = &type metadata for LargeNavigationBarComponent;
  v14 = sub_1AF1A8();
  sub_68D1C(&v12, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  sub_8C564(v10, v11);
  sub_25F500(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LargeNavigationBarComponent, sub_1AF1A8, sub_1AF1A8);
  (*(v3 + 8))(v5, v2);
  sub_68CD0(v10);
  return v9;
}

uint64_t sub_25E314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C2018();

  sub_2C4D78();
  v8 = sub_2C1E88();
  v21 = v8;
  v22 = sub_2644C4(&unk_3C85A0, &type metadata accessor for DefaultShelfHeaderComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_261930(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25E554(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1FD8();

  sub_2C4D78();
  v8 = sub_2C1E48();
  v21 = v8;
  v22 = sub_2644C4(&qword_3C8560, &type metadata accessor for ShelfFooterSeeAllComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_261C54(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25E794(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C2008();

  sub_2C4D78();
  v8 = sub_2C1E68();
  v21 = v8;
  v22 = sub_2644C4(&qword_3C8570, &type metadata accessor for DefaultShelfFooterComponent);
  v9 = sub_720C8(&v20);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_68D1C(&v20, v18);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = sub_8C564(v18, v19);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  sub_261F78(v13, v7, a1, &v17);
  (*(v5 + 8))(v7, v4);
  sub_68CD0(v18);
  return v17;
}

uint64_t sub_25E9D4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t (*a11)(void))
{
  v19 = sub_2C4D68();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = __chkstk_darwin(v19);
  v47 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a8;
  v52 = a8;
  v53 = a9(v20);
  v22 = swift_allocObject();
  *&v51 = v22;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2 & 1;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4 & 1;
  v23 = *a7;
  v25 = sub_26229C(a5);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = v24;
  v30 = v23[3];
  if (v30 >= v28 && (a6 & 1) != 0)
  {
LABEL_7:
    v31 = *a7;
    if (v29)
    {
LABEL_8:
      v32 = v31[7] + 40 * v25;
      sub_68CD0(v32);
      return sub_68D1C(&v51, v32);
    }

    goto LABEL_11;
  }

  if (v30 >= v28 && (a6 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v28, a6 & 1);
  v34 = sub_26229C(a5);
  if ((v29 & 1) != (v35 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v25 = v34;
  v31 = *a7;
  if (v29)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v47;
  (*(v45 + 16))(v47, a5, v46);
  v37 = sub_8C564(&v51, v52);
  __chkstk_darwin(v37);
  v39 = &v44 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39);
  v41 = *v39;
  v42 = *(v39 + 2);
  v43 = v39[24];
  v50 = v39[8];
  v49 = v43;
  sub_262D84(v25, v36, v41, v50, v42, v43, v31, v48, a11);
  return sub_68CD0(&v51);
}

uint64_t sub_25ECB4(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t (*a7)(__n128), uint64_t (*a8)(void))
{
  v38 = a8;
  v15 = sub_2C4D68();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a6;
  v41 = a7(v17);
  *&v39 = a1;
  BYTE8(v39) = a2 & 1;
  v20 = *a5;
  v22 = sub_26229C(a3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = v20[3];
  if (v27 >= v25 && (a4 & 1) != 0)
  {
LABEL_7:
    v28 = *a5;
    if (v26)
    {
LABEL_8:
      v29 = v28[7] + 40 * v22;
      sub_68CD0(v29);
      return sub_68D1C(&v39, v29);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a4 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v25, a4 & 1);
  v31 = sub_26229C(a3);
  if ((v26 & 1) != (v32 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v22 = v31;
  v28 = *a5;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v16 + 16))(v19, a3, v15);
  v33 = sub_8C564(&v39, v40);
  v34 = __chkstk_darwin(v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  sub_262B68(v22, v19, *v36, v36[8], v28, a6, v38);
  return sub_68CD0(&v39);
}

uint64_t sub_25EF4C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TextComponent();
  v34 = sub_2644C4(&qword_3C69A0, type metadata accessor for TextComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for TextComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262334(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_25F218(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C1C58);
  v34 = v12;
  v35 = sub_72B74(&unk_3C85D0, &qword_3C1C58);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_262464(v16, v11, v30, v22);
  return sub_68CD0(&v33);
}

uint64_t sub_25F500(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t (*a6)(void))
{
  v29 = a6;
  v11 = sub_2C4D68();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a5(v13);
  v16 = *a3;
  v18 = sub_26229C(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a2 & 1) != 0)
  {
LABEL_7:
    v24 = *a3;
    if (v22)
    {
LABEL_8:
      v25 = v24[7] + 40 * v18;
      sub_68CD0(v25);
      return sub_68D1C(&v30, v25);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a2 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v21, a2 & 1);
  v27 = sub_26229C(a1);
  if ((v22 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v18 = v27;
  v24 = *a3;
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v12 + 16))(v15, a1, v11);
  sub_8C564(&v30, v31);
  sub_263234(v18, v15, v24, a4, v29);
  return sub_68CD0(&v30);
}

uint64_t sub_25F6E8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SheetHeaderComponent();
  v34 = sub_2644C4(&unk_3C85E0, type metadata accessor for SheetHeaderComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for SheetHeaderComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_2625C0(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_25F9B4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SeriesRoomHeaderComponent(0);
  v34 = sub_2644C4(&qword_3C5E90, type metadata accessor for SeriesRoomHeaderComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for SeriesRoomHeaderComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_2626F0(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_25FC80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_2C4D68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &type metadata for SeriesEntityCardComponent;
  v35 = sub_CF258();
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v14 = *a5;
  v16 = sub_26229C(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a4 & 1);
  v25 = sub_26229C(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  sub_262820(v16, v13, *v30, v30[1], v22);
  return sub_68CD0(&v33);
}

uint64_t sub_25FEFC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ReviewBrickComponent();
  v34 = sub_2644C4(&qword_3C8540, type metadata accessor for ReviewBrickComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for ReviewBrickComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262908(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_2601C8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C13C8();
  v34 = v12;
  v35 = sub_2644C4(&unk_3C8600, &type metadata accessor for LabelItemComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for LabelItemComponent, &unk_3C8600, &type metadata accessor for LabelItemComponent);
  return sub_68CD0(&v33);
}

uint64_t sub_2604EC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for InfoItemComponent();
  v34 = sub_2644C4(&qword_3C80B0, type metadata accessor for InfoItemComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for InfoItemComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262A38(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_2607B8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C0DD8();
  v34 = v12;
  v35 = sub_2644C4(&qword_3C8568, &type metadata accessor for EmptyComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for EmptyComponent, &qword_3C8568, &type metadata accessor for EmptyComponent);
  return sub_68CD0(&v33);
}

uint64_t sub_260ADC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DescriptionHeaderComponent(0);
  v34 = sub_2644C4(&qword_3C0ED8, type metadata accessor for DescriptionHeaderComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for DescriptionHeaderComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262C54(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_260DA8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ChartComponent(0);
  v34 = sub_2644C4(&qword_3BDE08, type metadata accessor for ChartComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for ChartComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262EA4(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_261074(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1D28();
  v34 = v12;
  v35 = sub_2644C4(&qword_3C8588, &type metadata accessor for ShelfHeaderTitleComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for ShelfHeaderTitleComponent, &qword_3C8588, &type metadata accessor for ShelfHeaderTitleComponent);
  return sub_68CD0(&v33);
}

uint64_t sub_261398(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SeriesRoomListHeaderComponent();
  v34 = sub_2644C4(&unk_3C8590, type metadata accessor for SeriesRoomListHeaderComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for SeriesRoomListHeaderComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_262FD4(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_261664(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ReviewsHeaderComponent(0);
  v34 = sub_2644C4(&qword_3C8648, type metadata accessor for ReviewsHeaderComponent);
  v12 = sub_720C8(&v32);
  sub_264878(a1, v12, type metadata accessor for ReviewsHeaderComponent);
  v13 = *a4;
  v15 = sub_26229C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_68CD0(v22);
      return sub_68D1C(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v18, a3 & 1);
  v24 = sub_26229C(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = sub_8C564(&v32, v33);
  v27 = __chkstk_darwin(v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_263104(v15, v11, v29, v21);
  return sub_68CD0(&v32);
}

uint64_t sub_261930(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1E88();
  v34 = v12;
  v35 = sub_2644C4(&unk_3C85A0, &type metadata accessor for DefaultShelfHeaderComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for DefaultShelfHeaderComponent, &unk_3C85A0, &type metadata accessor for DefaultShelfHeaderComponent);
  return sub_68CD0(&v33);
}

uint64_t sub_261C54(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1E48();
  v34 = v12;
  v35 = sub_2644C4(&qword_3C8560, &type metadata accessor for ShelfFooterSeeAllComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for ShelfFooterSeeAllComponent, &qword_3C8560, &type metadata accessor for ShelfFooterSeeAllComponent);
  return sub_68CD0(&v33);
}

uint64_t sub_261F78(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_2C4D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1E68();
  v34 = v12;
  v35 = sub_2644C4(&qword_3C8570, &type metadata accessor for DefaultShelfFooterComponent);
  v13 = sub_720C8(&v33);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_26229C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_68CD0(v23);
      return sub_68D1C(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_263604();
    goto LABEL_7;
  }

  sub_26388C(v19, a3 & 1);
  v25 = sub_26229C(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_2C6678();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_8C564(&v33, v34);
  v28 = __chkstk_darwin(v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  sub_263304(v16, v11, v30, v22, &type metadata accessor for DefaultShelfFooterComponent, &qword_3C8570, &type metadata accessor for DefaultShelfFooterComponent);
  return sub_68CD0(&v33);
}

unint64_t sub_26229C(uint64_t a1)
{
  sub_2C4D68();
  sub_2644C4(&qword_3C8550, &type metadata accessor for OpaqueMetatype);
  v2 = sub_2C5828();

  return sub_263444(a1, v2);
}

uint64_t sub_262334(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for TextComponent();
  v17 = sub_2644C4(&qword_3C69A0, type metadata accessor for TextComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for TextComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262464(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_6620C(&qword_3C1C58);
  v17 = v8;
  v18 = sub_72B74(&unk_3C85D0, &qword_3C1C58);
  v9 = sub_720C8(&v16);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2C4D68();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_68D1C(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2625C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for SheetHeaderComponent();
  v17 = sub_2644C4(&unk_3C85E0, type metadata accessor for SheetHeaderComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for SheetHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_2626F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for SeriesRoomHeaderComponent(0);
  v17 = sub_2644C4(&qword_3C5E90, type metadata accessor for SeriesRoomHeaderComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for SeriesRoomHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262820(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = &type metadata for SeriesEntityCardComponent;
  v18 = sub_CF258();
  *&v16 = a3;
  *(&v16 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2C4D68();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_68D1C(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_262908(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ReviewBrickComponent();
  v17 = sub_2644C4(&qword_3C8540, type metadata accessor for ReviewBrickComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for ReviewBrickComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262A38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for InfoItemComponent();
  v17 = sub_2644C4(&qword_3C80B0, type metadata accessor for InfoItemComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for InfoItemComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262B68(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v19 = a6;
  v20 = a7();
  *&v18 = a3;
  BYTE8(v18) = a4 & 1;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = sub_2C4D68();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_68D1C(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_262C54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for DescriptionHeaderComponent(0);
  v17 = sub_2644C4(&qword_3C0ED8, type metadata accessor for DescriptionHeaderComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for DescriptionHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262D84(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v24 = a8;
  v25 = a9();
  v16 = swift_allocObject();
  *&v23 = v16;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4 & 1;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6 & 1;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v17 = a7[6];
  v18 = sub_2C4D68();
  (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a1, a2, v18);
  result = sub_68D1C(&v23, a7[7] + 40 * a1);
  v20 = a7[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v22;
  }

  return result;
}

uint64_t sub_262EA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ChartComponent(0);
  v17 = sub_2644C4(&qword_3BDE08, type metadata accessor for ChartComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for ChartComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_262FD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for SeriesRoomListHeaderComponent();
  v17 = sub_2644C4(&unk_3C8590, type metadata accessor for SeriesRoomListHeaderComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for SeriesRoomListHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_263104(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ReviewsHeaderComponent(0);
  v17 = sub_2644C4(&qword_3C8648, type metadata accessor for ReviewsHeaderComponent);
  v8 = sub_720C8(&v15);
  sub_264878(a3, v8, type metadata accessor for ReviewsHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_2C4D68();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_68D1C(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_263234(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v15 = a4;
  v16 = a5();
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_2C4D68();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_68D1C(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_263304(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v13 = a5(0);
  v22 = v13;
  v23 = sub_2644C4(a6, a7);
  v14 = sub_720C8(&v21);
  (*(*(v13 - 8) + 32))(v14, a3, v13);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = sub_2C4D68();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_68D1C(&v21, a4[7] + 40 * a1);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

unint64_t sub_263444(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2C4D68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2644C4(&qword_3C8558, &type metadata accessor for OpaqueMetatype);
      v15 = sub_2C5878();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_263604()
{
  v1 = v0;
  v29 = sub_2C4D68();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C8548);
  v3 = *v0;
  v4 = sub_2C63A8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_691F8(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_68D1C(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26388C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2C4D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_6620C(&qword_3C8548);
  v38 = a2;
  result = sub_2C63B8();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_68D1C((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_691F8(*(v9 + 56) + 40 * v23, v43);
      }

      sub_2644C4(&qword_3C8550, &type metadata accessor for OpaqueMetatype);
      result = sub_2C5828();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_68D1C(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_263C70@<X0>(uint64_t a1@<X8>)
{
  sub_7212C();

  result = sub_2C3A48();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_263CDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_263D14()
{
  result = qword_3C8338;
  if (!qword_3C8338)
  {
    sub_718D4(&qword_3C8318);
    sub_718D4(&qword_3C8310);
    sub_718D4(&qword_3C8308);
    sub_718D4(&qword_3C8300);
    sub_72B74(&unk_3C8340, &qword_3C8300);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8338);
  }

  return result;
}

uint64_t sub_263ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C8318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_263F40(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C8318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_263FA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_263FE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_264030(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_7100C;

  return sub_259934(v9, v10, a1, v4, v5, v6, v7, v8);
}

void _s11BookStoreUI40BooksUIComponentHostingControllerFactoryC6createAA09BSUIBooksefG0_So06UIViewG0CXcyFZ_0()
{
  v0 = objc_allocWithZone(type metadata accessor for BooksUIComponentHostingController(0));
  type metadata accessor for HostedComponentViewModel(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 1;
  sub_2BE728();
  *&v0[qword_3C8488] = v1;

  v2 = sub_2C3398();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [v2 view];
    if (v6)
    {
      [v6 setUserInteractionEnabled:0];

      v7 = v2;
      sub_2C3388();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2642B8()
{
  result = sub_2BE738();
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

unint64_t sub_26440C()
{
  result = qword_3C8508;
  if (!qword_3C8508)
  {
    sub_718D4(&qword_3C8510);
    sub_263D14();
    sub_72B74(&qword_3BDE58, &qword_3C82F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8508);
  }

  return result;
}

uint64_t sub_2644C4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_264540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[4] = result;
  v1[5].n128_u8[0] = v2;
  return result;
}

uint64_t sub_264558(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C8330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2645E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C29B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_264610(uint64_t a1)
{
  v2 = type metadata accessor for ReviewBrickComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26466C()
{
  sub_71AF4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_2646B0()
{
  result = qword_3C8578;
  if (!qword_3C8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8578);
  }

  return result;
}

unint64_t sub_264730()
{
  result = qword_3C8618;
  if (!qword_3C8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8618);
  }

  return result;
}

uint64_t sub_2647B0(void (*a1)(void, void), void (*a2)(void, void))
{
  a1(*(v2 + 16), *(v2 + 24));
  a2(*(v2 + 32), *(v2 + 40));

  return _swift_deallocObject(v2, 41, 7);
}

uint64_t sub_264810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BDF58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3C07F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_264A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BDF58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3C07F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SheetHeaderComponentModel()
{
  result = qword_3C86A8;
  if (!qword_3C86A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264C1C()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_264D40(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_264D40(319, &unk_3C86B8, &type metadata accessor for MAsset, &type metadata accessor for MResourceDecoder);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_264D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_264DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SheetHeaderComponentModel();
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C0D88();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C07F0);
  v11 = sub_2C1078();
  sub_2BF768();

  if (v30)
  {
    sub_693D0(&v29, v31);
    sub_72084(v31, v31[3]);
    sub_2BF9F8();
    sub_2C0D78();
    sub_2C0DA8();
    return sub_68CD0(v31);
  }

  else
  {
    v27 = v8;
    sub_69198(&v29, &unk_3C2550);
    if (qword_3BB880 != -1)
    {
      swift_once();
    }

    v28 = a1;
    v13 = sub_2C00B8();
    sub_57AD8(v13, qword_3C3218);
    v26[1] = v2;
    sub_265A08(v2, v6);
    v14 = sub_2C0098();
    v15 = sub_2C5DC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v7;
      v18 = v17;
      *v16 = 138543362;
      v19 = sub_2C1078();
      sub_265A6C(v6);
      *(v16 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_0, v14, v15, "Failed to convert store asset to assetInfo: %{public}@", v16, 0xCu);
      sub_69198(v18, &qword_3BFEE0);
      v7 = v26[0];
    }

    else
    {

      sub_265A6C(v6);
    }

    v20 = sub_2C1078();
    sub_2BF268();
    v21 = swift_dynamicCastClass();

    v22 = v27;
    if (v21)
    {
      *v10 = 0x4054000000000000;
      v23 = &enum case for CoverViewModel.CoverStyle.placeholderAudiobook(_:);
    }

    else
    {
      v24 = sub_2C1078();
      v25 = [v24 pagesAreRTL];

      *v10 = 0x4054000000000000;
      v10[8] = v25;
      v23 = &enum case for CoverViewModel.CoverStyle.placeholderBook(_:);
    }

    (*(v22 + 104))(v10, *v23, v7);
    return sub_2C0DA8();
  }
}

uint64_t sub_26515C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_6620C(&qword_3C07F0);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_6620C(&qword_3C8700);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for SheetHeaderComponentModel();
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v43 = v15 + 40;
  sub_A9708(&v47, (v15 + 40), &unk_3BDC90);
  v46 = v13;
  v16 = *(v13 + 24);
  v17 = sub_2C5018();
  v18 = *(*(v17 - 8) + 56);
  v45 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v44 = a1;
  sub_72084(a1, v19);
  sub_265AC8();
  v20 = v42;
  sub_2C67A8();
  if (v20)
  {
    v22 = v43;
    sub_68CD0(v44);
    v23 = v45;
    sub_69198(v22, &qword_3BE370);
    return sub_69198(&v15[v23], &qword_3BDF58);
  }

  else
  {
    v42 = v8;
    v36 = v5;
    sub_6620C(&qword_3BE378);
    v50 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    v21 = v38;
    sub_2C64A8();
    v24 = v48;
    *v15 = v47;
    *(v15 + 1) = v24;
    *(v15 + 4) = v49;
    sub_6620C(&qword_3BE370);
    v50 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    sub_2C64A8();
    sub_A9708(&v47, v43, &qword_3BE370);
    LOBYTE(v47) = 2;
    sub_265B1C(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    sub_2C6458();
    v25 = v46;
    sub_A9708(v42, &v15[v45], &qword_3BDF58);
    LOBYTE(v47) = 3;
    sub_72B74(&qword_3C0810, &qword_3C07F0);
    v26 = v41;
    sub_2C64A8();
    (*(v40 + 32))(&v15[v25[7]], v36, v26);
    LOBYTE(v47) = 4;
    v27 = sub_2C6468();
    v28 = &v15[v25[8]];
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v47) = 5;
    v30 = sub_2C6468();
    v32 = v31;
    (*(v39 + 8))(v12, v21);
    v33 = &v15[v25[9]];
    *v33 = v30;
    v33[1] = v32;
    sub_265A08(v15, v37);
    sub_68CD0(v44);
    return sub_265A6C(v15);
  }
}

uint64_t sub_265850()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7365527465737361;
  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0x656C746974627573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_265908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265930(uint64_t a1)
{
  v2 = sub_265AC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_26596C(uint64_t a1)
{
  v2 = sub_265AC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_265A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SheetHeaderComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A6C(uint64_t a1)
{
  v2 = type metadata accessor for SheetHeaderComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265AC8()
{
  result = qword_3C8708;
  if (!qword_3C8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8708);
  }

  return result;
}

uint64_t sub_265B1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_265B78()
{
  result = qword_3C8710;
  if (!qword_3C8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8710);
  }

  return result;
}

unint64_t sub_265BD0()
{
  result = qword_3C8718;
  if (!qword_3C8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8718);
  }

  return result;
}

unint64_t sub_265C28()
{
  result = qword_3C8720;
  if (!qword_3C8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8720);
  }

  return result;
}

uint64_t sub_265C7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365527465737361 && a2 == 0xED0000656372756FLL || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_265ED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v71 = a2;
  v79 = a4;
  v76 = sub_6620C(&qword_3C8730);
  __chkstk_darwin(v76);
  v77 = &v60 - v5;
  v78 = sub_2BE9B8();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3C3508);
  __chkstk_darwin(v7 - 8);
  v73 = &v60 - v8;
  v62 = sub_2C30F8();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2BE7E8();
  __chkstk_darwin(v10 - 8);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v60 - v13;
  v14 = sub_6620C(&qword_3C8738);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = sub_6620C(&qword_3C8740);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_6620C(&qword_3C8748);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v64 = &v60 - v24;
  v65 = sub_6620C(&qword_3C8750);
  __chkstk_darwin(v65);
  v66 = &v60 - v25;
  v70 = sub_6620C(&qword_3C8758);
  __chkstk_darwin(v70);
  v72 = &v60 - v26;
  sub_2669B8(a1, v17);
  v27 = sub_2C3318();
  v28 = &v17[*(v15 + 44)];
  *v28 = v27;
  v28[1] = sub_267C6C;
  v28[2] = 0;
  KeyPath = swift_getKeyPath();
  v69 = type metadata accessor for RecommendationItemComponentModel();
  v30 = *(v69 + 32);
  sub_6932C(a1 + v30, &v80, &qword_3C0850);
  v31 = v81 != 0;
  sub_69198(&v80, &qword_3C0850);
  sub_69130(v17, v21, &qword_3C8738);
  v32 = *(v19 + 44);
  v33 = v64;
  v34 = &v21[v32];
  *v34 = KeyPath;
  v34[8] = v31;
  v35 = swift_getKeyPath();
  sub_6932C(a1 + v30, &v80, &qword_3C0850);
  v36 = v81 != 0;
  sub_69198(&v80, &qword_3C0850);
  sub_69130(v21, v33, &qword_3C8740);
  v37 = v33 + *(v23 + 44);
  *v37 = v35;
  *(v37 + 8) = v36;
  v38 = swift_getKeyPath();
  sub_6932C(a1 + v30, &v80, &qword_3C0850);
  if (v81)
  {
    v39 = v63;
    sub_F03F4(v63);
    sub_F3EA0(&v80);
    v40 = v67;
    sub_F3138(v39, v67);
  }

  else
  {
    sub_69198(&v80, &qword_3C0850);
    v41 = sub_2BEC68();
    v40 = v67;
    (*(*(v41 - 8) + 56))(v67, 1, 1, v41);
  }

  v42 = v66;
  v43 = &v66[*(v65 + 36)];
  v44 = sub_6620C(&qword_3C7210);
  sub_F3138(v40, v43 + *(v44 + 28));
  *v43 = v38;
  sub_69130(v33, v42, &qword_3C8748);
  v45 = v72;
  sub_69130(v42, v72, &qword_3C8750);
  *(v45 + *(v70 + 36)) = 0;
  sub_6620C(&qword_3BC020);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2E4110;
  if (v68)
  {
    v47 = v71;
    v48 = v71;
    v49 = v73;
    if (v47)
    {
LABEL_6:
      sub_2C1328();
      *(v46 + 56) = sub_2BE968();
      *(v46 + 64) = sub_268614(&qword_3BF460, &type metadata accessor for ContentData);
      *(v46 + 72) = sub_268614(&unk_3C4420, &type metadata accessor for ContentData);
      sub_720C8((v46 + 32));
      v50 = v47;
      sub_2BE928();

      goto LABEL_9;
    }
  }

  else
  {
    v51 = v71;

    sub_2C5DD8();
    v52 = sub_2C3718();
    sub_2C0058();

    v53 = v60;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v51, 0);
    (*(v61 + 8))(v53, v62);
    v47 = v80;
    v49 = v73;
    if (v80)
    {
      goto LABEL_6;
    }
  }

  *(v46 + 48) = 0u;
  *(v46 + 64) = 0u;
  *(v46 + 32) = 0u;
LABEL_9:
  *(v46 + 104) = sub_2BECC8();
  *(v46 + 112) = sub_268614(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v46 + 120) = sub_268614(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v46 + 80));
  sub_2BEC98();
  sub_F3B00(v49);
  v54 = sub_2BEB58();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v49, 1, v54) == 1)
  {
    sub_69198(v49, &qword_3C3508);
    *(v46 + 128) = 0u;
    *(v46 + 144) = 0u;
    *(v46 + 160) = 0u;
  }

  else
  {
    *(v46 + 152) = v54;
    *(v46 + 160) = sub_268614(&qword_3C87F0, &type metadata accessor for SuggestionData);
    *(v46 + 168) = sub_268614(&qword_3C87F8, &type metadata accessor for SuggestionData);
    v56 = sub_720C8((v46 + 128));
    (*(v55 + 32))(v56, v49, v54);
  }

  sub_2BED18();
  sub_2C12E8();
  v57 = v74;
  sub_2BE9A8();
  sub_267E04();
  sub_268614(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
  v58 = v77;
  sub_2C3D98();
  sub_268474();
  sub_2C3D88();

  sub_69198(v58, &qword_3C8730);
  (*(v75 + 8))(v57, v78);
  return sub_69198(v45, &qword_3C8758);
}

uint64_t sub_2669B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2C3338();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_6620C(&qword_3C8800);
  sub_266C5C(a1, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(sub_6620C(&qword_3C87D0) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  LOBYTE(KeyPath) = sub_2C3748();
  sub_2C24D8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_6620C(&qword_3C87C0) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(KeyPath) = sub_2C37B8();
  sub_2C24D8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_6620C(&qword_3C87B0) + 36);
  *v24 = KeyPath;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = *(type metadata accessor for RecommendationItemComponentModel() + 28);
  v26 = a2 + *(sub_6620C(&qword_3C87A0) + 36);
  v27 = type metadata accessor for SwipeActionsViewModifier(0);
  v28 = *(v27 + 40);
  v29 = sub_2C1348();
  (*(*(v29 - 8) + 16))(v26 + v28, a1 + v25, v29);
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = swift_getKeyPath();
  *(v26 + 24) = 0;
  *(v26 + 32) = swift_getKeyPath();
  *(v26 + 40) = 0;
  sub_2C1498();
  sub_268614(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  *(v26 + 48) = sub_2C2B48();
  *(v26 + 56) = v30;
  *(v26 + 64) = swift_getKeyPath();
  *(v26 + 72) = 0;
  v31 = *(v27 + 36);
  *(v26 + v31) = swift_getKeyPath();
  sub_6620C(&qword_3BF850);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = sub_2C1348();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C07B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_6620C(&qword_3C8808);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_6620C(&qword_3C8810);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = type metadata accessor for RecommendationItemComponentModel();
  v21 = v20;
  v22 = *(v20 + 36);
  v42 = a1;
  if (*(a1 + v22) != 1)
  {
    goto LABEL_5;
  }

  sub_6932C(v42 + *(v20 + 32), v43, &qword_3C0850);
  if (!*(&v43[0] + 1))
  {
    sub_69198(v43, &qword_3C0850);
LABEL_5:
    (*(v11 + 56))(v19, 1, 1, v10);
    goto LABEL_6;
  }

  v45[2] = v43[2];
  v45[3] = v43[3];
  v46 = v44;
  v45[0] = v43[0];
  v45[1] = v43[1];
  *v13 = sub_2C3168();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v23 = sub_6620C(&qword_3C8820);
  sub_26712C(v45, &v13[*(v23 + 44)]);
  v24 = sub_2C3778();
  sub_2C24D8();
  v25 = &v13[*(v10 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_69130(v13, v19, &qword_3C8808);
  (*(v11 + 56))(v19, 0, 1, v10);
  sub_F3EA0(v45);
LABEL_6:
  (*(v38 + 16))(v37, v42 + *(v21 + 28), v39);
  sub_2C07C8();
  sub_26859C(v19, v16);
  v30 = *(v5 + 16);
  v31 = v40;
  v30(v40, v9, v4);
  v32 = v41;
  sub_26859C(v16, v41);
  v33 = sub_6620C(&qword_3C8818);
  v30((v32 + *(v33 + 48)), v31, v4);
  v34 = *(v5 + 8);
  v34(v9, v4);
  sub_69198(v19, &qword_3C8810);
  v34(v31, v4);
  return sub_69198(v16, &qword_3C8810);
}

uint64_t sub_26712C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v41 = sub_6620C(&qword_3C8828);
  __chkstk_darwin(v41);
  v4 = &v38 - v3;
  v5 = sub_6620C(&qword_3C8830);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = sub_2C15E8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C18C8();
  __chkstk_darwin(v13 - 8);
  v14 = sub_2C1E18();
  __chkstk_darwin(v14 - 8);
  v15 = sub_2C1678();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - v19;
  (*(v10 + 104))(v12, enum case for SingleThumbnailStyle.extraSmall(_:), v9, v18);
  sub_2C18B8();
  (*(v10 + 8))(v12, v9);
  sub_2C1E08();
  v45 = v20;
  sub_2C1688();
  v21 = sub_2C3338();
  v51 = 1;
  sub_2677E4(a1, &v60);
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v57 = v65[0];
  v52 = v60;
  v53 = v61;
  v59 = v65[0];
  v58[2] = v62;
  v58[3] = v63;
  v58[4] = v64;
  v58[0] = v60;
  v58[1] = v61;
  sub_6932C(&v52, &v48, &qword_3C8838);
  sub_69198(v58, &qword_3C8838);
  *&v50[39] = v54;
  *&v50[55] = v55;
  *&v50[71] = v56;
  *&v50[7] = v52;
  *&v50[23] = v53;
  *(&v49[2] + 1) = *&v50[32];
  *(&v49[3] + 1) = *&v50[48];
  *(&v49[4] + 1) = *&v50[64];
  *(&v49[1] + 1) = *&v50[16];
  v50[87] = v57;
  v48 = v21;
  LOBYTE(v49[0]) = v51;
  *(&v49[5] + 1) = *&v50[80];
  *(v49 + 1) = *v50;
  v22 = enum case for DynamicTypeSize.xxxLarge(_:);
  v23 = sub_2C29C8();
  (*(*(v23 - 8) + 104))(v4, v22, v23);
  sub_268614(&qword_3C8840, &type metadata accessor for DynamicTypeSize);
  result = sub_2C5878();
  if (result)
  {
    sub_6620C(&qword_3C8848);
    sub_72B74(&qword_3C8850, &qword_3C8848);
    sub_72B74(&qword_3C8858, &qword_3C8828);
    v25 = v46;
    sub_2C3F48();
    sub_69198(v4, &qword_3C8828);
    v64 = v49[3];
    v65[0] = v49[4];
    *(v65 + 9) = *(&v49[4] + 9);
    v60 = v48;
    v61 = v49[0];
    v62 = v49[1];
    v63 = v49[2];
    sub_69198(&v60, &qword_3C8848);
    v27 = v38;
    v26 = v39;
    v28 = *(v39 + 16);
    v29 = v40;
    v28(v38, v45, v40);
    v30 = v42;
    v41 = *(v42 + 16);
    v31 = v25;
    v32 = v43;
    v41(v47, v31, v43);
    v33 = v44;
    v28(v44, v27, v29);
    v34 = &v33[*(sub_6620C(&qword_3C8860) + 48)];
    v35 = v47;
    v41(v34, v47, v32);
    v36 = *(v30 + 8);
    v36(v46, v32);
    v37 = *(v26 + 8);
    v37(v45, v29);
    v36(v35, v32);
    return (v37)(v27, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2677E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7212C();

  v3 = sub_2C3A48();
  v5 = v4;
  v7 = v6;
  sub_2C38D8();
  v8 = sub_2C39E8();
  v10 = v9;
  v12 = v11;

  sub_72180(v3, v5, v7 & 1);

  sub_2C3868();
  v13 = sub_2C3988();
  v15 = v14;
  LOBYTE(v3) = v16;
  sub_72180(v8, v10, v12 & 1);

  sub_2C4268();
  v17 = sub_2C3998();
  v44 = v18;
  v45 = v17;
  v43 = v19;
  v46 = v20;

  sub_72180(v13, v15, v3 & 1);

  sub_72084((a1 + 32), *(a1 + 56));
  sub_2BFA58();
  v21 = sub_2C3A48();
  v23 = v22;
  LOBYTE(v5) = v24;
  sub_2C38D8();
  v25 = sub_2C39E8();
  v27 = v26;
  v29 = v28;

  sub_72180(v21, v23, v5 & 1);

  v30 = sub_2C39D8();
  v32 = v31;
  LOBYTE(v15) = v33;
  sub_72180(v25, v27, v29 & 1);

  sub_2C4258();
  v34 = sub_2C3998();
  v36 = v35;
  LOBYTE(v8) = v37;
  v39 = v38;

  sub_72180(v30, v32, v15 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 16) = v43 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v8 & 1;
  *(a2 + 56) = v39;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  sub_BE2CC(v45, v44, v43 & 1);

  sub_BE2CC(v34, v36, v8 & 1);

  sub_72180(v34, v36, v8 & 1);

  sub_72180(v45, v44, v43 & 1);
}

uint64_t sub_267B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_268614(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  v4 = sub_720C8(a2);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  sub_691F8(v13, v11);
  sub_C04C8(v12, v10);
  sub_CC804(v11, v10, v4 + v3[5]);
  sub_72084(v13, v13[3]);
  v5 = sub_2BF3B8();
  v7 = v6;
  sub_C12F8(v12);
  v8 = (v4 + v3[6]);
  *v8 = v5;
  v8[1] = v7;
  *(v4 + v3[7]) = 0;
  return sub_68CD0(v13);
}

uint64_t sub_267C88()
{
  sub_C9C28(*v0, *(v0 + 8));
  sub_2646B0();
  return sub_2BFD18();
}

unint64_t sub_267CEC()
{
  result = qword_3C8728;
  if (!qword_3C8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8728);
  }

  return result;
}

unint64_t sub_267E04()
{
  result = qword_3C8760;
  if (!qword_3C8760)
  {
    sub_718D4(&qword_3C8758);
    sub_267EBC();
    sub_72B74(&qword_3C25F0, &qword_3C25F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8760);
  }

  return result;
}

unint64_t sub_267EBC()
{
  result = qword_3C8768;
  if (!qword_3C8768)
  {
    sub_718D4(&qword_3C8750);
    sub_267F74();
    sub_72B74(&qword_3C7208, &qword_3C7210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8768);
  }

  return result;
}

unint64_t sub_267F74()
{
  result = qword_3C8770;
  if (!qword_3C8770)
  {
    sub_718D4(&qword_3C8748);
    sub_26802C();
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8770);
  }

  return result;
}

unint64_t sub_26802C()
{
  result = qword_3C8778;
  if (!qword_3C8778)
  {
    sub_718D4(&qword_3C8740);
    sub_2680E4();
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8778);
  }

  return result;
}

unint64_t sub_2680E4()
{
  result = qword_3C8780;
  if (!qword_3C8780)
  {
    sub_718D4(&qword_3C8738);
    sub_268170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8780);
  }

  return result;
}

unint64_t sub_268170()
{
  result = qword_3C8788;
  if (!qword_3C8788)
  {
    sub_718D4(&qword_3C8790);
    sub_2681F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8788);
  }

  return result;
}

unint64_t sub_2681F4()
{
  result = qword_3C8798;
  if (!qword_3C8798)
  {
    sub_718D4(&qword_3C87A0);
    sub_26830C(&qword_3C87A8, &qword_3C87B0, &unk_2F9018, sub_2682DC);
    sub_268614(&qword_3C77D8, type metadata accessor for SwipeActionsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8798);
  }

  return result;
}

uint64_t sub_26830C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268390()
{
  result = qword_3C87C8;
  if (!qword_3C87C8)
  {
    sub_718D4(&qword_3C87D0);
    sub_72B74(&qword_3C87D8, &qword_3C87E0);
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C87C8);
  }

  return result;
}

unint64_t sub_268474()
{
  result = qword_3C87E8;
  if (!qword_3C87E8)
  {
    sub_718D4(&qword_3C8730);
    sub_718D4(&qword_3C8758);
    sub_2BED18();
    sub_267E04();
    sub_268614(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C87E8);
  }

  return result;
}

uint64_t sub_26859C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C8810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268664()
{
  sub_718D4(&qword_3C8730);
  sub_268474();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static Animation.pageContentTransition.getter()
{
  v0 = sub_2C4478();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C4468();
  v4 = sub_2C46F8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_2687BC(void *a1)
{
  v3 = [a1 toBool];
  v4 = [a1 context];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v9[4] = sub_269C10;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1CEBE8;
  v9[3] = &unk_3943A0;
  v6 = _Block_copy(v9);
  v7 = v1;

  v8 = [objc_opt_self() valueWithNewPromiseInContext:v4 fromExecutor:v6];
  _Block_release(v6);

  if (!v8)
  {
    __break(1u);
  }
}

uint64_t sub_2688EC(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2C5C58();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2C5C18();
  v11 = a1;
  v12 = a3;
  v13 = sub_2C5C08();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v12;
  *(v14 + 40) = a4;
  *(v14 + 48) = a1;
  sub_249B98(0, 0, v9, &unk_2F91C8, v14);
}

uint64_t sub_268A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 1464) = a6;
  *(v6 + 1372) = a5;
  *(v6 + 1416) = a4;
  sub_2C5C18();
  *(v6 + 1512) = sub_2C5C08();
  v8 = sub_2C5BB8();
  *(v6 + 1560) = v8;
  *(v6 + 1608) = v7;

  return _swift_task_switch(sub_268AD4, v8, v7);
}

uint64_t sub_268AD4()
{
  v1 = *(v0 + 1372);
  v2 = *(v0 + 1416);
  v3 = swift_allocObject();
  *(v0 + 1616) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  *(v0 + 1624) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v4;
  swift_asyncLet_begin();
  sub_6620C(&qword_3BC1B0);
  inited = swift_initStackObject();
  *(v0 + 1632) = inited;
  *(inited + 16) = xmmword_2E15C0;

  return _swift_asyncLet_get(v0 + 16, v0 + 1370, sub_268C28, v0 + 1296);
}

uint64_t sub_268C8C()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1371);
  *(v1 + 33) = v3;
  v4 = *(v1 + 32);

  if (v2)
  {
    v5 = *(v0 + 1464);
    v6 = v4 | v3;
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 sharedInstance];
    sub_6620C(&qword_3BC308);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2E3F30;
    *(v10 + 56) = &type metadata for Bool;
    *(v10 + 32) = v6 & 1;
    v20._countAndFlagsBits = 0x8000000000307750;
    v11.super.isa = v8;
    v19.value._rawValue = v10;
    v19.is_nil = -100;
    v20._object = &dword_1C;
    sub_2C6078(v11, v19, v20, v12);

    v13 = sub_268DEC;
    v14 = v0 + 656;
    v15 = v0 + 1371;
    v16 = v0 + 1520;
  }

  else
  {
    v13 = sub_268E44;
    v14 = v0 + 656;
    v15 = v0 + 1371;
    v16 = v0 + 1424;
  }

  return _swift_asyncLet_finish(v14, v15, v13, v16);
}

uint64_t sub_268E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268F14(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_268FB4;

  return sub_2690B4(a3);
}

uint64_t sub_268FB4(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_26A340, 0, 0);
}

uint64_t sub_2690B4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  *(v2 + 24) = sub_2C5C18();
  *(v2 + 32) = sub_2C5C08();
  v4 = sub_2C5BB8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_269154, v4, v3);
}

uint64_t sub_269154()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentedViewController];
    *(v0 + 56) = v3;

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = *(v0 + 88);
        v7 = sub_2C5C08();
        *(v0 + 64) = v7;
        v8 = swift_task_alloc();
        *(v0 + 72) = v8;
        *(v8 + 16) = v5;
        *(v8 + 24) = v6;
        v9 = swift_task_alloc();
        *(v0 + 80) = v9;
        *v9 = v0;
        v9[1] = sub_269320;

        return withCheckedContinuation<A>(isolation:function:_:)(v9, v7, &protocol witness table for MainActor, 0xD000000000000017, 0x8000000000307810, sub_26A290, v8, &type metadata for () + 8);
      }
    }
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_269320()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_269480, v3, v2);
}

uint64_t sub_269480()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_2694F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_269590;

  return sub_2696B4(a3);
}

uint64_t sub_269590(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_269690, 0, 0);
}

uint64_t sub_2696B4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  *(v2 + 24) = sub_2C5C18();
  *(v2 + 32) = sub_2C5C08();
  v4 = sub_2C5BB8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_269754, v4, v3);
}

uint64_t sub_269754()
{
  v1 = [*(v0 + 16) navigationController];
  *(v0 + 56) = v1;
  if (!v1)
  {

LABEL_12:
    v12 = 0;
    goto LABEL_14;
  }

  v2 = v1;
  v3 = [v1 viewControllers];
  sub_C17C4();
  v4 = sub_2C5B28();

  if (v4 >> 62)
  {
    v5 = sub_2C6398();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  if (v5 < 2)
  {

    goto LABEL_12;
  }

  v6 = *(v0 + 96);

  if (v6 == 1)
  {
    v7 = [v2 transitionCoordinator];
    *(v0 + 64) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_2C5C08();
      *(v0 + 72) = v9;
      v10 = swift_task_alloc();
      *(v0 + 80) = v10;
      *(v10 + 16) = v8;
      v11 = swift_task_alloc();
      *(v0 + 88) = v11;
      *v11 = v0;
      v11[1] = sub_2699A0;

      return withCheckedContinuation<A>(isolation:function:_:)(v11, v9, &protocol witness table for MainActor, 0xD000000000000016, 0x80000000003077F0, sub_26A218, v10, &type metadata for () + 8);
    }
  }

  v12 = 1;
LABEL_14:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_2699A0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_269B00, v3, v2);
}

uint64_t sub_269B00()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(1);
}

id sub_269B78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2687BC(v4);
  v7 = v6;

  return v7;
}

uint64_t sub_269BD8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_269C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269C34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_269C7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_268A30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_269D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_268F14(a1, v4, v5);
}

uint64_t sub_269DF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7100C;

  return sub_2694F0(a1, v4, v5);
}

void sub_269EA8(uint64_t a1, void *a2, char a3)
{
  v6 = sub_6620C(&qword_3C8868);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_26A224;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_3944B8;
  v13 = _Block_copy(aBlock);

  [a2 popAllCardsAnimated:a3 & 1 prefersCrossfade:1 completion:v13];
  _Block_release(v13);
}

void sub_26A064(uint64_t a1, void *a2)
{
  v4 = sub_6620C(&qword_3C8868);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_26A224;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_74394;
  aBlock[3] = &unk_394468;
  v11 = _Block_copy(aBlock);

  [a2 animateAlongsideTransition:0 completion:v11];
  _Block_release(v11);
}

uint64_t sub_26A29C()
{
  v1 = sub_6620C(&qword_3C8868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_26A368()
{
  result = qword_3C8870[0];
  if (!qword_3C8870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C8870);
  }

  return result;
}

Swift::Int sub_26A3C8()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_26A490()
{
  sub_2C5958();
}

Swift::Int sub_26A544()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_26A608@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A80C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_26A638(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x656C6269736976;
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

uint64_t sub_26A71C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_6620C(&qword_3C13E8);
  sub_68DE4(v3, a2);
  sub_57AD8(v3, a2);
  return sub_2C4EB8();
}

uint64_t sub_26A78C()
{
  v0 = sub_6620C(&qword_3C13C0);
  sub_68DE4(v0, qword_3E8978);
  sub_57AD8(v0, qword_3E8978);
  sub_111B90();
  return sub_2C4ED8();
}

uint64_t sub_26A80C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389458;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

int *SnapshotImageItem.init(content:size:timeout:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for SnapshotImageItem();
  v15 = (a6 + result[9]);
  *v15 = a7;
  v15[1] = a8;
  v16 = (a6 + result[10]);
  *v16 = a2;
  v16[1] = a3;
  *(a6 + result[11]) = a4;
  return result;
}

uint64_t sub_26A928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 24);
  v32 = *(a1 + 16);
  v33 = v2;
  v27 = v2;
  v28 = v32;
  v3 = v2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v6 = &v24 - v5;
  v33 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = OpaqueTypeMetadata2;
  v33 = OpaqueTypeConformance2;
  v8 = OpaqueTypeConformance2;
  v24 = OpaqueTypeConformance2;
  v9 = swift_getOpaqueTypeMetadata2();
  v29 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v32 = OpaqueTypeMetadata2;
  v33 = v8;
  v12 = swift_getOpaqueTypeConformance2();
  v32 = v9;
  v33 = v12;
  v25 = v12;
  v26 = &opaque type descriptor for <<opaque return type of View.localizer(_:)>>;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  sub_2C3C88();
  sub_2C3C58();
  (*(v30 + 8))(v6, OpaqueTypeMetadata2);
  sub_6620C(&unk_3BD1A0);
  sub_2C4DB8();
  v20 = v25;
  sub_2C3B68();
  sub_68CD0(&v32);
  (*(v29 + 8))(v11, v9);
  v32 = v9;
  v33 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  sub_16A4E4(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_16A4E4(v19, v13, v21);
  return (v22)(v19, v13);
}

uint64_t sub_26ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2C6338();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2C5C18();
  v3[8] = sub_2C5C08();
  v6 = sub_2C5BB8();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_26ADC0, v6, v5);
}

uint64_t sub_26ADC0()
{
  sub_2C66A8();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_26AE94;
  v3 = v0[2];
  v2 = v0[3];

  return (sub_26CCE0)(v3, v2, 0, 0, 1);
}

uint64_t sub_26AE94()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_26DD48;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_26B028;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_26B028()
{

  v1 = sub_2C2768();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t static SnapshotImageItem.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2C0048();
  __chkstk_darwin(v6 - 8);
  type metadata accessor for SnapshotImageItem();
  swift_getWitnessTable();
  v7 = sub_2BFB58();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_2C0028();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_2BFB48();
  swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v13, v10, v7);
  v16 = *(v8 + 8);
  v16(v10, v7);
  v15(a3, v13, v7);
  return (v16)(v13, v7);
}

uint64_t sub_26B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B37C;

  return sub_26B650(a1, a2, a3);
}

uint64_t sub_26B37C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_26B49C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B544;

  return sub_26B2D0(a1, v5, v4);
}

uint64_t sub_26B544(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_26B650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = sub_2C5C18();
  v3[7] = sub_2C5C08();
  v5 = sub_2C5BB8();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_26B6F0, v5, v4);
}

uint64_t sub_26B6F0()
{
  v1 = *(v0 + 24);
  v7 = *(v0 + 32);
  v2 = sub_2C5C08();
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_6620C(&qword_3C88F8);
  *v4 = v0;
  v4[1] = sub_26B824;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v2, &protocol witness table for MainActor, 0xD000000000000016, 0x80000000003078F0, sub_26C9BC, v3, v5);
}

uint64_t sub_26B824()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_26BAE4;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_26B948;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_26B948()
{

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = UIImageJPEGRepresentation(*(v0 + 16), 1.0);
    if (v2)
    {
      v3 = v2;
      v4 = sub_2BE3D8();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }

    type metadata accessor for SnapshotImageItem.SnapshotImageItemError();
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SnapshotImageItem.SnapshotImageItemError();
    swift_getWitnessTable();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26BAE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a2;
  v27 = a1;
  v4 = sub_6620C(&qword_3C8900);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v25 = &v24 - v6;
  v8 = type metadata accessor for SnapshotImageItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_2C5C58();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, v26, v8);
  v17 = v4;
  (*(v5 + 16))(v7, v27, v4);
  sub_2C5C18();
  v18 = sub_2C5C08();
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v10 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v18;
  *(v21 + 3) = &protocol witness table for MainActor;
  v22 = v29;
  *(v21 + 4) = v28;
  *(v21 + 5) = v22;
  (*(v9 + 32))(&v21[v19], v12, v8);
  (*(v5 + 32))(&v21[v20], v25, v17);
  sub_249B98(0, 0, v15, &unk_2F9370, v21);
}

uint64_t sub_26BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  sub_2C5C18();
  v7[8] = sub_2C5C08();
  v9 = sub_2C5BB8();
  v7[9] = v9;
  v7[10] = v8;

  return _swift_task_switch(sub_26BEE8, v9, v8);
}

uint64_t sub_26BEE8()
{
  v1 = v0[4];
  v2 = type metadata accessor for SnapshotImageItem();
  v0[11] = v2;
  v3 = (v1 + *(v2 + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 + *(v2 + 44));
  v0[12] = v6;

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_26BFCC;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];

  return sub_26D198(v10, v4, v5, v6, v8, v9);
}

uint64_t sub_26BFCC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_26C394;
  }

  else
  {
    v4[15] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_26C118;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_26C118()
{
  v1 = (v0[4] + *(v0[11] + 40));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_26C1C8;
  v5 = v0[15];

  return sub_26ACC8(v3, v2, v5);
}

uint64_t sub_26C1C8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_26C2F0, v4, v3);
}

uint64_t sub_26C2F0()
{
  v1 = v0[17];

  v0[3] = v1;
  sub_6620C(&qword_3C8900);
  sub_2C5BD8();

  v2 = v0[1];

  return v2();
}

uint64_t sub_26C394()
{
  v1 = v0[14];

  v0[2] = v1;
  sub_6620C(&qword_3C8900);
  sub_2C5BC8();
  v2 = v0[1];

  return v2();
}

Swift::Int sub_26C4A8(char a1)
{
  sub_2C6738();
  sub_2C6748(a1 & 1);
  return sub_2C6778();
}

Swift::Int sub_26C50C()
{
  sub_2C6738();
  sub_26C480(v2, *v0);
  return sub_2C6778();
}

void sub_26C558()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_2C4E28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C600(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_26C75C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_26C93C()
{
  type metadata accessor for SnapshotImageItem();
  swift_getWitnessTable();
  sub_2BFB58();

  return swift_getWitnessTable();
}

uint64_t sub_26C9E0()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for SnapshotImageItem() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6620C(&qword_3C8900);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_26CB68(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for SnapshotImageItem() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_6620C(&qword_3C8900) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_7100C;

  return sub_26BE4C(a1, v12, v13, v1 + v8, v1 + v11, v6, v5);
}

uint64_t sub_26CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2C6328();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_26CDE0, 0, 0);
}

uint64_t sub_26CDE0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2C6338();
  v5 = sub_26D74C(&qword_3C5130, &type metadata accessor for ContinuousClock);
  sub_2C6688();
  sub_26D74C(qword_3C8908, &type metadata accessor for ContinuousClock.Instant);
  sub_2C6348();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26CF70;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_26CF70()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_26D12C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26D12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26D198(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *(a5 - 8);
  *(v6 + 64) = swift_task_alloc();
  v7 = type metadata accessor for SnapshotDependencyView();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = sub_2C5C18();
  *(v6 + 112) = sub_2C5C08();
  v8 = swift_task_alloc();
  *(v6 + 120) = v8;
  *v8 = v6;
  v8[1] = sub_26D328;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_26D328(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_2C5BB8();
    v7 = v6;
    v8 = sub_26D6C0;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_2C5BB8();
    v7 = v9;
    v8 = sub_26D4A8;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_26D4A8()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v14 = v0[11];
  v8 = v0[2];

  (*(v5 + 16))(v6, v8, v7);
  *v2 = v1;
  v9 = type metadata accessor for SnapshotDependencyView();
  (*(*(v7 - 8) + 32))(&v2[*(v9 + 36)], v6, v7);
  swift_getWitnessTable();
  sub_2C27B8();
  (*(v4 + 16))(v14, v2, v3);
  v10 = sub_2C2798();

  sub_2C2778();
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];

  sub_2C2788();
  sub_2C27A8();

  (*(v4 + 8))(v2, v3);

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_26D6C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26D74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D7AC()
{
  result = sub_2C4E28();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26D9B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_26DC68()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_26DD54()
{
  sub_26E54C(319, &unk_3C6120, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_26E54C(319, &qword_3BC858, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26DE64(unint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v5 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v15;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v20 = ((v18 + ((v13 + v14 + ((v12 + 33) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if ((v16 & 0x80000000) != 0)
      {
        v29 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v12 + 33) & ~v12;
        if (v6 == v17)
        {
          v30 = *(v5 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v13 + v14) & ~v14;
          if (v9 == v17)
          {
            v32 = *(v8 + 48);
            v33 = *(v8 + 84);
            v34 = a3[3];
          }

          else
          {
            v32 = *(v11 + 48);
            v31 = (v18 + v31) & ~v15;
            v33 = *(v11 + 84);
            v34 = a3[4];
          }

          return v32(v31, v33, v34);
        }
      }

      else
      {
        v28 = *(a1 + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v18 + ((v13 + v14 + ((v12 + 33) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void sub_26E178(unint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  if (v7 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v10 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v13 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v13;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(*(v8 - 8) + 64) + v18;
  v23 = ((v22 + ((v16 + v17 + ((v15 + 33) & ~v15)) & ~v17)) & ~v18) + v19;
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v29 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *(a1 + v23) = v28;
              }

              else
              {
                *(a1 + v23) = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        *(a1 + 2) = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      *(a1 + v23) = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v23) = 0;
  }

  else if (v26)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v20 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 16) = 0;
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 8) = 0;
    }

    else
    {
      *(a1 + 8) = a2 - 1;
    }

    return;
  }

  v32 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 33) & ~v15;
  if (v7 == v21)
  {
    v33 = *(v6 + 56);

LABEL_63:
    v33(v32);
    return;
  }

  v34 = (v32 + v16 + v17) & ~v17;
  if (v11 != v21)
  {
    v33 = *(v14 + 56);
    v32 = (v22 + v34) & ~v18;

    goto LABEL_63;
  }

  v35 = *(v10 + 56);

  v35(v34);
}

void sub_26E54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26E5EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_718D4(&qword_3C8A90);
  sub_718D4(&qword_3C8A98);
  v25 = a1[2];
  sub_2C2A08();
  v3 = a1[3];
  sub_2C2A08();
  sub_2C2A08();
  sub_718D4(&qword_3C8AA0);
  sub_2C2A08();
  sub_2C2A08();
  v4 = a1[4];
  sub_2C2A08();
  swift_getTupleTypeMetadata3();
  v24 = sub_2C4788();
  sub_72B74(&qword_3C8AA8, &qword_3C8A90);
  v5 = sub_2C2818();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = swift_allocObject();
  v16 = v26;
  *&v17 = v25;
  *(&v17 + 1) = v3;
  *&v18 = v4;
  *(&v18 + 1) = v12;
  *(v15 + 16) = v17;
  *(v15 + 32) = v18;
  *(v15 + 48) = v13;
  *(v15 + 56) = v14;
  v29 = v17;
  v30 = v18;
  v31 = v13;
  v32 = v14;
  v33 = v16;
  sub_26E950(sub_26F764, v28, v8);

  v19 = sub_72B74(&qword_3C8AB0, &qword_3C8A90);
  WitnessTable = swift_getWitnessTable();
  v34 = v19;
  v35 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_16A4E4(v8, v5, v21);
  v22 = *(v6 + 8);
  v22(v8, v5);
  sub_16A4E4(v11, v5, v21);
  return (v22)(v11, v5);
}

uint64_t sub_26E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_718D4(&qword_3C8A98);
  sub_2C2A08();
  sub_2C2A08();
  sub_2C2A08();
  sub_718D4(&qword_3C8AA0);
  sub_2C2A08();
  sub_2C2A08();
  sub_2C2A08();
  swift_getTupleTypeMetadata3();
  v6 = sub_2C4788();
  v7 = sub_26FD50();
  WitnessTable = swift_getWitnessTable();
  return sub_26EAB0(a1, a2, &type metadata for CardAuxiliaryNavigationBarLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_26EAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C25F8();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_2C2608();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_2C2828();
}

uint64_t sub_26EC58@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a7;
  v93 = a6;
  v92 = a1;
  v91 = a8;
  sub_718D4(&qword_3C8A98);
  v80 = a4;
  v89 = sub_2C2A08();
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = v66 - v15;
  v66[1] = a3;
  v71 = sub_2C2A08();
  v77 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = v66 - v16;
  v75 = sub_2C2A08();
  v84 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = v66 - v17;
  sub_718D4(&qword_3C8AA0);
  v81 = sub_2C2A08();
  v85 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = v66 - v18;
  v96 = sub_2C2A08();
  v86 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v66 - v21;
  __chkstk_darwin(v22);
  v97 = v66 - v23;
  v24 = sub_2C2A08();
  v73 = *(v24 - 8);
  v25 = v73;
  __chkstk_darwin(v24);
  v27 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = v66 - v29;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v107 = v93;
  v108 = a7;
  v66[2] = type metadata accessor for CardAuxiliaryNavigationBarLayoutView();
  LOBYTE(v103) = 0;
  v68 = sub_26FCEC();
  v30 = v92;
  sub_2C3E98();
  v67 = sub_72B74(&qword_3C8AB8, &qword_3C8A98);
  v102[13] = a5;
  v102[14] = v67;
  v72 = v24;
  WitnessTable = swift_getWitnessTable();
  v94 = v27;
  sub_16A4E4(v27, v24, WitnessTable);
  v31 = *(v25 + 8);
  v82 = v25 + 8;
  v83 = v31;
  v31(v27, v24);
  sub_2C3748();
  v32 = v69;
  v33 = v93;
  sub_2C40C8();
  v34 = v30[1];
  LOBYTE(v24) = *(v30 + 16);
  v103 = *v30;
  v35 = v103;
  v104 = v34;
  LOBYTE(v105) = v24;
  sub_6620C(&qword_3C27A8);
  sub_2C44C8();
  v102[11] = v33;
  v102[12] = &protocol witness table for _PaddingLayout;
  v36 = v71;
  v37 = swift_getWitnessTable();
  v38 = v70;
  sub_2C40B8();
  (*(v77 + 8))(v32, v36);
  sub_2C4718();
  v103 = v35;
  v104 = v34;
  LOBYTE(v105) = v24;
  sub_2C44C8();
  LOBYTE(v103) = v102[0];
  v102[9] = v37;
  v102[10] = &protocol witness table for _OpacityEffect;
  v39 = v75;
  v40 = swift_getWitnessTable();
  v41 = v74;
  sub_2C4138();

  (*(v84 + 8))(v38, v39);
  v42 = sub_72B74(&qword_3C8AC0, &qword_3C8AA0);
  v102[7] = v40;
  v102[8] = v42;
  v43 = v81;
  v44 = swift_getWitnessTable();
  LOBYTE(v103) = 1;
  v45 = v76;
  sub_2C3E98();
  (*(v85 + 8))(v41, v43);
  v46 = v67;
  v102[5] = v44;
  v102[6] = v67;
  v47 = v96;
  v84 = swift_getWitnessTable();
  sub_16A4E4(v45, v47, v84);
  v48 = v86;
  v49 = *(v86 + 8);
  v85 = v86 + 8;
  v93 = v49;
  v49(v45, v47);
  LOBYTE(v103) = 2;
  v50 = v87;
  v51 = v79;
  sub_2C3E98();
  v102[3] = v51;
  v102[4] = v46;
  v52 = v89;
  v53 = swift_getWitnessTable();
  v54 = v88;
  sub_16A4E4(v50, v52, v53);
  v55 = v90;
  v92 = *(v90 + 8);
  (v92)(v50, v52);
  v56 = v94;
  v57 = v72;
  (*(v73 + 16))(v94, v95, v72);
  v103 = v56;
  v58 = *(v48 + 16);
  v59 = v98;
  v60 = v97;
  v61 = v96;
  v58(v98, v97, v96);
  v104 = v59;
  (*(v55 + 16))(v50, v54, v52);
  v105 = v50;
  v102[0] = v57;
  v102[1] = v61;
  v102[2] = v52;
  v99 = WitnessTable;
  v100 = v84;
  v101 = v53;
  sub_29A098(&v103, 3uLL, v102);
  v62 = v92;
  (v92)(v54, v52);
  v63 = v93;
  v93(v60, v61);
  v64 = v83;
  v83(v95, v57);
  v62(v50, v52);
  v63(v98, v61);
  return v64(v94, v57);
}

uint64_t sub_26F778@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_2C27E8();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v33 - v8;
  v9 = sub_2C2878();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3C8AE8);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v33 - v16;
  (*(v10 + 16))(v12, v2, v9, v15);
  sub_270E0C(&qword_3C8AF0);
  sub_2C5A38();
  v18 = *(v14 + 44);
  sub_270E0C(&qword_3C8AF8);
  sub_2C5D58();
  if (*&v17[v18] == v39[0])
  {
LABEL_2:
    sub_69198(v17, &qword_3C8AE8);
    v19 = 1;
    v20 = v34;
  }

  else
  {
    v36 = a1;
    v22 = (v35 + 16);
    v37 = (v35 + 32);
    v23 = (v35 + 8);
    while (1)
    {
      v24 = sub_2C5D88();
      v25 = v38;
      (*v22)(v38);
      v24(v39, 0);
      sub_2C5D68();
      v26 = v4;
      v27 = *v37;
      v28 = v6;
      v29 = v6;
      v30 = v26;
      (*v37)(v28, v25);
      sub_26FCEC();
      v31 = v29;
      sub_2C27F8();
      if (LOBYTE(v39[0]) != 3 && LOBYTE(v39[0]) == v36)
      {
        break;
      }

      v4 = v30;
      v6 = v29;
      (*v23)(v29, v4);
      sub_2C5D58();
      if (*&v17[v18] == v39[0])
      {
        goto LABEL_2;
      }
    }

    sub_69198(v17, &qword_3C8AE8);
    v32 = v34;
    (v27)(v34, v31, v30);
    v4 = v30;
    v20 = v32;
    v19 = 0;
  }

  return (*(v35 + 56))(v20, v19, 1, v4);
}

double sub_26FB80(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_26FC60(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2C2468();
  return sub_10288C;
}

unint64_t sub_26FCEC()
{
  result = qword_3C8AC8;
  if (!qword_3C8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8AC8);
  }

  return result;
}

unint64_t sub_26FD50()
{
  result = qword_3C8AD0;
  if (!qword_3C8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8AD0);
  }

  return result;
}

uint64_t sub_26FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = (__chkstk_darwin)();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_16A4E4(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_16A4E4(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_26FF08()
{
  sub_718D4(&qword_3C8A90);
  sub_718D4(&qword_3C8A98);
  sub_2C2A08();
  sub_2C2A08();
  sub_2C2A08();
  sub_718D4(&qword_3C8AA0);
  sub_2C2A08();
  sub_2C2A08();
  sub_2C2A08();
  swift_getTupleTypeMetadata3();
  sub_2C4788();
  sub_72B74(&qword_3C8AA8, &qword_3C8A90);
  sub_2C2818();
  sub_72B74(&qword_3C8AB0, &qword_3C8A90);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_2700E8()
{
  result = qword_3C8AD8;
  if (!qword_3C8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8AD8);
  }

  return result;
}

uint64_t sub_27013C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_6620C(&qword_3C8AE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v86 - v17;
  sub_270D9C(a6, &v86 - v17);
  v19 = sub_2C27E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, v19) == 1)
  {
    sub_69198(v18, &qword_3C8AE0);
    v95 = 0.0;
    v93 = 0.0;
  }

  else
  {
    sub_2C2A68();
    v97 = v22 & 1;
    v96 = v23 & 1;
    sub_2C27C8();
    v95 = v24;
    v93 = v25;
    (*(v20 + 8))(v18, v19);
  }

  sub_2C2A68();
  v105 = v26 & 1;
  v104 = v27 & 1;
  sub_2C27C8();
  v94 = v28;
  v87 = v29;
  sub_270D9C(a7, v15);
  if (v21(v15, 1, v19) == 1)
  {
    sub_69198(v15, &qword_3C8AE0);
    v92 = 0.0;
  }

  else
  {
    sub_2C2A68();
    v99 = v30 & 1;
    v98 = v31 & 1;
    sub_2C27C8();
    v92 = v32;
    (*(v20 + 8))(v15, v19);
  }

  v106.origin.x = a1;
  v106.origin.y = a2;
  v106.size.width = a3;
  v106.size.height = a4;
  MinX = CGRectGetMinX(v106);
  v107.origin.x = a1;
  v107.origin.y = a2;
  v107.size.width = a3;
  v107.size.height = a4;
  CGRectGetMidY(v107);
  v108.origin.x = a1;
  v108.origin.y = a2;
  v108.size.width = a3;
  v108.size.height = a4;
  CGRectGetMinX(v108);
  v109.origin.x = a1;
  v109.origin.y = a2;
  v109.size.width = a3;
  v109.size.height = a4;
  CGRectGetWidth(v109);
  v110.origin.x = a1;
  v110.origin.y = a2;
  v110.size.width = a3;
  v110.size.height = a4;
  CGRectGetMidY(v110);
  CGRectMakeWithOriginSize();
  v86 = v33;
  v93 = v34;
  MinX = v35;
  v90 = v36;
  CGRectMakeWithOriginSize();
  v92 = v37;
  v39 = v38;
  v41 = v40;
  v95 = v42;
  v111.origin.x = a1;
  v111.origin.y = a2;
  v111.size.width = a3;
  v111.size.height = a4;
  CGRectGetMidX(v111);
  v112.origin.x = a1;
  v43 = v41;
  v44 = v39;
  v112.origin.y = a2;
  v112.size.width = a3;
  v45 = v92;
  v112.size.height = a4;
  CGRectGetMidY(v112);
  CGRectMakeWithOriginSize();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v113.origin.x = v45;
  v113.origin.y = v44;
  v113.size.width = v43;
  v113.size.height = v95;
  v54 = CGRectGetMinX(v113);
  v114.origin.x = v47;
  v114.origin.y = v49;
  v114.size.width = v51;
  v114.size.height = v53;
  MaxX = CGRectGetMaxX(v114);
  v89 = v44;
  v88 = v43;
  v94 = v51;
  if (v54 < MaxX)
  {
    v115.origin.x = v47;
    v115.origin.y = v49;
    v115.size.width = v51;
    v115.size.height = v53;
    v56 = CGRectGetMaxX(v115);
    v116.origin.x = v45;
    v116.origin.y = v44;
    v116.size.width = v43;
    v116.size.height = v95;
    v47 = v47 - (v56 - CGRectGetMinX(v116));
  }

  v57 = v53;
  v58 = v86;
  v117.origin.x = v86;
  v59 = v93;
  v117.origin.y = v93;
  v60 = MinX;
  v117.size.width = MinX;
  v61 = v90;
  v117.size.height = v90;
  v62 = CGRectGetMaxX(v117);
  v118.origin.x = v47;
  v118.origin.y = v49;
  v118.size.width = v94;
  v118.size.height = v57;
  if (CGRectGetMinX(v118) < v62)
  {
    v119.origin.x = v58;
    v119.origin.y = v59;
    v119.size.width = v60;
    v119.size.height = v61;
    v63 = CGRectGetMaxX(v119);
    v120.origin.x = v47;
    v120.origin.y = v49;
    v120.size.width = v94;
    v120.size.height = v57;
    v47 = v47 + v63 - CGRectGetMinX(v120);
  }

  v121.origin.x = v58;
  v121.origin.y = v59;
  v121.size.width = v60;
  v121.size.height = v61;
  v64 = CGRectGetMaxX(v121);
  v122.origin.x = v47;
  v122.origin.y = v49;
  v65 = v94;
  v122.size.width = v94;
  v122.size.height = v57;
  v66 = CGRectGetMinX(v122);
  v67 = v64 - v66;
  v123.origin.x = v47;
  v87 = v49;
  v123.origin.y = v49;
  v123.size.width = v65;
  v68 = v57;
  v123.size.height = v57;
  v69 = CGRectGetMaxX(v123);
  v124.origin.x = v92;
  v124.origin.y = v89;
  v124.size.width = v88;
  v124.size.height = v95;
  v70 = v69 - CGRectGetMinX(v124);
  if (v70 > 0.0)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = v67 > 0.0;
  if (v67 > 0.0)
  {
    v73 = v64 - v66;
  }

  else
  {
    v73 = 0.0;
  }

  v74 = v58;
  v75 = vabdd_f64(v64, v66);
  if (!v72)
  {
    v75 = 0.0;
  }

  if (v75 != 0.0 || ((v76 = fabs(v70), v70 > 0.0) ? (v77 = v76) : (v77 = 0.0), v77 != 0.0))
  {
    v78 = v65 - (v73 + v71);
    if (v78 > 0.0)
    {
      v65 = v78;
    }

    else
    {
      v65 = 0.0;
    }

    v125.origin.x = v58;
    v125.origin.y = v93;
    v125.size.width = MinX;
    v125.size.height = v90;
    v47 = CGRectGetMaxX(v125);
  }

  v126.origin.x = v47;
  v79 = v87;
  v126.origin.y = v87;
  v126.size.width = v65;
  v126.size.height = v68;
  CGRectGetWidth(v126);
  v127.origin.x = v47;
  v127.origin.y = v79;
  v127.size.width = v65;
  v127.size.height = v68;
  CGRectGetHeight(v127);
  v103 = 0;
  v102 = 0;
  sub_2C27C8();
  v81 = v80;
  v128.origin.x = v47;
  v128.origin.y = v79;
  v128.size.width = v65;
  v128.size.height = v68;
  if (v81 != CGRectGetWidth(v128))
  {
    v129.origin.x = v92;
    v129.origin.y = v89;
    v129.size.width = v88;
    v129.size.height = v95;
    CGRectGetMinX(v129);
    v82 = MinX;
    v130.origin.x = v74;
    v83 = v93;
    v130.origin.y = v93;
    v130.size.width = MinX;
    v84 = v90;
    v130.size.height = v90;
    CGRectGetMaxX(v130);
    v131.origin.x = v74;
    v131.origin.y = v83;
    v131.size.width = v82;
    v131.size.height = v84;
    CGRectGetMaxX(v131);
  }

  sub_2C47F8();
  v101 = 0;
  v100 = 0;
  return sub_2C27D8();
}

uint64_t sub_27080C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_2C27E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v45 - v12;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = sub_6620C(&qword_3C8AE0);
  __chkstk_darwin(v16 - 8);
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  __chkstk_darwin(v24);
  v26 = &v45 - v25;
  __chkstk_darwin(v27);
  v29 = &v45 - v28;
  __chkstk_darwin(v30);
  v32 = &v45 - v31;
  sub_26F778(0, &v45 - v31);
  sub_26F778(1u, v29);
  sub_26F778(2u, v26);
  sub_270D9C(v32, v23);
  v33 = *(v9 + 48);
  if (v33(v23, 1, v8) == 1)
  {
    sub_69198(v23, &qword_3C8AE0);
  }

  else
  {
    (*(v9 + 32))(v15, v23, v8);
    sub_2C2A68();
    v51 = v34 & 1;
    v50 = v35 & 1;
    sub_2C27C8();
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    CGRectGetMinX(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMidY(v57);
    sub_2C47F8();
    v49 = 0;
    v48 = 0;
    sub_2C27D8();
    (*(v9 + 8))(v15, v8);
  }

  sub_270D9C(v26, v20);
  v36 = v33(v20, 1, v8);
  v37 = v47;
  if (v36 == 1)
  {
    sub_69198(v20, &qword_3C8AE0);
  }

  else
  {
    v38 = v33;
    v39 = v45;
    (*(v9 + 32))(v45, v20, v8);
    sub_2C2A68();
    v55 = v40 & 1;
    v54 = v41 & 1;
    sub_2C27C8();
    v58.origin.x = a1;
    v58.origin.y = a2;
    v58.size.width = a3;
    v58.size.height = a4;
    CGRectGetMinX(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetWidth(v59);
    v60.origin.x = a1;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    CGRectGetMidY(v60);
    sub_2C47F8();
    v53 = 0;
    v52 = 0;
    sub_2C27D8();
    v42 = v39;
    v33 = v38;
    (*(v9 + 8))(v42, v8);
  }

  sub_270D9C(v29, v37);
  if (v33(v37, 1, v8) == 1)
  {
    sub_69198(v26, &qword_3C8AE0);
    v26 = v29;
    v29 = v32;
  }

  else
  {
    v43 = v46;
    (*(v9 + 32))(v46, v37, v8);
    sub_27013C(a1, a2, a3, a4, v43, v32, v26);
    (*(v9 + 8))(v43, v8);
    v37 = v32;
  }

  sub_69198(v26, &qword_3C8AE0);
  sub_69198(v29, &qword_3C8AE0);
  return sub_69198(v37, &qword_3C8AE0);
}

uint64_t sub_270D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C8AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270E0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2C2878();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270E64()
{
  result = qword_3C8B00;
  if (!qword_3C8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8B00);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.configureHideSmallTitleOnScroll(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3BCB88);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v36[-v7];
  if (!a1)
  {
    goto LABEL_7;
  }

  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  if (qword_3BB740 != -1)
  {
    swift_once();
  }

  v11 = sub_57AD8(v4, qword_3BF9B0);
  (*(v5 + 16))(v8, v11, v4);
  sub_2BF448();
  (*(v5 + 8))(v8, v4);
  if ((v36[15] & 1) == 0)
  {
    if (!isPhone())
    {
      goto LABEL_25;
    }

    v17 = [v10 viewControllers];
    sub_C17C4();
    v18 = sub_2C5B28();

    if (v18 >> 62)
    {
      if (sub_2C6398())
      {
LABEL_16:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v35 = sub_2C6208();
          swift_unknownObjectRelease();

          if (v35 == v2)
          {
LABEL_19:
            v20 = [v2 navigationItem];
            v21 = [v20 scrollEdgeAppearance];

            if (!v21)
            {
              v22 = [v10 navigationBar];
              v23 = [v22 scrollEdgeAppearance];

              if (!v23)
              {
                v24 = [v10 navigationBar];
                v23 = [v24 standardAppearance];
              }

              v25 = [v23 copy];

              [v25 _setTitleControlHidden:0];
              v21 = [v2 navigationItem];
              [v21 setScrollEdgeAppearance:v25];
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v19 = *(v18 + 32);

          if (v19 == v2)
          {
            goto LABEL_19;
          }
        }

LABEL_25:
        v26 = [v2 navigationItem];
        v27 = [v26 scrollEdgeAppearance];

        if (!v27)
        {
          goto LABEL_28;
        }

        v21 = [v2 navigationItem];
        [v21 setScrollEdgeAppearance:0];
LABEL_27:

LABEL_28:
        v28 = [v2 navigationItem];
        v29 = [v28 standardAppearance];

        if (v29)
        {

          v10 = v29;
        }

        else
        {
          v30 = [v10 navigationBar];
          v31 = [v30 standardAppearance];

          v32 = [v31 copy];
          [v32 _setTitleControlHidden:1];
          v33 = [v2 navigationItem];
          v34 = v32;
          [v33 setStandardAppearance:v34];
        }

        goto LABEL_11;
      }
    }

    else if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_7:
  v12 = [v2 navigationItem];
  v13 = [v12 scrollEdgeAppearance];

  if (v13)
  {

    v14 = [v2 navigationItem];
    [v14 setScrollEdgeAppearance:0];
  }

  v15 = [v2 navigationItem];
  v16 = [v15 standardAppearance];

  if (v16)
  {

    v10 = [v2 navigationItem];
    [v10 setStandardAppearance:0];
LABEL_11:
  }
}

uint64_t sub_27147C()
{
  sub_6620C(&qword_3C8BD0);
  sub_2C4378();
  sub_2C2728();
  if (*(v3 + 16) == v0)
  {
    *(v3 + 16) = v0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_271B50();
    sub_2BE6E8();
  }

  sub_2C4378();
  sub_6620C(&qword_3C8BC8);
  type metadata accessor for PageHeightValue();
  sub_72B74(&qword_3C8BD8, &qword_3C8BC8);
  sub_271B50();
  sub_2C3E68();
}

void sub_271668(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_271B50();
    sub_2BE6E8();
  }
}

uint64_t sub_271750@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = sub_6620C(&qword_3C8BC8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v11 = *v2;
  v10 = v2[1];
  (*(v6 + 16))(&v15 - v8, a1, v5, v7);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  (*(v6 + 32))(v13 + v12, v9, v5);
  *a2 = sub_271D80;
  a2[1] = v13;
}

double sub_2718A8()
{
  swift_getKeyPath();
  sub_271B50();
  sub_2BE6F8();

  return *(v0 + 16);
}

double sub_271918@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_271B50();
  sub_2BE6F8();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_2719B8()
{
  v1 = OBJC_IVAR____TtC11BookStoreUIP33_0DEEC873F8B6EC960285D7AC6ECE87BB15PageHeightValue___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double EnvironmentValues.pageHeight.getter()
{
  type metadata accessor for PageHeightValue();
  sub_271B50();
  v0 = sub_2C3128();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_2BE6F8();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t type metadata accessor for PageHeightValue()
{
  result = qword_3C8B38;
  if (!qword_3C8B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_271B50()
{
  result = qword_3C7598;
  if (!qword_3C7598)
  {
    type metadata accessor for PageHeightValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7598);
  }

  return result;
}

uint64_t sub_271BDC()
{
  result = sub_2BE738();
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

uint64_t sub_271CA8()
{
  v1 = sub_6620C(&qword_3C8BC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_271D80()
{
  sub_6620C(&qword_3C8BC8);

  return sub_27147C();
}

double sub_271E10()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_271E8C()
{
  v1 = sub_6620C(&qword_3BE6C8);
  __chkstk_darwin(v1 - 8);
  v3 = v21 - v2;
  v4 = sub_6620C(&qword_3BE6D0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_2BEB08();
  __chkstk_darwin(v7 - 8);
  v8 = sub_2BE5F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C1828();
  __chkstk_darwin(v12 - 8);
  v13 = *v0;
  sub_6620C(&qword_3BC400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2E3F30;
  sub_2BE5E8();
  sub_1E2C58(v13, v11);
  v21[1] = v15;
  (*(v9 + 8))(v11, v8);
  v16 = enum case for FrameName.getStarted(_:);
  v17 = sub_2BF0C8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  v19 = sub_2BE8D8();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_2BEAF8();
  sub_2C1818();
  *(v14 + 56) = sub_2C0878();
  *(v14 + 64) = sub_272240();
  sub_720C8((v14 + 32));
  sub_2C0868();
  return v14;
}

unint64_t sub_272240()
{
  result = qword_3C8BF0;
  if (!qword_3C8BF0)
  {
    sub_2C0878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8BF0);
  }

  return result;
}

id ContextMenuAssetPropertyProvider.__allocating_init(assetInfo:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_691F8(a1, v3 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_68CD0(a1);
  return v4;
}

id ContextMenuAssetPropertyProvider.init(assetInfo:)(uint64_t a1)
{
  sub_691F8(a1, v1 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContextMenuAssetPropertyProvider();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_68CD0(a1);
  return v3;
}

uint64_t sub_272438()
{
  v1 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 24);
  v2 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 32);
  sub_72084((v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2724C8()
{
  v1 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 24);
  v2 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 32);
  sub_72084((v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo), v1);
  return qword_2F9940[(*(v2 + 16))(v1, v2)];
}

uint64_t sub_2725B0()
{
  v1 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 24);
  v2 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 32);
  sub_72084((v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo), v1);
  return (*(v2 + 152))(v1, v2) & 1;
}

BOOL sub_2726A4()
{
  v1 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 24);
  v2 = *(v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo + 32);
  sub_72084((v0 + OBJC_IVAR___BSUIContextMenuAssetPropertyProvider_assetInfo), v1);
  (*(v2 + 288))(v1, v2);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

id ContextMenuAssetPropertyProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuAssetPropertyProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2728E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6620C(&qword_3C2AB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_6620C(&qword_3BF8C8);
  v5 = sub_2C1078();
  sub_2BF778();

  if (v9)
  {
    sub_68D1C(&v8, v10);
    sub_72084(v10, v10[3]);
    sub_2BF2A8();
    sub_68CD0(v10);
  }

  else
  {
    sub_69198(&v8, &qword_3BDAD0);
    v6 = sub_2BF698();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  sub_275F9C(v4, a1);
  return sub_69198(v4, &qword_3C2AB8);
}

uint64_t sub_272A58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v2 - 8);
  v63 = (v58 - v3);
  v4 = sub_2BFDD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = v58 - v8;
  v73 = sub_2BFAC8();
  v71 = *(v73 - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = v58 - v11;
  v12 = sub_2BF408();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_6620C(&qword_3BF8C8);
  v16 = sub_2C1078();
  sub_2BF778();

  if (!v75)
  {
    sub_69198(&v74, &qword_3BDAD0);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v68 = v5;
  v69 = v4;
  v64 = v13;
  v65 = v12;
  v66 = a1;
  sub_68D1C(&v74, v76);
  sub_72084(v76, v77);
  v17 = v15;
  sub_2BF288();
  sub_72084(v76, v77);
  v18 = sub_2BF2C8();
  v20 = v19;
  sub_72084(v76, v77);
  v21 = sub_2BF2F8();
  v23 = v22;
  sub_72084(v76, v77);
  v24 = sub_2BF3D8();
  if (!v24 || !*(v24 + 16))
  {
    if ((v20 & 1) == 0)
    {

      v43 = v66;
      sub_173658(v18, v15, v66);
      (*(v64 + 8))(v15, v65);
      (*(v68 + 56))(v43, 0, 1, v69);
      return sub_68CD0(v76);
    }

    v39 = v68;
    if ((v23 & 1) == 0)
    {

      v44 = v66;
      sub_173C64(v21, v15, v66);
      (*(v64 + 8))(v15, v65);
      (*(v39 + 56))(v44, 0, 1, v69);
      return sub_68CD0(v76);
    }

    v40 = v69;
    v29 = v64;
    if (!v24)
    {
      (*(v64 + 8))(v15, v65);
      v41 = v66;
      goto LABEL_21;
    }

    v28 = v65;
    if (*(v24 + 16))
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v29 + 8))(v15, v28);

    v41 = v66;
    v39 = v68;
    v40 = v69;
LABEL_21:
    (*(v39 + 56))(v41, 1, 1, v40);
    return sub_68CD0(v76);
  }

  v25 = *(v71 + 16);
  v26 = *(v71 + 80);
  v61 = v24;
  v60 = v25;
  v25(v72, (v24 + ((v26 + 32) & ~v26)), v73);
  if ((v20 & 1) == 0)
  {
    v27 = v63;
    v59 = v17;
    sub_173658(v18, v17, v63);
LABEL_19:
    v45 = v68;
    v46 = *(v68 + 56);
    v58[1] = v68 + 56;
    v63 = v46;
    v47 = v69;
    (v46)(v27, 0, 1, v69);
    v58[0] = *(v45 + 32);
    v48 = v67;
    (v58[0])(v67, v27, v47);
    v60(v70, v72, v73);
    v49 = v62;
    (*(v45 + 16))(v62, v48, v47);
    v50 = (v26 + 16) & ~v26;
    v51 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + *(v45 + 80) + 8) & ~*(v45 + 80);
    v53 = swift_allocObject();
    v54 = v71;
    v55 = v53 + v50;
    v56 = v73;
    (*(v71 + 32))(v55, v70, v73);
    *(v53 + v51) = v61;
    (v58[0])(v53 + v52, v49, v47);
    v57 = v66;
    sub_2BFD88();

    (*(v45 + 8))(v67, v47);
    (*(v54 + 8))(v72, v56);
    (*(v64 + 8))(v59, v65);
    (v63)(v57, 0, 1, v47);
    return sub_68CD0(v76);
  }

  v27 = v63;
  if ((v23 & 1) == 0)
  {
    v59 = v17;
    sub_173C64(v21, v17, v63);
    goto LABEL_19;
  }

  (*(v71 + 8))(v72, v73);
  (*(v68 + 56))(v27, 1, 1, v69);
  sub_69198(v27, &qword_3BEF80);
  v24 = v61;
  v29 = v64;
  v28 = v65;
  v15 = v17;
  if (!*(v61 + 16))
  {
    goto LABEL_12;
  }

LABEL_7:
  v30 = v71;
  v31 = *(v71 + 80);
  v32 = *(v71 + 16);
  v33 = v28;
  v61 = v24;
  v34 = v70;
  v35 = v73;
  v32(v70, v24 + ((v31 + 32) & ~v31), v73);
  v36 = (v31 + 16) & ~v31;
  v37 = swift_allocObject();
  (*(v30 + 32))(v37 + v36, v34, v35);
  *(v37 + ((v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
  v38 = v66;
  sub_2BFD88();

  (*(v29 + 8))(v15, v33);
  (*(v68 + 56))(v38, 0, 1, v69);
  return sub_68CD0(v76);
}

uint64_t sub_2732D4()
{
  v1 = v0;
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_6620C(&qword_3BF8C8);
  v2 = sub_2C1078();
  v3 = sub_2BF8B8();

  if (!v3)
  {
    goto LABEL_10;
  }

  if (!(v3 >> 62))
  {
    result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_2C6398();
  if (!result)
  {
LABEL_9:

LABEL_10:
    v7 = sub_2BF7E8();
    goto LABEL_11;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    for (i = *(v3 + 32); ; i = sub_2C6208())
    {
      v6 = i;

      v7 = [v6 pagesAreRTL];

LABEL_11:
      v8 = sub_2C1078();
      v9 = sub_2BF878();

      if (v9)
      {
        v24 = v9;
        sub_6620C(&qword_3C6AB8);
        sub_72B74(&qword_3C6AC0, &qword_3C6AB8);
        v10 = sub_2C5D28();
        if (v10)
        {
          __chkstk_darwin(v10);
          v21 = v1;
          v22 = 0x4068000000000000;
          v23 = v7 & 1;
          v11 = sub_1981CC(sub_274B68, v20, v9);

          return v11;
        }
      }

      v12 = sub_2C1078();
      v13 = sub_2BF888();
      v15 = v14;

      v17 = v13 >= 3 ? 3 : v13;
      v18 = (v15 & 1) != 0 ? 3 : v17;
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    __chkstk_darwin(v16);
    v21 = v1;
    v22 = 0x4068000000000000;
    v23 = v7 & 1;
    return sub_286A30(sub_274B40, v20, 0, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_273558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_6620C(&qword_3BF8A8);
  __chkstk_darwin(v38);
  v39 = v35 - v3;
  v40 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v40);
  v5 = v35 - v4;
  v6 = sub_6620C(&qword_3BF8C8);
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v35 - v7;
  v9 = sub_6620C(&qword_3C8D48);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for SeriesEntityCardComponentModel();
  __chkstk_darwin(v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v14[*(v15 + 28)];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v46 = v16;
  sub_A9708(&v50, v16, &unk_3BDC90);
  v17 = *(v12 + 32);
  v18 = sub_2C5018();
  v19 = *(*(v18 - 8) + 56);
  v47 = v17;
  v19(&v14[v17], 1, 1, v18);
  v20 = *(v12 + 36);
  v21 = sub_2BEA58();
  v22 = *(*(v21 - 8) + 56);
  v48 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v49 = a1;
  sub_72084(a1, v23);
  sub_274F04();
  v44 = v11;
  v24 = v45;
  sub_2C67A8();
  if (v24)
  {
    v26 = v46;
    sub_68CD0(v49);
    v27 = v47;
    sub_69198(v26, &qword_3BE370);
    sub_69198(&v14[v27], &qword_3BF898);
    return sub_69198(&v14[v48], &qword_3BF8A8);
  }

  else
  {
    v45 = v12;
    v36 = v5;
    v25 = v42;
    LOBYTE(v50) = 0;
    *v14 = sub_2C6478() & 1;
    LOBYTE(v50) = 1;
    sub_72B74(&qword_3C8D58, &qword_3BF8C8);
    sub_2C64A8();
    v28 = v45;
    (*(v41 + 32))(&v14[*(v45 + 20)], v8, v6);
    sub_6620C(&qword_3BE378);
    v53 = 2;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    sub_2C64A8();
    v29 = v46;
    v30 = &v14[*(v28 + 24)];
    v31 = v51;
    *v30 = v50;
    *(v30 + 1) = v31;
    *(v30 + 4) = v52;
    sub_6620C(&qword_3BE370);
    v53 = 3;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    v35[1] = 0;
    sub_2C64A8();
    sub_A9708(&v50, v29, &qword_3BE370);
    LOBYTE(v50) = 4;
    sub_274F58(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
    v32 = v36;
    sub_2C64A8();
    sub_A9708(v32, &v14[v47], &qword_3BF898);
    LOBYTE(v50) = 5;
    sub_274F58(&qword_3C8D60, &qword_3BF8A8, &unk_2E8D40, sub_274FD4);
    v33 = v39;
    sub_2C64A8();
    (*(v25 + 8))(v44, v43);
    sub_A9708(v33, &v14[v48], &qword_3BF8A8);
    sub_2750D0(v14, v37);
    sub_68CD0(v49);
    return sub_275134(v14);
  }
}

uint64_t sub_273D50()
{
  v1 = *v0;
  v2 = 0x756F44776F6C6C61;
  v3 = 0x6575676573;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x657275736F707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6552736569726573;
  if (v1 != 1)
  {
    v5 = 25705;
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

uint64_t sub_273E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_273E48(uint64_t a1)
{
  v2 = sub_274F04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_273E84(uint64_t a1)
{
  v2 = sub_274F04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_273F2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6932C(v2 + *(a1 + 24), v6, &qword_3BE378);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double sub_273F88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6932C(v2 + *(a1 + 28), v6, &qword_3BE370);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_273FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 32), &v9 - v6, &qword_3BF898);
  return sub_E1DC8(v7, a2);
}

uint64_t sub_274094@<X0>(void **a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = sub_2C0D88();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  sub_2BF768();
  if (v34)
  {
    sub_68D1C(&v33, v35);
    sub_72084(v35, v35[3]);
    sub_2BF9F8();
    sub_2C0D78();
    sub_2C0DA8();
    v16 = sub_2C0DB8();
    (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
    return sub_68CD0(v35);
  }

  else
  {
    v32 = a2;
    sub_69198(&v33, &unk_3C2550);
    if (qword_3BB850 != -1)
    {
      swift_once();
    }

    v31 = a3;
    v18 = sub_2C00B8();
    sub_57AD8(v18, qword_3C3188);
    v19 = v15;
    v20 = sub_2C0098();
    v21 = sub_2C5DC8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30[1] = v5;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&dword_0, v20, v21, "Failed to convert store asset to assetInfo: %@", v23, 0xCu);
      sub_69198(v24, &qword_3BFEE0);
    }

    type metadata accessor for SeriesEntityCardComponentModel();
    sub_6620C(&qword_3BF8C8);
    v26 = sub_2C1078();
    sub_2BF5B8();
    v27 = swift_dynamicCastClass();

    *v14 = a5;
    if (v27)
    {
      v28 = &enum case for CoverViewModel.CoverStyle.placeholderAudiobook(_:);
    }

    else
    {
      *(v14 + 8) = v31 & 1;
      v28 = &enum case for CoverViewModel.CoverStyle.placeholderBook(_:);
    }

    (*(v12 + 104))(v14, *v28, v11);
    sub_2C0DA8();
    v29 = sub_2C0DB8();
    return (*(*(v29 - 8) + 56))(a4, 0, 1, v29);
  }
}

uint64_t sub_27443C(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_2C0D88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeriesEntityCardComponentModel();
  sub_6620C(&qword_3BF8C8);
  v10 = sub_2C1078();
  sub_2BF5B8();
  v11 = swift_dynamicCastClass();

  *v9 = a1;
  if (v11)
  {
    v12 = &enum case for CoverViewModel.CoverStyle.placeholderAudiobook(_:);
  }

  else
  {
    *(v9 + 8) = a4 & 1;
    v12 = &enum case for CoverViewModel.CoverStyle.placeholderBook(_:);
  }

  (*(v7 + 104))(v9, *v12, v6);
  return sub_2C0DA8();
}

uint64_t sub_2745BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BF8C8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_6620C(&qword_3BF898);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = sub_6620C(&qword_3BF8A8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_274768(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3BF8C8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_6620C(&qword_3BF898);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = sub_6620C(&qword_3BF8A8);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for SeriesEntityCardComponentModel()
{
  result = qword_3C8CE8;
  if (!qword_3C8CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27494C()
{
  sub_274A58();
  if (v0 <= 0x3F)
  {
    sub_A62E4();
    if (v1 <= 0x3F)
    {
      sub_A6360();
      if (v2 <= 0x3F)
      {
        sub_D7504(319, &qword_3C0940, &qword_3BDF58);
        if (v3 <= 0x3F)
        {
          sub_D7504(319, &unk_3C8D00, &qword_3BF8B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274A58()
{
  if (!qword_3C8CF8)
  {
    sub_2BF8D8();
    v0 = sub_2C1088();
    if (!v1)
    {
      atomic_store(v0, &qword_3C8CF8);
    }
  }
}

uint64_t sub_274B8C()
{
  v1 = sub_2BFAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_274C28(uint64_t a1)
{
  v3 = *(sub_2BFAC8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_174274(a1, v1 + v4, v5);
}

uint64_t sub_274CC4()
{
  v1 = sub_2BFAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BFDD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_274E20(void *a1)
{
  v3 = *(sub_2BFAC8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2BFDD8() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_17325C(a1, v1 + v4, v7, v8);
}

unint64_t sub_274F04()
{
  result = qword_3C8D50;
  if (!qword_3C8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8D50);
  }

  return result;
}

uint64_t sub_274F58(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274FD4()
{
  result = qword_3C8D68;
  if (!qword_3C8D68)
  {
    sub_718D4(&qword_3BF8B0);
    sub_275088(&qword_3C8D70, &type metadata accessor for ExposureData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8D68);
  }

  return result;
}

uint64_t sub_275088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2750D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesEntityCardComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275134(uint64_t a1)
{
  v2 = type metadata accessor for SeriesEntityCardComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2751A4()
{
  result = qword_3C8D78;
  if (!qword_3C8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8D78);
  }

  return result;
}

unint64_t sub_2751FC()
{
  result = qword_3C8D80;
  if (!qword_3C8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8D80);
  }

  return result;
}

unint64_t sub_275254()
{
  result = qword_3C8D88;
  if (!qword_3C8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8D88);
  }

  return result;
}

uint64_t sub_2752A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F44776F6C6C61 && a2 == 0xEF65646957656C62;
  if (v4 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552736569726573 && a2 == 0xEE00656372756F73 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144)
  {

    return 5;
  }

  else
  {
    v6 = sub_2C65B8();

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

Class sub_2754B4()
{
  v1 = v0;
  v2 = sub_2C4BF8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_2C5628();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v46 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = [Strong presentingViewController], v10, v11) && (v12 = objc_msgSend(v11, "bc_canCloseAsset"), v11, v12))
  {
    sub_1DA078();
    v13 = 1;
  }

  else
  {
    sub_1DA078();
    v13 = 0;
  }

  sub_2C4BE8();
  sub_2C55C8();
  sub_2C5588();
  v44 = v3;
  v45 = &protocol witness table for Models.FlowBackAction;
  v14 = sub_720C8(v43);
  v39 = v8;
  v40 = v4;
  v36[0] = *(v4 + 16);
  (v36[0])(v14, v8, v3);
  v15 = sub_66278(0, &qword_3BDC70);
  v16 = swift_allocObject();
  v38 = v1;
  swift_unknownObjectWeakInit();
  sub_691F8(v43, v42);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_693D0(v42, v17 + 24);
  v36[1] = v15;
  sub_2C6018();
  sub_68CD0(v43);
  sub_2C5B08();
  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_2C5B48();
  }

  sub_2C5B78();
  v18 = v40;
  if (v13)
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 presentingViewController];

      if (v21)
      {
        v22 = [v21 im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BCRootBarStringForReturnToRootBarItemProviding];

        if (v22)
        {
          v41 = &OBJC_PROTOCOL___BCRootBarStringForReturnToRootBarItemProviding;
          v23 = swift_dynamicCastObjCProtocolConditional();
          if (v23)
          {
            v24 = [v23 bc_stringForReturnToRootBarItem];
            v25 = v37;
            if (v24)
            {
              v26 = v24;
              sub_2C58C8();

              v18 = v40;
LABEL_17:
              sub_2C4BE8();
              sub_2C55D8();
              sub_2C5588();
              v44 = v3;
              v45 = &protocol witness table for Models.FlowBackAction;
              v27 = sub_720C8(v43);
              (v36[0])(v27, v25, v3);
              v28 = swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_691F8(v43, v42);
              v29 = swift_allocObject();
              *(v29 + 16) = v28;
              sub_693D0(v42, v29 + 24);
              sub_2C6018();
              sub_68CD0(v43);
              sub_2C5B08();
              if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_2C5B48();
              }

              sub_2C5B78();
              swift_unknownObjectRelease();
              (*(v18 + 8))(v25, v3);
              goto LABEL_20;
            }

LABEL_16:
            sub_1DA078();
            goto LABEL_17;
          }
        }
      }
    }

    v25 = v37;
    goto LABEL_16;
  }

LABEL_20:
  v30 = v46;
  if (v46 >> 62)
  {
    sub_66278(0, &qword_3C0240);

    v31 = sub_2C6388();
  }

  else
  {

    sub_2C65F8();
    sub_66278(0, &qword_3C0240);
    v31 = v30;
  }

  sub_66278(0, &qword_3BDC60);
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v32.value = 0;
  isa = sub_2C5F58(v48, v49, v47, v32, 0xFFFFFFFFFFFFFFFFLL, v31, v35).super.super.isa;
  (*(v18 + 8))(v39, v3);
  return isa;
}

id sub_275C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_275C7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_275CB8()
{

  sub_68CD0(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

objc_class *sub_275CF8()
{
  v0 = sub_2C5118();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C4BF8();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for DismissBarButtonItem();
  v14.value.super.super.isa = 0;
  v14.is_nil = 0;
  isa = sub_2C5E08(UIBarButtonSystemItemClose, v14, v15).super.super.isa;
  sub_2C4BE8();
  sub_2C55F8();
  *(&v12 + 1) = sub_2C5628();
  v13 = &protocol witness table for Models.FlowBackAction;
  sub_720C8(&v11);
  sub_2C5588();
  v6 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  swift_beginAccess();
  sub_9694C(&v11, isa + v6);
  swift_endAccess();
  sub_2AE468();
  sub_69198(&v11, &unk_3BDC90);
  *(isa + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_shouldDisableForRestrictedBook) = 0;
  sub_2ADC74();
  v7 = isa;
  sub_1DA078();
  v8 = sub_2C5888();

  [(objc_class *)v7 setAccessibilityLabel:v8];

  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_2C50B8();
  sub_69198(v10, qword_3C0250);
  sub_69198(&v11, qword_3C0250);
  sub_2C5F08();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_275F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = sub_6620C(&qword_3C39B0);
  v4 = __chkstk_darwin(v3 - 8);
  v130 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v131 = &v126 - v6;
  v7 = sub_2C5418();
  v8 = *(v7 - 8);
  v137 = v7;
  v138 = v8;
  __chkstk_darwin(v7);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C5288();
  v139 = *(v10 - 8);
  v140 = v10;
  v11 = __chkstk_darwin(v10);
  v129 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v141 = &v126 - v13;
  v14 = sub_2BF648();
  v134 = *(v14 - 8);
  v135 = v14;
  v15 = __chkstk_darwin(v14);
  v128 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v132 = (&v126 - v18);
  v19 = __chkstk_darwin(v17);
  v133 = &v126 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v126 - v22;
  __chkstk_darwin(v21);
  v25 = &v126 - v24;
  v26 = sub_2BF658();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_6620C(&qword_3C2AB8);
  __chkstk_darwin(v30 - 8);
  v32 = &v126 - v31;
  v33 = sub_2BF698();
  __chkstk_darwin(v33);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v38 = v37;
  sub_2776CC(v36, v32);
  if ((v38[6])(v32, 1, v33) != 1)
  {
    v38[4](v35, v32, v33);
    sub_2BF678();
    v41 = (*(v27 + 88))(v29, v26);
    v42 = v33;
    if (v41 == enum case for SeriesArtistInfo.ArtistPlurality.variousArtists(_:))
    {
      sub_2BF668();
      v43 = (*(v134 + 11))(v25, v135);
      if (v43 == enum case for SeriesArtistInfo.ArtistType.author(_:))
      {
        v44 = v38;
        v45 = v141;
        sub_2C5278();
        v47 = v137;
        v46 = v138;
        v48 = v136;
        (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
        v40 = v142;
LABEL_14:
        sub_2BFD98();
        (*(v46 + 8))(v48, v47);
        (*(v139 + 8))(v45, v140);
        (v44[1])(v35, v42);
LABEL_15:
        v39 = 0;
        goto LABEL_43;
      }

      v40 = v142;
      if (v43 == enum case for SeriesArtistInfo.ArtistType.narrator(_:))
      {
        v44 = v38;
        v45 = v141;
        sub_2C5278();
        v47 = v137;
        v46 = v138;
        v48 = v136;
        (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
        goto LABEL_14;
      }

      while (1)
      {
LABEL_65:
        sub_2C6378();
        __break(1u);
      }
    }

    if (v41 == enum case for SeriesArtistInfo.ArtistPlurality.oneArtist(_:))
    {
      v49 = sub_2BF688();
      v40 = v142;
      if (v49)
      {
        if (v49[2])
        {
          v50 = v142;
          v127 = v33;
          v51 = v38;
          v53 = v49[4];
          v52 = v49[5];

          sub_2BF668();
          v54 = (*(v134 + 11))(v23, v135);
          if (v54 == enum case for SeriesArtistInfo.ArtistType.author(_:))
          {
            sub_6620C(&unk_3C44C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2E3F30;
            *(inited + 32) = 0x747369747261;
            v56 = inited + 32;
            *(inited + 40) = 0xE600000000000000;
            *(inited + 48) = v53;
            *(inited + 56) = v52;
            sub_677B4(inited);
            swift_setDeallocating();
            sub_69198(v56, &qword_3BD8A0);
            v57 = v141;
            sub_2C5278();
            v59 = v137;
            v58 = v138;
            v60 = v136;
            (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
          }

          else
          {
            if (v54 != enum case for SeriesArtistInfo.ArtistType.narrator(_:))
            {
              goto LABEL_65;
            }

            sub_6620C(&unk_3C44C0);
            v112 = swift_initStackObject();
            *(v112 + 16) = xmmword_2E3F30;
            *(v112 + 32) = 0x7472417473726966;
            v113 = v112 + 32;
            *(v112 + 40) = 0xEB00000000747369;
            *(v112 + 48) = v53;
            *(v112 + 56) = v52;
            sub_677B4(v112);
            swift_setDeallocating();
            sub_69198(v113, &qword_3BD8A0);
            v57 = v141;
            sub_2C5278();
            v59 = v137;
            v58 = v138;
            v60 = v136;
            (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
          }

          sub_2BFD98();
          v40 = v50;

          (*(v58 + 8))(v60, v59);
          (*(v139 + 8))(v57, v140);
          (v51[1])(v35, v127);
          goto LABEL_15;
        }

        goto LABEL_41;
      }

LABEL_42:
      (v38[1])(v35, v33);
      v39 = 1;
      goto LABEL_43;
    }

    v40 = v142;
    if (v41 == enum case for SeriesArtistInfo.ArtistPlurality.twoArtists(_:))
    {
      v61 = sub_2BF688();
      if (!v61)
      {
        goto LABEL_42;
      }

      if (v61[2])
      {
        v62 = v40;
        v127 = v33;
        v132 = v38;
        v64 = v61[4];
        v63 = v61[5];

        v65 = sub_2BF688();
        if (!v65)
        {
          v132[1](v35, v127);

          v39 = 1;
          v40 = v62;
          goto LABEL_43;
        }

        if (v65[2] >= 2uLL)
        {
          v67 = v65[6];
          v66 = v65[7];

          v68 = v133;
          sub_2BF668();
          v69 = (*(v134 + 11))(v68, v135);
          if (v69 == enum case for SeriesArtistInfo.ArtistType.author(_:) || v69 == enum case for SeriesArtistInfo.ArtistType.narrator(_:))
          {
            sub_6620C(&unk_3C44C0);
            v114 = swift_initStackObject();
            *(v114 + 16) = xmmword_2E15C0;
            *(v114 + 32) = 0x7472417473726966;
            *(v114 + 40) = 0xEB00000000747369;
            *(v114 + 48) = v64;
            *(v114 + 56) = v63;
            strcpy((v114 + 64), "secondArtist");
            *(v114 + 77) = 0;
            *(v114 + 78) = -5120;
            *(v114 + 80) = v67;
            *(v114 + 88) = v66;
            sub_677B4(v114);
            swift_setDeallocating();
            sub_6620C(&qword_3BD8A0);
            swift_arrayDestroy();
            v115 = v141;
            sub_2C5278();
            v117 = v137;
            v116 = v138;
            v118 = v136;
            (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
            sub_2BFD98();
            v40 = v62;

            (*(v116 + 8))(v118, v117);
            (*(v139 + 8))(v115, v140);
            v132[1](v35, v127);
            goto LABEL_15;
          }

          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_61;
      }

LABEL_41:

      goto LABEL_42;
    }

    if (v41 == enum case for SeriesArtistInfo.ArtistPlurality.threeArtists(_:))
    {
      v70 = sub_2BF688();
      if (!v70)
      {
        goto LABEL_42;
      }

      if (!v70[2])
      {
        goto LABEL_41;
      }

      v71 = v40;
      v72 = v38;
      v74 = v70[4];
      v73 = v70[5];

      v75 = sub_2BF688();
      if (v75)
      {
        if (v75[2] >= 2uLL)
        {
          v77 = v75[6];
          v76 = v75[7];

          v78 = sub_2BF688();
          if (!v78)
          {
            (v72[1])(v35, v42);

            goto LABEL_3;
          }

          v127 = v42;
          if (v78[2] >= 3uLL)
          {
            v79 = v78[8];
            v80 = v78[9];

            v81 = v132;
            sub_2BF668();
            v82 = (*(v134 + 11))(v81, v135);
            if (v82 == enum case for SeriesArtistInfo.ArtistType.author(_:))
            {
              v135 = "@thirdArtist@@⁩";
              sub_6620C(&unk_3C44C0);
              v83 = swift_initStackObject();
              *(v83 + 16) = xmmword_2E4110;
              *(v83 + 32) = 0x7472417473726966;
              *(v83 + 40) = 0xEB00000000747369;
              *(v83 + 48) = v74;
              *(v83 + 56) = v73;
              strcpy((v83 + 64), "secondArtist");
              *(v83 + 77) = 0;
              *(v83 + 78) = -5120;
              *(v83 + 80) = v77;
              *(v83 + 88) = v76;
              *(v83 + 96) = 0x7472416472696874;
              *(v83 + 104) = 0xEB00000000747369;
              *(v83 + 112) = v79;
              *(v83 + 120) = v80;
              sub_677B4(v83);
              swift_setDeallocating();
              sub_6620C(&qword_3BD8A0);
              swift_arrayDestroy();
              v84 = v141;
              sub_2C5278();
              v86 = v137;
              v85 = v138;
              v87 = v136;
              (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
            }

            else
            {
              v135 = v79;
              if (v82 != enum case for SeriesArtistInfo.ArtistType.narrator(_:))
              {
                goto LABEL_65;
              }

              v134 = "⁨@@count@@ other⁩";
              sub_6620C(&unk_3C44C0);
              v119 = swift_initStackObject();
              *(v119 + 16) = xmmword_2E4110;
              *(v119 + 32) = 0x7472417473726966;
              *(v119 + 40) = 0xEB00000000747369;
              *(v119 + 48) = v74;
              *(v119 + 56) = v73;
              strcpy((v119 + 64), "secondArtist");
              *(v119 + 77) = 0;
              *(v119 + 78) = -5120;
              *(v119 + 80) = v77;
              *(v119 + 88) = v76;
              *(v119 + 96) = 0x7472416472696874;
              *(v119 + 104) = 0xEB00000000747369;
              *(v119 + 112) = v135;
              *(v119 + 120) = v80;
              sub_677B4(v119);
              swift_setDeallocating();
              sub_6620C(&qword_3BD8A0);
              swift_arrayDestroy();
              v84 = v141;
              sub_2C5278();
              v86 = v137;
              v85 = v138;
              v87 = v136;
              (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
            }

            v120 = v142;
            sub_2BFD98();
            v40 = v120;

            (*(v85 + 8))(v87, v86);
            (*(v139 + 8))(v84, v140);
            (v72[1])(v35, v127);
            goto LABEL_15;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      (v38[1])(v35, v42);
    }

    else
    {
      if (v41 != enum case for SeriesArtistInfo.ArtistPlurality.fourOrMoreArtists(_:))
      {
        goto LABEL_65;
      }

      v88 = sub_2BF638();
      if (v89)
      {
        goto LABEL_42;
      }

      v90 = v88;
      v91 = sub_2BF688();
      if (!v91)
      {
        goto LABEL_42;
      }

      if (!v91[2])
      {
        goto LABEL_41;
      }

      v71 = v40;
      v127 = v33;
      v132 = v38;
      v93 = v91[4];
      v92 = v91[5];

      v94 = sub_2BF688();
      if (v94)
      {
        if (v94[2] >= 2uLL)
        {
          v96 = v94[6];
          v95 = v94[7];

          v97 = (v90 - 2);
          if (!__OFSUB__(v90, 2))
          {
            v98 = v128;
            sub_2BF668();
            v99 = (*(v134 + 11))(v98, v135);
            v133 = v97;
            if (v99 == enum case for SeriesArtistInfo.ArtistType.author(_:))
            {
              v135 = "@count@@ other⁩";
              sub_6620C(&unk_3C44C0);
              v100 = swift_initStackObject();
              *(v100 + 16) = xmmword_2E15C0;
              *(v100 + 32) = 0x7472417473726966;
              *(v100 + 40) = 0xEB00000000747369;
              *(v100 + 48) = v93;
              *(v100 + 56) = v92;
              strcpy((v100 + 64), "secondArtist");
              *(v100 + 77) = 0;
              *(v100 + 78) = -5120;
              *(v100 + 80) = v96;
              *(v100 + 88) = v95;
              sub_677B4(v100);
              swift_setDeallocating();
              sub_6620C(&qword_3BD8A0);
              swift_arrayDestroy();
              sub_2C5278();
              v101 = v129;
              sub_2C5278();
              v102 = v139;
              v103 = v140;
              v104 = *(v139 + 56);
              v105 = v131;
              v104(v131, 1, 1, v140);
              v106 = v130;
              v104(v130, 1, 1, v103);
              v108 = v137;
              v107 = v138;
              v109 = v136;
              (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
            }

            else
            {
              if (v99 != enum case for SeriesArtistInfo.ArtistType.narrator(_:))
              {
                goto LABEL_65;
              }

              v135 = "dation could be outdated.";
              sub_6620C(&unk_3C44C0);
              v121 = swift_initStackObject();
              *(v121 + 16) = xmmword_2E15C0;
              *(v121 + 32) = 0x7472417473726966;
              *(v121 + 40) = 0xEB00000000747369;
              *(v121 + 48) = v93;
              *(v121 + 56) = v92;
              strcpy((v121 + 64), "secondArtist");
              *(v121 + 77) = 0;
              *(v121 + 78) = -5120;
              *(v121 + 80) = v96;
              *(v121 + 88) = v95;
              sub_677B4(v121);
              swift_setDeallocating();
              sub_6620C(&qword_3BD8A0);
              swift_arrayDestroy();
              sub_2C5278();
              v101 = v129;
              sub_2C5278();
              v102 = v139;
              v122 = v140;
              v123 = *(v139 + 56);
              v105 = v131;
              v123(v131, 1, 1, v140);
              v106 = v130;
              v123(v130, 1, 1, v122);
              v108 = v137;
              v107 = v138;
              v109 = v136;
              (*(v138 + 104))(v136, enum case for LocalizerLookupStrategy.default(_:), v137);
            }

            sub_2BFD78();

            (*(v107 + 8))(v109, v108);
            sub_69198(v106, &qword_3C39B0);
            sub_69198(v105, &qword_3C39B0);
            v124 = *(v102 + 8);
            v125 = v140;
            v124(v101, v140);
            v124(v141, v125);
            v40 = v142;
            v132[1](v35, v127);
            goto LABEL_15;
          }

          goto LABEL_64;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v132[1](v35, v127);
    }

    v39 = 1;
    v40 = v71;
    goto LABEL_43;
  }

  sub_69198(v32, &qword_3C2AB8);
LABEL_3:
  v39 = 1;
  v40 = v142;
LABEL_43:
  v110 = sub_2BFDD8();
  return (*(*(v110 - 8) + 56))(v40, v39, 1, v110);
}