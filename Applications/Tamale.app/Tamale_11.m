uint64_t sub_100137530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v89 = a1;
  v4 = type metadata accessor for Logger();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = __chkstk_darwin(v4);
  v86 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = (&v68 - v7);
  v8 = sub_1000033A8(&qword_1001DBBA8);
  v72 = *(v8 - 8);
  v74 = *(v72 + 64);
  __chkstk_darwin(v8 - 8);
  v83 = &v68 - v9;
  v76 = type metadata accessor for ContentView();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = v10;
  v81 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v11 - 8);
  v82 = &v68 - v12;
  v13 = sub_1000033A8(&qword_1001D8F08);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for ActionPin.Pill();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v80 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v68 - v20;
  v21 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v21 - 8);
  v23 = &v68 - v22;
  v24 = type metadata accessor for ActionPin();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v27 = __chkstk_darwin(v24);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  v84 = a2;
  NewEntityModel.pin.getter();
  if ((*(v25 + 6))(v23, 1, v24) == 1)
  {
    sub_10001370C(v23, &qword_1001D44C8);
    v30 = v86;
    static Log.ui.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempting to execute action but did not have an associated pin.", v33, 2u);
    }

    v34 = *(v87 + 8);
    v35 = v30;
    goto LABEL_5;
  }

  v86 = v25;
  v37 = *(v25 + 4);
  v75 = v29;
  v68 = v37;
  v37(v29, v23, v24);
  NewActionModel.pill.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10001370C(v15, &qword_1001D8F08);
    v38 = v77;
    static Log.ui.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Attempting to execute action but did not have an associated pill.", v41, 2u);
    }

    (*(v87 + 8))(v38, v88);
    v34 = *(v86 + 1);
    v35 = v75;
    v36 = v24;
    return v34(v35, v36);
  }

  v43 = v16;
  v88 = v24;
  v69 = v17;
  v44 = *(v17 + 32);
  v45 = v85;
  v87 = v17 + 32;
  v77 = v44;
  v44();
  type metadata accessor for AskAcmeRequirementManager();
  v46 = v76;
  v47 = v78;
  v48 = (v78 + *(v76 + 52));
  v50 = *v48;
  v49 = v48[1];
  v90 = v50;
  v91 = v49;
  sub_1000033A8(&qword_1001DB780);
  State.wrappedValue.getter();

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_10013FB34(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);
  ConfigStorage.hasOnboardedACME.getter();

  v51 = AskAcmeRequirementManager.__allocating_init(hasOnboardedACME:)();
  if (*(v47 + *(v46 + 188)) & 1) == 0 && (sub_100128A1C(v45, v51))
  {
    sub_100129284(v45, v51);

    (*(v69 + 8))(v45, v43);
    v34 = *(v86 + 1);
    v35 = v75;
LABEL_5:
    v36 = v88;
    return v34(v35, v36);
  }

  v76 = v51;
  v52 = NewActionModel.isStreamingAction.getter();
  v53 = v75;
  if ((v52 & 1) == 0)
  {
    sub_100136E04();
  }

  v54 = type metadata accessor for TaskPriority();
  (*(*(v54 - 8) + 56))(v82, 1, 1, v54);
  sub_10013DAC8(v47, v81, type metadata accessor for ContentView);
  v55 = v86;
  (*(v86 + 2))(v79, v53, v88);
  v56 = v69;
  (*(v69 + 16))(v80, v45, v43);
  sub_1000138BC(v73, v83, &qword_1001DBBA8);
  type metadata accessor for MainActor();

  v57 = static MainActor.shared.getter();
  v58 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v59 = (v71 + *(v55 + 80) + v58) & ~*(v55 + 80);
  v60 = (v26 + *(v56 + 80) + v59) & ~*(v56 + 80);
  v61 = (v18 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = v43;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (*(v72 + 80) + v62 + 8) & ~*(v72 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = v57;
  *(v64 + 24) = &protocol witness table for MainActor;
  sub_100136D64(v81, v64 + v58, type metadata accessor for ContentView);
  v65 = v88;
  v68(v64 + v59, v79, v88);
  v66 = v78;
  (v77)(v64 + v60, v80, v78);
  *(v64 + v61) = v89;
  v67 = v83;
  *(v64 + v62) = v84;
  sub_10002091C(v67, v64 + v63, &qword_1001DBBA8);
  sub_1000154EC(0, 0, v82, &unk_10017BBF8, v64);

  (*(v69 + 8))(v85, v66);
  return v55[1](v75, v65);
}

uint64_t sub_100137F6C()
{
  v1 = type metadata accessor for ContentView();
  v54 = *(*(v1 - 1) + 80);
  v2 = (v54 + 32) & ~v54;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ActionPin();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = (v2 + v3 + *(v51 + 80)) & ~*(v51 + 80);
  v6 = *(v51 + 64);
  v56 = type metadata accessor for ActionPin.Pill();
  v49 = *(v56 - 8);
  v50 = v5;
  v48 = (v5 + v6 + *(v49 + 80)) & ~*(v49 + 80);
  v7 = *(v49 + 64) + v48;
  v53 = *(*(sub_1000033A8(&qword_1001DBBA8) - 8) + 80);
  swift_unknownObjectRelease();
  v8 = v0 + v2;
  sub_100133E10(*(v0 + v2), *(v0 + v2 + 8));
  sub_100133E10(*(v8 + 16), *(v8 + 24));

  sub_1000357B8();
  v9 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  v55 = v0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v7 + 7;
  v12 = v8 + v1[10];
  v13 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v13 - 8) + 8))(v12, v13);
  v46 = type metadata accessor for AppConfiguration();
  v47 = v12;
  v14 = v12 + *(v46 + 20);
  v15 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = type metadata accessor for CameraControllerConfiguration(0);
  v17 = v16[14];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v14 + v17, 1, v18))
  {
    (*(v19 + 8))(v14 + v17, v18);
  }

  v21 = v11 & 0xFFFFFFFFFFFFFFF8;
  v22 = v16[17];
  if (!v20(v14 + v22, 1, v18))
  {
    (*(v19 + 8))(v14 + v22, v18);
  }

  v23 = v16[21];
  if (!v20(v14 + v23, 1, v18))
  {
    (*(v19 + 8))(v14 + v23, v18);
  }

  v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v46 + 28);
  v26 = type metadata accessor for MapsConfiguration();
  (*(*(v26 - 8) + 8))(v47 + v25, v26);

  sub_1000033A8(&qword_1001DB7A0);

  v27 = v8 + v1[11];
  v28 = type metadata accessor for ResultLookupState();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v8 + v1[21]), *(v8 + v1[21] + 8), *(v8 + v1[21] + 16));

  v30 = v8 + v1[23];
  v31 = type metadata accessor for FocusSelection();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v33 = *(v49 + 8);
  v33(v8 + v1[66], v56);
  v33(v8 + v1[67], v56);
  v34 = v8 + v1[68];
  v35 = type metadata accessor for VisualIntelligenceFrameEntity();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  v37 = (v24 + v53 + 8) & ~v53;
  sub_1000033A8(&qword_1001DB7B8);

  v38 = v8 + v1[70];
  v39 = type metadata accessor for AccessibilityTechnologies();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v38, 1, v39))
  {
    (*(v40 + 8))(v38, v39);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v41 = v1[72];
  v42 = sub_1000033A8(&qword_1001DB778);
  (*(*(v42 - 8) + 8))(v8 + v41, v42);

  (*(v51 + 8))(v55 + v50, v52);
  v33(v55 + v48, v56);

  v43 = type metadata accessor for ActionAnalytics.ActionSource();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v55 + v37, 1, v43))
  {
    (*(v44 + 8))(v55 + v37, v43);
  }

  return swift_deallocObject();
}

uint64_t sub_100138BD4(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ActionPin() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for ActionPin.Pill() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1000033A8(&qword_1001DBBA8);
  v13 = *(v1 + v11);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v12);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_100019774;

  return sub_10012AB74(a1, v14, v15, v1 + v4, v1 + v7, v1 + v10, v13, v16);
}

uint64_t sub_100138E24(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_100129B84(a1, v6, v7, v1 + v5);
}

uint64_t sub_100138F34(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019340;

  return sub_1000F95D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139024(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012DCBC(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139114(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012D8B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139204(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012D4E8(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139374(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LoggingSignposter() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContentView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100019774;

  return sub_10012E324(a1, v10, v11, v1 + v6, v1 + v9);
}

id sub_1001394C4(uint64_t a1)
{
  v1 = [[UIImage alloc] _initWithIOSurface:a1 imageOrientation:0];

  return v1;
}

uint64_t sub_10013957C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001395B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001395F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_100109ABC(a1, v4, v5, v6);
}

uint64_t sub_1001396A8(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012BCE0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139798(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012C104(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139888(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10012B874(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001399DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100139A0C(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_100124D10(a1, v6, v7, v1 + v5);
}

uint64_t sub_100139B2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100139BB8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100139C28(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ContentView();
  v42 = *(*(v6 - 1) + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = v1 + ((v4 + v5 + v42) & ~v42);
  sub_100133E10(*v7, *(v7 + 8));
  sub_100133E10(*(v7 + 16), *(v7 + 24));

  sub_1000357B8();
  v8 = v6[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v7 + v6[10];
  v11 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v11 - 8) + 8))(v10, v11);
  v41 = type metadata accessor for AppConfiguration();
  v12 = v10 + *(v41 + 20);
  v13 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for CameraControllerConfiguration(0);
  v15 = v14[14];
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v12 + v15, 1, v16))
  {
    (*(v17 + 8))(v12 + v15, v16);
  }

  v19 = v14[17];
  if (!v18(v12 + v19, 1, v16))
  {
    (*(v17 + 8))(v12 + v19, v16);
  }

  v20 = v14[21];
  if (!v18(v12 + v20, 1, v16))
  {
    (*(v17 + 8))(v12 + v20, v16);
  }

  v21 = *(v41 + 28);
  v22 = type metadata accessor for MapsConfiguration();
  (*(*(v22 - 8) + 8))(v10 + v21, v22);

  sub_1000033A8(&qword_1001DB7A0);

  v23 = v7 + v6[11];
  v24 = type metadata accessor for ResultLookupState();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    (*(v25 + 8))(v23, v24);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v7 + v6[21]), *(v7 + v6[21] + 8), *(v7 + v6[21] + 16));

  v26 = v7 + v6[23];
  v27 = type metadata accessor for FocusSelection();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v29 = v6[66];
  v30 = type metadata accessor for ActionPin.Pill();
  v31 = *(*(v30 - 8) + 8);
  v31(v7 + v29, v30);
  v31(v7 + v6[67], v30);
  v32 = v7 + v6[68];
  v33 = type metadata accessor for VisualIntelligenceFrameEntity();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v32, 1, v33))
  {
    (*(v34 + 8))(v32, v33);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v35 = v7 + v6[70];
  v36 = type metadata accessor for AccessibilityTechnologies();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v35, 1, v36))
  {
    (*(v37 + 8))(v35, v36);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v38 = v6[72];
  v39 = sub_1000033A8(&qword_1001DB778);
  (*(*(v39 - 8) + 8))(v7 + v38, v39);

  return swift_deallocObject();
}

uint64_t sub_10013A708(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VITapToRadarInvocation.ActionType() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContentView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100019774;

  return sub_1001062C0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A858()
{
  type metadata accessor for ContentView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_100106D08();
}

unint64_t sub_10013A950()
{
  result = qword_1001DBC20;
  if (!qword_1001DBC20)
  {
    sub_10001276C(&qword_1001DBC18);
    sub_10013A9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC20);
  }

  return result;
}

unint64_t sub_10013A9DC()
{
  result = qword_1001DBC28;
  if (!qword_1001DBC28)
  {
    sub_10001276C(&qword_1001DBC30);
    sub_10013AA68();
    sub_10013AB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC28);
  }

  return result;
}

unint64_t sub_10013AA68()
{
  result = qword_1001DBC38;
  if (!qword_1001DBC38)
  {
    sub_10001276C(&qword_1001DBC40);
    sub_100013608(&qword_1001DBC48, &qword_1001DBC50);
    sub_100013608(&qword_1001D5278, &qword_1001D5280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC38);
  }

  return result;
}

unint64_t sub_10013AB4C()
{
  result = qword_1001DBC58;
  if (!qword_1001DBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC58);
  }

  return result;
}

unint64_t sub_10013ABB8()
{
  result = qword_1001DBC88;
  if (!qword_1001DBC88)
  {
    sub_10001276C(&qword_1001DBC78);
    sub_10013AC70();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC88);
  }

  return result;
}

unint64_t sub_10013AC70()
{
  result = qword_1001DBC90;
  if (!qword_1001DBC90)
  {
    sub_10001276C(&qword_1001DBC98);
    sub_10013AD2C();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBC90);
  }

  return result;
}

unint64_t sub_10013AD2C()
{
  result = qword_1001DBCA0;
  if (!qword_1001DBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCA0);
  }

  return result;
}

unint64_t sub_10013AD80()
{
  result = qword_1001DBCA8;
  if (!qword_1001DBCA8)
  {
    sub_10001276C(&qword_1001DBC68);
    sub_10013AE38();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCA8);
  }

  return result;
}

unint64_t sub_10013AE38()
{
  result = qword_1001DBCB0;
  if (!qword_1001DBCB0)
  {
    sub_10001276C(&qword_1001DBC60);
    sub_100013360();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCB0);
  }

  return result;
}

uint64_t sub_10013AF48()
{
  v2 = *(type metadata accessor for ContentView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100019774;

  return sub_10010525C(v4, v5, v0 + v3);
}

unint64_t sub_10013B024()
{
  result = qword_1001DBCD8;
  if (!qword_1001DBCD8)
  {
    sub_10001276C(&qword_1001DBCC8);
    sub_10013B0B0();
    sub_10013B27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCD8);
  }

  return result;
}

unint64_t sub_10013B0B0()
{
  result = qword_1001DBCE0;
  if (!qword_1001DBCE0)
  {
    sub_10001276C(&qword_1001DBCE8);
    sub_10013B134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCE0);
  }

  return result;
}

unint64_t sub_10013B134()
{
  result = qword_1001DBCF0;
  if (!qword_1001DBCF0)
  {
    sub_10001276C(&qword_1001DBCF8);
    sub_10013B1F0();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBCF0);
  }

  return result;
}

unint64_t sub_10013B1F0()
{
  result = qword_1001DBD00;
  if (!qword_1001DBD00)
  {
    sub_10001276C(&qword_1001DBD08);
    sub_100013C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD00);
  }

  return result;
}

unint64_t sub_10013B27C()
{
  result = qword_1001DBD10;
  if (!qword_1001DBD10)
  {
    sub_10001276C(&qword_1001DBD18);
    sub_10013B308();
    sub_10013B5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD10);
  }

  return result;
}

unint64_t sub_10013B308()
{
  result = qword_1001DBD20;
  if (!qword_1001DBD20)
  {
    sub_10001276C(&qword_1001DBD28);
    sub_10001276C(&qword_1001DBD30);
    sub_10001276C(&qword_1001DBD38);
    sub_10013B460();
    sub_100013608(&qword_1001DBD68, &qword_1001DBD38);
    swift_getOpaqueTypeConformance2();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD20);
  }

  return result;
}

unint64_t sub_10013B460()
{
  result = qword_1001DBD40;
  if (!qword_1001DBD40)
  {
    sub_10001276C(&qword_1001DBD30);
    sub_10013B4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD40);
  }

  return result;
}

unint64_t sub_10013B4EC()
{
  result = qword_1001DBD48;
  if (!qword_1001DBD48)
  {
    sub_10001276C(&qword_1001DBD50);
    sub_100013608(&qword_1001DBD58, &qword_1001DBD60);
    sub_100013608(&qword_1001DA868, &qword_1001DA870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD48);
  }

  return result;
}

unint64_t sub_10013B5D0()
{
  result = qword_1001DBD70;
  if (!qword_1001DBD70)
  {
    sub_10001276C(&qword_1001DBD78);
    sub_10013B65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD70);
  }

  return result;
}

unint64_t sub_10013B65C()
{
  result = qword_1001DBD80;
  if (!qword_1001DBD80)
  {
    sub_10001276C(&qword_1001DBD88);
    sub_10013B718();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD80);
  }

  return result;
}

unint64_t sub_10013B718()
{
  result = qword_1001DBD90;
  if (!qword_1001DBD90)
  {
    sub_10001276C(&qword_1001DBD98);
    sub_10013B7D0();
    sub_100013608(&qword_1001DA868, &qword_1001DA870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBD90);
  }

  return result;
}

unint64_t sub_10013B7D0()
{
  result = qword_1001DBDA0;
  if (!qword_1001DBDA0)
  {
    sub_10001276C(&qword_1001DBDA8);
    sub_100013608(&qword_1001DBDB0, &qword_1001DBDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBDA0);
  }

  return result;
}

unint64_t sub_10013B888()
{
  result = qword_1001DBDC8;
  if (!qword_1001DBDC8)
  {
    sub_10001276C(&qword_1001DBCC0);
    sub_10013B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBDC8);
  }

  return result;
}

unint64_t sub_10013B90C()
{
  result = qword_1001DBDD0;
  if (!qword_1001DBDD0)
  {
    sub_10001276C(&qword_1001DBDD8);
    sub_10013B998();
    sub_10013BD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBDD0);
  }

  return result;
}

unint64_t sub_10013B998()
{
  result = qword_1001DBDE0;
  if (!qword_1001DBDE0)
  {
    sub_10001276C(&qword_1001DBDE8);
    sub_10013BA24();
    sub_10013BCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBDE0);
  }

  return result;
}

unint64_t sub_10013BA24()
{
  result = qword_1001DBDF0;
  if (!qword_1001DBDF0)
  {
    sub_10001276C(&qword_1001DBDF8);
    sub_10013BAB0();
    sub_10013BB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBDF0);
  }

  return result;
}

unint64_t sub_10013BAB0()
{
  result = qword_1001DBE00;
  if (!qword_1001DBE00)
  {
    sub_10001276C(&qword_1001DBE08);
    sub_10013FB34(&qword_1001DBE10, type metadata accessor for MissingIntelligenceView);
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE00);
  }

  return result;
}

unint64_t sub_10013BB98()
{
  result = qword_1001DBE18;
  if (!qword_1001DBE18)
  {
    sub_10001276C(&qword_1001DBE20);
    sub_10013BC50();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE18);
  }

  return result;
}

unint64_t sub_10013BC50()
{
  result = qword_1001DBE28;
  if (!qword_1001DBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE28);
  }

  return result;
}

unint64_t sub_10013BCA4()
{
  result = qword_1001DBE30;
  if (!qword_1001DBE30)
  {
    sub_10001276C(&qword_1001DBE38);
    sub_10013FB34(&qword_1001DBE40, type metadata accessor for OnboardingOverlay);
    sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE30);
  }

  return result;
}

unint64_t sub_10013BD90()
{
  result = qword_1001DBE50;
  if (!qword_1001DBE50)
  {
    sub_10001276C(&qword_1001DBE58);
    sub_10013FB34(&qword_1001DBE48, &type metadata accessor for FeatureOnboardingOverlay);
    sub_10013BE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE50);
  }

  return result;
}

unint64_t sub_10013BE4C()
{
  result = qword_1001DBE60;
  if (!qword_1001DBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBE60);
  }

  return result;
}

unint64_t sub_10013BEA8()
{
  result = qword_1001DBED0;
  if (!qword_1001DBED0)
  {
    sub_10001276C(&qword_1001DBEA8);
    sub_10013BF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBED0);
  }

  return result;
}

unint64_t sub_10013BF34()
{
  result = qword_1001DBED8;
  if (!qword_1001DBED8)
  {
    sub_10001276C(&qword_1001DBEA0);
    sub_10013BFEC();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBED8);
  }

  return result;
}

unint64_t sub_10013BFEC()
{
  result = qword_1001DBEE0;
  if (!qword_1001DBEE0)
  {
    sub_10001276C(&qword_1001DBE98);
    sub_10013C078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBEE0);
  }

  return result;
}

unint64_t sub_10013C078()
{
  result = qword_1001DBEE8;
  if (!qword_1001DBEE8)
  {
    sub_10001276C(&qword_1001DBE90);
    sub_100013608(&qword_1001DBEF0, &qword_1001DBEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBEE8);
  }

  return result;
}

uint64_t sub_10013C2A0()
{
  type metadata accessor for ContentView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_10012CA2C();
}

uint64_t sub_10013C3CC(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_1001163B0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10013C4E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AcmeState();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_10013C54C()
{
  result = qword_1001DBF88;
  if (!qword_1001DBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBF88);
  }

  return result;
}

unint64_t sub_10013C5AC()
{
  result = qword_1001DBF90;
  if (!qword_1001DBF90)
  {
    sub_10001276C(&qword_1001DBF68);
    sub_10013C668();
    sub_10013FB34(&qword_1001DBFB8, type metadata accessor for SwipeToDismissModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBF90);
  }

  return result;
}

unint64_t sub_10013C668()
{
  result = qword_1001DBF98;
  if (!qword_1001DBF98)
  {
    sub_10001276C(&qword_1001DBF60);
    sub_10013C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBF98);
  }

  return result;
}

unint64_t sub_10013C6F4()
{
  result = qword_1001DBFA0;
  if (!qword_1001DBFA0)
  {
    sub_10001276C(&qword_1001DBF58);
    sub_10013C780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBFA0);
  }

  return result;
}

unint64_t sub_10013C780()
{
  result = qword_1001DBFA8;
  if (!qword_1001DBFA8)
  {
    sub_10001276C(&qword_1001DBF50);
    sub_100013608(&qword_1001DBFB0, &qword_1001DBF48);
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DBFA8);
  }

  return result;
}

unint64_t sub_10013C920()
{
  result = qword_1001DC068;
  if (!qword_1001DC068)
  {
    sub_10001276C(&qword_1001DC048);
    sub_100013608(&qword_1001DC070, &qword_1001DC078);
    sub_10013FB34(&qword_1001DBFB8, type metadata accessor for SwipeToDismissModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC068);
  }

  return result;
}

uint64_t sub_10013CA38()
{
  type metadata accessor for ContentView();

  return sub_100113150();
}

unint64_t sub_10013CAA8()
{
  result = qword_1001DC0A8;
  if (!qword_1001DC0A8)
  {
    sub_10001276C(&qword_1001DC080);
    sub_100013608(&qword_1001DC0B0, &qword_1001DC0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC0A8);
  }

  return result;
}

unint64_t sub_10013CB60()
{
  result = qword_1001DC0C0;
  if (!qword_1001DC0C0)
  {
    sub_10001276C(&qword_1001DC0A0);
    sub_10013CBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC0C0);
  }

  return result;
}

unint64_t sub_10013CBE4()
{
  result = qword_1001DC0C8;
  if (!qword_1001DC0C8)
  {
    sub_10001276C(&qword_1001DC0D0);
    sub_100007CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC0C8);
  }

  return result;
}

unint64_t sub_10013CC68()
{
  result = qword_1001DC0D8;
  if (!qword_1001DC0D8)
  {
    sub_10001276C(&qword_1001DA510);
    sub_10013FB34(&qword_1001DA5E0, type metadata accessor for ActionBarItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC0D8);
  }

  return result;
}

unint64_t sub_10013CD8C()
{
  result = qword_1001DC120;
  if (!qword_1001DC120)
  {
    sub_10001276C(&qword_1001DC0E8);
    sub_100013608(&qword_1001DC128, &qword_1001DC130);
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC120);
  }

  return result;
}

unint64_t sub_10013CE8C()
{
  result = qword_1001DC188;
  if (!qword_1001DC188)
  {
    sub_10001276C(&qword_1001DC160);
    sub_10013CF44();
    sub_100013608(&qword_1001DC1C8, &qword_1001DC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC188);
  }

  return result;
}

unint64_t sub_10013CF44()
{
  result = qword_1001DC190;
  if (!qword_1001DC190)
  {
    sub_10001276C(&qword_1001DC158);
    sub_10013CFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC190);
  }

  return result;
}

unint64_t sub_10013CFD0()
{
  result = qword_1001DC198;
  if (!qword_1001DC198)
  {
    sub_10001276C(&qword_1001DC150);
    sub_10013D088();
    sub_100013608(&qword_1001D4780, &qword_1001D4788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC198);
  }

  return result;
}

unint64_t sub_10013D088()
{
  result = qword_1001DC1A0;
  if (!qword_1001DC1A0)
  {
    sub_10001276C(&qword_1001DC148);
    sub_10013D140();
    sub_100013608(&qword_1001D4780, &qword_1001D4788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC1A0);
  }

  return result;
}

unint64_t sub_10013D140()
{
  result = qword_1001DC1A8;
  if (!qword_1001DC1A8)
  {
    sub_10001276C(&qword_1001DC140);
    sub_10013D1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC1A8);
  }

  return result;
}

unint64_t sub_10013D1CC()
{
  result = qword_1001DC1B0;
  if (!qword_1001DC1B0)
  {
    sub_10001276C(&qword_1001DC138);
    sub_100013608(&qword_1001DC1B8, &qword_1001DC1C0);
    sub_1000682E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC1B0);
  }

  return result;
}

unint64_t sub_10013D284()
{
  result = qword_1001DC1D8;
  if (!qword_1001DC1D8)
  {
    sub_10001276C(&qword_1001DC180);
    sub_10013FB34(&qword_1001DC1E0, &type metadata accessor for GenerativeAssistantSettingsOnboarding);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC1D8);
  }

  return result;
}

uint64_t sub_10013D3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10013D4B4()
{
  result = qword_1001DC280;
  if (!qword_1001DC280)
  {
    sub_10001276C(&qword_1001DC268);
    sub_10013D540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC280);
  }

  return result;
}

unint64_t sub_10013D540()
{
  result = qword_1001DC288;
  if (!qword_1001DC288)
  {
    sub_10001276C(&qword_1001DC260);
    sub_10013D5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC288);
  }

  return result;
}

unint64_t sub_10013D5CC()
{
  result = qword_1001DC290;
  if (!qword_1001DC290)
  {
    sub_10001276C(&qword_1001DC258);
    type metadata accessor for ModernShutterButton();
    type metadata accessor for CameraController();
    sub_10013FB34(&qword_1001DC270, type metadata accessor for ModernShutterButton);
    sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC290);
  }

  return result;
}

unint64_t sub_10013D708()
{
  result = qword_1001DC298;
  if (!qword_1001DC298)
  {
    sub_10001276C(&qword_1001DC278);
    sub_10013D4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC298);
  }

  return result;
}

uint64_t sub_10013D7BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000033A8(&qword_1001DBAF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContentView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100019340;

  return sub_10011E458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10013D9B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_10013DA0C()
{
  result = qword_1001DC2D0;
  if (!qword_1001DC2D0)
  {
    sub_10001276C(&qword_1001DC2C0);
    sub_10013FB34(&qword_1001DC2C8, type metadata accessor for SalientActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC2D0);
  }

  return result;
}

uint64_t sub_10013DAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013DB30()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v37 + 16) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_10013E580()
{
  v1 = *(type metadata accessor for ContentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_10011BC78(v2, v3);
}

uint64_t sub_10013E600@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10013E658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10013E6E8()
{
  result = qword_1001DC308;
  if (!qword_1001DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC308);
  }

  return result;
}

uint64_t sub_10013E790()
{
  v1 = *(sub_1000033A8(&qword_1001DBAF8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ContentView();
  v59 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v59) & ~v59;
  v54 = *(*(v4 - 1) + 64);
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  v7 = *(v6 - 1);
  v62 = *(v7 + 80);
  swift_unknownObjectRelease();
  v8 = v0 + v2;
  if (!(*(v7 + 48))(v8, 1, v6))
  {
    v9 = type metadata accessor for SaliencyStreamConfiguration();
    (*(*(v9 - 8) + 8))(v8, v9);
    v10 = v6[14];
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }

    v14 = v6[17];
    if (!v13(v8 + v14, 1, v11))
    {
      (*(v12 + 8))(v8 + v14, v11);
    }

    v15 = v6[21];
    if (!v13(v8 + v15, 1, v11))
    {
      (*(v12 + 8))(v8 + v15, v11);
    }
  }

  v60 = v0;
  v55 = v5;
  v16 = v0 + v5;
  sub_100133E10(*v16, *(v16 + 8));
  sub_100133E10(*(v16 + 16), *(v16 + 24));

  sub_1000357B8();
  v17 = v4[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v18 - 8) + 8))(v16 + v17, v18);
  }

  else
  {
  }

  v19 = v16 + v4[10];
  v20 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = type metadata accessor for AppConfiguration();
  v22 = v19 + *(v21 + 20);
  v23 = type metadata accessor for SaliencyStreamConfiguration();
  v57 = *(*(v23 - 8) + 8);
  v58 = v23;
  v57(v22);
  v24 = v6[14];
  v25 = type metadata accessor for URL();
  v61 = *(v25 - 8);
  v26 = *(v61 + 48);
  if (!v26(v22 + v24, 1, v25))
  {
    (*(v61 + 8))(v22 + v24, v25);
  }

  v27 = v6[17];
  if (!v26(v22 + v27, 1, v25))
  {
    (*(v61 + 8))(v22 + v27, v25);
  }

  v28 = v6[21];
  if (!v26(v22 + v28, 1, v25))
  {
    (*(v61 + 8))(v22 + v28, v25);
  }

  v29 = *(v21 + 28);
  v30 = type metadata accessor for MapsConfiguration();
  (*(*(v30 - 8) + 8))(v19 + v29, v30);

  sub_1000033A8(&qword_1001DB7A0);

  v31 = v16 + v4[11];
  v32 = type metadata accessor for ResultLookupState();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v31, 1, v32))
  {
    (*(v33 + 8))(v31, v32);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v16 + v4[21]), *(v16 + v4[21] + 8), *(v16 + v4[21] + 16));

  v34 = v16 + v4[23];
  v35 = type metadata accessor for FocusSelection();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  v56 = v55 + v54 + v62;
  sub_1000033A8(&qword_1001DB7B0);

  v37 = v4[66];
  v38 = type metadata accessor for ActionPin.Pill();
  v39 = *(*(v38 - 8) + 8);
  v39(v16 + v37, v38);
  v39(v16 + v4[67], v38);
  v40 = v16 + v4[68];
  v41 = type metadata accessor for VisualIntelligenceFrameEntity();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v40, 1, v41))
  {
    (*(v42 + 8))(v40, v41);
  }

  v43 = v56 & ~v62;
  sub_1000033A8(&qword_1001DB7B8);

  v44 = v16 + v4[70];
  v45 = type metadata accessor for AccessibilityTechnologies();
  v46 = *(v45 - 8);
  if (!(*(v46 + 48))(v44, 1, v45))
  {
    (*(v46 + 8))(v44, v45);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v47 = v4[72];
  v48 = sub_1000033A8(&qword_1001DB778);
  (*(*(v48 - 8) + 8))(v16 + v47, v48);

  v49 = v60 + v43;
  (v57)(v60 + v43, v58);
  v50 = v6[14];
  if (!v26(v60 + v43 + v50, 1, v25))
  {
    (*(v61 + 8))(v49 + v50, v25);
  }

  v51 = v6[17];
  if (!v26(v49 + v51, 1, v25))
  {
    (*(v61 + 8))(v49 + v51, v25);
  }

  v52 = v6[21];
  if (!v26(v49 + v52, 1, v25))
  {
    (*(v61 + 8))(v49 + v52, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_10013F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10013F55C()
{
  result = qword_1001DC358;
  if (!qword_1001DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC358);
  }

  return result;
}

unint64_t sub_10013F5B0()
{
  result = qword_1001DC398;
  if (!qword_1001DC398)
  {
    sub_10001276C(&qword_1001DC388);
    sub_10013F66C();
    sub_10013FB34(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC398);
  }

  return result;
}

unint64_t sub_10013F66C()
{
  result = qword_1001DC3A0;
  if (!qword_1001DC3A0)
  {
    sub_10001276C(&qword_1001DC380);
    sub_10013F724();
    sub_100013608(&qword_1001D6CC0, &qword_1001D6C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC3A0);
  }

  return result;
}

unint64_t sub_10013F724()
{
  result = qword_1001DC3A8;
  if (!qword_1001DC3A8)
  {
    sub_10001276C(&qword_1001DC3B0);
    sub_10013F7DC();
    sub_100013608(&qword_1001D6C00, &qword_1001D6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC3A8);
  }

  return result;
}

unint64_t sub_10013F7DC()
{
  result = qword_1001DC3B8;
  if (!qword_1001DC3B8)
  {
    sub_10001276C(&qword_1001DC3C0);
    sub_10013F868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC3B8);
  }

  return result;
}

unint64_t sub_10013F868()
{
  result = qword_1001DC3C8;
  if (!qword_1001DC3C8)
  {
    sub_10001276C(&qword_1001DC3D0);
    sub_10013F8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC3C8);
  }

  return result;
}

unint64_t sub_10013F8F4()
{
  result = qword_1001DC3D8;
  if (!qword_1001DC3D8)
  {
    sub_10001276C(&qword_1001DC3E0);
    sub_100035D10();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC3D8);
  }

  return result;
}

uint64_t sub_10013F9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContentView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_10013FA78()
{
  result = qword_1001DC408;
  if (!qword_1001DC408)
  {
    sub_10001276C(&qword_1001DC3F0);
    sub_10013FB34(&qword_1001DC410, &type metadata accessor for OmnibarContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC408);
  }

  return result;
}

uint64_t sub_10013FB34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013FBBC()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v37 + 24) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_100140630()
{
  type metadata accessor for ContentView();

  return sub_100111D30();
}

uint64_t sub_100140748(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10014080C(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100019774;

  return sub_100113FC8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100140940(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for ContentView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10011D820(a1, a2, a3, v8);
}

uint64_t sub_1001409E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100140A64(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10011E064(a1, v6, v7, v1 + v5);
}

uint64_t sub_100140B54()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v37 + 32) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_1001415B8(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100019774;

  return sub_10011DA80(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100141704(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ContentView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_1001417A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContentView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_100141838()
{
  result = qword_1001DC470;
  if (!qword_1001DC470)
  {
    sub_10001276C(&qword_1001DC458);
    sub_1001418C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC470);
  }

  return result;
}

unint64_t sub_1001418C4()
{
  result = qword_1001DC478;
  if (!qword_1001DC478)
  {
    sub_10001276C(&qword_1001DC468);
    sub_100013608(&qword_1001DC480, &qword_1001DC488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC478);
  }

  return result;
}

void sub_10014197C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ContentView();

  sub_10011D040(a1, a2);
}

double sub_1001419FC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = -1;
  return result;
}

unint64_t sub_100141A2C()
{
  result = qword_1001DC4A8;
  if (!qword_1001DC4A8)
  {
    sub_10001276C(&qword_1001DC4A0);
    sub_100141AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4A8);
  }

  return result;
}

unint64_t sub_100141AB8()
{
  result = qword_1001DC4B0;
  if (!qword_1001DC4B0)
  {
    sub_10001276C(&qword_1001DC4B8);
    sub_100141B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4B0);
  }

  return result;
}

unint64_t sub_100141B44()
{
  result = qword_1001DC4C0;
  if (!qword_1001DC4C0)
  {
    sub_10001276C(&qword_1001DC4C8);
    sub_100013608(&qword_1001DC4D0, &qword_1001DC4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4C0);
  }

  return result;
}

unint64_t sub_100141BFC()
{
  result = qword_1001DC4E0;
  if (!qword_1001DC4E0)
  {
    sub_10001276C(&qword_1001DC498);
    sub_100141C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4E0);
  }

  return result;
}

unint64_t sub_100141C88()
{
  result = qword_1001DC4E8;
  if (!qword_1001DC4E8)
  {
    sub_10001276C(&qword_1001DC4F0);
    sub_100141D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4E8);
  }

  return result;
}

unint64_t sub_100141D14()
{
  result = qword_1001DC4F8;
  if (!qword_1001DC4F8)
  {
    sub_10001276C(&qword_1001DC500);
    sub_100013608(&qword_1001DC508, &qword_1001DC510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC4F8);
  }

  return result;
}

uint64_t sub_100141DD4()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v37 + 32) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_10014282C(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019774;

  return sub_10011CBA0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10014291C()
{
  v1 = type metadata accessor for ContentView();
  v37 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v37 + 16) & ~v37);
  sub_100133E10(*v2, *(v2 + 8));
  sub_100133E10(*(v2 + 16), *(v2 + 24));

  sub_1000357B8();
  v3 = v1[9];
  sub_1000033A8(&qword_1001D6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v6 - 8) + 8))(v5, v6);
  v36 = type metadata accessor for AppConfiguration();
  v7 = v5 + *(v36 + 20);
  v8 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CameraControllerConfiguration(0);
  v10 = v9[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v14 = v9[17];
  if (!v13(v7 + v14, 1, v11))
  {
    (*(v12 + 8))(v7 + v14, v11);
  }

  v15 = v9[21];
  if (!v13(v7 + v15, 1, v11))
  {
    (*(v12 + 8))(v7 + v15, v11);
  }

  v16 = *(v36 + 28);
  v17 = type metadata accessor for MapsConfiguration();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  sub_1000033A8(&qword_1001DB7A0);

  v18 = v2 + v1[11];
  v19 = type metadata accessor for ResultLookupState();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  sub_1000033A8(&qword_1001DB7A8);

  sub_10002A2AC(*(v2 + v1[21]), *(v2 + v1[21] + 8), *(v2 + v1[21] + 16));

  v21 = v2 + v1[23];
  v22 = type metadata accessor for FocusSelection();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  sub_1000033A8(&qword_1001DB7B0);

  v24 = v1[66];
  v25 = type metadata accessor for ActionPin.Pill();
  v26 = *(*(v25 - 8) + 8);
  v26(v2 + v24, v25);
  v26(v2 + v1[67], v25);
  v27 = v2 + v1[68];
  v28 = type metadata accessor for VisualIntelligenceFrameEntity();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  sub_1000033A8(&qword_1001DB7B8);

  v30 = v2 + v1[70];
  v31 = type metadata accessor for AccessibilityTechnologies();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v30, 1, v31))
  {
    (*(v32 + 8))(v30, v31);
  }

  sub_1000033A8(&qword_1001DA1B8);

  v33 = v1[72];
  v34 = sub_1000033A8(&qword_1001DB778);
  (*(*(v34 - 8) + 8))(v2 + v33, v34);

  return swift_deallocObject();
}

uint64_t sub_100143368(uint64_t a1)
{
  v4 = *(type metadata accessor for ContentView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100019774;

  return sub_10011CDE0(a1, v1 + v5);
}

uint64_t sub_1001434A4@<X0>(uint64_t *a1@<X8>)
{
  result = NewSaliencyModel.userSelection.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100143560()
{
  sub_10001276C(&qword_1001DBA88);
  sub_10001276C(&qword_1001DBA80);
  type metadata accessor for CameraControllerConfiguration(255);
  sub_10001276C(&qword_1001DBA78);
  sub_10001276C(&qword_1001DBA70);
  sub_10001276C(&qword_1001DBA68);
  sub_10001276C(&qword_1001DBA60);
  type metadata accessor for SiriStreamingVoicePlayer();
  sub_10001276C(&qword_1001DBA58);
  type metadata accessor for CameraController();
  sub_100134208();
  sub_10013FB34(&qword_1001D44C0, type metadata accessor for CameraController);
  swift_getOpaqueTypeConformance2();
  sub_10013FB34(&qword_1001D6E90, &type metadata accessor for SiriStreamingVoicePlayer);
  swift_getOpaqueTypeConformance2();
  sub_1000A45F4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10013FB34(&qword_1001D5470, type metadata accessor for CameraControllerConfiguration);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100143A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100143ADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RecordingDebugButton()
{
  result = qword_1001DC578;
  if (!qword_1001DC578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100143BEC()
{
  sub_100053128();
  if (v0 <= 0x3F)
  {
    sub_100143CA0();
    if (v1 <= 0x3F)
    {
      sub_10001B610();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100143CA0()
{
  if (!qword_1001DC588)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DC588);
    }
  }
}

uint64_t sub_100143D0C(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1000033A8(&qword_1001D4D58);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Toast(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MKBGetDeviceLockState();
  if (v12 != 3 && v12)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_100015B00(0, 0, v4, &unk_10017C858, v18);
  }

  else
  {
    v13 = type metadata accessor for RecordingDebugButton();
    if (*(a1 + *(v13 + 28)))
    {
      return (*(a1 + *(v13 + 32)))();
    }

    type metadata accessor for LocationsHandler();
    static LocationsHandler.shared.getter();
    v14 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();

    if (v14)
    {
      return (*(a1 + *(v13 + 32)))();
    }

    if (qword_1001D3190 != -1)
    {
      swift_once();
    }

    UUID.init()();
    v19 = &v11[*(v8 + 20)];
    *v19 = 0xD000000000000026;
    *(v19 + 1) = 0x800000010016F2E0;
    *&v11[*(v8 + 24)] = 0x4014000000000000;
    if (("Unlock Device to Record" & 0x2F00000000000000) != 0x2000000000000000)
    {
      sub_100147254(v11, v7, type metadata accessor for Toast);
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_10002AFFC(v7);
    }

    sub_10002E95C(v11);
    static LocationsHandler.shared.getter();
    dispatch thunk of LocationsHandler.promptForLocationAccess()();
  }
}

uint64_t sub_10014405C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100144150;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 7, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_100144150()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1001442E4;
  }

  else
  {
    v2 = sub_100144264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144264()
{
  *(v0 + 57) = *(v0 + 56);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100144368, v2, v1);
}

uint64_t sub_1001442E4()
{

  *(v0 + 57) = 0;
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100144368, v2, v1);
}

uint64_t sub_100144368()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001443D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v42 = a1;
  v47 = a2;
  v3 = type metadata accessor for RecordingDebugButton();
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v3);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D4E88);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1000033A8(&qword_1001DC5F8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_1000033A8(&qword_1001DC5F0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v43 = sub_1000033A8(&qword_1001DC5D8);
  __chkstk_darwin(v43);
  v16 = &v41 - v15;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = sub_1000033A8(&qword_1001DC670);
  sub_1001448AC(v2, &v11[*(v17 + 44)]);
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v11[*(sub_1000033A8(&qword_1001DC610) + 36)];
  *v26 = v2;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  static Font.headline.getter();
  static Font.Weight.medium.getter();
  v27 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v29 = &v11[*(v9 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = enum case for Font.Design.rounded(_:);
  v31 = type metadata accessor for Font.Design();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v8, v30, v31);
  (*(v32 + 56))(v8, 0, 1, v31);
  sub_10014695C();
  View.fontDesign(_:)();
  sub_10001370C(v8, &qword_1001D4E88);
  sub_10001370C(v11, &qword_1001DC5F8);
  v33 = static Animation.default.getter();
  v34 = v42;
  LOBYTE(v8) = *(v42 + *(v4 + 32));
  v35 = &v14[*(v12 + 36)];
  *v35 = v33;
  v35[8] = v8;
  sub_100146868();
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v14, &qword_1001DC5F0);
  v48 = v8;
  v36 = v34;
  v37 = v44;
  sub_100147254(v36, v44, type metadata accessor for RecordingDebugButton);
  v38 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v39 = swift_allocObject();
  sub_100146728(v37, v39 + v38);
  sub_1001467AC();
  sub_100022110();
  View.onChange<A>(of:initial:_:)();

  return sub_10001370C(v16, &qword_1001DC5D8);
}

uint64_t sub_1001448AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v3 = sub_1000033A8(&qword_1001DC678);
  __chkstk_darwin(v3);
  v5 = &v99 - v4;
  v108 = sub_1000033A8(&qword_1001DC680);
  __chkstk_darwin(v108);
  v7 = &v99 - v6;
  v109 = sub_1000033A8(&qword_1001DC688);
  v8 = __chkstk_darwin(v109);
  v110 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v99 - v11;
  __chkstk_darwin(v10);
  v111 = &v99 - v13;
  v14 = sub_1000033A8(&qword_1001DC690);
  __chkstk_darwin(v14);
  v16 = &v99 - v15;
  v17 = sub_1000033A8(&qword_1001DC698);
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  v20 = MKBGetDeviceLockState();
  if (v20 && v20 != 3)
  {
    sub_1000033A8(&qword_1001D5190);
    sub_100035D10();
    Label.init(title:icon:)();
    v24 = [objc_opt_self() labelColor];
    v25 = Color.init(uiColor:)();
    *&v19[*(sub_1000033A8(&qword_1001DC6A0) + 36)] = v25;
    LOBYTE(v25) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v19[*(sub_1000033A8(&qword_1001DC6A8) + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    LOBYTE(v25) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v35 = &v19[*(v17 + 36)];
    *v35 = v25;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_1000138BC(v19, v16, &qword_1001DC698);
    swift_storeEnumTagMultiPayload();
    sub_100146E48(&qword_1001DC6B0, &qword_1001DC698, &unk_10017C758, sub_100146ECC);
    sub_100013608(&qword_1001DC6D8, &qword_1001DC678);
    _ConditionalContent<>.init(storage:)();
    v40 = v19;
    v41 = &qword_1001DC698;
  }

  else
  {
    v103 = v14;
    v21 = *(v112 + *(type metadata accessor for RecordingDebugButton() + 24));
    v106 = v3;
    v107 = a2;
    v104 = v17;
    v105 = v16;
    if (v21)
    {
      if (v21 == 1)
      {
        v22 = 0x800000010016F2A0;
        v23 = 0x1000000000000010;
      }

      else
      {
        v22 = 0x800000010016F280;
        v23 = 0xD000000000000012;
      }
    }

    else
    {
      v22 = 0xEF64726F63655220;
      v23 = 0x6F74207964616552;
    }

    v42 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v137 = 0;
    v136 = 0;
    v51 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v53 = swift_getKeyPath();
    v138 = 0;
    *&v125 = v23;
    *(&v125 + 1) = v22;
    LOBYTE(v126) = 0;
    *(&v126 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v127) = v42;
    *(&v127 + 1) = v44;
    *&v128 = v46;
    *(&v128 + 1) = v48;
    *&v129 = v50;
    BYTE8(v129) = 0;
    *&v130 = KeyPath;
    *(&v130 + 1) = v51;
    *&v131 = v53;
    *(&v131 + 1) = 1;
    v132 = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v54 = v139;
    v55 = v141;
    v56 = v143;
    v57 = v144;
    v135 = 1;
    v134 = v140;
    v133 = v142;
    *v7 = static VerticalAlignment.center.getter();
    *(v7 + 1) = 0x4014000000000000;
    v7[16] = 0;
    v58 = sub_1000033A8(&qword_1001DC6E0);
    sub_100145334(v112, &v7[*(v58 + 44)]);
    LOBYTE(v51) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = &v7[*(sub_1000033A8(&qword_1001DC6E8) + 36)];
    *v67 = v51;
    *(v67 + 1) = v60;
    *(v67 + 2) = v62;
    *(v67 + 3) = v64;
    *(v67 + 4) = v66;
    v67[40] = 0;
    LOBYTE(v51) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = &v7[*(sub_1000033A8(&qword_1001DC6F0) + 36)];
    *v76 = v51;
    *(v76 + 1) = v69;
    *(v76 + 2) = v71;
    *(v76 + 3) = v73;
    *(v76 + 4) = v75;
    v76[40] = 0;
    *&v7[*(v108 + 36)] = static HierarchicalShapeStyle.primary.getter();
    v101 = v56;
    v102 = v54;
    v100 = v57;
    if (v21 == 1)
    {
      v77 = static Color.red.getter();
    }

    else
    {
      v78 = [objc_opt_self() systemGroupedBackgroundColor];
      v77 = Color.init(uiColor:)();
    }

    v79 = v77;
    v80 = &v12[*(v109 + 36)];
    v81 = sub_1000033A8(&qword_1001D6C08);
    v82 = *(v81 + 52);
    v83 = enum case for RoundedCornerStyle.continuous(_:);
    v84 = type metadata accessor for RoundedCornerStyle();
    (*(*(v84 - 8) + 104))(&v80[v82], v83, v84);
    *v80 = v79;
    *&v80[*(v81 + 56)] = 256;
    sub_10002091C(v7, v12, &qword_1001DC680);
    v85 = v111;
    sub_10002091C(v12, v111, &qword_1001DC688);
    v117 = v129;
    v118 = v130;
    v119 = v131;
    v120 = v132;
    v113 = v125;
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v86 = v135;
    LOBYTE(v83) = v134;
    LOBYTE(v80) = v133;
    v87 = v110;
    sub_1000138BC(v85, v110, &qword_1001DC688);
    v88 = v117;
    v89 = v118;
    v121[4] = v117;
    v121[5] = v118;
    v90 = v119;
    v121[6] = v119;
    v122 = v120;
    v91 = v113;
    v92 = v114;
    v121[0] = v113;
    v121[1] = v114;
    v93 = v115;
    v94 = v116;
    v121[2] = v115;
    v121[3] = v116;
    v5[112] = v120;
    *(v5 + 5) = v89;
    *(v5 + 6) = v90;
    *(v5 + 3) = v94;
    *(v5 + 4) = v88;
    *(v5 + 1) = v92;
    *(v5 + 2) = v93;
    *v5 = v91;
    *(v5 + 15) = 0;
    v5[128] = v86;
    v95 = v101;
    *(v5 + 17) = v102;
    v5[144] = v83;
    *(v5 + 19) = v55;
    v5[160] = v80;
    v96 = v100;
    *(v5 + 21) = v95;
    *(v5 + 22) = v96;
    v97 = sub_1000033A8(&qword_1001DC6F8);
    sub_1000138BC(v87, &v5[*(v97 + 64)], &qword_1001DC688);
    sub_1000138BC(&v125, v123, &qword_1001DC700);
    sub_1000138BC(v121, v123, &qword_1001DC700);
    sub_10001370C(v87, &qword_1001DC688);
    v123[4] = v117;
    v123[5] = v118;
    v123[6] = v119;
    v124 = v120;
    v123[0] = v113;
    v123[1] = v114;
    v123[2] = v115;
    v123[3] = v116;
    sub_10001370C(v123, &qword_1001DC700);
    sub_1000138BC(v5, v105, &qword_1001DC678);
    swift_storeEnumTagMultiPayload();
    sub_100146E48(&qword_1001DC6B0, &qword_1001DC698, &unk_10017C758, sub_100146ECC);
    sub_100013608(&qword_1001DC6D8, &qword_1001DC678);
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(&v125, &qword_1001DC700);
    sub_10001370C(v5, &qword_1001DC678);
    v40 = v85;
    v41 = &qword_1001DC688;
  }

  return sub_10001370C(v40, v41);
}

uint64_t sub_100145290@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000010016F2C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1001452F4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100145334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = type metadata accessor for PulseSymbolEffect();
  v62 = *(v74 - 8);
  __chkstk_darwin(v74);
  v61 = (&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_1000033A8(&qword_1001DC708);
  __chkstk_darwin(v68);
  v70 = (&v61 - v4);
  v66 = sub_1000033A8(&qword_1001DC710);
  __chkstk_darwin(v66);
  v64 = &v61 - v5;
  v69 = sub_1000033A8(&qword_1001DC718);
  __chkstk_darwin(v69);
  v67 = &v61 - v6;
  v65 = type metadata accessor for SymbolEffectOptions();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BounceSymbolEffect();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  v16 = sub_1000033A8(&qword_1001DC720);
  __chkstk_darwin(v16);
  v18 = (&v61 - v17);
  v19 = sub_1000033A8(&qword_1001DC728);
  v20 = __chkstk_darwin(v19 - 8);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v71 = &v61 - v22;
  v23 = sub_1000033A8(&qword_1001D61F0);
  __chkstk_darwin(v23 - 8);
  v25 = &v61 - v24;
  v26 = *(a1 + *(type metadata accessor for RecordingDebugButton() + 24));
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v27 = type metadata accessor for SymbolRenderingMode();
  (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
  v75 = Image.symbolRenderingMode(_:)();

  sub_10001370C(v25, &qword_1001D61F0);
  if (!v26)
  {
    v37 = static Color.red.getter();
    v38 = v70;
    *v70 = v75;
    v38[1] = v37;
    swift_storeEnumTagMultiPayload();

    v74 = v37;

    sub_1000033A8(&qword_1001D84F0);
    sub_100146FF0(&qword_1001DC730, &qword_1001DC718, &unk_10017C820, sub_10014706C);
    sub_10009B670();
    v36 = v71;
    _ConditionalContent<>.init(storage:)();
LABEL_6:
    static Color.primary.getter();
    goto LABEL_7;
  }

  if (v26 != 1)
  {
    v74 = static Color.blue.getter();
    BounceSymbolEffect.init()();
    BounceSymbolEffect.down.getter();
    v39 = *(v10 + 8);
    v62 = v10 + 8;
    v39(v15, v9);
    static SymbolEffectOptions.default.getter();
    v40 = v18 + *(v16 + 36);
    v41 = type metadata accessor for _IndefiniteSymbolEffectModifier();
    v42 = *(v41 + 20);
    v61 = v18;
    v43 = v9;
    v44 = v63;
    v45 = v65;
    (*(v63 + 16))(&v40[v42], v8, v65);
    sub_100147128(&qword_1001D6C88, &type metadata accessor for BounceSymbolEffect);
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v44 + 8))(v8, v45);
    v39(v13, v43);
    v40[*(v41 + 24)] = 1;
    v46 = v74;
    v47 = v61;
    *v61 = v75;
    *(v47 + 8) = v46;
    sub_1000138BC(v47, v64, &qword_1001DC720);
    swift_storeEnumTagMultiPayload();
    sub_10014706C();

    v48 = v67;
    _ConditionalContent<>.init(storage:)();
    sub_1000138BC(v48, v70, &qword_1001DC718);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D84F0);
    sub_100146FF0(&qword_1001DC730, &qword_1001DC718, &unk_10017C820, sub_10014706C);
    sub_10009B670();
    v36 = v71;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v48, &qword_1001DC718);
    sub_10001370C(v47, &qword_1001DC720);
    goto LABEL_6;
  }

  v28 = static Color.white.getter();
  v29 = v61;
  PulseSymbolEffect.init()();
  static SymbolEffectOptions.default.getter();
  v30 = v18 + *(v16 + 36);
  v31 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  v32 = v63;
  v33 = v65;
  (*(v63 + 16))(&v30[*(v31 + 20)], v8, v65);
  sub_100147128(&qword_1001D51D0, &type metadata accessor for PulseSymbolEffect);
  v34 = v74;
  dispatch thunk of SymbolEffect.configuration.getter();
  (*(v32 + 8))(v8, v33);
  (*(v62 + 8))(v29, v34);
  v30[*(v31 + 24)] = 1;
  *v18 = v75;
  v18[1] = v28;
  sub_1000138BC(v18, v64, &qword_1001DC720);
  swift_storeEnumTagMultiPayload();
  sub_10014706C();

  v74 = v28;

  v35 = v67;
  _ConditionalContent<>.init(storage:)();
  sub_1000138BC(v35, v70, &qword_1001DC718);
  swift_storeEnumTagMultiPayload();
  sub_1000033A8(&qword_1001D84F0);
  sub_100146FF0(&qword_1001DC730, &qword_1001DC718, &unk_10017C820, sub_10014706C);
  sub_10009B670();
  v36 = v71;
  _ConditionalContent<>.init(storage:)();
  sub_10001370C(v35, &qword_1001DC718);
  sub_10001370C(v18, &qword_1001DC720);
  static Color.white.getter();
LABEL_7:
  v50 = v72;
  v49 = v73;
  v51 = Text.foregroundColor(_:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  KeyPath = swift_getKeyPath();
  sub_1000138BC(v36, v50, &qword_1001DC728);
  sub_1000138BC(v50, v49, &qword_1001DC728);
  v59 = v49 + *(sub_1000033A8(&qword_1001DC740) + 48);
  v55 &= 1u;
  sub_100020D5C(v51, v53, v55);

  *v59 = v51;
  *(v59 + 8) = v53;
  *(v59 + 16) = v55;
  *(v59 + 24) = v57;
  *(v59 + 32) = KeyPath;
  *(v59 + 40) = 1;
  *(v59 + 48) = 0;
  sub_10001370C(v36, &qword_1001DC728);
  sub_100020D44(v51, v53, v55);

  return sub_10001370C(v50, &qword_1001DC728);
}

uint64_t sub_100145EAC(uint64_t a1)
{
  result = type metadata accessor for RecordingDebugButton();
  if (!*(a1 + *(result + 24)))
  {
    type metadata accessor for LocationsHandler();
    static LocationsHandler.shared.getter();
    dispatch thunk of LocationsHandler.promptForLocationAccessIfApplicable()();
  }

  return result;
}

uint64_t sub_100145F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_1000033A8(&qword_1001DC660);
  __chkstk_darwin(v2);
  v4 = v24 - v3;
  v5 = sub_1000033A8(&qword_1001DC640);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  sub_100054010(v24 - v13);
  (*(v9 + 104))(v12, enum case for ColorScheme.dark(_:), v8);
  v15 = static ColorScheme.== infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    v25 = xmmword_10017C5F0;
    v26 = xmmword_10017C600;
  }

  else
  {
    v25 = xmmword_10017C5D0;
    v26 = xmmword_10017C5E0;
  }

  v27 = 0x4036800000000000;
  v17 = &v7[*(v5 + 36)];
  sub_100146BB8();
  Material.init<A>(provider:)();
  v18 = sub_1000033A8(&qword_1001D4668);
  v19 = *(v18 + 52);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  *&v17[*(v18 + 56)] = 256;
  v22 = sub_1000033A8(&qword_1001DC5C8);
  (*(*(v22 - 8) + 16))(v7, v24[0], v22);
  sub_100146C0C(v7, v4);
  swift_storeEnumTagMultiPayload();
  sub_100146AD4();
  _ConditionalContent<>.init(storage:)();
  return sub_10001370C(v7, &qword_1001DC640);
}

uint64_t sub_1001462B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1000033A8(&qword_1001DC640) + 36);
  static Material.thin.getter();
  v5 = sub_1000033A8(&qword_1001D4668);
  v6 = *(v5 + 52);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  v9 = sub_1000033A8(&qword_1001DC5C8);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_1001463D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v16[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = sub_1000033A8(&qword_1001DC5C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  sub_100147254(v3, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecordingDebugButton);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_100146728(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v16[8] = v3;
  sub_1000033A8(&qword_1001DC5D0);
  v12 = sub_10001276C(&qword_1001DC5D8);
  v13 = sub_1001467AC();
  v14 = sub_100022110();
  v16[10] = v12;
  v16[11] = &type metadata for RecordingState;
  v16[12] = v13;
  v16[13] = v14;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  Solarium.init()();
  v16[4] = v3;
  sub_1000033A8(&qword_1001DC638);
  sub_1000033A8(&qword_1001DC640);
  sub_100013608(&qword_1001DC648, &qword_1001DC5C8);
  sub_100146FF0(&qword_1001DC650, &qword_1001DC638, &unk_10017C6D8, sub_100146AD4);
  sub_100146AD4();
  View.staticIf<A, B, C>(_:then:else:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100146728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingDebugButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001467AC()
{
  result = qword_1001DC5E0;
  if (!qword_1001DC5E0)
  {
    sub_10001276C(&qword_1001DC5D8);
    sub_100146868();
    sub_100147128(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC5E0);
  }

  return result;
}

unint64_t sub_100146868()
{
  result = qword_1001DC5E8;
  if (!qword_1001DC5E8)
  {
    sub_10001276C(&qword_1001DC5F0);
    sub_10001276C(&qword_1001DC5F8);
    sub_10014695C();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001DC628, &qword_1001DC630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC5E8);
  }

  return result;
}

unint64_t sub_10014695C()
{
  result = qword_1001DC600;
  if (!qword_1001DC600)
  {
    sub_10001276C(&qword_1001DC5F8);
    sub_100146A14();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC600);
  }

  return result;
}

unint64_t sub_100146A14()
{
  result = qword_1001DC608;
  if (!qword_1001DC608)
  {
    sub_10001276C(&qword_1001DC610);
    sub_100013608(&qword_1001DC618, &qword_1001DC620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC608);
  }

  return result;
}

unint64_t sub_100146AD4()
{
  result = qword_1001DC658;
  if (!qword_1001DC658)
  {
    sub_10001276C(&qword_1001DC640);
    sub_100013608(&qword_1001DC648, &qword_1001DC5C8);
    sub_100013608(&qword_1001D4720, &qword_1001D4668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC658);
  }

  return result;
}

unint64_t sub_100146BB8()
{
  result = qword_1001DC668;
  if (!qword_1001DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC668);
  }

  return result;
}

uint64_t sub_100146C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DC640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146C84()
{
  v1 = type metadata accessor for RecordingDebugButton();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000033A8(&qword_1001D4DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ColorScheme();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_100133E10(*(v0 + v2 + *(v1 + 20)), *(v0 + v2 + *(v1 + 20) + 8));

  return swift_deallocObject();
}

uint64_t sub_100146DD4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecordingDebugButton() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100146E48(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100146EFC()
{
  result = qword_1001DC6C0;
  if (!qword_1001DC6C0)
  {
    sub_10001276C(&qword_1001DC6A0);
    sub_100013608(&qword_1001DC6C8, &qword_1001DC6D0);
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC6C0);
  }

  return result;
}

uint64_t sub_100146FF0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014706C()
{
  result = qword_1001DC738;
  if (!qword_1001DC738)
  {
    sub_10001276C(&qword_1001DC720);
    sub_10009B670();
    sub_100147128(&qword_1001D5180, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC738);
  }

  return result;
}

uint64_t sub_100147128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100147170()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001471A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_10014405C(a1);
}

uint64_t sub_100147254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001472BC()
{
  sub_10001276C(&qword_1001DC5C8);
  sub_10001276C(&qword_1001DC638);
  sub_10001276C(&qword_1001DC640);
  sub_100013608(&qword_1001DC648, &qword_1001DC5C8);
  sub_100146FF0(&qword_1001DC650, &qword_1001DC638, &unk_10017C6D8, sub_100146AD4);
  sub_100146AD4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100147404()
{
  result = qword_1001DC748;
  if (!qword_1001DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DC748);
  }

  return result;
}

unint64_t sub_100147458(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(v7 + 40));
  sub_10001FFF8(a1, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      sub_1000033A8(&qword_1001DA6E0);
      swift_allocObject();
      v11 = sub_100148068(v9, a2, a3);
      sub_10002005C(a1);
      return v11 | 0x4000000000000000;
    }

    else
    {
      sub_1000033A8(&qword_1001DA6C8);
      swift_allocObject();
      v14 = sub_1001475D8(v9, a2, a3);
      sub_10002005C(a1);
      return v14 | 0x8000000000000000;
    }
  }

  else
  {
    sub_1000033A8(&qword_1001DA6F8);
    swift_allocObject();
    v13 = sub_100148970(v9, a2, a3);
    sub_10002005C(a1);
    return v13;
  }
}

uint64_t sub_1001475D8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v71 = a3;
  v78 = a2;
  v6 = *v3;
  v66 = v6;
  v7 = type metadata accessor for Logger();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SaliencyStreamConfiguration();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SaliencyStreamIngredients();
  v77 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v75 = &v62 - v15;
  v16 = __chkstk_darwin(v14);
  v74 = &v62 - v17;
  __chkstk_darwin(v16);
  v73 = &v62 - v18;
  v19 = type metadata accessor for Workflow();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for EntryPoint();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v67);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v6 + 128)) = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v62 = *(*v4 + 144);
  static Log.cameraSource.getter();
  sub_10001FFF8(a1, v25);
  type metadata accessor for SimulatorCameraSource(0);
  swift_allocObject();
  v68 = v71;
  v69 = v25;
  v4[2] = sub_1001557E8(v25, v68);
  SaliencyStreamConfiguration.entryPoint.getter();
  EntryPoint.vapWorkflow.getter();
  (*(v21 + 8))(v23, v20);
  type metadata accessor for VisualActionPredictionClient();
  swift_allocObject();
  v26 = VisualActionPredictionClient.init(workflow:)();
  v27 = *(v70 + 16);
  v71 = a1;
  v27(v10, a1, v72);

  v28 = sub_1000ACEC0();

  if (v28)
  {
    sub_100156D2C(&qword_1001D6A50, type metadata accessor for SimulatorCameraSource.Tracker);
  }

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100156D2C(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);

  v29 = v73;
  v72 = v26;
  SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)();
  v30 = *(*v4 + 120);
  v31 = v77;
  (*(v77 + 32))(v4 + v30, v29, v11);
  v32 = *(v31 + 16);
  v33 = v74;
  v32(v74, v4 + v30, v11);
  v34 = SaliencyStreamIngredientsProviding.cvCoordinator.getter();
  v35 = *(v31 + 8);
  v35(v33, v11);
  v36 = v75;
  v32(v75, v4 + v30, v11);
  v37 = SaliencyStreamIngredientsProviding.bundleSelector.getter();
  v35(v36, v11);
  v38 = v76;
  v32(v76, v4 + v30, v11);
  v39 = SaliencyStreamIngredientsProviding.actionPredictor.getter();
  v35(v38, v11);
  type metadata accessor for CVFrameSynchronizer();
  swift_allocObject();
  v40 = sub_1000F2F9C(v34, v37, v39);

  v4[3] = v40;
  v41 = v4[2];
  v42 = *(v41 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue);
  v43 = swift_allocObject();
  v43[2] = v41;
  v43[3] = v40;
  v43[4] = &off_1001C5200;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100156D20;
  *(v44 + 24) = v43;
  aBlock[4] = sub_1000C5638;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C6D38;
  v45 = _Block_copy(aBlock);
  swift_retain_n();
  swift_retain_n();

  dispatch_sync(v42, v45);
  _Block_release(v45);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    v47 = [objc_allocWithZone(type metadata accessor for StreamingMetadataProcessor(0)) init];
    v48 = v4[3];

    v49 = v47;
    sub_100154284(v49, v48);

    v50 = static SystemVariantSupport.isInternalBuild.getter();
    v51 = v71;
    if (v50)
    {
      v53 = v64;
      v52 = v65;
      v54 = v63;
      (*(v64 + 16))(v63, v4 + v62, v65);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Recording only supported for ARCameraSource", v57, 2u);
      }

      (*(v53 + 8))(v54, v52);
    }

    v58 = v69;
    sub_10001FFF8(v51, v69);
    type metadata accessor for PreviewLayer(0);
    swift_allocObject();
    v4[4] = sub_1000B8328(v58);

    sub_1000EC7E0();

    if (v51[*(v67 + 76)] == 1)
    {
      aBlock[0] = v4;
      sub_100013608(&qword_1001DA6D8, &qword_1001DA6C8);
      v59 = SaliencyStreamIngredientsProviding.trackManager.getter();
      v60 = v4[3];
      sub_10001FFF8(v51, v58);
      type metadata accessor for DebugPreviewLayer(0);
      swift_allocObject();

      v61 = sub_1000D5C94(v58, &unk_10017CD60, v59);

      sub_10002005C(v51);
      *(v60 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = v61;
    }

    else
    {
      sub_10002005C(v51);
    }

    return v4;
  }

  return result;
}

void *sub_100148068(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v74 = a3;
  v7 = *v3;
  v65 = v7;
  v8 = type metadata accessor for Logger();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SaliencyStreamConfiguration();
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  __chkstk_darwin(v10);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SaliencyStreamIngredients();
  v68 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = type metadata accessor for Workflow();
  __chkstk_darwin(v20 - 8);
  v66 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for EntryPoint();
  v22 = *(v67 - 8);
  __chkstk_darwin(v67);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v72);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v7 + 128)) = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v61 = *(*v4 + 144);
  static Log.cameraSource.getter();
  sub_10001FFF8(a1, v26);
  v27 = objc_allocWithZone(type metadata accessor for AVCameraSource(0));
  v28 = a2;

  v29 = v74;
  v74 = v26;
  v30 = sub_1001553A4(v26, v29);

  v73 = v29;

  v4[2] = v30;
  SaliencyStreamConfiguration.entryPoint.getter();
  EntryPoint.vapWorkflow.getter();
  (*(v22 + 8))(v24, v67);
  type metadata accessor for VisualActionPredictionClient();
  swift_allocObject();
  v31 = VisualActionPredictionClient.init(workflow:)();
  v32 = *(v76 + 16);
  v76 = a1;
  v32(v71, a1, v75);
  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100156D2C(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);

  v75 = v28;
  v71 = v31;
  SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)();
  v33 = *(*v4 + 120);
  v34 = v68;
  (*(v68 + 32))(v4 + v33, v19, v13);
  v35 = *(v34 + 16);
  v35(v19, v4 + v33, v13);
  v67 = SaliencyStreamIngredientsProviding.cvCoordinator.getter();
  v36 = *(v34 + 8);
  v36(v19, v13);
  v37 = v69;
  v35(v69, v4 + v33, v13);
  v38 = SaliencyStreamIngredientsProviding.bundleSelector.getter();
  v36(v37, v13);
  v39 = v70;
  v35(v70, v4 + v33, v13);
  v40 = SaliencyStreamIngredientsProviding.actionPredictor.getter();
  v36(v39, v13);
  type metadata accessor for CVFrameSynchronizer();
  swift_allocObject();
  v41 = sub_1000F2F9C(v67, v38, v40);

  v4[3] = v41;
  v42 = v4[2];

  v43 = v42;
  sub_100154740(v41, v43);

  v44 = [objc_allocWithZone(type metadata accessor for StreamingMetadataProcessor(0)) init];
  v45 = v4[2];
  sub_10005E138(v44);

  v46 = v4[3];

  v47 = v44;
  sub_100154284(v47, v46);

  if (static SystemVariantSupport.isInternalBuild.getter())
  {
    v49 = v62;
    v48 = v63;
    v50 = v64;
    (*(v63 + 16))(v62, v4 + v61, v64);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Recording only supported for ARCameraSource", v53, 2u);
    }

    (*(v48 + 8))(v49, v50);
  }

  v54 = v76;
  v55 = v74;
  sub_10001FFF8(v76, v74);
  type metadata accessor for PreviewLayer(0);
  swift_allocObject();
  v4[4] = sub_1000B8328(v55);

  sub_1000EC7E0();

  if (*(v54 + *(v72 + 76)) == 1)
  {
    v77 = v4;
    sub_100013608(&qword_1001DA6F0, &qword_1001DA6E0);
    v56 = SaliencyStreamIngredientsProviding.trackManager.getter();
    v57 = v4[3];
    sub_10001FFF8(v54, v55);
    type metadata accessor for DebugPreviewLayer(0);
    swift_allocObject();

    v58 = sub_1000D5C94(v55, &unk_10017CD58, v56);

    sub_10002005C(v54);
    *(v57 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = v58;
  }

  else
  {
    sub_10002005C(v54);
  }

  return v4;
}

uint64_t sub_100148970(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v76 = a3;
  v7 = *v3;
  v63[1] = v7;
  v70 = type metadata accessor for SaliencyStreamConfiguration();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SaliencyStreamIngredients();
  v75 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = v63 - v13;
  v14 = __chkstk_darwin(v12);
  v72 = v63 - v15;
  __chkstk_darwin(v14);
  v71 = v63 - v16;
  v17 = type metadata accessor for Workflow();
  __chkstk_darwin(v17 - 8);
  v67 = type metadata accessor for EntryPoint();
  v18 = *(v67 - 8);
  __chkstk_darwin(v67);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v64);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v7 + 16)) = 0;
  *(v4 + *(*v4 + 136)) = 0;
  static Log.cameraSource.getter();
  sub_10001FFF8(a1, v22);
  v63[0] = type metadata accessor for ARCameraSource(0);
  v23 = objc_allocWithZone(v63[0]);

  v24 = v76;
  v66 = v22;
  v76 = a2;
  v25 = sub_100154A64(v22, a2, v24);
  v65 = v24;

  v26 = v68;
  v4[2] = v25;
  SaliencyStreamConfiguration.entryPoint.getter();
  EntryPoint.vapWorkflow.getter();
  (*(v18 + 8))(v20, v67);
  type metadata accessor for VisualActionPredictionClient();
  swift_allocObject();
  v27 = VisualActionPredictionClient.init(workflow:)();
  v28 = *(v69 + 16);
  v69 = a1;
  v28(v26, a1, v70);
  if (*(v4[2] + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting))
  {
    sub_100156D2C(&qword_1001D7EF8, type metadata accessor for ARCameraSource.Tracker);
  }

  type metadata accessor for CameraControllerConfiguration.Storage();
  sub_100156D2C(&qword_1001D6058, type metadata accessor for CameraControllerConfiguration.Storage);

  v29 = v71;
  v70 = v27;
  SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)();
  v30 = *(*v4 + 120);
  v31 = v75;
  (*(v75 + 32))(v4 + v30, v29, v9);
  v32 = *(v31 + 16);
  v33 = v72;
  v32(v72, v4 + v30, v9);
  v34 = SaliencyStreamIngredientsProviding.cvCoordinator.getter();
  v35 = *(v31 + 8);
  v35(v33, v9);
  v36 = v73;
  v32(v73, v4 + v30, v9);
  v37 = SaliencyStreamIngredientsProviding.bundleSelector.getter();
  v35(v36, v9);
  v38 = v74;
  v32(v74, v4 + v30, v9);
  v39 = SaliencyStreamIngredientsProviding.actionPredictor.getter();
  v35(v38, v9);
  type metadata accessor for CVFrameSynchronizer();
  swift_allocObject();
  v40 = sub_1000F2F9C(v34, v37, v39);

  v4[3] = v40;
  v41 = v4[2];

  v42 = v41;
  sub_10015441C(v40, v42);

  v43 = [objc_allocWithZone(type metadata accessor for StreamingMetadataProcessor(0)) init];
  v44 = v4[2];
  v45 = *&v44[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_100156A90;
  *(v47 + 24) = v46;
  v80 = sub_10006180C;
  v81 = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  v79 = &unk_1001C6B30;
  v48 = _Block_copy(aBlock);
  v49 = v44;
  v50 = v43;

  dispatch_sync(v45, v48);
  _Block_release(v48);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  else
  {
    v52 = v4[3];
    v53 = v50;

    sub_100154284(v53, v52);

    if (static SystemVariantSupport.isInternalBuild.getter())
    {
      v55 = v4[2];
      v54 = v4[3];
      v79 = v63[0];
      v80 = &off_1001C2068;
      aBlock[0] = v55;
      sub_10002A860(aBlock, v77);
      v56 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataConsumer;
      swift_beginAccess();
      v57 = v55;

      sub_1000924A0(v77, v54 + v56, &qword_1001DB538);
      swift_endAccess();

      sub_100006B44(aBlock);
    }

    v58 = v69;
    v59 = v66;
    sub_10001FFF8(v69, v66);
    type metadata accessor for PreviewLayer(0);
    swift_allocObject();
    v4[4] = sub_1000B8328(v59);

    sub_1000EC7E0();

    if (*(v58 + *(v64 + 76)) == 1)
    {
      aBlock[0] = v4;
      sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
      v60 = SaliencyStreamIngredientsProviding.trackManager.getter();
      v61 = v4[3];
      sub_10001FFF8(v58, v59);
      type metadata accessor for DebugPreviewLayer(0);
      swift_allocObject();

      v62 = sub_1000D5C94(v59, &unk_10017CD38, v60);

      sub_10002005C(v58);
      *(v61 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = v62;
    }

    else
    {
      sub_10002005C(v58);
    }

    return v4;
  }

  return result;
}

uint64_t sub_1001493BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  return sub_10001FFF8(v5 + v3, a1);
}

uint64_t sub_100149484(uint64_t a1)
{
  v3 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v1 + v6, v5);
  v7 = sub_10004B234(v5, a1);
  sub_10002005C(v5);
  if (v7)
  {
    sub_10001FFF8(a1, v5);
    swift_beginAccess();
    sub_100006BEC(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_10002005C(a1);
}

uint64_t sub_100149644(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10013F4F8(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_1001496B0()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPredictor.Output();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  swift_getKeyPath();
  v13 = v0;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  sub_1000138BC(v1 + v9, v8, &qword_1001D44D0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10001370C(v8, &qword_1001D44D0);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10001370C(v8, &qword_1001D44D0);
    v11 = ActionPredictor.Output.saliencyRankedActionPins.getter();
    (*(v3 + 8))(v5, v2);
    return v11;
  }
}

void *sub_100149908()
{
  v42 = type metadata accessor for Angle();
  v36 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for CVBundle();
  v43 = *(v35 - 8);
  v2 = __chkstk_darwin(v35);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v30 - v4;
  v5 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for BundleManager.Output();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v45 = v0;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_1000138BC(v0 + v12, v7, &qword_1001DCBE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001370C(v7, &qword_1001DCBE0);
    return &_swiftEmptyArrayStorage;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = BundleManager.Output.bundles.getter();
  v14 = *(v13 + 16);
  if (!v14)
  {

    (*(v9 + 8))(v11, v8);
    return &_swiftEmptyArrayStorage;
  }

  v31 = v11;
  v32 = v9;
  v33 = v8;
  v44 = &_swiftEmptyArrayStorage;
  sub_100059504(0, v14, 0);
  v15 = v44;
  v16 = *(v43 + 16);
  v17 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v30 = v13;
  v38 = v17;
  v39 = v16;
  v18 = v13 + v17;
  v19 = *(v43 + 72);
  v20 = v35;
  ++v36;
  v37 = v19;
  v21 = (v43 + 8);
  v43 += 16;
  v22 = (v43 + 16);
  v23 = v34;
  do
  {
    v24 = v40;
    v39(v40, v18, v20);
    v25 = v41;
    static Angle.degrees(_:)();
    CVBundle.modifyWithRotation(_:)();
    (*v36)(v25, v42);
    (*v21)(v24, v20);
    v44 = v15;
    v27 = v15[2];
    v26 = v15[3];
    if (v27 >= v26 >> 1)
    {
      sub_100059504(v26 > 1, v27 + 1, 1);
      v15 = v44;
    }

    v15[2] = v27 + 1;
    v28 = v37;
    (*v22)(v15 + v38 + v27 * v37, v23, v20);
    v18 += v28;
    --v14;
  }

  while (v14);
  (*(v32 + 8))(v31, v33);

  return v15;
}

unint64_t sub_100149DE0()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for BundleManager.Output();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_1000138BC(v1 + v9, v4, &qword_1001DCBE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001370C(v4, &qword_1001DCBE0);
    return sub_100097140(&_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = BundleManager.Output.bundleIdToDetectionRequests.getter();
    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

uint64_t sub_10014A028()
{
  swift_getKeyPath();
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  sub_100060424(v1, *(v0 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8), *(v0 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));
  return v1;
}

uint64_t sub_10014A0F4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState;
  v8 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v9 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v10 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  if (v10 <= 1)
  {
    if (*(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16))
    {
      if (a3 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (a3)
    {
      goto LABEL_29;
    }

    if (v8 == a1)
    {
      goto LABEL_15;
    }

LABEL_29:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000616E4(a1, a2, a3);
  }

  if (v10 == 2)
  {
    if (a3 != 2)
    {
      goto LABEL_29;
    }

    if (v8 != a1 || v9 != a2)
    {
      v12 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
      v13 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
      v14 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      LOBYTE(v10) = v14;
      v9 = v13;
      v16 = v15;
      v8 = v12;
      if ((v16 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8 | v9)
  {
    if (v8 ^ 1 | v9)
    {
      if (a3 != 3 || a1 != 2)
      {
        goto LABEL_29;
      }
    }

    else if (a3 != 3 || a1 != 1)
    {
      goto LABEL_29;
    }

    if (a2)
    {
      goto LABEL_29;
    }
  }

  else if (a3 != 3 || a2 | a1)
  {
    goto LABEL_29;
  }

LABEL_15:
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  return sub_1000616E4(v8, v9, v10);
}

uint64_t sub_10014A360@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000138BC(v9 + v7, a3, a2);
}

uint64_t sub_10014A440(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  sub_1000138BC(v1 + v6, v5, &qword_1001D44D0);
  v7 = sub_10015624C(v5, a1);
  sub_10001370C(v5, &qword_1001D44D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000138BC(a1, v5, &qword_1001D44D0);
    swift_beginAccess();
    sub_1000924A0(v5, v1 + v6, &qword_1001D44D0);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001D44D0);
}

uint64_t sub_10014A648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1001565A0(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_10014A6EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
  swift_beginAccess();
  return sub_1000138BC(v3 + v4, a2, &qword_1001DCBE0);
}

uint64_t sub_10014A7C4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000138BC(a1, &v6 - v3, &qword_1001DCBE0);
  return sub_10014A870(v4);
}

uint64_t sub_10014A870(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
  swift_beginAccess();
  sub_1000138BC(v1 + v6, v5, &qword_1001DCBE0);
  v7 = sub_100155B9C(v5, a1);
  sub_10001370C(v5, &qword_1001DCBE0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000138BC(a1, v5, &qword_1001DCBE0);
    swift_beginAccess();
    sub_1000924A0(v5, v1 + v6, &qword_1001DCBE0);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001DCBE0);
}

uint64_t sub_10014AA78()
{
  v1 = v0;
  v2 = type metadata accessor for CameraSourceFrameMetadata();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionPredictor.Output();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  v18 = v0;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  sub_1000138BC(v1 + v12, v11, &qword_1001D44D0);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_10001370C(v11, &qword_1001D44D0);
    v13 = 0;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_10001370C(v11, &qword_1001D44D0);
    ActionPredictor.Output.latestFrameMetadata.getter();
    (*(v6 + 8))(v8, v5);
    v13 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
    (*(v16 + 8))(v4, v17);
  }

  return v13 & 1;
}

uint64_t sub_10014AD64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActionPredictor.Output();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  v16 = v1;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  sub_1000138BC(v2 + v11, v10, &qword_1001D44D0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_10001370C(v10, &qword_1001D44D0);
    v12 = 1;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_10001370C(v10, &qword_1001D44D0);
    ActionPredictor.Output.latestFrameMetadata.getter();
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  v13 = type metadata accessor for CameraSourceFrameMetadata();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

void sub_10014AFFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v95 = &v78 - v5;
  v6 = sub_1000033A8(&qword_1001DCC08);
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = &v78 - v7;
  v8 = sub_1000033A8(&qword_1001D6DC8);
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = &v78 - v9;
  v10 = sub_1000033A8(&qword_1001DA720);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = __chkstk_darwin(v10);
  v91 = v12;
  v92 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v78 - v13;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v82);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v81 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CameraControllerConfiguration(0);
  v20 = __chkstk_darwin(v19);
  v83 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v78 - v22;
  type metadata accessor for CameraControllerConfiguration.Storage();
  v24 = swift_allocObject();
  *(v24 + 16) = [objc_opt_self() standardUserDefaults];
  v25 = objc_allocWithZone(NSUserDefaults);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithSuiteName:v26];

  if (!v27)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = OBJC_IVAR____TtC6Tamale16CameraController_configStorage;
  *(v24 + 24) = v27;
  *(v1 + v28) = v24;
  static Log.cameraController.getter();
  static LoggingSignposter.cameraController.getter();
  v29 = v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_runStateWaiters) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_bundleReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_stateReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_actionPredictorOutputReadingTask) = 0;
  v30 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  v31 = type metadata accessor for ActionPredictor.Output();
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
  v33 = type metadata accessor for BundleManager.Output();
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  v35 = type metadata accessor for ActionPin();
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = MobileGestalt_get_current_device();
  if (!v36)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v37 = v36;
  mainScreenWidth = MobileGestalt_get_mainScreenWidth();

  v39 = MobileGestalt_get_current_device();
  if (!v39)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v40 = v39;
  v41 = v23;
  mainScreenHeight = MobileGestalt_get_mainScreenHeight();

  if (mainScreenHeight <= mainScreenWidth)
  {
    v43 = mainScreenWidth;
  }

  else
  {
    v43 = mainScreenHeight;
  }

  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_displayMaxDimension) = v43;
  ObservationRegistrar.init()();
  sub_10001FFF8(a1, v1 + OBJC_IVAR____TtC6Tamale16CameraController__configuration);
  *(v1 + OBJC_IVAR____TtC6Tamale16CameraController_sourceType) = *(a1 + *(v19 + 32));
  sub_10001FFF8(a1, v23);
  v44 = *(v1 + v28);
  type metadata accessor for Camera();
  v45 = swift_allocObject();
  v79 = v44;

  swift_defaultActor_initialize();
  v46 = sub_10015668C();
  v80 = a1;
  v78 = v41;
  if (v46)
  {
    v47 = v46;
    dispatch_workloop_set_scheduler_priority();
    sub_100014FBC();
    v48 = v47;
    static DispatchQoS.unspecified.getter();
    v100 = &_swiftEmptyArrayStorage;
    sub_100156D2C(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000033A8(&unk_1001D6B50);
    sub_100013608(&unk_1001D8050, &unk_1001D6B50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v86 + 104))(v85, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v87);
    v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    dispatch_activate(v48);

    v45[16] = 0;
    v45[17] = 0;
    v45[15] = v49;
    v50 = v78;
    v51 = v83;
    sub_10001FFF8(v78, v83);
    v52 = v49;
    v53 = sub_100147458(v51, v79, v52);
    sub_10002005C(v50);
    v45[14] = v53;
    *(v2 + 16) = v45;
    v55 = v88;
    v54 = v89;
    v56 = v90;
    (*(v89 + 104))(v88, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v90);
    v57 = v96;
    v58 = v97;
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v54 + 8))(v55, v56);
    (*(v98 + 16))(v2 + OBJC_IVAR____TtC6Tamale16CameraController_cameraCommandContinuation, v58, v99);
    v59 = type metadata accessor for TaskPriority();
    v60 = *(v59 - 8);
    v61 = *(v60 + 56);
    v62 = v60 + 56;
    v63 = v95;
    v88 = v59;
    v61(v95, 1, 1, v59);
    v89 = v62;
    v90 = v61;
    v64 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v65 = static MainActor.shared.getter();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = &protocol witness table for MainActor;
    v66[4] = v64;

    *(v2 + OBJC_IVAR____TtC6Tamale16CameraController_bundleReadingTask) = sub_1000154EC(0, 0, v63, &unk_10017CCA8, v66);

    v61(v63, 1, 1, v59);
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = v92;
    v69 = v93;
    v70 = v94;
    (*(v93 + 16))(v92, v57, v94);

    v71 = static MainActor.shared.getter();
    v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
    v73 = swift_allocObject();
    *(v73 + 2) = v71;
    *(v73 + 3) = &protocol witness table for MainActor;
    *(v73 + 4) = v67;
    (*(v69 + 32))(&v73[v72], v68, v70);

    *(v2 + OBJC_IVAR____TtC6Tamale16CameraController_stateReadingTask) = sub_1000154EC(0, 0, v63, &unk_10017CCB8, v73);

    v90(v63, 1, 1, v88);
    v74 = swift_allocObject();
    swift_weakInit();

    v75 = static MainActor.shared.getter();
    v76 = swift_allocObject();
    v76[2] = v75;
    v76[3] = &protocol witness table for MainActor;
    v76[4] = v74;

    v77 = sub_1000154EC(0, 0, v63, &unk_10017CCC8, v76);
    sub_10002005C(v80);
    (*(v98 + 8))(v97, v99);
    (*(v69 + 8))(v96, v70);
    *(v2 + OBJC_IVAR____TtC6Tamale16CameraController_actionPredictorOutputReadingTask) = v77;

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10014BBE0(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v1 + v6, v5, &qword_1001D44C8);
  v7 = sub_100155EBC(v5, a1);
  sub_10001370C(v5, &qword_1001D44C8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000138BC(a1, v5, &qword_1001D44C8);
    swift_beginAccess();
    sub_1001565A0(v5, v1 + v6, &qword_1001D44C8);
    swift_endAccess();
    sub_10001370C(v5, &qword_1001D44C8);
  }

  return sub_10001370C(a1, &qword_1001D44C8);
}

uint64_t sub_10014BDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v4[17] = sub_1000033A8(&qword_1001DCBE8);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for BundleManager.Output();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_1000033A8(&qword_1001DCBE0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v6 = sub_1000033A8(&qword_1001DCC38);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  sub_1000033A8(&qword_1001DCC40);
  v4[30] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001DCC48);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v9;
  v4[38] = v8;

  return _swift_task_switch(sub_10014C0A8, v9, v8);
}

uint64_t sub_10014C0A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[30];
    v3 = *(Strong + 16);
    v0[39] = v3;

    v4 = sub_1000033A8(&qword_1001DCC50);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

    return _swift_task_switch(sub_10014C270, v3, 0);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10014C270()
{
  v1 = *(v0[39] + 112);
  v0[40] = v1;
  v0[14] = v1;

  v2 = swift_task_alloc();
  v0[41] = v2;
  v3 = sub_1000DD760();
  v4 = sub_1000DD6F4();
  *v2 = v0;
  v2[1] = sub_10014C350;
  v5 = v0[33];
  v6 = v0[30];

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(v5, v6, &type metadata for CameraSource, v3, v4);
}

uint64_t sub_10014C350()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  sub_10001370C(v2, &qword_1001DCC40);
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_10014C4E4, v4, v3);
}

uint64_t sub_10014C4E4()
{
  (*(v0[32] + 32))(v0[34], v0[33], v0[31]);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[42] = 0;
  v1 = static MainActor.shared.getter();
  v0[43] = v1;
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_10014C5F0;
  v3 = v0[26];
  v4 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_10014C5F0()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_10014C734, v3, v2);
}

uint64_t sub_10014C734()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[34];
    v6 = v0[31];
    v7 = v0[32];
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);

    v11 = v0[1];

    return v11();
  }

  v13 = *(v3 + 32);
  v13(v0[22], v1, v2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v47 = v13;
    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[19];
    v19 = v0[20];
    v49 = v0[18];
    v50 = v0[17];
    (*(v19 + 16))(v17, v0[22], v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v20 = OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput;
    swift_beginAccess();
    v52 = v15;
    v48 = v20;
    sub_1000138BC(v15 + v20, v16, &qword_1001DCBE0);
    v21 = v16;
    v22 = *(v50 + 48);
    sub_1000138BC(v21, v49, &qword_1001DCBE0);
    sub_1000138BC(v17, v49 + v22, &qword_1001DCBE0);
    if (v4(v49, 1, v18) == 1)
    {
      v23 = v0[19];
      sub_10001370C(v0[24], &qword_1001DCBE0);
      if (v4(v49 + v22, 1, v23) == 1)
      {
        v24 = v0[20];
        sub_10001370C(v0[18], &qword_1001DCBE0);
        v25 = *(v24 + 8);
LABEL_15:
        v42 = v0[25];
        v25(v0[22], v0[19]);
        swift_beginAccess();
        sub_1001565A0(v42, v52 + v48, &qword_1001DCBE0);
        swift_endAccess();

        v26 = v0[42];
        goto LABEL_16;
      }
    }

    else
    {
      v27 = v0[19];
      sub_1000138BC(v0[18], v0[23], &qword_1001DCBE0);
      v28 = v4(v49 + v22, 1, v27);
      v29 = v0[23];
      v30 = v0[24];
      if (v28 != 1)
      {
        v39 = v0[20];
        v38 = v0[21];
        v40 = v0[19];
        v51 = v0[18];
        v47(v38, v49 + v22, v40);
        sub_100156D2C(&qword_1001DCBF0, &type metadata accessor for BundleManager.Output);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v39 + 8);
        v25(v38, v40);
        sub_10001370C(v30, &qword_1001DCBE0);
        v25(v29, v40);
        sub_10001370C(v51, &qword_1001DCBE0);
        if (v41)
        {
          goto LABEL_15;
        }

LABEL_13:
        v26 = v0[42];
        v33 = v0[25];
        v34 = v0[22];
        v36 = v0[19];
        v35 = v0[20];
        swift_getKeyPath();
        v37 = swift_task_alloc();
        *(v37 + 16) = v52;
        *(v37 + 24) = v33;
        v0[15] = v52;
        sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        (*(v35 + 8))(v34, v36);

LABEL_16:
        sub_10001370C(v0[25], &qword_1001DCBE0);
        goto LABEL_17;
      }

      v32 = v0[19];
      v31 = v0[20];
      sub_10001370C(v0[24], &qword_1001DCBE0);
      (*(v31 + 8))(v29, v32);
    }

    sub_10001370C(v0[18], &qword_1001DCBE8);
    goto LABEL_13;
  }

  (*(v0[20] + 8))(v0[22], v0[19]);
  v26 = v0[42];
LABEL_17:
  v0[42] = v26;
  v43 = static MainActor.shared.getter();
  v0[43] = v43;
  v44 = swift_task_alloc();
  v0[44] = v44;
  *v44 = v0;
  v44[1] = sub_10014C5F0;
  v45 = v0[26];
  v46 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v45, v43, &protocol witness table for MainActor, v46);
}

uint64_t sub_10014CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_1000033A8(&qword_1001DCC30);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001D6AF0);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v9;
  v5[37] = v8;

  return _swift_task_switch(sub_10014CF1C, v9, v8);
}

uint64_t sub_10014CF1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[38] = *(Strong + 16);

    v2 = swift_task_alloc();
    v0[39] = v2;
    *v2 = v0;
    v2[1] = sub_10014D0F0;
    v3 = v0[26];

    return sub_1000E65E4(v3);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v0[40] = *(v5 + 16);

      v6 = swift_task_alloc();
      v0[41] = v6;
      *v6 = v0;
      v6[1] = sub_10014D35C;
      v7 = v0[32];

      return sub_1000E5950(v7);
    }

    else
    {

      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_10014D0F0()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10014D234, v3, v2);
}

uint64_t sub_10014D234()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[40] = *(Strong + 16);

    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_10014D35C;
    v3 = v0[32];

    return sub_1000E5950(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10014D35C()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10014D4A0, v3, v2);
}

uint64_t sub_10014D4A0()
{
  (*(v0[31] + 32))(v0[33], v0[32], v0[30]);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[42] = v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_10014D5AC;
  v3 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v0 + 17, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10014D5AC()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10014D6F0, v3, v2);
}

uint64_t sub_10014D6F0()
{
  v37 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  *(v0 + 352) = v2;
  *(v0 + 360) = v1;
  v3 = *(v0 + 152);
  *(v0 + 153) = v3;
  if (v3 == 255)
  {

LABEL_27:
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    (*(v31 + 8))(v29, v30);

    v32 = *(v0 + 8);

    return v32();
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 368) = Strong;
  if (!Strong)
  {

    sub_100156A3C(v2, v1, v3);
    goto LABEL_27;
  }

  if (v3 != 1 || (v5 = Strong, swift_getKeyPath(), *(v0 + 184) = v5, sub_100060424(v2, v1, 1), sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState, (sub_1000C6538(*(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState), *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8), *(v5 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16), v2, v1, 1) & 1) != 0) || (swift_getKeyPath(), *(v0 + 192) = v5, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v6 + 16) < 3u) || *v6 != 0)
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 153);
    sub_100060424(v9, v7, v10);
    sub_10014A0F4(v9, v7, v10);
    v11 = OBJC_IVAR____TtC6Tamale16CameraController_runStateWaiters;
    swift_beginAccess();
    v12 = *(v8 + v11);
    v13 = *(v12 + 16);

    v18 = 0;
    v19 = v12 + 40;
    v20 = _swiftEmptyArrayStorage;
LABEL_8:
    v21 = v19 + 16 * v18;
    while (v13 != v18)
    {
      if (v18 >= *(v12 + 16))
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
      }

      v22 = *(v0 + 153);
      ++v18;
      v23 = *(v21 - 8);
      *(v0 + 160) = *(v0 + 352);
      *(v0 + 176) = v22;

      v23(&v36, v0 + 160);

      v21 += 16;
      if (v36)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100095880(0, *(v20 + 2) + 1, 1, v20);
          v20 = isUniquelyReferenced_nonNull_native;
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100095880((v24 > 1), v25 + 1, 1, v20);
          v20 = isUniquelyReferenced_nonNull_native;
        }

        *(v20 + 2) = v25 + 1;
        *&v20[8 * v25 + 32] = v18 - 1;
        v19 = v12 + 40;
        goto LABEL_8;
      }
    }

    sub_100156A3C(*(v0 + 352), *(v0 + 360), *(v0 + 153));

    v26 = *(v20 + 2);
    if (!v26)
    {
LABEL_23:

      v27 = static MainActor.shared.getter();
      *(v0 + 336) = v27;
      v28 = swift_task_alloc();
      *(v0 + 344) = v28;
      *v28 = v0;
      v28[1] = sub_10014D5AC;
      v17 = *(v0 + 216);
      v16 = &protocol witness table for MainActor;
      isUniquelyReferenced_nonNull_native = v0 + 136;
      v15 = v27;

      return AsyncStream.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v15, v16, v17);
    }

    swift_beginAccess();
    while (v26 <= *(v20 + 2))
    {
      sub_10014E0C4(*&v20[8 * v26 + 24]);

      if (!--v26)
      {
        swift_endAccess();
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  *(v0 + 376) = static MainActor.shared.getter();
  v35 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 384) = v35;
  *(v0 + 392) = v34;

  return _swift_task_switch(sub_10014DC0C, v35, v34);
}

uint64_t sub_10014DC0C()
{
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_10014DCA0;

  return sub_1000E5504();
}

uint64_t sub_10014DCA0()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_10014DDC0, v3, v2);
}

uint64_t sub_10014DDC0()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_10014DE24, v1, v2);
}

uint64_t sub_10014DE24()
{
  v25 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 153);
  sub_100060424(v3, v2, v4);
  sub_10014A0F4(v3, v2, v4);
  v5 = OBJC_IVAR____TtC6Tamale16CameraController_runStateWaiters;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);

  v12 = 0;
  v13 = v6 + 40;
  v14 = _swiftEmptyArrayStorage;
LABEL_2:
  v15 = v13 + 16 * v12;
  while (v7 != v12)
  {
    if (v12 >= *(v6 + 16))
    {
      goto LABEL_20;
    }

    v16 = *(v0 + 153);
    ++v12;
    v17 = *(v15 - 8);
    *(v0 + 160) = *(v0 + 352);
    *(v0 + 176) = v16;

    v17(&v24, v0 + 160);

    v15 += 16;
    if (v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100095880(0, *(v14 + 2) + 1, 1, v14);
        v14 = isUniquelyReferenced_nonNull_native;
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100095880((v18 > 1), v19 + 1, 1, v14);
        v14 = isUniquelyReferenced_nonNull_native;
      }

      *(v14 + 2) = v19 + 1;
      *&v14[8 * v19 + 32] = v12 - 1;
      v13 = v6 + 40;
      goto LABEL_2;
    }
  }

  sub_100156A3C(*(v0 + 352), *(v0 + 360), *(v0 + 153));

  v20 = *(v14 + 2);
  if (v20)
  {
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    while (v20 <= *(v14 + 2))
    {
      sub_10014E0C4(*&v14[8 * v20 + 24]);

      if (!--v20)
      {
        swift_endAccess();
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return AsyncStream.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v9, v10, v11);
  }

LABEL_16:

  v21 = static MainActor.shared.getter();
  *(v0 + 336) = v21;
  v22 = swift_task_alloc();
  *(v0 + 344) = v22;
  *v22 = v0;
  v22[1] = sub_10014D5AC;
  v11 = *(v0 + 216);
  v10 = &protocol witness table for MainActor;
  isUniquelyReferenced_nonNull_native = v0 + 136;
  v9 = v21;

  return AsyncStream.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, v9, v10, v11);
}

uint64_t sub_10014E0C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C36F8(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10014E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = type metadata accessor for ActionPin();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = sub_1000033A8(&qword_1001DCBD0);
  v4[28] = swift_task_alloc();
  sub_1000033A8(&qword_1001D44C8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = sub_1000033A8(&qword_1001DCBF8);
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for ActionPredictor.Output();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  sub_1000033A8(&qword_1001D44D0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001DCC10);
  v4[43] = v7;
  v4[44] = *(v7 - 8);
  v4[45] = swift_task_alloc();
  sub_1000033A8(&qword_1001DCC18);
  v4[46] = swift_task_alloc();
  v8 = sub_1000033A8(&qword_1001DCC20);
  v4[47] = v8;
  v4[48] = *(v8 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = type metadata accessor for MainActor();
  v4[52] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[53] = v10;
  v4[54] = v9;

  return _swift_task_switch(sub_10014E4F4, v10, v9);
}

uint64_t sub_10014E4F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[46];
    v3 = *(Strong + 16);
    v0[55] = v3;

    v4 = sub_1000033A8(&qword_1001DCC28);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

    return _swift_task_switch(sub_10014E708, v3, 0);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10014E708()
{
  v1 = *(v0[55] + 112);
  v0[56] = v1;
  v0[20] = v1;

  v2 = swift_task_alloc();
  v0[57] = v2;
  v3 = sub_1000DD760();
  v4 = sub_1000DD6F4();
  *v2 = v0;
  v2[1] = sub_10014E7E8;
  v5 = v0[49];
  v6 = v0[46];

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(v5, v6, &type metadata for CameraSource, v3, v4);
}

uint64_t sub_10014E7E8()
{
  v1 = *v0;
  v2 = *(*v0 + 368);

  sub_10001370C(v2, &qword_1001DCC18);
  v3 = *(v1 + 432);
  v4 = *(v1 + 424);

  return _swift_task_switch(sub_10014E97C, v4, v3);
}

uint64_t sub_10014E97C()
{
  (*(v0[48] + 32))(v0[50], v0[49], v0[47]);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[58] = 0;
  v1 = static MainActor.shared.getter();
  v0[59] = v1;
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_10014EA88;
  v3 = v0[42];
  v4 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_10014EA88()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return _swift_task_switch(sub_10014EBCC, v3, v2);
}

uint64_t sub_10014EBCC()
{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[36];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[50];
    v6 = v0[47];
    v7 = v0[48];
    v9 = v0[44];
    v8 = v0[45];
    v10 = v0[43];

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
LABEL_8:

    v33 = v0[1];

    return v33();
  }

  v11 = *(v3 + 32);
  v11(v0[38], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24 = v0[50];
    v25 = v0[47];
    v26 = v0[48];
    v28 = v0[44];
    v27 = v0[45];
    v29 = v0[43];
    v30 = v0[38];
    v31 = v0[35];
    v32 = v0[36];

    (*(v32 + 8))(v30, v31);
    (*(v28 + 8))(v27, v29);
    (*(v26 + 8))(v24, v25);
    goto LABEL_8;
  }

  v13 = Strong;
  v85 = v11;
  v14 = v0[40];
  v15 = v0[41];
  v16 = v0[35];
  v17 = v0[36];
  v87 = v0[34];
  v89 = v0[33];
  (*(v17 + 16))(v15, v0[38], v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  v91 = v13;
  v86 = v18;
  sub_1000138BC(v13 + v18, v14, &qword_1001D44D0);
  v19 = v14;
  v20 = *(v89 + 48);
  sub_1000138BC(v19, v87, &qword_1001D44D0);
  sub_1000138BC(v15, v87 + v20, &qword_1001D44D0);
  if (v4(v87, 1, v16) != 1)
  {
    v35 = v0[35];
    sub_1000138BC(v0[34], v0[39], &qword_1001D44D0);
    v36 = v4(v87 + v20, 1, v35);
    v37 = v0[39];
    v38 = v0[40];
    if (v36 != 1)
    {
      v44 = v20;
      v45 = v0[36];
      v46 = v0[37];
      v48 = v0[34];
      v47 = v0[35];
      v85(v46, v87 + v44, v47);
      sub_100156D2C(&qword_1001DCC00, &type metadata accessor for ActionPredictor.Output);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v45 + 8);
      v50(v46, v47);
      sub_10001370C(v38, &qword_1001D44D0);
      v50(v37, v47);
      sub_10001370C(v48, &qword_1001D44D0);
      v23 = v91;
      if (v49)
      {
        goto LABEL_16;
      }

LABEL_14:
      v41 = v0[58];
      v42 = v0[41];
      swift_getKeyPath();
      v43 = swift_task_alloc();
      *(v43 + 16) = v23;
      *(v43 + 24) = v42;
      v0[21] = v23;
      sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v90 = v41;

      goto LABEL_17;
    }

    v40 = v0[35];
    v39 = v0[36];
    sub_10001370C(v0[40], &qword_1001D44D0);
    (*(v39 + 8))(v37, v40);
    v23 = v13;
LABEL_13:
    sub_10001370C(v0[34], &qword_1001DCBF8);
    goto LABEL_14;
  }

  v21 = v0[35];
  sub_10001370C(v0[40], &qword_1001D44D0);
  v22 = v4(v87 + v20, 1, v21);
  v23 = v13;
  if (v22 != 1)
  {
    goto LABEL_13;
  }

  sub_10001370C(v0[34], &qword_1001D44D0);
LABEL_16:
  v51 = v0[41];
  swift_beginAccess();
  sub_1001565A0(v51, v23 + v86, &qword_1001D44D0);
  swift_endAccess();
  v90 = v0[58];
LABEL_17:
  v53 = v0[31];
  v52 = v0[32];
  v55 = v0[27];
  v54 = v0[28];
  v56 = v0[25];
  v88 = v0[24];
  sub_10001370C(v0[41], &qword_1001D44D0);
  ActionPredictor.Output.highestSaliencyWhileStreaming.getter();
  v57 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1000138BC(v23 + v57, v53, &qword_1001D44C8);
  v58 = *(v55 + 48);
  sub_1000138BC(v53, v54, &qword_1001D44C8);
  sub_1000138BC(v52, v54 + v58, &qword_1001D44C8);
  v59 = *(v56 + 48);
  if (v59(v54, 1, v88) == 1)
  {
    v60 = v0[24];
    sub_10001370C(v0[31], &qword_1001D44C8);
    v61 = v90;
    if (v59(v54 + v58, 1, v60) == 1)
    {
      sub_10001370C(v0[28], &qword_1001D44C8);
LABEL_25:
      v79 = v0[32];
      v80 = v0[29];
      (*(v0[36] + 8))(v0[38], v0[35]);
      sub_1000138BC(v79, v80, &qword_1001D44C8);
      swift_beginAccess();
      sub_1001565A0(v80, v91 + v57, &qword_1001D44C8);
      swift_endAccess();
      sub_10001370C(v80, &qword_1001D44C8);

      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v62 = v0[24];
  sub_1000138BC(v0[28], v0[30], &qword_1001D44C8);
  v63 = v59(v54 + v58, 1, v62);
  v64 = v0[30];
  v65 = v0[31];
  if (v63 == 1)
  {
    v67 = v0[24];
    v66 = v0[25];
    sub_10001370C(v0[31], &qword_1001D44C8);
    (*(v66 + 8))(v64, v67);
    v61 = v90;
LABEL_22:
    sub_10001370C(v0[28], &qword_1001DCBD0);
    goto LABEL_23;
  }

  v73 = v0[28];
  v74 = v0[25];
  v75 = v0[26];
  v76 = v0[24];
  (*(v74 + 32))(v75, v54 + v58, v76);
  sub_100156D2C(&qword_1001DCBD8, &type metadata accessor for ActionPin);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  v78 = *(v74 + 8);
  v78(v75, v76);
  sub_10001370C(v65, &qword_1001D44C8);
  v78(v64, v76);
  sub_10001370C(v73, &qword_1001D44C8);
  v61 = v90;
  if (v77)
  {
    goto LABEL_25;
  }

LABEL_23:
  v68 = v0[38];
  v70 = v0[35];
  v69 = v0[36];
  v71 = v0[32];
  swift_getKeyPath();
  v72 = swift_task_alloc();
  *(v72 + 16) = v91;
  *(v72 + 24) = v71;
  v0[22] = v91;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v69 + 8))(v68, v70);

LABEL_26:
  sub_10001370C(v0[32], &qword_1001D44C8);
  v0[58] = v61;
  v81 = static MainActor.shared.getter();
  v0[59] = v81;
  v82 = swift_task_alloc();
  v0[60] = v82;
  *v82 = v0;
  v82[1] = sub_10014EA88;
  v83 = v0[42];
  v84 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v83, v81, &protocol witness table for MainActor, v84);
}

uint64_t sub_10014F6A0()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D6DC8);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v31 - v3;
  v4 = sub_1000033A8(&qword_1001D6DC0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v33 = OBJC_IVAR____TtC6Tamale16CameraController_logger;
  v10(v9, v1 + OBJC_IVAR____TtC6Tamale16CameraController_logger, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v32 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v15 = 0x7275747061435641;
    v16 = 0xE900000000000065;
    if (*(v1 + OBJC_IVAR____TtC6Tamale16CameraController_sourceType) != 1)
    {
      v15 = 0x6F74616C756D6953;
      v16 = 0xE900000000000072;
    }

    if (*(v1 + OBJC_IVAR____TtC6Tamale16CameraController_sourceType))
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x74694B5241;
    }

    if (*(v1 + OBJC_IVAR____TtC6Tamale16CameraController_sourceType))
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_1000E0FE0(v17, v18, &v39);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Tearing down CameraController %s", v13, 0xCu);
    sub_100006B44(v14);

    v20 = *(v7 + 8);
    v20(v9, v6);
    v2 = v32;
  }

  else
  {

    v20 = *(v7 + 8);
    v20(v9, v6);
  }

  v21 = OBJC_IVAR____TtC6Tamale16CameraController_cameraCommandContinuation;
  v22 = v37;
  v23 = v38;
  (*(v38 + 16))(v37, v1 + OBJC_IVAR____TtC6Tamale16CameraController_cameraCommandContinuation, v2);
  v39 = 1;
  v40 = 2;
  v24 = v34;
  AsyncStream.Continuation.yield(_:)();
  v25 = *(v23 + 8);
  v25(v22, v2);
  (*(v35 + 8))(v24, v36);

  sub_10002005C(v1 + OBJC_IVAR____TtC6Tamale16CameraController__configuration);

  v20((v1 + v33), v6);
  v26 = OBJC_IVAR____TtC6Tamale16CameraController_signposter;
  v27 = type metadata accessor for LoggingSignposter();
  (*(*(v27 - 8) + 8))(v1 + v26, v27);
  sub_1000616E4(*(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState), *(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8), *(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  v25((v1 + v21), v2);
  sub_10001370C(v1 + OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput, &qword_1001D44D0);
  sub_10001370C(v1 + OBJC_IVAR____TtC6Tamale16CameraController__latestBundleManagerOutput, &qword_1001DCBE0);
  sub_10001370C(v1 + OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject, &qword_1001D44C8);
  v28 = OBJC_IVAR____TtC6Tamale16CameraController___observationRegistrar;
  v29 = type metadata accessor for ObservationRegistrar();
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  return v1;
}

uint64_t sub_10014FC18()
{
  sub_10014F6A0();

  return swift_deallocClassInstance();
}

uint64_t sub_10014FC70()
{
  v0 = sub_1000033A8(&qword_1001D6DC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  static LoggingSignposter.cameraControllerStart.getter();
  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  LoggingSignposter.emitEvent(_:shouldLog:)();
  v10 = type metadata accessor for BundleManager.Output();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10014A870(v9);
  v11 = type metadata accessor for ActionPin();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_10014BBE0(v6);
  v13 = 0;
  v14 = 2;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10014FEEC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000033A8(&qword_1001D8020);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for CameraControllerConfiguration(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v4;
  v2[13] = v3;

  return _swift_task_switch(sub_10014FFEC, v4, v3);
}

uint64_t sub_10014FFEC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  swift_getKeyPath();
  v0[5] = v3;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v3 + v4, v1);
  LOBYTE(v4) = sub_10004B234(v2, v1);
  sub_10002005C(v1);
  if (v4)
  {
    v5 = v0[8];
    sub_1000138BC(v0[6] + *(v0[9] + 68), v5, &qword_1001D8020);
    v6 = type metadata accessor for URL();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
    {
      v7 = v0[8];

      sub_10001370C(v7, &qword_1001D8020);

      v8 = v0[1];

      return v8();
    }

    sub_10001370C(v0[8], &qword_1001D8020);
  }

  v10 = *(v0[7] + 16);
  v0[14] = v10;

  return _swift_task_switch(sub_100150228, v10, 0);
}

uint64_t sub_100150228()
{
  v1 = *(v0[14] + 112);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1001502C8;
  v3 = v0[6];

  return sub_1000D6E70(v3, v1);
}

uint64_t sub_1001502C8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10015049C;
  }

  else
  {
    v5 = sub_100150404;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100150404()
{
  v1 = v0[10];
  v2 = v0[6];

  sub_10001FFF8(v2, v1);
  sub_100149484(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10015049C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100150538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000138BC(a2, &v9 - v5, &qword_1001D44C8);
  v7 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  sub_1001565A0(v6, a1 + v7, &qword_1001D44C8);
  swift_endAccess();
  return sub_10001370C(v6, &qword_1001D44C8);
}

uint64_t sub_10015062C()
{
  v1[5] = v0;
  v2 = sub_1000033A8(&qword_1001D6DC0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v4;
  v1[12] = v3;

  return _swift_task_switch(sub_100150730, v4, v3);
}

uint64_t sub_100150730()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  static LoggingSignposter.cameraControllerStop.getter();
  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  LoggingSignposter.emitEvent(_:shouldLog:)();
  *(v0 + 16) = 1;
  *(v0 + 24) = 2;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  *(v0 + 32) = v4;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16))
  {
    *(v0 + 104) = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10015099C;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10015099C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100150AE0, v3, v2);
}

uint64_t sub_100150AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100150B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DCBC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  (*(v5 + 16))(&v17 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = OBJC_IVAR____TtC6Tamale16CameraController_runStateWaiters;
  swift_beginAccess();
  v11 = *(a2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100095984(0, v11[2] + 1, 1, v11);
    *(a2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100095984((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1001541F8;
  v15[5] = v9;
  *(a2 + v10) = v11;
  return swift_endAccess();
}

uint64_t sub_100150D1C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = 0;
  }

  else
  {
    sub_1000033A8(&qword_1001DCBC8);
    result = CheckedContinuation.resume(returning:)();
    v3 = 1;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100150D74()
{
  v1[4] = v0;
  v2 = sub_1000033A8(&qword_1001DA780);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1000033A8(&qword_1001DCBC0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v5;
  v1[13] = v4;

  return _swift_task_switch(sub_100150EDC, v5, v4);
}

uint64_t sub_100150EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100150F78;
  v2 = *(v0 + 56);

  return sub_1000E5D54(v2);
}

uint64_t sub_100150F78()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100151098, v3, v2);
}

uint64_t sub_100151098()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_10015116C;
  v5 = v0[8];

  return AsyncStream.Iterator.next()(v0 + 2, v5);
}

uint64_t sub_10015116C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10015128C, v3, v2);
}

void sub_10015128C()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    v3(v1, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10015134C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1001513EC, v5, v4);
}

uint64_t sub_1001513EC()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_100156D2C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16) >= 3u && *(v1 + OBJC_IVAR____TtC6Tamale16CameraController__runState) == 0)
  {
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_100151624;
    v10 = v0[3];
    v11 = v0[4];

    return sub_1000E68EC(v10, v11);
  }

  else
  {
    v2 = v0[5];
    v3 = v0[4];
    v4 = static MainActor.shared.getter();
    v0[12] = v4;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v7 = sub_1000033A8(&qword_1001DCBB0);
    *v6 = v0;
    v6[1] = sub_1001517C4;
    v8 = v0[3];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v4, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x800000010016F570, sub_100153DA4, v5, v7);
  }
}

uint64_t sub_100151624()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1001518E8;
  }

  else
  {
    v5 = sub_100151760;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100151760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001517C4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10015194C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100156E64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001518E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015194C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001519C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D6DC0);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_1000033A8(&qword_1001DCBB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  (*(v10 + 16))(&v24 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v17 = OBJC_IVAR____TtC6Tamale16CameraController_runStateWaiters;
  swift_beginAccess();
  v18 = *(a2 + v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v17) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_100095984(0, v18[2] + 1, 1, v18);
    *(a2 + v17) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_100095984((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = sub_100153E5C;
  v22[5] = v16;
  *(a2 + v17) = v18;
  swift_endAccess();
  static LoggingSignposter.cameraControllerPause.getter();
  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  LoggingSignposter.emitEvent(_:shouldLog:)();
  v27 = 2;
  v28 = 2;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();
  return (*(v25 + 8))(v8, v26);
}

uint64_t sub_100151CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1000033A8(&qword_1001DCBB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_1000033A8(&qword_1001D41B0);
  result = __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  if (*(a1 + 16) >= 3u && *a1 == 0)
  {
    v20 = type metadata accessor for TaskPriority();
    v19 = 1;
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    (*(v11 + 16))(v14, a2, v10);
    type metadata accessor for MainActor();

    v27 = static MainActor.shared.getter();
    v28 = a3;
    v21 = *(v11 + 80);
    v29 = a4;
    v22 = (v21 + 32) & ~v21;
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = &protocol witness table for MainActor;
    (*(v11 + 32))(v24 + v22, v14, v10);
    v25 = v29;
    *(v24 + v23) = v28;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
    sub_1000154EC(0, 0, v18, &unk_10017CBA8, v24);
  }

  else
  {
    v19 = 0;
  }

  *a5 = v19;
  return result;
}

uint64_t sub_100151F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_100151FD4, v8, v7);
}

uint64_t sub_100151FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100152074;
  v2 = *(v0 + 80);

  return sub_1000E68EC(v0 + 16, v2);
}

uint64_t sub_100152074()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100152234;
  }

  else
  {
    v5 = sub_1001521B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001521B0()
{

  sub_1000033A8(&qword_1001DCBB8);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100152234()
{
  v1 = v0[15];

  v0[7] = v1;
  sub_1000033A8(&qword_1001DCBB8);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

char *sub_1001522CC()
{
  v0 = sub_1000033A8(&qword_1001DCC60);
  v1 = __chkstk_darwin(v0 - 8);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = v36 - v3;
  v5 = type metadata accessor for ActionPin.Pill();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v36 - v10;
  v12 = ActionPin.rankedPills.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = *(v14 + 64);
    v36[1] = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v46 = *(v14 + 56);
    v47 = v15;
    v38 = enum case for BuiltInAction.summarize(_:);
    v37 = enum case for BuiltInAction.readAloud(_:);
    v18 = _swiftEmptyArrayStorage;
    v45 = (v14 - 8);
    v39 = v9;
    v40 = v14;
    do
    {
      v19 = v47;
      v47(v11, v17, v5);
      v19(v9, v11, v5);
      BuiltInAction.init(pill:)();
      v20 = type metadata accessor for BuiltInAction();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v4, 1, v20) == 1)
      {
        (*v45)(v11, v5);
        sub_10001370C(v4, &qword_1001DCC60);
      }

      else
      {
        v22 = v41;
        sub_1000138BC(v4, v41, &qword_1001DCC60);
        v23 = (*(v21 + 88))(v22, v20);
        if (v23 == v38)
        {
          (*v45)(v11, v5);
          v43 = 0;
          v44 = 0;
          v42 = 0;
          v24 = 3;
          v25 = 3;
        }

        else if (v23 == v37)
        {
          (*v45)(v11, v5);
          v43 = 0;
          v44 = 0;
          v42 = 0;
          v25 = 3;
          v24 = 4;
        }

        else
        {
          (*(v21 + 8))(v41, v20);
          v24 = ActionPin.Pill.glyphName.getter();
          v44 = v26;
          v27 = ActionPin.Pill.localizedTitle.getter();
          v42 = v28;
          v43 = v27;
          (*v45)(v11, v5);
          v25 = 2;
        }

        sub_10001370C(v4, &qword_1001DCC60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100094CC8(0, *(v18 + 2) + 1, 1, v18);
        }

        v30 = *(v18 + 2);
        v29 = *(v18 + 3);
        if (v30 >= v29 >> 1)
        {
          v18 = sub_100094CC8((v29 > 1), v30 + 1, 1, v18);
        }

        *(v18 + 2) = v30 + 1;
        v31 = &v18[40 * v30];
        v33 = v43;
        v32 = v44;
        *(v31 + 4) = v24;
        *(v31 + 5) = v32;
        v34 = v42;
        *(v31 + 6) = v33;
        *(v31 + 7) = v34;
        v31[64] = v25;
        v9 = v39;
      }

      v17 += v46;
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v18;
}

uint64_t type metadata accessor for CameraController()
{
  result = qword_1001DC7F8;
  if (!qword_1001DC7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001527C0()
{
  type metadata accessor for CameraControllerConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LoggingSignposter();
      if (v2 <= 0x3F)
      {
        sub_100152A90();
        if (v3 <= 0x3F)
        {
          sub_100152AE0(319, &qword_1001DC810, &type metadata accessor for ActionPredictor.Output);
          if (v4 <= 0x3F)
          {
            sub_100152AE0(319, &qword_1001DC818, &type metadata accessor for BundleManager.Output);
            if (v5 <= 0x3F)
            {
              sub_100152AE0(319, &unk_1001DC820, &type metadata accessor for ActionPin);
              if (v6 <= 0x3F)
              {
                type metadata accessor for ObservationRegistrar();
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100152A90()
{
  if (!qword_1001DC808)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DC808);
    }
  }
}

void sub_100152AE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100152B34()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100152BC4, v1, v0);
}

uint64_t sub_100152C44()
{
  sub_1000DD6A0();
  sub_1000DD760();
  return SaliencyStreamIdentifierProviding<>.streamIdentifier.getter();
}

uint64_t sub_100152C9C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100152D2C, v1, v0);
}

uint64_t sub_100152DAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100152E4C, v5, v4);
}

uint64_t sub_100152E4C()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100152E70, v1, 0);
}

uint64_t sub_100152E70()
{
  v0[2] = *(v0[9] + 112);
  v1 = swift_task_alloc();
  v0[10] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_100152F3C;
  v4 = v0[3];
  v5 = v0[4];

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(v4, v5, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_100152F3C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10012E088, v3, v2);
}

uint64_t sub_10015305C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_1001530FC, v5, v4);
}

uint64_t sub_1001530FC()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100153120, v1, 0);
}

uint64_t sub_100153120()
{
  v0[2] = *(v0[9] + 112);
  v1 = swift_task_alloc();
  v0[10] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_1001531EC;
  v4 = v0[3];
  v5 = v0[4];

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(v4, v5, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_1001531EC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1001439E8, v3, v2);
}

uint64_t sub_10015330C(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v5;
  v2[7] = v4;

  return _swift_task_switch(sub_1001533A8, v5, v4);
}

uint64_t sub_1001533A8()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1001533CC, v1, 0);
}

uint64_t sub_1001533CC()
{
  v0[2] = *(v0[8] + 112);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_100153498;
  v4 = v0[3];

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(v4, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_100153498()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001535B8, v3, v2);
}

uint64_t sub_1001535B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100153618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  type metadata accessor for MainActor();
  v9[11] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[12] = v11;
  v9[13] = v10;

  return _swift_task_switch(sub_1001536C0, v11, v10);
}

uint64_t sub_1001536C0()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100153768;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1000E640C(v8, v9, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_100153768()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100114654, v3, v2);
}

uint64_t sub_100153888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100019340;

  return sub_100153618(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100153980(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 56) = a2;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a1;
  sub_1000033A8(&qword_1001D44C8);
  v8 = swift_task_alloc();
  v9 = *v6;
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  type metadata accessor for MainActor();
  *(v7 + 80) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 88) = v11;
  *(v7 + 96) = v10;

  return _swift_task_switch(sub_100153A60, v11, v10);
}

uint64_t sub_100153A60()
{
  v1 = swift_task_alloc();
  *(v0 + 13) = v1;
  *v1 = v0;
  v1[1] = sub_100153B08;
  v2 = *(v0 + 7);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 2);

  return sub_1000E605C(v7, v2, v5, v6, v3, v4);
}

uint64_t sub_100153B08()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100153C28, v3, v2);
}

uint64_t sub_100153C28()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_1000138BC(v2, v1, &qword_1001D44C8);
  sub_10014BBE0(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100153DAC()
{
  v1 = sub_1000033A8(&qword_1001DCBB8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100153E5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_1000033A8(&qword_1001DCBB8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100151CCC(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_100153F20()
{
  v1 = sub_1000033A8(&qword_1001DCBB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100154014(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000033A8(&qword_1001DCBB8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100019774;

  return sub_100151F38(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_100154164()
{
  v1 = sub_1000033A8(&qword_1001DCBC8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001541F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1000033A8(&qword_1001DCBC8);

  return sub_100150D1C(a1, a2);
}

uint64_t sub_100154284(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for StreamingMetadataProcessor(0);
  v11[4] = &off_1001C16B0;
  v11[0] = a1;
  v4 = *(a2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  sub_10002A860(v11, v10);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  sub_1000F4798(v10, v5 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100156B9C;
  *(v6 + 24) = v5;
  v9[4] = sub_1000C5638;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100071D78;
  v9[3] = &unk_1001C6BA8;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  sub_100006B44(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015441C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = &off_1001C5200;
  aBlock[4] = sub_100156BE4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C6C20;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100156D2C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_100154740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = &off_1001C5200;
  aBlock[4] = sub_100156CD4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C6CC0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100156D2C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

char *sub_100154A64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v62 = a1;
  v63 = a3;
  v66 = a2;
  v65 = type metadata accessor for CameraControllerConfiguration(0) - 8;
  __chkstk_darwin(v65);
  v64 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000033A8(&qword_1001DCC58);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v49 - v6;
  v61 = sub_1000033A8(&qword_1001D6B78);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = v49 - v7;
  v56 = sub_1000033A8(&qword_1001D6AF0);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = v49 - v8;
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v52 = v49 - v10;
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataOutput] = 0;
  v50 = OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataQueue;
  v49[2] = sub_100014FBC();
  v49[1] = "Intelligence";
  static DispatchQoS.unspecified.getter();
  v68 = &_swiftEmptyArrayStorage;
  sub_100156D2C(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50);
  sub_100013608(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  *&v3[v50] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_photoOutput] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_sensorOrientedBufferDimensions] = 0;
  v16 = &v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea];
  static CGRect.unitRect.getter();
  *v16 = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  v21 = OBJC_IVAR____TtC6Tamale14ARCameraSource_stillImageCroppingHandle;
  type metadata accessor for M2MHandle();
  *&v3[v21] = M2MHandle.__allocating_init()();
  v22 = OBJC_IVAR____TtC6Tamale14ARCameraSource_ciContext;
  *&v3[v22] = [objc_allocWithZone(CIContext) init];
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_stillImageCropOutputBuffer] = 0;
  v23 = OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask;
  v24 = type metadata accessor for TaskPriority();
  v25 = v52;
  (*(*(v24 - 8) + 56))(v52, 1, 1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *&v3[v23] = sub_1000151F4(0, 0, v25, &unk_10017CD50, v26);
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor] = 0x3FF0000000000000;
  v27 = &v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureState];
  *v27 = 0;
  v27[8] = 1;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureInitialZoomFactor] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider] = 0;
  v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_cameraControlsDisabled] = 0;
  *&v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureObservation] = 0;
  v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel] = 0;
  v3[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevelOverride] = 4;
  static Log.cameraSource.getter();
  static LoggingSignposter.cameraSource.getter();
  v28 = OBJC_IVAR____TtC6Tamale14ARCameraSource_runStateStreamInternal;
  v29 = OBJC_IVAR____TtC6Tamale14ARCameraSource_runStateStreamContinuation;
  v31 = v57;
  v30 = v58;
  v32 = v60;
  (*(v58 + 104))(v57, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v60);
  v33 = v53;
  v34 = v55;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v30 + 8))(v31, v32);
  (*(v54 + 32))(&v4[v28], v33, v56);
  (*(v59 + 32))(&v4[v29], v34, v61);
  v35 = &v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v35[16] = 0;
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting;
  *&v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting] = 0;
  v37 = v62;
  sub_10001FFF8(v62, &v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration]);
  v38 = v63;
  *&v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue] = v63;
  type metadata accessor for CameraMotionMonitor();
  swift_allocObject();
  v39 = v38;
  sub_10009D2D0(30.0);
  *&v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_motionMonitor] = v40;
  v41 = v64;
  sub_10001FFF8(v37, v64);
  type metadata accessor for ARCameraSource.Tracker(0);
  swift_allocObject();
  *&v4[v36] = sub_10007FE9C(v41);

  v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_localizationState] = 0;
  v42 = v37 + *(v65 + 56);
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  v44 = &v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_safeAreaStrategy];
  *v44 = v43;
  v44[8] = v42;
  v45 = type metadata accessor for ARCameraSource(0);
  v67.receiver = v4;
  v67.super_class = v45;
  v46 = objc_msgSendSuper2(&v67, "init");
  v47 = sub_100072B00();
  [v47 setDelegate:v46];

  [*&v46[OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session] setDelegateQueue:v39];
  if (*&v46[OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting])
  {
    swift_unknownObjectWeakAssign();
  }

  sub_100073560();

  sub_10002005C(v37);
  return v46;
}

id sub_1001553A4(uint64_t a1, void *a2)
{
  v33 = a2;
  v34 = a1;
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3 - 8);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000033A8(&qword_1001DCC58);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - v6;
  v31 = sub_1000033A8(&qword_1001D6B78);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v27 - v8;
  v28 = sub_1000033A8(&qword_1001D6AF0);
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v27 - v11;
  v13 = OBJC_IVAR____TtC6Tamale14AVCameraSource_highQualityFrame;
  v14 = type metadata accessor for AVCameraSourceFrame(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&v2[v13], 1, 1, v14);
  v16 = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput] = v16;
  v17 = [objc_allocWithZone(AVCaptureMetadataOutput) init];
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput] = v17;
  v15(&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame], 1, 1, v14);
  v18 = OBJC_IVAR____TtC6Tamale14AVCameraSource_runStateStreamInternal;
  v19 = OBJC_IVAR____TtC6Tamale14AVCameraSource_runStateStreamContinuation;
  v20 = v30;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v30);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v20);
  (*(v10 + 32))(&v2[v18], v12, v28);
  (*(v29 + 32))(&v2[v19], v9, v31);
  v21 = &v2[OBJC_IVAR____TtC6Tamale14AVCameraSource__runState];
  v21[16] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  static Log.cameraSource.getter();
  static Log.cameraSource.getter();
  OSSignposter.init(logger:)();
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource_synchronizer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureDevice] = 1;
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession] = 0;
  ObservationRegistrar.init()();
  v22 = v33;
  *&v2[OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue] = v33;
  v23 = type metadata accessor for AVCameraSource(0);
  v35.receiver = v2;
  v35.super_class = v23;
  v24 = v22;
  v25 = objc_msgSendSuper2(&v35, "init");
  sub_10002005C(v34);
  return v25;
}

uint64_t sub_1001557E8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v3 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - v4;
  v5 = sub_1000033A8(&qword_1001DCC58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v24 = sub_1000033A8(&qword_1001D6B78);
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v22 - v10;
  v12 = sub_1000033A8(&qword_1001D6AF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamInternal;
  v23 = OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runStateStreamContinuation;
  (*(v6 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 32))(v2 + v16, v15, v12);
  (*(v9 + 32))(v2 + v23, v11, v24);
  v17 = v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_runState;
  *(v17 + 16) = 0;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_sizeOfPreviewFrame) = xmmword_10017C8E0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufHighQuality) = 0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_staticPbufStreaming) = 0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameTimer) = 0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_framerateHz) = 0x4024000000000000;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_timestamp) = 0;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_synchronizer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource____lazy_storage___trackManagerSupporting) = 1;
  *(v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_frameQueue) = v26;
  v18 = type metadata accessor for CameraControllerConfiguration(0);
  v19 = v27;
  v20 = v25;
  sub_1000138BC(v27 + *(v18 + 56), v25, &qword_1001D8020);
  sub_10002005C(v19);
  sub_100156D74(v20, v2 + OBJC_IVAR____TtC6Tamale21SimulatorCameraSource_stillFrameURL);
  return v2;
}

uint64_t sub_100155B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleManager.Output();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001DCBE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000033A8(&qword_1001DCBE8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000138BC(a1, &v21 - v13, &qword_1001DCBE0);
  sub_1000138BC(a2, &v14[v15], &qword_1001DCBE0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000138BC(v14, v10, &qword_1001DCBE0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100156D2C(&qword_1001DCBF0, &type metadata accessor for BundleManager.Output);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10001370C(v14, &qword_1001DCBE0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10001370C(v14, &qword_1001DCBE8);
    v17 = 1;
    return v17 & 1;
  }

  sub_10001370C(v14, &qword_1001DCBE0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100155EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000033A8(&qword_1001DCBD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000138BC(a1, &v21 - v13, &qword_1001D44C8);
  sub_1000138BC(a2, &v14[v15], &qword_1001D44C8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000138BC(v14, v10, &qword_1001D44C8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100156D2C(&qword_1001DCBD8, &type metadata accessor for ActionPin);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10001370C(v14, &qword_1001D44C8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10001370C(v14, &qword_1001DCBD0);
    v17 = 1;
    return v17 & 1;
  }

  sub_10001370C(v14, &qword_1001D44C8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10015624C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPredictor.Output();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000033A8(&qword_1001DCBF8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000138BC(a1, &v21 - v13, &qword_1001D44D0);
  sub_1000138BC(a2, &v14[v15], &qword_1001D44D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000138BC(v14, v10, &qword_1001D44D0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100156D2C(&qword_1001DCC00, &type metadata accessor for ActionPredictor.Output);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10001370C(v14, &qword_1001D44D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10001370C(v14, &qword_1001DCBF8);
    v17 = 1;
    return v17 & 1;
  }

  sub_10001370C(v14, &qword_1001D44D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1001565A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000033A8(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100156608()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC6Tamale16CameraController__runState;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_100060424(v1, v2, v6);
  return sub_1000616E4(v4, v5, v7);
}

dispatch_workloop_t sub_10015668C()
{
  inactive = dispatch_workloop_create_inactive("CameraSource");

  return inactive;
}

uint64_t sub_1001566BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001566F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_10014BDF8(a1, v4, v5, v6);
}

uint64_t sub_1001567AC()
{
  v1 = sub_1000033A8(&qword_1001DA720);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100156884(uint64_t a1)
{
  v4 = *(sub_1000033A8(&qword_1001DA720) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019774;

  return sub_10014CDA4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100156988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_10014E150(a1, v4, v5, v6);
}

uint64_t sub_100156A3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000616E4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100156A50()
{

  return swift_deallocObject();
}

uint64_t sub_100156AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156AC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000D9CD0(a1);
}

uint64_t sub_100156B5C()
{

  sub_100006B44(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100156BA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100156BF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100156C28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_100072DEC(a1);
}

uint64_t sub_100156CE0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100156D2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100156D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_100156E68()
{
  v1 = type metadata accessor for ResultLookupState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v57 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = &v57 - v6;
  v7 = __chkstk_darwin(v5);
  v60 = &v57 - v8;
  v9 = __chkstk_darwin(v7);
  v61 = &v57 - v10;
  v11 = __chkstk_darwin(v9);
  v62 = &v57 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = __chkstk_darwin(v13);
  v63 = &v57 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = __chkstk_darwin(v18);
  v59 = &v57 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v57 - v24;
  __chkstk_darwin(v23);
  v27 = &v57 - v26;
  v28 = *(v2 + 16);
  v28(&v57 - v26, v0, v1);
  v64 = v2;
  v29 = *(v2 + 88);
  v30 = v1;
  v31 = v29(v27, v1);
  if (v31 != enum case for ResultLookupState.error(_:))
  {
    if (v31 == enum case for ResultLookupState.lookup(_:))
    {
      v34 = v27;
      v28(v25, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v25, v30);
      v35 = type metadata accessor for LookupState();
      v36 = *(v35 - 8);
      v32 = (*(v36 + 88))(v25, v35) == enum case for LookupState.finished(_:);
      (*(v36 + 8))(v25, v35);
      goto LABEL_32;
    }

    v34 = v27;
    if (v31 == enum case for ResultLookupState.geoLocate(_:))
    {
      v28(v20, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v20, v30);
      State = type metadata accessor for GeoLocateState();
      v38 = *(State - 8);
      if ((*(v38 + 88))(v20, State) == enum case for GeoLocateState.finished(_:))
      {
        (*(v38 + 96))(v20, State);
        v39 = sub_1000033A8(&qword_1001DCC68);
        v40 = *(v39 + 48);
        v41 = *(v39 + 64);
        v42 = type metadata accessor for GeoLocationEstimate();
        v43 = *(*(v42 - 8) + 8);
        v43(&v20[v41], v42);
        v43(&v20[v40], v42);
        v44 = type metadata accessor for UUID();
        (*(*(v44 - 8) + 8))(v20, v44);
LABEL_11:
        v32 = 1;
        goto LABEL_32;
      }

      (*(v38 + 8))(v20, State);
LABEL_31:
      v32 = 0;
      goto LABEL_32;
    }

    if (v31 == enum case for ResultLookupState.geoLookup(_:))
    {
      v45 = v63;
      v28(v63, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v45, v30);
      v46 = type metadata accessor for GeoLookupState();
      v47 = *(v46 - 8);
      if ((*(v47 + 88))(v45, v46) == enum case for GeoLookupState.finished(_:))
      {
        (*(v47 + 96))(v45, v46);
        sub_1000033A8(&qword_1001DC2A0);

        v48 = type metadata accessor for GeoLocationEstimate();
        (*(*(v48 - 8) + 8))(v45, v48);
        goto LABEL_11;
      }

      goto LABEL_30;
    }

    if (v31 == enum case for ResultLookupState.barCodeLookup(_:))
    {
      v28(v15, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v15, v30);
      v49 = type metadata accessor for BarCodeLookupState();
      v50 = *(v49 - 8);
      v32 = (*(v50 + 88))(v15, v49) == enum case for BarCodeLookupState.finished(_:);
      (*(v50 + 8))(v15, v49);
      goto LABEL_32;
    }

    if (v31 == enum case for ResultLookupState.summarization(_:))
    {
      v51 = v62;
      v28(v62, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v51, v30);
      AloudState = type metadata accessor for SummarizationState();
      v53 = *(AloudState - 8);
      v54 = (*(v53 + 88))(v51, AloudState);
      v55 = &enum case for SummarizationState.finished(_:);
    }

    else if (v31 == enum case for ResultLookupState.readAloud(_:))
    {
      v51 = v61;
      v28(v61, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v51, v30);
      AloudState = type metadata accessor for ReadAloudState();
      v53 = *(AloudState - 8);
      v54 = (*(v53 + 88))(v51, AloudState);
      v55 = &enum case for ReadAloudState.finished(_:);
    }

    else if (v31 == enum case for ResultLookupState.eventLookup(_:))
    {
      v51 = v60;
      v28(v60, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v51, v30);
      AloudState = type metadata accessor for EventLookupState();
      v53 = *(AloudState - 8);
      v54 = (*(v53 + 88))(v51, AloudState);
      v55 = &enum case for EventLookupState.finished(_:);
    }

    else
    {
      if (v31 != enum case for ResultLookupState.imageSearch(_:))
      {
        if (v31 == enum case for ResultLookupState.savePhoto(_:))
        {
          v45 = v58;
        }

        else
        {
          if (v31 != enum case for ResultLookupState.copyPhotoToClipboard(_:))
          {
            v32 = 0;
            v33 = v64;
            goto LABEL_32;
          }

          v45 = v57;
        }

        v28(v45, v27, v30);
        v33 = v64;
        (*(v64 + 96))(v45, v30);
        v46 = type metadata accessor for SaveOrCopyPhotoState();
        v47 = *(v46 - 8);
        if ((*(v47 + 88))(v45, v46) == enum case for SaveOrCopyPhotoState.finished(_:))
        {
          v32 = 1;
          goto LABEL_32;
        }

LABEL_30:
        (*(v47 + 8))(v45, v46);
        goto LABEL_31;
      }

      v51 = v59;
      v28(v59, v27, v30);
      v33 = v64;
      (*(v64 + 96))(v51, v30);
      AloudState = type metadata accessor for ImageSearchState();
      v53 = *(AloudState - 8);
      v54 = (*(v53 + 88))(v51, AloudState);
      v55 = &enum case for ImageSearchState.finished(_:);
    }

    v32 = v54 == *v55;
    (*(v53 + 8))(v51, AloudState);
    goto LABEL_32;
  }

  v32 = 0;
  v33 = v64;
  v34 = v27;
LABEL_32:
  (*(v33 + 8))(v34, v30);
  return v32;
}

uint64_t sub_100157940()
{
  v1 = v0;
  v2 = type metadata accessor for EventLookupItem();
  v88 = *(v2 - 8);
  v89 = v2;
  __chkstk_darwin(v2);
  v86 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EventLookupState.EventLookupResult();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextSummarizationResult();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v90 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResultLookupState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v82 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v82 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v82 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v82 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v82 - v24;
  __chkstk_darwin(v23);
  v27 = &v82 - v26;
  v28 = *(v8 + 16);
  v29 = v1;
  v31 = v30;
  v28(&v82 - v26, v29, v30);
  v32 = *(v8 + 88);
  v93 = v31;
  v33 = v32(v27, v31);
  if (v33 == enum case for ResultLookupState.summarization(_:))
  {
    v34 = v93;
    v28(v25, v27, v93);
    (*(v8 + 96))(v25, v34);
    v35 = type metadata accessor for SummarizationState();
    v36 = *(v35 - 8);
    v37 = v27;
    if ((*(v36 + 88))(v25, v35) == enum case for SummarizationState.finished(_:))
    {
      (*(v36 + 96))(v25, v35);
      v38 = v90;
      v39 = v91;
      v40 = v92;
      (*(v91 + 32))(v90, v25, v92);
      if (TextSummarizationResult.requiresSafetyConfirmation.getter())
      {
        goto LABEL_9;
      }

      v41 = TextSummarizationResult.summary.getter();
      v43 = v42;

      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v44)
      {
        goto LABEL_9;
      }

      TextSummarizationResult.localizedErrorString.getter();
      if (v45)
      {

LABEL_9:
        (*(v39 + 8))(v38, v40);
        v46 = 1;
        goto LABEL_35;
      }

      TextSummarizationResult.internalErrorString.getter();
      v80 = v79;
      (*(v39 + 8))(v38, v40);
      if (!v80)
      {
LABEL_40:
        v46 = 0;
        goto LABEL_35;
      }

LABEL_41:

      v46 = 1;
      goto LABEL_35;
    }

    (*(v36 + 8))(v25, v35);
LABEL_13:
    v46 = 0;
    goto LABEL_35;
  }

  if (v33 == enum case for ResultLookupState.readAloud(_:))
  {
    v37 = v27;
    v47 = v27;
    v48 = v93;
    v28(v22, v47, v93);
    (*(v8 + 96))(v22, v48);
    AloudState = type metadata accessor for ReadAloudState();
    v50 = *(AloudState - 8);
    v46 = (*(v50 + 88))(v22, AloudState) == enum case for ReadAloudState.error(_:);
    (*(v50 + 8))(v22, AloudState);
    goto LABEL_35;
  }

  v37 = v27;
  if (v33 == enum case for ResultLookupState.eventLookup(_:))
  {
    v51 = v27;
    v52 = v93;
    v28(v19, v51, v93);
    (*(v8 + 96))(v19, v52);
    v53 = type metadata accessor for EventLookupState();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 88))(v19, v53);
    if (v55 == enum case for EventLookupState.finished(_:))
    {
      (*(v54 + 96))(v19, v53);
      v57 = v84;
      v56 = v85;
      v58 = v87;
      (*(v85 + 32))(v84, v19, v87);
      v59 = v86;
      EventLookupState.EventLookupResult.item.getter();
      v46 = EventLookupItem.requiresSafetyConfirmation.getter();
      (*(v88 + 8))(v59, v89);
      (*(v56 + 8))(v57, v58);
      goto LABEL_35;
    }

    v71 = v55 == enum case for EventLookupState.connectivityError(_:) || v55 == enum case for EventLookupState.error(_:);
LABEL_28:
    v46 = v71;
    (*(v54 + 8))(v19, v53);
    goto LABEL_35;
  }

  if (v33 != enum case for ResultLookupState.imageSearch(_:))
  {
    if (v33 == enum case for ResultLookupState.savePhoto(_:))
    {
      v72 = v27;
      v73 = v93;
      v28(v13, v72, v93);
      (*(v8 + 96))(v13, v73);
      v74 = type metadata accessor for SaveOrCopyPhotoState();
      v75 = *(v74 - 8);
      v46 = (*(v75 + 88))(v13, v74) == enum case for SaveOrCopyPhotoState.error(_:);
      (*(v75 + 8))(v13, v74);
      goto LABEL_35;
    }

    if (v33 != enum case for ResultLookupState.copyPhotoToClipboard(_:))
    {
      goto LABEL_40;
    }

    v19 = v83;
    v77 = v27;
    v78 = v93;
    v28(v83, v77, v93);
    (*(v8 + 96))(v19, v78);
    v53 = type metadata accessor for SaveOrCopyPhotoState();
    v54 = *(v53 - 8);
    v71 = (*(v54 + 88))(v19, v53) == enum case for SaveOrCopyPhotoState.error(_:);
    goto LABEL_28;
  }

  v60 = v27;
  v61 = v93;
  v28(v16, v60, v93);
  (*(v8 + 96))(v16, v61);
  v62 = type metadata accessor for ImageSearchState();
  v63 = *(v62 - 8);
  if ((*(v63 + 88))(v16, v62) != enum case for ImageSearchState.finished(_:))
  {
    (*(v63 + 8))(v16, v62);
    goto LABEL_13;
  }

  (*(v63 + 96))(v16, v62);
  v64 = *v16;
  v65 = v16[6];
  v67 = v16[7];
  v66 = v16[8];
  v68 = v16[9];

  v69 = *(v64 + 16);

  if (!v69)
  {
    goto LABEL_41;
  }

  if ((v67 & 0x2000000000000000) != 0)
  {
    v70 = HIBYTE(v67) & 0xF;
  }

  else
  {
    v70 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v46 = 1;
  }

  else
  {
    v81 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v81 = v66 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v81 != 0;
  }

LABEL_35:
  (*(v8 + 8))(v37, v93);
  return v46 & 1;
}

uint64_t sub_100158378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001583FC(uint64_t a1)
{
  v2 = sub_10015BA78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158438(uint64_t a1)
{
  v2 = sub_10015BA78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100158480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000033A8(&qword_1001DCCB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100006AAC(a1, a1[3]);
  sub_10015BA78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006B44(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_100006B44(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1001585FC(void *a1)
{
  v2 = sub_1000033A8(&qword_1001DCCC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006AAC(a1, a1[3]);
  sub_10015BA78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100158738(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_10015876C()
{
  result = qword_1001DCC70;
  if (!qword_1001DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCC70);
  }

  return result;
}

unint64_t sub_1001587C4()
{
  result = qword_1001DCC78;
  if (!qword_1001DCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCC78);
  }

  return result;
}

unint64_t sub_10015881C()
{
  result = qword_1001DCC80;
  if (!qword_1001DCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCC80);
  }

  return result;
}

uint64_t sub_100158870@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = sub_1000033A8(&qword_1001DCC90);
  v60 = *(v51 - 8);
  v2 = __chkstk_darwin(v51);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v59 = &v47 - v5;
  v6 = __chkstk_darwin(v4);
  v57 = &v47 - v7;
  __chkstk_darwin(v6);
  v55 = &v47 - v8;
  v49 = sub_1000033A8(&qword_1001D6050) - 8;
  v9 = __chkstk_darwin(v49);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v47 - v11;
  v12 = sub_1000033A8(&qword_1001D5668);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v48 = sub_1000033A8(&qword_1001DCC98);
  v58 = *(v48 - 8);
  v16 = __chkstk_darwin(v48);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v20 = swift_allocObject();
  v21 = v1[1];
  v20[1] = *v1;
  v20[2] = v21;
  v22 = v1[3];
  v20[3] = v1[2];
  v20[4] = v22;
  sub_100159ABC(v1, &v62);
  Button.init(action:label:)();
  v61 = v1[3];
  sub_1000033A8(&qword_1001D3E88);
  State.projectedValue.getter();
  v23 = swift_allocObject();
  v24 = v1[1];
  v23[1] = *v1;
  v23[2] = v24;
  v25 = v1[3];
  v23[3] = v1[2];
  v23[4] = v25;
  sub_100159ABC(v1, &v62);
  type metadata accessor for PromptEditView();
  sub_100013608(&qword_1001D5660, &qword_1001D5668);
  sub_10015C28C(&qword_1001DCCA0, type metadata accessor for PromptEditView);
  v47 = v19;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v13 + 8))(v15, v12);
  LocalizedStringKey.init(stringLiteral:)();
  v26 = v53;
  Button<>.init(_:action:)();
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v27 = static GenerativeAssistantSettingsUserDefaults.isEnabled()();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = (v26 + *(v49 + 44));
  *v30 = KeyPath;
  v30[1] = sub_10015B92C;
  v30[2] = v29;
  v31 = v55;
  LabeledContent<>.init(content:label:)();
  v32 = v57;
  LabeledContent<>.init(content:label:)();
  v49 = *(v58 + 16);
  v33 = v54;
  v34 = v48;
  (v49)(v54, v19, v48);
  v35 = v56;
  sub_1000138BC(v26, v56, &qword_1001D6050);
  v36 = v59;
  v37 = *(v60 + 16);
  v38 = v51;
  v37(v59, v31, v51);
  v39 = v50;
  v37(v50, v32, v38);
  v40 = v52;
  v41 = v33;
  v42 = v34;
  (v49)(v52, v41, v34);
  v43 = sub_1000033A8(&qword_1001DCCA8);
  sub_1000138BC(v35, v40 + v43[12], &qword_1001D6050);
  v37((v40 + v43[16]), v36, v38);
  v37((v40 + v43[20]), v39, v38);
  v44 = *(v60 + 8);
  v44(v57, v38);
  v44(v55, v38);
  sub_10001370C(v53, &qword_1001D6050);
  v45 = *(v58 + 8);
  v45(v47, v42);
  v44(v39, v38);
  v44(v59, v38);
  sub_10001370C(v56, &qword_1001D6050);
  return (v45)(v54, v42);
}

uint64_t sub_100159088(_OWORD *a1)
{
  v2 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_100159ABC(a1, v11);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  v9 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v9;
  sub_1000154EC(0, 0, v4, &unk_10017D040, v7);
}

uint64_t sub_1001591C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[13] = v5;
  *v5 = v4;
  v5[1] = sub_1001592B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4 + 15, 0, 0, 0xD000000000000017, 0x800000010016C1A0, sub_100019D38, 0, &type metadata for Bool);
}

uint64_t sub_1001592B4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100159558;
  }

  else
  {
    v2 = sub_1001593C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001593C8()
{
  *(v0 + 123) = *(v0 + 120);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100159448, v2, v1);
}

uint64_t sub_100159448()
{
  v1 = *(v0 + 123);

  if (v1 == 1)
  {
    v2 = *(v0 + 80);
    *(v0 + 16) = *(v2 + 48);
    *(v0 + 32) = *(v2 + 48);
    *(v0 + 64) = *(v0 + 24);
    sub_1000138BC(v0 + 64, v0 + 72, &qword_1001D3E80);
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.getter();
    *(v0 + 122) = (*(v0 + 121) & 1) == 0;
    *(v0 + 48) = *(v0 + 16);
    State.wrappedValue.setter();
    sub_10001370C(v0 + 16, &qword_1001D3E88);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100159558()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001595DC, v1, v0);
}

uint64_t sub_1001595DC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10015963C@<D0>(uint64_t a1@<X8>)
{
  result = 6.94122471e228;
  *a1 = xmmword_10017CD80;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10015965C@<X0>(uint64_t a1@<X8>)
{
  sub_1000033A8(&qword_1001D85C0);
  Binding.projectedValue.getter();
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v2 = *(type metadata accessor for PromptEditView() + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_1000033A8(&qword_1001D6238);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10015972C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  static GreymatterAvailability.llmProviderSymbolName.getter();
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  v5._countAndFlagsBits = static GreymatterAvailability.llmProviderDisplayName.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v5);

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

double sub_100159844@<D0>(uint64_t a1@<X8>)
{
  result = 3.09441845e262;
  *a1 = xmmword_10017CD90;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100159864@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = static GreymatterAvailability.llmServiceDisplayName.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

double sub_100159958@<D0>(uint64_t a1@<X8>)
{
  result = 3.62038626e262;
  *a1 = xmmword_10017CDA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

__n128 sub_100159978@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  v9 = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  v6 = *a2;
  v7 = a2[1];
  State.init(wrappedValue:)();
  result = v9;
  *a3 = v9;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v5;
  a3[2].n128_u64[0] = v6;
  a3[2].n128_u64[1] = v7;
  a3[3].n128_u8[0] = v10;
  a3[3].n128_u64[1] = v11;
  return result;
}

unint64_t sub_100159A5C()
{
  result = qword_1001DCC88;
  if (!qword_1001DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCC88);
  }

  return result;
}

uint64_t sub_100159AF4()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for PromptEditView()
{
  result = qword_1001DCD28;
  if (!qword_1001DCD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100159BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = static Overrides.tamaleAppDebugPromptOverridePath.getter();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    URL.init(string:)();
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_10001370C(v11, &qword_1001D8020);
      static Log.prompt.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v32 = a1;
        v21 = v20;
        v22 = swift_slowAlloc();
        v31 = v2;
        v23 = v22;
        v33 = v22;
        *v21 = 136315138;
        v24 = sub_1000E0FE0(v15, v14, &v33);

        *(v21 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Error creating URL for %s", v21, 0xCu);
        sub_100006B44(v23);

        a1 = v32;

        (*(v3 + 8))(v8, v31);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
      }

      return (*(v17 + 56))(a1, 1, 1, v16);
    }

    else
    {

      (*(v17 + 32))(a1, v11, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }
  }

  else
  {
    static Log.prompt.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No path set for tamaleAppDebugPromptOverridePath", v27, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v28 = type metadata accessor for URL();
    return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }
}

uint64_t sub_100159F9C()
{
  v0 = type metadata accessor for DismissAction();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v46 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v50 = type metadata accessor for Logger();
  v11 = *(v50 - 8);
  v12 = __chkstk_darwin(v50);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  static Log.prompt.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Writing File", v21, 2u);
  }

  v22 = *(v11 + 8);
  v22(v18, v50);
  v23 = v49;
  sub_100159BA0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10001370C(v4, &qword_1001D8020);
  }

  (*(v6 + 32))(v10, v4, v5);
  static FileUtility.deleteFile(url:)();
  static FileUtility.createDirectory(for:)();
  v25 = *(v23 + 2);
  v26 = *(v23 + 3);
  v51 = *v23;
  v52 = v25;
  v53 = v26;
  sub_1000033A8(&qword_1001D85C0);
  Binding.wrappedValue.getter();
  v27 = static FileUtility.createFile(url:contents:)();

  static Log.prompt.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v28, v29, "File created successfully: %{BOOL}d", v30, 8u);
  }

  v22(v16, v50);
  if (v27)
  {
    v31 = v45;
    static Log.prompt.getter();
    v32 = v44;
    (*(v6 + 16))(v44, v10, v5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = v35;
      v43 = swift_slowAlloc();
      *&v51 = v43;
      *v35 = 136315138;
      v36 = URL.path(percentEncoded:)(1);
      (*(v6 + 8))(v32, v5);
      v37 = sub_1000E0FE0(v36._countAndFlagsBits, v36._object, &v51);

      v38 = v42;
      *(v42 + 1) = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saved edited prompt to %s", v38, 0xCu);
      sub_100006B44(v43);

      v39 = v45;
    }

    else
    {

      (*(v6 + 8))(v32, v5);
      v39 = v31;
    }

    v22(v39, v50);
  }

  type metadata accessor for PromptEditView();
  v40 = v46;
  sub_1000543C8(v46);
  DismissAction.callAsFunction()();
  (*(v47 + 8))(v40, v48);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_10015A5C0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D8020);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100159BA0(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10001370C(v8, &qword_1001D8020);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v28 = v3;
    v29 = v2;
    static FileUtility.deleteFile(url:)();
    v17 = sub_10015C470();
    v26 = v18;
    v27 = v17;
    v19 = *v1;
    v20 = v1[1];
    v22 = v1[2];
    v21 = v1[3];
    v36 = v19;
    v37 = v20;
    v38 = v22;
    v39 = v21;

    sub_1000033A8(&qword_1001D85C0);
    Binding.wrappedValue.getter();

    v32 = v19;
    v33 = v20;
    v34 = v22;
    v35 = v21;
    v30 = v27;
    v31 = v26;
    Binding.wrappedValue.setter();

    static Log.prompt.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Reset prompt", v25, 2u);
    }

    (*(v28 + 8))(v5, v29);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10015A960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for PromptEditView();
  v76 = *(v3 - 8);
  v75 = *(v76 + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ContentMarginPlacement();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D4E88);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v55 = type metadata accessor for TextEditor();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000033A8(&qword_1001DCDD0);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = &v53 - v13;
  v58 = sub_1000033A8(&qword_1001DCDC0);
  __chkstk_darwin(v58);
  v15 = &v53 - v14;
  v64 = sub_1000033A8(&qword_1001DCDB8);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v53 - v16;
  v17 = sub_1000033A8(&qword_1001DCDA8);
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  __chkstk_darwin(v17);
  v60 = &v53 - v19;
  v62 = a1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v82 = *a1;
  v83 = v20;
  v84 = v21;
  sub_1000033A8(&qword_1001D85C0);
  Binding.projectedValue.getter();
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v25 = v81;
  swift_getKeyPath();
  *&v82 = v22;
  *(&v82 + 1) = v23;
  v83 = v24;
  v84 = v25;
  Binding.subscript.getter();

  TextEditor.init(text:)();
  v26 = enum case for Font.Design.monospaced(_:);
  v27 = type metadata accessor for Font.Design();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = sub_10015C28C(&qword_1001DCDD8, &type metadata accessor for TextEditor);
  v30 = v54;
  v31 = v55;
  View.fontDesign(_:)();
  sub_10001370C(v10, &qword_1001D4E88);
  (*(v57 + 8))(v12, v31);
  static Edge.Set.horizontal.getter();
  v32 = v63;
  static ContentMarginPlacement.scrollContent.getter();
  *&v82 = v31;
  *(&v82 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v33 = v59;
  View.contentMargins(_:_:for:)();
  (*(v66 + 8))(v32, v67);
  (*(v61 + 8))(v30, v33);
  v34 = static Edge.Set.bottom.getter();
  v35 = v58;
  v15[*(v58 + 36)] = v34;
  LocalizedStringKey.init(stringLiteral:)();
  v36 = sub_10015C15C();
  v37 = v56;
  View.navigationTitle(_:)();

  sub_10015C2D4(v15);
  v38 = v70;
  v39 = v71;
  v40 = v72;
  (*(v71 + 104))(v70, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v72);
  *&v82 = v35;
  *(&v82 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v60;
  v43 = v64;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v39 + 8))(v38, v40);
  v44 = v43;
  (*(v65 + 8))(v37, v43);
  v45 = v62;
  v77 = v62;
  sub_1000033A8(&qword_1001DCDB0);
  *&v82 = v44;
  *(&v82 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100013608(&qword_1001DCDE0, &qword_1001DCDB0);
  v46 = v74;
  v47 = v68;
  View.toolbar<A>(content:)();
  (*(v69 + 8))(v42, v47);
  v48 = v73;
  sub_10015C344(v45, v73);
  v49 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v50 = swift_allocObject();
  sub_10015C3AC(v48, v50 + v49);
  result = sub_1000033A8(&qword_1001DCD98);
  v52 = (v46 + *(result + 36));
  *v52 = sub_10015C410;
  v52[1] = v50;
  v52[2] = 0;
  v52[3] = 0;
  return result;
}

uint64_t sub_10015B2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_1000033A8(&qword_1001DCDF0);
  __chkstk_darwin(v17[0]);
  v4 = v17 - v3;
  v5 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000033A8(&qword_1001DCDF8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  static ToolbarItemPlacement.topBarLeading.getter();
  v17[8] = a1;
  sub_1000033A8(&qword_1001D5668);
  sub_100013608(&qword_1001D5660, &qword_1001D5668);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v17[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  TupleToolbarContent.init(_:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

double sub_10015B5B8@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7465736552;
  *a1 = xmmword_10017CDB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10015B5D8(uint64_t a1)
{
  v2 = type metadata accessor for PromptEditView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10015C344(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10015C3AC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

double sub_10015B6F4@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_10017CDC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10015B714()
{
  sub_10015C470();

  sub_1000033A8(&qword_1001D85C0);
  Binding.wrappedValue.getter();

  Binding.wrappedValue.setter();
}

uint64_t sub_10015B7E8()
{
  sub_1000033A8(&qword_1001DCD98);
  sub_10015BFB4();
  return NavigationView.init(content:)();
}

uint64_t sub_10015B858@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10015B888@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10015B968()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10015B9C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100019340;

  return sub_1001591C0(a1, v4, v5, v1 + 32);
}

unint64_t sub_10015BA78()
{
  result = qword_1001DCCB8;
  if (!qword_1001DCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCCB8);
  }

  return result;
}

uint64_t sub_10015BAF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000033A8(&qword_1001DCCC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015BBC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001DCCC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10015BC70()
{
  sub_10015BCF4();
  if (v0 <= 0x3F)
  {
    sub_10015BD44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10015BCF4()
{
  if (!qword_1001DCD38)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DCD38);
    }
  }
}

void sub_10015BD44()
{
  if (!qword_1001DCD40)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DCD40);
    }
  }
}

uint64_t sub_10015BD9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10015BDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015BE8C()
{
  result = qword_1001DCD80;
  if (!qword_1001DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCD80);
  }

  return result;
}

unint64_t sub_10015BEE4()
{
  result = qword_1001DCD88;
  if (!qword_1001DCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCD88);
  }

  return result;
}

unint64_t sub_10015BF3C()
{
  result = qword_1001DCD90;
  if (!qword_1001DCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCD90);
  }

  return result;
}

unint64_t sub_10015BFB4()
{
  result = qword_1001DCDA0;
  if (!qword_1001DCDA0)
  {
    sub_10001276C(&qword_1001DCD98);
    sub_10001276C(&qword_1001DCDA8);
    sub_10001276C(&qword_1001DCDB0);
    sub_10001276C(&qword_1001DCDB8);
    sub_10001276C(&qword_1001DCDC0);
    sub_10015C15C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001DCDE0, &qword_1001DCDB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCDA0);
  }

  return result;
}

unint64_t sub_10015C15C()
{
  result = qword_1001DCDC8;
  if (!qword_1001DCDC8)
  {
    sub_10001276C(&qword_1001DCDC0);
    sub_10001276C(&qword_1001DCDD0);
    type metadata accessor for TextEditor();
    sub_10015C28C(&qword_1001DCDD8, &type metadata accessor for TextEditor);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DCDC8);
  }

  return result;
}

uint64_t sub_10015C28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015C2D4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DCDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015C344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEditView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015C3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEditView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015C410()
{
  type metadata accessor for PromptEditView();

  return sub_10015B714();
}

uint64_t sub_10015C470()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  v1 = sub_1000033A8(&qword_1001DCDE8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for DefaultPromptFactory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DefaultPromptFactory.instance.getter();
  v8 = type metadata accessor for GATInteractionMode();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = DefaultPromptFactory.createPrompt(appBundleID:interactionMode:)();
  sub_10001370C(v3, &qword_1001DCDE8);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_10015C834()
{
  v1 = (type metadata accessor for PromptEditView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1000033A8(&qword_1001D6238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

BOOL sub_10015CA54(int a1, int a2, int a3)
{
  if (qword_1001EB4B8 == -1)
  {
    v3 = dword_1001EB4A8 < a1;
    if (dword_1001EB4A8 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10015CFDC();
    a2 = v6;
    a3 = v5;
    v3 = dword_1001EB4A8 < a1;
    if (dword_1001EB4A8 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1001EB4AC > a2)
  {
    return 1;
  }

  if (dword_1001EB4AC < a2)
  {
    return 0;
  }

  return dword_1001EB4B0 >= a3;
}

uint64_t sub_10015CB14(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1001EB4C0 == -1)
  {
    if (qword_1001EB4C8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10015CFF4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1001EB4C8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001EB4B8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10015CFDC();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001EB4A8 < v11;
    if (dword_1001EB4A8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001EB4AC > a3)
      {
        return 1;
      }

      if (dword_1001EB4AC >= a3)
      {
        return dword_1001EB4B0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001EB4A8 < a2;
  if (dword_1001EB4A8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10015CCA8(uint64_t result)
{
  v1 = qword_1001EB4C8;
  if (qword_1001EB4C8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1001EB4C8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1001EB4A8, &dword_1001EB4AC, &dword_1001EB4B0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.padding(_:)()
{
  return View.padding(_:)();
}

{
  return View.padding(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t static Hasher._hash(seed:_:)()
{
  return static Hasher._hash(seed:_:)();
}

{
  return static Hasher._hash(seed:_:)();
}