void *sub_100940BE4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = static Array._allocateUninitialized(_:)();
  v4 = sub_10003B32C(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t ArtworkVideoReportingController.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_100030444(v1);
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_100020438(v5);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v33 = *(v4 - 8);
  __chkstk_darwin(a1);
  v35 = &v25[-v5];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v3 + 88);

  v34 = a1;
  v32 = v10;
  Dictionary.subscript.getter();

  v11 = v36;
  if (v36 == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v26 = 4;
LABEL_6:
    v17 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v33 + 16))(v35, v34, v4);
    v20 = v30;
    v21 = v31;
    v36 = v19;
    v37 = v30;
    v23 = v28;
    v22 = v29;
    v38 = v31;
    v39 = v29;
    v24 = v27;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    swift_beginAccess();
    v34 = type metadata accessor for Dictionary();
    v11 = v19;
    v15 = v20;
    v16 = v21;
    v14 = v22;
    v12 = v23;
    v13 = v24;
    Dictionary.subscript.setter();
    swift_endAccess();
    goto LABEL_7;
  }

  v12 = v40;
  v13 = v41;
  v14 = v39;
  if (!v36)
  {
    v26 = v42;
    v30 = v37;
    v31 = v38;
    v28 = v40;
    v29 = v39;
    v27 = v41;
    goto LABEL_6;
  }

  v15 = v37;
  v16 = v38;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v29[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v32 = v12;
    v33 = a1;
    Dictionary.subscript.getter();

    v13 = v37;
    if (v37 == 1)
    {
      v31 = v1;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v14 = 0;
      v13 = 0;
      v15 = 4;
    }

    else
    {
      v35 = v41;
      v36 = v42;
      v14 = v39;
      v34 = v40;
      v16 = v38;
      if (v38)
      {

        v17 = v36;
LABEL_8:

        return;
      }

      v31 = v1;
      v15 = v43;
    }

    v30 = v15;
    v18 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v5 + 16))(v7, v33, v4);
    v37 = v13;
    v38 = v20;
    v21 = v34;
    v22 = v35;
    v39 = v14;
    v40 = v34;
    v23 = v36;
    v41 = v35;
    v42 = v36;
    v43 = v30;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v17 = v13;
    v24 = v20;
    v25 = v14;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    Dictionary.subscript.setter();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = v38 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = a2;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    Dictionary.subscript.getter();

    v16 = v41;
    v40 = a1;
    if (v41 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_1009418D4(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    Dictionary.subscript.setter();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

uint64_t sub_1009418D4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return result;
    }
  }

  else if (v3 == 3)
  {
  }

  if (v2)
  {
    *(v1 + 48) = 0;
    return result;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return result;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
  return result;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v35 = v8;
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    Dictionary.subscript.getter();

    v14 = v36;
    v34 = a1;
    if (v36 == 1)
    {
      v14 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v15 = 0;
    }

    else
    {
      v31 = v40;
      v32 = v41;
      v15 = v39;
      v30 = v38;
      v29 = v37;
    }

    v16 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v12, v9);
    v18 = [v16 serverTimeFromDate:isa];

    (*(v6 + 16))(v35, v34, v5);
    v19 = v29;
    v36 = v14;
    v37 = v29;
    v20 = v30;
    v38 = v30;
    v39 = v18;
    v21 = v31;
    v22 = v32;
    v40 = v31;
    v41 = v32;
    v42 = 4;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v23 = v14;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v22;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v29 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v36 = v12;
    Dictionary.subscript.getter();

    v13 = v37;
    if (v37 != 1)
    {
      v34 = v43;
      v29[0] = v42;
      v32 = v40;
      v33 = v41;
      v31 = v39;
      v30 = v38;
      v14 = objc_opt_self();
      Date.init()();
      v29[1] = v1;
      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = a1;
      v35 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v30;
      v37 = v13;
      v38 = v30;
      v20 = v31;
      v22 = v32;
      v21 = v33;
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v18;
      v43 = v34;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v36 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v21;
      v27 = v18;
      Dictionary.subscript.setter();
      swift_endAccess();
      v28 = v35;
      sub_100942480(v35);
      _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(v28);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v28 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v35 = v12;
    Dictionary.subscript.getter();

    v13 = v36;
    if (v36 != 1)
    {
      v33 = v42;
      v32 = v41;
      v28[0] = v40;
      v31 = v39;
      v30 = v38;
      v29 = v37;
      v14 = objc_opt_self();
      Date.init()();
      v28[1] = v1;
      v15.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = a1;
      v34 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v29;
      v36 = v13;
      v37 = v29;
      v20 = v30;
      v22 = v31;
      v21 = v32;
      v38 = v30;
      v39 = v31;
      v40 = v18;
      v41 = v32;
      v42 = v33;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v35 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v18;
      v27 = v21;
      Dictionary.subscript.setter();
      swift_endAccess();
      sub_100942480(v34);
    }
  }
}

void sub_100942480(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v52[-v8];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();

    Dictionary.subscript.getter();

    v10 = v80;
    if (v80 != 1)
    {
      v66 = a1;
      v59 = v6;
      v60 = v4;
      v64 = v9;
      v61 = v3;
      v11 = *(&v80 + 1);
      v12 = *(&v81 + 1);
      v13 = v81;
      v14 = *(&v82 + 1);
      v15 = v82;
      v16 = v83;
      v86[0] = v80;
      v86[1] = v81;
      v86[2] = v82;
      v87 = v83;
      swift_beginAccess();
      v17 = *(v1 + 24);
      if (v17)
      {
        v65 = v16;

        v18 = v17(v66);
        v62 = v19;
        v63 = v18;
        v21 = v20;
        sub_100020438(v17);
        v22 = v14;
        v23 = v10;
        v24 = v11;
        v25 = v13;
        v26 = v12;
        v27 = v15;
        sub_100943010(v86, v63, v62, v21, &v76);
        v74 = v78;
        v75[0] = *v79;
        *(v75 + 9) = *&v79[9];
        v72 = v76;
        v73 = v77;
        v28 = *v79;
        if (*v79)
        {
          v80 = v76;
          v81 = v77;
          v82 = v78;
          v83 = *v79;
          v84 = *&v79[8];
          v85 = v79[24];
          if (*&v79[8])
          {
            v55 = v11;
            v56 = v13;
            v57 = v10;
            v58 = v12;
            v62 = v15;
            v63 = v14;
            v29 = *&v79[8];
            [v29 doubleValue];
            v31 = v30;
            [v28 doubleValue];
            v33 = v32;
            if (qword_1011A6948 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for Logger();
            sub_1000060E4(v34, static Logger.motion);
            v36 = v60;
            v35 = v61;
            v37 = *(v60 + 16);
            v38 = v64;
            v37(v64, v66, v61);
            v70[2] = v74;
            v71[0] = v75[0];
            *(v71 + 9) = *(v75 + 9);
            v70[0] = v72;
            v70[1] = v73;
            sub_100943298(v70, v69);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.debug.getter();
            sub_100943230(&v76);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v66 = v29;
              v42 = v36;
              v43 = v41;
              v54 = swift_slowAlloc();
              v68 = v54;
              *v43 = 136315650;
              v69[0] = v80;
              v67[1] = v80;
              v53 = v40;
              sub_1000089F8(v69, v67, &unk_1011ACB70);
              sub_10010FC20(&unk_1011ACB70);
              v44 = String.init<A>(describing:)();
              v46 = sub_100010678(v44, v45, &v68);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2080;
              v47 = v64;
              v37(v59, v64, v35);
              v48 = String.init<A>(describing:)();
              v50 = v49;
              (*(v42 + 8))(v47, v35);
              v51 = sub_100010678(v48, v50, &v68);

              *(v43 + 14) = v51;
              *(v43 + 22) = 2048;
              *(v43 + 24) = v31 - v33;
              _os_log_impl(&_mh_execute_header, v39, v53, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v43, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v36 + 8))(v38, v35);
            }

            v15 = v62;
            v14 = v63;
            v10 = v57;
            v12 = v58;
            v11 = v55;
            v13 = v56;
          }

          if (qword_1011A6810 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v80);
          sub_100943230(&v76);
        }
      }

      sub_1009431BC(v10, v11, v13, v12, v15, v14);
    }
  }
}

void _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - v5;
  swift_beginAccess();

  Dictionary.subscript.getter();

  v7 = v19;
  if (v19 != 1)
  {
    v17 = v20;
    v8 = v23;
    v18 = v22;
    v9 = v24;
    v10 = v25;

    if (v8)
    {

      v10 = 3;
    }

    (*(v4 + 16))(v6, a1, v3);
    v12 = v17;
    v11 = v18;
    v19 = v7;
    v20 = v17;
    v21 = 0;
    v22 = v18;
    v23 = 0;
    v24 = 0;
    v25 = v10;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v13 = v7;
    v14 = v12;
    v15 = v11;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

uint64_t ArtworkVideoReportingController.deinit()
{
  sub_100020438(*(v0 + 24));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_100020438(*(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_100942CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100942D28(a1, v6, a2, a3);
}

unint64_t sub_100942D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

__n128 sub_100942F24(uint64_t a1, uint64_t a2)
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

uint64_t sub_100942F40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100942F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100943010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 24);
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = *(a1 + 8);
    v42 = v11;
    v12 = *(a1 + 16);
    v13 = *(a1 + 40);
    v39 = *(a1 + 32);
    v40 = v12;
    v38 = v13;
    sub_1000089F8(&v43, v29, &qword_1011A96F8);
    sub_1000089F8(&v42, v29, &qword_1011A96F8);
    sub_1000089F8(&v41, v29, &qword_1011A96F8);
    sub_1000089F8(&v40, v29, &qword_1011A96F8);
    sub_1000089F8(&v39, v29, &qword_1011A96F8);
    sub_1000089F8(&v38, v29, &qword_1011A96F8);
    sub_1009432F4(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    sub_100943298(&v23, &v22);
    result = sub_100943324(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_1009432F4(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void sub_1009431BC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_100943230(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A96F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Library.Menu.Revision.selected.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_100943410()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009434C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009450D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009434F0(uint64_t a1)
{
  v2 = sub_1009437C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10094352C(uint64_t a1)
{
  v2 = sub_1009437C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_1011A9700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1009437C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_10010FC20(&qword_1011A9710);
    sub_100945C1C(&qword_1011A9718);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1009437C0()
{
  result = qword_1011A9708;
  if (!qword_1011A9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9708);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1009452A8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a1@<X8>)
{
  sub_100945534(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1009458DC();
    v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v4 = v3;

    v5 = [objc_opt_self() standardUserDefaults];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = String._bridgeToObjectiveC()();

    [v5 setValue:isa forKey:v7];

    sub_10002C064(v2, v4);
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();

    [v1 setValue:0 forKey:v8];
  }
}

void sub_100943CE0(int a1)
{
  v64 = *v1;
  v3 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v3 - 8);
  v63 = &v60 - v4;
  v5 = type metadata accessor for Calendar();
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.carMetrics);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v67 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v70 = v17;
    *v16 = 136446210;
    LOBYTE(v74) = a1 & 1;
    v18 = String.init<A>(describing:)();
    v20 = v11;
    v21 = sub_100010678(v18, v19, &v70);

    *(v16 + 4) = v21;
    v11 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Reporting %{public}s playsSummary event if needed", v16, 0xCu);
    sub_10000959C(v17);
  }

  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v22 = COERCE_DOUBLE(sub_10095107C());
  if (v23)
  {
    v24 = 86400000.0;
  }

  else
  {
    v24 = v22;
  }

  v25 = v67 & 1;
  sub_100945534(&v70);
  v26 = v72;
  if (v72)
  {
    v27 = v71;
    v28 = v73;
    v74 = v70;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v30 = v29;
    v31 = *(v66 + 8);
    v31(v11, v7);
    v32 = (v30 - v27) * 1000.0;
    if (v24 < v32)
    {
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v34 = v33;
      v31(v11, v7);
      v35 = v65;
      static Calendar.current.getter();
      v36 = v62;
      static Date.now.getter();
      Calendar.startOfDay(for:)();
      v31(v36, v7);
      (*(v61 + 8))(v35, v5);
      Date.timeIntervalSince1970.getter();
      v38 = v37;
      v31(v11, v7);
      v39 = type metadata accessor for TaskPriority();
      v40 = v63;
      (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
      type metadata accessor for MainActor();
      v41 = static MainActor.shared.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = &protocol witness table for MainActor;
      *(v42 + 32) = v74;
      *(v42 + 48) = v27;
      *(v42 + 56) = v26;
      *(v42 + 64) = v28;
      *(v42 + 72) = v38;
      *(v42 + 80) = v25;
      *(v42 + 88) = v34;
      *(v42 + 96) = v64;
      sub_100969440(0, 0, v40, &unk_100EF0C90, v42);

      return;
    }

    sub_1000095E8(&v70, &qword_1011A97E8);
    v43 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v55))
    {
      v56 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69 = v46;
      *v56 = 136446722;
      v68 = v25;
      v57 = String.init<A>(describing:)();
      v59 = sub_100010678(v57, v58, &v69);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2050;
      *(v56 + 14) = v32;
      *(v56 + 22) = 2050;
      *(v56 + 24) = v24;
      v50 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v51 = v55;
      v52 = v43;
      v53 = v56;
      v54 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v74 = v46;
      *v45 = 136446210;
      LOBYTE(v69) = v25;
      v47 = String.init<A>(describing:)();
      v49 = sub_100010678(v47, v48, &v74);

      *(v45 + 4) = v49;
      v50 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v51 = v44;
      v52 = v43;
      v53 = v45;
      v54 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v52, v51, v50, v53, v54);
      sub_10000959C(v46);
    }
  }
}

uint64_t sub_1009443E4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = type metadata accessor for UUID();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = type metadata accessor for DispatchPredicate();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 680) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100944540, v11, v10);
}

uint64_t sub_100944540()
{

  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v35 = static MetricsReportingController.shared;
  sub_10010FC20(&unk_1011AFD70);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_100ED1A70;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000100E5BED0;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x8000000100E5BEF0;
  v13 = sub_100952368(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_1008BC8D8(v9);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A8618);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_10002705C();
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    sub_1008BC8D8(v22);
    swift_setDeallocating();
    sub_1000095E8(v22 + 32, &qword_1011A8618);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x8000000100E5BEB0;
    v28[5] = v35;
    v28[6] = sub_100945BB0;
    v28[7] = v15;
    *(v0 + 592) = sub_100945BB8;
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_10002BC98;
    *(v0 + 584) = &unk_1010D11A8;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100944BF8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1011A6768 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, static Logger.carMetrics);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v4 = 136446466;
      v5 = String.init<A>(describing:)();
      v7 = sub_100010678(v5, v6, &v21);

      *(v4 + 4) = v7;
      *(v4 + 12) = 2082;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640);
      v8 = String.init<A>(describing:)();
      v10 = sub_100010678(v8, v9, &v21);

      *(v4 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v4, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1011A6768 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, static Logger.carMetrics);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v16 = String.init<A>(describing:)();
      v18 = sub_100010678(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "✅ Reported %{public}s playsSummary event", v14, 0xCu);
      sub_10000959C(v15);
    }

    v19 = [objc_opt_self() standardUserDefaults];
    v20 = String._bridgeToObjectiveC()();

    [v19 setValue:0 forKey:v20];
  }
}

uint64_t sub_100944FB4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.carMetrics);
  sub_1000060E4(v0, static Logger.carMetrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009450D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E5BE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100E5BE90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1009452A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_1011A97F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1009437C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v22 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v21 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  sub_10010FC20(&qword_1011A9710);
  v19 = 3;
  sub_100945C1C(&qword_1011A9800);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17[1];
  v18 = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000959C(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t sub_100945534@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v10 = v15;
  v11 = v16;
  if (!*(&v16 + 1))
  {
    result = sub_1000095E8(&v10, &qword_1011ABB20);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0uLL;
    goto LABEL_9;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100945BC8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C064(v13, v14);

  v6 = v10;
  v8 = *(&v11 + 1);
  v7 = v11;
  v9 = v12;
LABEL_9:
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1009458DC()
{
  result = qword_1011A9720;
  if (!qword_1011A9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9720);
  }

  return result;
}

unint64_t sub_100945934()
{
  result = qword_1011A9728;
  if (!qword_1011A9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9728);
  }

  return result;
}

unint64_t sub_1009459CC()
{
  result = qword_1011A97D0;
  if (!qword_1011A97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97D0);
  }

  return result;
}

unint64_t sub_100945A24()
{
  result = qword_1011A97D8;
  if (!qword_1011A97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97D8);
  }

  return result;
}

unint64_t sub_100945A7C()
{
  result = qword_1011A97E0;
  if (!qword_1011A97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97E0);
  }

  return result;
}

uint64_t sub_100945AD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1009443E4(v6, v8, a1, v4, v5, v1 + 32, v7);
}

unint64_t sub_100945BC8()
{
  result = qword_1011A97F0;
  if (!qword_1011A97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A97F0);
  }

  return result;
}

uint64_t sub_100945C1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A9710);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    sub_10010FC20(&qword_1011A9808);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = sub_100060DEC(inited);
    swift_setDeallocating();
    sub_100946490(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      v29 = &type metadata for String;
      *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v28 + 1) = v18;
      sub_100016270(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100068158(v27, &v30, isUniquelyReferenced_nonNull_native);
      sub_10001621C(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == 9)
      {
        sub_10010FC20(&qword_1011A9808);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_100EBDC20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v23;
        AnyHashable.init<A>(_:)();
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = sub_100060DEC(v22);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011A8630);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(int a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009F78(0, &qword_1011A9810);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_100009F78(0, &unk_1011AAA40);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009F78(0, &qword_1011A9810);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_100009F78(v8, qword_1011A9818);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_100009F78(0, &qword_1011A9810);
  if (!swift_dynamicCastMetatype())
  {
    sub_100009F78(0, &unk_1011AAA40);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    sub_100009F78(0, qword_1011A9818);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t sub_100946490(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A8630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v77 = a8;
  v72 = a6;
  v73 = a7;
  v69 = a5;
  v68 = a4;
  v71 = a12;
  v70 = a10;
  v18 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v18 - 8);
  v75 = &v67[-v19];
  v20 = sub_10010FC20(&qword_1011A7F08);
  v21 = __chkstk_darwin(v20 - 8);
  v79 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v78 = &v67[-v24];
  v25 = __chkstk_darwin(v23);
  v76 = &v67[-v26];
  v27 = __chkstk_darwin(v25);
  v74 = &v67[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v67[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v67[-v33];
  __chkstk_darwin(v32);
  v36 = &v67[-v35];
  v37 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v37[19]) = 0;
  v38 = (a9 + v37[20]);
  *v38 = 0;
  v38[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v68;
  sub_10003D17C(v69, a9 + v37[7], &qword_1011A77F0);
  v39 = v73;
  *(a9 + v37[8]) = v72;
  v40 = (a9 + v37[9]);
  v41 = v77;
  *v40 = v39;
  v40[1] = v41;
  v42 = a9 + v37[10];
  *v42 = v70;
  *(v42 + 16) = a11;
  *(v42 + 24) = v71;
  v77 = a13;
  sub_1000089F8(a13, v36, &qword_1011A7F08);
  v43 = type metadata accessor for MetricsEvent.Page(0);
  v44 = *(*(v43 - 1) + 48);
  if (v44(v36, 1, v43) == 1)
  {
    sub_1000095E8(v36, &qword_1011A7F08);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = *v36;
    v46 = v36[1];

    sub_100952678(v36, type metadata accessor for MetricsEvent.Page);
  }

  v47 = (a9 + v37[12]);
  *v47 = v45;
  v47[1] = v46;
  v48 = v77;
  sub_1000089F8(v77, v34, &qword_1011A7F08);
  if (v44(v34, 1, v43) == 1)
  {
    sub_1000095E8(v34, &qword_1011A7F08);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = *(v34 + 2);
    v50 = *(v34 + 3);

    sub_100952678(v34, type metadata accessor for MetricsEvent.Page);
  }

  v51 = (a9 + v37[13]);
  *v51 = v49;
  v51[1] = v50;
  sub_1000089F8(v48, v31, &qword_1011A7F08);
  v52 = v44(v31, 1, v43);
  v53 = v75;
  if (v52 == 1)
  {
    sub_1000095E8(v31, &qword_1011A7F08);
    v54 = type metadata accessor for URL();
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
  }

  else
  {
    sub_1000089F8(v31 + v43[6], v75, &qword_1011A77F0);
    sub_100952678(v31, type metadata accessor for MetricsEvent.Page);
  }

  v55 = v78;
  v56 = v76;
  sub_10003D17C(v53, a9 + v37[14], &qword_1011A77F0);
  v57 = v74;
  sub_1000089F8(v48, v74, &qword_1011A7F08);
  if (v44(v57, 1, v43) == 1)
  {
    sub_1000095E8(v57, &qword_1011A7F08);
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + v43[7]);

    sub_100952678(v57, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[15]) = v58;
  sub_1000089F8(v48, v56, &qword_1011A7F08);
  if (v44(v56, 1, v43) == 1)
  {
    sub_1000095E8(v56, &qword_1011A7F08);
    v59 = 1;
  }

  else
  {
    v59 = *(v56 + v43[9]);
    sub_100952678(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[16]) = v59;
  sub_1000089F8(v48, v55, &qword_1011A7F08);
  if (v44(v55, 1, v43) == 1)
  {
    sub_1000095E8(v55, &qword_1011A7F08);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = (v55 + v43[8]);
    v60 = *v62;
    v61 = v62[1];

    sub_100952678(v55, type metadata accessor for MetricsEvent.Page);
  }

  v63 = (a9 + v37[18]);
  *v63 = v60;
  v63[1] = v61;
  v64 = v79;
  sub_10003D17C(v48, v79, &qword_1011A7F08);
  if (v44(v64, 1, v43) == 1)
  {
    result = sub_1000095E8(v64, &qword_1011A7F08);
    v66 = 2;
  }

  else
  {
    v66 = *(v64 + v43[11]);
    result = sub_100952678(v64, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v37[17]) = v66;
  *(a9 + v37[11]) = a14;
  return result;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(uint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  sub_1006334A0(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  sub_100943298(&v15, &v14);
  sub_100943324(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_100946E94()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v2 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v42 - v5;
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  swift_beginAccess();
  v22 = *(v0 + 16);
  v23 = sub_1009571B8();

  if (v23)
  {
    return 1;
  }

  v25 = sub_100957510();
  v24 = 1;
  if (v25)
  {
    v46 = 0.0;
    v47 = 1;
    v26 = v25;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v47 != 1)
    {
      v27 = v46;
      v28 = sub_100956FD4();
      if (v28)
      {
        v46 = 0.0;
        v47 = 1;
        v29 = v28;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v47 & 1) == 0)
        {
          Date.init()();
          v30 = *(v1 + 16);
          sub_100957260(v6);
          sub_10003D17C(v6, v9, &qword_1011A9B20);

          v31 = v44;
          v32 = v45;
          if ((*(v44 + 48))(v9, 1, v45))
          {
            sub_1000095E8(v9, &qword_1011A9B20);
            v33 = v32;
            v34 = v31;
          }

          else
          {
            (*(v31 + 16))(v12, v9, v32);
            sub_1000095E8(v9, &qword_1011A9B20);
            Date.addingTimeInterval(_:)();
            v35 = v12;
            v36 = *(v31 + 8);
            v36(v35, v32);
            (*(v31 + 32))(v18, v15, v32);
            v37 = static Date.< infix(_:_:)();
            v36(v18, v32);
            v33 = v32;
            v34 = v31;
            if (v37)
            {
              v36(v21, v32);
              return 1;
            }
          }

          v38 = sub_100173A78(0x20000000000001uLL);
          if (v38 == 0x20000000000000)
          {
            if (v27 >= 1.0)
            {
LABEL_17:
              (*(v34 + 16))(v6, v21, v33);
              v24 = 1;
              (*(v34 + 56))(v6, 0, 1, v33);
              swift_beginAccess();
              v40 = v43;
              sub_1000089F8(v6, v43, &qword_1011A9B20);
              sub_10095737C(v40);
              swift_endAccess();
              sub_1000095E8(v6, &qword_1011A9B20);
              (*(v34 + 8))(v21, v33);
              return v24;
            }
          }

          else
          {
            v39 = vcvtd_n_f64_u64(v38, 0x35uLL);
            if (v39 > 0.0 && v39 <= v27)
            {
              goto LABEL_17;
            }
          }

          (*(v34 + 8))(v21, v33);
          return 0;
        }
      }
    }
  }

  return v24;
}

uint64_t sub_10094737C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v2 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v42 - v5;
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  swift_beginAccess();
  v22 = *(v0 + 16);
  v23 = sub_100957888();

  if (v23)
  {
    return 1;
  }

  v25 = sub_10095212C();
  v24 = 1;
  if (v25)
  {
    v46 = 0.0;
    v47 = 1;
    v26 = v25;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v47 != 1)
    {
      v27 = v46;
      v28 = sub_10095212C();
      if (v28)
      {
        v46 = 0.0;
        v47 = 1;
        v29 = v28;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v47 & 1) == 0)
        {
          Date.init()();
          v30 = *(v1 + 16);
          sub_100957930(v6);
          sub_10003D17C(v6, v9, &qword_1011A9B20);

          v31 = v44;
          v32 = v45;
          if ((*(v44 + 48))(v9, 1, v45))
          {
            sub_1000095E8(v9, &qword_1011A9B20);
            v33 = v32;
            v34 = v31;
          }

          else
          {
            (*(v31 + 16))(v12, v9, v32);
            sub_1000095E8(v9, &qword_1011A9B20);
            Date.addingTimeInterval(_:)();
            v35 = v12;
            v36 = *(v31 + 8);
            v36(v35, v32);
            (*(v31 + 32))(v18, v15, v32);
            v37 = static Date.< infix(_:_:)();
            v36(v18, v32);
            v33 = v32;
            v34 = v31;
            if (v37)
            {
              v36(v21, v32);
              return 1;
            }
          }

          v38 = sub_100173A78(0x20000000000001uLL);
          if (v38 == 0x20000000000000)
          {
            if (v27 >= 1.0)
            {
LABEL_17:
              (*(v34 + 16))(v6, v21, v33);
              v24 = 1;
              (*(v34 + 56))(v6, 0, 1, v33);
              swift_beginAccess();
              v40 = v43;
              sub_1000089F8(v6, v43, &qword_1011A9B20);
              sub_100957A4C(v40);
              swift_endAccess();
              sub_1000095E8(v6, &qword_1011A9B20);
              (*(v34 + 8))(v21, v33);
              return v24;
            }
          }

          else
          {
            v39 = vcvtd_n_f64_u64(v38, 0x35uLL);
            if (v39 > 0.0 && v39 <= v27)
            {
              goto LABEL_17;
            }
          }

          (*(v34 + 8))(v21, v33);
          return 0;
        }
      }
    }
  }

  return v24;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 7)
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return 3;
      }

LABEL_8:
      static os_log_type_t.error.getter();
      sub_10010FC20(&qword_1011A98A0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_100EBC6B0;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v5 = String.init<A>(describing:)();
      v7 = v6;
      *(v4 + 56) = &type metadata for String;
      *(v4 + 64) = sub_10001CE24();
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      sub_100009F78(0, &qword_1011AFB00);
      v8 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return 27;
    }

    return 0;
  }
}

unint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100947D10@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_100947D40@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MetricsEvent.Page.contextualActionMenu(storeID:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x8000000100E5BFF0;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = 0xD000000000000014;
  a3[3] = 0x8000000100E5BFF0;
  *(a3 + v6[7]) = 0;
  v9 = (a3 + v6[8]);
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v6[9]) = 1;
  v10 = (a3 + v6[10]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v6[11]) = 2;
}

uint64_t sub_100947E9C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100947FE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MetricsEvent.Page(0);
  v6 = sub_1000060E4(v5, a2);

  return sub_100363C68(v6, a3);
}

uint64_t sub_100948048()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948190()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000100E5C510;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009482D8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000100E5C4F0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948420()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x8000000100E5C4D0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948568()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000100E5C4B0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009486B0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x8000000100E5C490;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009487F8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000100E5C470;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948940()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x8000000100E5C450;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948A88()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.librarySongsList);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x8000000100E5C430;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948BD0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x8000000100E5C410;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948D18()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x8000000100E5C3F0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100948E60()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_100948FA8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1009490F4()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949244()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949390()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x8000000100E5C3D0;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1009494DC()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.playlistCreation);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_100949624()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
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

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6840, v2);

  return v3 != 0;
}

Swift::Int sub_1009497CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100949838()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100949888@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6878, *a1);

  *a2 = v3 != 0;
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
  sub_10003D17C(a5, a9 + v29[7], &qword_1011A77F0);
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
  result = sub_10003D17C(a17, a9 + v29[14], &qword_1011A77F0);
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
  sub_1000089F8(a13 + v21, a9 + v22[14], &qword_1011A77F0);
  v23 = *(a13 + *(v20 + 28));

  sub_100952678(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_10003D17C(a5, a9 + v22[7], &qword_1011A77F0);
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

uint64_t sub_10094A474(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10094A520(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094A5A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_10094A614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094A67C@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_10094A6AC@<X0>(uint64_t *a1@<X8>)
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
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(0xAuLL);

  String.hash(into:)();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10094A864()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10094A8B8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
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

      sub_10010FC20(&unk_1011ACB60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_1005EA59C(v4, a2, a3, a4, 2);
      v4 = sub_1008BC7B0(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_1008BC7B0(&off_1010C5FC8);
      v7 = &unk_1010C5FE8;
    }

LABEL_10:
    sub_1000095E8(v7, &qword_1011A98B0);
    return v4;
  }

  if (!BYTE1(a4))
  {
    sub_10010FC20(&unk_1011ACB60);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100EBC6B0;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_1008BC7B0(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_1008BC7B0(&off_1010C5F68);
    sub_10010FC20(&qword_1011A98B0);
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
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

LABEL_27:
  sub_10010FC20(&unk_1011ACB60);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100EBE260;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = sub_100954810(v4);
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
  v4 = sub_1008BC7B0(v27);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A98B0);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x8000000100E59DD0 == v34)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1008B9478(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
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
  sub_10095272C(&v17, v16);
  sub_100952764(&v25);
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

uint64_t sub_10094B1A0(_BYTE *a1, _BYTE *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10094B23C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094B2B4()
{
  String.hash(into:)();
}

Swift::Int sub_10094B318()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10094B398(uint64_t *a1@<X8>)
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

uint64_t sub_10094B3D8(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

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

uint64_t sub_10094B460(_BYTE *a1, _BYTE *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10094B508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094B58C()
{
  String.hash(into:)();
}

Swift::Int sub_10094B5FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094B688@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10094B6E4(uint64_t *a1@<X8>)
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

Swift::Int sub_10094B7BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10094B88C()
{
  String.hash(into:)();
}

Swift::Int sub_10094B948()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10094BA14@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10094BA44(uint64_t *a1@<X8>)
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

id static MetricsReportingController.shared.getter()
{
  if (qword_1011A6810 != -1)
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
      sub_100952794(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_100952BE4(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v74 = a4;
  v71 = a5;
  v72 = a6;
  v8 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v17 = v16;
    if (a3)
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    [v16 setPageContext:{v18, v71, v72}];

    v20 = *a1;
    v19 = a1[1];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    [v16 setProperty:v21 forBodyKey:v22];

    v24 = a1[2];
    v23 = a1[3];
    v25 = String._bridgeToObjectiveC()();
    [v16 setPageType:v25];

    v73 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v26 = *&v75[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v26 || (sub_10010FC20(&qword_1011A98C0), v27 = swift_allocObject(), *(v27 + 16) = xmmword_100EBDC20, *(v27 + 32) = v24, *(v27 + 40) = v23, *(v27 + 88) = &type metadata for String, *(v27 + 56) = &type metadata for String, *(v27 + 64) = v20, *(v27 + 72) = v19, , , v28 = v26, isa = Array._bridgeToObjectiveC()().super.isa, , v30 = [v28 compoundStringWithElements:isa], v28, isa, !v30))
    {
      v30 = 0;
    }

    [v16 setPageDescription:v30];

    v31 = type metadata accessor for MetricsEvent.Page(0);
    sub_1000089F8(a1 + v31[6], v10, &qword_1011A77F0);
    v32 = type metadata accessor for URL();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v10, 1, v32) == 1)
    {
      sub_1000095E8(v10, &qword_1011A77F0);
      v34 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v33 + 8))(v10, v32);
      v34 = String._bridgeToObjectiveC()();
    }

    [v16 setPageURL:v34];

    v35 = *(a1 + v31[7]);
    if (v35)
    {
      v36.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v36.super.isa = 0;
    }

    v37 = String._bridgeToObjectiveC()();
    [v16 setProperty:v36.super.isa forBodyKey:v37];

    swift_unknownObjectRelease();
    v38 = (a1 + v31[8]);
    v39 = v38[1];
    v40 = &selRef_setContacts_;
    if (v39)
    {
      v41 = *v38;
      sub_10010FC20(&unk_1011AFD70);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v41;
      *(inited + 56) = v39;

      sub_1008BC8D8(inited);
      swift_setDeallocating();
      v40 = &selRef_setContacts_;
      sub_1000095E8(inited + 32, &qword_1011A8618);
      v43 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 addPropertiesWithDictionary:v43];
    }

    if ((*(a1 + v31[9]) & 1) == 0)
    {
      sub_10010FC20(&unk_1011AFD70);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_100EBC6B0;
      *(v44 + 32) = 0x7073694465676170;
      v45 = v44 + 32;
      *(v44 + 72) = &type metadata for String;
      *(v44 + 40) = 0xEF6570795479616CLL;
      *(v44 + 48) = 0x7765695664726163;
      *(v44 + 56) = 0xE800000000000000;
      sub_1008BC8D8(v44);
      swift_setDeallocating();
      sub_1000095E8(v45, &qword_1011A8618);
      v46 = Dictionary._bridgeToObjectiveC()().super.isa;
      v40 = &selRef_setContacts_;

      [v16 addPropertiesWithDictionary:v46];
    }

    v47 = *(a1 + v31[11]);
    if (v47 != 2)
    {
      sub_10010FC20(&unk_1011AFD70);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_100EBC6B0;
      *(v48 + 32) = 0xD000000000000014;
      v49 = v48 + 32;
      *(v48 + 40) = 0x8000000100E5C010;
      *(v48 + 72) = &type metadata for Bool;
      *(v48 + 48) = v47 & 1;
      sub_1008BC8D8(v48);
      swift_setDeallocating();
      sub_1000095E8(v49, &qword_1011A8618);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;
      v40 = &selRef_setContacts_;

      [v16 addPropertiesWithDictionary:v50];
    }

    if (v35)
    {
      if (*(v35 + 16))
      {
        v51 = sub_100019C28(0x4974655361746164, 0xE900000000000064);
        if (v52)
        {
          v53 = (*(v35 + 56) + 16 * v51);
          v55 = *v53;
          v54 = v53[1];
          sub_10010FC20(&unk_1011AFD70);
          v56 = swift_initStackObject();
          *(v56 + 16) = xmmword_100EBC6B0;
          *(v56 + 32) = 0x4974655361746164;
          *(v56 + 72) = &type metadata for String;
          *(v56 + 40) = 0xE900000000000064;
          *(v56 + 48) = v55;
          *(v56 + 56) = v54;

          sub_1008BC8D8(v56);
          swift_setDeallocating();
          v40 = &selRef_setContacts_;
          sub_1000095E8(v56 + 32, &qword_1011A8618);
          v57 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v16 addPropertiesWithDictionary:v57];
        }
      }
    }

    if (v74 != 2 && sub_100952474(v74 & 1, v71, v72))
    {
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 v40[465]];
    }

    v59 = (a1 + v31[10]);
    v60 = v59[1];
    if (v60)
    {
      v61 = *v59;
      sub_10010FC20(&unk_1011AFD70);
      v62 = swift_initStackObject();
      *(v62 + 32) = 0x7255666552747865;
      *(v62 + 16) = xmmword_100EBC6B0;
      *(v62 + 72) = &type metadata for String;
      *(v62 + 40) = 0xE90000000000006CLL;
      *(v62 + 48) = v61;
      *(v62 + 56) = v60;

      sub_1008BC8D8(v62);
      swift_setDeallocating();
      sub_1000095E8(v62 + 32, &qword_1011A8618);
      v63 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 v40[465]];
    }

    v64 = v75;
    v65 = *&v75[v73];
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v16;
    aBlock[4] = sub_100952C14;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D12C0;
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
  v9 = sub_10010FC20(&qword_1011A98C8);
  __chkstk_darwin(v9 - 8);
  v58 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v25 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v56 = a7;
    if (a4)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    v27 = v62;
    [v25 setPageContext:v26];

    sub_1000089F8(v27, v19, &qword_1011A98C8);
    v28 = type metadata accessor for MetricsPageProperties();
    v29 = *(*(v28 - 8) + 48);
    if (v29(v19, 1, v28) == 1)
    {
      sub_1000095E8(v19, &qword_1011A98C8);
      v30 = 0;
    }

    else
    {

      sub_100952678(v19, type metadata accessor for MetricsPageProperties);
      v30 = String._bridgeToObjectiveC()();
    }

    v31 = String._bridgeToObjectiveC()();
    [v25 setProperty:v30 forBodyKey:v31];
    swift_unknownObjectRelease();

    sub_1000089F8(v27, v16, &qword_1011A98C8);
    if (v29(v16, 1, v28) == 1)
    {
      sub_1000095E8(v16, &qword_1011A98C8);
      v32 = 0;
    }

    else
    {

      sub_100952678(v16, type metadata accessor for MetricsPageProperties);
      v32 = String._bridgeToObjectiveC()();
    }

    [v25 setPageType:v32];

    v59 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v33 = *&v63[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v33)
    {
      goto LABEL_19;
    }

    sub_10010FC20(&qword_1011A98C0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100EBDC20;
    v35 = sub_10010FC20(&unk_1011ACB70);
    *(v34 + 56) = v35;
    sub_1000089F8(v27, v13, &qword_1011A98C8);
    if (v29(v13, 1, v28) == 1)
    {
      v36 = v33;
      sub_1000095E8(v13, &qword_1011A98C8);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *(v13 + 2);
      v38 = *(v13 + 3);
      v39 = v33;

      sub_100952678(v13, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = v35;
    v40 = v58;
    sub_1000089F8(v62, v58, &qword_1011A98C8);
    if (v29(v40, 1, v28) == 1)
    {
      sub_1000095E8(v40, &qword_1011A98C8);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = *v40;
      v42 = v40[1];

      sub_100952678(v40, type metadata accessor for MetricsPageProperties);
    }

    *(v34 + 64) = v41;
    *(v34 + 72) = v42;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v44 = [v33 compoundStringWithElements:isa];

    if (!v44)
    {
LABEL_19:
      v44 = 0;
    }

    [v25 setPageDescription:v44];

    [v25 setEventType:SSMetricsEventTypeImpressions];
    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = sub_10010FC20(&qword_1011A7FD8);
    *(inited + 48) = v60;

    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618);
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v25 addPropertiesWithDictionary:v46];

    if (v61 != 2)
    {
      if (sub_100952474(v61 & 1, v57, v56))
      {
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v25 addPropertiesWithDictionary:v47];
      }
    }

    v48 = v63;
    v49 = *&v63[v59];
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v25;
    aBlock[4] = sub_100952C4C;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1310;
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

uint64_t sub_10094D04C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100009F78(0, &qword_1011A9F80);
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
  v7 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = String._bridgeToObjectiveC()();
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
      sub_10010FC20(&qword_1011A98D0);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_1000095E8(aBlock, &qword_1011A98D0);
    }

    else
    {
      v22 = 0;
    }

    [v15 setActionDetails:v22];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v23 = String._bridgeToObjectiveC()();

    [v15 setActionType:v23];

    v24 = String._bridgeToObjectiveC()();
    [v15 setTargetIdentifier:v24];

    sub_1000089F8(a1 + v18[7], v9, &qword_1011A77F0);
    v25 = type metadata accessor for URL();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v9, 1, v25) == 1)
    {
      sub_1000095E8(v9, &qword_1011A77F0);
      v27 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v26 + 8))(v9, v25);
      v27 = String._bridgeToObjectiveC()();
    }

    [v15 setTargetURL:v27];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v28 = String._bridgeToObjectiveC()();

    [v15 setTargetType:v28];

    if (*(a1 + v18[13] + 8))
    {
      v29 = String._bridgeToObjectiveC()();
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
      v32 = String._bridgeToObjectiveC()();
    }

    v33 = String._bridgeToObjectiveC()();
    [v15 setProperty:v32 forBodyKey:v33];

    swift_unknownObjectRelease();
    if (*(a1 + v18[15]))
    {
      v34.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v34.super.isa = 0;
    }

    v35 = String._bridgeToObjectiveC()();
    [v15 setProperty:v34.super.isa forBodyKey:v35];

    swift_unknownObjectRelease();
    if (*(a1 + v18[12] + 8))
    {
      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    v37 = String._bridgeToObjectiveC()();
    [v15 setProperty:v36 forBodyKey:v37];

    swift_unknownObjectRelease();
    isa = *(a1 + v18[8]);
    if (isa)
    {
      sub_10010FC20(&unk_1011ACC30);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v39 = String._bridgeToObjectiveC()();
    [v15 setProperty:isa forBodyKey:v39];

    swift_unknownObjectRelease();
    if (*(a1 + v18[18] + 8))
    {
      v40 = String._bridgeToObjectiveC()();
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
    aBlock[4] = sub_100952C84;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1360;
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
  v10 = sub_10010FC20(&qword_1011A77F0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v101 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    if (qword_1011A6818 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_101219A28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Recording click event", v24, 2u);
  }

  v25 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setTargetIdentifier:v26];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v27 = String._bridgeToObjectiveC()();

  [v25 setTargetType:v27];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v28 = String._bridgeToObjectiveC()();

  [v25 setActionType:v28];

  v29 = type metadata accessor for MetricsEvent.Click(0);
  sub_1000089F8(a1 + v29[7], v15, &qword_1011A77F0);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v106 = *(v31 + 48);
  v107 = v31 + 48;
  v32 = v106(v15, 1, v30);
  v108 = v30;
  v101 = v31;
  if (v32 == 1)
  {
    sub_1000095E8(v15, &qword_1011A77F0);
    v33 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v31 + 8))(v15, v30);
    v33 = String._bridgeToObjectiveC()();
  }

  [v25 setTargetURL:{v33, v101}];

  isa = *(a1 + v29[8]);
  v35 = v25;
  v36 = v35;
  if (isa)
  {
    sub_10010FC20(&unk_1011ACC30);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v37 = String._bridgeToObjectiveC()();
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
    v40 = String._bridgeToObjectiveC()();
  }

  v41 = String._bridgeToObjectiveC()();
  [v35 setProperty:v40 forBodyKey:v41];

  swift_unknownObjectRelease();
  v42 = a1 + v29[10];
  v43 = *(v42 + 24);
  if (v43 >> 8 <= 0xFE && (v44 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v42, *(v42 + 8), *(v42 + 16), v43)) != 0)
  {
    aBlock[0] = v44;
    sub_10010FC20(&qword_1011A98D0);
    v45 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_1000095E8(aBlock, &qword_1011A98D0);
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
    sub_10010FC20(&qword_1011A98D8);
    v46 = Array._bridgeToObjectiveC()().super.isa;
  }

  v105 = a3;
  [v35 setImpressions:v46];
  swift_unknownObjectRelease();
  if (*(a1 + v29[19]) == 1)
  {
    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v48 = inited + 32;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(v48, &qword_1011A8618);
    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 addPropertiesWithDictionary:v49];
  }

  v50 = (a1 + v29[20]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    sub_10010FC20(&unk_1011AFD70);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_100EBC6B0;
    *(v53 + 32) = 0xD000000000000013;
    *(v53 + 72) = &type metadata for String;
    *(v53 + 40) = 0x8000000100E5C030;
    *(v53 + 48) = v52;
    *(v53 + 56) = v51;

    sub_1008BC8D8(v53);
    swift_setDeallocating();
    sub_1000095E8(v53 + 32, &qword_1011A8618);
    v54 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 addPropertiesWithDictionary:v54];
  }

  v55 = (a1 + v29[18]);
  v56 = v55[1];
  if (v56)
  {
    v57 = *v55;
    sub_10010FC20(&unk_1011AFD70);
    v58 = swift_initStackObject();
    *(v58 + 32) = 0x6554686372616573;
    *(v58 + 16) = xmmword_100EBC6B0;
    *(v58 + 72) = &type metadata for String;
    *(v58 + 40) = 0xEA00000000006D72;
    *(v58 + 48) = v57;
    *(v58 + 56) = v56;

    sub_1008BC8D8(v58);
    swift_setDeallocating();
    sub_1000095E8(v58 + 32, &qword_1011A8618);
    v59 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 addPropertiesWithDictionary:v59];
  }

  v60 = v105;
  if (v110 != 2 && sub_100952474(v110 & 1, v102, v103))
  {
    v61 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 addPropertiesWithDictionary:v61];
  }

  v62 = v111;
  if (v60)
  {
    v63 = String._bridgeToObjectiveC()();
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
    v68 = String._bridgeToObjectiveC()();
    v67 = String._bridgeToObjectiveC()();
    [v35 setProperty:v68 forBodyKey:v67];
  }

  v69 = (a1 + v29[13]);
  v71 = *v69;
  v70 = v69[1];
  v72 = v35;
  if (v70)
  {
    v72 = String._bridgeToObjectiveC()();
    [v35 setPageType:v72];
  }

  v110 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v73 = *&v62[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v73 || (sub_10010FC20(&qword_1011A98C0), v74 = swift_allocObject(), *(v74 + 16) = xmmword_100EBDC20, v75 = sub_10010FC20(&unk_1011ACB70), *(v74 + 32) = v71, *(v74 + 40) = v70, *(v74 + 88) = v75, *(v74 + 56) = v75, *(v74 + 64) = v66, *(v74 + 72) = v65, , v76 = v73, , v77 = Array._bridgeToObjectiveC()().super.isa, , v78 = [v76 compoundStringWithElements:v77], v76, v77, !v78))
  {
    v78 = 0;
  }

  [v35 setPageDescription:v78];

  v79 = v109;
  sub_1000089F8(a1 + v29[14], v109, &qword_1011A77F0);
  v80 = v108;
  if (v106(v79, 1, v108) == 1)
  {
    sub_1000095E8(v79, &qword_1011A77F0);
    v81 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v101 + 8))(v79, v80);
    v81 = String._bridgeToObjectiveC()();
  }

  v82 = v111;
  [v35 setPageURL:v81];

  if (*(a1 + v29[15]))
  {
    v83.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v83.super.isa = 0;
  }

  v84 = String._bridgeToObjectiveC()();
  [v35 setProperty:v83.super.isa forBodyKey:v84];

  swift_unknownObjectRelease();
  if ((*(a1 + v29[16]) & 1) == 0)
  {
    sub_10010FC20(&unk_1011AFD70);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_100EBC6B0;
    *(v85 + 32) = 0x7073694465676170;
    v86 = v85 + 32;
    *(v85 + 72) = &type metadata for String;
    *(v85 + 40) = 0xEF6570795479616CLL;
    *(v85 + 48) = 0x7765695664726163;
    *(v85 + 56) = 0xE800000000000000;
    sub_1008BC8D8(v85);
    swift_setDeallocating();
    sub_1000095E8(v86, &qword_1011A8618);
    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 addPropertiesWithDictionary:v87];
  }

  v88 = *(a1 + v29[17]);
  if (v88 != 2)
  {
    sub_10010FC20(&unk_1011AFD70);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_100EBC6B0;
    *(v89 + 32) = 0xD000000000000014;
    v90 = v89 + 32;
    *(v89 + 40) = 0x8000000100E5C010;
    *(v89 + 72) = &type metadata for Bool;
    *(v89 + 48) = v88 & 1;
    sub_1008BC8D8(v89);
    swift_setDeallocating();
    sub_1000095E8(v90, &qword_1011A8618);
    v91 = Dictionary._bridgeToObjectiveC()().super.isa;

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
  aBlock[4] = sub_100952CBC;
  aBlock[5] = v96;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D13B0;
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
    v7 = String._bridgeToObjectiveC()();
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
    v8 = String._bridgeToObjectiveC()();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = String._bridgeToObjectiveC()();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = String._bridgeToObjectiveC()();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = String._bridgeToObjectiveC()();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = String._bridgeToObjectiveC()();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000100E5C050;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_1000089F8(&v24, aBlock, &unk_1011ACB70);
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

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
      aBlock[4] = sub_100952CF4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010D1400;
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

void sub_10094ED18(void *a1)
{
  if (sub_100954FAC())
  {
    sub_100951734(a1, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    v11 = String._bridgeToObjectiveC()();
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
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = String._bridgeToObjectiveC()();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = String._bridgeToObjectiveC()();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = String._bridgeToObjectiveC()();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = String._bridgeToObjectiveC()();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = String._bridgeToObjectiveC()();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = String._bridgeToObjectiveC()();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = String._bridgeToObjectiveC()();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = String._bridgeToObjectiveC()();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = sub_1009536C8;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D1450;
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
  v8 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v100 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
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
      v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v26 = String._bridgeToObjectiveC()();
    [v16 setProperty:v20 forBodyKey:v26];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v27 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v28 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v29 = [v28 unsignedLongLongValue];

      v111 = v29;
      v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v30 = String._bridgeToObjectiveC()();
    [v16 setProperty:v27 forBodyKey:v30];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v31 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v32 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v33 = [v32 unsignedLongLongValue];

      v110 = v33;
      v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v34 = String._bridgeToObjectiveC()();
    [v16 setProperty:v31 forBodyKey:v34];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v35 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v36 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v37 = [v36 unsignedLongLongValue];

      v109 = v37;
      v35 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v38 = String._bridgeToObjectiveC()();
    [v16 setProperty:v35 forBodyKey:v38];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v39 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v40 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v41 = [v40 unsignedLongLongValue];

      v108 = v41;
      v39 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v42 = String._bridgeToObjectiveC()();
    [v16 setProperty:v39 forBodyKey:v42];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v44 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v45 = [v44 unsignedLongLongValue];

      v107 = v45;
      v43 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v46 = String._bridgeToObjectiveC()();
    [v16 setProperty:v43 forBodyKey:v46];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v47 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v48 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v49 = [v48 unsignedLongLongValue];

      v105 = v49;
      v47 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v50 = String._bridgeToObjectiveC()();
    [v16 setProperty:v47 forBodyKey:v50];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 requestStartTime];
      v52 = [objc_opt_self() serverTimeFromTimeInterval:v51];
      v53 = [v52 unsignedLongLongValue];

      v105 = v53;
      v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v54 = 0;
    }

    v55 = String._bridgeToObjectiveC()();
    [v16 setProperty:v54 forBodyKey:v55];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseStartTime];
      v57 = [objc_opt_self() serverTimeFromTimeInterval:v56];
      v58 = [v57 unsignedLongLongValue];

      v105 = v58;
      v59 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v59 = 0;
    }

    v60 = String._bridgeToObjectiveC()();
    [v16 setProperty:v59 forBodyKey:v60];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseEndTime];
      v62 = [objc_opt_self() serverTimeFromTimeInterval:v61];
      v63 = [v62 unsignedLongLongValue];

      v105 = v63;
      v64 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v65 = String._bridgeToObjectiveC()();
      [v16 setProperty:v64 forBodyKey:v65];
      swift_unknownObjectRelease();

      v66 = [v17 cachedResponse];
    }

    else
    {
      v67 = String._bridgeToObjectiveC()();
      [v16 setProperty:0 forBodyKey:v67];

      v66 = 0;
    }

    LOBYTE(v105) = v66;
    v68 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v69 = String._bridgeToObjectiveC()();
    [v16 setProperty:v68 forBodyKey:v69];
    swift_unknownObjectRelease();

    v70 = (a1 + *(*a1 + 160));
    v71 = v70[1];
    v105 = *v70;
    v106 = v71;

    v72 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v73 = String._bridgeToObjectiveC()();
    [v16 setProperty:v72 forBodyKey:v73];
    swift_unknownObjectRelease();

    v74 = v70[3];
    v105 = v70[2];
    v106 = v74;

    v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v76 = String._bridgeToObjectiveC()();
    [v16 setProperty:v75 forBodyKey:v76];
    swift_unknownObjectRelease();

    v77 = type metadata accessor for MetricsPageProperties();
    v78 = v102;
    sub_1000089F8(v70 + *(v77 + 24), v102, &qword_1011A77F0);
    v79 = type metadata accessor for URL();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_1000095E8(v78, &qword_1011A77F0);
      v81 = 0;
    }

    else
    {
      v82 = URL.absoluteString.getter();
      v84 = v83;
      (*(v80 + 8))(v78, v79);
      v105 = v82;
      v106 = v84;
      v81 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v85 = v103;
    v86 = String._bridgeToObjectiveC()();
    [v16 setProperty:v81 forBodyKey:v86];
    swift_unknownObjectRelease();

    if (*(v70 + *(v77 + 28)))
    {
      v105 = *(v70 + *(v77 + 28));

      sub_10010FC20(&qword_1011A98D0);
      v87 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v87 = 0;
    }

    v88 = String._bridgeToObjectiveC()();
    [v16 setProperty:v87 forBodyKey:v88];
    swift_unknownObjectRelease();

    if (v85)
    {
      v105 = v101;
      v106 = v85;

      v89 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v89 = 0;
    }

    v90 = String._bridgeToObjectiveC()();
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
    sub_100958528(v92, v99, v99, v92, sub_100953700, v93);
  }

  else
  {
    __break(1u);
  }
}

void sub_100950048(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a4(a2))
  {
    sub_100951734(a2, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = String._bridgeToObjectiveC()();
    [v17 setTopic:v18];

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_100952474(a4 & 1, v22, v23))
      {
        v20 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_100951734(v17, a8, a9);
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
  v37 = type metadata accessor for UUID();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

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
    aBlock[4] = sub_100945BB8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D14C8;
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

void sub_10095078C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = String._bridgeToObjectiveC()();
  [a1 setTopic:v12];

  if (qword_1011A6768 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, static Logger.carMetrics);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100010678(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    sub_10000959C(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001D5D0C;
  v20[3] = &unk_1010D1CF8;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100950B54()
{
  if (qword_1011A6818 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v1, qword_101219A28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = sub_100950D28;
  v7 = swift_continuation_init();
  v0[17] = sub_10010FC20(&unk_1011AD160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100950FD0;
  v0[13] = &unk_1010D14F0;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100950D28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100950E38;
  }

  else
  {
    v2 = sub_1006E1274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100950E38()
{
  v12 = v0;
  swift_willThrow();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[10] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100950FD0(uint64_t a1, void *a2)
{
  sub_10000954C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10010FC20(&qword_1011AB640);
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

uint64_t sub_10095107C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1000095E8(&v8, &qword_1011ABB20);
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
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

uint64_t sub_1009511AC(void *a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011A9F80);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1009546F8, v4);
}

uint64_t sub_100951250()
{
  v0 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  if (qword_1011A6818 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219A28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
  }

  static TaskPriority.low.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_1008A3074(0, 0, v2, &unk_100EF1558, v10);

  return sub_1000095E8(v2, &qword_1011A7F00);
}

uint64_t sub_100951498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_100943CE0(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_100943CE0(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_100951628;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100951628()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100951734(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_100951B78(a1);
    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_1011A6818 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_101219A28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
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
  aBlock[4] = sub_10095456C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D5D0C;
  aBlock[3] = &unk_1010D1D48;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_100951B78(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = String._bridgeToObjectiveC()();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = sub_1009550F8();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = sub_100951DF0(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_10089C4F8(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = sub_10089C4F8((v24 > 1), v23 + 1, 1, v27);
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

unint64_t sub_100951DF0(unint64_t result, uint64_t a2)
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
    result = sub_100015C24(0, v4, 0);
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
            result = sub_100015C24((v14 > 1), v13 + 1, 1);
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
      result = sub_100015C24(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          sub_100952D2C(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          sub_100952D2C(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

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

uint64_t sub_10095212C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100016270(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10010FC20(&qword_1011ABB20);
  sub_100009F78(0, &qword_1011A9B28);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
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
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100952368(unint64_t a1)
{
  if (a1 <= 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
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

unint64_t sub_100952474(char a1, unint64_t a2, unint64_t a3)
{
  sub_10010FC20(&unk_1011AFD70);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x8000000100E5C3B0;
    *(inited + 96) = sub_100952368(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x8000000100E5BEF0;
    v8 = sub_100952368(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011A8618);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_100EBC6B0;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = sub_1008BC8D8(v11);
    swift_setDeallocating();
    sub_1000095E8(v12, &qword_1011A8618);
  }

  return v10;
}

uint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100952678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v0;
  }
}

double sub_100952794@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

unint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6F88, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_100952D2C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
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
      result = sub_100015C24(result, v11, 1);
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
  v2 = type metadata accessor for Date.ISO8601FormatStyle();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Date();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setDialogId:v6];

  v7 = String._bridgeToObjectiveC()();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_10010FC20(&unk_1011AFD70);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011A8618);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = sub_10010FC20(&unk_1011AFD70);
  v14 = swift_initStackObject();
  v56 = xmmword_100EBC6B0;
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_1008BC8D8(v14);
  swift_setDeallocating();
  sub_1000095E8(v14 + 32, &qword_1011A8618);
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = sub_10010FC20(&unk_1011A9FA0);
  *(v18 + 48) = v19;

  sub_1008BC8D8(v18);
  swift_setDeallocating();
  sub_1000095E8(v18 + 32, &qword_1011A8618);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = String._bridgeToObjectiveC()();
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

    sub_1008BC8D8(v24);
    swift_setDeallocating();
    sub_1000095E8(v24 + 32, &qword_1011A8618);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = String._bridgeToObjectiveC()();
  [v5 setTargetId:v28];

  sub_10010FC20(&qword_1011A98C0);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  sub_10010FC20(&unk_1011ACB60);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_100EBE260;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  static Date.now.getter();
  v33 = v51;
  static FormatStyle<>.iso8601.getter();
  sub_100954604();
  v34 = v54;
  Date.formatted<A>(_:)();
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
  v38 = sub_1008BC7B0(v31);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A98B0);
  swift_arrayDestroy();
  *(v30 + 56) = sub_10010FC20(&qword_1011A98D0);
  *(v30 + 32) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_10095465C;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10002BC98;
  v60 = &unk_1010D1DE8;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

unint64_t sub_100953754()
{
  result = qword_1011A98E8;
  if (!qword_1011A98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98E8);
  }

  return result;
}

unint64_t sub_1009537AC()
{
  result = qword_1011A98F0;
  if (!qword_1011A98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98F0);
  }

  return result;
}

unint64_t sub_100953804()
{
  result = qword_1011A98F8;
  if (!qword_1011A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98F8);
  }

  return result;
}

unint64_t sub_10095385C()
{
  result = qword_1011A9900;
  if (!qword_1011A9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9900);
  }

  return result;
}

unint64_t sub_1009538B4()
{
  result = qword_1011A9908;
  if (!qword_1011A9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9908);
  }

  return result;
}

unint64_t sub_10095390C()
{
  result = qword_1011A9910;
  if (!qword_1011A9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9910);
  }

  return result;
}

unint64_t sub_100953964()
{
  result = qword_1011A9918;
  if (!qword_1011A9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9918);
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

void sub_100953B64()
{
  sub_100039B94();
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A7FC0, &qword_1011A7FC8);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011A7FB0);
      if (v2 <= 0x3F)
      {
        sub_1000308A0(319, &unk_1011A9A50);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &qword_1011A7FD0, &qword_1011A7FD8);
          if (v4 <= 0x3F)
          {
            sub_1000308A0(319, &qword_1011AEEF0);
            if (v5 <= 0x3F)
            {
              sub_10003920C(319, &qword_1011A9990, &qword_1011A98D0);
              if (v6 <= 0x3F)
              {
                sub_1000308A0(319, &qword_1011A9998);
                if (v7 <= 0x3F)
                {
                  sub_1000308A0(319, &unk_1011A99A0);
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

uint64_t sub_100953EC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100953EE0(uint64_t a1, unsigned int a2)
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

uint64_t sub_100953F38(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100953F88(void *result, int a2)
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

uint64_t sub_100953FB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100953FD0(uint64_t a1)
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

__n128 sub_100953FEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100954000(uint64_t a1, unsigned int a2)
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

uint64_t sub_100954048(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100954090(uint64_t result, unsigned int a2)
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

__n128 sub_1009540C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1009540D4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100954124(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10095417C(void *result, int a2)
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

uint64_t sub_1009541B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_100954210(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1009542C4(uint64_t a1, __int128 *a2)
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

uint64_t sub_1009542F0(uint64_t a1, int a2)
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

uint64_t sub_100954338(uint64_t result, int a2, int a3)
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

__n128 sub_1009543C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1009543EC(uint64_t a1, int a2)
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

uint64_t sub_100954434(uint64_t result, int a2, int a3)
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

uint64_t sub_1009544B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100951478(a1, v4, v5, v6);
}

unint64_t sub_100954604()
{
  result = qword_1011A9B30;
  if (!qword_1011A9B30)
  {
    type metadata accessor for Date.ISO8601FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9B30);
  }

  return result;
}

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties();
  v17 = v16[6];
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_10003CB98(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t sub_100954810(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = sub_100954810(v3);

    v5 = 0;
LABEL_8:
    v27 = v4;
LABEL_9:
    sub_100020438(v5);
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
    v27 = 0;
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
    v27 = 2;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = &v27;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10095A568;
    *(v11 + 24) = v10;
    v25 = sub_100029B94;
    v26 = v11;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100029B9C;
    v24 = &unk_1010D2620;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v9 performWithoutEnforcement:v12];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v5 = sub_10095A568;
      v4 = v27;
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
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  aBlock = 0xD00000000000002BLL;
  v22 = 0x8000000100E5C930;
  v16 = sub_100AC0054(&off_1010C5F40);
  v17 = MPModelObject.humanDescription(including:)(v16);
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  result = _assertionFailure(_:_:file:line:flags:)();
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

BOOL sub_100954FAC()
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

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t sub_1009550F8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_1000095E8(v7, &qword_1011ABB20);
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

  return sub_10003CB98(a1, v3);
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

uint64_t sub_100955488(char *a1, char *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100955510()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100955574()
{
  MetricsContentType.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1009555C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100955628@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_100955658@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_100955684()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_1000095E8(v14, &qword_1011ABB20);
    return 0;
  }

  sub_10010FC20(&qword_1011A9C38);
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
      sub_10000DD18(v4, v14);
      sub_10010FC20(&qword_1011A98D8);
      if (swift_dynamicCast())
      {
        v6 = v15;
        AnyHashable.init<A>(_:)();
        if (*(v6 + 16) && (v7 = sub_1000160B4(v14), (v8 & 1) != 0))
        {
          sub_10000DD18(*(v6 + 56) + 32 * v7, &v15);
          sub_10001621C(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10089C4F8(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_10089C4F8((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_10001621C(v14);
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
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  return 0;
}

uint64_t sub_1009559E8(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100054A48(v6);

      if (v7)
      {
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_1011A70F0 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  [v2 setProperty:v9 forBodyKey:v10];

  if (qword_1011A7100 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  [v2 setProperty:v11 forBodyKey:v12];

  if (qword_1011A70F8 != -1)
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

  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  [v2 setProperty:v13 forBodyKey:v14];

LABEL_16:
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 systemVersion];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = String._bridgeToObjectiveC()();
  [v2 setProperty:v16 forBodyKey:v17];

  return a2();
}

uint64_t sub_100955D28(void *a1, uint64_t (*a2)(void))
{
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  v9 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v10 = sub_10000954C(&v20, *(&v21 + 1));
    v11 = *(*(&v19 + 1) - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_10000959C(&v20);
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  v16 = String._bridgeToObjectiveC()();
  [v2 setProperty:v15 forBodyKey:v16];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t sub_100955F84(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_10095A52C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D24E0;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100029758(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610);
  sub_100024900();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void sub_100956324(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_1008BD290(&off_1010C7208);
  sub_10010FC20(&qword_1011A9C30);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_100955684()) == 0)
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
      v21 = sub_1006BE7F4(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(*(v7 + 56) + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin(v21);
        v28[2] = v34;

        if (sub_10044AB94(sub_10044CFC0, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = String._bridgeToObjectiveC()();

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

uint64_t sub_1009565B0(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
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
    v9 = sub_10089CC44(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  sub_10099C4C8(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10095A5E0;
  *(v14 + 24) = v13;
  v18[0] = sub_10018A020;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t sub_100956754(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_10095A538, v7);
}

uint64_t sub_1009567EC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = String._bridgeToObjectiveC()();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_100956980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D2170;
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
  v9[4] = sub_100958AD4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000B378;
  v9[3] = &unk_1010D1F28;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_100956C3C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_10095A560;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D2558;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100029758(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610);
  sub_100024900();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_100956F1C(void *a1)
{
  if (qword_1011A6810 == -1)
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
    sub_100952794(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_100952BE4(&v4);
  }
}

uint64_t sub_100956FD4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_100009F78(0, &qword_1011A9B28);
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
    sub_1000095E8(v7, &qword_1011ABB20);
    return 0;
  }
}