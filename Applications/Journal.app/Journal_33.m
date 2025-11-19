uint64_t sub_10037DCBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  VisitAssetMetadata.visitStartTime.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790);
    type metadata accessor for SuggestionImportSession(0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Discarded visit while identifying durations, missing start time.", v13, 2u);
    }

    v14 = sub_1000F24EC(&qword_100AD64E8);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v10, v6, v7);
    v17 = sub_1000F24EC(&qword_100AD64E8);
    v18 = *(v17 + 48);
    v16(a2, v10, v7);
    v19 = type metadata accessor for VisitAssetMetadata();
    (*(*(v19 - 8) + 16))(&a2[v18], a1, v19);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

void sub_10037DFA0(uint64_t a1, unint64_t a2)
{
  v54 = a1;
  v46 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v46);
  v45 = &v41 - v3;
  v4 = sub_1000F24EC(&qword_100AE0D60);
  __chkstk_darwin(v4 - 8);
  v53 = &v41 - v5;
  v52 = type metadata accessor for SuggestionImportSession.VisitDuration(0);
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v62 = type metadata accessor for Date();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000F24EC(&qword_100AD5B20);
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v41 - v14;
  v67 = type metadata accessor for PhotoLibraryAssetMetadata();
  v16 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = a2 & 0xC000000000000001;
    v64 = (v16 + 48);
    v59 = (v16 + 32);
    v60 = 0;
    v58 = (v11 + 48);
    v49 = (v11 + 32);
    v48 = (v6 + 48);
    v43 = (v16 + 16);
    v42 = (v13 + 56);
    v57 = (v16 + 8);
    v47 = (v11 + 8);
    v41 = xmmword_100941EE0;
    v51 = a2;
    v50 = v10;
    v61 = v15;
    v65 = a2 & 0xC000000000000001;
    v66 = v18;
    do
    {
      if (v20)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a2 + 8 * v19 + 32);
      }

      v22 = v21;
      v70 = v21;
      type metadata accessor for Asset();
      v23 = v22;
      sub_1000F24EC(&qword_100AE0D68);
      if (swift_dynamicCast())
      {
        v25 = v68;
        v24 = v69;
        ObjectType = swift_getObjectType();
        sub_10078B684(ObjectType, v24, v15);
        v27 = v67;
        if ((*v64)(v15, 1, v67) == 1)
        {

          sub_100004F84(v15, &qword_100AD5B20);
        }

        else
        {
          v28 = v63;
          (*v59)(v63, v15, v27);
          PhotoLibraryAssetMetadata.date.getter();
          v29 = v62;
          if ((*v58)(v10, 1, v62) == 1)
          {
            (*v57)(v28, v27);

            sub_100004F84(v10, &unk_100AD4790);
            v15 = v61;
          }

          else
          {
            v30 = v10;
            v31 = v56;
            v32 = (*v49)(v56, v30, v29);
            __chkstk_darwin(v32);
            *(&v41 - 2) = v31;
            v33 = v53;
            v34 = v60;
            sub_100565E98(sub_1003A72B4, v54, v53);
            v60 = v34;
            if ((*v48)(v33, 1, v52) == 1)
            {
              (*v57)(v63, v67);

              sub_100004F84(v33, &qword_100AE0D60);
              (*v47)(v31, v29);
              a2 = v51;
              v10 = v50;
              v15 = v61;
            }

            else
            {
              sub_1003A6F60(v33, v55, type metadata accessor for SuggestionImportSession.VisitDuration);
              VisitAssetMetadata.latitude.getter();
              v15 = v61;
              if (v35)
              {

                sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                (*v57)(v63, v67);
                (*v47)(v56, v62);
                a2 = v51;
                v10 = v50;
              }

              else
              {
                VisitAssetMetadata.longitude.getter();
                v10 = v50;
                if (v36)
                {

                  sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                  (*v57)(v63, v67);
                }

                else
                {
                  v37 = v63;
                  PhotoLibraryAssetMetadata.latitude.setter();
                  v38 = v37;
                  PhotoLibraryAssetMetadata.longitude.setter();
                  VisitAssetMetadata.placeName.getter();
                  PhotoLibraryAssetMetadata.placeName.setter();
                  v39 = v45;
                  (*v43)(v45, v37, v67);
                  swift_storeEnumTagMultiPayload();
                  sub_1000F24EC(&unk_100AEE0B0);
                  v40 = swift_allocObject();
                  (*v42)(v40 + *(*v40 + 104), 1, 1, v44);
                  *(v40 + *(*v40 + 112)) = v41;
                  sub_100021CEC(v39, v40 + *(*v40 + 120), &unk_100AEE0A0);
                  (*(v24 + 40))(v40, ObjectType, v24);

                  sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                  (*v57)(v38, v67);
                }

                (*v47)(v56, v62);
                a2 = v51;
              }
            }
          }
        }

        v20 = v65;
        v18 = v66;
      }

      else
      {
      }

      ++v19;
    }

    while (v18 != v19);
  }
}

uint64_t sub_10037E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[56] = a2;
  v3[57] = a3;
  v3[55] = a1;
  sub_1000F24EC(&qword_100AD3750);
  v3[58] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v3[59] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v3[62] = v4;
  v3[63] = *(v4 - 8);
  v3[64] = swift_task_alloc();
  v5 = sub_1000F24EC(&unk_100AD5B30);
  v3[65] = v5;
  v3[66] = *(v5 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = sub_1000F24EC(&qword_100AD38D0);
  v3[73] = swift_task_alloc();
  v6 = type metadata accessor for SuggestionImportSession(0);
  v3[74] = v6;
  v7 = *(v6 - 8);
  v3[75] = v7;
  v3[76] = *(v7 + 64);
  v3[77] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v8 = type metadata accessor for Suggestion.ItemContent(0);
  v3[81] = v8;
  v9 = *(v8 - 8);
  v3[82] = v9;
  v3[83] = *(v9 + 64);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE0D98);
  v3[87] = v10;
  v3[88] = *(v10 - 8);
  v3[89] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DA0);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_10037ED1C, 0, 0);
}

uint64_t sub_10037ED1C()
{
  v262 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 664);
  v256 = *(v0 + 656);
  v253 = *(v0 + 648);
  v250 = *(v0 + 600);
  v4 = *(v0 + 456);
  v5 = *(*(v0 + 592) + 20);
  *(v0 + 768) = v5;
  v6 = *(v4 + v5);
  *(v0 + 736) = v6;
  v254 = (v1 + 48);
  v255 = (v1 + 56);
  v252 = v3 + 7;
  v259 = v6;

  v8 = 0;
  for (i = v2; ; v2 = i)
  {
LABEL_4:
    v19 = *(v259 + 16);
    if (v8 == v19)
    {
      v20 = 1;
      v21 = v256;
    }

    else
    {
      v21 = v256;
      if (v8 >= v19)
      {
        __break(1u);
        return result;
      }

      v22 = *(v0 + 720);
      v23 = *(v0 + 712);
      v24 = v259 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v8;
      v25 = *(v2 + 48);
      *v23 = v8;
      sub_1003A6EF8(v24, v23 + v25, type metadata accessor for Suggestion.ItemContent);
      sub_100021CEC(v23, v22, &qword_100AE0D98);
      v20 = 0;
      ++v8;
    }

    v26 = *(v0 + 728);
    v27 = *(v0 + 720);
    v28 = *(v0 + 696);
    (*v255)(v27, v20, 1, v28);
    sub_100021CEC(v27, v26, &qword_100AE0DA0);
    if ((*v254)(v26, 1, v28) == 1)
    {
      break;
    }

    v29 = *(v0 + 728);
    v30 = *(v0 + 688);
    v31 = *v29;
    sub_1003A6F60(v29 + *(v2 + 48), v30, type metadata accessor for Suggestion.ItemContent);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = xmmword_1009520F0;
    *(v32 + 48) = _swiftEmptyArrayStorage;
    *(v32 + 56) = _swiftEmptyArrayStorage;
    *(v32 + 64) = _swiftEmptyArrayStorage;
    *(v32 + 72) = 0;
    *(v32 + 80) = 0;
    *(v32 + 88) = v31;
    v260 = v32;
    v33 = *(v30 + *(v253 + 20));
    v34 = (v33 + 32);
    v35 = *(v33 + 16) + 1;
    v36 = v35;
    v37 = v34;
    while (--v36)
    {
      v38 = *v37;
      v37 += 4;
      if (v38 == &type metadata for Suggestion.Reflection)
      {
        v257 = v8;
        v39 = *(v0 + 688);
        v40 = *(v0 + 680);
        v41 = *(v0 + 640);
        v42 = *(v0 + 632);
        v43 = type metadata accessor for TaskPriority();
        v44 = *(v43 - 8);
        (*(v44 + 56))(v41, 1, 1, v43);
        sub_1003A6EF8(v39, v40, type metadata accessor for Suggestion.ItemContent);
        v45 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        v47 = (v46 + 16);
        *(v46 + 24) = 0;
        sub_1003A6F60(v40, v46 + v45, type metadata accessor for Suggestion.ItemContent);
        *(v46 + ((v45 + v252) & 0xFFFFFFFFFFFFFFF8)) = v260;
        sub_1000082B4(v41, v42, &qword_100AD5170);
        LODWORD(v41) = (*(v44 + 48))(v42, 1, v43);

        v48 = *(v0 + 632);
        if (v41 == 1)
        {
          sub_100004F84(*(v0 + 632), &qword_100AD5170);
          if (*v47)
          {
            goto LABEL_14;
          }

LABEL_24:
          v49 = 0;
          v51 = 0;
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v44 + 8))(v48, v43);
          if (!*v47)
          {
            goto LABEL_24;
          }

LABEL_14:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v49 = dispatch thunk of Actor.unownedExecutor.getter();
          v51 = v50;
          swift_unknownObjectRelease();
        }

        v2 = i;
        v8 = v257;
        v65 = **(v0 + 448);
        v66 = v51 | v49;
        if (v51 | v49)
        {
          v66 = v0 + 336;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0;
          *(v0 + 352) = v49;
          *(v0 + 360) = v51;
        }

        v67 = *(v0 + 688);
        v68 = *(v0 + 640);
        *(v0 + 416) = 1;
        *(v0 + 424) = v66;
        *(v0 + 432) = v65;
        swift_task_create();

        sub_100004F84(v68, &qword_100AD5170);
        sub_1003A3E80(v67, type metadata accessor for Suggestion.ItemContent);
LABEL_28:

        goto LABEL_4;
      }
    }

    v52 = v35;
    v53 = v34;
    while (--v52)
    {
      v54 = v53 + 4;
      v55 = *v53;
      v56 = type metadata accessor for Suggestion.Photo(0);
      v53 = v54;
      if (v55 == v56)
      {
        v9 = *(v0 + 688);
        v10 = *(v0 + 680);
        v11 = *(v0 + 624);
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
        sub_1003A6EF8(v9, v10, type metadata accessor for Suggestion.ItemContent);
        v13 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v14 = v8;
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        sub_1003A6F60(v10, v15 + v13, type metadata accessor for Suggestion.ItemContent);
        *(v15 + ((v13 + v252) & 0xFFFFFFFFFFFFFFF8)) = v260;

        v16 = &unk_1009522E8;
LABEL_2:
        v17 = v15;
        v8 = v14;
        sub_100381E00(v11, v16, v17);
        sub_100004F84(v11, &qword_100AD5170);
        v18 = v9;
LABEL_3:
        sub_1003A3E80(v18, type metadata accessor for Suggestion.ItemContent);

        goto LABEL_4;
      }
    }

    v57 = v35;
    v58 = v34;
    while (--v57)
    {
      v59 = v58 + 4;
      v60 = *v58;
      v61 = type metadata accessor for Suggestion.Video(0);
      v58 = v59;
      if (v60 == v61)
      {
        v9 = *(v0 + 688);
        v62 = *(v0 + 680);
        v11 = *(v0 + 624);
        v63 = type metadata accessor for TaskPriority();
        (*(*(v63 - 8) + 56))(v11, 1, 1, v63);
        sub_1003A6EF8(v9, v62, type metadata accessor for Suggestion.ItemContent);
        v64 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v14 = v8;
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        sub_1003A6F60(v62, v15 + v64, type metadata accessor for Suggestion.ItemContent);
        *(v15 + ((v64 + v252) & 0xFFFFFFFFFFFFFFF8)) = v260;

        v16 = &unk_1009522F8;
        goto LABEL_2;
      }
    }

    v69 = v35;
    v70 = v34;
    while (--v69)
    {
      v71 = v70 + 4;
      v72 = *v70;
      v73 = type metadata accessor for Suggestion.LivePhoto(0);
      v70 = v71;
      if (v72 == v73)
      {
        v9 = *(v0 + 688);
        v74 = *(v0 + 680);
        v11 = *(v0 + 624);
        v75 = type metadata accessor for TaskPriority();
        (*(*(v75 - 8) + 56))(v11, 1, 1, v75);
        sub_1003A6EF8(v9, v74, type metadata accessor for Suggestion.ItemContent);
        v76 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v14 = v8;
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        sub_1003A6F60(v74, v15 + v76, type metadata accessor for Suggestion.ItemContent);
        *(v15 + ((v76 + v252) & 0xFFFFFFFFFFFFFFF8)) = v260;

        v16 = &unk_100952308;
        goto LABEL_2;
      }
    }

    v77 = v35;
    v78 = v34;
    v258 = v8;
    while (--v77)
    {
      v79 = v78 + 4;
      v80 = *v78;
      v81 = type metadata accessor for Suggestion.Song(0);
      v78 = v79;
      if (v80 == v81)
      {
        v82 = *(v0 + 688);
        v248 = v82;
        v83 = *(v0 + 680);
        v84 = *(v0 + 624);
        v85 = *(v0 + 616);
        v86 = *(v0 + 456);
        v87 = type metadata accessor for TaskPriority();
        (*(*(v87 - 8) + 56))(v84, 1, 1, v87);
        sub_1003A6EF8(v82, v83, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v86, v85, type metadata accessor for SuggestionImportSession);
        v88 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v89 = (v88 + v252) & 0xFFFFFFFFFFFFFFF8;
        v90 = (*(v250 + 80) + v89 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v83, v91 + v88, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v89) = v260;
        v92 = v91 + v90;
        v2 = i;
        sub_1003A6F60(v85, v92, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952318;
LABEL_73:
        v218 = v91;
        v8 = v258;
        sub_100381E00(v84, v93, v218);
        sub_100004F84(v84, &qword_100AD5170);
        v18 = v248;
        goto LABEL_3;
      }
    }

    v94 = v35;
    v95 = v34;
    while (--v94)
    {
      v96 = v95 + 4;
      v97 = *v95;
      v98 = type metadata accessor for Suggestion.Podcast(0);
      v95 = v96;
      if (v97 == v98)
      {
        v99 = *(v0 + 688);
        v248 = v99;
        v100 = *(v0 + 680);
        v84 = *(v0 + 624);
        v101 = *(v0 + 616);
        v102 = *(v0 + 456);
        v103 = type metadata accessor for TaskPriority();
        (*(*(v103 - 8) + 56))(v84, 1, 1, v103);
        sub_1003A6EF8(v99, v100, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v102, v101, type metadata accessor for SuggestionImportSession);
        v104 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v105 = (v104 + v252) & 0xFFFFFFFFFFFFFFF8;
        v106 = (*(v250 + 80) + v105 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v100, v91 + v104, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v105) = v260;
        v107 = v91 + v106;
        v2 = i;
        sub_1003A6F60(v101, v107, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952328;
        goto LABEL_73;
      }
    }

    v108 = v35;
    v109 = v34;
    while (--v108)
    {
      v110 = v109 + 4;
      v111 = *v109;
      v112 = type metadata accessor for Suggestion.GenericMedia(0);
      v109 = v110;
      if (v111 == v112)
      {
        v113 = *(v0 + 688);
        v248 = v113;
        v114 = *(v0 + 680);
        v84 = *(v0 + 624);
        v115 = *(v0 + 616);
        v116 = *(v0 + 456);
        v117 = type metadata accessor for TaskPriority();
        (*(*(v117 - 8) + 56))(v84, 1, 1, v117);
        sub_1003A6EF8(v113, v114, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v116, v115, type metadata accessor for SuggestionImportSession);
        v118 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v119 = (v118 + v252) & 0xFFFFFFFFFFFFFFF8;
        v120 = (*(v250 + 80) + v119 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v114, v91 + v118, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v119) = v260;
        v121 = v91 + v120;
        v2 = i;
        sub_1003A6F60(v115, v121, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952338;
        goto LABEL_73;
      }
    }

    v122 = v35;
    v123 = v34;
    while (--v122)
    {
      v124 = v123 + 4;
      v125 = *v123;
      v126 = type metadata accessor for Suggestion.Contact(0);
      v123 = v124;
      if (v125 == v126)
      {
        v127 = *(v0 + 688);
        v248 = v127;
        v128 = *(v0 + 680);
        v84 = *(v0 + 624);
        v129 = *(v0 + 616);
        v130 = *(v0 + 456);
        v131 = type metadata accessor for TaskPriority();
        (*(*(v131 - 8) + 56))(v84, 1, 1, v131);
        sub_1003A6EF8(v127, v128, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v130, v129, type metadata accessor for SuggestionImportSession);
        v132 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v133 = (v132 + v252) & 0xFFFFFFFFFFFFFFF8;
        v134 = (*(v250 + 80) + v133 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v128, v91 + v132, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v133) = v260;
        v135 = v91 + v134;
        v2 = i;
        sub_1003A6F60(v129, v135, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952348;
        goto LABEL_73;
      }
    }

    v136 = v35;
    v137 = v34;
    while (--v136)
    {
      v138 = v137 + 4;
      v139 = *v137;
      v140 = type metadata accessor for Suggestion.Location(0);
      v137 = v138;
      if (v139 == v140)
      {
        v141 = *(v0 + 688);
        v248 = v141;
        v142 = *(v0 + 680);
        v84 = *(v0 + 624);
        v143 = *(v0 + 616);
        v144 = *(v0 + 456);
        v145 = type metadata accessor for TaskPriority();
        (*(*(v145 - 8) + 56))(v84, 1, 1, v145);
        sub_1003A6EF8(v141, v142, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v144, v143, type metadata accessor for SuggestionImportSession);
        v146 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v147 = (v146 + v252) & 0xFFFFFFFFFFFFFFF8;
        v148 = (*(v250 + 80) + v147 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v142, v91 + v146, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v147) = v260;
        v149 = v91 + v148;
        v2 = i;
        sub_1003A6F60(v143, v149, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952358;
        goto LABEL_73;
      }
    }

    v150 = v35;
    v151 = v34;
    while (--v150)
    {
      v152 = *v151;
      v151 += 4;
      if (v152 == &type metadata for Suggestion.LocationGroup)
      {
        v153 = *(v0 + 688);
        v248 = v153;
        v154 = *(v0 + 680);
        v84 = *(v0 + 624);
        v155 = *(v0 + 616);
        v156 = *(v0 + 456);
        v157 = type metadata accessor for TaskPriority();
        (*(*(v157 - 8) + 56))(v84, 1, 1, v157);
        sub_1003A6EF8(v153, v154, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v156, v155, type metadata accessor for SuggestionImportSession);
        v158 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v159 = (v158 + v252) & 0xFFFFFFFFFFFFFFF8;
        v160 = (*(v250 + 80) + v159 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v154, v91 + v158, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v159) = v260;
        v161 = v91 + v160;
        v2 = i;
        sub_1003A6F60(v155, v161, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952368;
        goto LABEL_73;
      }
    }

    v162 = v35;
    v163 = v34;
    while (--v162)
    {
      v164 = v163 + 4;
      v165 = *v163;
      v166 = type metadata accessor for Suggestion.Workout(0);
      v163 = v164;
      if (v165 == v166)
      {
        v167 = *(v0 + 688);
        v248 = v167;
        v168 = *(v0 + 680);
        v84 = *(v0 + 624);
        v169 = *(v0 + 616);
        v170 = *(v0 + 456);
        v171 = type metadata accessor for TaskPriority();
        (*(*(v171 - 8) + 56))(v84, 1, 1, v171);
        sub_1003A6EF8(v167, v168, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v170, v169, type metadata accessor for SuggestionImportSession);
        v172 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v173 = (v172 + v252) & 0xFFFFFFFFFFFFFFF8;
        v174 = (*(v250 + 80) + v173 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v168, v91 + v172, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v173) = v260;
        v175 = v91 + v174;
        v2 = i;
        sub_1003A6F60(v169, v175, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952378;
        goto LABEL_73;
      }
    }

    v176 = v35;
    v177 = v34;
    while (--v176)
    {
      v178 = v177 + 4;
      v179 = *v177;
      v180 = type metadata accessor for Suggestion.MotionActivity(0);
      v177 = v178;
      if (v179 == v180)
      {
        v181 = *(v0 + 688);
        v248 = v181;
        v182 = *(v0 + 680);
        v84 = *(v0 + 624);
        v183 = *(v0 + 616);
        v184 = *(v0 + 456);
        v185 = type metadata accessor for TaskPriority();
        (*(*(v185 - 8) + 56))(v84, 1, 1, v185);
        sub_1003A6EF8(v181, v182, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v184, v183, type metadata accessor for SuggestionImportSession);
        v186 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v187 = (v186 + v252) & 0xFFFFFFFFFFFFFFF8;
        v188 = (*(v250 + 80) + v187 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v182, v91 + v186, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v187) = v260;
        v189 = v91 + v188;
        v2 = i;
        sub_1003A6F60(v183, v189, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952388;
        goto LABEL_73;
      }
    }

    v190 = v35;
    v191 = v34;
    while (--v190)
    {
      v192 = v191 + 4;
      v193 = *v191;
      v194 = type metadata accessor for Suggestion.WorkoutGroup(0);
      v191 = v192;
      if (v193 == v194)
      {
        v195 = *(v0 + 688);
        v248 = v195;
        v196 = *(v0 + 680);
        v84 = *(v0 + 624);
        v197 = *(v0 + 616);
        v198 = *(v0 + 456);
        v199 = type metadata accessor for TaskPriority();
        (*(*(v199 - 8) + 56))(v84, 1, 1, v199);
        sub_1003A6EF8(v195, v196, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v198, v197, type metadata accessor for SuggestionImportSession);
        v200 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v201 = (v200 + v252) & 0xFFFFFFFFFFFFFFF8;
        v202 = (*(v250 + 80) + v201 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v196, v91 + v200, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v201) = v260;
        v203 = v91 + v202;
        v2 = i;
        sub_1003A6F60(v197, v203, type metadata accessor for SuggestionImportSession);

        v93 = &unk_100952398;
        goto LABEL_73;
      }
    }

    v204 = v35;
    v205 = v34;
    while (--v204)
    {
      v206 = v205 + 4;
      v207 = *v205;
      v208 = type metadata accessor for Suggestion.StateOfMind(0);
      v205 = v206;
      if (v207 == v208)
      {
        v209 = *(v0 + 688);
        v248 = v209;
        v210 = *(v0 + 680);
        v84 = *(v0 + 624);
        v211 = *(v0 + 616);
        v212 = *(v0 + 456);
        v213 = type metadata accessor for TaskPriority();
        (*(*(v213 - 8) + 56))(v84, 1, 1, v213);
        sub_1003A6EF8(v209, v210, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v212, v211, type metadata accessor for SuggestionImportSession);
        v214 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v215 = (v214 + v252) & 0xFFFFFFFFFFFFFFF8;
        v216 = (*(v250 + 80) + v215 + 8) & ~*(v250 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        sub_1003A6F60(v210, v91 + v214, type metadata accessor for Suggestion.ItemContent);
        *(v91 + v215) = v260;
        v217 = v91 + v216;
        v2 = i;
        sub_1003A6F60(v211, v217, type metadata accessor for SuggestionImportSession);

        v93 = &unk_1009523A8;
        goto LABEL_73;
      }
    }

    while (--v35)
    {
      v219 = *v34;
      v34 += 4;
      if (v219 == type metadata accessor for Suggestion.EventPoster(0))
      {
        v220 = *(v0 + 688);
        v249 = v220;
        v221 = *(v0 + 680);
        v222 = *(v0 + 624);
        v223 = *(v0 + 616);
        v224 = *(v0 + 456);
        v225 = type metadata accessor for TaskPriority();
        (*(*(v225 - 8) + 56))(v222, 1, 1, v225);
        sub_1003A6EF8(v220, v221, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v224, v223, type metadata accessor for SuggestionImportSession);
        v226 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v227 = (v226 + v252) & 0xFFFFFFFFFFFFFFF8;
        v228 = (*(v250 + 80) + v227 + 8) & ~*(v250 + 80);
        v229 = swift_allocObject();
        *(v229 + 16) = 0;
        *(v229 + 24) = 0;
        sub_1003A6F60(v221, v229 + v226, type metadata accessor for Suggestion.ItemContent);
        *(v229 + v227) = v260;
        v230 = v229 + v228;
        v2 = i;
        sub_1003A6F60(v223, v230, type metadata accessor for SuggestionImportSession);

        v231 = v229;
        v8 = v258;
        sub_100381E00(v222, &unk_1009523B8, v231);
        sub_100004F84(v222, &qword_100AD5170);
        sub_1003A3E80(v249, type metadata accessor for Suggestion.ItemContent);
        goto LABEL_28;
      }
    }

    sub_1003A6EF8(*(v0 + 688), *(v0 + 672), type metadata accessor for Suggestion.ItemContent);
    v232 = Logger.logObject.getter();
    v233 = static os_log_type_t.error.getter();
    v234 = os_log_type_enabled(v232, v233);
    v235 = *(v0 + 688);
    v236 = *(v0 + 672);
    if (v234)
    {
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v261 = v238;
      *v237 = 136315138;
      type metadata accessor for UUID();
      v239 = v8;
      sub_10008D160(&qword_100AE19B0, &type metadata accessor for UUID);
      v240 = dispatch thunk of CustomStringConvertible.description.getter();
      v242 = v241;
      sub_1003A3E80(v236, type metadata accessor for Suggestion.ItemContent);
      v243 = v240;
      v8 = v239;
      v244 = sub_100008458(v243, v242, &v261);

      *(v237 + 4) = v244;
      _os_log_impl(&_mh_execute_header, v232, v233, "Failed to parse framework asset, unrecognized asset %s", v237, 0xCu);
      sub_10000BA7C(v238);
    }

    else
    {

      sub_1003A3E80(v236, type metadata accessor for Suggestion.ItemContent);
    }

    sub_1003A3E80(v235, type metadata accessor for Suggestion.ItemContent);
  }

  v245 = *(v0 + 448);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = xmmword_1009520F0;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  v246 = *v245;
  v247 = swift_task_alloc();
  *(v0 + 744) = v247;
  *v247 = v0;
  v247[1] = sub_10038096C;

  return (sub_1007ABCF8)(0, 0, v246);
}

uint64_t sub_10038096C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_100381868;
  }

  else
  {
    v4 = sub_100380A84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100380A84()
{
  v118 = v0;
  v1 = *(v0 + 760);
  v117 = *(v0 + 752);

  sub_1003A3B94(&v117);
  if (v1)
  {
  }

  v3 = v117;
  v4 = *(v117 + 2);
  if (!v4)
  {

    v25 = 0;
LABEL_65:
    v13 = *(v0 + 48);
    v106 = v25;
    if (v13 >> 62)
    {
      goto LABEL_85;
    }

    v59 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v116 = *(v0 + 48);
    if (v59)
    {
      goto LABEL_67;
    }

LABEL_86:
    if (v106 && *&v106[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {
      v84 = *(v0 + 536);
      v85 = *(v0 + 496);
      v86 = *(v0 + 504);

      sub_1000768B4(v84);

      v87 = (*(v86 + 48))(v84, 1, v85);
      v88 = *(v0 + 536);
      if (!v87)
      {
        v98 = *(v0 + 504);
        v97 = *(v0 + 512);
        v99 = *(v0 + 496);
        (*(v98 + 16))(v97, *(v0 + 536), v99);
        sub_100004F84(v88, &unk_100AD5B30);
        v89 = MultiPinMapAssetMetadata.visitsData.getter();
        (*(v98 + 8))(v97, v99);
        goto LABEL_91;
      }

      sub_100004F84(*(v0 + 536), &unk_100AD5B30);
    }

    v89 = 0;
LABEL_91:
    v90 = *(v0 + 736);
    v91 = *(v0 + 440);
    v92 = sub_10037CA28(v89);

    *(v0 + 64) = v92;
    *(v0 + 72) = *(v90 + 16);
    sub_10037DFA0(v92, v116);

    *v91 = *(v0 + 16);
    v93 = *(v0 + 32);
    v94 = *(v0 + 48);
    v95 = *(v0 + 80);
    v91[3] = *(v0 + 64);
    v91[4] = v95;
    v91[1] = v93;
    v91[2] = v94;

    v96 = *(v0 + 8);

    return v96();
  }

  v5 = 0;
  v111 = 0;
  v107 = 0;
  v109 = 0;
  v6 = *(v0 + 504);
  v104 = (v6 + 48);
  v100 = (v6 + 8);
  v101 = (v6 + 16);
  v102 = (*(v0 + 528) + 56);
  v7 = _swiftEmptyArrayStorage;
  v115 = v4 - 1;
  v8 = 1;
  v9 = 32;
  v103 = v117;
  while (1)
  {
    v113 = v9;
    *(v0 + 176) = *(v3 + v9);
    v10 = *(v3 + v9 + 16);
    v11 = *(v3 + v9 + 32);
    v12 = *(v3 + v9 + 64);
    *(v0 + 224) = *(v3 + v9 + 48);
    *(v0 + 240) = v12;
    *(v0 + 192) = v10;
    *(v0 + 208) = v11;
    if (v8 == 1)
    {
      v8 = *(v0 + 192);
      v111 = *(v0 + 176);
      v107 = *(v0 + 200);
      v109 = *(v0 + 184);
      sub_1003A7574(v111, v109, v8, v107);
    }

    v13 = *(v0 + 216);
    *(v0 + 16) = v111;
    *(v0 + 24) = v109;
    v14 = v8;
    *(v0 + 32) = v8;
    *(v0 + 40) = v107;
    sub_1003A714C(v0 + 176, v0 + 256);

    sub_1006AD688(v15);
    v16 = *(v13 + 16);
    v17 = *(v7 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v7 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v24 = v17 + v16;
      }

      else
      {
        v24 = v17;
      }

      v7 = sub_1003E5DBC(isUniquelyReferenced_nonNull_native, v24, 1, v7);
      if (*(v13 + 16))
      {
LABEL_13:
        v20 = (*(v7 + 3) >> 1) - *(v7 + 2);
        type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
        if (v20 < v16)
        {
          goto LABEL_82;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v7 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_83;
          }

          *(v7 + 2) = v23;
        }

        goto LABEL_22;
      }
    }

    if (v16)
    {
      goto LABEL_81;
    }

LABEL_22:
    *(v0 + 56) = v7;
    v25 = *(v0 + 240);
    if (v5)
    {
      if (!v25)
      {
        sub_1003A3E50(v0 + 176);
        v25 = v5;
        goto LABEL_61;
      }

      v106 = *(v0 + 240);
      v26 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
      if (*&v5[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
      {
        v13 = *(v0 + 568);
        v27 = *(v0 + 496);
        v28 = v5;
        v29 = v106;

        sub_1000768B4(v13);

        if ((*v104)(v13, 1, v27))
        {
          sub_100004F84(*(v0 + 568), &unk_100AD5B30);
          v30 = _swiftEmptyArrayStorage;
        }

        else
        {
          v37 = *(v0 + 512);
          v13 = *(v0 + 496);
          v38 = *(v0 + 568);
          (*v101)(v37, v38, v13);
          sub_100004F84(v38, &unk_100AD5B30);
          v39 = MultiPinMapAssetMetadata.visitsData.getter();
          (*v100)(v37, v13);
          if (v39)
          {
            v30 = v39;
          }

          else
          {
            v30 = _swiftEmptyArrayStorage;
          }
        }

        v35 = v106;
      }

      else
      {
        v34 = v5;
        v35 = v106;
        v36 = v106;
        v30 = _swiftEmptyArrayStorage;
      }

      if (*&v35[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
      {
        v13 = *(v0 + 560);
        v40 = *(v0 + 496);

        sub_1000768B4(v13);

        if ((*v104)(v13, 1, v40))
        {
          sub_100004F84(*(v0 + 560), &unk_100AD5B30);
          goto LABEL_42;
        }

        v42 = *(v0 + 512);
        v13 = *(v0 + 496);
        v43 = *(v0 + 560);
        (*v101)(v42, v43, v13);
        sub_100004F84(v43, &unk_100AD5B30);
        v44 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v100)(v42, v13);
        if (v44)
        {
          v41 = v44;
        }

        else
        {
          v41 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
LABEL_42:
        v41 = _swiftEmptyArrayStorage;
      }

      v117 = v30;
      sub_1006ADB18(v41);
      if (*&v5[v26])
      {
        v13 = v26;
        v45 = *(v0 + 552);
        v46 = *(v0 + 496);

        sub_1000768B4(v45);

        v47 = *v104;
        if (!(*v104)(v45, 1, v46))
        {
          MultiPinMapAssetMetadata.isSlim.getter();
        }

        sub_100004F84(*(v0 + 552), &unk_100AD5B30);
        if (*&v5[v13])
        {
          v49 = *(v0 + 544);
          v50 = *(v0 + 496);

          sub_1000768B4(v49);

          v51 = v47(v49, 1, v50);
          v52 = *(v0 + 544);
          if (v51)
          {
            sub_100004F84(*(v0 + 544), &unk_100AD5B30);
            goto LABEL_54;
          }

          v53 = MultiPinMapAssetMetadata.revision.getter();
          v55 = v54;
          sub_100004F84(v52, &unk_100AD5B30);
          if (v55)
          {
            v48 = 0;
          }

          else
          {
            v48 = v53;
          }
        }

        else
        {
LABEL_54:
          v48 = 0;
        }

        v26 = v13;
      }

      else
      {
        v48 = 0;
      }

      if (__OFADD__(v48, 1))
      {
        goto LABEL_84;
      }

      v56 = *(v0 + 584);
      v57 = *(v0 + 520);
      MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();

      sub_1003A3E50(v0 + 176);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD38D8);
      v58 = swift_allocObject();
      (*v102)(v58 + *(*v58 + 104), 1, 1, v57);
      *(v58 + *(*v58 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v56, v58 + *(*v58 + 120), &qword_100AD38D0);
      *&v5[v26] = v58;

      v25 = v5;
      v3 = v103;
LABEL_61:
      v32 = v115;
      v33 = v113;
      if (!v115)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v25)
    {
      sub_1003A3E50(v0 + 176);
      goto LABEL_61;
    }

    *(v0 + 80) = v25;
    v31 = v25;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v32 = v115;
    if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1003A3E50(v0 + 176);
    v33 = v113;
    if (!v115)
    {
LABEL_63:

      goto LABEL_65;
    }

LABEL_62:
    v115 = v32 - 1;
    v9 = v33 + 80;
    v5 = v25;
    v8 = v14;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v59 = _CocoaArrayWrapper.endIndex.getter();
  v116 = v13;
  if (!v59)
  {
    goto LABEL_86;
  }

LABEL_67:
  v60 = *(v0 + 768);
  v61 = *(v0 + 456);
  result = type metadata accessor for Suggestion(0);
  if (v59 >= 1)
  {
    v62 = 0;
    v63 = v61 + v60;
    v112 = *(result + 28);
    v105 = result;
    v108 = v13 & 0xC000000000000001;
    v110 = *(result + 24);
    v64 = &qword_100AD1420;
    v114 = v59;
    do
    {
      if (v108)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v69 = *(v13 + 8 * v62 + 32);
      }

      v70 = v69;
      v71 = *(v0 + 480);
      v72 = v64;
      sub_1000082B4(v63 + v112, v71, v64);
      v73 = type metadata accessor for UUID();
      v74 = *(v73 - 8);
      v75 = *(v74 + 48);
      if (v75(v71, 1, v73) == 1)
      {
        v76 = *(v0 + 480);
        (*(v74 + 16))(*(v0 + 488), *(v0 + 456) + *(v0 + 768) + *(v105 + 44), v73);
        v77 = v75(v76, 1, v73);
        v64 = v72;
        if (v77 != 1)
        {
          sub_100004F84(*(v0 + 480), v72);
        }
      }

      else
      {
        (*(v74 + 32))(*(v0 + 488), *(v0 + 480), v73);
        v64 = v72;
      }

      v78 = *(v0 + 488);
      v79 = *(v0 + 464);
      (*(v74 + 56))(v78, 0, 1, v73);
      v80 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
      swift_beginAccess();
      sub_100014318(v78, v70 + v80, v64);
      swift_endAccess();
      sub_1000082B4(v63 + v110, v79, &qword_100AD3750);
      v81 = type metadata accessor for DateInterval();
      v82 = *(v81 - 8);
      if ((*(v82 + 48))(v79, 1, v81) == 1)
      {
        sub_100004F84(*(v0 + 464), &qword_100AD3750);
        v65 = 1;
      }

      else
      {
        v83 = *(v0 + 464);
        DateInterval.start.getter();
        (*(v82 + 8))(v83, v81);
        v65 = 0;
      }

      v13 = v116;
      ++v62;
      v66 = *(v0 + 472);
      v67 = type metadata accessor for Date();
      (*(*(v67 - 8) + 56))(v66, v65, 1, v67);
      v68 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
      swift_beginAccess();
      sub_100014318(v66, v70 + v68, &unk_100AD4790);
      swift_endAccess();
    }

    while (v114 != v62);
    goto LABEL_86;
  }

  __break(1u);
  return result;
}

uint64_t sub_100381868()
{
  v1 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v1;
  *(v0 + 160) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v2;
  sub_1003A3E50(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100381A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = swift_task_alloc();
  v5[53] = v6;
  *v6 = v5;
  v6[1] = sub_100381AC4;

  return sub_1003756F8(0, 0);
}

uint64_t sub_100381AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[54] = a1;
  v5[55] = a2;
  v5[56] = a3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100381BFC, 0, 0);
  }
}

uint64_t sub_100381BFC()
{
  if (*(v0 + 440))
  {
    v1 = *(v0 + 448);
    v2 = objc_allocWithZone(NSAttributedString);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithString:v3];

    if (v1)
    {
      sub_1000065A8(0, &qword_100AD4C70);

      v5 = UIColor.init(_:)();
    }

    else
    {
      v5 = 0;
    }

    v17 = *(v0 + 408);
    v16 = *(v0 + 416);
    v18 = sub_100532CB0(0, 256, v4, v5);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    swift_beginAccess();
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    v27 = *(v16 + 32);
    v28 = *(v16 + 40);
    *(v16 + 16) = v18;
    *(v16 + 24) = v20 & 1;
    *(v16 + 32) = v22;
    *(v16 + 40) = v24;
    sub_1003A75B8(v25, v26, v27, v28);
    swift_beginAccess();
    *(v0 + 176) = *(v16 + 16);
    v29 = *(v16 + 32);
    v30 = *(v16 + 48);
    v31 = *(v16 + 80);
    *(v0 + 224) = *(v16 + 64);
    *(v0 + 240) = v31;
    *(v0 + 192) = v29;
    *(v0 + 208) = v30;
    v32 = *(v16 + 80);
    v34 = *(v16 + 32);
    v33 = *(v16 + 48);
    v17[3] = *(v16 + 64);
    v17[4] = v32;
    v17[1] = v34;
    v17[2] = v33;
    *v17 = *(v16 + 16);
    v14 = v0 + 176;
    v15 = v0 + 256;
  }

  else
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    swift_beginAccess();
    *(v0 + 16) = v7[1];
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[5];
    *(v0 + 64) = v7[4];
    *(v0 + 80) = v10;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    v11 = v7[5];
    v13 = v7[2];
    v12 = v7[3];
    v6[3] = v7[4];
    v6[4] = v11;
    v6[1] = v13;
    v6[2] = v12;
    *v6 = v7[1];
    v14 = v0 + 16;
    v15 = v0 + 96;
  }

  sub_1003A714C(v14, v15);
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100381E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1000082B4(a1, v18 - v8, &qword_100AD5170);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &qword_100AD5170);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100381FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v5[53] = v6;
  v5[54] = *(v6 - 8);
  v5[55] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[56] = v7;
  v5[57] = *(v7 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v5[60] = v8;
  v5[61] = *(v8 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v5[64] = v9;
  v5[65] = *(v9 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01F0);
  v10 = swift_task_alloc();
  v5[68] = v10;
  v11 = type metadata accessor for Suggestion.Photo(0);
  v5[69] = v11;
  v5[70] = *(v11 - 8);
  v5[71] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[72] = v12;
  *v12 = v5;
  v12[1] = sub_1003822D4;

  return sub_100375C2C(v10, 0, 0);
}

uint64_t sub_1003822D4()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_1003829D0;
  }

  else
  {
    v2 = sub_1003823E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003823E8()
{
  v1 = *(v0 + 544);
  if ((*(*(v0 + 560) + 48))(v1, 1, *(v0 + 552)) == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    sub_100004F84(v1, &qword_100AE01F0);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 520);
    v14 = *(v0 + 504);
    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v51 = *(v0 + 528);
    v52 = *(v0 + 496);
    v17 = *(v0 + 480);
    v55 = *(v0 + 472);
    v18 = *(v0 + 456);
    v49 = *(v0 + 464);
    v50 = *(v0 + 448);
    v53 = *(v0 + 416);
    sub_1003A6F60(v1, *(v0 + 568), type metadata accessor for Suggestion.Photo);
    (*(v13 + 104))(v12, enum case for AssetType.photo(_:), v15);
    (*(v16 + 104))(v14, enum case for AssetSource.suggestionSheet(_:), v17);
    UUID.init()();
    objc_allocWithZone(type metadata accessor for PlaceholderAsset());
    v54 = *(v18 + 16);
    v54(v49, v55, v50);
    (*(v13 + 16))(v51, v12, v15);
    (*(v16 + 16))(v52, v14, v17);
    v19 = sub_100285908(v49, v51, v52);
    (*(v18 + 8))(v55, v50);
    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
    swift_beginAccess();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 568);
    v22 = *(v0 + 552);
    v23 = *(v0 + 440);
    v24 = *(v0 + 448);
    v25 = *(v0 + 416);
    v26 = *(v0 + 424);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23[3] = v22;
    v23[4] = &off_100A69C98;
    v27 = sub_10001A770(v23);
    sub_1003A6EF8(v21, v27, type metadata accessor for Suggestion.Photo);
    v54(v23 + *(v26 + 20), &v20[OBJC_IVAR____TtC7Journal5Asset_id], v24);
    sub_1000F24EC(&qword_100AD65F0);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940080;
    (*(v29 + 16))(v31 + v30, v21, v28);
    *(v23 + *(v26 + 24)) = v31;
    v32 = *(v25 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 56) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1003E5DBC(0, v32[2] + 1, 1, v32);
      *(v25 + 56) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1003E5DBC(v34 > 1, v35 + 1, 1, v32);
    }

    v36 = *(v0 + 568);
    v38 = *(v0 + 432);
    v37 = *(v0 + 440);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    v32[2] = v35 + 1;
    sub_1003A6F60(v37, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    *(v25 + 56) = v32;
    swift_endAccess();

    sub_1003A3E80(v36, type metadata accessor for Suggestion.Photo);
    swift_beginAccess();
    *(v0 + 176) = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    v43 = v39[5];
    *(v0 + 224) = v39[4];
    *(v0 + 240) = v43;
    *(v0 + 192) = v41;
    *(v0 + 208) = v42;
    v44 = v39[5];
    v46 = v39[2];
    v45 = v39[3];
    v40[3] = v39[4];
    v40[4] = v44;
    v40[1] = v46;
    v40[2] = v45;
    *v40 = v39[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1003829D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100382AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a1;
  v5[55] = a5;
  sub_1000F24EC(&unk_100AD4790);
  v5[56] = swift_task_alloc();
  v5[57] = sub_1000F24EC(&unk_100AEE0A0);
  v5[58] = swift_task_alloc();
  v5[59] = type metadata accessor for AssetAttachment.AssetType(0);
  v5[60] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[61] = v6;
  v5[62] = *(v6 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v7 = type metadata accessor for AssetSource();
  v5[65] = v7;
  v5[66] = *(v7 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v8 = type metadata accessor for AssetType();
  v5[69] = v8;
  v5[70] = *(v8 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0238);
  v9 = swift_task_alloc();
  v5[73] = v9;
  v10 = type metadata accessor for Suggestion.Video(0);
  v5[74] = v10;
  v5[75] = *(v10 - 8);
  v5[76] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[77] = v11;
  *v11 = v5;
  v11[1] = sub_100382DD4;

  return sub_100376320(v9, 0, 0);
}

uint64_t sub_100382DD4()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_100383718;
  }

  else
  {
    v2 = sub_100382EE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100382EE8()
{
  v1 = *(v0 + 584);
  if ((*(*(v0 + 600) + 48))(v1, 1, *(v0 + 592)) == 1)
  {
    v2 = *(v0 + 432);
    v3 = *(v0 + 440);
    sub_100004F84(v1, &qword_100AE0238);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v3[5];
    v9 = v3[2];
    v8 = v3[3];
    v2[3] = v3[4];
    v2[4] = v7;
    v2[1] = v9;
    v2[2] = v8;
    *v2 = v3[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v66 = *(v0 + 608);
    v12 = *(v0 + 576);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v64 = *(v0 + 568);
    v65 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 512);
    v63 = *(v0 + 504);
    v18 = *(v0 + 496);
    v61 = *(v0 + 544);
    v67 = *(v0 + 480);
    v68 = *(v0 + 488);
    sub_1003A6F60(v1, v66, type metadata accessor for Suggestion.Video);
    v62 = v14;
    (*(v13 + 104))(v12, enum case for AssetType.video(_:), v14);
    (*(v15 + 104))(v61, enum case for AssetSource.suggestionSheet(_:), v16);
    UUID.init()();
    v19 = objc_allocWithZone(type metadata accessor for VideoAsset());
    *&v19[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    (*(v18 + 16))(v63, v17, v68);
    (*(v13 + 16))(v64, v12, v14);
    (*(v15 + 16))(v65, v61, v16);
    v20 = sub_100285908(v63, v64, v65);
    v21 = *(v18 + 8);
    v21(v17, v68);
    (*(v15 + 8))(v61, v16);
    (*(v13 + 8))(v12, v62);
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v67, v66, v22);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v23 = v20;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v21(v17, v68);
    type metadata accessor for AssetAttachment(0);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    sub_1003A6F60(v67, v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v28 = (v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v28 = v24;
    v28[1] = v26;
    v29 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v23 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v30 = *(v0 + 608);
    v31 = *(v0 + 592);
    v32 = *(v0 + 448);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000082B4(v30 + *(v31 + 20), v32, &unk_100AD4790);
    v33 = v30 + *(v31 + 28);
    if (*(v33 + 32))
    {
    }

    else
    {
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      v37 = *v33;
      v36 = *(v33 + 8);

      v70.origin.x = v37;
      v70.origin.y = v36;
      v70.size.width = v35;
      v70.size.height = v34;
      v38 = NSStringFromCGRect(v70);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v39 = *(v0 + 608);
    v40 = *(v0 + 592);
    v41 = v39 + *(v40 + 24);
    if ((*(v41 + 32) & 1) == 0)
    {
      v42 = NSStringFromCGRect(*v41);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = *(v0 + 608);
      v40 = *(v0 + 592);
    }

    v43 = v39 + *(v40 + 32);
    if ((*(v43 + 32) & 1) == 0)
    {
      v44 = NSStringFromCGRect(*v43);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v45 = *(v0 + 464);
    v46 = *(v0 + 440);
    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v47 = swift_allocObject();
    v48 = *(*v47 + 104);
    v49 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
    *(v47 + *(*v47 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v45, v47 + *(*v47 + 120), &unk_100AEE0A0);
    *(v23 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = v47;

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v46 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v46 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v50 = *(v0 + 608);
    v52 = *(v0 + 432);
    v51 = *(v0 + 440);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    sub_1003A3E80(v50, type metadata accessor for Suggestion.Video);
    swift_beginAccess();
    *(v0 + 176) = v51[1];
    v53 = v51[2];
    v54 = v51[3];
    v55 = v51[5];
    *(v0 + 224) = v51[4];
    *(v0 + 240) = v55;
    *(v0 + 192) = v53;
    *(v0 + 208) = v54;
    v56 = v51[5];
    v58 = v51[2];
    v57 = v51[3];
    v52[3] = v51[4];
    v52[4] = v56;
    v52[1] = v58;
    v52[2] = v57;
    *v52 = v51[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100383718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100383814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v5[53] = v6;
  v5[54] = *(v6 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[57] = v7;
  v5[58] = *(v7 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v5[61] = v8;
  v5[62] = *(v8 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v5[65] = v9;
  v5[66] = *(v9 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01A8);
  v10 = swift_task_alloc();
  v5[69] = v10;
  v11 = type metadata accessor for Suggestion.LivePhoto(0);
  v5[70] = v11;
  v5[71] = *(v11 - 8);
  v5[72] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[73] = v12;
  *v12 = v5;
  v12[1] = sub_100383B08;

  return sub_100376A14(v10, 0, 0);
}

uint64_t sub_100383B08()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_10038427C;
  }

  else
  {
    v2 = sub_100383C1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100383C1C()
{
  v1 = *(v0 + 552);
  if ((*(*(v0 + 568) + 48))(v1, 1, *(v0 + 560)) == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    sub_100004F84(v1, &qword_100AE01A8);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v12 = *(v0 + 544);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    v60 = *(v0 + 480);
    v52 = *(v0 + 472);
    v18 = *(v0 + 464);
    v53 = *(v0 + 456);
    v54 = *(v0 + 536);
    v56 = *(v0 + 504);
    v58 = *(v0 + 416);
    sub_1003A6F60(v1, *(v0 + 576), type metadata accessor for Suggestion.LivePhoto);
    (*(v13 + 104))(v12, enum case for AssetType.livePhoto(_:), v14);
    (*(v17 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v16);
    UUID.init()();
    objc_allocWithZone(type metadata accessor for PlaceholderAsset());
    v59 = *(v18 + 16);
    v59(v52, v60, v53);
    (*(v13 + 16))(v54, v12, v14);
    (*(v17 + 16))(v56, v15, v16);
    v19 = sub_100285908(v52, v54, v56);
    (*(v18 + 8))(v60, v53);
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    swift_beginAccess();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v58 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 576);
    v22 = *(v0 + 560);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v61 = *(v0 + 440);
    v25 = *(v0 + 424);
    v55 = v25;
    v57 = *(v0 + 416);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23[3] = v22;
    v23[4] = &off_100A69CA8;
    v26 = sub_10001A770(v23);
    sub_1003A6EF8(v21, v26, type metadata accessor for Suggestion.LivePhoto);
    v62 = v20;
    v59(v23 + *(v25 + 20), &v20[OBJC_IVAR____TtC7Journal5Asset_id], v24);
    sub_1000F24EC(&qword_100AD65F0);
    v27 = type metadata accessor for URL();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940050;
    v32 = v31 + v30;
    v33 = *(v28 + 16);
    v33(v32, v21, v27);
    v33(v32 + v29, v21 + *(v22 + 20), v27);
    *(v23 + *(v55 + 24)) = v31;
    sub_1003A6EF8(v23, v61, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    v34 = *(v57 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 56) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1003E5DBC(0, v34[2] + 1, 1, v34);
      *(v57 + 56) = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1003E5DBC(v36 > 1, v37 + 1, 1, v34);
    }

    v38 = *(v0 + 576);
    v39 = *(v0 + 440);
    v40 = *(v0 + 448);
    v41 = *(v0 + 432);
    v43 = *(v0 + 408);
    v42 = *(v0 + 416);
    v34[2] = v37 + 1;
    sub_1003A6F60(v39, v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v37, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    *(v57 + 56) = v34;
    swift_endAccess();

    sub_1003A3E80(v40, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    sub_1003A3E80(v38, type metadata accessor for Suggestion.LivePhoto);
    swift_beginAccess();
    *(v0 + 176) = v42[1];
    v44 = v42[2];
    v45 = v42[3];
    v46 = v42[5];
    *(v0 + 224) = v42[4];
    *(v0 + 240) = v46;
    *(v0 + 192) = v44;
    *(v0 + 208) = v45;
    v47 = v42[5];
    v49 = v42[2];
    v48 = v42[3];
    v43[3] = v42[4];
    v43[4] = v47;
    v43[1] = v49;
    v43[2] = v48;
    *v43 = v42[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10038427C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100384360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&qword_100ADF198);
  v6[80] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA8E0);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0218);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.Song(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_100384770;

  return sub_100377108(v11, 0, 0);
}

uint64_t sub_100384770()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003852A8;
  }

  else
  {
    v2 = sub_100384884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100384884()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0218);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Song);
    sub_1000082B4(v13 + *(v1 + 28), v16, &unk_100AD6DD0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into music asset, content missing artwork", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Song);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v78 = *(v0 + 816);
      v75 = *(v0 + 808);
      v76 = *(v0 + 800);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v72 = *(v0 + 768);
      v73 = *(v0 + 736);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v71 = *(v0 + 704);
      v35 = *(v0 + 696);
      v70 = *(v0 + 744);
      v79 = *(v0 + 680);
      v81 = *(v0 + 688);
      (*(v75 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.music(_:), v31);
      (*(v32 + 104))(v70, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for MusicAsset());
      *&v36[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = 0;
      (*(v35 + 16))(v71, v34, v81);
      (*(v30 + 16))(v72, v29, v31);
      (*(v32 + 16))(v73, v70, v33);
      v37 = sub_100285908(v71, v72, v73);
      v38 = *(v35 + 8);
      v38(v34, v81);
      (*(v32 + 8))(v70, v33);
      (*(v30 + 8))(v29, v31);
      (*(v75 + 16))(v79, v78, v76);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v81);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v79, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v80 = v39;
      v46 = *(v0 + 848);
      v47 = *(v0 + 832);
      v77 = *(v0 + 664);
      v48 = *(v0 + 648);
      v49 = *(v0 + 640);
      v74 = *(v0 + 624);
      (*(*(v0 + 808) + 56))();
      sub_1000082B4(v46 + *(v47 + 32), v48, &unk_100AD4790);
      v50 = enum case for MediaViewType.song(_:);
      v51 = type metadata accessor for MediaViewType();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v49, v50, v51);
      (*(v52 + 56))(v49, 0, 1, v51);

      MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E90);
      v53 = swift_allocObject();
      v54 = *(*v53 + 104);
      v55 = sub_1000F24EC(&qword_100AD6F70);
      (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
      *(v53 + *(*v53 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v77, v53 + *(*v53 + 120), &qword_100ADA8E0);
      *&v80[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = v53;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v74 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v74 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v56 = *(v0 + 848);
      v57 = *(v0 + 816);
      v58 = *(v0 + 808);
      v59 = *(v0 + 800);
      v60 = *(v0 + 624);
      v61 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v58 + 8))(v57, v59);
      sub_1003A3E80(v56, type metadata accessor for Suggestion.Song);
      swift_beginAccess();
      *(v0 + 336) = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      v64 = v60[5];
      *(v0 + 384) = v60[4];
      *(v0 + 400) = v64;
      *(v0 + 352) = v62;
      *(v0 + 368) = v63;
      v65 = v60[5];
      v67 = v60[2];
      v66 = v60[3];
      v61[3] = v60[4];
      v61[4] = v65;
      v61[1] = v67;
      v61[2] = v66;
      *v61 = v60[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1003852A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003853E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&qword_100ADF198);
  v6[80] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA958);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0200);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.Podcast(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_1003857F0;

  return sub_1003777FC(v11, 0, 0);
}

uint64_t sub_1003857F0()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003A9FB4;
  }

  else
  {
    v2 = sub_100385904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100385904()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0200);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Podcast);
    sub_1000082B4(v13 + *(v1 + 24), v16, &unk_100AD6DD0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into music asset, content missing artwork", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Podcast);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v83 = *(v0 + 816);
      v80 = *(v0 + 808);
      v82 = *(v0 + 800);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v76 = *(v0 + 768);
      v78 = *(v0 + 736);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v75 = *(v0 + 704);
      v35 = *(v0 + 696);
      v74 = *(v0 + 744);
      v84 = *(v0 + 680);
      v86 = *(v0 + 688);
      (*(v80 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.podcast(_:), v31);
      (*(v32 + 104))(v74, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for PodcastAsset());
      *&v36[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = 0;
      (*(v35 + 16))(v75, v34, v86);
      (*(v30 + 16))(v76, v29, v31);
      (*(v32 + 16))(v78, v74, v33);
      v37 = sub_100285908(v75, v76, v78);
      v38 = *(v35 + 8);
      v38(v34, v86);
      (*(v32 + 8))(v74, v33);
      (*(v30 + 8))(v29, v31);
      (*(v80 + 16))(v84, v83, v82);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v86);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v84, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 848);
      v79 = *(v0 + 832);
      v47 = *(v0 + 808);
      v48 = *(v0 + 800);
      v49 = v39;
      v50 = *(v0 + 784);
      v85 = *(v0 + 664);
      v77 = *(v0 + 648);
      v51 = *(v0 + 640);
      v81 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v52 = v50;
      v53 = v49;
      (*(v47 + 56))(v52, 1, 1, v48);
      sub_1000082B4(v46 + *(v79 + 28), v77, &unk_100AD4790);
      v54 = enum case for MediaViewType.podcast(_:);
      v55 = type metadata accessor for MediaViewType();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v51, v54, v55);
      (*(v56 + 56))(v51, 0, 1, v55);

      PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80);
      v57 = swift_allocObject();
      v58 = *(*v57 + 104);
      v59 = sub_1000F24EC(&qword_100AD2A70);
      (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
      *(v57 + *(*v57 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v85, v57 + *(*v57 + 120), &qword_100ADA958);
      *&v49[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v57;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v81 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v81 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v60 = *(v0 + 848);
      v61 = *(v0 + 816);
      v62 = *(v0 + 808);
      v63 = *(v0 + 800);
      v64 = *(v0 + 624);
      v65 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v62 + 8))(v61, v63);
      sub_1003A3E80(v60, type metadata accessor for Suggestion.Podcast);
      swift_beginAccess();
      *(v0 + 336) = v64[1];
      v66 = v64[2];
      v67 = v64[3];
      v68 = v64[5];
      *(v0 + 384) = v64[4];
      *(v0 + 400) = v68;
      *(v0 + 352) = v66;
      *(v0 + 368) = v67;
      v69 = v64[5];
      v71 = v64[2];
      v70 = v64[3];
      v65[3] = v64[4];
      v65[4] = v69;
      v65[1] = v71;
      v65[2] = v70;
      *v65 = v64[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1003862EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[84] = a6;
  v6[83] = a5;
  v6[82] = a1;
  sub_1000F24EC(&qword_100AD6030);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[87] = swift_task_alloc();
  v7 = type metadata accessor for MediaViewType();
  v6[88] = v7;
  v6[89] = *(v7 - 8);
  v6[90] = swift_task_alloc();
  v6[91] = sub_1000F24EC(&qword_100ADA870);
  v6[92] = swift_task_alloc();
  v6[93] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[94] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[95] = v8;
  v6[96] = *(v8 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v6[99] = v9;
  v6[100] = *(v9 - 8);
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v10 = type metadata accessor for AssetType();
  v6[103] = v10;
  v6[104] = *(v10 - 8);
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[109] = v11;
  v6[110] = *(v11 - 8);
  v6[111] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0188);
  v12 = swift_task_alloc();
  v6[112] = v12;
  v13 = type metadata accessor for Suggestion.GenericMedia(0);
  v6[113] = v13;
  v6[114] = *(v13 - 8);
  v6[115] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[116] = v14;
  *v14 = v6;
  v14[1] = sub_100386764;

  return sub_100377EF0(v12, 0, 0);
}

uint64_t sub_100386764()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_10038749C;
  }

  else
  {
    v2 = sub_100386878;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386878()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  if ((*(*(v0 + 912) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 664);
    v4 = *(v0 + 656);
    sub_100004F84(v2, &qword_100AE0188);
    swift_beginAccess();
    *(v0 + 56) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[4];
    *(v0 + 120) = v3[5];
    *(v0 + 104) = v7;
    *(v0 + 88) = v6;
    *(v0 + 72) = v5;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 56;
    v12 = v0 + 136;
    goto LABEL_26;
  }

  v13 = *(v0 + 920);
  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  v16 = *(v0 + 864);
  sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.GenericMedia);
  sub_1000082B4(v13 + *(v1 + 32), v16, &unk_100AD6DD0);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_100004F84(*(v0 + 864), &unk_100AD6DD0);
    type metadata accessor for SuggestionImportSession(0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into third party media asset, content missing app icon", v19, 2u);
    }

    v20 = *(v0 + 920);
    v21 = *(v0 + 664);
    v22 = *(v0 + 656);

    sub_1003A3E80(v20, type metadata accessor for Suggestion.GenericMedia);
    swift_beginAccess();
    *(v0 + 216) = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[5];
    *(v0 + 264) = v21[4];
    *(v0 + 280) = v25;
    *(v0 + 232) = v23;
    *(v0 + 248) = v24;
    v26 = v21[5];
    v28 = v21[2];
    v27 = v21[3];
    v22[3] = v21[4];
    v22[4] = v26;
    v22[1] = v28;
    v22[2] = v27;
    *v22 = v21[1];
    v12 = v0 + 296;
    v11 = v0 + 216;
    goto LABEL_26;
  }

  v96 = *(v0 + 880);
  v98 = *(v0 + 872);
  v100 = *(v0 + 888);
  v29 = *(v0 + 848);
  v30 = *(v0 + 832);
  v31 = *(v0 + 824);
  v93 = *(v0 + 808);
  v32 = *(v0 + 800);
  v33 = *(v0 + 792);
  v34 = *(v0 + 784);
  v90 = *(v0 + 776);
  v91 = *(v0 + 840);
  v35 = *(v0 + 768);
  v89 = *(v0 + 816);
  v101 = *(v0 + 752);
  v102 = *(v0 + 760);
  (*(v96 + 32))();
  (*(v30 + 104))(v29, enum case for AssetType.thirdPartyMedia(_:), v31);
  (*(v32 + 104))(v89, enum case for AssetSource.suggestionSheet(_:), v33);
  UUID.init()();
  v36 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAsset());
  *&v36[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = 0;
  (*(v35 + 16))(v90, v34, v102);
  (*(v30 + 16))(v91, v29, v31);
  (*(v32 + 16))(v93, v89, v33);
  v37 = sub_100285908(v90, v91, v93);
  v38 = *(v35 + 8);
  v38(v34, v102);
  (*(v32 + 8))(v89, v33);
  (*(v30 + 8))(v29, v31);
  (*(v96 + 16))(v101, v100, v98);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v39 = v37;
  UUID.init()();
  v40 = UUID.uuidString.getter();
  v42 = v41;
  v38(v34, v102);
  type metadata accessor for AssetAttachment(0);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  sub_1003A6F60(v101, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v44 = v40;
  v44[1] = v42;
  v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v103 = v39;
  if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v46 = *(v0 + 920);
  v47 = *(v0 + 904);
  v48 = *(v0 + 880);
  v97 = *(v0 + 856);
  v99 = *(v0 + 872);
  v49 = *(v0 + 720);
  v50 = *(v0 + 712);
  v51 = *(v0 + 704);
  v94 = *(v0 + 696);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v50 + 104))(v49, enum case for MediaViewType.thirdPartyMedia(_:), v51);
  (*(v48 + 56))(v97, 1, 1, v99);
  sub_1000082B4(v46 + *(v47 + 28), v94, &unk_100AD4790);
  v52 = *(v46 + *(v47 + 40));
  if (v52)
  {
    sub_1000065A8(0, &qword_100AD4C70);

    v53 = UIColor.init(_:)();
    *&v54 = sub_100417798();
    v92 = v55;
    v95 = v54;

    v57 = v92;
    v56 = v95;
  }

  else
  {

    v56 = 0uLL;
    v57 = 0uLL;
  }

  v58 = *(v0 + 920);
  v59 = *(v0 + 904);
  *(v0 + 16) = v56;
  *(v0 + 32) = v57;
  *(v0 + 48) = v52 == 0;
  v60 = *(v58 + *(v59 + 44));
  if (v60 <= 1)
  {
    if (!*(v58 + *(v59 + 44)))
    {
      v63 = *(v0 + 680);
      v64 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
      (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
LABEL_22:
      sub_100021CEC(*(v0 + 680), *(v0 + 688), &qword_100AD6030);
      goto LABEL_23;
    }

    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:);
LABEL_21:
    v67 = *v62;
    v68 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v61, v67, v68);
    (*(v69 + 56))(v61, 0, 1, v68);
    goto LABEL_22;
  }

  if (v60 == 2)
  {
    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:);
    goto LABEL_21;
  }

  if (v60 == 3)
  {
    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:);
    goto LABEL_21;
  }

  v65 = *(v0 + 688);
  v66 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
LABEL_23:
  v70 = *(v0 + 736);
  v71 = *(v0 + 664);
  ThirdPartyMediaAssetMetadata.init(mediaType:song:albumName:artistName:mediaURL:appName:startTime:appBackgroundColor:colorVariant:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0E70);
  v72 = swift_allocObject();
  v73 = *(*v72 + 104);
  v74 = sub_1000F24EC(&qword_100AD50C0);
  (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
  *(v72 + *(*v72 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v70, v72 + *(*v72 + 120), &qword_100ADA870);
  *&v103[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = v72;

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v71 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v71 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v75 = *(v0 + 920);
  v76 = *(v0 + 888);
  v77 = *(v0 + 880);
  v78 = *(v0 + 872);
  v79 = *(v0 + 664);
  v80 = *(v0 + 656);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v77 + 8))(v76, v78);
  sub_1003A3E80(v75, type metadata accessor for Suggestion.GenericMedia);
  swift_beginAccess();
  v11 = v0 + 376;
  *(v0 + 376) = v79[1];
  v81 = v79[2];
  v82 = v79[3];
  v83 = v79[5];
  *(v0 + 424) = v79[4];
  *(v0 + 440) = v83;
  *(v0 + 392) = v81;
  *(v0 + 408) = v82;
  v84 = v79[5];
  v86 = v79[2];
  v85 = v79[3];
  v80[3] = v79[4];
  v80[4] = v84;
  v80[1] = v86;
  v80[2] = v85;
  *v80 = v79[1];
  v12 = v0 + 456;
LABEL_26:
  sub_1003A714C(v11, v12);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_10038749C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003875F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&unk_100AD4790);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA8F0);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[98] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[99] = v10;
  v6[100] = *(v10 - 8);
  v6[101] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0168);
  v11 = swift_task_alloc();
  v6[102] = v11;
  v12 = type metadata accessor for Suggestion.Contact(0);
  v6[103] = v12;
  v6[104] = *(v12 - 8);
  v6[105] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[106] = v13;
  *v13 = v6;
  v13[1] = sub_1003879C8;

  return sub_1003785E4(v11, 0, 0);
}

uint64_t sub_1003879C8()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_10038840C;
  }

  else
  {
    v2 = sub_100387ADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100387ADC()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  if ((*(*(v0 + 832) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0168);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 840);
    v14 = *(v0 + 800);
    v15 = *(v0 + 792);
    v16 = *(v0 + 784);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Contact);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 784), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into contact asset, content missing photo", v19, 2u);
      }

      v20 = *(v0 + 840);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Contact);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v73 = *(v0 + 792);
      v74 = *(v0 + 808);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v71 = *(v0 + 736);
      v72 = *(v0 + 800);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v69 = *(v0 + 704);
      v70 = *(v0 + 768);
      v35 = *(v0 + 696);
      v68 = *(v0 + 744);
      v77 = *(v0 + 688);
      v75 = *(v0 + 680);
      (*(v72 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.contact(_:), v31);
      (*(v32 + 104))(v68, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for ContactAsset());
      *&v36[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
      (*(v35 + 16))(v69, v34, v77);
      (*(v30 + 16))(v70, v29, v31);
      (*(v32 + 16))(v71, v68, v33);
      v37 = sub_100285908(v69, v70, v71);
      v38 = *(v35 + 8);
      v38(v34, v77);
      (*(v32 + 8))(v68, v33);
      (*(v30 + 8))(v29, v31);
      (*(v72 + 16))(v75, v74, v73);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v77);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v75, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v39 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v39 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v76 = *(v0 + 664);
      v46 = *(v0 + 648);
      v47 = *(v0 + 640);
      v48 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v49 = type metadata accessor for Date();
      v50 = *(*(v49 - 8) + 56);
      v50(v46, 1, 1, v49);
      v50(v47, 1, 1, v49);

      ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E60);
      v51 = swift_allocObject();
      v52 = *(*v51 + 104);
      v53 = sub_1000F24EC(&qword_100AD8440);
      (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
      *(v51 + *(*v51 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v76, v51 + *(*v51 + 120), &qword_100ADA8F0);
      *(v39 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v51;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v48 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v48 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v54 = *(v0 + 840);
      v55 = *(v0 + 808);
      v56 = *(v0 + 800);
      v57 = *(v0 + 792);
      v58 = *(v0 + 624);
      v59 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v56 + 8))(v55, v57);
      sub_1003A3E80(v54, type metadata accessor for Suggestion.Contact);
      swift_beginAccess();
      *(v0 + 336) = v58[1];
      v60 = v58[2];
      v61 = v58[3];
      v62 = v58[5];
      *(v0 + 384) = v58[4];
      *(v0 + 400) = v62;
      *(v0 + 352) = v60;
      *(v0 + 368) = v61;
      v63 = v58[5];
      v65 = v58[2];
      v64 = v58[3];
      v59[3] = v58[4];
      v59[4] = v63;
      v59[1] = v65;
      v59[2] = v64;
      *v59 = v58[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10038840C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100388534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[80] = a6;
  v6[79] = a5;
  v6[78] = a1;
  v6[81] = sub_1000F24EC(&qword_100AD38D0);
  v6[82] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED20);
  v6[83] = swift_task_alloc();
  v6[84] = sub_1000F24EC(&qword_100ADA928);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01B8);
  v10 = swift_task_alloc();
  v6[98] = v10;
  v11 = type metadata accessor for Suggestion.Location(0);
  v6[99] = v11;
  v6[100] = *(v11 - 8);
  v6[101] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[102] = v12;
  *v12 = v6;
  v12[1] = sub_100388878;

  return sub_100378CD8(v10, 0, 0);
}

uint64_t sub_100388878()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_100389740;
  }

  else
  {
    v2 = sub_10038898C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038898C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 784);
  if ((*(v1 + 48))(v2, 1, *(v0 + 792)) == 1)
  {
    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    sub_100004F84(v2, &qword_100AE01B8);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 808);
    v14 = *(v0 + 640);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Location);
    sub_1000F24EC(&qword_100AE0E50);
    v15 = *(v1 + 80);
    *(v0 + 856) = v15;
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject();
    *(v0 + 832) = v17;
    *(v17 + 16) = xmmword_100940080;
    sub_1003A6EF8(v13, v17 + v16, type metadata accessor for Suggestion.Location);
    v18 = sub_1000F24EC(&qword_100AD6600);
    v19 = swift_task_alloc();
    *(v0 + 840) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v14;
    v20 = sub_1000F24EC(&qword_100AE0E30);
    v21 = swift_task_alloc();
    *(v0 + 848) = v21;
    *v21 = v0;
    v21[1] = sub_100388CB8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 616, v18, v20, 0, 0, &unk_100952518, v19, v18);
  }
}

uint64_t sub_100388CB8()
{

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100388E34, 0, 0);
}

uint64_t sub_100388E34()
{
  v1 = *(v0 + 808);
  v71 = *(v0 + 616);
  v2 = v1[1];
  if (v2 && ((v2 & 0x2000000000000000) != 0 ? (v3 = HIBYTE(v2) & 0xF) : (v3 = *v1 & 0xFFFFFFFFFFFFLL), v3))
  {
    v4 = *(v0 + 776);
    v5 = *(v0 + 744);
    v59 = v5;
    v60 = *(v0 + 752);
    v63 = *(v0 + 736);
    v64 = *(v0 + 808);
    v6 = *(v0 + 728);
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);
    v61 = *(v0 + 704);
    v62 = *(v0 + 768);
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v66 = *(v0 + 656);
    v11 = *(v0 + 632);
    v69 = *(v0 + 624);
    v58 = *(v0 + 760);
    (*(v58 + 104))(v4, enum case for AssetType.multiPinMap(_:));
    (*(v6 + 104))(v5, enum case for AssetSource.suggestionSheet(_:), v7);
    UUID.init()();
    v12 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset());
    *&v12[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
    (*(v9 + 16))(v61, v8, v10);
    (*(v58 + 16))(v62, v4, v60);
    (*(v6 + 16))(v63, v5, v7);
    v13 = sub_100285908(v61, v62, v63);
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v59, v7);
    (*(v58 + 8))(v4, v60);
    MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD38D8);
    v14 = swift_allocObject();
    v15 = *(*v14 + 104);
    v16 = sub_1000F24EC(&unk_100AD5B30);
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v66, v14 + *(*v14 + 120), &qword_100AD38D0);
    *&v13[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v14;

    sub_1003A3E80(v64, type metadata accessor for Suggestion.Location);
    swift_beginAccess();
    v17 = *(v11 + 80);
    *(v11 + 80) = v13;

    swift_beginAccess();
    *(v0 + 336) = *(v11 + 16);
    v18 = *(v11 + 32);
    v19 = *(v11 + 48);
    v20 = *(v11 + 80);
    *(v0 + 384) = *(v11 + 64);
    *(v0 + 400) = v20;
    *(v0 + 352) = v18;
    *(v0 + 368) = v19;
    v21 = *(v11 + 80);
    v23 = *(v11 + 32);
    v22 = *(v11 + 48);
    v69[3] = *(v11 + 64);
    v69[4] = v21;
    v69[1] = v23;
    v69[2] = v22;
    *v69 = *(v11 + 16);
    v24 = v0 + 336;
    v25 = v0 + 416;
  }

  else
  {
    v26 = *(v0 + 776);
    v68 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 744);
    v65 = v28;
    v67 = *(v0 + 752);
    v70 = *(v0 + 736);
    v29 = *(v0 + 728);
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    v32 = *(v0 + 704);
    v33 = *(v0 + 696);
    v34 = *(v0 + 688);
    (*(v27 + 104))(v26, enum case for AssetType.genericMap(_:));
    (*(v29 + 104))(v28, enum case for AssetSource.suggestionSheet(_:), v30);
    UUID.init()();
    v35 = objc_allocWithZone(type metadata accessor for GenericMapAsset());
    *&v35[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = 0;
    (*(v33 + 16))(v32, v31, v34);
    (*(v27 + 16))(v68, v26, v67);
    (*(v29 + 16))(v70, v28, v30);
    v36 = sub_100285908(v32, v68, v70);
    (*(v33 + 8))(v31, v34);
    (*(v29 + 8))(v65, v30);
    (*(v27 + 8))(v26, v67);
    v37 = *(v0 + 664);
    if (*(v71 + 16))
    {
      v38 = type metadata accessor for VisitAssetMetadata();
      v39 = *(v38 - 8);
      (*(v39 + 16))(v37, v71 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38);

      (*(v39 + 56))(v37, 0, 1, v38);
    }

    else
    {

      v40 = type metadata accessor for VisitAssetMetadata();
      (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    }

    v41 = *(v0 + 680);
    v42 = *(v0 + 632);
    GenericMapAssetMetadata.init(visitsData:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100ADF500);
    v43 = swift_allocObject();
    v44 = *(*v43 + 104);
    v45 = sub_1000F24EC(&qword_100ADA938);
    (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
    *(v43 + *(*v43 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v41, v43 + *(*v43 + 120), &qword_100ADA928);
    *&v36[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = v43;

    swift_beginAccess();
    v46 = v36;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v42 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v47 = *(v0 + 808);
    v48 = *(v0 + 632);
    v49 = *(v0 + 624);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    sub_1003A3E80(v47, type metadata accessor for Suggestion.Location);
    swift_beginAccess();
    *(v0 + 176) = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v52 = v48[5];
    *(v0 + 224) = v48[4];
    *(v0 + 240) = v52;
    *(v0 + 192) = v50;
    *(v0 + 208) = v51;
    v53 = v48[5];
    v55 = v48[2];
    v54 = v48[3];
    v49[3] = v48[4];
    v49[4] = v53;
    v49[1] = v55;
    v49[2] = v54;
    *v49 = v48[1];
    v24 = v0 + 176;
    v25 = v0 + 256;
  }

  sub_1003A714C(v24, v25);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100389740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100389840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[53] = a5;
  v6[54] = a6;
  v6[52] = a1;
  v6[55] = sub_1000F24EC(&qword_100AD38D0);
  v6[56] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[61] = v8;
  v6[62] = *(v8 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[65] = v9;
  v6[66] = *(v9 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[69] = v10;
  *v10 = v6;
  v10[1] = sub_100389A6C;

  return sub_1003793CC(0, 0);
}

uint64_t sub_100389A6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100389C0C, 0, 0);
  }
}

uint64_t sub_100389C0C()
{
  v1 = *(v0 + 560);
  if (v1)
  {
    v2 = *(v0 + 432);
    v3 = sub_1000F24EC(&qword_100AD6600);
    v4 = swift_task_alloc();
    *(v0 + 568) = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = sub_1000F24EC(&qword_100AE0E30);
    v6 = swift_task_alloc();
    *(v0 + 576) = v6;
    *v6 = v0;
    v6[1] = sub_100389E10;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 408, v3, v5, 0, 0, &unk_1009524B8, v4, v3);
  }

  else
  {
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    swift_beginAccess();
    *(v0 + 16) = v8[1];
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[5];
    *(v0 + 64) = v8[4];
    *(v0 + 80) = v11;
    *(v0 + 32) = v9;
    *(v0 + 48) = v10;
    v12 = v8[5];
    v14 = v8[2];
    v13 = v8[3];
    v7[3] = v8[4];
    v7[4] = v12;
    v7[1] = v14;
    v7[2] = v13;
    *v7 = v8[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100389E10()
{

  return _swift_task_switch(sub_100389F44, 0, 0);
}

uint64_t sub_100389F44()
{
  v1 = *(v0 + 544);
  v26 = *(v0 + 536);
  v30 = *(v0 + 528);
  v2 = *(v0 + 512);
  v24 = v2;
  v25 = *(v0 + 520);
  v27 = *(v0 + 504);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v28 = *(v0 + 448);
  v9 = *(v0 + 424);
  v29 = *(v0 + 416);
  (*(v30 + 104))(v1, enum case for AssetType.multiPinMap(_:));
  (*(v3 + 104))(v2, enum case for AssetSource.suggestionSheet(_:), v4);
  UUID.init()();
  v10 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset());
  *&v10[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
  (*(v7 + 16))(v5, v6, v8);
  (*(v30 + 16))(v26, v1, v25);
  (*(v3 + 16))(v27, v2, v4);
  v11 = sub_100285908(v5, v26, v27);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v24, v4);
  (*(v30 + 8))(v1, v25);
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8);
  v12 = swift_allocObject();
  v13 = *(*v12 + 104);
  v14 = sub_1000F24EC(&unk_100AD5B30);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + *(*v12 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v28, v12 + *(*v12 + 120), &qword_100AD38D0);
  *&v11[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v12;

  swift_beginAccess();
  v15 = *(v9 + 80);
  *(v9 + 80) = v11;

  swift_beginAccess();
  *(v0 + 176) = *(v9 + 16);
  v16 = *(v9 + 32);
  v17 = *(v9 + 48);
  v18 = *(v9 + 80);
  *(v0 + 224) = *(v9 + 64);
  *(v0 + 240) = v18;
  *(v0 + 192) = v16;
  *(v0 + 208) = v17;
  v19 = *(v9 + 80);
  v21 = *(v9 + 32);
  v20 = *(v9 + 48);
  v29[3] = *(v9 + 64);
  v29[4] = v19;
  v29[1] = v21;
  v29[2] = v20;
  *v29 = *(v9 + 16);
  sub_1003A714C(v0 + 176, v0 + 256);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10038A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[71] = a6;
  v6[70] = a5;
  v6[69] = a4;
  v6[68] = a1;
  type metadata accessor for Suggestion.ItemContent(0);
  v6[72] = swift_task_alloc();
  v6[73] = sub_1000F24EC(&qword_100ADA888);
  v6[74] = swift_task_alloc();
  v6[75] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[76] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[77] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[78] = v7;
  v6[79] = *(v7 - 8);
  v6[80] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AE0DF0);
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AE0DF8);
  v6[84] = v9;
  v6[85] = *(v9 - 8);
  v6[86] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE0E00);
  v6[87] = v10;
  v6[88] = *(v10 - 8);
  v6[89] = swift_task_alloc();
  v11 = sub_1000F24EC(&qword_100AE0E08);
  v6[90] = v11;
  v6[91] = *(v11 - 8);
  v6[92] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D38);
  v6[93] = swift_task_alloc();
  v12 = sub_1000F24EC(&qword_100AD8D40);
  v6[94] = v12;
  v6[95] = *(v12 - 8);
  v6[96] = swift_task_alloc();
  v13 = sub_1000F24EC(&qword_100AD8D48);
  v6[97] = v13;
  v6[98] = *(v13 - 8);
  v6[99] = swift_task_alloc();
  v14 = sub_1000F24EC(&qword_100AD8D50);
  v6[100] = v14;
  v6[101] = *(v14 - 8);
  v6[102] = swift_task_alloc();
  v15 = sub_1000F24EC(&qword_100AD8D58);
  v6[103] = v15;
  v6[104] = *(v15 - 8);
  v6[105] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750);
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  v6[114] = swift_task_alloc();
  v6[115] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0260);
  v6[116] = swift_task_alloc();
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = sub_1000F24EC(&qword_100ADA8A0);
  v6[135] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v6[136] = v16;
  v6[137] = *(v16 - 8);
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v17 = type metadata accessor for AssetSource();
  v6[140] = v17;
  v6[141] = *(v17 - 8);
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v18 = type metadata accessor for AssetType();
  v6[144] = v18;
  v6[145] = *(v18 - 8);
  v6[146] = swift_task_alloc();
  v6[147] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0248);
  v19 = swift_task_alloc();
  v6[148] = v19;
  v20 = type metadata accessor for Suggestion.Workout(0);
  v6[149] = v20;
  v6[150] = *(v20 - 8);
  v6[151] = swift_task_alloc();
  v21 = swift_task_alloc();
  v6[152] = v21;
  *v21 = v6;
  v21[1] = sub_10038AC7C;

  return sub_1003798F4(v19, 0, 0);
}

uint64_t sub_10038AC7C()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v2 = sub_10038D598;
  }

  else
  {
    v2 = sub_10038AD90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038AD90()
{
  v309 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  if ((*(*(v0 + 1200) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    sub_100004F84(v2, &qword_100AE0248);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
    goto LABEL_105;
  }

  v13 = *(v0 + 1208);
  sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Workout);
  if (*(v13 + *(v1 + 24)))
  {
    v14 = *(v0 + 1176);
    v15 = *(v0 + 1144);
    v290 = *(v0 + 1152);
    v300 = *(v0 + 1136);
    v303 = *(v0 + 1208);
    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);
    v18 = *(v0 + 1112);
    v293 = *(v0 + 1104);
    v295 = *(v0 + 1168);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1088);
    v297 = *(v0 + 1064);
    v287 = *(v0 + 1160);
    (*(v287 + 104))(v14, enum case for AssetType.workoutRoute(_:));
    (*(v16 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v17);

    UUID.init()();
    v21 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset());
    *&v21[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = 0;
    (*(v19 + 16))(v293, v18, v20);
    (*(v287 + 16))(v295, v14, v290);
    (*(v16 + 16))(v300, v15, v17);
    v301 = sub_100285908(v293, v295, v300);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    (*(v287 + 8))(v14, v290);
    sub_1000082B4(v303, v297, &qword_100AE0260);
    v22 = type metadata accessor for Suggestion.Workout.Details(0);
    v23 = *(*(v22 - 8) + 48);
    v24 = v23(v297, 1, v22);
    v25 = *(v0 + 1064);
    if (v24 == 1)
    {
      sub_100004F84(*(v0 + 1064), &qword_100AE0260);
    }

    else
    {

      sub_1003A3E80(v25, type metadata accessor for Suggestion.Workout.Details);
    }

    v26 = *(v0 + 1056);
    sub_1000082B4(*(v0 + 1208), v26, &qword_100AE0260);
    v27 = v23(v26, 1, v22);
    v28 = *(v0 + 1056);
    if (v27 == 1)
    {
      v29 = &qword_100AE0260;
      v30 = *(v0 + 1056);
    }

    else
    {
      v31 = *(v0 + 920);
      sub_1000082B4(v28 + *(v22 + 32), v31, &qword_100AD3750);
      sub_1003A3E80(v28, type metadata accessor for Suggestion.Workout.Details);
      v32 = type metadata accessor for DateInterval();
      v33 = *(v32 - 8);
      v34 = (*(v33 + 48))(v31, 1, v32);
      v35 = *(v0 + 920);
      if (v34 != 1)
      {
        DateInterval.duration.getter();
        (*(v33 + 8))(v35, v32);
LABEL_13:
        v36 = *(v0 + 1048);
        sub_1000082B4(*(v0 + 1208), v36, &qword_100AE0260);
        v37 = v23(v36, 1, v22);
        v38 = *(v0 + 1048);
        if (v37 == 1)
        {
          v39 = &qword_100AE0260;
          v40 = *(v0 + 1048);
        }

        else
        {
          v41 = *(v0 + 912);
          sub_1000082B4(v38 + *(v22 + 32), v41, &qword_100AD3750);
          sub_1003A3E80(v38, type metadata accessor for Suggestion.Workout.Details);
          v42 = type metadata accessor for DateInterval();
          v43 = *(v42 - 8);
          v44 = (*(v43 + 48))(v41, 1, v42);
          v45 = *(v0 + 912);
          if (v44 != 1)
          {
            DateInterval.start.getter();
            (*(v43 + 8))(v45, v42);
            v46 = 0;
LABEL_19:
            v47 = *(v0 + 1208);
            v48 = *(v0 + 1040);
            v49 = *(v0 + 872);
            v50 = type metadata accessor for Date();
            v51 = *(*(v50 - 8) + 56);
            v51(v49, v46, 1, v50);
            sub_1000082B4(v47, v48, &qword_100AE0260);
            v52 = v23(v48, 1, v22);
            v53 = *(v0 + 1040);
            if (v52 == 1)
            {
              v54 = &qword_100AE0260;
              v55 = *(v0 + 1040);
            }

            else
            {
              v56 = *(v0 + 904);
              sub_1000082B4(v53 + *(v22 + 32), v56, &qword_100AD3750);
              sub_1003A3E80(v53, type metadata accessor for Suggestion.Workout.Details);
              v57 = type metadata accessor for DateInterval();
              v58 = *(v57 - 8);
              v59 = (*(v58 + 48))(v56, 1, v57);
              v60 = *(v0 + 904);
              if (v59 != 1)
              {
                DateInterval.end.getter();
                (*(v58 + 8))(v60, v57);
                v61 = 0;
LABEL_25:
                v62 = *(v0 + 1208);
                v63 = *(v0 + 1032);
                v51(*(v0 + 864), v61, 1, v50);
                sub_1000082B4(v62, v63, &qword_100AE0260);
                v64 = v23;
                v65 = v23(v63, 1, v22);
                v66 = *(v0 + 1032);
                if (v65 == 1)
                {
                  sub_100004F84(*(v0 + 1032), &qword_100AE0260);
                }

                else
                {
                  v67 = *(v66 + 24);
                  v68 = v67;
                  sub_1003A3E80(v66, type metadata accessor for Suggestion.Workout.Details);
                  if (v67)
                  {
                    v69 = objc_opt_self();
                    v70 = [v69 countUnit];
                    v71 = [v69 minuteUnit];
                    v72 = [v70 unitDividedByUnit:v71];

                    [v68 doubleValueForUnit:v72];
                  }
                }

                v73 = *(v0 + 1024);
                sub_1000082B4(*(v0 + 1208), v73, &qword_100AE0260);
                v74 = v23(v73, 1, v22);
                v75 = *(v0 + 1024);
                if (v74 == 1)
                {
                  sub_100004F84(*(v0 + 1024), &qword_100AE0260);
                }

                else
                {
                  v76 = *(v75 + 8);
                  v77 = v76;
                  sub_1003A3E80(v75, type metadata accessor for Suggestion.Workout.Details);
                  if (v76)
                  {
                    v78 = [objc_opt_self() kilocalorieUnit];
                    [v77 doubleValueForUnit:v78];
                  }
                }

                v79 = *(v0 + 1016);
                sub_1000082B4(*(v0 + 1208), v79, &qword_100AE0260);
                v80 = v23(v79, 1, v22);
                v81 = *(v0 + 1016);
                if (v80 == 1)
                {
                  sub_100004F84(*(v0 + 1016), &qword_100AE0260);
                }

                else
                {
                  v82 = *(v81 + 8);
                  v83 = v82;
                  sub_1003A3E80(v81, type metadata accessor for Suggestion.Workout.Details);
                  if (v82)
                  {
                    v285 = *(v0 + 832);
                    v84 = *(v0 + 816);
                    v274 = *(v0 + 824);
                    v278 = *(v0 + 808);
                    v266 = *(v0 + 840);
                    v270 = *(v0 + 800);
                    v85 = *(v0 + 792);
                    v86 = *(v0 + 784);
                    v87 = *(v0 + 768);
                    v88 = *(v0 + 760);
                    v262 = *(v0 + 752);
                    v263 = *(v0 + 776);
                    v89 = *(v0 + 744);
                    sub_10038D8C8();

                    sub_1000065A8(0, &qword_100AD8D60);
                    static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
                    static MeasurementFormatUnitUsage<>.workout.getter();
                    v90 = sub_1000F24EC(&qword_100AD8D68);
                    (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
                    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
                    sub_100004F84(v89, &qword_100AD8D38);
                    (*(v88 + 8))(v87, v262);
                    v64 = v23;
                    (*(v86 + 8))(v85, v263);
                    sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50);
                    Measurement<>.formatted<A>(_:)();
                    (*(v278 + 8))(v84, v270);
                    (*(v285 + 8))(v266, v274);
                  }
                }

                v91 = *(v0 + 1008);
                sub_1000082B4(*(v0 + 1208), v91, &qword_100AE0260);
                v92 = v64(v91, 1, v22);
                v93 = *(v0 + 1008);
                if (v92 == 1)
                {
                  sub_100004F84(*(v0 + 1008), &qword_100AE0260);
                }

                else
                {
                  v94 = *(v93 + *(v22 + 36) + 8);

                  sub_1003A3E80(v93, type metadata accessor for Suggestion.Workout.Details);
                  if (v94)
                  {
                    goto LABEL_45;
                  }
                }

                v95 = *(v0 + 1000);
                sub_1000082B4(*(v0 + 1208), v95, &qword_100AE0260);
                v96 = v64(v95, 1, v22);
                v97 = *(v0 + 1000);
                if (v96 == 1)
                {
                  sub_100004F84(*(v0 + 1000), &qword_100AE0260);
LABEL_44:

                  goto LABEL_45;
                }

                v98 = *(v97 + 16);
                v99 = v98;
                sub_1003A3E80(v97, type metadata accessor for Suggestion.Workout.Details);
                if (!v98)
                {
                  goto LABEL_44;
                }

                v100 = *(v0 + 744);
                v304 = *(v0 + 728);
                v279 = *(v0 + 720);
                v101 = *(v0 + 712);
                v102 = *(v0 + 704);
                v271 = *(v0 + 736);
                v275 = *(v0 + 696);
                v103 = *(v0 + 688);
                v104 = *(v0 + 680);
                v105 = *(v0 + 664);
                v106 = *(v0 + 656);
                v264 = *(v0 + 648);
                v267 = *(v0 + 672);
                sub_10038DBA0();

                sub_1000065A8(0, &qword_100AE0E10);
                static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
                static MeasurementFormatUnitUsage<>.road.getter();
                v107 = sub_1000F24EC(&qword_100AD8D68);
                (*(*(v107 - 8) + 56))(v100, 1, 1, v107);
                static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
                sub_100004F84(v100, &qword_100AD8D38);
                (*(v106 + 8))(v105, v264);
                (*(v104 + 8))(v103, v267);
                sub_1003A9580(&qword_100AE0E18, &qword_100AE0E00);
                Measurement<>.formatted<A>(_:)();
                (*(v102 + 8))(v101, v275);
                (*(v304 + 8))(v271, v279);

LABEL_45:
                v108 = *(v0 + 1080);
                v109 = *(v0 + 560);
                WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&qword_100AE0E20);
                v110 = swift_allocObject();
                v111 = *(*v110 + 104);
                v112 = sub_1000F24EC(&qword_100AD5B28);
                (*(*(v112 - 8) + 56))(v110 + v111, 1, 1, v112);
                *(v110 + *(*v110 + 112)) = xmmword_100941EE0;
                sub_100021CEC(v108, v110 + *(*v110 + 120), &qword_100ADA8A0);
                *&v301[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v110;

                swift_beginAccess();
                v113 = v301;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*(v109 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v109 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                swift_endAccess();

                goto LABEL_48;
              }

              v54 = &qword_100AD3750;
              v55 = *(v0 + 904);
            }

            sub_100004F84(v55, v54);
            v61 = 1;
            goto LABEL_25;
          }

          v39 = &qword_100AD3750;
          v40 = *(v0 + 912);
        }

        sub_100004F84(v40, v39);
        v46 = 1;
        goto LABEL_19;
      }

      v29 = &qword_100AD3750;
      v30 = *(v0 + 920);
    }

    sub_100004F84(v30, v29);
    goto LABEL_13;
  }

LABEL_48:
  v114 = *(v0 + 632);
  v115 = *(v0 + 624);
  v116 = *(v0 + 616);
  sub_1000082B4(*(v0 + 1208) + *(*(v0 + 1192) + 20), v116, &unk_100AD6DD0);
  if ((*(v114 + 48))(v116, 1, v115) == 1)
  {
    sub_100004F84(*(v0 + 616), &unk_100AD6DD0);
    goto LABEL_96;
  }

  v121 = *(v0 + 1176);
  v122 = *(v0 + 1160);
  v123 = *(v0 + 1152);
  v289 = *(v0 + 1168);
  v291 = *(v0 + 1136);
  v124 = *(v0 + 1128);
  v125 = *(v0 + 1120);
  v126 = *(v0 + 1112);
  v288 = *(v0 + 1104);
  v127 = *(v0 + 1096);
  v280 = *(v0 + 1144);
  v294 = *(v0 + 632);
  v296 = *(v0 + 624);
  v298 = *(v0 + 640);
  v299 = *(v0 + 608);
  v305 = *(v0 + 1088);
  (*(v294 + 32))(v298, *(v0 + 616), v296, v117, v118, v119, v120);
  (*(v122 + 104))(v121, enum case for AssetType.workoutIcon(_:), v123);
  (*(v124 + 104))(v280, enum case for AssetSource.suggestionSheet(_:), v125);
  UUID.init()();
  v128 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset());
  *&v128[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
  (*(v127 + 16))(v288, v126, v305);
  (*(v122 + 16))(v289, v121, v123);
  (*(v124 + 16))(v291, v280, v125);
  v129 = sub_100285908(v288, v289, v291);
  v292 = *(v127 + 8);
  v292(v126, v305);
  (*(v124 + 8))(v280, v125);
  (*(v122 + 8))(v121, v123);
  (*(v294 + 16))(v299, v298, v296);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v130 = v129;
  UUID.init()();
  v131 = UUID.uuidString.getter();
  v133 = v132;
  v292(v126, v305);
  type metadata accessor for AssetAttachment(0);
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  sub_1003A6F60(v299, v134 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v135 = (v134 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v135 = v131;
  v135[1] = v133;
  v136 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v130[v136] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v130[v136] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v137 = *(v0 + 1208);
  v138 = *(v0 + 992);
  v302 = v130;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1000082B4(v137, v138, &qword_100AE0260);
  v139 = type metadata accessor for Suggestion.Workout.Details(0);
  v140 = (*(v139 - 8) + 48);
  v141 = v138;
  v142 = *v140;
  v143 = (*v140)(v141, 1, v139);
  v144 = *(v0 + 992);
  if (v143 == 1)
  {
    sub_100004F84(*(v0 + 992), &qword_100AE0260);
  }

  else
  {

    sub_1003A3E80(v144, type metadata accessor for Suggestion.Workout.Details);
  }

  v145 = *(v0 + 984);
  sub_1000082B4(*(v0 + 1208), v145, &qword_100AE0260);
  v146 = v142(v145, 1, v139);
  v147 = *(v0 + 984);
  if (v146 == 1)
  {
    v148 = &qword_100AE0260;
    v149 = *(v0 + 984);
LABEL_59:
    sub_100004F84(v149, v148);
    goto LABEL_61;
  }

  v150 = *(v0 + 896);
  sub_1000082B4(v147 + *(v139 + 32), v150, &qword_100AD3750);
  sub_1003A3E80(v147, type metadata accessor for Suggestion.Workout.Details);
  v151 = type metadata accessor for DateInterval();
  v152 = *(v151 - 8);
  v153 = (*(v152 + 48))(v150, 1, v151);
  v154 = *(v0 + 896);
  if (v153 == 1)
  {
    v148 = &qword_100AD3750;
    v149 = *(v0 + 896);
    goto LABEL_59;
  }

  DateInterval.duration.getter();
  (*(v152 + 8))(v154, v151);
LABEL_61:
  v155 = *(v0 + 976);
  sub_1000082B4(*(v0 + 1208), v155, &qword_100AE0260);
  v156 = v142(v155, 1, v139);
  v157 = *(v0 + 976);
  v306 = v142;
  if (v156 == 1)
  {
    v158 = &qword_100AE0260;
    v159 = *(v0 + 976);
LABEL_65:
    sub_100004F84(v159, v158);
    v165 = 1;
    goto LABEL_67;
  }

  v160 = *(v0 + 888);
  sub_1000082B4(v157 + *(v139 + 32), v160, &qword_100AD3750);
  sub_1003A3E80(v157, type metadata accessor for Suggestion.Workout.Details);
  v161 = type metadata accessor for DateInterval();
  v162 = *(v161 - 8);
  v163 = (*(v162 + 48))(v160, 1, v161);
  v164 = *(v0 + 888);
  if (v163 == 1)
  {
    v158 = &qword_100AD3750;
    v159 = *(v0 + 888);
    goto LABEL_65;
  }

  DateInterval.start.getter();
  (*(v162 + 8))(v164, v161);
  v165 = 0;
LABEL_67:
  v166 = *(v0 + 1208);
  v167 = *(v0 + 968);
  v168 = *(v0 + 856);
  v169 = type metadata accessor for Date();
  v170 = *(*(v169 - 8) + 56);
  v170(v168, v165, 1, v169);
  sub_1000082B4(v166, v167, &qword_100AE0260);
  v171 = v306;
  v172 = v306(v167, 1, v139);
  v173 = *(v0 + 968);
  if (v172 == 1)
  {
    v174 = &qword_100AE0260;
    v175 = *(v0 + 968);
LABEL_71:
    sub_100004F84(v175, v174);
    v181 = 1;
    goto LABEL_73;
  }

  v176 = *(v0 + 880);
  sub_1000082B4(v173 + *(v139 + 32), v176, &qword_100AD3750);
  sub_1003A3E80(v173, type metadata accessor for Suggestion.Workout.Details);
  v177 = type metadata accessor for DateInterval();
  v178 = *(v177 - 8);
  v179 = (*(v178 + 48))(v176, 1, v177);
  v180 = *(v0 + 880);
  if (v179 == 1)
  {
    v174 = &qword_100AD3750;
    v175 = *(v0 + 880);
    goto LABEL_71;
  }

  DateInterval.end.getter();
  (*(v178 + 8))(v180, v177);
  v181 = 0;
LABEL_73:
  v182 = *(v0 + 1208);
  v183 = *(v0 + 960);
  v170(*(v0 + 848), v181, 1, v169);
  sub_1000082B4(v182, v183, &qword_100AE0260);
  v184 = v306(v183, 1, v139);
  v185 = *(v0 + 960);
  if (v184 == 1)
  {
    sub_100004F84(*(v0 + 960), &qword_100AE0260);
  }

  else
  {
    v186 = *(v185 + 24);
    v187 = v186;
    sub_1003A3E80(v185, type metadata accessor for Suggestion.Workout.Details);
    if (v186)
    {
      v188 = objc_opt_self();
      v189 = [v188 countUnit];
      v190 = [v188 minuteUnit];
      v191 = [v189 unitDividedByUnit:v190];

      [v187 doubleValueForUnit:v191];
      v171 = v306;
    }
  }

  v192 = *(v0 + 952);
  sub_1000082B4(*(v0 + 1208), v192, &qword_100AE0260);
  v193 = v171(v192, 1, v139);
  v194 = *(v0 + 952);
  if (v193 == 1)
  {
    sub_100004F84(*(v0 + 952), &qword_100AE0260);
  }

  else
  {
    v195 = *(v194 + 8);
    v196 = v195;
    sub_1003A3E80(v194, type metadata accessor for Suggestion.Workout.Details);
    if (v195)
    {
      v197 = [objc_opt_self() kilocalorieUnit];
      [v196 doubleValueForUnit:v197];
    }
  }

  v198 = *(v0 + 944);
  sub_1000082B4(*(v0 + 1208), v198, &qword_100AE0260);
  v199 = v171(v198, 1, v139);
  v200 = *(v0 + 944);
  if (v199 == 1)
  {
    sub_100004F84(*(v0 + 944), &qword_100AE0260);
  }

  else
  {
    v201 = *(v200 + 8);
    v202 = v201;
    sub_1003A3E80(v200, type metadata accessor for Suggestion.Workout.Details);
    if (v201)
    {
      v286 = *(v0 + 832);
      v203 = *(v0 + 816);
      v281 = *(v0 + 824);
      v283 = *(v0 + 808);
      v272 = *(v0 + 840);
      v276 = *(v0 + 800);
      v204 = *(v0 + 792);
      v205 = *(v0 + 784);
      v206 = *(v0 + 768);
      v207 = *(v0 + 760);
      v265 = *(v0 + 752);
      v268 = *(v0 + 776);
      v208 = *(v0 + 744);
      sub_10038D8C8();

      sub_1000065A8(0, &qword_100AD8D60);
      static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
      static MeasurementFormatUnitUsage<>.workout.getter();
      v209 = sub_1000F24EC(&qword_100AD8D68);
      (*(*(v209 - 8) + 56))(v208, 1, 1, v209);
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v208, &qword_100AD8D38);
      (*(v207 + 8))(v206, v265);
      v171 = v306;
      (*(v205 + 8))(v204, v268);
      sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50);
      Measurement<>.formatted<A>(_:)();
      (*(v283 + 8))(v203, v276);
      (*(v286 + 8))(v272, v281);
    }
  }

  v210 = *(v0 + 936);
  sub_1000082B4(*(v0 + 1208), v210, &qword_100AE0260);
  v211 = v171(v210, 1, v139);
  v212 = *(v0 + 936);
  if (v211 == 1)
  {
    sub_100004F84(*(v0 + 936), &qword_100AE0260);
  }

  else
  {
    v213 = *(v212 + *(v139 + 36) + 8);

    sub_1003A3E80(v212, type metadata accessor for Suggestion.Workout.Details);
    if (v213)
    {
      goto LABEL_93;
    }
  }

  v214 = *(v0 + 928);
  sub_1000082B4(*(v0 + 1208), v214, &qword_100AE0260);
  v215 = v171(v214, 1, v139);
  v216 = *(v0 + 928);
  if (v215 == 1)
  {
    sub_100004F84(*(v0 + 928), &qword_100AE0260);
LABEL_92:

    goto LABEL_93;
  }

  v217 = *(v216 + 16);
  v218 = v217;
  sub_1003A3E80(v216, type metadata accessor for Suggestion.Workout.Details);
  if (!v217)
  {
    goto LABEL_92;
  }

  v219 = *(v0 + 744);
  v307 = *(v0 + 728);
  v284 = *(v0 + 720);
  v220 = *(v0 + 712);
  v221 = *(v0 + 704);
  v277 = *(v0 + 736);
  v282 = *(v0 + 696);
  v222 = *(v0 + 688);
  v223 = *(v0 + 680);
  v224 = *(v0 + 664);
  v225 = *(v0 + 656);
  v269 = *(v0 + 648);
  v273 = *(v0 + 672);
  sub_10038DBA0();

  sub_1000065A8(0, &qword_100AE0E10);
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  static MeasurementFormatUnitUsage<>.road.getter();
  v226 = sub_1000F24EC(&qword_100AD8D68);
  (*(*(v226 - 8) + 56))(v219, 1, 1, v226);
  static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
  sub_100004F84(v219, &qword_100AD8D38);
  (*(v225 + 8))(v224, v269);
  (*(v223 + 8))(v222, v273);
  sub_1003A9580(&qword_100AE0E18, &qword_100AE0E00);
  Measurement<>.formatted<A>(_:)();
  (*(v221 + 8))(v220, v282);
  (*(v307 + 8))(v277, v284);

LABEL_93:
  v227 = *(v0 + 592);
  v228 = *(v0 + 560);
  WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DD0);
  v229 = swift_allocObject();
  v230 = *(*v229 + 104);
  v231 = sub_1000F24EC(&qword_100AE4280);
  (*(*(v231 - 8) + 56))(v229 + v230, 1, 1, v231);
  *(v229 + *(*v229 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v227, v229 + *(*v229 + 120), &qword_100ADA888);
  *&v302[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = v229;

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v228 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v228 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v232 = *(v0 + 640);
  v233 = *(v0 + 632);
  v234 = *(v0 + 624);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v233 + 8))(v232, v234);
LABEL_96:
  v235 = *(v0 + 560);
  swift_beginAccess();
  v236 = *(v235 + 48);
  if (v236 >> 62)
  {
    v237 = _CocoaArrayWrapper.endIndex.getter();
    if (v237)
    {
      goto LABEL_98;
    }

LABEL_100:
    v239 = *(v0 + 576);
    v240 = *(v0 + 552);
    type metadata accessor for SuggestionImportSession(v237);
    sub_1003A6EF8(v240, v239, type metadata accessor for Suggestion.ItemContent);
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.error.getter();
    v243 = os_log_type_enabled(v241, v242);
    v244 = *(v0 + 1208);
    v245 = *(v0 + 576);
    if (v243)
    {
      v246 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      v308 = v247;
      *v246 = 136315138;
      sub_10008D160(&qword_100AE19B0, &type metadata accessor for UUID);
      v248 = dispatch thunk of CustomStringConvertible.description.getter();
      v250 = v249;
      sub_1003A3E80(v245, type metadata accessor for Suggestion.ItemContent);
      v251 = sub_100008458(v248, v250, &v308);

      *(v246 + 4) = v251;
      _os_log_impl(&_mh_execute_header, v241, v242, "Failed to parse framework asset into workout route asset, content missing route and icon - %s", v246, 0xCu);
      sub_10000BA7C(v247);
    }

    else
    {

      sub_1003A3E80(v245, type metadata accessor for Suggestion.ItemContent);
    }

    v238 = v244;
    goto LABEL_104;
  }

  v237 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v237)
  {
    goto LABEL_100;
  }

LABEL_98:
  v238 = *(v0 + 1208);
LABEL_104:
  sub_1003A3E80(v238, type metadata accessor for Suggestion.Workout);
  v252 = *(v0 + 560);
  v253 = *(v0 + 544);
  swift_beginAccess();
  *(v0 + 176) = v252[1];
  v254 = v252[2];
  v255 = v252[3];
  v256 = v252[5];
  *(v0 + 224) = v252[4];
  *(v0 + 240) = v256;
  *(v0 + 192) = v254;
  *(v0 + 208) = v255;
  v257 = v252[5];
  v259 = v252[2];
  v258 = v252[3];
  v253[3] = v252[4];
  v253[4] = v257;
  v253[1] = v259;
  v253[2] = v258;
  *v253 = v252[1];
  v11 = v0 + 176;
  v12 = v0 + 256;
LABEL_105:
  sub_1003A714C(v11, v12);

  v260 = *(v0 + 8);

  return v260();
}

uint64_t sub_10038D598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038D8C8()
{
  v1 = v0;
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 jouleUnitWithMetricPrefix:9];
  sub_1000065A8(0, &qword_100AE0DD8);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    [v1 _value];
    v7 = &selRef_kilojoules;
    goto LABEL_9;
  }

  v8 = v4;
  v9 = [v3 jouleUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    [v1 _value];
    v7 = &selRef_joules;
    goto LABEL_9;
  }

  v11 = v8;
  v12 = [v3 kilocalorieUnit];
  v13 = static NSObject.== infix(_:_:)();

  if (v13 & 1) != 0 || (v14 = v11, v15 = [v3 largeCalorieUnit], v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16))
  {

    [v1 _value];
LABEL_8:
    v7 = &selRef_kilocalories;
    goto LABEL_9;
  }

  v19 = [v3 smallCalorieUnit];
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    v21 = [v3 kilocalorieUnit];
    [v1 doubleValueForUnit:v21];

    goto LABEL_8;
  }

  [v1 _value];
  v7 = &selRef_calories;
LABEL_9:
  v17 = [objc_opt_self() *v7];
  sub_1000065A8(0, &qword_100AD8D60);

  return Measurement.init(value:unit:)();
}

uint64_t sub_10038DBA0()
{
  v1 = v0;
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 meterUnitWithMetricPrefix:9];
  sub_1000065A8(0, &qword_100AE0DD8);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    [v1 _value];
    v7 = &selRef_kilometers;
    goto LABEL_18;
  }

  v8 = v4;
  v9 = [v3 meterUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    [v1 _value];
LABEL_5:
    v7 = &selRef_meters;
    goto LABEL_18;
  }

  v11 = v8;
  v12 = [v3 meterUnitWithMetricPrefix:5];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {

    [v1 _value];
    v7 = &selRef_centimeters;
  }

  else
  {
    v14 = v11;
    v15 = [v3 meterUnitWithMetricPrefix:4];
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {

      [v1 _value];
      v7 = &selRef_millimeters;
    }

    else
    {
      v17 = v14;
      v18 = [v3 inchUnit];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        [v1 _value];
        v7 = &selRef_inches;
      }

      else
      {
        v20 = v17;
        v21 = [v3 footUnit];
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

          [v1 _value];
          v7 = &selRef_feet;
        }

        else
        {
          v23 = v20;
          v24 = [v3 mileUnit];
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {

            [v1 _value];
            v7 = &selRef_miles;
          }

          else
          {
            v26 = [v3 yardUnit];
            v27 = static NSObject.== infix(_:_:)();

            if ((v27 & 1) == 0)
            {
              v30 = [v3 meterUnit];
              [v1 doubleValueForUnit:v30];

              goto LABEL_5;
            }

            [v1 _value];
            v7 = &selRef_yards;
          }
        }
      }
    }
  }

LABEL_18:
  v28 = [objc_opt_self() *v7];
  sub_1000065A8(0, &qword_100AE0E10);

  return Measurement.init(value:unit:)();
}

uint64_t sub_10038DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[63] = a5;
  v6[64] = a6;
  v6[61] = a1;
  v6[62] = a4;
  sub_1000F24EC(&qword_100AD3750);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8B38);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = sub_1000F24EC(&qword_100AD8B30);
  v6[72] = swift_task_alloc();
  v6[73] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[74] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[75] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[76] = v7;
  v6[77] = *(v7 - 8);
  v6[78] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[79] = v8;
  v6[80] = *(v8 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v6[83] = v9;
  v6[84] = *(v9 - 8);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v10 = type metadata accessor for AssetType();
  v6[87] = v10;
  v6[88] = *(v10 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01D0);
  v11 = swift_task_alloc();
  v6[91] = v11;
  v12 = type metadata accessor for Suggestion.MotionActivity(0);
  v6[92] = v12;
  v6[93] = *(v12 - 8);
  v6[94] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[95] = v13;
  *v13 = v6;
  v13[1] = sub_10038E418;

  return sub_100379FE8(v11, 0, 0);
}

uint64_t sub_10038E418()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_10038F8EC;
  }

  else
  {
    v2 = sub_10038E52C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038E52C()
{
  v1 = *(v0 + 728);
  if ((*(*(v0 + 744) + 48))(v1, 1, *(v0 + 736)) == 1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 488);
    sub_100004F84(v1, &qword_100AE01D0);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 720);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v25 = *(v0 + 712);
    v26 = *(v0 + 680);
    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v23 = *(v0 + 648);
    v19 = *(v0 + 640);
    v24 = *(v0 + 632);
    sub_1003A6F60(v1, *(v0 + 752), type metadata accessor for Suggestion.MotionActivity);
    (*(v13 + 104))(v12, enum case for AssetType.motionActivity(_:), v14);
    (*(v16 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v17);
    UUID.init()();
    v20 = objc_allocWithZone(type metadata accessor for MotionActivityAsset());
    *&v20[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = 0;
    (*(v19 + 16))(v23, v18, v24);
    (*(v13 + 16))(v25, v12, v14);
    (*(v16 + 16))(v26, v15, v17);
    *(v0 + 776) = sub_100285908(v23, v25, v26);
    v21 = *(v19 + 8);
    *(v0 + 784) = v21;
    *(v0 + 792) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v18, v24);
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    v22 = swift_task_alloc();
    *(v0 + 800) = v22;
    *v22 = v0;
    v22[1] = sub_10038E990;

    return sub_10037A6DC(0, 0);
  }
}

uint64_t sub_10038E990(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v4 = sub_10038FA54;
  }

  else
  {
    v4 = sub_10038EAA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10038EAA8()
{
  v1 = *(v0 + 808);
  if (v1)
  {
    v2 = &selRef_setRegion_;
    v3 = [*(v0 + 808) imageAsset];
    v4 = &selRef_setRegion_;
    v5 = &selRef_setRegion_;
    if (v3 && (v6 = v3, v7 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1], v8 = objc_msgSend(v6, "imageWithTraitCollection:", v7), v7, v6, v8))
    {
      v112 = v1;
      v9 = *(v0 + 784);
      v10 = *(v0 + 776);
      v11 = *(v0 + 656);
      v12 = *(v0 + 632);
      v13 = *(v0 + 592);
      *v13 = v8;
      swift_storeEnumTagMultiPayload();
      v14 = v10;
      v15 = v8;
      UUID.init()();
      v16 = UUID.uuidString.getter();
      v18 = v17;
      v9(v11, v12);
      type metadata accessor for AssetAttachment(0);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      sub_1003A6F60(v13, v19 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v20 = (v19 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v20 = v16;
      v20[1] = v18;
      v21 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v14 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v22 = *(v0 + 776);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v1 = v112;
      v5 = &selRef_setRegion_;
      v4 = &selRef_setRegion_;
      v2 = &selRef_setRegion_;
    }

    else
    {
      type metadata accessor for SuggestionImportSession(0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to parse framework asset into motion activity asset, light content missing", v24, 2u);
      }
    }

    v25 = [v1 v2[444]];
    if (v25 && (v26 = v25, v27 = [objc_opt_self() v4[452]], v28 = objc_msgSend(v26, v5[453], v27), v27, v26, v28))
    {
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      v31 = *(v0 + 656);
      v32 = *(v0 + 632);
      v33 = *(v0 + 592);
      *v33 = v28;
      swift_storeEnumTagMultiPayload();
      v34 = v30;
      v35 = v28;
      UUID.init()();
      v36 = UUID.uuidString.getter();
      v38 = v37;
      v29(v31, v32);
      type metadata accessor for AssetAttachment(0);
      v39 = swift_allocObject();
      *(v39 + 16) = 1;
      sub_1003A6F60(v33, v39 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v40 = (v39 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v40 = v36;
      v40[1] = v38;
      v41 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v34 + v41) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v34 + v41) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v42 = *(v0 + 776);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    else
    {
      type metadata accessor for SuggestionImportSession(0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Failed to parse framework asset into motion activity asset, dark content missing", v44, 2u);
      }
    }
  }

  else
  {
    v45 = *(v0 + 616);
    v46 = *(v0 + 608);
    v47 = *(v0 + 600);
    sub_1000082B4(*(v0 + 752), v47, &unk_100AD6DD0);
    if ((*(v45 + 48))(v47, 1, v46) == 1)
    {
      sub_100004F84(*(v0 + 600), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v42 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v42, v48, "Failed to parse framework asset into motion activity asset, content missing icon", v49, 2u);
      }
    }

    else
    {
      v50 = *(v0 + 784);
      v51 = *(v0 + 776);
      v52 = *(v0 + 656);
      v53 = *(v0 + 632);
      v54 = *(v0 + 624);
      v55 = *(v0 + 616);
      v56 = *(v0 + 608);
      v57 = *(v0 + 592);
      (*(v55 + 32))(v54, *(v0 + 600), v56);
      (*(v55 + 16))(v57, v54, v56);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v58 = v51;
      UUID.init()();
      v59 = UUID.uuidString.getter();
      v61 = v60;
      v50(v52, v53);
      type metadata accessor for AssetAttachment(0);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      sub_1003A6F60(v57, v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v63 = (v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v63 = v59;
      v63[1] = v61;
      v64 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v58 + v64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + v64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v42 = *(v0 + 776);
      v65 = *(v0 + 624);
      v66 = *(v0 + 616);
      v67 = *(v0 + 608);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      (*(v66 + 8))(v65, v67);
    }
  }

  v68 = *(*(v0 + 752) + *(*(v0 + 736) + 28));
  if (v68 <= 1)
  {
    if (*(*(v0 + 752) + *(*(v0 + 736) + 28)))
    {
      v69 = &enum case for MotionActivityTypeEnum.walking(_:);
    }

    else
    {
      v69 = &enum case for MotionActivityTypeEnum.running(_:);
    }

    goto LABEL_29;
  }

  if (v68 == 2)
  {
    v69 = &enum case for MotionActivityTypeEnum.runningAndWalking(_:);
LABEL_29:
    v70 = *(v0 + 560);
    v71 = *(v0 + 552);
    v72 = *v69;
    v73 = type metadata accessor for MotionActivityTypeEnum();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v71, v72, v73);
    (*(v74 + 56))(v71, 0, 1, v73);
    sub_100021CEC(v71, v70, &qword_100AD8B38);
    sub_10038FBE4();
    goto LABEL_31;
  }

  v75 = *(v0 + 560);
  v76 = type metadata accessor for MotionActivityTypeEnum();
  (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
LABEL_31:
  v77 = *(v0 + 752);
  v78 = *(v0 + 736);
  v79 = *(v0 + 528);
  *(v0 + 480) = *(v77 + *(v78 + 20));
  dispatch thunk of CustomStringConvertible.description.getter();
  v111 = *(v78 + 24);
  sub_1000082B4(v77 + v111, v79, &qword_100AD3750);
  v80 = type metadata accessor for DateInterval();
  v81 = *(v80 - 8);
  v110 = *(v81 + 48);
  if (v110(v79, 1, v80) == 1)
  {
    sub_100004F84(*(v0 + 528), &qword_100AD3750);
    v82 = 1;
  }

  else
  {
    v83 = *(v0 + 528);
    DateInterval.start.getter();
    (*(v81 + 8))(v83, v80);
    v82 = 0;
  }

  v84 = *(v0 + 544);
  v85 = *(v0 + 520);
  v86 = type metadata accessor for Date();
  v87 = (*(v86 - 8) + 56);
  v109 = *v87;
  (*v87)(v84, v82, 1, v86);
  sub_1000082B4(v77 + v111, v85, &qword_100AD3750);
  if (v110(v85, 1, v80) == 1)
  {
    sub_100004F84(*(v0 + 520), &qword_100AD3750);
    v88 = 1;
  }

  else
  {
    v89 = *(v0 + 520);
    DateInterval.end.getter();
    (*(v81 + 8))(v89, v80);
    v88 = 0;
  }

  v90 = *(v0 + 776);
  v91 = *(v0 + 576);
  v92 = *(v0 + 504);
  v109(*(v0 + 536), v88, 1, v86);
  MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8B40);
  v93 = swift_allocObject();
  v94 = *(*v93 + 104);
  v95 = sub_1000F24EC(&qword_100AD8740);
  (*(*(v95 - 8) + 56))(v93 + v94, 1, 1, v95);
  *(v93 + *(*v93 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v91, v93 + *(*v93 + 120), &qword_100AD8B30);
  *&v90[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = v93;

  swift_beginAccess();
  v96 = v90;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v92 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v92 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v97 = *(v0 + 776);
  v98 = *(v0 + 752);
  v99 = *(v0 + 504);
  v100 = *(v0 + 488);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  sub_1003A3E80(v98, type metadata accessor for Suggestion.MotionActivity);
  swift_beginAccess();
  *(v0 + 176) = v99[1];
  v101 = v99[2];
  v102 = v99[3];
  v103 = v99[5];
  *(v0 + 224) = v99[4];
  *(v0 + 240) = v103;
  *(v0 + 192) = v101;
  *(v0 + 208) = v102;
  v104 = v99[5];
  v106 = v99[2];
  v105 = v99[3];
  v100[3] = v99[4];
  v100[4] = v104;
  v100[1] = v106;
  v100[2] = v105;
  *v100 = v99[1];
  sub_1003A714C(v0 + 176, v0 + 256);

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_10038F8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038FA54()
{
  v1 = *(v0 + 752);

  sub_1003A3E80(v1, type metadata accessor for Suggestion.MotionActivity);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10038FBE4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10038FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[81] = a6;
  v6[80] = a5;
  v6[79] = a1;
  sub_1000F24EC(&qword_100AD8D38);
  v6[82] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD8D40);
  v6[83] = v7;
  v6[84] = *(v7 - 8);
  v6[85] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AD8D48);
  v6[86] = v8;
  v6[87] = *(v8 - 8);
  v6[88] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD8D50);
  v6[89] = v9;
  v6[90] = *(v9 - 8);
  v6[91] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AD8D58);
  v6[92] = v10;
  v6[93] = *(v10 - 8);
  v6[94] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750);
  v6[95] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0260);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v6[98] = v11;
  v6[99] = *(v11 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = *(type metadata accessor for Suggestion.Workout(0) - 8);
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v6[112] = sub_1000F24EC(&qword_100ADA888);
  v6[113] = swift_task_alloc();
  v6[114] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[115] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[116] = v12;
  v6[117] = *(v12 - 8);
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v13 = type metadata accessor for AssetSource();
  v6[120] = v13;
  v6[121] = *(v13 - 8);
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v14 = type metadata accessor for AssetType();
  v6[124] = v14;
  v6[125] = *(v14 - 8);
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[128] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v6[129] = v15;
  v6[130] = *(v15 - 8);
  v6[131] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0268);
  v16 = swift_task_alloc();
  v6[132] = v16;
  v17 = type metadata accessor for Suggestion.WorkoutGroup(0);
  v6[133] = v17;
  v6[134] = *(v17 - 8);
  v6[135] = swift_task_alloc();
  v18 = swift_task_alloc();
  v6[136] = v18;
  *v18 = v6;
  v18[1] = sub_100390458;

  return sub_10037AC28(v16, 0, 0);
}

uint64_t sub_100390458()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_1003919E8;
  }

  else
  {
    v2 = sub_10039056C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039056C()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  if ((*(*(v0 + 1072) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 640);
    v4 = *(v0 + 632);
    sub_100004F84(v2, &qword_100AE0268);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 1080);
    v14 = *(v0 + 1040);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1024);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.WorkoutGroup);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 1024), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into workout group asset, content missing icon", v19, 2u);
      }

      v20 = *(v0 + 1080);
      v21 = *(v0 + 640);
      v22 = *(v0 + 632);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.WorkoutGroup);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v153 = *(v0 + 1032);
      v156 = *(v0 + 1048);
      v29 = *(v0 + 1016);
      v30 = *(v0 + 1000);
      v31 = *(v0 + 992);
      v135 = *(v0 + 984);
      v147 = *(v0 + 976);
      v150 = *(v0 + 1040);
      v32 = *(v0 + 968);
      v33 = *(v0 + 960);
      v34 = *(v0 + 952);
      v143 = *(v0 + 944);
      v146 = *(v0 + 1008);
      v35 = *(v0 + 936);
      v159 = *(v0 + 920);
      v162 = *(v0 + 928);
      (*(v150 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.workoutIcon(_:), v31);
      (*(v32 + 104))(v135, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset());
      *&v36[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
      (*(v35 + 16))(v143, v34, v162);
      (*(v30 + 16))(v146, v29, v31);
      (*(v32 + 16))(v147, v135, v33);
      v37 = sub_100285908(v143, v146, v147);
      v38 = *(v35 + 8);
      v38(v34, v162);
      (*(v32 + 8))(v135, v33);
      (*(v30 + 8))(v29, v31);
      (*(v150 + 16))(v159, v156, v153);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v162);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v159, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v131 = v39;
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 1080);
      v47 = *(v0 + 888);
      v48 = *(v0 + 880);
      v49 = *(v0 + 792);
      v50 = *(v0 + 784);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v51 = *(v49 + 56);
      v51(v47, 1, 1, v50);
      v161 = v51;
      v51(v48, 1, 1, v50);
      v52 = *(*v46 + 16);
      v132 = v52;
      if (v52)
      {
        v53 = *(v0 + 824);
        v54 = *(v0 + 792);
        v55 = *v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v133 = (v54 + 8);
        v134 = (v54 + 16);
        v136 = v54;
        v154 = (v54 + 32);
        v157 = (v54 + 48);
        v139 = v55;
        v142 = _swiftEmptyArrayStorage;
        v151 = *(v53 + 72);
        v56 = v55;
        do
        {
          v57 = *(v0 + 840);
          sub_1003A6EF8(v56, v57, type metadata accessor for Suggestion.Workout);
          v58 = type metadata accessor for Suggestion.Workout.Details(0);
          v148 = *(*(v58 - 8) + 48);
          v163 = v58;
          if (v148(v57, 1, v58) == 1)
          {
            v161(*(v0 + 864), 1, 1, *(v0 + 784));
          }

          else
          {
            v59 = *(v0 + 776);
            sub_1000082B4(*(v0 + 840), v59, &qword_100AE0260);
            v60 = *(v58 + 32);
            v61 = type metadata accessor for DateInterval();
            v62 = *(v61 - 8);
            v63 = (*(v62 + 48))(v59 + v60, 1, v61);
            v64 = *(v0 + 864);
            if (v63 == 1)
            {
              v161(*(v0 + 864), 1, 1, *(v0 + 784));
            }

            else
            {
              v65 = *(v0 + 808);
              v66 = *(v0 + 784);
              v67 = v59 + v60;
              v68 = *(v0 + 760);
              sub_1000082B4(v67, v68, &qword_100AD3750);
              DateInterval.start.getter();
              (*v134)(v64, v65, v66);
              v161(v64, 0, 1, v66);
              (*v133)(v65, v66);
              (*(v62 + 8))(v68, v61);
            }

            sub_1003A3E80(*(v0 + 776), type metadata accessor for Suggestion.Workout.Details);
            v55 = v139;
            v58 = v163;
          }

          v69 = *(v0 + 872);
          v70 = *(v0 + 840);
          v71 = *(v0 + 784);
          sub_100021CEC(*(v0 + 864), v69, &unk_100AD4790);
          sub_1003A3E80(v70, type metadata accessor for Suggestion.Workout);
          v144 = *v157;
          if ((*v157)(v69, 1, v71) == 1)
          {
            sub_100004F84(*(v0 + 872), &unk_100AD4790);
          }

          else
          {
            v72 = *v154;
            (*v154)(*(v0 + 816), *(v0 + 872), *(v0 + 784));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_1000881C0(0, *(v142 + 2) + 1, 1, v142);
            }

            v74 = *(v142 + 2);
            v73 = *(v142 + 3);
            if (v74 >= v73 >> 1)
            {
              v142 = sub_1000881C0(v73 > 1, v74 + 1, 1, v142);
            }

            v75 = *(v0 + 816);
            v76 = *(v0 + 784);
            *(v142 + 2) = v74 + 1;
            v72(v142 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v74, v75, v76);
            v58 = v163;
          }

          v56 += v151;
          --v52;
        }

        while (v52);
        v77 = _swiftEmptyArrayStorage;
        v78 = v132;
        do
        {
          v79 = *(v0 + 832);
          sub_1003A6EF8(v55, v79, type metadata accessor for Suggestion.Workout);
          if (v148(v79, 1, v58) == 1)
          {
            v161(*(v0 + 848), 1, 1, *(v0 + 784));
          }

          else
          {
            v138 = v77;
            v140 = v55;
            v80 = *(v0 + 768);
            sub_1000082B4(*(v0 + 832), v80, &qword_100AE0260);
            v81 = *(v58 + 32);
            v82 = type metadata accessor for DateInterval();
            v83 = *(v82 - 8);
            v84 = (*(v83 + 48))(v80 + v81, 1, v82);
            v85 = *(v0 + 848);
            if (v84 == 1)
            {
              v161(*(v0 + 848), 1, 1, *(v0 + 784));
            }

            else
            {
              v86 = *(v0 + 808);
              v87 = *(v0 + 784);
              v88 = *(v0 + 760);
              sub_1000082B4(v80 + v81, v88, &qword_100AD3750);
              DateInterval.end.getter();
              (*v134)(v85, v86, v87);
              v161(v85, 0, 1, v87);
              (*v133)(v86, v87);
              (*(v83 + 8))(v88, v82);
            }

            sub_1003A3E80(*(v0 + 768), type metadata accessor for Suggestion.Workout.Details);
            v77 = v138;
            v55 = v140;
            v58 = v163;
          }

          v89 = *(v0 + 856);
          v90 = *(v0 + 832);
          v91 = *(v0 + 784);
          sub_100021CEC(*(v0 + 848), v89, &unk_100AD4790);
          sub_1003A3E80(v90, type metadata accessor for Suggestion.Workout);
          if (v144(v89, 1, v91) == 1)
          {
            sub_100004F84(*(v0 + 856), &unk_100AD4790);
          }

          else
          {
            v92 = *v154;
            (*v154)(*(v0 + 800), *(v0 + 856), *(v0 + 784));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_1000881C0(0, *(v77 + 2) + 1, 1, v77);
            }

            v94 = *(v77 + 2);
            v93 = *(v77 + 3);
            if (v94 >= v93 >> 1)
            {
              v77 = sub_1000881C0(v93 > 1, v94 + 1, 1, v77);
            }

            v95 = *(v0 + 800);
            v96 = *(v0 + 784);
            *(v77 + 2) = v94 + 1;
            v92(v77 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v94, v95, v96);
            v58 = v163;
          }

          v55 += v151;
          --v78;
        }

        while (v78);
      }

      v97 = *(v0 + 1080);
      v98 = *(v0 + 1064);
      v99 = *(v97 + *(v98 + 28));
      if (v99)
      {
        v100 = objc_opt_self();
        v101 = [v100 countUnit];
        v102 = [v100 minuteUnit];
        v103 = [v101 unitDividedByUnit:v102];

        [v99 doubleValueForUnit:v103];
        v97 = *(v0 + 1080);
        v98 = *(v0 + 1064);
      }

      v104 = *(v97 + *(v98 + 24));
      if (v104)
      {
        v137 = *(v0 + 752);
        v141 = *(v0 + 728);
        v158 = *(v0 + 720);
        v160 = *(v0 + 744);
        v152 = *(v0 + 712);
        v155 = *(v0 + 736);
        v105 = *(v0 + 704);
        v106 = *(v0 + 696);
        v149 = *(v0 + 688);
        v107 = *(v0 + 680);
        v108 = *(v0 + 672);
        v145 = *(v0 + 664);
        v109 = *(v0 + 656);
        v110 = [objc_opt_self() kilocalorieUnit];
        [v104 doubleValueForUnit:v110];

        sub_10038D8C8();
        sub_1000065A8(0, &qword_100AD8D60);
        static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
        static MeasurementFormatUnitUsage<>.workout.getter();
        v111 = sub_1000F24EC(&qword_100AD8D68);
        (*(*(v111 - 8) + 56))(v109, 1, 1, v111);
        static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
        sub_100004F84(v109, &qword_100AD8D38);
        (*(v108 + 8))(v107, v145);
        (*(v106 + 8))(v105, v149);
        sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50);
        Measurement<>.formatted<A>(_:)();
        (*(v158 + 8))(v141, v152);
        (*(v160 + 8))(v137, v155);
      }

      v112 = *(v0 + 904);
      v113 = *(v0 + 640);
      WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DD0);
      v114 = swift_allocObject();
      v115 = *(*v114 + 104);
      v116 = sub_1000F24EC(&qword_100AE4280);
      (*(*(v116 - 8) + 56))(v114 + v115, 1, 1, v116);
      *(v114 + *(*v114 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v112, v114 + *(*v114 + 120), &qword_100ADA888);
      *&v131[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = v114;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v113 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v113 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v117 = *(v0 + 1080);
      v118 = *(v0 + 1048);
      v119 = *(v0 + 1040);
      v120 = *(v0 + 1032);
      v121 = *(v0 + 640);
      v122 = *(v0 + 632);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v119 + 8))(v118, v120);
      sub_1003A3E80(v117, type metadata accessor for Suggestion.WorkoutGroup);
      swift_beginAccess();
      *(v0 + 336) = v121[1];
      v123 = v121[2];
      v124 = v121[3];
      v125 = v121[5];
      *(v0 + 384) = v121[4];
      *(v0 + 400) = v125;
      *(v0 + 352) = v123;
      *(v0 + 368) = v124;
      v126 = v121[5];
      v128 = v121[2];
      v127 = v121[3];
      v122[3] = v121[4];
      v122[4] = v126;
      v122[1] = v128;
      v122[2] = v127;
      *v122 = v121[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v129 = *(v0 + 8);

  return v129();
}

uint64_t sub_1003919E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100391C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[83] = a6;
  v6[82] = a5;
  v6[81] = a4;
  v6[80] = a1;
  sub_1000F24EC(&unk_100AD4790);
  v6[84] = swift_task_alloc();
  v6[85] = sub_1000F24EC(&qword_100AD64C0);
  v6[86] = swift_task_alloc();
  v6[87] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[88] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[89] = v7;
  v6[90] = *(v7 - 8);
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[94] = v8;
  v6[95] = *(v8 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[98] = v9;
  v6[99] = *(v9 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0228);
  v10 = swift_task_alloc();
  v6[102] = v10;
  v11 = type metadata accessor for Suggestion.StateOfMind(0);
  v6[103] = v11;
  v6[104] = *(v11 - 8);
  v6[105] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[106] = v12;
  *v12 = v6;
  v12[1] = sub_100391F48;

  return sub_10037B31C(v10, 0, 0);
}

uint64_t sub_100391F48()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100393184;
  }

  else
  {
    v2 = sub_10039205C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039205C()
{
  v1 = *(v0 + 816);
  if ((*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824)) == 1)
  {
    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    sub_100004F84(v1, &qword_100AE0228);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_1003A6F60(v1, *(v0 + 840), type metadata accessor for Suggestion.StateOfMind);
    v12 = swift_task_alloc();
    *(v0 + 864) = v12;
    *v12 = v0;
    v12[1] = sub_1003922B8;

    return sub_10037A6DC(0, 0);
  }
}

uint64_t sub_1003922B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {
    v4 = sub_100393298;
  }

  else
  {
    v4 = sub_1003923D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003923D0()
{
  v1 = v0;
  v2 = v0[109];
  if (v2)
  {
    v3 = [v2 imageAsset];
    if (v3)
    {
      v4 = v3;
      v5 = objc_opt_self();
      v6 = [v5 traitCollectionWithUserInterfaceStyle:1];
      v7 = [v4 imageWithTraitCollection:v6];

      if (v7)
      {
        v8 = [v2 imageAsset];
        if (v8)
        {
          v9 = v8;
          v10 = [v5 traitCollectionWithUserInterfaceStyle:2];
          v11 = [v9 imageWithTraitCollection:v10];

          if (v11)
          {
            v122 = v11;
            v125 = v2;
            v128 = v1[101];
            v12 = v1[99];
            v13 = v1[98];
            v14 = v1[97];
            v119 = v14;
            v120 = v1[100];
            v121 = v1[96];
            v130 = v1;
            v15 = v1[95];
            v16 = v130[94];
            v118 = v16;
            v17 = v130[93];
            v18 = v130[92];
            v19 = v130[90];
            v20 = v130[89];
            v126 = v130[88];
            (*(v12 + 104))();
            (*(v15 + 104))(v14, enum case for AssetSource.suggestionSheet(_:), v16);
            UUID.init()();
            v21 = objc_allocWithZone(type metadata accessor for StateOfMindAsset());
            *&v21[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = 0;
            (*(v19 + 16))(v18, v17, v20);
            (*(v12 + 16))(v120, v128, v13);
            (*(v15 + 16))(v121, v14, v16);
            v22 = sub_100285908(v18, v120, v121);
            v23 = *(v19 + 8);
            v23(v17, v20);
            (*(v15 + 8))(v119, v118);
            v1 = v130;
            (*(v12 + 8))(v128, v13);
            *v126 = v7;
            swift_storeEnumTagMultiPayload();
            v24 = v22;
            v124 = v7;
            UUID.init()();
            v25 = UUID.uuidString.getter();
            v27 = v26;
            v129 = v23;
            v23(v17, v20);
            type metadata accessor for AssetAttachment(0);
            v28 = swift_allocObject();
            *(v28 + 16) = 0;
            sub_1003A6F60(v126, v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v29 = (v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v29 = v25;
            v29[1] = v27;
            v30 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v31 = v130[93];
            v32 = v130[89];
            v33 = v130[88];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            *v33 = v122;
            swift_storeEnumTagMultiPayload();
            v123 = v122;
            UUID.init()();
            v34 = UUID.uuidString.getter();
            v36 = v35;
            v129(v31, v32);
            v37 = swift_allocObject();
            *(v37 + 16) = 1;
            sub_1003A6F60(v33, v37 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v38 = (v37 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v38 = v34;
            v38[1] = v36;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = v24;
            if (*((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v40 = v130[105];
            v41 = v130[91];
            v42 = v130[89];
            v43 = v130[84];
            v127 = v39;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            v44 = *v40;
            v45 = [*v40 UUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            UUID.uuidString.getter();
            v129(v41, v42);
            v46 = [v44 startDate];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v47 = type metadata accessor for Date();
            (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
            [v44 reflectiveInterval];
            v48 = HKStateOfMind.labels.getter();
            v49 = *(v48 + 16);
            if (v49)
            {
              v50 = v48;
              sub_100199BD4(0, v49, 0);
              v51 = v50;
              v52 = _swiftEmptyArrayStorage;
              v53 = _swiftEmptyArrayStorage[2];
              v54 = 32;
              do
              {
                v55 = *(v51 + v54);
                v131 = v52;
                v56 = *(v52 + 3);
                if (*&v53 >= v56 >> 1)
                {
                  sub_100199BD4((v56 > 1), *&v53 + 1, 1);
                  v51 = v50;
                  v52 = v131;
                }

                *(v52 + 2) = *&v53 + 1;
                v52[*&v53 + 4] = v55;
                v54 += 8;
                ++*&v53;
                --v49;
              }

              while (v49);

              v1 = v130;
            }

            else
            {
            }

            v73 = HKStateOfMind.associations.getter();
            v74 = *(v73 + 16);
            if (v74)
            {
              v75 = v73;
              sub_100199BD4(0, v74, 0);
              v76 = v75;
              v77 = _swiftEmptyArrayStorage;
              v78 = _swiftEmptyArrayStorage[2];
              v79 = 32;
              do
              {
                v80 = *(v76 + v79);
                v132 = v77;
                v81 = *(v77 + 3);
                if (*&v78 >= v81 >> 1)
                {
                  sub_100199BD4((v81 > 1), *&v78 + 1, 1);
                  v76 = v75;
                  v77 = v132;
                }

                *(v77 + 2) = *&v78 + 1;
                v77[*&v78 + 4] = v80;
                v79 += 8;
                ++*&v78;
                --v74;
              }

              while (v74);
            }

            v82 = v1[105];
            v83 = v1[103];
            [v44 valenceClassification];
            v84 = *(v82 + *(v83 + 24));
            if (v84)
            {
              v85 = *(v84 + 16);
              if (v85)
              {
                sub_100199BF4(0, v85, 0);
                sub_1000065A8(0, &qword_100AD4C70);
                v86 = v84 + 32;
                do
                {
                  swift_retain_n();
                  v87 = UIColor.init(_:)();
                  v88 = NSCoding<>.toData.getter();
                  v90 = v89;

                  v92 = _swiftEmptyArrayStorage[2];
                  v91 = _swiftEmptyArrayStorage[3];
                  if (*&v92 >= *&v91 >> 1)
                  {
                    sub_100199BF4((*&v91 > 1uLL), *&v92 + 1, 1);
                  }

                  *&_swiftEmptyArrayStorage[2] = *&v92 + 1;
                  v93 = &_swiftEmptyArrayStorage[2 * *&v92];
                  *(v93 + 4) = v88;
                  *(v93 + 5) = v90;
                  v86 += 16;
                  --v85;
                }

                while (v85);
                v1 = v130;
              }
            }

            v94 = *(v1[105] + *(v1[103] + 28));
            if (v94)
            {
              v95 = *(v94 + 16);
              if (v95)
              {
                sub_100199BF4(0, v95, 0);
                sub_1000065A8(0, &qword_100AD4C70);
                v96 = v94 + 32;
                do
                {
                  swift_retain_n();
                  v97 = UIColor.init(_:)();
                  v98 = NSCoding<>.toData.getter();
                  v100 = v99;

                  v102 = _swiftEmptyArrayStorage[2];
                  v101 = _swiftEmptyArrayStorage[3];
                  if (*&v102 >= *&v101 >> 1)
                  {
                    sub_100199BF4((*&v101 > 1uLL), *&v102 + 1, 1);
                  }

                  *&_swiftEmptyArrayStorage[2] = *&v102 + 1;
                  v103 = &_swiftEmptyArrayStorage[2 * *&v102];
                  *(v103 + 4) = v98;
                  *(v103 + 5) = v100;
                  v96 += 16;
                  --v95;
                }

                while (v95);
                v1 = v130;
              }
            }

            v104 = v1[86];
            v105 = v1[82];
            StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)();
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AD64C8);
            v106 = swift_allocObject();
            v107 = *(*v106 + 104);
            v108 = sub_1000F24EC(&qword_100AE6680);
            (*(*(v108 - 8) + 56))(v106 + v107, 1, 1, v108);
            *(v106 + *(*v106 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v104, v106 + *(*v106 + 120), &qword_100AD64C0);
            *&v127[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = v106;

            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v105 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v105 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v109 = v1[105];
            v110 = v1[82];
            v111 = v1[80];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            sub_1003A3E80(v109, type metadata accessor for Suggestion.StateOfMind);
            swift_beginAccess();
            *(v1 + 21) = v110[1];
            v112 = v110[2];
            v113 = v110[3];
            v114 = v110[5];
            *(v1 + 24) = v110[4];
            *(v1 + 25) = v114;
            *(v1 + 22) = v112;
            *(v1 + 23) = v113;
            v115 = v110[5];
            v117 = v110[2];
            v116 = v110[3];
            v111[3] = v110[4];
            v111[4] = v115;
            v111[1] = v117;
            v111[2] = v116;
            *v111 = v110[1];
            v69 = (v1 + 42);
            v70 = (v1 + 52);
            goto LABEL_21;
          }
        }
      }
    }
  }

  type metadata accessor for SuggestionImportSession(0);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Failed to parse framework asset into state of mind asset, image content missing", v59, 2u);
  }

  v60 = v1[105];
  v61 = v1[82];
  v62 = v1[80];

  sub_1003A3E80(v60, type metadata accessor for Suggestion.StateOfMind);
  swift_beginAccess();
  *(v1 + 11) = v61[1];
  v63 = v61[2];
  v64 = v61[3];
  v65 = v61[5];
  *(v1 + 14) = v61[4];
  *(v1 + 15) = v65;
  *(v1 + 12) = v63;
  *(v1 + 13) = v64;
  v66 = v61[5];
  v68 = v61[2];
  v67 = v61[3];
  v62[3] = v61[4];
  v62[4] = v66;
  v62[1] = v68;
  v62[2] = v67;
  *v62 = v61[1];
  v69 = (v1 + 22);
  v70 = (v1 + 32);
LABEL_21:
  sub_1003A714C(v69, v70);

  v71 = v1[1];

  return v71();
}

uint64_t sub_100393184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100393298()
{
  sub_1003A3E80(*(v0 + 840), type metadata accessor for Suggestion.StateOfMind);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003933C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&unk_100AD4790);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D78);
  v6[82] = swift_task_alloc();
  v6[83] = sub_1000F24EC(&qword_100ADA970);
  v6[84] = swift_task_alloc();
  v6[85] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[86] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[87] = v7;
  v6[88] = *(v7 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[91] = v8;
  v6[92] = *(v8 - 8);
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[95] = v9;
  v6[96] = *(v9 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0178);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.EventPoster(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_1003937D8;

  return sub_10037BA10(v11, 0, 0);
}

uint64_t sub_1003937D8()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003942A4;
  }

  else
  {
    v2 = sub_1003938EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003938EC()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0178);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.EventPoster);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into event poster asset, content missing icon", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.EventPoster);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v75 = *(v0 + 800);
      v76 = *(v0 + 816);
      v29 = *(v0 + 784);
      v30 = *(v0 + 768);
      v31 = *(v0 + 760);
      v73 = *(v0 + 744);
      v74 = *(v0 + 808);
      v32 = *(v0 + 736);
      v33 = *(v0 + 728);
      v34 = *(v0 + 720);
      v71 = *(v0 + 712);
      v72 = *(v0 + 776);
      v35 = *(v0 + 704);
      v70 = *(v0 + 752);
      v81 = *(v0 + 696);
      v78 = *(v0 + 688);
      (*(v74 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.confetti(_:), v31);
      (*(v32 + 104))(v70, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for ConfettiAsset());
      *&v36[OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata] = 0;
      (*(v35 + 16))(v71, v34, v81);
      (*(v30 + 16))(v72, v29, v31);
      (*(v32 + 16))(v73, v70, v33);
      v37 = sub_100285908(v71, v72, v73);
      v38 = *(v35 + 8);
      v38(v34, v81);
      (*(v32 + 8))(v70, v33);
      (*(v30 + 8))(v29, v31);
      (*(v74 + 16))(v78, v76, v75);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v81);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v78, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 848);
      v80 = v39;
      v47 = *(v0 + 832);
      v79 = *(v0 + 672);
      v48 = *(v0 + 656);
      v49 = *(v0 + 648);
      v50 = *(v0 + 640);
      v77 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v51 = type metadata accessor for AttributedString();
      v52 = *(v51 - 8);
      (*(v52 + 16))(v48, v46, v51);
      (*(v52 + 56))(v48, 0, 1, v51);
      sub_1000082B4(v46 + *(v47 + 24), v49, &unk_100AD4790);
      sub_1000082B4(v46 + *(v47 + 28), v50, &unk_100AD4790);

      ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DA8);
      v53 = swift_allocObject();
      v54 = *(*v53 + 104);
      v55 = sub_1000F24EC(&qword_100ADA980);
      (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
      *(v53 + *(*v53 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v79, v53 + *(*v53 + 120), &qword_100ADA970);
      *&v80[OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata] = v53;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v77 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v77 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v56 = *(v0 + 848);
      v57 = *(v0 + 816);
      v58 = *(v0 + 808);
      v59 = *(v0 + 800);
      v60 = *(v0 + 624);
      v61 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v58 + 8))(v57, v59);
      sub_1003A3E80(v56, type metadata accessor for Suggestion.EventPoster);
      swift_beginAccess();
      *(v0 + 336) = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      v64 = v60[5];
      *(v0 + 384) = v60[4];
      *(v0 + 400) = v64;
      *(v0 + 352) = v62;
      *(v0 + 368) = v63;
      v65 = v60[5];
      v67 = v60[2];
      v66 = v60[3];
      v61[3] = v60[4];
      v61[4] = v65;
      v61[1] = v67;
      v61[2] = v66;
      *v61 = v60[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1003942A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003943DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1000F24EC(&qword_100AD6600);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for VisitAssetMetadata();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v8 = *(type metadata accessor for Suggestion.Location(0) - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AE0E38);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E40);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003946D0, 0, 0);
}

void sub_1003946D0()
{
  v1 = 0;
  v2 = *(v0 + 240);
  v41 = *(v0 + 192);
  v42 = *(v0 + 232);
  v38 = *(v0 + 168);
  v39 = (v2 + 48);
  v40 = (v2 + 56);
  v37 = *(v0 + 176) + 7;
  v3 = *(*(v0 + 88) + 16);
  for (i = v3; ; v3 = i)
  {
    if (v1 == v3)
    {
      v6 = 1;
      v7 = v3;
    }

    else
    {
      if (v1 >= v3)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_22;
      }

      v8 = *(v0 + 248);
      v9 = *(v0 + 256);
      v10 = *(v0 + 88) + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v1;
      v11 = *(v42 + 48);
      *v8 = v1;
      sub_1003A6EF8(v10, v8 + v11, type metadata accessor for Suggestion.Location);
      sub_100021CEC(v8, v9, &qword_100AE0E38);
      v6 = 0;
    }

    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 232);
    (*v40)(v12, v6, 1, v14);
    sub_100021CEC(v12, v13, &qword_100AE0E40);
    if ((*v39)(v13, 1, v14) == 1)
    {
      break;
    }

    v47 = v7;
    v15 = *(v0 + 264);
    v16 = *(v0 + 224);
    v44 = v16;
    v46 = *(v0 + 216);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v43 = *(v0 + 200);
    v19 = *(v0 + 96);
    v45 = *v15;
    v20 = *(v42 + 48);
    v21 = type metadata accessor for TaskPriority();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = v17;
    sub_1003A6F60(v15 + v20, v17, type metadata accessor for Suggestion.Location);
    sub_1003A6EF8(v19, v18, type metadata accessor for SuggestionImportSession);
    v24 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v25 = (v43 + *(v38 + 80) + v24) & ~*(v38 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_1003A6F60(v23, v26 + v24, type metadata accessor for Suggestion.Location);
    sub_1003A6F60(v18, v26 + v25, type metadata accessor for SuggestionImportSession);
    *(v26 + ((v37 + v25) & 0xFFFFFFFFFFFFFFF8)) = v45;
    sub_1000082B4(v44, v46, &qword_100AD5170);
    v27 = (*(v22 + 48))(v46, 1, v21);
    v28 = *(v0 + 216);
    if (v27 == 1)
    {
      sub_100004F84(*(v0 + 216), &qword_100AD5170);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v22 + 8))(v28, v21);
    }

    if (*(v26 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = **(v0 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_1009524E0;
    *(v33 + 24) = v26;

    if (v31 | v29)
    {
      v4 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v0 + 224);
    *(v0 + 48) = 1;
    *(v0 + 56) = v4;
    *(v0 + 64) = v32;
    swift_task_create();

    sub_100004F84(v5, &qword_100AD5170);
    v1 = v47;
  }

  v34 = **(v0 + 80);
  v35 = swift_task_alloc();
  *(v0 + 272) = v35;
  *v35 = v0;
  v35[1] = sub_100394BE8;

  (sub_1007AC280)(0, 0, v34);
}

uint64_t sub_100394BE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100394D10, 0, 0);
  }
}

uint64_t sub_100394D10()
{
  v31 = v0;
  v1 = *(v0 + 288);
  v30 = *(v0 + 280);

  sub_1003A3D24(&v30);
  if (v1)
  {
  }

  else
  {

    v3 = v30;
    v4 = *(v30 + 2);
    if (v4)
    {
      v5 = *(v0 + 152);
      v6 = *(v0 + 112);
      v26 = *(v0 + 104);
      v30 = _swiftEmptyArrayStorage;
      sub_100199CF8(0, v4, 0);
      v7 = v30;
      v8 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v9 = (v5 + 32);
      v27 = v5;
      v24 = (v5 + 16);
      v25 = *(v6 + 72);
      do
      {
        v28 = *(v0 + 160);
        v29 = v4;
        v11 = *(v0 + 136);
        v10 = *(v0 + 144);
        v12 = v9;
        v13 = *(v0 + 120);
        v14 = *(v0 + 128);
        sub_1000082B4(v8, v11, &qword_100AD6600);
        sub_1000082B4(v11, v14, &qword_100AD6600);
        v15 = *(v26 + 48);
        *v13 = *v14;
        v16 = v14 + v15;
        v9 = v12;
        v17 = *v12;
        v17(&v13[v15], v16, v10);
        (*v24)(v28, &v13[v15], v10);
        sub_100004F84(v13, &qword_100AD6600);
        sub_100004F84(v11, &qword_100AD6600);
        v30 = v7;
        v19 = *(v7 + 2);
        v18 = *(v7 + 3);
        if (v19 >= v18 >> 1)
        {
          sub_100199CF8(v18 > 1, v19 + 1, 1);
          v7 = v30;
        }

        v20 = *(v0 + 160);
        v21 = *(v0 + 144);
        *(v7 + 2) = v19 + 1;
        v17(v7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19, v20, v21);
        v8 += v25;
        --v4;
      }

      while (v29 != 1);

      v22 = v7;
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    **(v0 + 72) = v22;

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100395038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a1;
  v6[20] = a4;
  sub_1000F24EC(&unk_100AEED30);
  v6[23] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for VisitAssetMetadata();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003951D4, 0, 0);
}

uint64_t sub_1003951D4()
{
  v1 = v0[20];
  v2 = type metadata accessor for Suggestion.Location(0);
  v0[33] = v2;
  if (*(v1 + *(v2 + 32) + 8))
  {
    v3 = objc_allocWithZone(MKMapItemIdentifier);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithIdentifierString:v4];
    v0[34] = v5;

    if (v5)
    {
      v6 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v5];
      v0[35] = v6;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100395964;
      v7 = swift_continuation_init();
      v0[17] = sub_1000F24EC(&qword_100AE0E48);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10039677C;
      v0[13] = &unk_100A6A2F8;
      v0[14] = v7;
      [v6 getMapItemWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v8 = v0[33];
    v1 = v0[20];
  }

  else
  {
    v8 = v2;
  }

  v9 = *(v1 + *(v8 + 40));
  if (v9 == 2 || (v9 & 1) == 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  v11 = v0[28];

  v49 = v10;
  sub_1000A0F34(v10);
  sub_1000082B4(v1 + *(v8 + 28), v11, &unk_100AD4790);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    v15 = v0[25];
    v16 = v0[21];
    v17 = v16 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v18 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v17 + *(v18 + 24), v15, &qword_100AD3750);
    v19 = type metadata accessor for DateInterval();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v15, 1, v19) == 1)
    {
      sub_100004F84(v0[25], &qword_100AD3750);
      v21 = 1;
    }

    else
    {
      v24 = v0[25];
      DateInterval.start.getter();
      (*(v20 + 8))(v24, v19);
      v21 = 0;
    }

    v25 = v0[28];
    v23 = *(v13 + 56);
    v23(v0[29], v21, 1, v12);
    if (v14(v25, 1, v12) != 1)
    {
      sub_100004F84(v0[28], &unk_100AD4790);
    }
  }

  else
  {
    v22 = v0[29];
    (*(v13 + 32))(v22, v0[28], v12);
    v23 = *(v13 + 56);
    v23(v22, 0, 1, v12);
  }

  v26 = v0[24];
  v27 = v0[21];
  v28 = v27 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v29 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v28 + *(v29 + 24), v26, &qword_100AD3750);
  v30 = type metadata accessor for DateInterval();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v26, 1, v30) == 1)
  {
    sub_100004F84(v0[24], &qword_100AD3750);
    v32 = 1;
  }

  else
  {
    v33 = v0[24];
    DateInterval.end.getter();
    (*(v31 + 8))(v33, v30);
    v32 = 0;
  }

  v34 = v0[26];
  v35 = v0[20];
  v23(v0[27], v32, 1, v12);
  static Date.now.getter();
  v23(v34, 0, 1, v12);
  v36 = *(v35 + 32);
  if (v36)
  {
    [*(v35 + 32) coordinate];
    [v36 coordinate];
    [v36 horizontalAccuracy];
    [v36 horizontalAccuracy];
  }

  v38 = v0[31];
  v37 = v0[32];
  v48 = v0[30];
  v39 = v0[23];
  v47 = v0[22];
  v40 = v0[19];
  v41 = enum case for AssetSource.suggestionSheet(_:);
  v42 = type metadata accessor for AssetSource();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v39, v41, v42);
  (*(v43 + 56))(v39, 0, 1, v42);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  sub_1003A98C8(v49);
  v44 = *(sub_1000F24EC(&qword_100AD6600) + 48);
  *v40 = v47;
  (*(v38 + 32))(&v40[v44], v37, v48);

  v45 = v0[1];

  return v45();
}

uint64_t sub_100395964()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_100396154;
  }

  else
  {
    v2 = sub_100395A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100395A74()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 264);
  v3 = *(v0 + 160);
  v4 = *(v3 + *(v2 + 40));
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 224);

  v49 = v5;
  sub_1000A0F34(v5);
  sub_1000082B4(v3 + *(v2 + 28), v7, &unk_100AD4790);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 168);
    v13 = v12 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v14 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v13 + *(v14 + 24), v11, &qword_100AD3750);
    v15 = type metadata accessor for DateInterval();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 200), &qword_100AD3750);
      v17 = 1;
    }

    else
    {
      v20 = *(v0 + 200);
      DateInterval.start.getter();
      (*(v16 + 8))(v20, v15);
      v17 = 0;
    }

    v21 = *(v0 + 224);
    v19 = *(v9 + 56);
    v19(*(v0 + 232), v17, 1, v8);
    if (v10(v21, 1, v8) != 1)
    {
      sub_100004F84(*(v0 + 224), &unk_100AD4790);
    }
  }

  else
  {
    v18 = *(v0 + 232);
    (*(v9 + 32))(v18, *(v0 + 224), v8);
    v19 = *(v9 + 56);
    v19(v18, 0, 1, v8);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168);
  v24 = v23 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v25 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v24 + *(v25 + 24), v22, &qword_100AD3750);
  v26 = type metadata accessor for DateInterval();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_100004F84(*(v0 + 192), &qword_100AD3750);
    v28 = 1;
  }

  else
  {
    v29 = *(v0 + 192);
    DateInterval.end.getter();
    (*(v27 + 8))(v29, v26);
    v28 = 0;
  }

  v30 = *(v0 + 208);
  v31 = *(v0 + 160);
  v19(*(v0 + 216), v28, 1, v8);
  static Date.now.getter();
  v19(v30, 0, 1, v8);
  v32 = *(v31 + 32);
  if (v32)
  {
    [*(v31 + 32) coordinate];
    [v32 coordinate];
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
LABEL_17:
    v33 = [v6 _styleAttributes];
    if (v33)
    {
      v34 = v33;
      sub_1000065A8(0, &qword_100AD5A80);
      NSCoding<>.toData.getter();
    }

    sub_1000065A8(0, &qword_100AD5A90);
    v35 = v6;
    NSCoding<>.toData.getter();

    v48 = v6;
    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v48 = v6;
  if (v32)
  {
LABEL_23:
    [v32 horizontalAccuracy];
    [v32 horizontalAccuracy];
  }

LABEL_24:
  v37 = *(v0 + 248);
  v36 = *(v0 + 256);
  v47 = *(v0 + 240);
  v38 = *(v0 + 184);
  v46 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = enum case for AssetSource.suggestionSheet(_:);
  v41 = type metadata accessor for AssetSource();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v38, v40, v41);
  (*(v42 + 56))(v38, 0, 1, v41);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();

  sub_1003A98C8(v49);
  v43 = *(sub_1000F24EC(&qword_100AD6600) + 48);
  *v39 = v46;
  (*(v37 + 32))(&v39[v43], v36, v47);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100396154()
{
  v1 = v0[35];
  v2 = v0[34];
  swift_willThrow();

  v3 = v0[33];
  v4 = v0[20];
  v5 = *(v4 + *(v3 + 40));
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[28];

  v45 = v6;
  sub_1000A0F34(v6);
  sub_1000082B4(v4 + *(v3 + 28), v7, &unk_100AD4790);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = v0[25];
    v12 = v0[21];
    v13 = v12 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v14 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v13 + *(v14 + 24), v11, &qword_100AD3750);
    v15 = type metadata accessor for DateInterval();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_100004F84(v0[25], &qword_100AD3750);
      v17 = 1;
    }

    else
    {
      v20 = v0[25];
      DateInterval.start.getter();
      (*(v16 + 8))(v20, v15);
      v17 = 0;
    }

    v21 = v0[28];
    v19 = *(v9 + 56);
    v19(v0[29], v17, 1, v8);
    if (v10(v21, 1, v8) != 1)
    {
      sub_100004F84(v0[28], &unk_100AD4790);
    }
  }

  else
  {
    v18 = v0[29];
    (*(v9 + 32))(v18, v0[28], v8);
    v19 = *(v9 + 56);
    v19(v18, 0, 1, v8);
  }

  v22 = v0[24];
  v23 = v0[21];
  v24 = v23 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v25 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v24 + *(v25 + 24), v22, &qword_100AD3750);
  v26 = type metadata accessor for DateInterval();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_100004F84(v0[24], &qword_100AD3750);
    v28 = 1;
  }

  else
  {
    v29 = v0[24];
    DateInterval.end.getter();
    (*(v27 + 8))(v29, v26);
    v28 = 0;
  }

  v30 = v0[26];
  v31 = v0[20];
  v19(v0[27], v28, 1, v8);
  static Date.now.getter();
  v19(v30, 0, 1, v8);
  v32 = *(v31 + 32);
  if (v32)
  {
    [*(v31 + 32) coordinate];
    [v32 coordinate];
    [v32 horizontalAccuracy];
    [v32 horizontalAccuracy];
  }

  v34 = v0[31];
  v33 = v0[32];
  v44 = v0[30];
  v35 = v0[23];
  v43 = v0[22];
  v36 = v0[19];
  v37 = enum case for AssetSource.suggestionSheet(_:);
  v38 = type metadata accessor for AssetSource();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v35, v37, v38);
  (*(v39 + 56))(v35, 0, 1, v38);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  sub_1003A98C8(v45);
  v40 = *(sub_1000F24EC(&qword_100AD6600) + 48);
  *v36 = v43;
  (*(v34 + 32))(&v36[v40], v33, v44);

  v41 = v0[1];

  return v41();
}

uint64_t sub_10039677C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000CA14((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
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

uint64_t sub_100396854(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Suggestion(0);
  sub_1000082B4(a1 + v14[7], v10, &qword_100AD1420);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v10, 1, v15) == 1)
  {
    (*(v16 + 16))(v13, a1 + v14[11], v15);
    if (v17(v10, 1, v15) != 1)
    {
      sub_100004F84(v10, &qword_100AD1420);
    }
  }

  else
  {
    (*(v16 + 32))(v13, v10, v15);
  }

  (*(v16 + 56))(v13, 0, 1, v15);
  v18 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  v19 = v26;
  swift_beginAccess();
  sub_100014318(v13, v19 + v18, &qword_100AD1420);
  swift_endAccess();
  sub_1000082B4(a1 + v14[6], v4, &qword_100AD3750);
  v20 = type metadata accessor for DateInterval();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    sub_100004F84(v4, &qword_100AD3750);
    v22 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v21 + 8))(v4, v20);
    v22 = 0;
  }

  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
  v24 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_100014318(v7, v19 + v24, &unk_100AD4790);
  return swift_endAccess();
}

uint64_t sub_100396C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = type metadata accessor for SuggestionImportSession(0);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v6[13] = v10;
  v6[14] = v12;

  return _swift_task_switch(sub_100396D68, v10, v12);
}

uint64_t sub_100396D68()
{
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30F68;
  v8 = *v0[8];
  v0[15] = v8;
  v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v10 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v7 - v11;
    if (!__OFSUB__(v7, v11))
    {
      goto LABEL_5;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v107 = _CocoaArrayWrapper.endIndex.getter();
  v12 = v7 - v107;
  if (__OFSUB__(v7, v107))
  {
    goto LABEL_85;
  }

LABEL_5:
  v145 = v12;
  v13 = v0[6];
  v2 = *v13;
  v4 = v13[1];
  v5 = v13[2];
  v6 = v13[3];
  v1 = v13[4];
  v3 = v1 >> 62;
  v146 = *v13;
  v147 = v1;
  v142 = v8;
  v143 = v1 >> 62;
  if (v5 == 1)
  {
    if (v3)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (v34)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v34 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_13:
        v139 = v9;
        v35 = _swiftEmptyArrayStorage;
        goto LABEL_16;
      }
    }

    v108 = v0[3];
    v109 = type metadata accessor for SuggestionImportSession.MergeConflict(v34);
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
LABEL_119:

    v138 = v0[1];

    return v138();
  }

  v139 = v9;
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[8];
  v0[2] = _swiftEmptyArrayStorage;
  sub_1003A6EF8(v17, v15, type metadata accessor for SuggestionImportSession);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1003A6F60(v15, v20 + v18, type metadata accessor for SuggestionImportSession);
  v21 = v20 + v19;
  *v21 = v2;
  *(v21 + 8) = v4 & 1;
  *(v21 + 16) = v5;
  *(v21 + 24) = v6;
  sub_1003A7574(v2, v4, v5, v6);
  v22 = v6;
  v23 = v5;
  v24 = sub_100049F2C();
  if (v24)
  {
    v25 = v0[7];
    sub_10053256C(v24);
    v27 = v26;

    if ((v25 & 1) == 0)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Encountered contains reflection conflict", v31, 2u);
      }

      v32 = v0[3];

      v33 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      goto LABEL_119;
    }
  }

  v149 = v23;
  v1 = v22;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_100952280;
  *(v36 + 24) = v20;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_100952288;
  *(v8 + 24) = v36;

  v37 = sub_1003E5F28(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = v37[2];
  v38 = v37[3];
  v35 = v37;
  v2 = v3 + 1;
  if (v3 >= v38 >> 1)
  {
    goto LABEL_90;
  }

  while (1)
  {

    *(v35 + 16) = v2;
    v39 = v35 + 16 * v3;
    *(v39 + 32) = &unk_100952290;
    *(v39 + 40) = v8;
    v8 = v142;
    v3 = v143;
    v1 = v147;
LABEL_16:
    v0[2] = v35;
    v148 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v38 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v3)
    {
LABEL_86:
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = _swiftEmptyArrayStorage;
    v140 = v6;
    v141 = v4;
    v144 = v5;
    if (!v35)
    {
      v42 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }

    if (v35 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_90:
    v35 = sub_1003E5F28((v38 > 1), v2, 1, v35);
  }

  v150 = v0[10];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v41 = 0;
    v42 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    do
    {
      v44 = v0[12];
      v45 = v0[8];
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_1003A6EF8(v45, v44, type metadata accessor for SuggestionImportSession);
      v47 = (*(v150 + 80) + 24) & ~*(v150 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      sub_1003A6F60(v44, v48 + v47, type metadata accessor for SuggestionImportSession);
      type metadata accessor for MultiPinMapAsset();
      if (swift_dynamicCastClass() && v148)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = &unk_100952208;
        *(v49 + 24) = v48;
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_100952240;
        *(v50 + 24) = v49;
        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1003E5F28(0, *(v42 + 2) + 1, 1, v42);
        }

        v52 = *(v42 + 2);
        v51 = *(v42 + 3);
        if (v52 >= v51 >> 1)
        {
          v42 = sub_1003E5F28((v51 > 1), v52 + 1, 1, v42);
        }

        swift_unknownObjectRelease();

        *(v42 + 2) = v52 + 1;
        v53 = &v42[2 * v52];
        *(v53 + 4) = &unk_100952248;
        *(v53 + 5) = v50;
      }

      else
      {
        v54 = swift_allocObject();
        *(v54 + 16) = &unk_100952208;
        *(v54 + 24) = v48;
        v55 = swift_allocObject();
        *(v55 + 16) = &unk_100952210;
        *(v55 + 24) = v54;
        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1003E5F4C(0, *(v40 + 2) + 1, 1, v40);
        }

        v57 = *(v40 + 2);
        v56 = *(v40 + 3);
        if (v57 >= v56 >> 1)
        {
          v40 = sub_1003E5F4C((v56 > 1), v57 + 1, 1, v40);
        }

        *(v40 + 2) = v57 + 1;
        v43 = &v40[3 * v57];
        *(v43 + 4) = v46;
        *(v43 + 5) = &unk_100960680;
        *(v43 + 6) = v55;
      }

      ++v41;
    }

    while (v35 != v41);
  }

  else
  {
    v70 = (v1 + 32);
    v42 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    do
    {
      v72 = v0[12];
      v73 = *v70;
      sub_1003A6EF8(v0[8], v72, type metadata accessor for SuggestionImportSession);
      v74 = (*(v150 + 80) + 24) & ~*(v150 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v73;
      sub_1003A6F60(v72, v75 + v74, type metadata accessor for SuggestionImportSession);
      type metadata accessor for MultiPinMapAsset();
      if (swift_dynamicCastClass())
      {
        v76 = v148 == 0;
      }

      else
      {
        v76 = 1;
      }

      if (v76)
      {
        v77 = swift_allocObject();
        *(v77 + 16) = &unk_100952250;
        *(v77 + 24) = v75;
        v78 = swift_allocObject();
        *(v78 + 16) = &unk_100952258;
        *(v78 + 24) = v77;
        v79 = v73;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1003E5F4C(0, *(v40 + 2) + 1, 1, v40);
        }

        v81 = *(v40 + 2);
        v80 = *(v40 + 3);
        if (v81 >= v80 >> 1)
        {
          v40 = sub_1003E5F4C((v80 > 1), v81 + 1, 1, v40);
        }

        *(v40 + 2) = v81 + 1;
        v82 = &v40[3 * v81];
        *(v82 + 4) = v79;
        *(v82 + 5) = &unk_100952260;
        *(v82 + 6) = v78;
      }

      else
      {
        v83 = swift_allocObject();
        *(v83 + 16) = &unk_100952250;
        *(v83 + 24) = v75;
        v84 = swift_allocObject();
        *(v84 + 16) = &unk_100952268;
        *(v84 + 24) = v83;
        v85 = v73;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_1003E5F28(0, *(v42 + 2) + 1, 1, v42);
        }

        v88 = *(v42 + 2);
        v87 = *(v42 + 3);
        if (v88 >= v87 >> 1)
        {
          v42 = sub_1003E5F28((v87 > 1), v88 + 1, 1, v42);
        }

        *(v42 + 2) = v88 + 1;
        v71 = &v42[2 * v88];
        *(v71 + 4) = &unk_100952270;
        *(v71 + 5) = v84;
      }

      ++v70;
      --v35;
    }

    while (v35);
  }

LABEL_36:
  v58 = v145;
  if (v145)
  {
    v59 = v141;
    v60 = v144;
    v61 = v146;
    if (v145 >= 1)
    {
      v62 = *(v40 + 2);
      if (v145 < v62)
      {
        if (v143)
        {
          v63 = _CocoaArrayWrapper.endIndex.getter();
          v62 = *(v40 + 2);
        }

        else
        {
          v63 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v89 = (v62 - v145);
        if ((v0[7] & 4) == 0)
        {

          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 134218240;
            *(v104 + 4) = v63;
            *(v104 + 12) = 2048;
            *(v104 + 14) = v89;
            _os_log_impl(&_mh_execute_header, v102, v103, "Encountered asset overflow conflict: total=%ld overflow=%ld", v104, 0x16u);
          }

          v98 = v0[3];

          *v98 = v63;
          v98[1] = v89;
          v101 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
LABEL_77:
          swift_storeEnumTagMultiPayload();
          (*(*(v101 - 8) + 56))(v98, 0, 1, v101);
LABEL_118:

          goto LABEL_119;
        }

        if (__OFSUB__(v62, v89))
        {
          __break(1u);
        }

        else if ((v145 & 0x8000000000000000) == 0)
        {
          if (v62 >= v145)
          {
            if (v62 == v145)
            {
              goto LABEL_100;
            }

            sub_1006102F0(v40, (v40 + 4), 0, (2 * v145) | 1);
            v106 = v105;
            goto LABEL_99;
          }

          goto LABEL_93;
        }

        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }
  }

  else
  {
    v64 = *(v40 + 2);
    v59 = v141;
    v60 = v144;
    v61 = v146;
    if (v64 >= 2)
    {

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Encountered assets full conflict.", v67, 2u);
      }

      v68 = v0[3];

      v69 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      goto LABEL_118;
    }

    if (v64 == 1)
    {
      v89 = *(v40 + 4);
      v58 = *(v142 + v139);
      if (!(v58 >> 62))
      {
        result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v91 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          goto LABEL_65;
        }

        goto LABEL_96;
      }

LABEL_94:
      result = _CocoaArrayWrapper.endIndex.getter();
      v91 = result - 1;
      if (!__OFSUB__(result, 1))
      {
LABEL_65:
        if ((v58 & 0xC000000000000001) == 0)
        {
          if ((v91 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v91 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v92 = *(v58 + 8 * v91 + 32);
            v93 = v89;
            v94 = v92;
            if ((v0[7] & 2) == 0)
            {
LABEL_69:

              v95 = Logger.logObject.getter();
              v96 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                *v97 = 0;
                _os_log_impl(&_mh_execute_header, v95, v96, "Encountered single asset overflow conflict", v97, 2u);
              }

              v98 = v0[3];

              v99 = OBJC_IVAR____TtC7Journal5Asset_type;
              v100 = type metadata accessor for AssetType();
              (*(*(v100 - 8) + 16))(v98, &v89[v99], v100);

              v101 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
              goto LABEL_77;
            }

LABEL_98:
            v112 = v0[11];
            v111 = v0[12];
            v151 = v94;
            v113 = v60;
            v114 = v0[10];
            v115 = v0[8];
            sub_1000F24EC(&qword_100AE0D90);
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_100940080;
            sub_1003A6EF8(v115, v111, type metadata accessor for SuggestionImportSession);
            v116 = (*(v114 + 80) + 24) & ~*(v114 + 80);
            v117 = (v112 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
            v118 = swift_allocObject();
            *(v118 + 16) = v89;
            v119 = v118 + v116;
            v60 = v113;
            sub_1003A6F60(v111, v119, type metadata accessor for SuggestionImportSession);
            *(v118 + v117) = v151;
            v59 = v141;
            v120 = swift_allocObject();
            *(v120 + 16) = &unk_100952230;
            *(v120 + 24) = v118;
            v61 = v146;
            *(v106 + 32) = v89;
            *(v106 + 40) = &unk_100952238;
            *(v106 + 48) = v120;
            v121 = v89;
LABEL_99:

            v40 = v106;
            goto LABEL_100;
          }

          __break(1u);
          return result;
        }

LABEL_97:
        v110 = v89;

        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        if ((v0[7] & 2) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_98;
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_100:
  v0[16] = v40;
  sub_1003A7574(v61, v59, v60, v140);

  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v76 = v60 == 1;
    v124 = v59;
    v125 = v61;
    v126 = !v76;
    v127 = swift_slowAlloc();
    *v127 = 134218496;
    *(v127 + 4) = v126;
    sub_1003A75B8(v125, v124, v144, v140);
    *(v127 + 12) = 2048;
    *(v127 + 14) = v42[2];
    *(v127 + 22) = 2048;
    *(v127 + 24) = v40[2];
    _os_log_impl(&_mh_execute_header, v122, v123, "Asset merge identified: reflections=%ld, locationMerges=%ld assetAdditions=%ld", v127, 0x20u);
  }

  else
  {
    sub_1003A75B8(v61, v59, v60, v140);
  }

  sub_1006ADDA4(v42);
  v128 = *(v40 + 2);
  if (v128)
  {

    sub_10019A060(0, v128, 0);
    v129 = _swiftEmptyArrayStorage[2];
    v130 = 5;
    do
    {
      v131 = _swiftEmptyArrayStorage[3];
      v152 = *&v40[v130];

      if (*&v129 >= *&v131 >> 1)
      {
        sub_10019A060((*&v131 > 1uLL), *&v129 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v129 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v129 + 4] = v152;
      v130 += 3;
      ++*&v129;
      --v128;
    }

    while (v128);
  }

  else
  {
  }

  sub_1006ADDA4(_swiftEmptyArrayStorage);
  v132 = v0[2];
  v0[17] = v132;
  v133 = v132[2];
  v0[18] = v133;
  if (!v133)
  {

    v136 = v0[3];
    v137 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
    goto LABEL_118;
  }

  v0[19] = 0;
  v134 = v132[4];
  v0[20] = v132[5];

  v153 = (v134 + *v134);
  v135 = swift_task_alloc();
  v0[21] = v135;
  *v135 = v0;
  v135[1] = sub_100398004;

  return v153();
}

uint64_t sub_100398004()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100398124, v3, v2);
}

uint64_t sub_100398124()
{
  v1 = v0[19];
  v2 = v0[18];

  if (v1 + 1 == v2)
  {

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1003982DC;
    v5 = v0[4];
    v4 = v0[5];

    return (sub_10062833C)(v5, v4);
  }

  else
  {
    v7 = v0[19] + 1;
    v0[19] = v7;
    v8 = v0[17] + 16 * v7;
    v9 = *(v8 + 32);
    v0[20] = *(v8 + 40);

    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_100398004;

    return v11();
  }
}

uint64_t sub_1003982DC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1003983FC, v3, v2);
}

uint64_t sub_1003983FC()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003984AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AssetSource();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100398574, 0, 0);
}

uint64_t sub_100398574()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for AssetSource.suggestionSheet(_:), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100398650;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  return sub_100530984(0, 0, v6, v1 & 1, v4, v5, v3);
}

uint64_t sub_100398650()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003987A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AssetPlacement();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100398868, 0, 0);
}

uint64_t sub_100398868()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = **(v0 + 24);
  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v2 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100398968;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return sub_10044C1DC(0, 0, v7, v4, 0, v6, 1);
}

uint64_t sub_100398968()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100398AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for AssetPlacement();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[10] = v8;
  v5[11] = v10;

  return _swift_task_switch(sub_100398BB8, v8, v10);
}

uint64_t sub_100398BB8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = **(v0 + 40);
  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v2 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_100398CC0;
  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_10044C1DC(v10, v8, v9, v5, v4, v7, 1);
}

uint64_t sub_100398CC0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100398E44, v6, v5);
}

uint64_t sub_100398E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100398EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v7 = type metadata accessor for CocoaError.Code();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v8 = type metadata accessor for CancellationError();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[40] = v10;
  v5[41] = v12;

  return _swift_task_switch(sub_100399090, v10, v12);
}

uint64_t sub_100399090()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[24];
  static Date.now.getter();
  v6 = *(v4 + 16);
  v0[42] = v6;
  v0[43] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = [objc_allocWithZone(NSFileCoordinator) init];
  v0[44] = v7;
  v8 = swift_task_alloc();
  v0[45] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[46] = v9;
  *(v9 + 16) = v7;
  v10 = v7;
  v11 = swift_task_alloc();
  v0[47] = v11;
  v12 = type metadata accessor for Asset();
  *v11 = v0;
  v11[1] = sub_100399204;
  v13 = v0[22];
  v14 = v0[23];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 18, &unk_100952188, v8, sub_1003A7230, v9, v13, v14, v12);
}

uint64_t sub_100399204()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10039B140;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100399328;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100399328()
{
  v87 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 208);
  v85 = *(v0 + 200);
  v6 = *(v0 + 144);
  *(v0 + 392) = v6;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  *(v0 + 400) = v7;
  v9 = *(v3 + 8);
  *(v0 + 408) = v9;
  *(v0 + 416) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = type metadata accessor for SuggestionImportSession(0);
  *(v0 + 424) = v10;
  sub_100396854(v5 + *(v10 + 20));
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D50;
  *(inited + 32) = v6;
  v12 = v6;
  sub_10037DFA0(v85, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  static Date.now.getter();
  v9(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v13 = *v5;
  *(v0 + 432) = *v5;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (*(v0 + 552))
  {
    v14 = "ace placeholder asset.";
    LOBYTE(v15) = 1;
    v16 = 0xD000000000000047;
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = v17 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
    v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    v20 = *(v13 + v19);
    v21 = swift_task_alloc();
    *(v21 + 16) = v18;

    v15 = sub_100068DDC(sub_100068DC0, v21, v20);
    *(v0 + 440) = v15;

    if (v15)
    {
      v22 = swift_task_alloc();
      *(v0 + 448) = v22;
      *v22 = v0;
      v22[1] = sub_100399D70;
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);

      return sub_100566FD4(v24, v23, v15, v12);
    }

    v14 = "ivate.swiftinterface";
    v16 = 0xD00000000000004FLL;
  }

  v26 = *(v0 + 352);
  v27 = v14 | 0x8000000000000000;
  sub_1003A7240();
  v28 = swift_allocError();
  *v29 = v15;
  *(v29 + 8) = v16;
  *(v29 + 16) = v27;
  swift_willThrow();

  *(v0 + 488) = v8;
  *(v0 + 472) = v28;
  *(v0 + 480) = 0xBFF0000000000000;
  *(v0 + 152) = v28;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 248);
    v30 = *(v0 + 256);
    v32 = *(v0 + 240);

    (*(v31 + 8))(v30, v32);
LABEL_11:

    v37 = *(v0 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v38 = *(v37 + 8);
LABEL_12:
    v39 = *(v0 + 312);
    v40 = *(v0 + 264);
    v38(*(v0 + 304), v40);
    v38(v39, v40);

    v41 = *(v0 + 8);

    return v41();
  }

  v33 = *(v0 + 224);
  v34 = *(v0 + 232);
  v35 = *(v0 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code);
  v36 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v33 + 8))(v34, v35);
  if (v36)
  {
    goto LABEL_11;
  }

  *(v0 + 160) = v28;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v42 = *(v0 + 56);
    v43 = *(v0 + 64);
    v44 = *(v0 + 72);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 168) = v28;
    _print_unlocked<A, B>(_:_:)();
    v42 = 0;
    v43 = *(v0 + 128);
    v44 = *(v0 + 136);
  }

  *(v0 + 496) = v43;
  *(v0 + 504) = v44;
  *(v0 + 554) = v42;
  v45 = *(v0 + 208);
  v46 = *(v0 + 192);
  v47 = *v45;
  *(v0 + 512) = *v45;
  v48 = v46 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v49 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v50 = *(v47 + v49);
  v51 = swift_task_alloc();
  *(v51 + 16) = v48;

  v52 = sub_100068DDC(sub_100069618, v51, v50);
  *(v0 + 520) = v52;

  if (!v52)
  {
    (*(v0 + 336))(*(v0 + 280), *(v0 + 312), *(v0 + 264));

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = *(v0 + 496);
      v63 = *(v0 + 504);
      v65 = *(v0 + 480);
      v66 = *(v0 + 488);
      v68 = *(v0 + 272);
      v67 = *(v0 + 280);
      v69 = *(v0 + 264);
      v70 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v70 = 136315906;

      v71 = sub_100008458(v64, v63, v86);

      *(v70 + 4) = v71;
      *(v70 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = v69;
      v76 = *(v68 + 8);
      v76(v67, v75);
      v77 = sub_100008458(v72, v74, v86);

      *(v70 + 14) = v77;
      *(v70 + 22) = 2048;
      *(v70 + 24) = v66;
      *(v70 + 32) = 2048;
      *(v70 + 34) = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v70, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v79 = *(v0 + 272);
      v78 = *(v0 + 280);
      v80 = *(v0 + 264);

      v76 = *(v79 + 8);
      v76(v78, v80);
    }

    v82 = *(v0 + 496);
    v81 = *(v0 + 504);
    v83 = *(v0 + 554);
    sub_1003A7240();
    swift_allocError();
    *v84 = v83;
    *(v84 + 8) = v82;
    *(v84 + 16) = v81;
    swift_willThrow();

    v38 = v76;
    goto LABEL_12;
  }

  sub_1000F24EC(&unk_100AE1A40);
  v53 = type metadata accessor for UUID();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100940080;
  (*(v54 + 16))(v56 + v55, v52 + OBJC_IVAR____TtC7Journal5Asset_id, v53);
  v57 = sub_1004960D4(v56);
  *(v0 + 528) = v57;
  swift_setDeallocating();
  (*(v54 + 8))(v56 + v55, v53);
  swift_deallocClassInstance();
  v58 = swift_task_alloc();
  *(v0 + 536) = v58;
  *v58 = v0;
  v58[1] = sub_10039AB30;
  v60 = *(v0 + 176);
  v59 = *(v0 + 184);

  return sub_10056824C(v60, v59, v57);
}

uint64_t sub_100399D70(char a1)
{
  v2 = *v1;
  *(*v1 + 553) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return _swift_task_switch(sub_100399E98, v4, v3);
}

uint64_t sub_100399E98()
{
  v75 = v0;
  v1 = *(v0 + 553);
  v2 = *(v0 + 408);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  *(v0 + 456) = v5;
  v2(v3, v4);
  if (v1 == 1)
  {

    v7 = swift_task_alloc();
    *(v0 + 464) = v7;
    *v7 = v0;
    v7[1] = sub_10039A73C;
    v8 = *(v0 + 176);

    return sub_10062833C(v8);
  }

  v10 = *(v0 + 440);
  v11 = *(v0 + 392);
  v12 = *(v0 + 352);
  sub_1003A7240();
  v13 = swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0xD000000000000046;
  *(v14 + 16) = 0x80000001008ED0F0;
  swift_willThrow();

  v15 = *(v0 + 400);
  *(v0 + 480) = v6;
  *(v0 + 488) = v15;
  *(v0 + 472) = v13;
  *(v0 + 152) = v13;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 240);

    (*(v17 + 8))(v16, v18);
LABEL_8:

    v23 = *(v0 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v24 = *(v23 + 8);
LABEL_9:
    v25 = *(v0 + 312);
    v26 = *(v0 + 264);
    v24(*(v0 + 304), v26);
    v24(v25, v26);

    v27 = *(v0 + 8);

    return v27();
  }

  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code);
  v22 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v20 + 8))(v19, v21);
  if (v22)
  {
    goto LABEL_8;
  }

  *(v0 + 160) = v13;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    v30 = *(v0 + 72);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 168) = v13;
    _print_unlocked<A, B>(_:_:)();
    v28 = 0;
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
  }

  *(v0 + 496) = v29;
  *(v0 + 504) = v30;
  *(v0 + 554) = v28;
  v31 = *(v0 + 208);
  v32 = *(v0 + 192);
  v33 = *v31;
  *(v0 + 512) = *v31;
  v34 = v32 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v36 = *(v33 + v35);
  v37 = swift_task_alloc();
  *(v37 + 16) = v34;

  v38 = sub_100068DDC(sub_100069618, v37, v36);
  *(v0 + 520) = v38;

  if (!v38)
  {
    v47 = *(v0 + 336);
    v48 = *(v0 + 312);
    v49 = *(v0 + 280);
    v50 = *(v0 + 264);
    type metadata accessor for SuggestionImportSession(0);
    v47(v49, v48, v50);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v54 = *(v0 + 496);
      v53 = *(v0 + 504);
      v55 = *(v0 + 480);
      v56 = *(v0 + 488);
      v58 = *(v0 + 272);
      v57 = *(v0 + 280);
      v59 = *(v0 + 264);
      v60 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v60 = 136315906;

      v61 = sub_100008458(v54, v53, v74);

      *(v60 + 4) = v61;
      *(v60 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v73 = *(v58 + 8);
      v73(v57, v59);
      v65 = sub_100008458(v62, v64, v74);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2048;
      *(v60 + 24) = v56;
      *(v60 + 32) = 2048;
      *(v60 + 34) = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v60, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v67 = *(v0 + 272);
      v66 = *(v0 + 280);
      v68 = *(v0 + 264);

      v73 = *(v67 + 8);
      v73(v66, v68);
    }

    v70 = *(v0 + 496);
    v69 = *(v0 + 504);
    v71 = *(v0 + 554);
    swift_allocError();
    *v72 = v71;
    *(v72 + 8) = v70;
    *(v72 + 16) = v69;
    swift_willThrow();

    v24 = v73;
    goto LABEL_9;
  }

  sub_1000F24EC(&unk_100AE1A40);
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100940080;
  (*(v40 + 16))(v42 + v41, v38 + OBJC_IVAR____TtC7Journal5Asset_id, v39);
  v43 = sub_1004960D4(v42);
  *(v0 + 528) = v43;
  swift_setDeallocating();
  (*(v40 + 8))(v42 + v41, v39);
  swift_deallocClassInstance();
  v44 = swift_task_alloc();
  *(v0 + 536) = v44;
  *v44 = v0;
  v44[1] = sub_10039AB30;
  v46 = *(v0 + 176);
  v45 = *(v0 + 184);

  return sub_10056824C(v46, v45, v43);
}

uint64_t sub_10039A73C()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_10039A85C, v3, v2);
}

uint64_t sub_10039A85C()
{
  v29 = v0;
  (*(v0 + 336))(*(v0 + 288), *(v0 + 312), *(v0 + 264));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 456);
    v4 = *(v0 + 408);
    v5 = *(v0 + 400);
    v23 = *(v0 + 352);
    v24 = *(v0 + 440);
    v27 = *(v0 + 312);
    v25 = *(v0 + 304);
    v26 = *(v0 + 392);
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315650;
    sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v4(v6, v7);
    v13 = sub_100008458(v10, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Replaced placeholder with fetched photo asset. startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v8, 0x20u);
    sub_10000BA7C(v9);

    v4(v25, v7);
    v4(v27, v7);
  }

  else
  {
    v14 = *(v0 + 440);
    v15 = *(v0 + 408);
    v16 = *(v0 + 392);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v19 = *(v0 + 288);
    v20 = *(v0 + 264);

    v15(v19, v20);
    v15(v18, v20);
    v15(v17, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10039AB30()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 544) = v3;
  *v3 = v2;
  v3[1] = sub_10039ACD4;
  v4 = *(v1 + 176);

  return sub_10062833C(v4);
}

uint64_t sub_10039ACD4()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_10039ADF4, v3, v2);
}

uint64_t sub_10039ADF4()
{
  v33 = v0;

  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  type metadata accessor for SuggestionImportSession(0);
  v1(v3, v2, v4);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 496);
    v7 = *(v0 + 504);
    v9 = *(v0 + 480);
    v10 = *(v0 + 488);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    v14 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v14 = 136315906;

    v15 = sub_100008458(v8, v7, v32);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v31 = *(v12 + 8);
    v31(v11, v13);
    v19 = sub_100008458(v16, v18, v32);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    *(v14 + 32) = 2048;
    *(v14 + 34) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);

    v31 = *(v21 + 8);
    v31(v20, v22);
  }

  v24 = *(v0 + 496);
  v23 = *(v0 + 504);
  v25 = *(v0 + 554);
  sub_1003A7240();
  swift_allocError();
  *v26 = v25;
  *(v26 + 8) = v24;
  *(v26 + 16) = v23;
  swift_willThrow();

  v27 = *(v0 + 312);
  v28 = *(v0 + 264);
  v31(*(v0 + 304), v28);
  v31(v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10039B140()
{
  v69 = v0;
  v1 = *(v0 + 352);

  v2 = *(v0 + 384);
  *(v0 + 152) = v2;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v0 + 480) = _Q0;
  *(v0 + 472) = v2;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);

    (*(v9 + 8))(v8, v10);
LABEL_4:

    v15 = *(v0 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v16 = *(v15 + 8);
LABEL_5:
    v17 = *(v0 + 312);
    v18 = *(v0 + 264);
    v16(*(v0 + 304), v18);
    v16(v17, v18);

    v19 = *(v0 + 8);

    return v19();
  }

  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code);
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v12 + 8))(v11, v13);
  if (v14)
  {
    goto LABEL_4;
  }

  *(v0 + 160) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 168) = v2;
    _print_unlocked<A, B>(_:_:)();
    v21 = 0;
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
  }

  *(v0 + 496) = v22;
  *(v0 + 504) = v23;
  *(v0 + 554) = v21;
  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *v24;
  *(v0 + 512) = *v24;
  v27 = v25 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v28 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v29 = *(v26 + v28);
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;

  v31 = sub_100068DDC(sub_100069618, v30, v29);
  *(v0 + 520) = v31;

  if (!v31)
  {
    v40 = *(v0 + 336);
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    v43 = *(v0 + 264);
    type metadata accessor for SuggestionImportSession(0);
    v40(v42, v41, v43);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v47 = *(v0 + 496);
      v46 = *(v0 + 504);
      v48 = *(v0 + 480);
      v49 = *(v0 + 488);
      v51 = *(v0 + 272);
      v50 = *(v0 + 280);
      v52 = *(v0 + 264);
      v53 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v53 = 136315906;

      v54 = sub_100008458(v47, v46, v68);

      *(v53 + 4) = v54;
      *(v53 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = v52;
      v59 = *(v51 + 8);
      v59(v50, v58);
      v60 = sub_100008458(v55, v57, v68);

      *(v53 + 14) = v60;
      *(v53 + 22) = 2048;
      *(v53 + 24) = v49;
      *(v53 + 32) = 2048;
      *(v53 + 34) = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v53, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 272);
      v61 = *(v0 + 280);
      v63 = *(v0 + 264);

      v59 = *(v62 + 8);
      v59(v61, v63);
    }

    v65 = *(v0 + 496);
    v64 = *(v0 + 504);
    v66 = *(v0 + 554);
    sub_1003A7240();
    swift_allocError();
    *v67 = v66;
    *(v67 + 8) = v65;
    *(v67 + 16) = v64;
    swift_willThrow();

    v16 = v59;
    goto LABEL_5;
  }

  sub_1000F24EC(&unk_100AE1A40);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100940080;
  (*(v33 + 16))(v35 + v34, v31 + OBJC_IVAR____TtC7Journal5Asset_id, v32);
  v36 = sub_1004960D4(v35);
  *(v0 + 528) = v36;
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  v37 = swift_task_alloc();
  *(v0 + 536) = v37;
  *v37 = v0;
  v37[1] = sub_10039AB30;
  v39 = *(v0 + 176);
  v38 = *(v0 + 184);

  return sub_10056824C(v39, v38, v36);
}

uint64_t sub_10039B8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10039B8F8, 0, 0);
}

uint64_t sub_10039B8F8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for Asset();
  *v2 = v0;
  v2[1] = sub_10039B9F4;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001DLL, 0x80000001008ED190, sub_1003A72EC, v1, v3);
}

uint64_t sub_10039B9F4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10039BB30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}