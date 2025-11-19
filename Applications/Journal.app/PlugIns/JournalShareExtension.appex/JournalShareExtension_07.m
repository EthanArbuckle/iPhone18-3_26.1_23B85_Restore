uint64_t sub_1000B3824()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[28];
    v8 = v2[29];

    return _swift_task_switch(sub_1000B39DC, v7, v8);
  }
}

uint64_t sub_1000B39DC()
{
  v180 = v0;
  v1 = *(v0 + 360);

LABEL_2:
  v2 = *(v0 + 328);
  sub_1000064C0(*(v0 + 336), *(v0 + 344));

  while (1)
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 272) + 1;
    sub_10000FFB4(*(v0 + 184), &qword_10014EBD0);
    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 272) + 1;
    *(v0 + 272) = v9;
    v10 = *(v0 + 240);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_100101CA4();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 280) = v11;
    v12 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 216);
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v16 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
        v16 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_1000328DC(v14, v16);
      v15 = 0x6567616D69;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1000328DC(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F65646976;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1000328DC(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F69647561;
    }

    else
    {
      v17 = *(v0 + 216);

      v18 = sub_100007210(&qword_10014CE88);
      sub_1000328DC(v17 + *(v18 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x726568746FLL;
    }

    v176 = v15;
    v19 = *(v11 + 16);
    sub_1000329A0(v11 + v12, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 208);
    v175 = v19;
    if (v20 > 1)
    {
      if ((v20 - 2) >= 2)
      {
        v22 = *(v0 + 208);

        v21 = v22 + *(sub_100007210(&qword_10014CE88) + 48);
      }

LABEL_23:
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      sub_10003293C(v21, v24);
      sub_1000329A0(v24, v23, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v25 = swift_getEnumCaseMultiPayload();
      v26 = *(v0 + 184);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      if (v25 == 1)
      {
        v30 = *(v0 + 88);
        v29 = *(v0 + 96);
        sub_1000328DC(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v29 + 32))(v26, v28, v30);
      }

      else
      {
        v31 = *(v0 + 136);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);
        sub_1001001D4();
        sub_100100184();

        (*(v31 + 8))(v32, v33);
        sub_1000328DC(v27, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v34 = 0;
      goto LABEL_27;
    }

    if (!v20)
    {
      goto LABEL_23;
    }

    sub_1000328DC(v21, type metadata accessor for AssetAttachment.AssetType);
    v34 = 1;
LABEL_27:
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 88);
    v37 = *(v0 + 96);
    (*(v37 + 56))(v36, v34, 1, v38);
    sub_100010014(v36, v35, &qword_10014EBD0);
    if ((*(v37 + 48))(v35, 1, v38) == 1)
    {
      v39 = *(v0 + 200);
      sub_10000FFB4(*(v0 + 176), &qword_10014EBD0);
      sub_1000329A0(v11 + v12, v39, type metadata accessor for AssetAttachment.AssetType);
      v40 = swift_getEnumCaseMultiPayload();
      v41 = *(v0 + 200);
      if (v40 == 1)
      {
        v42 = *v41;
        *(v0 + 328) = *v41;
        v43 = UIImageHEICRepresentation(v42);
        if (v43)
        {
          v44 = v43;
          v45 = sub_1000FF564();
          v47 = v46;

          *(v0 + 336) = v45;
          *(v0 + 344) = v47;
          v48 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
          v49 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

          v50 = sub_1000C26CC(v45, v47, v48, v49, 1667851624, 0xE400000000000000);
          v52 = v51;

          *(v0 + 352) = v52;
          if (v52)
          {
            v144 = *(v0 + 48);
            v145 = *(v144 + *(v0 + 256));
            *(v0 + 360) = v145;
            if (!v145 || (v146 = *(v144 + *(v0 + 264)), (*(v0 + 368) = v146) == 0))
            {

              if (qword_10014B858 != -1)
              {
                swift_once();
              }

              v147 = *(v0 + 48);
              v148 = sub_100100AE4();
              sub_100003D38(v148, qword_10014FE40);
              v149 = v147;
              v150 = sub_100100AC4();
              v151 = sub_1001015B4();

              if (os_log_type_enabled(v150, v151))
              {
                v152 = *(v0 + 48);
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                *v153 = 138412290;
                *(v153 + 4) = v152;
                *v154 = v152;
                v155 = v152;
                _os_log_impl(&_mh_execute_header, v150, v151, "%@ (addAttachmentToCoreData) managed objects aren't set", v153, 0xCu);
                sub_10000FFB4(v154, &unk_10014D660);
              }

              goto LABEL_2;
            }

            v166 = *(v0 + 392);
            v167 = *(v0 + 64);
            v168 = *(v0 + 72);
            v169 = *(v0 + 56);
            v170 = swift_allocObject();
            *(v0 + 376) = v170;
            *(v170 + 16) = v146;
            *(v170 + 24) = v175;
            *(v170 + 32) = v176;
            *(v170 + 40) = 0xE500000000000000;
            *(v170 + 48) = v50;
            *(v170 + 56) = v52;
            *(v170 + 64) = 1;
            *(v170 + 72) = v145;
            (*(v167 + 104))(v168, v166, v169);
            v171 = v145;
            v172 = v146;

            v173 = v172;
            v171;

            v174 = swift_task_alloc();
            *(v0 + 384) = v174;
            *v174 = v0;
            v174[1] = sub_1000B3824;
            goto LABEL_82;
          }

          if (qword_10014B858 != -1)
          {
            swift_once();
          }

          v53 = *(v0 + 48);
          v54 = sub_100100AE4();
          sub_100003D38(v54, qword_10014FE40);
          v55 = v53;
          v56 = sub_100100AC4();
          v57 = sub_1001015B4();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = *(v0 + 48);
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412290;
            *(v59 + 4) = v58;
            *v60 = v58;
            v61 = v58;
            _os_log_impl(&_mh_execute_header, v56, v57, "%@.saveAttachments error, failed to save image data", v59, 0xCu);
            sub_10000FFB4(v60, &unk_10014D660);

            sub_1000064C0(v45, v47);
          }

          else
          {

            sub_1000064C0(v45, v47);
          }
        }

        else
        {

          if (qword_10014B858 != -1)
          {
            swift_once();
          }

          v108 = *(v0 + 48);
          v109 = sub_100100AE4();
          sub_100003D38(v109, qword_10014FE40);
          v110 = v108;
          v81 = sub_100100AC4();
          v111 = sub_1001015B4();

          if (os_log_type_enabled(v81, v111))
          {
            v112 = *(v0 + 48);
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *v113 = 138412290;
            *(v113 + 4) = v112;
            *v114 = v112;
            v115 = v112;
            _os_log_impl(&_mh_execute_header, v81, v111, "%@.saveAttachments error, imageData is nil", v113, 0xCu);
            sub_10000FFB4(v114, &unk_10014D660);

LABEL_57:
          }

          else
          {
          }
        }
      }

      else
      {

        sub_1000328DC(v41, type metadata accessor for AssetAttachment.AssetType);
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 48);
        v79 = sub_100100AE4();
        sub_100003D38(v79, qword_10014FE40);
        v80 = v78;
        v81 = sub_100100AC4();
        v82 = sub_1001015B4();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = *(v0 + 48);
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v84 = 138412290;
          *(v84 + 4) = v83;
          *v85 = v83;
          v86 = v83;
          _os_log_impl(&_mh_execute_header, v81, v82, "%@.saveAttachments error, nothing to save", v84, 0xCu);
          sub_10000FFB4(v85, &unk_10014D660);

          goto LABEL_57;
        }
      }
    }

    else
    {
      v62 = *(v0 + 120);
      (*(*(v0 + 96) + 32))(v62, *(v0 + 176), *(v0 + 88));

      v63 = sub_1000C1A74(v62);
      v65 = v64;

      *(v0 + 288) = v65;
      if (v65)
      {
        v66 = *(v0 + 48);
        v67 = *(v66 + *(v0 + 256));
        *(v0 + 296) = v67;
        if (v67)
        {
          v68 = *(v66 + *(v0 + 264));
          *(v0 + 304) = v68;
          if (v68)
          {
            v158 = *(v0 + 392);
            v159 = *(v0 + 80);
            v161 = *(v0 + 56);
            v160 = *(v0 + 64);
            v162 = swift_allocObject();
            *(v0 + 312) = v162;
            *(v162 + 16) = v68;
            *(v162 + 24) = v175;
            *(v162 + 32) = v176;
            *(v162 + 40) = 0xE500000000000000;
            *(v162 + 48) = v63;
            *(v162 + 56) = v65;
            *(v162 + 64) = 1;
            *(v162 + 72) = v67;
            (*(v160 + 104))(v159, v158, v161);
            v163 = v67;
            v164 = v68;
            v163;

            v165 = swift_task_alloc();
            *(v0 + 320) = v165;
            *v165 = v0;
            v165[1] = sub_1000B21B8;
LABEL_82:

            return NSManagedObjectContext.perform<A>(schedule:_:)();
          }
        }

        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 48);
        v70 = sub_100100AE4();
        sub_100003D38(v70, qword_10014FE40);
        v71 = v69;
        v72 = sub_100100AC4();
        v73 = sub_1001015B4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v0 + 48);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 138412290;
          *(v75 + 4) = v74;
          *v76 = v74;
          v77 = v74;
          _os_log_impl(&_mh_execute_header, v72, v73, "%@ (addAttachmentToCoreData) managed objects aren't set", v75, 0xCu);
          sub_10000FFB4(v76, &unk_10014D660);
        }
      }

      else
      {

        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v87 = *(v0 + 112);
        v88 = *(v0 + 120);
        v90 = *(v0 + 88);
        v89 = *(v0 + 96);
        v91 = *(v0 + 48);
        v92 = sub_100100AE4();
        sub_100003D38(v92, qword_10014FE40);
        (*(v89 + 16))(v87, v88, v90);
        v93 = v91;
        v94 = sub_100100AC4();
        v95 = sub_1001015B4();

        v96 = os_log_type_enabled(v94, v95);
        v97 = *(v0 + 112);
        v98 = *(v0 + 88);
        v99 = (*(v0 + 96) + 8);
        if (v96)
        {
          v100 = *(v0 + 48);
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v179 = v177;
          *v101 = 138412546;
          *(v101 + 4) = v100;
          *v102 = v100;
          *(v101 + 12) = 2080;
          sub_1000B7CCC(&qword_10014EEC0, &type metadata accessor for URL);
          v103 = v100;
          v104 = sub_100101E44();
          v106 = v105;
          (*v99)(v97, v98);
          v107 = sub_10007A774(v104, v106, &v179);

          *(v101 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v94, v95, "%@.saveAttachments error, failed to save file from sourceURL: %s", v101, 0x16u);
          sub_10000FFB4(v102, &unk_10014D660);

          sub_10001100C(v177);
        }

        else
        {

          (*v99)(v97, v98);
        }
      }

      if (qword_10014B710 != -1)
      {
        swift_once();
      }

      v117 = *(v0 + 96);
      v116 = *(v0 + 104);
      v118 = *(v0 + 88);
      sub_100003D38(*(v0 + 128), qword_100158698);
      sub_1001001C4();
      v119 = sub_1000FF434();
      v121 = v120;
      v122 = *(v117 + 8);
      v122(v116, v118);
      sub_1000FF434();
      v182._countAndFlagsBits = v119;
      v182._object = v121;
      v123 = sub_100101114(v182);

      if (!v123)
      {
        v3 = *(v0 + 120);
        v4 = *(v0 + 88);

        v5 = v3;
        v6 = v4;
        goto LABEL_4;
      }

      v124 = [objc_opt_self() defaultManager];
      sub_1000FF474(v125);
      v127 = v126;
      *(v0 + 40) = 0;
      v128 = [v124 removeItemAtURL:v126 error:v0 + 40];

      v129 = *(v0 + 40);
      if (v128)
      {
        v130 = *(v0 + 120);
        v131 = *(v0 + 88);
        v132 = v129;

        v122(v130, v131);
      }

      else
      {
        v133 = v129;
        sub_1000FF334();

        swift_willThrow();
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v134 = sub_100100AE4();
        sub_100003D38(v134, qword_10014FE40);
        swift_errorRetain();
        v135 = sub_100100AC4();
        v136 = sub_1001015B4();

        v137 = os_log_type_enabled(v135, v136);
        v138 = *(v0 + 120);
        v139 = *(v0 + 88);
        if (v137)
        {
          v178 = *(v0 + 88);
          v140 = swift_slowAlloc();
          v141 = v138;
          v142 = swift_slowAlloc();
          *v140 = 138412290;
          swift_errorRetain();
          v143 = _swift_stdlib_bridgeErrorToNSError();
          *(v140 + 4) = v143;
          *v142 = v143;
          _os_log_impl(&_mh_execute_header, v135, v136, "Error when removing attachment source file: %@", v140, 0xCu);
          sub_10000FFB4(v142, &unk_10014D660);

          v5 = v141;
          v6 = v178;
        }

        else
        {

          v5 = v138;
          v6 = v139;
        }

LABEL_4:
        v122(v5, v6);
      }
    }
  }

  v156 = *(v0 + 8);

  return v156();
}

uint64_t sub_1000B4EBC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_100100AE4();
  sub_100003CD4(v7, a2);
  v8 = sub_100003D38(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100003D38(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_1000B4F84()
{
  v0 = sub_1000FF874();
  sub_100003CD4(v0, qword_10014FA90);
  sub_100003D38(v0, qword_10014FA90);
  return sub_1000FF864();
}

void sub_1000B4FD0(void *a1, double a2)
{
  if (qword_10014B818 != -1)
  {
    swift_once();
  }

  v4 = sub_100100AE4();
  sub_100003D38(v4, qword_10014FA60);
  v5 = a1;
  oslog = sub_100100AC4();
  v6 = sub_1001015D4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;
    sub_1000FF874();
    sub_1000B7CCC(&qword_10014C018, &type metadata accessor for UUID);
    v10 = v5;
    v11 = sub_100101E44();
    v13 = sub_10007A774(v11, v12, &v15);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    *(v7 + 24) = CFAbsoluteTimeGetCurrent() - a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "EntryViewModel.addAsset(%@) [assetId: %s] %f seconds", v7, 0x20u);
    sub_10000FFB4(v8, &unk_10014D660);

    sub_10001100C(v9);
  }
}

uint64_t sub_1000B51FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 340) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  sub_100007210(&qword_10014CD08);
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_1000FF874();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_1001007D4();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_100101824();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v11 = sub_1000FFD44();
  *(v6 + 200) = v11;
  v12 = *(v11 - 8);
  *(v6 + 208) = v12;
  *(v6 + 216) = *(v12 + 64);
  *(v6 + 224) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = sub_100101284();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v6 + 232) = v13;
  *(v6 + 240) = v15;

  return _swift_task_switch(sub_1000B5470, v13, v15);
}

uint64_t sub_1000B5470()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v15 = *(v0 + 192);
  v5 = *(v0 + 88);
  v14 = *(v0 + 340);
  v6 = *(v0 + 80);
  *(v0 + 248) = *(*(v0 + 96) + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v5, v3);
  v8 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v14;
  (*(v2 + 32))(v9 + v8, v1, v3);
  *(v0 + 336) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v4 + 104);
  *(v0 + 264) = v10;
  *(v0 + 272) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v15);
  v11 = v6;
  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  *v12 = v0;
  v12[1] = sub_1000B5648;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B5648()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[24];
    v5 = v2[21];
    v6 = v2[22];
    v7 = *(v6 + 8);
    v2[36] = v7;
    v2[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[29];
    v9 = v2[30];

    return _swift_task_switch(sub_1000B5798, v8, v9);
  }
}

uint64_t sub_1000B5798()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_1000B5844;
  v2 = *(v0 + 64);

  return sub_1000B09C0(v2);
}

uint64_t sub_1000B5844()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1000B5964, v3, v2);
}

uint64_t sub_1000B5964()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 312) = v6;
  *(v6 + 16) = v5;
  v1(v3, v2, v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_1000B5A84;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B5A84()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 288))(*(v2 + 184), *(v2 + 168));

    v4 = *(v2 + 232);
    v5 = *(v2 + 240);

    return _swift_task_switch(sub_1000B5BD4, v4, v5);
  }
}

uint64_t sub_1000B5BD4()
{
  v61 = v0;
  v1 = v0[12];
  v2 = v0[10] + OBJC_IVAR____TtC21JournalShareExtension5Asset_id;
  v3 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  v6 = sub_1000B8040(sub_1000B7C90, v5, v4);

  if (v6)
  {
    if (qword_10014B818 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v7 = sub_100100AE4();
      sub_100003D38(v7, qword_10014FA60);
      v8 = v6;

      v9 = sub_100100AC4();
      v10 = sub_1001015B4();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_26;
      }

      v50 = v10;
      log = v9;
      v11 = v0[19];
      v12 = v0[20];
      v53 = v0;
      v13 = v0[18];
      v14 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v14 = 136446722;
      (*(v11 + 16))(v12, v8 + OBJC_IVAR____TtC21JournalShareExtension5Asset_type, v13);
      sub_1000B7CCC(&qword_10014C038, &type metadata accessor for AssetType);
      v15 = sub_100101E44();
      v17 = v16;
      (*(v11 + 8))(v12, v13);
      v18 = sub_10007A774(v15, v17, v60);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = v8;
      v20 = [v19 description];
      v21 = sub_100100FD4();
      v23 = v22;

      v48 = v19;
      v6 = sub_10007A774(v21, v23, v60);

      *(v14 + 14) = v6;
      buf = v14;
      *(v14 + 22) = 2082;
      v24 = *&v1[v3];
      v25 = v24 >> 62 ? sub_100101DA4() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v25)
      {
        break;
      }

      v3 = 0;
      v26 = v0[15];
      v59 = v24 & 0xC000000000000001;
      v57 = (v26 + 16);
      v58 = v24 & 0xFFFFFFFFFFFFFF8;
      v55 = (v26 + 48);
      v56 = (v26 + 56);
      v52 = v26;
      v27 = _swiftEmptyArrayStorage;
      v54 = v24;
      v1 = (v26 + 32);
      while (1)
      {
        if (v59)
        {
          v28 = sub_100101CA4();
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_30;
          }

          v28 = *(v24 + 8 * v3 + 32);
        }

        v29 = v28;
        v6 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v31 = v0[13];
        v30 = v0[14];
        (*v57)(v31, &v28[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v30);
        (*v56)(v31, 0, 1, v30);

        if ((*v55)(v31, 1, v30) == 1)
        {
          sub_10000FFB4(v0[13], &qword_10014CD08);
        }

        else
        {
          v33 = v0[16];
          v32 = v0[17];
          v34 = v0[14];
          v35 = *v1;
          (*v1)(v32, v0[13], v34);
          v35(v33, v32, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_10000F1E4(0, *(v27 + 2) + 1, 1, v27);
          }

          v37 = *(v27 + 2);
          v36 = *(v27 + 3);
          v0 = v53;
          if (v37 >= v36 >> 1)
          {
            v27 = sub_10000F1E4(v36 > 1, v37 + 1, 1, v27);
          }

          v38 = v53[16];
          v39 = v53[14];
          *(v27 + 2) = v37 + 1;
          v35(v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, v38, v39);
        }

        v24 = v54;
        ++v3;
        if (v6 == v25)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_25:

    v42 = sub_1001011E4();
    v44 = v43;

    v45 = sub_10007A774(v42, v44, v60);

    *(buf + 3) = v45;
    _os_log_impl(&_mh_execute_header, log, v50, "Asset already exists in allAssets. Won't add %{public}s asset with id %{public}s. AllAssets: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v40 = v0[10];
    swift_beginAccess();
    v41 = v40;
    sub_1001011B4();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    sub_100101234();
    swift_endAccess();
    sub_1000EAD60();
  }

LABEL_26:

  v46 = v0[1];

  return v46();
}

void sub_1000B62DC(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v119 = a4;
  LODWORD(v118) = a3;
  v6 = sub_100007210(&qword_10014FAA8);
  __chkstk_darwin(v6 - 8);
  v109 = &v98 - v7;
  v8 = sub_100100284();
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = __chkstk_darwin(v8);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v10;
  __chkstk_darwin(v9);
  v107 = &v98 - v11;
  v112 = sub_100100334();
  v114 = *(v112 - 8);
  v12 = __chkstk_darwin(v112);
  v106 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v113 = &v98 - v14;
  v15 = sub_100007210(&qword_10014F8B0);
  v16 = __chkstk_darwin(v15 - 8);
  v108 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v117 = (&v98 - v19);
  __chkstk_darwin(v18);
  v121 = &v98 - v20;
  v21 = sub_1000FFD44();
  v120 = *(v21 - 8);
  __chkstk_darwin(v21);
  v122 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001001E4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v27 - 8);
  v29 = &v98 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v115 = v21;
    v116 = v4;
    v32 = *(Strong + 24);
    v33 = sub_10003EE8C(v32);

    [*(v31 + 32) addAssetsObject:v33];
    v34 = sub_1000C5C7C();
    v35 = &a2[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath];
    *v35 = v34;
    *(v35 + 1) = v36;

    sub_1000C5C7C();
    if (v37)
    {
      sub_1001001D4();
      sub_100100194();

      (*(v24 + 8))(v26, v23);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v40 = v121;
    v39 = v122;
    v41 = sub_1000FF514();
    (*(*(v41 - 8) + 56))(v29, v38, 1, v41);
    v42 = OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryURL;
    swift_beginAccess();
    sub_1000B7D90(v29, &a2[v42]);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    if (v44)
    {
      v45 = v44;
      v46 = a2;
      sub_100005900(ObjectType, v45);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v47 = a2;
      sub_100099898();
    }

    if ((v118 & 1) == 0)
    {
      sub_1000B71E8(&a2[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v119);
LABEL_34:
      [*(v31 + 32) setIsUploadedToCloud:0];

      return;
    }

    v118 = sub_100032F1C(&off_100134B08);
    if (qword_10014B698 != -1)
    {
      swift_once();
    }

    v102 = qword_1001585E8;
    v103 = unk_1001585F0;
    (*(v120 + 16))(v39, v119, v115);
    v119 = swift_allocObject();
    *(v119 + 16) = v33;
    v48 = swift_allocObject();
    *(v48 + 16) = v33;
    v49 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v101 = v49;
    sub_100010014(v31 + v49, v40, &qword_10014F8B0);
    v50 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
    v51 = *(v31 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager);
    if (v51)
    {
      v100 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_undoManager;
      v52 = qword_10014B8F8;
      v53 = v33;
      v99 = v51;
      if (v52 != -1)
      {
        swift_once();
      }

      v54 = sub_100100AE4();
      sub_100003D38(v54, qword_100150B08);
      v55 = v103;

      v56 = sub_100100AC4();
      v57 = sub_1001015A4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v123 = v59;
        *v58 = 136315138;

        v60 = sub_10007A774(v102, v55, &v123);
        v61 = v48;
        v62 = v60;

        *(v58 + 4) = v62;
        v48 = v61;
        _os_log_impl(&_mh_execute_header, v56, v57, "undoable (%s)", v58, 0xCu);
        sub_10001100C(v59);
        v40 = v121;

        v39 = v122;
      }

      v63 = v117;
      v64 = v99;
      v65 = [v99 groupingLevel];
      v50 = v100;
      if (!v65)
      {
        [v64 beginUndoGrouping];
      }
    }

    else
    {
      v66 = v33;
      v63 = v117;
    }

    sub_1000B70E0(v31, a2, v39);
    [v33 setIsUndoablyDeleted:0];
    v67 = *&v50[v31];
    if (v67)
    {
      v117 = v48;
      v68 = v67;

      sub_100010014(v40, v63, &qword_10014F8B0);
      v69 = v114;
      v70 = *(v114 + 48);
      v71 = v112;
      if (v70(v63, 1, v112) == 1)
      {

        sub_10000FFB4(v40, &qword_10014F8B0);
        v72 = v63;
        v73 = &qword_10014F8B0;
LABEL_32:
        sub_10000FFB4(v72, v73);
        v39 = v122;
        goto LABEL_33;
      }

      v100 = v68;
      (*(v69 + 32))(v113, v63, v71);
      v75 = v108;
      sub_100010014(v101 + v31, v108, &qword_10014F8B0);
      if (v70(v75, 1, v71))
      {

        (*(v69 + 8))(v113, v71);
        sub_10000FFB4(v40, &qword_10014F8B0);
        sub_10000FFB4(v75, &qword_10014F8B0);
        v76 = v109;
        (*(v110 + 56))(v109, 1, 1, v111);
LABEL_31:
        v73 = &qword_10014FAA8;
        v72 = v76;
        goto LABEL_32;
      }

      v77 = v106;
      (*(v69 + 16))(v106, v75, v71);
      sub_10000FFB4(v75, &qword_10014F8B0);
      v76 = v109;
      sub_1001002A4();
      v80 = *(v69 + 8);
      v79 = v69 + 8;
      v78 = v80;
      (v80)(v77, v71);
      v81 = v110;
      if ((*(v110 + 48))(v76, 1, v111) == 1)
      {

        (v78)(v113, v71);
        sub_10000FFB4(v40, &qword_10014F8B0);
        goto LABEL_31;
      }

      v108 = v78;
      v101 = *(v81 + 32);
      v106 = (v81 + 32);
      v82 = v111;
      v101(v107, v76, v111);
      v83 = v81;
      v84 = sub_100100F94();
      [v100 setActionName:v84];

      v85 = v105;
      (*(v83 + 16))(v105, v107, v82);
      v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v114 = v79;
      v87 = (v104 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
      v109 = ((v89 + 23) & 0xFFFFFFFFFFFFFFF8);
      v90 = swift_allocObject();
      v101((v90 + v86), v85, v82);
      v39 = v122;
      v91 = v119;
      *(v90 + v87) = v118;
      v92 = (v90 + v88);
      v93 = v103;
      *v92 = v102;
      v92[1] = v93;
      v94 = (v90 + v89);
      v95 = v117;
      *v94 = sub_1000B7E4C;
      v94[1] = v95;
      v96 = &v109[v90];
      *v96 = sub_1000B7E38;
      v96[1] = v91;
      type metadata accessor for EntryViewModel();

      v97 = v100;
      sub_100101534();

      (*(v110 + 8))(v107, v111);
      (v108)(v113, v112);
      v74 = v121;
    }

    else
    {

      v74 = v40;
    }

    sub_10000FFB4(v74, &qword_10014F8B0);
LABEL_33:
    (*(v120 + 8))(v39, v115);
    goto LABEL_34;
  }
}

uint64_t sub_1000B70E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10014B820 != -1)
  {
    swift_once();
  }

  v5 = sub_100100AE4();
  sub_100003D38(v5, qword_10014FA78);
  v6 = sub_100100AC4();
  v7 = sub_1001015A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "updating asset placement", v8, 2u);
  }

  return sub_1000B71E8(a2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, a3);
}

uint64_t sub_1000B71E8(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v3 = sub_100007210(&qword_10014FAB0);
  __chkstk_darwin(v3 - 8);
  v62 = &v49 - v4;
  v5 = sub_100007210(&qword_10014FAB8);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v49 - v8;
  v9 = sub_100100334();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007210(&qword_10014F8B0);
  v14 = __chkstk_darwin(v13 - 8);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v55 = sub_1001006F4();
  v63 = *(v55 - 8);
  v18 = __chkstk_darwin(v55);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v49 - v22;
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v26 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v57 = v2;
  sub_100010014(v2 + v26, v17, &qword_10014F8B0);
  v27 = v10[6];
  if (v27(v17, 1, v9))
  {
    return sub_10000FFB4(v17, &qword_10014F8B0);
  }

  v51 = v20;
  v50 = v10[2];
  v50(v12, v17, v9);
  sub_10000FFB4(v17, &qword_10014F8B0);
  sub_100100294();
  v29 = v10[1];
  v52 = v12;
  v53 = v10 + 1;
  v29(v12, v9);
  v30 = *(v63 + 32);
  v54 = v25;
  v31 = v25;
  v32 = v55;
  v30(v31, v23, v55);
  v34 = v56;
  v33 = v57;
  sub_100010014(v57 + v26, v56, &qword_10014F8B0);
  v35 = v33;
  if (v27(v34, 1, v9))
  {
    v36 = v32;
    sub_10000FFB4(v34, &qword_10014F8B0);
    v37 = sub_1000FFD44();
    v38 = v58;
    (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
    v39 = v62;
    v40 = v63;
    goto LABEL_7;
  }

  v41 = v52;
  v50(v52, v34, v9);
  sub_10000FFB4(v34, &qword_10014F8B0);
  v42 = v51;
  sub_100100294();
  v29(v41, v9);
  v38 = v58;
  sub_1001006C4();
  v43 = v63;
  v36 = v32;
  (*(v63 + 8))(v42, v32);
  v37 = sub_1000FFD44();
  v44 = *(v37 - 8);
  v40 = v43;
  if ((*(v44 + 48))(v38, 1, v37) == 1)
  {
    v39 = v62;
LABEL_7:
    sub_1000FFD44();
    v45 = *(v37 - 8);
    v46 = v61;
    (*(v45 + 56))(v61, 1, 1, v37);
    if ((*(v45 + 48))(v38, 1, v37) != 1)
    {
      sub_10000FFB4(v38, &qword_10014FAB8);
    }

    goto LABEL_10;
  }

  v46 = v61;
  (*(v44 + 32))(v61, v38, v37);
  (*(v44 + 56))(v46, 0, 1, v37);
  v39 = v62;
LABEL_10:
  v47 = v54;
  sub_1001006D4();
  (*(v40 + 16))(v39, v47, v36);
  (*(v40 + 56))(v39, 0, 1, v36);
  sub_1000E4400(v39);
  sub_10000FFB4(v39, &qword_10014FAB0);
  v48 = *(v35 + 32);
  sub_1000FFC04();
  [v48 setIsUploadedToCloud:0];
  sub_1000EE220();
  sub_10000FFB4(v46, &qword_10014FAB8);
  return (*(v40 + 8))(v47, v36);
}

void sub_1000B7928()
{
  sub_100042144();
  if (qword_10014B818 != -1)
  {
    swift_once();
  }

  v0 = sub_100100AE4();
  sub_100003D38(v0, qword_10014FA60);
  v1 = sub_100100AC4();
  v2 = sub_1001015D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    if (qword_10014B828 != -1)
    {
      swift_once();
    }

    v5 = sub_1000FF874();
    sub_100003D38(v5, qword_10014FA90);
    sub_1000B7CCC(&qword_10014C018, &type metadata accessor for UUID);
    v6 = sub_100101E44();
    v8 = sub_10007A774(v6, v7, &v9);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s (addAsset) Done adding asset to viewModel", v3, 0xCu);
    sub_10001100C(v4);
  }
}

uint64_t sub_1000B7AFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7B34()
{
  v1 = sub_1000FFD44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B7CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B7D14()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B7D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014EBD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7E00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7E60()
{
  v1 = sub_100100284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000B7F50(uint64_t a1)
{
  v3 = *(sub_100100284() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000ECA64(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_1000B8040(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100101DA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100101CA4();
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

uint64_t sub_1000B8154@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_100100A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

double *sub_1000B8340(uint64_t a1, void (*a2)(void))
{
  v8 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  sub_100101D24();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100010FA8(i, v7);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100101D04();
    sub_100101D34();
    sub_100101D44();
    sub_100101D14();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1000B843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100007210(&qword_10014CD08);
  v5[7] = swift_task_alloc();
  v7 = sub_100101824();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_100101284();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[12] = v8;
  v5[13] = v10;

  return _swift_task_switch(sub_1000B8584, v8, v10);
}

uint64_t sub_1000B8584()
{
  *(v0 + 112) = CFAbsoluteTimeGetCurrent();
  v1 = sub_1000FFD34();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000B863C;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1000B9AF4(v5, v3, v4, v1, 0);
}

uint64_t sub_1000B863C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000B875C, v3, v2);
}

uint64_t sub_1000B875C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(v0 + 128) = *(*(v0 + 48) + 24);
  *(v0 + 136) = swift_allocObject();
  swift_weakInit();
  *(v0 + 192) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 144) = v3;
  *(v0 + 152) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1000B8894;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B8894()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[11];
    v5 = v2[8];
    v6 = v2[9];
    v7 = *(v6 + 8);
    v2[21] = v7;
    v2[22] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[12];
    v9 = v2[13];

    return _swift_task_switch(sub_1000B89E4, v8, v9);
  }
}

uint64_t sub_1000B89E4()
{
  (*(v0 + 144))(*(v0 + 80), *(v0 + 192), *(v0 + 64));

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1000B8AC4;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B8AC4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 168))(*(v2 + 80), *(v2 + 64));

    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    return _swift_task_switch(sub_1000B8C10, v4, v5);
  }
}

uint64_t sub_1000B8C10()
{
  v1 = v0[14];
  v2 = *(v0 + 7);
  v3 = *(v0 + 4);
  v4 = OBJC_IVAR____TtC21JournalShareExtension5Asset_id;
  v5 = sub_1000FF874();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, &v3[v4], v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_1000B8D5C(v2);
  sub_10000FFB4(v2, &qword_10014CD08);
  sub_1000B98C8(v3, v1);

  v7 = *(v0 + 1);

  return v7();
}

uint64_t sub_1000B8D5C(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014CD08);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_1000FF874();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_100032F1C(&off_1001344E8);
  sub_100100BE4();

  sub_100010014(a1, v4, &qword_10014CD08);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000FFB4(v4, &qword_10014CD08);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultCenter];
  if (qword_10014B778 != -1)
  {
    swift_once();
  }

  v11 = qword_100158708;
  isa = sub_1000FF824().super.isa;
  [v10 postNotificationName:v11 object:isa];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000B8FBC(uint64_t a1)
{
  v2[17] = v1;
  v4 = sub_100101824();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  sub_100007210(&unk_10014D640);
  v2[21] = swift_task_alloc();
  sub_100007210(&qword_10014CD08);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = sub_1000FF874();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v2[27] = v6;
  v2[28] = v8;

  return _swift_task_switch(sub_1000B9190, v6, v8);
}

uint64_t sub_1000B9190()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[17];
  v5 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleId;
  swift_beginAccess();
  sub_100010014(v4 + v5, v3, &qword_10014CD08);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000FFB4(v0[23], &qword_10014CD08);
LABEL_5:

    v15 = v0[1];

    return v15();
  }

  v6 = v0[26];
  v7 = v0[17];
  (*(v0[25] + 32))(v6, v0[23], v0[24]);
  v8 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v6;

  v11 = sub_1000B8040(sub_1000BCD28, v10, v9);

  if (v11)
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[24];

    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v20 = v0[17];
  v26 = v0[18];
  v27 = v0[20];
  (*(v0[25] + 56))(v17, 1, 1, v0[24]);
  swift_beginAccess();
  sub_10001007C(v17, v4 + v5, &qword_10014CD08);
  swift_endAccess();
  v21 = sub_1000FF804();
  v22 = *(*(v21 - 8) + 56);
  v22(v18, 1, 1, v21);
  v23 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleDate;
  swift_beginAccess();
  sub_10001007C(v18, v20 + v23, &unk_10014D640);
  swift_endAccess();
  v22(v18, 1, 1, v21);
  v24 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bundleEndDate;
  swift_beginAccess();
  sub_10001007C(v18, v20 + v24, &unk_10014D640);
  swift_endAccess();
  v0[29] = swift_allocObject();
  swift_weakInit();
  (*(v19 + 104))(v27, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v26);
  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_1000B95B8;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B95B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = v2[27];
    v5 = v2[28];

    return _swift_task_switch(sub_1000B970C, v4, v5);
  }
}

uint64_t sub_1000B970C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B97B4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014FAC0);
  v1 = sub_100003D38(v0, qword_10014FAC0);
  if (qword_10014B868 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001587C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B987C()
{
  v0 = sub_1000FF874();
  sub_100003CD4(v0, qword_10014FAD8);
  sub_100003D38(v0, qword_10014FAD8);
  return sub_1000FF864();
}

void sub_1000B98C8(void *a1, double a2)
{
  if (qword_10014B830 != -1)
  {
    swift_once();
  }

  v4 = sub_100100AE4();
  sub_100003D38(v4, qword_10014FAC0);
  v5 = a1;
  oslog = sub_100100AC4();
  v6 = sub_1001015D4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2082;
    sub_1000FF874();
    sub_1000BE88C(&qword_10014C018, &type metadata accessor for UUID);
    v10 = v5;
    v11 = sub_100101E44();
    v13 = sub_10007A774(v11, v12, &v15);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    *(v7 + 24) = CFAbsoluteTimeGetCurrent() - a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "EntryViewModel.addAsset(%@) [assetId: %{public}s] %f seconds", v7, 0x20u);
    sub_10000FFB4(v8, &unk_10014D660);

    sub_10001100C(v9);
  }
}

uint64_t sub_1000B9AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 316) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  sub_100007210(&qword_10014CD08);
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_1000FF874();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v9 = sub_1001007D4();
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_100101824();
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_100101284();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v6 + 208) = v11;
  *(v6 + 216) = v13;

  return _swift_task_switch(sub_1000B9D10, v11, v13);
}

uint64_t sub_1000B9D10()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 88);
  v4 = *(v0 + 316);
  v5 = *(v0 + 80);
  *(v0 + 224) = *(*(v0 + 96) + 24);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4 & 1;
  *(v0 + 312) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = *(v2 + 104);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1);
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_1000B9E90;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000B9E90()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[25];
    v5 = v2[22];
    v6 = v2[23];
    v7 = *(v6 + 8);
    v2[33] = v7;
    v2[34] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[26];
    v9 = v2[27];

    return _swift_task_switch(sub_1000B9FE0, v8, v9);
  }
}

uint64_t sub_1000B9FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1000BA08C;
  v2 = *(v0 + 64);

  return sub_1000B09C0(v2);
}

uint64_t sub_1000BA08C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1000BA1AC, v3, v2);
}

uint64_t sub_1000BA1AC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 312);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  *(v6 + 16) = v5;
  v1(v3, v2, v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_1000BA2CC;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000BA2CC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 192), *(v2 + 176));

    v4 = *(v2 + 208);
    v5 = *(v2 + 216);

    return _swift_task_switch(sub_1000BA41C, v4, v5);
  }
}

uint64_t sub_1000BA41C()
{
  v61 = v0;
  v1 = v0[12];
  v2 = v0[10] + OBJC_IVAR____TtC21JournalShareExtension5Asset_id;
  v3 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  v6 = sub_1000B8040(sub_1000BE848, v5, v4);

  if (v6)
  {
    if (qword_10014B830 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v7 = sub_100100AE4();
      sub_100003D38(v7, qword_10014FAC0);
      v8 = v6;

      v9 = sub_100100AC4();
      v10 = sub_1001015B4();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_26;
      }

      v47 = v10;
      log = v9;
      v12 = v0[20];
      v11 = v0[21];
      v13 = v0[19];
      v53 = v0[15];
      v55 = v0[14];
      v57 = v0[18];
      v14 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v14 = 136315650;
      (*(v12 + 16))(v11, v8 + OBJC_IVAR____TtC21JournalShareExtension5Asset_type, v13);
      sub_1000BE88C(&qword_10014C038, &type metadata accessor for AssetType);
      v15 = sub_100101E44();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_10007A774(v15, v17, v60);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v49 = v8;
      v59 = *(v53 + 16);
      v59(v57, v8 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v55);
      sub_1000BE88C(&qword_10014C018, &type metadata accessor for UUID);
      v19 = sub_100101E44();
      v21 = v20;
      (*(v53 + 8))(v57, v55);
      v22 = sub_10007A774(v19, v21, v60);

      *(v14 + 14) = v22;
      buf = v14;
      *(v14 + 22) = 2082;
      v23 = *(v1 + v3);
      v24 = v23 >> 62 ? sub_100101DA4() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v3 = 0;
      v25 = v0[15];
      v56 = v23 & 0xFFFFFFFFFFFFFF8;
      v58 = v23 & 0xC000000000000001;
      v52 = (v25 + 48);
      v54 = (v25 + 56);
      v50 = v25;
      v6 = (v25 + 32);
      v26 = _swiftEmptyArrayStorage;
      v51 = v23;
      while (1)
      {
        if (v58)
        {
          v27 = sub_100101CA4();
        }

        else
        {
          if (v3 >= *(v56 + 16))
          {
            goto LABEL_30;
          }

          v27 = *(v23 + 8 * v3 + 32);
        }

        v28 = v27;
        v29 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v1 = v0[13];
        v30 = v0[14];
        v59(v1, &v27[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v30);
        (*v54)(v1, 0, 1, v30);

        if ((*v52)(v1, 1, v30) == 1)
        {
          sub_10000FFB4(v0[13], &qword_10014CD08);
        }

        else
        {
          v32 = v0[16];
          v31 = v0[17];
          v1 = v0[14];
          v33 = *v6;
          (*v6)(v31, v0[13], v1);
          v33(v32, v31, v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_10000F1E4(0, *(v26 + 2) + 1, 1, v26);
          }

          v35 = *(v26 + 2);
          v34 = *(v26 + 3);
          if (v35 >= v34 >> 1)
          {
            v26 = sub_10000F1E4(v34 > 1, v35 + 1, 1, v26);
          }

          v36 = v0[16];
          v37 = v0[14];
          *(v26 + 2) = v35 + 1;
          v33(v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35, v36, v37);
          v23 = v51;
        }

        ++v3;
        if (v29 == v24)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_25:

    v40 = sub_1001011E4();
    v42 = v41;

    v43 = sub_10007A774(v40, v42, v60);

    *(buf + 3) = v43;
    _os_log_impl(&_mh_execute_header, log, v47, "Asset already exists in allAssets. Won't add %s asset with id %{public}s. AllAssets: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v38 = v0[10];
    swift_beginAccess();
    v39 = v38;
    sub_1001011B4();
    if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    sub_100101234();
    swift_endAccess();
    sub_1000EAD60();
  }

LABEL_26:

  v44 = v0[1];

  return v44();
}

void sub_1000BAB44(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v40 = a4;
  v41 = a3;
  v43 = sub_1000FF874();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001001E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v39 = v4;
    v17 = *(Strong + 24);
    v18 = sub_10003EE8C(v17);

    [*(v16 + 32) addAssetsObject:v18];
    v19 = sub_1000C5C7C();
    v20 = &a2[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath];
    *v20 = v19;
    *(v20 + 1) = v21;

    v38 = v18;
    sub_1000C5C7C();
    if (v22)
    {
      sub_1001001D4();
      sub_100100194();

      (*(v9 + 8))(v11, v8);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = sub_1000FF514();
    (*(*(v24 - 8) + 56))(v14, v23, 1, v24);
    v25 = OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryURL;
    swift_beginAccess();
    sub_10001007C(v14, &a2[v25], &qword_10014EBD0);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27)
    {
      v28 = v27;
      v29 = a2;
      sub_100005900(ObjectType, v28);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v30 = a2;
      sub_100099898();
    }

    v31 = *(v16 + 32);
    v32 = sub_1000FFBD4();

    v33 = v42;
    v34 = v43;
    (*(v42 + 16))(v7, &a2[OBJC_IVAR____TtC21JournalShareExtension5Asset_id], v43);
    if (v40)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v41;
    }

    sub_1000BE8D4(v32, v7, v35);

    (*(v33 + 8))(v7, v34);
    v36 = *(v16 + 32);
    sub_1000FFBE4();

    [*(v16 + 32) setIsUploadedToCloud:0];
  }
}

void sub_1000BAF8C()
{
  sub_100042144();
  if (qword_10014B830 != -1)
  {
    swift_once();
  }

  v0 = sub_100100AE4();
  sub_100003D38(v0, qword_10014FAC0);
  v1 = sub_100100AC4();
  v2 = sub_1001015D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    if (qword_10014B838 != -1)
    {
      swift_once();
    }

    v5 = sub_1000FF874();
    sub_100003D38(v5, qword_10014FAD8);
    sub_1000BE88C(&qword_10014C018, &type metadata accessor for UUID);
    v6 = sub_100101E44();
    v8 = sub_10007A774(v6, v7, &v9);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s (addAsset) Done adding asset to viewModel", v3, 0xCu);
    sub_10001100C(v4);
  }
}

void sub_1000BB160()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 32);
    v2 = sub_1000FFBD4();
    sub_1000BE118(v2);

    sub_1000FFBE4();
  }
}

uint64_t sub_1000BB23C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_100101824();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_1000BB33C, v6, v8);
}

uint64_t sub_1000BB33C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[10] = swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1000BB45C;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000BB45C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_1000BB5B0, v4, v5);
  }
}

uint64_t sub_1000BB5B0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000BB648;
  v2 = *(v0 + 16);

  return sub_1000B8FBC(v2);
}

uint64_t sub_1000BB648()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000BB768, v3, v2);
}

uint64_t sub_1000BB768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BB7C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BB800()
{
  v58 = sub_1000FF874();
  v55 = *(v58 - 8);
  __chkstk_darwin(v58);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000FF364();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v54 = v0;
    v9 = [*(result + 32) assets];
    v56 = v2;
    v61 = v8;
    if (v9)
    {
      v10 = v9;
      sub_100101904();

      sub_1000BE88C(&qword_10014FAF0, &type metadata accessor for NSFastEnumerationIterator);
      sub_100101AC4();
      if (v65)
      {
        v11 = _swiftEmptyArrayStorage;
        do
        {
          sub_10002FC28(&v64, v66);
          sub_100010FA8(v66, &v64);
          sub_1000FFB14();
          if (swift_dynamicCast() && (v12 = v63, v13 = [v63 isUndoablyDeleted], v12, (v13 & 1) != 0))
          {
            sub_10002FC28(v66, &v64);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = v11;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100016F20(0, *(v11 + 2) + 1, 1);
              v11 = v67;
            }

            v16 = *(v11 + 2);
            v15 = *(v11 + 3);
            if (v16 >= v15 >> 1)
            {
              sub_100016F20((v15 > 1), v16 + 1, 1);
              v11 = v67;
            }

            *(v11 + 2) = v16 + 1;
            sub_10002FC28(&v64, &v11[4 * v16 + 4]);
            v8 = v61;
          }

          else
          {
            sub_10001100C(v66);
          }

          sub_100101AC4();
        }

        while (v65);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

      (*(v4 + 8))(v6, v3);
      sub_10000FFB4(&v64, &qword_10014CA68);
      v2 = v56;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    if (qword_10014B830 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v17 = sub_100100AE4();
      sub_100003D38(v17, qword_10014FAC0);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v18 = sub_100100AC4();
      v19 = sub_1001015D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543874;
        v22 = v8;
        v23 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_id);
        *(v20 + 4) = v23;
        *v21 = v23;
        *(v20 + 12) = 2048;
        v24 = *(v22 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_gridAssets);
        if (v24 >> 62)
        {
          v25 = sub_100101DA4();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v23;
        v8 = v61;

        *(v20 + 14) = v25;

        *(v20 + 22) = 2048;
        v27 = *(v11 + 2);

        *(v20 + 24) = v27;

        _os_log_impl(&_mh_execute_header, v18, v19, "%{public}@ (removeUndoablyDeletedAssets) assets.count: %ld  assetsToRemove.count:%ld", v20, 0x20u);
        sub_10000FFB4(v21, &unk_10014D660);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v28 = v11;
      v11 = *(v11 + 2);
      if (!v11)
      {
      }

      v29 = sub_1000FFBD4();
      v30 = 0;
      v62 = v28;
      v31 = v28 + 4;
      v57 = (v55 + 8);
      v32 = &selRef_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_;
      v59 = v31;
      v60 = v29;
      while (v30 < *(v62 + 2))
      {
        sub_100010FA8(&v31[4 * v30], v66);
        sub_1000FFB14();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v33 = v64;
        [v64 v32[61]];
        [v33 setIsUploadedToCloud:1];
        sub_10007D848();
        sub_1000BC054();
        v34 = [v33 fileAttachments];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 allObjects];

          v37 = sub_1001011D4();
          v38 = sub_1000B8340(v37, &type metadata accessor for JournalEntryAssetFileAttachmentMO);

          if (v38)
          {
            if (v38 >> 62)
            {
              v39 = sub_100101DA4();
              if (v39)
              {
LABEL_34:
                if (v39 < 1)
                {
                  goto LABEL_51;
                }

                for (i = 0; i != v39; ++i)
                {
                  if ((v38 & 0xC000000000000001) != 0)
                  {
                    v41 = sub_100101CA4();
                  }

                  else
                  {
                    v41 = *&v38[i + 4];
                  }

                  v42 = v41;
                  [v41 v32[61]];
                }
              }
            }

            else
            {
              v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v39)
              {
                goto LABEL_34;
              }
            }

            v2 = v56;
            v8 = v61;
          }
        }

        [*(v8 + 32) removeAssetsObject:v33];
        v43 = [v33 id];
        if (v43)
        {
          v44 = v43;
          sub_1000FF854();

          v45 = v60;
          v46 = sub_10004C6FC(v2);
          if (v47)
          {
            v48 = v46;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            *&v66[0] = v45;
            v50 = v45;
            if (!v49)
            {
              sub_1000FC5D0();
              v50 = *&v66[0];
            }

            v51 = *(v55 + 8);
            v52 = v58;
            v51(*(v50 + 48) + *(v55 + 72) * v48, v58);
            v60 = v50;
            sub_1000FAE58(v48, v50);

            v51(v2, v52);
            v8 = v61;
            v31 = v59;
            v32 = &selRef_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_;
            goto LABEL_27;
          }

          (*v57)(v2, v58);
        }

        v31 = v59;
LABEL_27:
        if (++v30 == v11)
        {

          v53 = *(v8 + 32);
          sub_1000FFBE4();

          [*(v8 + 32) setIsUploadedToCloud:0];
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_1000BC054()
{
  v0 = sub_1001001E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000FF514();
  v71 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v63 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = sub_100100AE4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10014B860 != -1)
  {
    swift_once();
  }

  v18 = sub_100003D38(v14, qword_1001587B0);
  (*(v15 + 16))(v17, v18, v14);
  sub_1000C5C7C();
  if (!v19)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v68 = v14;
  v70 = v17;
  sub_1001001D4();
  sub_100100194();

  (*(v1 + 8))(v3, v0);
  v20 = v71;
  v21 = v4;
  v22 = v13;
  (*(v71 + 32))(v13, v11, v21);
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  sub_1000FF4D4();
  v25 = sub_100100F94();

  v26 = [v24 fileExistsAtPath:v25];

  if ((v26 & 1) == 0)
  {
    (*(v20 + 8))(v13, v21);
    return (*(v15 + 8))(v70, v68);
  }

  v27 = *(v20 + 16);
  v28 = v69;
  v64 = (v20 + 16);
  v65 = v23;
  v63 = v27;
  v27(v69, v13, v21);
  v29 = sub_100100AC4();
  v30 = sub_1001015A4();
  v31 = os_log_type_enabled(v29, v30);
  v66 = v15;
  if (v31)
  {
    v32 = v28;
    v33 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10007A774(0xD000000000000013, 0x8000000100108CB0, &v72);
    *(v33 + 12) = 2080;
    sub_1000BE88C(&qword_10014EEC0, &type metadata accessor for URL);
    v34 = sub_100101E44();
    v35 = v20;
    v37 = v36;
    v38 = *(v35 + 8);
    v38(v32, v21);
    v39 = sub_10007A774(v34, v37, &v72);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Deleting %s attachment directory: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v20 + 8);
    v38(v28, v21);
  }

  v41 = [v65 defaultManager];
  sub_1000FF474(v42);
  v44 = v43;
  v72 = 0;
  v45 = [v41 removeItemAtURL:v43 error:&v72];

  if (v45)
  {
    v46 = v72;
    v38(v22, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v69 = v38;
  v47 = v72;
  sub_1000FF334();

  swift_willThrow();
  v48 = v67;
  v63(v67, v22, v21);
  swift_errorRetain();
  v49 = v22;
  v50 = v70;
  v51 = sub_100100AC4();
  v52 = sub_1001015B4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v65 = v49;
    *v53 = 136315650;
    *(v53 + 4) = sub_10007A774(0xD000000000000013, 0x8000000100108CB0, &v72);
    *(v53 + 12) = 2080;
    sub_1000BE88C(&qword_10014EEC0, &type metadata accessor for URL);
    v54 = sub_100101E44();
    v56 = v55;
    v57 = v48;
    v58 = v69;
    (v69)(v57, v21);
    v59 = sub_10007A774(v54, v56, &v72);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 24) = v60;
    v61 = v64;
    *v64 = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "Error deleting %s attachments directory %s: %@", v53, 0x20u);
    sub_10000FFB4(v61, &unk_10014D660);

    swift_arrayDestroy();

    v58(v65, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v62 = v69;
  (v69)(v48, v21);
  v62(v49, v21);
  return (*(v66 + 8))(v50, v68);
}

uint64_t sub_1000BC914(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1000FF874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CD10);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100007210(&qword_10014CD08);
  v11 = __chkstk_darwin(v10 - 8);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR____TtC21JournalShareExtension5Asset_suggestionId;
  swift_beginAccess();
  (*(v4 + 16))(v14, v26, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_100010014(v15 + v16, v9, &qword_10014CD08);
  sub_100010014(v14, &v9[v17], &qword_10014CD08);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v25;
    sub_100010014(v9, v25, &qword_10014CD08);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v9[v17], v3);
      sub_1000BE88C(&qword_10014CD18, &type metadata accessor for UUID);
      v19 = sub_100100F04();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_10000FFB4(v14, &qword_10014CD08);
      v22(v20, v3);
      sub_10000FFB4(v9, &qword_10014CD08);
      return v19 & 1;
    }

    sub_10000FFB4(v14, &qword_10014CD08);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_10000FFB4(v14, &qword_10014CD08);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_10000FFB4(v9, &qword_10014CD10);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000FFB4(v9, &qword_10014CD08);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1000BCD48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 32) setBundleId:0];
    [*(v1 + 32) setBundleDate:0];
    [*(v1 + 32) setBundleEndDate:0];
  }

  return result;
}

Swift::Int sub_1000BCE00(size_t *a1)
{
  v2 = *(sub_100007210(&qword_10014C540) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100071BE8(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000BCEB4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000BCEB4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100101E34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100007210(&qword_10014C540);
        v6 = sub_100101214();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_100007210(&qword_10014C540) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000BD26C(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_1000BCFF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000BCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100007210(&qword_10014C540);
  v9 = __chkstk_darwin(v8);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v32 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v32 - v15;
  v34 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v39 = -v17;
    v40 = v16;
    v19 = a1 - a3;
    v33 = v17;
    v20 = v16 + v17 * a3;
    v21 = &qword_10014C540;
    v42 = v8;
LABEL_5:
    v37 = v18;
    v38 = a3;
    v35 = v20;
    v36 = v19;
    while (1)
    {
      v22 = v43;
      sub_100010014(v20, v43, v21);
      v23 = v21;
      v24 = v44;
      sub_100010014(v18, v44, v23);
      v25 = *(v8 + 48);
      v26 = *(v22 + v25);
      v27 = *(v24 + v25);
      v28 = v24;
      v21 = v23;
      sub_10000FFB4(v28, v23);
      result = sub_10000FFB4(v22, v23);
      v29 = v26 < v27;
      v8 = v42;
      if (!v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v18 = v37 + v33;
        v19 = v36 - 1;
        v20 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_10001012C(v20, v41, v23);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10001012C(v30, v18, v23);
      v18 += v39;
      v20 += v39;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000BD26C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v108 = a1;
  v124 = sub_100007210(&qword_10014C540);
  v118 = *(v124 - 8);
  v7 = __chkstk_darwin(v124);
  v111 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v121 = &v105 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v105 - v12;
  result = __chkstk_darwin(v11);
  v122 = &v105 - v14;
  v15 = *(a3 + 8);
  v109 = a3;
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_137;
    }

    v4 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v4;
LABEL_101:
      v125 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (1)
        {
          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *(result + 16 * v4);
          v102 = result;
          v103 = *(result + 16 * (v4 - 1) + 40);
          sub_1000BDBF4(v101 + *(v118 + 72) * a3, v101 + *(v118 + 72) * *(result + 16 * (v4 - 1) + 32), v101 + *(v118 + 72) * v103, a4);
          if (v34)
          {
          }

          if (v103 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_100071584(v102);
          }

          if (v4 - 2 >= *(v102 + 2))
          {
            goto LABEL_125;
          }

          v104 = &v102[2 * v4];
          *v104 = a3;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_1000714F8(v4 - 1);
          result = v125;
          v4 = *(v125 + 16);
          a3 = v109;
          if (v4 <= 1)
          {
          }
        }
      }
    }

LABEL_131:
    result = sub_100071584(v4);
    goto LABEL_101;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v107 = a4;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v112 = v17;
    if (v19 >= v15)
    {
      v33 = v19;
      v34 = v114;
    }

    else
    {
      v20 = *a3;
      v21 = *(v118 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v122;
      v4 = &qword_10014C540;
      sub_100010014(v22, v122, &qword_10014C540);
      v24 = v123;
      sub_100010014(v20 + v21 * v18, v123, &qword_10014C540);
      v25 = *(v124 + 48);
      v26 = *(v23 + v25);
      v116 = *(v24 + v25);
      v117 = v26;
      sub_10000FFB4(v24, &qword_10014C540);
      result = sub_10000FFB4(v23, &qword_10014C540);
      v106 = v18;
      v27 = v18 + 2;
      v119 = v21;
      v28 = v20 + v21 * v27;
      while (v15 != v27)
      {
        LODWORD(v120) = v117 < v116;
        v29 = v122;
        sub_100010014(v28, v122, &qword_10014C540);
        v30 = v123;
        sub_100010014(v22, v123, &qword_10014C540);
        v31 = *(v124 + 48);
        v32 = *(v29 + v31);
        v4 = *(v30 + v31);
        sub_10000FFB4(v30, &qword_10014C540);
        result = sub_10000FFB4(v29, &qword_10014C540);
        ++v27;
        v28 += v119;
        v22 += v119;
        if (((v120 ^ (v32 >= v4)) & 1) == 0)
        {
          v33 = v27 - 1;
          goto LABEL_11;
        }
      }

      v33 = v15;
LABEL_11:
      v18 = v106;
      a4 = v107;
      a3 = v109;
      v34 = v114;
      if (v117 < v116)
      {
        if (v33 < v106)
        {
          goto LABEL_128;
        }

        if (v106 < v33)
        {
          v4 = v119 * (v33 - 1);
          v35 = v33 * v119;
          v117 = v33;
          v36 = v33;
          v37 = v106 * v119;
          do
          {
            if (v18 != --v36)
            {
              v114 = v34;
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_10001012C(v38 + v37, v111, &qword_10014C540);
              if (v37 < v4 || v38 + v37 >= (v38 + v35))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10001012C(v111, v38 + v4, &qword_10014C540);
              v34 = v114;
            }

            ++v18;
            v4 -= v119;
            v35 -= v119;
            v37 += v119;
          }

          while (v18 < v36);
          v18 = v106;
          a4 = v107;
          v33 = v117;
        }
      }
    }

    v39 = *(a3 + 8);
    if (v33 >= v39)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v33, v18))
    {
      goto LABEL_127;
    }

    if (v33 - v18 >= a4)
    {
LABEL_34:
      v41 = v33;
      if (v33 < v18)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v18, a4))
    {
      goto LABEL_129;
    }

    if ((v18 + a4) >= v39)
    {
      v40 = *(a3 + 8);
    }

    else
    {
      v40 = v18 + a4;
    }

    if (v40 < v18)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v33 == v40)
    {
      goto LABEL_34;
    }

    v113 = v40;
    v114 = v34;
    v87 = *a3;
    v88 = *(v118 + 72);
    v89 = *a3 + v88 * (v33 - 1);
    v90 = -v88;
    v106 = v18;
    v91 = v18 - v33;
    v120 = v87;
    v110 = v88;
    a4 = v87 + v33 * v88;
    v92 = v124;
LABEL_88:
    v116 = v91;
    v117 = v33;
    v115 = a4;
    v119 = v89;
    v93 = v89;
LABEL_89:
    v4 = v122;
    sub_100010014(a4, v122, &qword_10014C540);
    v94 = v123;
    sub_100010014(v93, v123, &qword_10014C540);
    v95 = *(v92 + 48);
    v96 = *(v4 + v95);
    v97 = *(v94 + v95);
    sub_10000FFB4(v94, &qword_10014C540);
    result = sub_10000FFB4(v4, &qword_10014C540);
    if (v96 < v97)
    {
      break;
    }

    v92 = v124;
LABEL_87:
    v33 = v117 + 1;
    v89 = v119 + v110;
    v91 = v116 - 1;
    a4 = v115 + v110;
    v41 = v113;
    if (v117 + 1 != v113)
    {
      goto LABEL_88;
    }

    v34 = v114;
    a3 = v109;
    v18 = v106;
    if (v113 < v106)
    {
      goto LABEL_126;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v112;
    }

    else
    {
      result = sub_10000F368(0, *(v112 + 2) + 1, 1, v112);
      v17 = result;
    }

    v4 = *(v17 + 2);
    v42 = *(v17 + 3);
    a4 = v4 + 1;
    if (v4 >= v42 >> 1)
    {
      result = sub_10000F368((v42 > 1), v4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = a4;
    v43 = &v17[2 * v4];
    *(v43 + 4) = v18;
    *(v43 + 5) = v41;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_136;
    }

    v113 = v41;
    if (v4)
    {
      v45 = v44;
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v17 + 4);
          v48 = *(v17 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_55:
          if (v50)
          {
            goto LABEL_115;
          }

          v63 = &v17[2 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_118;
          }

          v69 = &v17[2 * v46 + 4];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_122;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v73 = &v17[2 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_69:
        if (v68)
        {
          goto LABEL_117;
        }

        v76 = &v17[2 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_120;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v46 - 1;
        if (v46 - 1 >= a4)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v84 = v17;
        a4 = *&v17[2 * v4 + 4];
        v85 = *&v17[2 * v46 + 5];
        sub_1000BDBF4(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v17[2 * v46 + 4], *a3 + *(v118 + 72) * v85, v45);
        if (v34)
        {
        }

        if (v85 < a4)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_100071584(v84);
        }

        if (v4 >= *(v84 + 2))
        {
          goto LABEL_112;
        }

        v86 = &v84[2 * v4];
        *(v86 + 4) = a4;
        *(v86 + 5) = v85;
        v125 = v84;
        v4 = &v125;
        result = sub_1000714F8(v46);
        v17 = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v17[2 * a4 + 4];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_113;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_114;
      }

      v58 = &v17[2 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_116;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_119;
      }

      if (v62 >= v54)
      {
        v80 = &v17[2 * v46 + 4];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v114 = v34;
    v15 = *(a3 + 8);
    v16 = v113;
    a4 = v107;
    if (v113 >= v15)
    {
      goto LABEL_98;
    }
  }

  if (v120)
  {
    v98 = v121;
    sub_10001012C(a4, v121, &qword_10014C540);
    v92 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_10001012C(v98, v93, &qword_10014C540);
    v93 += v90;
    a4 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1000BDBF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = sub_100007210(&qword_10014C540);
  v8 = __chkstk_darwin(v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v29 = a4 + v17;
    }

    else
    {
      v27 = -v13;
      v28 = a4 + v17;
      v29 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = v27;
      do
      {
        v37 = v29;
        v30 = a2 + v27;
        v42 = a2;
        v43 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v37;
            goto LABEL_58;
          }

          v31 = a3;
          v38 = v29;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_100010014(v28 + v27, v45, &qword_10014C540);
          v34 = v46;
          sub_100010014(v30, v46, &qword_10014C540);
          v35 = *(v47 + 48);
          v44 = *(v33 + v35);
          v36 = *(v34 + v35);
          sub_10000FFB4(v34, &qword_10014C540);
          sub_10000FFB4(v33, &qword_10014C540);
          if (v44 < v36)
          {
            break;
          }

          v29 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v43;
            v27 = v39;
            a1 = v40;
          }

          else
          {
            v30 = v43;
            v27 = v39;
            a1 = v40;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v42;
          if (v32 <= v41)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v39;
          a1 = v40;
          v29 = v38;
        }

        else
        {
          a2 = v43;
          v27 = v39;
          a1 = v40;
          v29 = v38;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_56:
    v50 = a2;
    v48 = v29;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v45;
        v20 = a2;
        sub_100010014(a2, v45, &qword_10014C540);
        v21 = v46;
        sub_100010014(a4, v46, &qword_10014C540);
        v22 = *(v47 + 48);
        v23 = *(v19 + v22);
        v24 = *(v21 + v22);
        sub_10000FFB4(v21, &qword_10014C540);
        sub_10000FFB4(v19, &qword_10014C540);
        if (v23 >= v24)
        {
          v25 = v42;
          v26 = a4 + v42;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_100071698(&v50, &v49, &v48);
  return 1;
}

double *sub_1000BE118(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014C540);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v73 = &v64 - v7;
  v8 = __chkstk_darwin(v6);
  v74 = &v64 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v64 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v64 - v14;
  v16 = *(a1 + 16);
  v72 = v13;
  v65 = &v64 - v14;
  if (v16)
  {
    v17 = sub_10000FEA8(v16, 0);
    v76 = sub_10005A67C(&v77, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v16, a1);

    sub_10004A9A0();
    if (v76 != v16)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      sub_100101ED4();
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v72;
    v15 = v65;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v77 = v17;
  sub_1000BCE00(&v77);
  v18 = v77;
  v71 = *(v77 + 2);
  if (v71)
  {
    v19 = 0;
    v20 = 0;
    v21 = v2;
    v70 = *(v2 + 48);
    v22 = *(v3 + 80);
    v23 = &_swiftEmptyDictionarySingleton;
    v68 = v3;
    v69 = v77 + ((v22 + 32) & ~v22);
    v67 = v77;
    v64 = v12;
    while (v20 < *(v18 + 16))
    {
      v75 = v19;
      sub_100010014(v69 + *(v3 + 72) * v20, v15, &qword_10014C540);
      v27 = *&v15[v70];
      v28 = *(v21 + 48);
      v29 = sub_1000FF874();
      v30 = *(v29 - 8);
      v31 = *(v30 + 32);
      v76 = v29;
      v31(v12, v15);
      *&v12[v28] = v27;
      if (v27 < 0)
      {
        v42 = v73;
        sub_100010014(v12, v73, &qword_10014C540);
        v43 = v66;
        sub_100010014(v12, v66, &qword_10014C540);
        v44 = *(v43 + *(v21 + 48));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v23;
        v46 = sub_10004C6FC(v42);
        v48 = *(v23 + 2);
        v49 = (v47 & 1) == 0;
        v26 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v26)
        {
          goto LABEL_38;
        }

        v51 = v47;
        if (*(v23 + 3) >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = v46;
            sub_1000FC5D0();
            v46 = v62;
          }
        }

        else
        {
          sub_1000FA3C4(v50, isUniquelyReferenced_nonNull_native);
          v46 = sub_10004C6FC(v73);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_42;
          }
        }

        v12 = v64;
        v15 = v65;
        v23 = v77;
        if (v51)
        {
          *(*(v77 + 7) + 8 * v46) = v44;
          sub_10000FFB4(v12, &qword_10014C540);
        }

        else
        {
          *&v77[(v46 >> 6) + 8] |= 1 << v46;
          v57 = v46;
          (*(v30 + 16))(*(v23 + 6) + *(v30 + 72) * v46, v73, v76);
          *(*(v23 + 7) + 8 * v57) = v44;
          sub_10000FFB4(v12, &qword_10014C540);
          v58 = *(v23 + 2);
          v26 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v26)
          {
            goto LABEL_40;
          }

          *(v23 + 2) = v59;
        }

        v60 = *(v30 + 8);
        v61 = v76;
        v60(v73, v76);
        v60(v66, v61);
        v21 = v72;
        v19 = v75;
      }

      else
      {
        v32 = v74;
        sub_100010014(v12, v74, &qword_10014C540);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v77 = v23;
        v35 = sub_10004C6FC(v32);
        v36 = *(v23 + 2);
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_36;
        }

        v39 = v34;
        if (*(v23 + 3) >= v38)
        {
          if ((v33 & 1) == 0)
          {
            sub_1000FC5D0();
          }
        }

        else
        {
          sub_1000FA3C4(v38, v33);
          v40 = sub_10004C6FC(v74);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_42;
          }

          v35 = v40;
        }

        v21 = v72;
        v53 = v76;
        v23 = v77;
        if (v39)
        {
          v24 = v75;
          *(*(v77 + 7) + 8 * v35) = v75;
          v25 = v24;
          sub_10000FFB4(v12, &qword_10014C540);
        }

        else
        {
          *&v77[(v35 >> 6) + 8] |= 1 << v35;
          (*(v30 + 16))(*(v23 + 6) + *(v30 + 72) * v35, v74, v53);
          v54 = v75;
          *(*(v23 + 7) + 8 * v35) = v75;
          v25 = v54;
          sub_10000FFB4(v12, &qword_10014C540);
          v55 = *(v23 + 2);
          v26 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v26)
          {
            goto LABEL_39;
          }

          *(v23 + 2) = v56;
        }

        (*(v30 + 8))(v74, v53);
        v26 = __OFADD__(v25, 1);
        v19 = v25 + 1;
        if (v26)
        {
          goto LABEL_37;
        }
      }

      ++v20;
      v18 = v67;
      v3 = v68;
      if (v71 == v20)
      {

        return v23;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000BE790()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000BE7F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BE88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BE8D4(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t))
{
  v105 = a3;
  v92 = a2;
  v4 = sub_1000FF874();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v93 = &v84 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = &v84 - v12;
  __chkstk_darwin(v11);
  v98 = &v84 - v13;
  v14 = sub_100007210(&qword_10014FAF8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = sub_1000FFD44();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = (&v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v84 - v25;

  sub_1000FFD54();
  (*(v21 + 16))(v24, v26, v20);
  if ((*(v21 + 88))(v24, v20) == enum case for AssetPlacement.grid(_:))
  {
    v87 = v26;
    v88 = v21;
    v89 = v20;
    v90 = v8;
    (*(v21 + 96))(v24, v20);
    v103 = *v24;
    v27 = *(a1 + 64);
    v94 = a1 + 64;
    v28 = 1 << *(a1 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v99 = (v5 + 16);
    v105 = (v5 + 32);
    v102 = (v5 + 8);

    v32 = 0;
    v96 = v17;
    v97 = a1;
    v91 = a1;
    v104 = v4;
    v33 = v5;
    v101 = v5;
    v34 = v100;
    v95 = v19;
    while (2)
    {
      v35 = v32;
      if (v30)
      {
        while (1)
        {
          v36 = v35;
LABEL_14:
          v38 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v39 = v38 | (v36 << 6);
          v40 = v97;
          v41 = v33;
          (*(v33 + 16))(v98, *(v97 + 48) + *(v33 + 72) * v39, v4);
          v42 = *(*(v40 + 56) + 8 * v39);
          v43 = sub_100007210(&qword_10014C540);
          v44 = *(v43 + 48);
          v17 = v96;
          (*(v41 + 32))();
          *&v17[v44] = v42;
          (*(*(v43 - 8) + 56))(v17, 0, 1, v43);
          v32 = v36;
          v34 = v100;
          v19 = v95;
LABEL_15:
          sub_10001012C(v17, v19, &qword_10014FAF8);
          v45 = sub_100007210(&qword_10014C540);
          if ((*(*(v45 - 8) + 48))(v19, 1, v45) == 1)
          {
            v76 = v97;

            v77 = v90;
            v78 = v104;
            (*v99)(v90, v92, v104);
            if (*(v76 + 16) >= v103)
            {
              v79 = v103;
            }

            else
            {
              v79 = *(v76 + 16);
            }

            v80 = v91;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v106 = v80;
            sub_1000FBA48(v79, v77, isUniquelyReferenced_nonNull_native);
            (*v102)(v77, v78);
            v75 = v106;
            v21 = v88;
            v20 = v89;
            v26 = v87;
            goto LABEL_36;
          }

          v46 = *&v19[*(v45 + 48)];
          v4 = v104;
          (*v105)(v34, v19, v104);
          if (v46 >= v103)
          {
            break;
          }

          (*v102)(v34, v4);
          v35 = v32;
          v33 = v101;
          if (!v30)
          {
            goto LABEL_7;
          }
        }

        v48 = *v99;
        v49 = v34;
        v50 = v93;
        (*v99)(v93, v49, v4);
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_38;
        }

        v52 = v91;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v52;
        v54 = sub_10004C6FC(v50);
        v55 = v52[2];
        v56 = (v53 & 1) == 0;
        v57 = v55 + v56;
        if (!__OFADD__(v55, v56))
        {
          v58 = v52[3];
          v85 = v51;
          if (v58 >= v57)
          {
            if ((v86 & 1) == 0)
            {
              v72 = v53;
              sub_1000FC5D0();
              LOBYTE(v53) = v72;
            }
          }

          else
          {
            LODWORD(v91) = v53;
            sub_1000FA3C4(v57, v86);
            v59 = sub_10004C6FC(v93);
            v60 = v53 & 1;
            LOBYTE(v53) = v91;
            if ((v91 & 1) != v60)
            {
              goto LABEL_41;
            }

            v54 = v59;
          }

          v61 = v93;
          v62 = v106;
          v91 = v106;
          if (v53)
          {
            *(v106[7] + 8 * v54) = v85;
            v63 = *v102;
            (*v102)(v61, v4);
            v34 = v100;
            v63(v100, v4);
            v33 = v101;
            continue;
          }

          v106[(v54 >> 6) + 8] |= 1 << v54;
          v64 = v54;
          v65 = v101;
          v66 = v48;
          v67 = v61;
          v66(v62[6] + *(v101 + 72) * v64, v61, v4);
          *(v62[7] + 8 * v64) = v85;
          v68 = *(v65 + 8);
          v68(v67, v4);
          v34 = v100;
          v68(v100, v4);
          v69 = v62[2];
          v70 = __OFADD__(v69, 1);
          v71 = v69 + 1;
          if (!v70)
          {
            v62[2] = v71;
            v33 = v101;
            continue;
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_7:
        if (v31 <= v35 + 1)
        {
          v37 = v35 + 1;
        }

        else
        {
          v37 = v31;
        }

        v32 = v37 - 1;
        while (1)
        {
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v36 >= v31)
          {
            v47 = sub_100007210(&qword_10014C540);
            (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
            v30 = 0;
            goto LABEL_15;
          }

          v30 = *(v94 + 8 * v36);
          ++v35;
          if (v30)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      break;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_100101ED4();
    __break(1u);
    return result;
  }

  (*(v21 + 8))(v24, v20);
  v73 = sub_1000FFD34();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v106 = a1;
  sub_1000FBA48(v73, v92, v74);
  v75 = v106;
LABEL_36:
  v82 = sub_1000BE118(v75);

  (*(v21 + 8))(v26, v20);
  return v82;
}

double *sub_1000BF1A0(uint64_t a1)
{
  v2 = sub_100100004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &_swiftEmptySetSingleton;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v46 = v8;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = (v7 - 8);
    v11 = _swiftEmptyArrayStorage;
    v45 = *(v7 + 56);
    v41 = v7;
    v8(v5, v9, v2);
    while (1)
    {
      v12 = sub_1000FFFD4();
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = sub_1000FFFE4(), (v16) || (v17 = *&v15, (sub_100045DEC(v53, v14, *&v15) & 1) == 0))
      {
        (*v10)(v5, v2);
      }

      else
      {
        v43 = sub_1000FFFC4();
        v18 = sub_1000FFF64();
        if (v19 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v42 = v11;
          v20 = v18;
          v21 = v19;
          sub_100058884();
          v44 = sub_100101A04();
          v22 = v20;
          v11 = v42;
          sub_1000064AC(v22, v21);
        }

        v23 = sub_1000FFFA4();
        if (v24 & 1) != 0 && (v23 = sub_1000FFF94(), (v25))
        {
          if (v44)
          {
            v26 = [v44 location];
            [v26 horizontalAccuracy];
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_1000FFFF4();
        v47[72] = 1;
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0xE000000000000000;
        if (v30)
        {
          v32 = v30;
        }

        *&v48 = v14;
        *(&v48 + 1) = v17;
        v49 = v44;
        LOBYTE(v50) = 1;
        *(&v50 + 1) = v31;
        *&v51 = v32;
        BYTE8(v51) = v43 & 1;
        v52 = v28;
        v53[0] = v14;
        v53[1] = v17;
        *&v53[2] = v44;
        v53[3] = 0.0;
        v54 = 1;
        v55 = v31;
        v56 = v32;
        v57 = v43 & 1;
        v58 = v28;
        v33 = v44;
        sub_10005B15C(&v48, v47);
        sub_10005B1B8(v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10000F3A4(0, *(v11 + 2) + 1, 1, v11);
        }

        v35 = *(v11 + 2);
        v34 = *(v11 + 3);
        if (v35 >= v34 >> 1)
        {
          v11 = sub_10000F3A4((v34 > 1), v35 + 1, 1, v11);
        }

        (*v10)(v5, v2);
        *(v11 + 2) = v35 + 1;
        v36 = &v11[9 * v35];
        *(v36 + 2) = v48;
        v37 = v49;
        v38 = v50;
        v39 = v51;
        *(v36 + 12) = v52;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
      }

      v9 += v45;
      if (!--v6)
      {
        break;
      }

      v46(v5, v9, v2);
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_1000BF560(double a1, double a2, double a3, double a4)
{
  result = 0;
  v5 = fabs(a2);
  if (fabs(a1) <= 90.0 && v5 <= 180.0 && a3 >= 0.0 && a3 <= 180.0)
  {
    return a4 <= 360.0 && a4 >= 0.0;
  }

  return result;
}

uint64_t sub_1000BF620()
{
  sub_100007210(&qword_10014FC48);
  v0 = swift_allocObject();
  v0[2] = [objc_allocWithZone(sub_100007210(&qword_10014FC50)) init];
  sub_100007210(&qword_10014FC58);
  result = swift_allocObject();
  v0[3] = result;
  v0[4] = 0xD000000000000011;
  v0[5] = 0x8000000100108D50;
  qword_100158788 = v0;
  return result;
}

uint64_t sub_1000BF6D0()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100095D18();
  sub_100100CA4();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158790 = result;
  return result;
}

uint64_t sub_1000BF880()
{

  return v0;
}

uint64_t sub_1000BF8B0()
{
  sub_1000BF880();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF8FC()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014FC60);
  sub_100003D38(v0, qword_10014FC60);
  return sub_100100AD4();
}

uint64_t sub_1000BF97C(uint64_t a1)
{
  v2[3] = v1;
  v4 = sub_1000FF514();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[8] = v5;
  v2[9] = v7;

  return _swift_task_switch(sub_1000BFA84, v5, v7);
}

uint64_t sub_1000BFA84()
{
  v1 = v0[3];
  v2 = *(v1 + qword_10014FC88);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_1000C08F0();
  *v4 = v0;
  v4[1] = sub_1000BFB80;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10010F298, v3, v5);
}

uint64_t sub_1000BFB80()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000C0158;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000BFC9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000BFC9C()
{
  v1 = v0[2];
  if (!sub_1001019F4())
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_10014B850 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_100100AE4();
    sub_100003D38(v13, qword_10014FC60);
    v14 = v12;
    v1 = v1;
    v15 = sub_100100AC4();
    v16 = sub_1001015B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v17 + qword_10014FC78);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v1;
      *v19 = v20;
      v19[1] = v1;
      v21 = v1;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "error getting JournalEntryAsset.assetMetadataAsset as CKAsset for requested id: %@. Record: %@", v18, 0x16u);
      sub_100007210(&unk_10014D660);
      swift_arrayDestroy();
    }

    sub_1000C093C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = [v2 fileURL];
  if (!v3)
  {
    if (qword_10014B850 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_100100AE4();
    sub_100003D38(v27, qword_10014FC60);
    v28 = v26;
    v29 = sub_100100AC4();
    v30 = sub_1001015B4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v31 + qword_10014FC78);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID: %@", v32, 0xCu);
      sub_100011058(v33);
    }

    sub_1000C093C();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  v4 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v3;
  sub_1000FF4C4();

  (*(v8 + 32))(v5, v6, v7);
  v11 = sub_1000FF524();
  if (v4)
  {
    (*(v0[5] + 8))(v0[7], v0[4], v11);

    swift_unknownObjectRelease();
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v37 = v11;
  v38 = v10;
  (*(v0[5] + 8))();
  swift_unknownObjectRelease();

  v39 = v0[1];

  return v39(v37, v38, v1);
}

uint64_t sub_1000C0158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1000C01F0, 0, 0);
}

uint64_t sub_1000C01F0()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_10014FC78);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C0324;
  v3 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014FDB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000994EC;
  v0[13] = &unk_100138368;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C0324()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1000C0454;
  }

  else
  {
    v2 = sub_1000C0434;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C0454()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000C04F0()
{
  v1 = *(v0 + qword_10014FC88);
}

id sub_1000C0540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMetadataDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C0578(uint64_t a1)
{
  v2 = *(a1 + qword_10014FC88);
}

uint64_t type metadata accessor for AssetMetadataDownloadOperation()
{
  result = qword_10014FCB8;
  if (!qword_10014FCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C066C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000C0714;

  return sub_1000BF97C(a2);
}

uint64_t sub_1000C0714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1000C0840(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008030;

  return sub_1000C01CC(a1, a2, v6);
}

unint64_t sub_1000C08F0()
{
  result = qword_10014FDA8;
  if (!qword_10014FDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014FDA8);
  }

  return result;
}

unint64_t sub_1000C093C()
{
  result = qword_10014FDB0;
  if (!qword_10014FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014FDB0);
  }

  return result;
}

unint64_t sub_1000C09BC()
{
  result = qword_10014FDC0;
  if (!qword_10014FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014FDC0);
  }

  return result;
}

id sub_1000C0A20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReflectionAsset()
{
  result = qword_10014FDF0;
  if (!qword_10014FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000C0B28()
{
  v1 = v0;
  v2 = sub_1000FF8B4();
  __chkstk_darwin(v2 - 8);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_100100A04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007210(&qword_10014C398);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_100100264();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D02C(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000FFB4(v15, &qword_10014C398);
    return 0;
  }

  v49 = v8;
  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_100100244();
  if (v21 >> 60 == 15 || (v22 = v20, v23 = v21, v24 = sub_1000FF534(), sub_1000064AC(v22, v23), !v24))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v25 = [v24 string];

  v48 = sub_100100FD4();
  v27 = v26;

  sub_100100974();
  v28 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v30 = [v28 initWithContentType:isa];

  (*(v10 + 8))(v12, v9);
  v31 = v30;
  sub_1000800A4(v48, v27, 0, 0);

  v32 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
  if (v32)
  {
    v33 = [v32 entry];
    v34 = v49;
    if (v33)
    {
      v35 = v33;
      sub_1000FFBA4();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v49;
  }

  v38 = sub_1000FF804();
  (*(*(v38 - 8) + 56))(v34, v36, 1, v38);
  sub_100100F14();
  sub_1000FF8A4();
  v39 = sub_100101004();
  v41 = v40;
  sub_100007210(&qword_10014C220);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10010BC80;
  v43 = sub_100081080(v39, v41, v34);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1001011C4().super.isa;

  [v31 setAlternateNames:v46];

  sub_10000FFB4(v34, &unk_10014D640);
  (*(v17 + 8))(v19, v16);
  return v31;
}

uint64_t sub_1000C113C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100100264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C1180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001001E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1000329A0(v2, v10, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000C1A14(v10, type metadata accessor for AssetAttachment.AssetType);
      v19 = 1;
      goto LABEL_9;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {

    v10 += *(sub_100007210(&qword_10014CE88) + 48);
  }

  sub_1000C3858(v10, v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  sub_1000329A0(v16, v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000C1A14(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v18 = sub_1000FF514();
    (*(*(v18 - 8) + 32))(a1, v14, v18);
  }

  else
  {
    sub_1001001D4();
    sub_100100184();

    (*(v5 + 8))(v7, v4);
    sub_1000C1A14(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  }

  v19 = 0;
LABEL_9:
  v20 = sub_1000FF514();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_1000C14D4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014FE40);
  v1 = sub_100003D38(v0, qword_10014FE40);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C159C()
{
  sub_1000C1A14(v0 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C1650()
{
  result = type metadata accessor for AssetAttachment.AssetType(319);
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

void sub_1000C1718()
{
  sub_1000C1838(319, &qword_10014FF98, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (v0 <= 0x3F)
  {
    sub_1000C1838(319, &qword_10014FFA0, sub_1000C1884);
    if (v1 <= 0x3F)
    {
      sub_1000C18D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C1800(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C1838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

unint64_t sub_1000C1884()
{
  result = qword_10014CBF0;
  if (!qword_10014CBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014CBF0);
  }

  return result;
}

void sub_1000C18D0()
{
  if (!qword_10014FFA8)
  {
    sub_10000F19C(&qword_10014C210);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10014FFA8);
    }
  }
}

uint64_t sub_1000C19A8()
{
  result = sub_1000FF514();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C1A14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C1A74(uint64_t a1)
{
  v114 = sub_1001001E4();
  v3 = *(v114 - 8);
  __chkstk_darwin(v114);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FF514();
  v118 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v12 = &v107 - v11;
  v13 = __chkstk_darwin(v10);
  v117 = &v107 - v17;
  v18 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath);
  if (!*(v1 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath + 8))
  {
    return v18;
  }

  v111 = v3;
  v109 = v16;
  v110 = v15;
  v112 = v14;
  v116 = v13;
  v19 = objc_opt_self();

  v113 = v19;
  v20 = [v19 defaultManager];
  sub_1000FF4D4();
  v21 = sub_100100F94();

  v22 = [v20 fileExistsAtPath:v21];

  v115 = a1;
  if (v22)
  {
    v23 = objc_allocWithZone(NSString);
    v24 = sub_100100F94();

    v25 = [v23 initWithString:v24];

    v26 = sub_100100F94();
    v27 = [v25 stringByAppendingPathComponent:v26];

    v28 = sub_100100FD4();
    v30 = v29;

    v120[0] = v28;
    v120[1] = v30;
    v31 = sub_1000FF424();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v119._countAndFlagsBits = 46;
      v119._object = 0xE100000000000000;
      v121._countAndFlagsBits = sub_1000FF424();
      sub_1001010B4(v121);

      sub_1001010B4(v119);

      v28 = v120[0];
    }

    v35 = v116;
    v36 = v114;
    sub_1001001D4();
    v108 = v28;
    sub_100100184();
    v111[1](v5, v36);
    v37 = [v113 defaultManager];
    sub_1000FF4B4();
    sub_1000FF474(v38);
    v40 = v39;
    v41 = v118;
    v42 = *(v118 + 8);
    v114 = v118 + 8;
    v111 = v42;
    (v42)(v12, v35);
    sub_100007210(&qword_100150080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BC80;
    *(inited + 32) = NSFileProtectionKey;
    v44 = qword_10014B710;
    v45 = NSFileProtectionKey;
    if (v44 != -1)
    {
      swift_once();
    }

    sub_100003D38(v36, qword_100158698);
    v46 = sub_100100174();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v47;
    *(inited + 40) = v46;
    sub_10004D3C4(inited);
    swift_setDeallocating();
    sub_10000FFB4(inited + 32, &qword_10014D598);
    type metadata accessor for FileAttributeKey(0);
    sub_1000C38C0(&qword_10014BD10, type metadata accessor for FileAttributeKey);
    isa = sub_100100E44().super.isa;

    v119._countAndFlagsBits = 0;
    LODWORD(v46) = [v37 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:isa error:&v119];

    if (v46)
    {
      v49 = v119._countAndFlagsBits;
      v50 = [v113 defaultManager];
      v51 = v117;
      sub_1000FF474(v52);
      v54 = v53;
      v119._countAndFlagsBits = 0;
      v55 = [v50 removeItemAtURL:v53 error:&v119];

      if (v55)
      {
        v56 = v119._countAndFlagsBits;
      }

      else
      {
        v60 = v119._countAndFlagsBits;
        sub_1000FF334();

        swift_willThrow();
      }

      v61 = [v113 defaultManager];
      sub_1000FF474(v62);
      v64 = v63;
      sub_1000FF474(v65);
      v67 = v66;
      v119._countAndFlagsBits = 0;
      v68 = [v61 copyItemAtURL:v64 toURL:v66 error:&v119];

      if (v68)
      {
        v69 = v119._countAndFlagsBits;
        v70 = sub_100100174();
        sub_1000FF404(v70);

        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v71 = sub_100100AE4();
        sub_100003D38(v71, qword_10014FE40);
        v72 = *(v41 + 16);
        v73 = v109;
        v74 = v116;
        v72(v109, v51, v116);
        v75 = v110;
        v72(v110, v51, v74);
        v76 = sub_100100AC4();
        v77 = sub_1001015D4();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v119._countAndFlagsBits = v118;
          *v78 = 136315394;
          sub_1000C38C0(&qword_10014EEC0, &type metadata accessor for URL);
          v79 = sub_100101E44();
          LODWORD(v115) = v77;
          v80 = v79;
          v82 = v81;
          v83 = v111;
          (v111)(v73, v74);
          v84 = sub_10007A774(v80, v82, &v119._countAndFlagsBits);

          *(v78 + 4) = v84;
          *(v78 + 12) = 2048;
          v85 = sub_1000FF414();
          if (v86)
          {
            v87 = 0;
          }

          else
          {
            v87 = v85;
          }

          (v83)(v75, v74);
          *(v78 + 14) = v87;
          _os_log_impl(&_mh_execute_header, v76, v115, "JournalEntryAssetMO saved file %s with size %ld", v78, 0x16u);
          sub_10001100C(v118);

          (v83)(v51, v74);
        }

        else
        {
          v106 = v111;
          (v111)(v75, v74);

          (v106)(v73, v74);
          (v106)(v51, v74);
        }

        return v108;
      }

      v88 = v119._countAndFlagsBits;

      sub_1000FF334();

      swift_willThrow();
      v59 = v51;
      v35 = v116;
    }

    else
    {
      v58 = v119._countAndFlagsBits;

      sub_1000FF334();

      swift_willThrow();
      v59 = v117;
    }

    (v111)(v59, v35);
  }

  else
  {

    sub_10008BEE8();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
    v35 = v116;
    v41 = v118;
  }

  v89 = v112;
  if (qword_10014B858 != -1)
  {
    swift_once();
  }

  v90 = sub_100100AE4();
  sub_100003D38(v90, qword_10014FE40);
  (*(v41 + 16))(v89, v115, v35);
  swift_errorRetain();
  v91 = sub_100100AC4();
  v92 = sub_1001015B4();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = v35;
    v94 = swift_slowAlloc();
    v95 = v41;
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v120[0] = v97;
    *v94 = 136315394;
    sub_1000C38C0(&qword_10014EEC0, &type metadata accessor for URL);
    v98 = sub_100101E44();
    v99 = v89;
    v100 = v98;
    v102 = v101;
    (*(v95 + 8))(v99, v93);
    v103 = sub_10007A774(v100, v102, v120);

    *(v94 + 4) = v103;
    *(v94 + 12) = 2112;
    swift_errorRetain();
    v104 = _swift_stdlib_bridgeErrorToNSError();
    *(v94 + 14) = v104;
    *v96 = v104;
    _os_log_impl(&_mh_execute_header, v91, v92, "JournalEntryAssetMO error saving attachment file with source URL %s: %@", v94, 0x16u);
    sub_10000FFB4(v96, &unk_10014D660);

    sub_10001100C(v97);
  }

  else
  {

    (*(v41 + 8))(v89, v35);
  }

  return 0;
}

uint64_t sub_1000C26CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v80 = a1;
  v81 = a5;
  v82 = sub_1001001E4();
  v11 = *(v82 - 1);
  __chkstk_darwin(v82);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000FF514();
  v83 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = __chkstk_darwin(v17);
  v84 = &v75 - v23;
  v24 = *&v6[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath];
  v25 = *&v6[OBJC_IVAR____TtC21JournalShareExtension5Asset_attachmentsDirectoryPath + 8];
  if (v25)
  {
    v77 = a2;
    v75 = v22;
    v76 = v21;
    v78 = v6;
    v79 = v20;
    v86._countAndFlagsBits = 47;
    v86._object = 0xE100000000000000;

    v87._countAndFlagsBits = a3;
    v87._object = a4;
    sub_1001010B4(v87);
    countAndFlagsBits = v86._countAndFlagsBits;
    object = v86._object;
    v86._countAndFlagsBits = v24;
    v86._object = v25;

    v88._countAndFlagsBits = countAndFlagsBits;
    v88._object = object;
    sub_1001010B4(v88);

    v28 = v86._countAndFlagsBits;
    v85 = v86;
    if (a6)
    {
      v86._countAndFlagsBits = 46;
      v86._object = 0xE100000000000000;
      v89._countAndFlagsBits = v81;
      v89._object = a6;
      sub_1001010B4(v89);
      sub_1001010B4(v86);

      v28 = v85._countAndFlagsBits;
    }

    v29 = v82;
    sub_1001001D4();
    v81 = v28;
    sub_100100184();
    (*(v11 + 8))(v13, v29);
    v30 = [objc_opt_self() defaultManager];
    sub_1000FF4B4();
    sub_1000FF474(v31);
    v33 = v32;
    v34 = v79;
    v82 = *(v83 + 8);
    v82(v19, v79);
    sub_100007210(&qword_100150080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BC80;
    *(inited + 32) = NSFileProtectionKey;
    v36 = qword_10014B710;
    v37 = NSFileProtectionKey;
    if (v36 != -1)
    {
      swift_once();
    }

    sub_100003D38(v29, qword_100158698);
    v38 = sub_100100174();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v39;
    *(inited + 40) = v38;
    sub_10004D3C4(inited);
    swift_setDeallocating();
    sub_10000FFB4(inited + 32, &qword_10014D598);
    type metadata accessor for FileAttributeKey(0);
    sub_1000C38C0(&qword_10014BD10, type metadata accessor for FileAttributeKey);
    isa = sub_100100E44().super.isa;

    v86._countAndFlagsBits = 0;
    LODWORD(v38) = [v30 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:isa error:&v86];

    if (v38)
    {
      v41 = v86._countAndFlagsBits;
      v42 = v84;
      sub_1000FF574();
      v54 = v78;
      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v55 = sub_100100AE4();
      sub_100003D38(v55, qword_10014FE40);
      v56 = *(v83 + 16);
      v57 = v75;
      v56(v75, v42, v34);
      v56(v76, v42, v34);
      v58 = v54;
      v59 = sub_100100AC4();
      v60 = sub_1001015D4();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v80 = v62;
        v83 = swift_slowAlloc();
        v86._countAndFlagsBits = v83;
        *v61 = 138412802;
        *(v61 + 4) = v58;
        *v62 = v58;
        *(v61 + 12) = 2080;
        sub_1000C38C0(&qword_10014EEC0, &type metadata accessor for URL);
        v63 = v58;
        v64 = sub_100101E44();
        v66 = v65;
        v67 = v57;
        v68 = v82;
        v82(v67, v34);
        v69 = sub_10007A774(v64, v66, &v86._countAndFlagsBits);

        *(v61 + 14) = v69;
        *(v61 + 22) = 2048;
        v70 = v76;
        v71 = sub_1000FF414();
        if (v72)
        {
          v73 = 0;
        }

        else
        {
          v73 = v71;
        }

        v68(v70, v34);
        *(v61 + 24) = v73;
        _os_log_impl(&_mh_execute_header, v59, v60, "%@ - saved file [from data] %s with size %ld", v61, 0x20u);
        sub_10000FFB4(v80, &unk_10014D660);

        sub_10001100C(v83);

        v68(v84, v34);
      }

      else
      {
        v74 = v82;
        v82(v76, v34);

        v74(v57, v34);
        v74(v42, v34);
      }

      return v81;
    }

    else
    {
      v43 = v86._countAndFlagsBits;

      sub_1000FF334();

      swift_willThrow();
      v82(v84, v34);
      v44 = v78;
      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v45 = sub_100100AE4();
      sub_100003D38(v45, qword_10014FE40);
      v46 = v44;
      swift_errorRetain();
      v47 = sub_100100AC4();
      v48 = sub_1001015B4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412546;
        *(v49 + 4) = v46;
        *v50 = v46;
        *(v49 + 12) = 2112;
        v51 = v46;
        swift_errorRetain();
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 14) = v52;
        v50[1] = v52;
        _os_log_impl(&_mh_execute_header, v47, v48, "%@, error saving attachment file from data: %@", v49, 0x16u);
        sub_100007210(&unk_10014D660);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  return v24;
}

void sub_1000C3044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = a8;
  v27 = a5;
  v29 = a7;
  v28 = a6;
  v12 = sub_1000FF874();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C5F0C(a2, a3, a4);
  if (v16)
  {
    v17 = v16;
    v18 = sub_100100F94();
    [v17 setFilePath:v18];

    [v17 setNeedsProcessing:v29 & 1];
    return;
  }

  v24[1] = a3;
  v24[2] = a4;
  v25 = a1;
  sub_1000FFB54();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = [v19 initWithContext:v26];
  sub_1000FF864();
  isa = sub_1000FF824().super.isa;
  (*(v13 + 8))(v15, v12);
  [v20 setId:isa];

  v22 = sub_100100F94();
  [v20 setFilePath:v22];

  [v20 setNeedsProcessing:v29 & 1];
  if (a2 < -32768)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 0x8000)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v20 setIndex:a2];
  v23 = sub_100100F94();
  [v20 setName:v23];

  [v25 addFileAttachmentsObject:v20];
}

uint64_t sub_1000C3298(void *a1)
{
  v2 = sub_100007210(&qword_10014CD08);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v43 = sub_100100FD4();
    v44 = v10;
    v11 = [a1 index];
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100100FD4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [objc_allocWithZone(NSString) initWithString:v9];

    v27 = [v26 lastPathComponent];
    if (!v27)
    {
      sub_100100FD4();
      v27 = sub_100100F94();
    }

    v42 = v11;
    v28 = [objc_allocWithZone(NSString) initWithString:v27];

    v29 = [v28 stringByDeletingPathExtension];
    v30 = sub_100100FD4();
    v32 = v31;

    if (v16)
    {
      if (v14 == 0x6567616D69 && v16 == 0xE500000000000000 || (sub_100101E84() & 1) != 0 || v14 == 0x6F65646976 && v16 == 0xE500000000000000 || (sub_100101E84() & 1) != 0)
      {

        *v7 = v43;
LABEL_17:
        v33 = v7;
LABEL_20:
        v33[1] = v44;
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AssetAttachment(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        sub_1000C3858(v7, v34 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        result = v34;
        v36 = (v34 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
        *v36 = v30;
        v36[1] = v32;
        return result;
      }

      if (v14 == 0x6F69647561 && v16 == 0xE500000000000000)
      {

LABEL_34:
        *v7 = v43;
        goto LABEL_17;
      }

      v41 = sub_100101E84();

      if (v41)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v33 = (v7 + *(sub_100007210(&qword_10014CE88) + 48));
    *v7 = v14;
    v7[1] = v16;
    *v33 = v43;
    goto LABEL_20;
  }

  if (qword_10014B858 != -1)
  {
    swift_once();
  }

  v17 = sub_100100AE4();
  sub_100003D38(v17, qword_10014FE40);
  v18 = a1;
  v19 = sub_100100AC4();
  v20 = sub_1001015B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = [v18 id];
    if (v23)
    {
      v24 = v23;
      sub_1000FF854();

      v25 = sub_1000FF874();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    }

    else
    {
      v37 = sub_1000FF874();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    }

    v38 = sub_100101024();
    v40 = sub_10007A774(v38, v39, &v45);

    *(v21 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v19, v20, "JournalEntryAssetFileAttachmentMO is missing filePath. ID: %s", v21, 0xCu);
    sub_10001100C(v22);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000C3858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C38C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C39A4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_100158810);
  sub_100003D38(v0, qword_100158810);
  return sub_100100AD4();
}

uint64_t sub_1000C3AEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100100AE4();
  sub_100003CD4(v3, a2);
  sub_100003D38(v3, a2);
  return sub_100100AD4();
}

uint64_t sub_1000C3B64()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_1001588B8);
  sub_100003D38(v0, qword_1001588B8);
  return sub_100100AD4();
}

uint64_t sub_1000C3BE4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_1001588D0);
  sub_100003D38(v0, qword_1001588D0);
  return sub_100100AD4();
}

void sub_1000C3C60(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v127 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v124 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_100010FA8(*(a1 + 56) + 32 * v26, &v129);
      *&v131 = v27;
      sub_10002FC28(&v129, (&v131 + 8));
      v28 = v27;
LABEL_17:
      v134 = v131;
      v135 = v132;
      v136 = v133;
      v29 = v131;
      if (!v131)
      {

        if (*(*&v10 + 16))
        {
          v102 = sub_10004DCEC(NSForegroundColorAttributeName);
          v104 = a9;
          v103 = a3;
          v105 = a2;
          if (v106)
          {
            sub_100010FA8(*(*&v10 + 56) + 32 * v102, &v134);
            sub_10002329C(&v134);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v109 = sub_10004DCEC(NSFontAttributeName);
            if (v110)
            {
              sub_100010FA8(*(*&v10 + 56) + 32 * v109, &v134);
              sub_10002329C(&v134);
LABEL_92:
              sub_1000C4950(sub_10004DCEC, sub_1000FCB58, sub_1000FC2EC, &v134);
              sub_10002329C(&v134);
              type metadata accessor for Key(0);
              sub_1000C4B80();
              isa = sub_100100E44().super.isa;
              [v104 setAttributes:isa range:{v105, v103}];

              return;
            }

LABEL_89:
            v134 = 0u;
            v135 = 0u;
            sub_10002329C(&v134);
            v111 = a8;
            *(&v135 + 1) = sub_100010F50(0, &unk_10014E148);
            if (!a8)
            {
              v111 = a6;
            }

            *&v134 = v111;
            sub_10002FC28(&v134, &v131);
            v112 = v111;
            v113 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v129 = v113;
            sub_1000FB8AC(&v131, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
            v127 = *&v129;
            goto LABEL_92;
          }

          v10 = v127;
        }

        else
        {
          v104 = a9;
          v103 = a3;
          v105 = a2;
        }

        v134 = 0u;
        v135 = 0u;
        sub_10002329C(&v134);
        *(&v135 + 1) = sub_100010F50(0, &qword_10014C7D0);
        *&v134 = a7;
        sub_10002FC28(&v134, &v131);
        v107 = a7;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v10;
        sub_1000FB8AC(&v131, NSForegroundColorAttributeName, v108);
        v10 = *&v129;
        v127 = *&v129;
        if (!*(v129 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_10002FC28((&v134 + 8), &v131);
      v30 = sub_100100FD4();
      v32 = v31;
      if (v30 == sub_100100FD4() && v32 == v33)
      {

        v34 = &selRef_cancel;
      }

      else
      {
        v35 = sub_100101E84();

        v34 = &selRef_cancel;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_100010FA8(&v131, &v129);
      v36 = sub_100010F50(0, &unk_10014E148);
      if (swift_dynamicCast())
      {
        v122 = v128[0];
        v37 = [v122 fontDescriptor];
        v38 = v34;
        v39 = [v37 v34[263]];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, v38[263]), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v122;
        }

        else
        {
          v45 = v122;

          v44 = a6;
        }

        v130 = v36;
        *&v129 = v44;
        sub_10002FC28(&v129, v128);
        v69 = v44;
        v70 = v127;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v70;
        v73 = sub_10004DCEC(v29);
        v74 = *(*&v70 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_94;
        }

        v77 = v72;
        if (*(*&v70 + 24) < v76)
        {
          sub_1000F9E80(v76, v71);
          v78 = sub_10004DCEC(v29);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_100;
          }

          v73 = v78;
          v10 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v80 = (*(*&v10 + 56) + 32 * v73);
          sub_10001100C(v80);
          sub_10002FC28(v128, v80);

          sub_10001100C(&v131);
LABEL_70:
          v127 = v10;
          goto LABEL_78;
        }

        if (v71)
        {
          v10 = v126;
          if (v72)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_1000FC2EC();
          v10 = v126;
          if (v77)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v73 >> 6) + 64) |= 1 << v73;
        *(*(*&v10 + 48) + 8 * v73) = v29;
        sub_10002FC28(v128, (*(*&v10 + 56) + 32 * v73));

        sub_10001100C(&v131);
        v93 = *(*&v10 + 16);
        v65 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v94;
        goto LABEL_70;
      }

LABEL_26:
      v46 = sub_100100FD4();
      v48 = v47;
      if (v46 == sub_100100FD4() && v48 == v49)
      {
      }

      else
      {
        v50 = sub_100101E84();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = sub_100100FD4();
          v56 = v55;
          if (v54 == sub_100100FD4() && v56 == v57)
          {
          }

          else
          {
            v58 = sub_100101E84();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_100010FA8(&v131, &v129);
          sub_100010F50(0, &qword_10014E120);
          if (swift_dynamicCast())
          {
            v17 = v128[0];
            v18 = sub_100080CA0();
            [v18 setParagraphSpacingBefore:a4];
            sub_1000CB194();
            v130 = sub_100010F50(0, &unk_10014E108);
            *&v129 = v18;
            sub_10002FC28(&v129, v128);
            v19 = v18;
            v20 = v127;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v20;
            sub_1000FB8AC(v128, NSParagraphStyleAttributeName, v21);

            sub_10001100C(&v131);
            v10 = v126;
            goto LABEL_6;
          }

LABEL_43:
          sub_100010FA8(&v131, &v129);
          v59 = v127;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *&v59;
          v61 = sub_10004DCEC(v29);
          v63 = *(*&v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_95;
          }

          v67 = v62;
          if (*(*&v59 + 24) >= v66)
          {
            if ((v60 & 1) == 0)
            {
              v95 = v61;
              sub_1000FC2EC();
              v61 = v95;
              v10 = *v128;
              if (v67)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_1000F9E80(v66, v60);
            v61 = sub_10004DCEC(v29);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v128;
          if (v67)
          {
LABEL_59:
            v81 = (*(*&v10 + 56) + 32 * v61);
            sub_10001100C(v81);
            sub_10002FC28(&v129, v81);

            sub_10001100C(&v131);
LABEL_6:
            v127 = v10;
            v11 = v124;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(*&v10 + 48) + 8 * v61) = v29;
          sub_10002FC28(&v129, (*(*&v10 + 56) + 32 * v61));
          sub_10001100C(&v131);
          v96 = *(*&v10 + 16);
          v65 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v65)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v97;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_100010FA8(&v131, &v129);
    v51 = sub_100010F50(0, &qword_10014C7D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v128[0];
    *&v129 = 0;
    v128[0] = 0;
    v125 = 0;
    v126 = 0.0;
    [v52 getRed:&v129 green:v128 blue:&v126 alpha:&v125];
    v53 = *&v129;
    if (*&v129 > 0.001 || (v53 = *v128, *v128 > 0.001) || (v53 = v126, v126 > 0.001))
    {
      *&v129 = 0;
      v128[0] = 0;
      v125 = 0;
      v126 = 0.0;
      [v52 getRed:&v129 green:v128 blue:&v126 alpha:{&v125, v53}];
      if (*&v129 < 0.99 || *v128 < 0.99 || v126 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v130 = v51;
    *&v129 = a7;
    sub_10002FC28(&v129, v128);
    v82 = a7;
    v83 = v127;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v83;
    v85 = sub_10004DCEC(NSForegroundColorAttributeName);
    v87 = *(*&v83 + 16);
    v88 = (v86 & 1) == 0;
    v65 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v65)
    {
      goto LABEL_98;
    }

    v90 = v86;
    if (*(*&v83 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v98 = v85;
        sub_1000FC2EC();
        v85 = v98;
        v10 = v126;
        if (v90)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v126;
      if (v90)
      {
LABEL_66:
        v92 = (*(*&v10 + 56) + 32 * v85);
        sub_10001100C(v92);
        sub_10002FC28(v128, v92);

        sub_10001100C(&v131);
LABEL_77:
        v127 = v10;
LABEL_78:
        v11 = v124;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v133 = 0;
            v16 = v24;
            v131 = 0u;
            v132 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

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
      }

LABEL_75:
      *(*&v10 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(*&v10 + 48) + 8 * v85) = NSForegroundColorAttributeName;
      sub_10002FC28(v128, (*(*&v10 + 56) + 32 * v85));
      v99 = NSForegroundColorAttributeName;

      sub_10001100C(&v131);
      v100 = *(*&v10 + 16);
      v65 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v65)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v101;
      goto LABEL_77;
    }

    break;
  }

  sub_1000F9E80(v89, v84);
  v85 = sub_10004DCEC(NSForegroundColorAttributeName);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  sub_100101ED4();
  __break(1u);
}

double sub_1000C4950@<D0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t, uint64_t)@<X2>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  v7 = v4;
  v9 = a1();
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v15 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v15;
    }

    sub_10002FC28((*(v13 + 56) + 32 * v11), a4);
    a2(v11, v13);
    *v7 = v13;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1000C4A0C(void *a1)
{
  if ([a1 horizontalSizeClass] == 2 || objc_msgSend(a1, "userInterfaceIdiom") == 5)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a1];

    return v2;
  }

  else
  {
    v4 = sub_10004D9E8(UIFontTextStyleBody, &off_100134708, a1);
    sub_10002A08C(&unk_100134728);
    return v4;
  }
}

id sub_1000C4AD0(void *a1)
{
  v2 = &off_100134A20;
  v3 = &unk_100134A40;
  if ([a1 horizontalSizeClass] == 2)
  {
    v4 = &UIFontTextStyleTitle3;
  }

  else
  {
    v5 = [a1 userInterfaceIdiom];
    v4 = &UIFontTextStyleTitle3;
    if (v5 != 5)
    {
      v4 = &UIFontTextStyleHeadline;
      v2 = &off_100134A58;
      v3 = &unk_100134A78;
    }
  }

  v6 = sub_10004D9E8(*v4, v2, a1);
  sub_10002A08C(v3);
  return v6;
}

unint64_t sub_1000C4B80()
{
  result = qword_10014BD70;
  if (!qword_10014BD70)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014BD70);
  }

  return result;
}

uint64_t sub_1000C4C00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101974();

  return v1;
}

id sub_1000C4C74(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_1001019B4();
  __chkstk_darwin(v11);
  v12 = sub_100007210(&qword_1001500D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC21JournalShareExtension24CanvasGridCollectionView__isExpanded;
  v25 = 0;
  sub_1001019A4();
  sub_100101964();
  (*(v13 + 32))(&v5[v16], v15, v12);
  v5[OBJC_IVAR____TtC21JournalShareExtension24CanvasGridCollectionView_enforceShowCompressedAssetGrid] = 0;
  v17 = type metadata accessor for CanvasGridCollectionView();
  v24.receiver = v5;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [v20 setScrollEnabled:0];
  [v20 setClipsToBounds:0];
  [v20 setAllowsFocus:1];
  [v20 setAccessibilityContainerType:0];

  return v20;
}

void sub_1000C51F8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CanvasGridCollectionView();
  objc_msgSendSuper2(&v12, "invalidateIntrinsicContentSize");
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v9 = [v1 superview];
    if (!v9)
    {
      return;
    }

    v1 = v9;
    while (1)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        break;
      }

      v10 = [v1 superview];
      v1 = v10;
      if (!v10)
      {
        return;
      }
    }
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000C5C1C;
  *(v6 + 24) = v5;
  v11[4] = sub_1000C5C3C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000C4BD8;
  v11[3] = &unk_1001384E0;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutAnimation:v7];
  _Block_release(v7);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_1000C546C()
{
  v1 = v0;
  v2 = sub_1000FFA44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 numberOfSections] < 1)
  {
    goto LABEL_10;
  }

  v6 = [v1 numberOfItemsInSection:0];
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension24CanvasGridCollectionView_enforceShowCompressedAssetGrid) == 1)
  {
    if (v6 <= 5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_10014B6C0 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    if (qword_100158628 >= v6)
    {
      goto LABEL_10;
    }
  }

  sub_1000FFA04();
  isa = sub_1000FFA14().super.isa;
  (*(v3 + 8))(v5, v2);
  v8 = [v1 layoutAttributesForItemAtIndexPath:isa];

  if (v8)
  {
    [v1 contentSize];
    [v8 frame];
    CGRectGetMaxY(v11);

    return;
  }

LABEL_10:
  [v1 contentSize];
}

id sub_1000C587C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CanvasGridCollectionView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1000C58D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasGridCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CanvasGridCollectionView()
{
  result = qword_1001500B8;
  if (!qword_1001500B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C59D4()
{
  sub_1000C5A6C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000C5A6C()
{
  if (!qword_1001500C8)
  {
    sub_1001019B4();
    v0 = sub_100101994();
    if (!v1)
    {
      atomic_store(v0, &qword_1001500C8);
    }
  }
}

uint64_t sub_1000C5AEC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101974();

  *a1 = v3;
  return result;
}

uint64_t sub_1000C5B70(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_100101984();
}

uint64_t sub_1000C5BE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C5C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000C5C7C()
{
  v1 = v0;
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CD08);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  result = [v0 entry];
  if (result)
  {
    v13 = result;
    v14 = sub_1000C6144();
    v16 = v15;

    if (v16)
    {
      v17 = [v1 id];
      if (v17)
      {
        v18 = v17;
        sub_1000FF854();

        (*(v3 + 56))(v9, 0, 1, v2);
      }

      else
      {
        (*(v3 + 56))(v9, 1, 1, v2);
      }

      sub_100045508(v9, v11);
      if (!(*(v3 + 48))(v11, 1, v2))
      {
        (*(v3 + 16))(v5, v11, v2);
        sub_1000C635C(v11);
        v19 = sub_1000FF814();
        v21 = v20;
        (*(v3 + 8))(v5, v2);
        v22[0] = v14;
        v22[1] = v16;
        v23._countAndFlagsBits = 47;
        v23._object = 0xE100000000000000;
        sub_1001010B4(v23);
        v24._countAndFlagsBits = v19;
        v24._object = v21;
        sub_1001010B4(v24);

        return v22[0];
      }

      sub_1000C635C(v11);
    }

    return 0;
  }

  return result;
}

id sub_1000C5F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000FF364();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 fileAttachments];
  if (!v11)
  {
    sub_1000C63C4();
    v11 = sub_1001018F4();
  }

  sub_100101904();

  sub_1000FF354();
  if (!v27)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v22 = v8;
  v23 = v7;
  while (1)
  {
    sub_10002FC28(&v26, &v25);
    sub_1000FFB54();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v12 = v24;
    if ([v24 index] == a1)
    {
      v13 = [v12 name];
      if (v13)
      {
        break;
      }
    }

LABEL_5:

LABEL_6:
    sub_1000FF354();
    if (!v27)
    {
      v12 = 0;
      goto LABEL_17;
    }
  }

  v14 = v13;
  v15 = sub_100100FD4();
  v17 = v16;

  if (v15 != a2 || v17 != a3)
  {
    v19 = sub_100101E84();

    if (v19)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

LABEL_17:
  v8 = v22;
  v7 = v23;
LABEL_19:
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_1000C6144()
{
  v1 = v0;
  v2 = sub_1000FF874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CD08);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = [v1 id];
  if (v12)
  {
    v13 = v12;
    sub_1000FF854();

    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_100045508(v9, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1000C635C(v11);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1000C635C(v11);
    v15 = sub_1000FF814();
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t sub_1000C635C(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014CD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C63C4()
{
  result = qword_10014D200;
  if (!qword_10014D200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014D200);
  }

  return result;
}

uint64_t sub_1000C6410()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_1001500D8);
  sub_100003D38(v0, qword_1001500D8);
  return sub_100100AD4();
}

uint64_t sub_1000C6494(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_1000FF514();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_1000C6590, v6, v8);
}

uint64_t sub_1000C6590()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100150100);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_1000C08F0();
  *v4 = v0;
  v4[1] = sub_1000C668C;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10010F620, v3, v5);
}

uint64_t sub_1000C668C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000C6BF0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000C67A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000C67A8()
{
  v1 = v0[2];
  if (!sub_1001019F4())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_10014B8C8 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_100100AE4();
    sub_100003D38(v13, qword_1001500D8);
    v14 = v12;
    v15 = v1;
    v16 = sub_100100AC4();
    v17 = sub_1001015B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = *(v18 + qword_1001500F0);
      *(v19 + 4) = v21;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v21;
      v20[1] = v15;
      v22 = v15;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error getting JournalEntryAssetFileAttachment.file as CKAsset for requested id %@. Record: %@", v19, 0x16u);
      sub_100007210(&unk_10014D660);
      swift_arrayDestroy();
    }

    sub_1000C6FCC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = [v2 fileURL];
  if (v3)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = v3;
    sub_1000FF4C4();
    swift_unknownObjectRelease();

    v9 = sub_100007210(&qword_100150228);
    v10 = *(v9 + 48);
    (*(v5 + 32))(v7, v4, v6);
    *(v7 + v10) = v1;
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);

    v11 = v0[1];
    goto LABEL_12;
  }

  if (qword_10014B8C8 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_100100AE4();
  sub_100003D38(v27, qword_1001500D8);
  v28 = v26;
  v29 = sub_100100AC4();
  v30 = sub_1001015B4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v31 + qword_1001500F0);
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID %@", v32, 0xCu);
    sub_100011058(v33);
  }

  sub_1000C6FCC();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v11 = v0[1];
LABEL_12:

  return v11();
}

uint64_t sub_1000C6BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1000C6C80, 0, 0);
}

uint64_t sub_1000C6C80()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_1001500F0);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C0324;
  v3 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014FDB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000994EC;
  v0[13] = &unk_100138528;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_1000C6DE4()
{
  v1 = *(v0 + qword_100150100);
}

id sub_1000C6E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C6E6C(uint64_t a1)
{
  v2 = *(a1 + qword_100150100);
}

uint64_t type metadata accessor for AttachmentDownloadOperation()
{
  result = qword_100150130;
  if (!qword_100150130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6F1C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008030;

  return sub_1000C6C5C(a1, a2, v6);
}

unint64_t sub_1000C6FCC()
{
  result = qword_100150220;
  if (!qword_100150220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100150220);
  }

  return result;
}

unint64_t sub_1000C704C()
{
  result = qword_100150230;
  if (!qword_100150230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100150230);
  }

  return result;
}

uint64_t sub_1000C70A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v127 = a1;
  v105 = a3;
  v4 = sub_100007210(&qword_10014EEF0);
  v5 = __chkstk_darwin(v4 - 8);
  v109 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v95 - v7;
  v9 = sub_100100A04();
  v108 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - v13;
  __chkstk_darwin(v12);
  v99 = &v95 - v15;
  v115 = sub_1001001E4();
  v107 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v17 = __chkstk_darwin(v126);
  v125 = (&v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v113 = &v95 - v20;
  v21 = __chkstk_darwin(v19);
  v112 = &v95 - v22;
  __chkstk_darwin(v21);
  v124 = (&v95 - v23);
  v24 = sub_100007210(&qword_10014EBD0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v123 = (&v95 - v28);
  v129 = sub_1000FF514();
  v111 = *(v129 - 8);
  v29 = __chkstk_darwin(v129);
  v110 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v122 = &v95 - v31;
  v136 = type metadata accessor for AssetAttachment.AssetType(0);
  v32 = __chkstk_darwin(v136);
  v117 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v135 = &v95 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v95 - v37;
  __chkstk_darwin(v36);
  v40 = &v95 - v39;
  v41 = *(v3 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments);
  v102 = v3;
  if (v41 >> 62)
  {
    goto LABEL_95;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v106 = v8;
  v121 = v9;
  v130 = v27;
  if (v42)
  {
    v8 = 0;
    v133 = v41 & 0xFFFFFFFFFFFFFF8;
    v134 = v41 & 0xC000000000000001;
    v120 = (v111 + 56);
    v101 = (v107 + 8);
    v116 = (v111 + 32);
    v119 = (v111 + 48);
    v104 = (v108 + 48);
    v97 = (v108 + 32);
    v96 = (v108 + 8);
    v103 = (v111 + 8);
    v118 = v38;
    v131 = v41;
    v132 = v42;
    v95 = v14;
    do
    {
      if (v134)
      {
        v44 = sub_100101CA4();
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(v133 + 16))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          v42 = sub_100101DA4();
          goto LABEL_3;
        }

        v44 = *&v41[8 * v8 + 32];

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      v45 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v44 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v40, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v43 = type metadata accessor for AssetAttachment.AssetType;
          goto LABEL_6;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v53 = v40;
          if (v128)
          {

            v94 = v40;
            goto LABEL_89;
          }

          goto LABEL_20;
        }

        if (EnumCaseMultiPayload != 3)
        {

          sub_1000329A0(v44 + v45, v38, type metadata accessor for AssetAttachment.AssetType);
          v47 = swift_getEnumCaseMultiPayload();
          v48 = v47;
          if (v47 <= 1)
          {
            v50 = v38;
            v52 = v124;
            v51 = v125;
            if (!v48)
            {
              goto LABEL_23;
            }

            v61 = v38;
            v55 = v14;
            sub_1000328DC(v61, type metadata accessor for AssetAttachment.AssetType);
            v58 = 1;
            v57 = v129;
            v56 = v123;
          }

          else
          {
            v49 = v47 - 2;
            v50 = v38;
            v52 = v124;
            v51 = v125;
            if (v49 >= 2)
            {

              v50 = &v38[*(sub_100007210(&qword_10014CE88) + 48)];
            }

LABEL_23:
            v55 = v14;
            sub_10003293C(v50, v52);
            sub_1000329A0(v52, v51, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1000328DC(v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              v56 = v123;
              v57 = v129;
              (*v116)(v123, v51, v129);
              v58 = 0;
            }

            else
            {
              v59 = v114;
              sub_1001001D4();
              v56 = v123;
              sub_100100184();

              v60 = v59;
              v27 = v130;
              (*v101)(v60, v115);
              sub_1000328DC(v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              v58 = 0;
              v57 = v129;
            }
          }

          (*v120)(v56, v58, 1, v57);
          v53 = &v40[*(sub_100007210(&qword_10014CE88) + 48)];
          if ((*v119)(v56, 1, v57) == 1)
          {

            sub_10000FFB4(v56, &qword_10014EBD0);
            goto LABEL_31;
          }

          (*v116)(v122, v56, v57);
          sub_1000FF424();
          sub_100100964();
          v62 = v109;
          v63 = v121;
          sub_100100924();
          if ((*v104)(v62, 1, v63) == 1)
          {

            (*v103)(v122, v57);
            sub_10000FFB4(v62, &qword_10014EEF0);
            v27 = v130;
LABEL_31:
            v14 = v55;
          }

          else
          {
            v64 = v100;
            (*v97)(v100, v62, v63);
            sub_1001009C4();
            v98 = sub_1001009E4();
            v65 = *v96;
            (*v96)(v55, v63);
            if (v98)
            {
              v65(v64, v63);
              (*v103)(v122, v129);
LABEL_36:
              v27 = v130;
              if (v128)
              {

                v94 = v53;
                goto LABEL_89;
              }

              v14 = v95;
              v38 = v118;
LABEL_20:
              v54 = *(v44 + 16);
              sub_1000328DC(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              if (v54 == v127)
              {
LABEL_85:

                goto LABEL_90;
              }

              v41 = v131;
              goto LABEL_7;
            }

            sub_1001009B4();
            v98 = sub_1001009E4();
            v65(v55, v63);
            v65(v64, v63);
            (*v103)(v122, v129);
            if (v98)
            {
              goto LABEL_36;
            }

            v14 = v95;
            v27 = v130;
          }

          sub_1000328DC(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v38 = v118;
          v41 = v131;
          goto LABEL_7;
        }
      }

      v43 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_6:
      sub_1000328DC(v40, v43);
LABEL_7:
      ++v8;
    }

    while (v9 != v132);
  }

  v66 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  v67 = v102;
  swift_beginAccess();
  v8 = *(v67 + v66);
  if (v8 >> 62)
  {
    v68 = sub_100101DA4();
  }

  else
  {
    v68 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v113;
  v40 = v112;

  if (!v68)
  {
LABEL_84:

    return (*(v111 + 56))(v105, 1, 1, v129);
  }

  v41 = 0;
  v133 = v8 & 0xFFFFFFFFFFFFFF8;
  v134 = v8 & 0xC000000000000001;
  v125 = (v111 + 56);
  v119 = (v107 + 8);
  v123 = (v111 + 32);
  v124 = (v111 + 48);
  v122 = (v108 + 48);
  v118 = (v108 + 32);
  v116 = (v108 + 8);
  v120 = (v111 + 8);
  v131 = v68;
  v132 = v8;
  while (1)
  {
    if (v134)
    {
      v70 = sub_100101CA4();
      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v41 >= *(v133 + 16))
      {
        goto LABEL_94;
      }

      v70 = *(v8 + 8 * v41 + 32);

      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v71 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v70 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v135, type metadata accessor for AssetAttachment.AssetType);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 <= 1)
    {
      if (v72)
      {

        v69 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
LABEL_46:

        v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_1000328DC(v135, v69);
      goto LABEL_48;
    }

    if (v72 == 2)
    {
      v79 = v135;
      if (v128)
      {

        v94 = v135;
        goto LABEL_89;
      }

      goto LABEL_61;
    }

    if (v72 == 3)
    {
      goto LABEL_46;
    }

    v73 = v70 + v71;
    v74 = v117;
    sub_1000329A0(v73, v117, type metadata accessor for AssetAttachment.AssetType);
    v75 = swift_getEnumCaseMultiPayload();
    v76 = v75;
    if (v75 <= 1)
    {
      v78 = v74;
      if (v76)
      {
        sub_1000328DC(v74, type metadata accessor for AssetAttachment.AssetType);
        v82 = 1;
        goto LABEL_68;
      }
    }

    else
    {
      v77 = v75 - 2;
      v78 = v74;
      if (v77 >= 2)
      {

        v78 = v74 + *(sub_100007210(&qword_10014CE88) + 48);
      }
    }

    sub_10003293C(v78, v40);
    sub_1000329A0(v40, v9, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000328DC(v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v81 = v129;
      (*v123)(v27, v9, v129);
      v82 = 0;
      goto LABEL_69;
    }

    v83 = v114;
    sub_1001001D4();
    sub_100100184();
    v27 = v130;

    (*v119)(v83, v115);
    sub_1000328DC(v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v82 = 0;
LABEL_68:
    v81 = v129;
LABEL_69:
    (*v125)(v27, v82, 1, v81);
    v84 = sub_100007210(&qword_10014CE88);
    v85 = v27;
    v79 = v135 + *(v84 + 48);
    if ((*v124)(v85, 1, v81) == 1)
    {

      sub_10000FFB4(v85, &qword_10014EBD0);
LABEL_74:
      sub_1000328DC(v79, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v27 = v130;
      goto LABEL_48;
    }

    v86 = v110;
    (*v123)(v110, v85, v81);
    sub_1000FF424();
    sub_100100964();
    v87 = v106;
    sub_100100924();
    v88 = v121;
    if ((*v122)(v87, 1, v121) == 1)
    {

      (*v120)(v86, v81);
      sub_10000FFB4(v87, &qword_10014EEF0);
LABEL_73:
      v9 = v113;
      v40 = v112;
      goto LABEL_74;
    }

    v89 = v99;
    (*v118)(v99, v87, v88);
    sub_1001009C4();
    v90 = sub_1001009E4();
    v91 = *v116;
    (*v116)(v14, v88);
    if (v90)
    {
      v92 = v14;
      (v91)(v89, v88);
      (*v120)(v110, v129);
    }

    else
    {
      sub_1001009B4();
      LODWORD(v109) = sub_1001009E4();
      v92 = v14;
      (v91)(v14, v88);
      (v91)(v89, v88);
      (*v120)(v110, v129);
      if ((v109 & 1) == 0)
      {

        goto LABEL_73;
      }
    }

    v9 = v113;
    v40 = v112;
    if (v128)
    {
      break;
    }

    v14 = v92;
LABEL_61:
    v80 = *(v70 + 16);
    sub_1000328DC(v79, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (v80 == v127)
    {
      goto LABEL_85;
    }

    v27 = v130;
LABEL_48:
    v8 = v132;
    ++v41;
    if (v38 == v131)
    {
      goto LABEL_84;
    }
  }

  v94 = v79;
LABEL_89:
  sub_1000328DC(v94, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_90:
  sub_1000C1180(v105);
}

char *sub_1000C83E8(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for VideoThumbnailCacheOperation());
  v14 = v6;

  return sub_1000F1AEC(v14, a1, a2, a3 & 1, a4, a5, a6);
}

id sub_1000C848C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAsset()
{
  result = qword_100150260;
  if (!qword_100150260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000C8594()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v9;
  v10 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_100100A04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007210(&qword_10014C2B8);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = sub_1001004B4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v0;
  sub_10000D4AC(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000FFB4(v19, &qword_10014C2B8);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = sub_1001004A4();
  if (!v25)
  {
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v26 = v25;
  v55 = v24;
  v56 = v3;
  sub_1001009C4();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v14 + 8))(v16, v13);
  sub_1000C70A4(0, 1, v12);
  v30 = sub_1000FF514();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v12, 1, v30) != 1)
  {
    sub_1000FF474(v32);
    v33 = v34;
    (*(v31 + 8))(v12, v30);
  }

  [v29 setContentURL:v33];

  sub_1000800A4(v55, v26, 0, 0);

  v35 = v59;
  sub_100100494();
  v36 = v35;
  v37 = sub_1000FF804();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v60 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    v41 = v58;
    if (v40)
    {
      v42 = [v40 entry];
      if (v42)
      {
        v43 = v42;
        sub_1000FFBA4();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v36 = v59;
    }

    else
    {
      v44 = 1;
    }

    (*(v38 + 56))(v41, v44, 1, v37);
    if (v39(v36, 1, v37) != 1)
    {
      sub_10000FFB4(v36, &unk_10014D640);
    }
  }

  else
  {
    v41 = v58;
    (*(v38 + 32))(v58, v36, v37);
    (*(v38 + 56))(v41, 0, 1, v37);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v45 = sub_100101004();
  v47 = v46;
  sub_100007210(&qword_10014C220);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10010BC80;
  v49 = sub_100081080(v45, v47, v41);
  v51 = v50;

  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  v52 = sub_1001011C4().super.isa;

  [v29 setAlternateNames:v52];

  sub_10000FFB4(v41, &unk_10014D640);
  (*(v21 + 8))(v23, v20);
  return v29;
}

uint64_t sub_1000C8CD4()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_100101DA4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100101CA4();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      type metadata accessor for ReflectionAsset();
      if ([v6 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
LABEL_13:
  }

  return 0;
}

id sub_1000C8E24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_1000C8E8C(void *a1)
{
  v2 = sub_100007210(&qword_10014C398);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_100100264();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D02C(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = sub_100100234();
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }

    v14 = sub_100100244();
    if (v15 >> 60 != 15)
    {
      v16 = v14;
      v17 = v15;
      sub_1000FF534();
      sub_1000064AC(v16, v17);
    }

    v18 = sub_100100224();
    if (v19 >> 60 == 15)
    {
      v20 = sub_100100254();
      v22 = 0;
      if (v21 >> 60 == 15)
      {
        goto LABEL_19;
      }

      v35 = v11 < 7;
    }

    else
    {
      v35 = v11 < 7;
      v23 = v18;
      v24 = v19;
      sub_10001511C();
      v22 = sub_100101A04();
      sub_1000064AC(v23, v24);
      v20 = sub_100100254();
      if (v21 >> 60 == 15)
      {
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    v25 = v21;
    v26 = v20;
    sub_10001511C();
    v27 = sub_100101A04();
    sub_1000064AC(v26, v25);
    if (v22)
    {
      if (v27)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v22;
        v34 = objc_allocWithZone(UIColor);
        aBlock[4] = sub_1000C9348;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000C8E24;
        aBlock[3] = &unk_100138608;
        v29 = _Block_copy(aBlock);
        v30 = v27;
        v31 = v22;
        [v34 initWithDynamicProvider:v29];
        _Block_release(v29);

        (*(v6 + 8))(v8, v5);

        return v11;
      }

LABEL_17:
      (*(v6 + 8))(v8, v5);

      return v11;
    }

    v22 = v27;
LABEL_19:
    (*(v6 + 8))(v8, v5);

    return v11;
  }

  sub_1000C92A0(v4);
  v9 = objc_allocWithZone(NSAttributedString);
  v10 = sub_100100F94();
  [v9 initWithString:v10];

  return 0;
}

uint64_t sub_1000C92A0(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014C398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C9308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C9350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000C9368(unsigned __int8 a1)
{
  v2 = sub_1000FFB34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  v16 = CGRectGetWidth(v42) + -40.0 + -4.0;
  v17 = v16 * 0.25 + -2.0;
  v18 = [v6 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  Width = CGRectGetWidth(v43);
  v28 = [v6 mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  v37 = CGRectGetWidth(v44);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        v17 = v37 + -90.0;
        v38 = Width + -40.0;
        (*(v3 + 104))(v5, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
        v39 = sub_1000FFB24();
        (*(v3 + 8))(v5, v2);
        if ((v39 & 1) == 0)
        {
          return v38;
        }
      }
    }

    else if (a1 == 4)
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return v16;
    }

    else
    {
      return v16 * 0.5 + -4.0;
    }
  }

  else
  {
    return v16;
  }

  return v17;
}

char *sub_1000C9630(int a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_100007210(&qword_10014C3C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for WorkoutRouteThumbnailCacheOperation());
  sub_10000CBAC(v14);
  sub_1000CB0D4(v14, v15 + qword_100158720);
  v16 = sub_100101734();
  v17 = v6;

  return sub_1000F1AEC(v17, a1, a2, a3 & 1, a4, a5, v16);
}

uint64_t sub_1000C9760(uint64_t a1, unsigned __int8 a2)
{
  sub_1000FF874();
  sub_1000CB08C(&qword_10014C018, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_1001010B4(v15);
  v16._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_1001010B4(v17);
  v3 = 0x656772614C78;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v5 = 0x657263536C6C7566;
    v4 = 0xEA00000000006E65;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v7 = 0x61546D756964656DLL;
    v6 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000006564;
  v9 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6154656772614C78;
    v10 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v8 = v10;
  }

  else
  {
    v3 = v9;
  }

  if (a2 <= 3u)
  {
    v11._countAndFlagsBits = v3;
  }

  else
  {
    v11._countAndFlagsBits = v5;
  }

  if (a2 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  v11._object = v12;
  sub_1001010B4(v11);

  v18._countAndFlagsBits = sub_100101E44();
  sub_1001010B4(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  sub_1001010B4(v19);

  return 0x2D626D756874;
}

id sub_1000C99EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRouteAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutRouteAsset()
{
  result = qword_1001502D0;
  if (!qword_1001502D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000C9AF4()
{
  v1 = sub_100100F84();
  __chkstk_darwin(v1 - 8);
  v133 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000FF8B4();
  __chkstk_darwin(v3 - 8);
  v136 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014CE48);
  __chkstk_darwin(v5 - 8);
  v126 = &v112 - v6;
  v7 = sub_100007210(&qword_10014CE50);
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v122 = &v112 - v8;
  v121 = sub_100007210(&qword_10014CE58);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v112 - v9;
  v123 = sub_100007210(&qword_10014CE60);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v112 - v10;
  v135 = sub_100007210(&qword_10014CE68);
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v112 - v11;
  v12 = sub_100100604();
  v127 = *(v12 - 8);
  v128 = v12;
  __chkstk_darwin(v12);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&unk_10014D640);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v131 = &v112 - v19;
  __chkstk_darwin(v18);
  v21 = &v112 - v20;
  v22 = sub_100100A04();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007210(&qword_10014C3C0);
  __chkstk_darwin(v26 - 8);
  v28 = &v112 - v27;
  v29 = sub_100100554();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension17WorkoutRouteAsset_metadata))
  {
    (*(v30 + 56))(v28, 1, 1, v29);
    goto LABEL_6;
  }

  sub_100008FB8(v28);

  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
LABEL_6:
    sub_10000FFB4(v28, &qword_10014C3C0);
    return 0;
  }

  v113 = v30;
  v33 = *(v30 + 32);
  v114 = v29;
  v33(v32, v28);
  sub_100100974();
  v34 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v36 = [v34 initWithContentType:isa];

  (*(v23 + 8))(v25, v22);
  v37 = sub_1001004E4();
  if (!v38)
  {
    v39 = v37;
    v40 = [objc_opt_self() mainBundle];
    v111._countAndFlagsBits = 0x80000001001054A0;
    v140._countAndFlagsBits = 0x74756F6B726F57;
    v140._object = 0xE700000000000000;
    v141.value._countAndFlagsBits = v39;
    v141.value._object = 0;
    v41.super.isa = v40;
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    sub_1000FF2E4(v140, v141, v41, v142, v111);
  }

  v42 = sub_100100F94();

  [v36 setDisplayName:v42];

  sub_100100544();
  v43 = sub_1000FF804();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v116 = v44 + 48;
  v115 = v45;
  v46 = 0;
  if (v45(v21, 1, v43) != 1)
  {
    v46 = sub_1000FF754().super.isa;
    (*(v44 + 8))(v21, v43);
  }

  [v36 setTimestamp:v46];

  v47 = sub_100100524();
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = sub_10000F02C(0, 1, 1, _swiftEmptyArrayStorage);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_10000F02C((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[16 * v53];
    *(v54 + 4) = v49;
    *(v54 + 5) = v50;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  sub_100100534();
  if (v55)
  {
    sub_1000CAAD8();
  }

  sub_1001020A4();
  v56 = sub_100102074();
  v58 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_10000F02C(0, *(v51 + 2) + 1, 1, v51);
  }

  v60 = *(v51 + 2);
  v59 = *(v51 + 3);
  if (v60 >= v59 >> 1)
  {
    v51 = sub_10000F02C((v59 > 1), v60 + 1, 1, v51);
  }

  v112 = v44;
  *(v51 + 2) = v60 + 1;
  v61 = &v51[16 * v60];
  *(v61 + 4) = v56;
  *(v61 + 5) = v58;
  v62 = sub_1001004D4();
  if (v63)
  {
    v64 = v135;
  }

  else
  {
    v137 = v62;
    sub_1000FF144();
    sub_1000327F4();
    sub_1000CB08C(&qword_10014CE38, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v65 = v128;
    sub_100100E34();
    (*(v127 + 8))(v14, v65);
    v66 = v138;
    v67 = v139;
    v69 = *(v51 + 2);
    v68 = *(v51 + 3);
    v64 = v135;
    if (v69 >= v68 >> 1)
    {
      v51 = sub_10000F02C((v68 > 1), v69 + 1, 1, v51);
    }

    *(v51 + 2) = v69 + 1;
    v70 = &v51[16 * v69];
    *(v70 + 4) = v66;
    *(v70 + 5) = v67;
  }

  sub_1001004C4();
  v71 = [objc_opt_self() kilocalories];
  sub_100032848();
  v72 = v134;
  sub_1000FF194();
  v73 = sub_100100514();
  if (!v74)
  {
    v75 = v117;
    sub_1000FF1A4();
    v76 = v122;
    sub_1000FF374();
    sub_1000FF884();
    sub_1000327F4();
    v77 = v126;
    sub_1000FF344();
    v78 = sub_100007210(&qword_10014CE78);
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = v43;
    v80 = v118;
    sub_1000FF164();
    sub_10000FFB4(v77, &qword_10014CE48);
    (*(v124 + 8))(v76, v125);
    v81 = v75;
    v64 = v135;
    (*(v119 + 8))(v81, v121);
    sub_100032894(&qword_10014CE80, &qword_10014CE60);
    v82 = v123;
    sub_1000FF1B4();
    v83 = v80;
    v43 = v79;
    (*(v120 + 8))(v83, v82);
    v84 = sub_100101034();
    v86 = v85;

    v74 = v86;
    v73 = v84;
  }

  v88 = *(v51 + 2);
  v87 = *(v51 + 3);
  if (v88 >= v87 >> 1)
  {
    v108 = v73;
    v109 = v74;
    v110 = sub_10000F02C((v87 > 1), v88 + 1, 1, v51);
    v74 = v109;
    v72 = v134;
    v51 = v110;
    v73 = v108;
  }

  *(v51 + 2) = v88 + 1;
  v89 = &v51[16 * v88];
  *(v89 + 4) = v73;
  *(v89 + 5) = v74;
  v138 = v51;
  sub_100007210(&unk_10014D670);
  sub_100032894(&qword_10014C218, &unk_10014D670);
  sub_100100EA4();

  v90 = sub_100100F94();

  [v36 setContentDescription:v90];

  v91 = v130;
  sub_100100544();
  if (v115(v91, 1, v43) == 1)
  {
    v92 = *(v129 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    v93 = v131;
    if (v92 && (v94 = [v92 entry]) != 0)
    {
      v95 = v94;
      sub_1000FFBA4();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    (*(v112 + 56))(v93, v96, 1, v43);
    if (v115(v91, 1, v43) != 1)
    {
      sub_10000FFB4(v91, &unk_10014D640);
    }
  }

  else
  {
    v97 = v112;
    v93 = v131;
    (*(v112 + 32))(v131, v91, v43);
    (*(v97 + 56))(v93, 0, 1, v43);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v98 = sub_100101004();
  v100 = v99;
  sub_100007210(&qword_10014C220);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_10010BC80;
  v102 = sub_100081080(v98, v100, v93);
  v103 = v93;
  v105 = v104;

  *(v101 + 32) = v102;
  *(v101 + 40) = v105;
  v106 = sub_1001011C4().super.isa;

  [v36 setAlternateNames:v106];

  sub_10000FFB4(v103, &unk_10014D640);
  (*(v132 + 8))(v72, v64);
  (*(v113 + 8))(v32, v114);
  return v36;
}

double sub_1000CAAD8()
{
  v0 = sub_1000FF9C4();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000FF264();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_1000FF804();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100100544();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_1000FF7F4();
    if (v18(v10, 1, v11) != 1)
    {
      sub_10000FFB4(v10, &unk_10014D640);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_100100504();
  if (v18(v8, 1, v11) == 1)
  {
    sub_1000FF7F4();
    if (v18(v8, 1, v11) != 1)
    {
      sub_10000FFB4(v8, &unk_10014D640);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_1000FF9A4();
  sub_100007210(&qword_10014CE90);
  v19 = sub_1000FF9B4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10010BC80;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_100032A08(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  sub_1000FF904();

  (*(v32 + 8))(v2, v33);
  v24 = sub_1000FF244();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000CB08C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CB0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000CB144()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setParagraphSpacingBefore:8.0];
  sub_1000CB194();
  return v0;
}

id sub_1000CB194()
{
  isa = v0;
  result = [(objc_class *)v0 tabStops];
  if (result)
  {
    v3 = result;
    sub_1000CB4F0();
    v4 = sub_1001011D4();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100101DA4())
    {
      v19 = isa;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = sub_100101CA4();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      v8 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_1000CB53C();
      isa = sub_100100E44().super.isa;
      [v8 initWithTextAlignment:2 location:isa options:26.0];

      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isa = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100101204();
      }

      sub_100101234();

      if (i == 1)
      {
LABEL_10:
        isa = v19;
        break;
      }

      v9 = 36.0;
      v10 = 5;
      while (1)
      {
        v11 = v10 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = sub_100101CA4();
        }

        else
        {
          if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v4 + 8 * v10);
        }

        v13 = v12;
        v14 = v10 - 3;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 alignment];
        v16 = objc_allocWithZone(NSTextTab);
        v17 = sub_100100E44().super.isa;
        [v16 initWithTextAlignment:v15 location:v17 options:v9];

        sub_1001011B4();
        isa = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (isa >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100101204();
        }

        sub_100101234();

        v9 = v9 + 10.0;
        ++v10;
        if (v14 == i)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v18 = sub_1001011C4().super.isa;

    [(objc_class *)isa setTabStops:v18];

    return [(objc_class *)isa setDefaultTabInterval:10.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000CB4F0()
{
  result = qword_100150320;
  if (!qword_100150320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100150320);
  }

  return result;
}

unint64_t sub_1000CB53C()
{
  result = qword_10014BD60;
  if (!qword_10014BD60)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014BD60);
  }

  return result;
}

void sub_1000CB594(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001004B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007210(&qword_10014C2B8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = 0uLL;
  v20 = 1;
  if (a1 > 6u)
  {
    goto LABEL_15;
  }

  if (((1 << a1) & 0x13) != 0)
  {
    if (*(a2 + OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata))
    {

      sub_10000A590(v18);

      if ((*(v7 + 48))(v18, 1, v6))
      {
        sub_10000FFB4(v18, &qword_10014C2B8);
        goto LABEL_28;
      }

      (*(v7 + 16))(v9, v18, v6);
      sub_10000FFB4(v18, &qword_10014C2B8);
      v22 = sub_100100804();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      if (!v24)
      {
        goto LABEL_28;
      }

      if (qword_10014B560 != -1)
      {
        swift_once();
      }

      v25 = sub_100100AE4();
      sub_100003D38(v25, qword_10014B568);

      v26 = sub_100100AC4();
      v27 = sub_1001015A4();

      if (os_log_type_enabled(v26, v27))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (((1 << a1) & 0x48) != 0)
  {
    if (*(a2 + OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata))
    {

      sub_10000A590(v13);

      if ((*(v7 + 48))(v13, 1, v6))
      {
        sub_10000FFB4(v13, &qword_10014C2B8);
LABEL_28:
        v20 = 1;
        v21 = 0uLL;
        v19 = 0uLL;
        goto LABEL_29;
      }

      (*(v7 + 16))(v9, v13, v6);
      sub_10000FFB4(v13, &qword_10014C2B8);
      v22 = sub_1001007E4();
      v24 = v28;
      (*(v7 + 8))(v9, v6);
      if (!v24)
      {
        goto LABEL_28;
      }

      if (qword_10014B560 != -1)
      {
        swift_once();
      }

      v29 = sub_100100AE4();
      sub_100003D38(v29, qword_10014B568);

      v26 = sub_100100AC4();
      v27 = sub_1001015A4();

      if (os_log_type_enabled(v26, v27))
      {
LABEL_25:
        v30 = swift_slowAlloc();
        *&size.width = swift_slowAlloc();
        width = size.width;
        *v30 = 136315650;
        type metadata accessor for PhotoAsset();
        v31 = [swift_getObjCClassFromMetadata() debugDescription];
        v32 = sub_100100FD4();
        v34 = v33;

        v35 = sub_10007A774(v32, v34, &width);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        v58 = a1;
        v36 = sub_100101024();
        v38 = sub_10007A774(v36, v37, &width);

        *(v30 + 14) = v38;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_10007A774(v22, v24, &width);
        _os_log_impl(&_mh_execute_header, v26, v27, "Cropping %s of size class %s using string %s", v30, 0x20u);
        swift_arrayDestroy();
      }

LABEL_26:

      v39 = sub_100100F94();

      v60 = CGRectFromString(v39);
      v54 = *&v60.origin.y;
      origin = v60.origin;
      v56 = *&v60.size.height;
      size = v60.size;

      *&v21 = size.width;
      if (size.width != 0.0 || *&v56 != 0.0)
      {
        v20 = 0;
        *&v19 = origin.x;
        *(&v19 + 1) = v54;
        *(&v21 + 1) = v56;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (a1 != 5)
  {
LABEL_15:
    v21 = 0uLL;
    goto LABEL_29;
  }

  if (*(a2 + OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata))
  {

    sub_10000A590(v16);

    if ((*(v7 + 48))(v16, 1, v6))
    {
      sub_10000FFB4(v16, &qword_10014C2B8);
      goto LABEL_28;
    }

    (*(v7 + 16))(v9, v16, v6);
    sub_10000FFB4(v16, &qword_10014C2B8);
    v40 = sub_1001007F4();
    v42 = v41;
    (*(v7 + 8))(v9, v6);
    if (!v42)
    {
      goto LABEL_28;
    }

    if (qword_10014B560 != -1)
    {
      swift_once();
    }

    v43 = sub_100100AE4();
    sub_100003D38(v43, qword_10014B568);

    v26 = sub_100100AC4();
    v44 = sub_1001015A4();

    if (os_log_type_enabled(v26, v44))
    {
      v45 = swift_slowAlloc();
      width = COERCE_DOUBLE(swift_slowAlloc());
      *v45 = 136315650;
      type metadata accessor for PhotoAsset();
      v46 = [swift_getObjCClassFromMetadata() debugDescription];
      v47 = sub_100100FD4();
      v49 = v48;

      v50 = sub_10007A774(v47, v49, &width);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      v58 = 5;
      v51 = sub_100101024();
      v53 = sub_10007A774(v51, v52, &width);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_10007A774(v40, v42, &width);
      _os_log_impl(&_mh_execute_header, v26, v44, "Cropping %s of size class %s using string %s", v45, 0x20u);
      swift_arrayDestroy();
    }

    goto LABEL_26;
  }

LABEL_14:
  v20 = 1;
  v21 = 0uLL;
LABEL_29:
  *a3 = v19;
  *(a3 + 16) = v21;
  *(a3 + 32) = v20;
}

id sub_1000CBF8C(void *a1)
{
  v3 = OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_assetImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v1[OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_needsCropRectUpdate] = 0;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_photoAsset] = 0;
  v4 = OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_latestImageRequestID;
  v5 = sub_1000FF874();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhotoAssetView();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1000CC0A8();
  }

  return v7;
}

void sub_1000CC0A8()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14PhotoAssetView_assetImageView];
  [v0 addSubview:v1];
  [v1 setAlpha:0.0];
  [v1 setHidden:0];
  [v1 setContentMode:2];
  [v1 setIsAccessibilityElement:1];
  v2 = UIAccessibilityTraitImage;
  v3 = [v1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  [v1 setAccessibilityTraits:v4 | v3];
  [v1 setAccessibilityIgnoresInvertColors:1];
  if (qword_10014B690 != -1)
  {
    swift_once();
  }

  v5 = sub_100100F94();
  [v1 setAccessibilityLabel:v5];

  v6 = sub_100100F94();
  [v0 setAccessibilityIdentifier:v6];
}