uint64_t sub_1001DBD44()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[10];
    v5 = v2[7];
    v6 = v2[8];

    (*(v6 + 8))(v4, v5);
    v7 = v2[28];
    v8 = v2[29];

    return _swift_task_switch(sub_1001DBEFC, v7, v8);
  }
}

uint64_t sub_1001DBEFC()
{
  v182 = v0;
  v1 = *(v0 + 296);

  v2 = &qword_100AD0000;
  while (2)
  {
    if (v2[12] != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    sub_10000617C(*(v0 + 128), qword_100B2FC48);
    FileStoreConfiguration.temporaryDirectoryURL.getter();
    v6 = URL.absoluteString.getter();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v3, v5);
    URL.absoluteString.getter();
    v10._countAndFlagsBits = v6;
    v10._object = v8;
    v11 = String.hasPrefix(_:)(v10);

    if (v11)
    {
      v12 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      *(v0 + 40) = 0;
      v16 = [v12 removeItemAtURL:v14 error:v0 + 40];

      v17 = *(v0 + 40);
      if (v16)
      {
        v18 = *(v0 + 120);
        v19 = *(v0 + 88);
        v20 = v17;

        v9(v18, v19);
      }

      else
      {
        v23 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_10000617C(v24, qword_100AF3B28);
        swift_errorRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 120);
        v29 = *(v0 + 88);
        if (v27)
        {
          v178 = *(v0 + 88);
          v30 = swift_slowAlloc();
          v31 = v28;
          v32 = swift_slowAlloc();
          *v30 = 138412290;
          swift_errorRetain();
          v33 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v33;
          *v32 = v33;
          _os_log_impl(&_mh_execute_header, v25, v26, "Error when removing attachment source file: %@", v30, 0xCu);
          sub_100004F84(v32, &unk_100AD4BB0);

          v34 = v31;
          v35 = v178;
        }

        else
        {

          v34 = v28;
          v35 = v29;
        }

        v9(v34, v35);
      }
    }

    else
    {
      v21 = *(v0 + 120);
      v22 = *(v0 + 88);

      v9(v21, v22);
    }

    while (1)
    {
      v36 = *(v0 + 248);
      v37 = *(v0 + 272) + 1;
      sub_100004F84(*(v0 + 184), &unk_100AD6DD0);
      if (v37 == v36)
      {

        v158 = *(v0 + 8);

        return v158();
      }

      v38 = *(v0 + 272) + 1;
      *(v0 + 272) = v38;
      v39 = *(v0 + 240);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v39 + 8 * v38 + 32);
      }

      *(v0 + 280) = v40;
      v41 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068AC8(v40 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = *(v0 + 216);
      if (EnumCaseMultiPayload <= 1)
      {
        v45 = EnumCaseMultiPayload ? type metadata accessor for AssetAttachment.AssetType : type metadata accessor for AssetAttachment.AssetType.FilePathType;
        sub_100069140(v43, v45);
        v44 = 0x6567616D69;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_100069140(v43, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v44 = 0x6F65646976;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_100069140(v43, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v44 = 0x6F69647561;
      }

      else
      {
        v46 = *(v0 + 216);

        v47 = sub_1000F24EC(&qword_100AD33B8);
        sub_100069140(v46 + *(v47 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v44 = 0x726568746FLL;
      }

      v179 = v44;
      v48 = *(v40 + 16);
      sub_100068AC8(v40 + v41, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
      v49 = swift_getEnumCaseMultiPayload();
      v50 = *(v0 + 208);
      v177 = v48;
      if (v49 <= 1)
      {
        if (v49)
        {
          sub_100069140(v50, type metadata accessor for AssetAttachment.AssetType);
          v63 = 1;
          goto LABEL_37;
        }
      }

      else if ((v49 - 2) >= 2)
      {
        v51 = *(v0 + 208);

        v50 = v51 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
      }

      v53 = *(v0 + 160);
      v52 = *(v0 + 168);
      sub_100048E9C(v50, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      sub_100068AC8(v52, v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v54 = swift_getEnumCaseMultiPayload();
      v55 = *(v0 + 184);
      v57 = *(v0 + 160);
      v56 = *(v0 + 168);
      if (v54 == 1)
      {
        v58 = *(v0 + 88);
        v59 = *(v0 + 96);
        sub_100069140(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v59 + 32))(v55, v57, v58);
      }

      else
      {
        v60 = *(v0 + 136);
        v61 = *(v0 + 144);
        v62 = *(v0 + 128);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v60 + 8))(v61, v62);
        sub_100069140(v56, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v63 = 0;
LABEL_37:
      v65 = *(v0 + 176);
      v64 = *(v0 + 184);
      v66 = *(v0 + 88);
      v67 = *(v0 + 96);
      (*(v67 + 56))(v64, v63, 1, v66);
      sub_100161650(v64, v65);
      if ((*(v67 + 48))(v65, 1, v66) != 1)
      {
        break;
      }

      v68 = *(v0 + 200);
      sub_100004F84(*(v0 + 176), &unk_100AD6DD0);
      sub_100068AC8(v40 + v41, v68, type metadata accessor for AssetAttachment.AssetType);
      v69 = swift_getEnumCaseMultiPayload();
      v70 = *(v0 + 200);
      if (v69 == 1)
      {
        v71 = *v70;
        *(v0 + 328) = *v70;
        v72 = UIImageHEICRepresentation(v71);
        if (v72)
        {
          v73 = v72;
          v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          *(v0 + 336) = v74;
          *(v0 + 344) = v76;
          v77 = *(v40 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          v78 = *(v40 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID + 8);

          v79 = sub_100810858(v74, v76, v77, v78, 1667851624, 0xE400000000000000);
          v81 = v80;

          *(v0 + 352) = v81;
          if (v81)
          {
            v82 = *(v0 + 48);
            v83 = *(v82 + *(v0 + 256));
            *(v0 + 360) = v83;
            if (v83)
            {
              v84 = *(v82 + *(v0 + 264));
              *(v0 + 368) = v84;
              if (v84)
              {
                v160 = *(v0 + 392);
                v162 = *(v0 + 64);
                v161 = *(v0 + 72);
                v163 = *(v0 + 56);
                v164 = swift_allocObject();
                *(v0 + 376) = v164;
                *(v164 + 16) = v84;
                *(v164 + 24) = v177;
                *(v164 + 32) = v179;
                *(v164 + 40) = 0xE500000000000000;
                *(v164 + 48) = v79;
                *(v164 + 56) = v81;
                *(v164 + 64) = 1;
                *(v164 + 72) = v83;
                (*(v162 + 104))(v161, v160, v163);
                v165 = v83;
                v166 = v84;

                v167 = v166;
                v165;

                v168 = swift_task_alloc();
                *(v0 + 384) = v168;
                *v168 = v0;
                v168[1] = sub_1001DD3BC;
                v169 = *(v0 + 72);
                v170 = sub_1001E0F64;
                goto LABEL_82;
              }
            }

            if (qword_100AD0B50 != -1)
            {
              swift_once();
            }

            v85 = *(v0 + 48);
            v86 = type metadata accessor for Logger();
            sub_10000617C(v86, qword_100AF3B28);
            v87 = v85;
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = *(v0 + 48);
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *v91 = 138412290;
              *(v91 + 4) = v90;
              *v92 = v90;
              v93 = v90;
              _os_log_impl(&_mh_execute_header, v88, v89, "%@ (addAttachmentToCoreData) managed objects aren't set", v91, 0xCu);
              sub_100004F84(v92, &unk_100AD4BB0);
            }

            v94 = *(v0 + 328);
            sub_1000340DC(*(v0 + 336), *(v0 + 344));
          }

          else
          {

            if (qword_100AD0B50 != -1)
            {
              swift_once();
            }

            v112 = *(v0 + 48);
            v113 = type metadata accessor for Logger();
            sub_10000617C(v113, qword_100AF3B28);
            v114 = v112;
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v115, v116))
            {
              v117 = *(v0 + 48);
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              *v118 = 138412290;
              *(v118 + 4) = v117;
              *v119 = v117;
              v120 = v117;
              _os_log_impl(&_mh_execute_header, v115, v116, "%@.saveAttachments error, failed to save image data", v118, 0xCu);
              sub_100004F84(v119, &unk_100AD4BB0);

              sub_1000340DC(v74, v76);
            }

            else
            {

              sub_1000340DC(v74, v76);
            }
          }
        }

        else
        {

          if (qword_100AD0B50 != -1)
          {
            swift_once();
          }

          v104 = *(v0 + 48);
          v105 = type metadata accessor for Logger();
          sub_10000617C(v105, qword_100AF3B28);
          v106 = v104;
          v98 = Logger.logObject.getter();
          v107 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v98, v107))
          {
            v108 = *(v0 + 48);
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *v109 = 138412290;
            *(v109 + 4) = v108;
            *v110 = v108;
            v111 = v108;
            _os_log_impl(&_mh_execute_header, v98, v107, "%@.saveAttachments error, imageData is nil", v109, 0xCu);
            sub_100004F84(v110, &unk_100AD4BB0);

LABEL_57:
          }

          else
          {
          }
        }
      }

      else
      {

        sub_100069140(v70, type metadata accessor for AssetAttachment.AssetType);
        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v95 = *(v0 + 48);
        v96 = type metadata accessor for Logger();
        sub_10000617C(v96, qword_100AF3B28);
        v97 = v95;
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = *(v0 + 48);
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *v101 = 138412290;
          *(v101 + 4) = v100;
          *v102 = v100;
          v103 = v100;
          _os_log_impl(&_mh_execute_header, v98, v99, "%@.saveAttachments error, nothing to save", v101, 0xCu);
          sub_100004F84(v102, &unk_100AD4BB0);

          goto LABEL_57;
        }
      }
    }

    v121 = *(v0 + 120);
    (*(*(v0 + 96) + 32))(v121, *(v0 + 176), *(v0 + 88));

    v122 = sub_10080FC00(v121);
    v124 = v123;

    *(v0 + 288) = v124;
    if (!v124)
    {

      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v137 = *(v0 + 112);
      v138 = *(v0 + 120);
      v139 = *(v0 + 88);
      v140 = *(v0 + 96);
      v141 = *(v0 + 48);
      v142 = type metadata accessor for Logger();
      sub_10000617C(v142, qword_100AF3B28);
      (*(v140 + 16))(v137, v138, v139);
      v143 = v141;
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();

      v146 = os_log_type_enabled(v144, v145);
      v147 = *(v0 + 112);
      v148 = *(v0 + 88);
      v149 = (*(v0 + 96) + 8);
      if (v146)
      {
        v150 = *(v0 + 48);
        v151 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v181 = v152;
        *v151 = 138412546;
        *(v151 + 4) = v150;
        *v180 = v150;
        *(v151 + 12) = 2080;
        sub_1001E0F7C(&qword_100ADEFD0, &type metadata accessor for URL);
        v153 = v150;
        v154 = dispatch thunk of CustomStringConvertible.description.getter();
        v156 = v155;
        (*v149)(v147, v148);
        v157 = sub_100008458(v154, v156, &v181);

        *(v151 + 14) = v157;
        _os_log_impl(&_mh_execute_header, v144, v145, "%@.saveAttachments error, failed to save file from sourceURL: %s", v151, 0x16u);
        sub_100004F84(v180, &unk_100AD4BB0);

        sub_10000BA7C(v152);
      }

      else
      {

        (*v149)(v147, v148);
      }

      goto LABEL_77;
    }

    v125 = *(v0 + 48);
    v126 = *(v125 + *(v0 + 256));
    *(v0 + 296) = v126;
    if (!v126 || (v127 = *(v125 + *(v0 + 264)), (*(v0 + 304) = v127) == 0))
    {

      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v128 = *(v0 + 48);
      v129 = type metadata accessor for Logger();
      sub_10000617C(v129, qword_100AF3B28);
      v130 = v128;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = *(v0 + 48);
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *v134 = 138412290;
        *(v134 + 4) = v133;
        *v135 = v133;
        v136 = v133;
        _os_log_impl(&_mh_execute_header, v131, v132, "%@ (addAttachmentToCoreData) managed objects aren't set", v134, 0xCu);
        sub_100004F84(v135, &unk_100AD4BB0);
      }

LABEL_77:
      v2 = &qword_100AD0000;
      continue;
    }

    break;
  }

  v171 = *(v0 + 392);
  v172 = *(v0 + 80);
  v174 = *(v0 + 56);
  v173 = *(v0 + 64);
  v164 = swift_allocObject();
  *(v0 + 312) = v164;
  *(v164 + 16) = v127;
  *(v164 + 24) = v177;
  *(v164 + 32) = v179;
  *(v164 + 40) = 0xE500000000000000;
  *(v164 + 48) = v122;
  *(v164 + 56) = v124;
  *(v164 + 64) = 1;
  *(v164 + 72) = v126;
  (*(v173 + 104))(v172, v171, v174);
  v175 = v126;
  v176 = v127;
  v175;

  v168 = swift_task_alloc();
  *(v0 + 320) = v168;
  *v168 = v0;
  v168[1] = sub_1001DBD44;
  v169 = *(v0 + 80);
  v170 = sub_1001E1040;
LABEL_82:

  return NSManagedObjectContext.perform<A>(schedule:_:)(v168, v169, v170, v164, &type metadata for () + 8);
}

uint64_t sub_1001DD3BC()
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

    return _swift_task_switch(sub_1001DD574, v7, v8);
  }
}

uint64_t sub_1001DD574()
{
  v181 = v0;
  v1 = *(v0 + 360);

LABEL_2:
  v2 = *(v0 + 328);
  sub_1000340DC(*(v0 + 336), *(v0 + 344));

  while (1)
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 272) + 1;
    sub_100004F84(*(v0 + 184), &unk_100AD6DD0);
    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 272) + 1;
    *(v0 + 272) = v9;
    v10 = *(v0 + 240);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 280) = v11;
    v12 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
    sub_100068AC8(v11 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
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

      sub_100069140(v14, v16);
      v15 = 0x6567616D69;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_100069140(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F65646976;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_100069140(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F69647561;
    }

    else
    {
      v17 = *(v0 + 216);

      v18 = sub_1000F24EC(&qword_100AD33B8);
      sub_100069140(v17 + *(v18 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x726568746FLL;
    }

    v177 = v15;
    v19 = *(v11 + 16);
    sub_100068AC8(v11 + v12, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 208);
    v176 = v19;
    if (v20 > 1)
    {
      if ((v20 - 2) >= 2)
      {
        v22 = *(v0 + 208);

        v21 = v22 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
      }

LABEL_23:
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      sub_100048E9C(v21, v24, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      sub_100068AC8(v24, v23, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v25 = swift_getEnumCaseMultiPayload();
      v26 = *(v0 + 184);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      if (v25 == 1)
      {
        v30 = *(v0 + 88);
        v29 = *(v0 + 96);
        sub_100069140(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v29 + 32))(v26, v28, v30);
      }

      else
      {
        v31 = *(v0 + 136);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*(v31 + 8))(v32, v33);
        sub_100069140(v27, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v34 = 0;
      goto LABEL_27;
    }

    if (!v20)
    {
      goto LABEL_23;
    }

    sub_100069140(v21, type metadata accessor for AssetAttachment.AssetType);
    v34 = 1;
LABEL_27:
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 88);
    v37 = *(v0 + 96);
    (*(v37 + 56))(v36, v34, 1, v38);
    sub_100161650(v36, v35);
    if ((*(v37 + 48))(v35, 1, v38) == 1)
    {
      v39 = *(v0 + 200);
      sub_100004F84(*(v0 + 176), &unk_100AD6DD0);
      sub_100068AC8(v11 + v12, v39, type metadata accessor for AssetAttachment.AssetType);
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
          v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          *(v0 + 336) = v45;
          *(v0 + 344) = v47;
          v48 = *(v11 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          v49 = *(v11 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID + 8);

          v50 = sub_100810858(v45, v47, v48, v49, 1667851624, 0xE400000000000000);
          v52 = v51;

          *(v0 + 352) = v52;
          if (v52)
          {
            v145 = *(v0 + 48);
            v146 = *(v145 + *(v0 + 256));
            *(v0 + 360) = v146;
            if (!v146 || (v147 = *(v145 + *(v0 + 264)), (*(v0 + 368) = v147) == 0))
            {

              if (qword_100AD0B50 != -1)
              {
                swift_once();
              }

              v148 = *(v0 + 48);
              v149 = type metadata accessor for Logger();
              sub_10000617C(v149, qword_100AF3B28);
              v150 = v148;
              v151 = Logger.logObject.getter();
              v152 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v151, v152))
              {
                v153 = *(v0 + 48);
                v154 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                *v154 = 138412290;
                *(v154 + 4) = v153;
                *v155 = v153;
                v156 = v153;
                _os_log_impl(&_mh_execute_header, v151, v152, "%@ (addAttachmentToCoreData) managed objects aren't set", v154, 0xCu);
                sub_100004F84(v155, &unk_100AD4BB0);
              }

              goto LABEL_2;
            }

            v169 = *(v0 + 392);
            v170 = *(v0 + 64);
            v171 = *(v0 + 72);
            v172 = *(v0 + 56);
            v163 = swift_allocObject();
            *(v0 + 376) = v163;
            *(v163 + 16) = v147;
            *(v163 + 24) = v176;
            *(v163 + 32) = v177;
            *(v163 + 40) = 0xE500000000000000;
            *(v163 + 48) = v50;
            *(v163 + 56) = v52;
            *(v163 + 64) = 1;
            *(v163 + 72) = v146;
            (*(v170 + 104))(v171, v169, v172);
            v173 = v146;
            v174 = v147;

            v175 = v174;
            v173;

            v166 = swift_task_alloc();
            *(v0 + 384) = v166;
            *v166 = v0;
            v166[1] = sub_1001DD3BC;
            v167 = *(v0 + 72);
            v168 = sub_1001E0F64;
            goto LABEL_82;
          }

          if (qword_100AD0B50 != -1)
          {
            swift_once();
          }

          v53 = *(v0 + 48);
          v54 = type metadata accessor for Logger();
          sub_10000617C(v54, qword_100AF3B28);
          v55 = v53;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

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
            sub_100004F84(v60, &unk_100AD4BB0);

            sub_1000340DC(v45, v47);
          }

          else
          {

            sub_1000340DC(v45, v47);
          }
        }

        else
        {

          if (qword_100AD0B50 != -1)
          {
            swift_once();
          }

          v108 = *(v0 + 48);
          v109 = type metadata accessor for Logger();
          sub_10000617C(v109, qword_100AF3B28);
          v110 = v108;
          v81 = Logger.logObject.getter();
          v111 = static os_log_type_t.error.getter();

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
            sub_100004F84(v114, &unk_100AD4BB0);

LABEL_57:
          }

          else
          {
          }
        }
      }

      else
      {

        sub_100069140(v41, type metadata accessor for AssetAttachment.AssetType);
        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 48);
        v79 = type metadata accessor for Logger();
        sub_10000617C(v79, qword_100AF3B28);
        v80 = v78;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

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
          sub_100004F84(v85, &unk_100AD4BB0);

          goto LABEL_57;
        }
      }
    }

    else
    {
      v62 = *(v0 + 120);
      (*(*(v0 + 96) + 32))(v62, *(v0 + 176), *(v0 + 88));

      v63 = sub_10080FC00(v62);
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
            v159 = *(v0 + 392);
            v160 = *(v0 + 80);
            v162 = *(v0 + 56);
            v161 = *(v0 + 64);
            v163 = swift_allocObject();
            *(v0 + 312) = v163;
            *(v163 + 16) = v68;
            *(v163 + 24) = v176;
            *(v163 + 32) = v177;
            *(v163 + 40) = 0xE500000000000000;
            *(v163 + 48) = v63;
            *(v163 + 56) = v65;
            *(v163 + 64) = 1;
            *(v163 + 72) = v67;
            (*(v161 + 104))(v160, v159, v162);
            v164 = v67;
            v165 = v68;
            v164;

            v166 = swift_task_alloc();
            *(v0 + 320) = v166;
            *v166 = v0;
            v166[1] = sub_1001DBD44;
            v167 = *(v0 + 80);
            v168 = sub_1001E1040;
LABEL_82:

            return NSManagedObjectContext.perform<A>(schedule:_:)(v166, v167, v168, v163, &type metadata for () + 8);
          }
        }

        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 48);
        v70 = type metadata accessor for Logger();
        sub_10000617C(v70, qword_100AF3B28);
        v71 = v69;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

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
          sub_100004F84(v76, &unk_100AD4BB0);
        }
      }

      else
      {

        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v87 = *(v0 + 112);
        v88 = *(v0 + 120);
        v90 = *(v0 + 88);
        v89 = *(v0 + 96);
        v91 = *(v0 + 48);
        v92 = type metadata accessor for Logger();
        sub_10000617C(v92, qword_100AF3B28);
        (*(v89 + 16))(v87, v88, v90);
        v93 = v91;
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();

        v96 = os_log_type_enabled(v94, v95);
        v97 = *(v0 + 112);
        v98 = *(v0 + 88);
        v99 = (*(v0 + 96) + 8);
        if (v96)
        {
          v100 = *(v0 + 48);
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v180 = v178;
          *v101 = 138412546;
          *(v101 + 4) = v100;
          *v102 = v100;
          *(v101 + 12) = 2080;
          sub_1001E0F7C(&qword_100ADEFD0, &type metadata accessor for URL);
          v103 = v100;
          v104 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v105;
          (*v99)(v97, v98);
          v107 = sub_100008458(v104, v106, &v180);

          *(v101 + 14) = v107;
          _os_log_impl(&_mh_execute_header, v94, v95, "%@.saveAttachments error, failed to save file from sourceURL: %s", v101, 0x16u);
          sub_100004F84(v102, &unk_100AD4BB0);

          sub_10000BA7C(v178);
        }

        else
        {

          (*v99)(v97, v98);
        }
      }

      if (qword_100AD0060 != -1)
      {
        swift_once();
      }

      v117 = *(v0 + 96);
      v116 = *(v0 + 104);
      v118 = *(v0 + 88);
      sub_10000617C(*(v0 + 128), qword_100B2FC48);
      FileStoreConfiguration.temporaryDirectoryURL.getter();
      v119 = URL.absoluteString.getter();
      v121 = v120;
      v122 = *(v117 + 8);
      v122(v116, v118);
      URL.absoluteString.getter();
      v123._countAndFlagsBits = v119;
      v123._object = v121;
      v124 = String.hasPrefix(_:)(v123);

      if (!v124)
      {
        v3 = *(v0 + 120);
        v4 = *(v0 + 88);

        v5 = v3;
        v6 = v4;
        goto LABEL_4;
      }

      v125 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v126);
      v128 = v127;
      *(v0 + 40) = 0;
      v129 = [v125 removeItemAtURL:v127 error:v0 + 40];

      v130 = *(v0 + 40);
      if (v129)
      {
        v131 = *(v0 + 120);
        v132 = *(v0 + 88);
        v133 = v130;

        v122(v131, v132);
      }

      else
      {
        v134 = v130;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v135 = type metadata accessor for Logger();
        sub_10000617C(v135, qword_100AF3B28);
        swift_errorRetain();
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();

        v138 = os_log_type_enabled(v136, v137);
        v139 = *(v0 + 120);
        v140 = *(v0 + 88);
        if (v138)
        {
          v179 = *(v0 + 88);
          v141 = swift_slowAlloc();
          v142 = v139;
          v143 = swift_slowAlloc();
          *v141 = 138412290;
          swift_errorRetain();
          v144 = _swift_stdlib_bridgeErrorToNSError();
          *(v141 + 4) = v144;
          *v143 = v144;
          _os_log_impl(&_mh_execute_header, v136, v137, "Error when removing attachment source file: %@", v141, 0xCu);
          sub_100004F84(v143, &unk_100AD4BB0);

          v5 = v142;
          v6 = v179;
        }

        else
        {

          v5 = v139;
          v6 = v140;
        }

LABEL_4:
        v122(v5, v6);
      }
    }
  }

  v157 = *(v0 + 8);

  return v157();
}

uint64_t sub_1001DEA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[22] = a3;
  v7[27] = sub_1000F24EC(&qword_100AD7A38);
  v7[28] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v7[29] = swift_task_alloc();
  v9 = type metadata accessor for LinkAssetMetadata();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = type metadata accessor for AssetAttachment.AssetType(0);
  v7[34] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[41] = v11;
  v7[42] = *(v11 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v12 = type metadata accessor for AssetSource();
  v7[45] = v12;
  v7[46] = *(v12 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v13 = type metadata accessor for AssetType();
  v7[49] = v13;
  v7[50] = *(v13 - 8);
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v7[53] = v14;
  v7[54] = v16;

  return _swift_task_switch(sub_1001DED90, v14, v16);
}

uint64_t sub_1001DED90()
{
  v47 = v0[52];
  v1 = v0[48];
  v40 = v0[49];
  v42 = v0[51];
  v43 = v0[47];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v41 = v0[43];
  v5 = v0[42];
  v48 = v0[41];
  v44 = v0[36];
  v45 = v0[40];
  v6 = v0[22];
  v46 = v0[35];
  v38 = v0[50];
  (*(v38 + 104))();
  v39 = *(v3 + 16);
  v39(v1, v6, v2);
  UUID.init()();
  v7 = objc_allocWithZone(type metadata accessor for LinkAsset());
  *&v7[OBJC_IVAR____TtC7Journal9LinkAsset_metadata] = 0;
  v7[OBJC_IVAR____TtC7Journal9LinkAsset_contentType] = 6;
  (*(v5 + 16))(v41, v4, v48);
  (*(v38 + 16))(v42, v47, v40);
  v39(v43, v1, v2);
  v8 = sub_100285908(v41, v42, v43);
  v0[55] = v8;
  v9 = *(v3 + 8);
  v0[56] = v9;
  v0[57] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  (*(v38 + 8))(v47, v40);
  v10 = *(v5 + 8);
  v10(v4, v48);
  v11 = *(v44 + 56);
  v0[58] = v11;
  v0[59] = (v44 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v45, 1, 1, v46);
  if (URL.isFileURL.getter())
  {
    v49 = v8;
    sub_10057757C(v0[37]);
    v16 = v0[44];
    v17 = v0[41];
    v19 = v0[36];
    v18 = v0[37];
    v21 = v0[34];
    v20 = v0[35];
    v22 = *(sub_1000F24EC(&qword_100AD33B8) + 48);
    *v21 = xmmword_100946A30;
    (*(v19 + 16))(&v21[v22], v18, v20);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    v10(v16, v17);
    type metadata accessor for AssetAttachment(0);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    sub_100048E9C(v21, v26 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v27 = (v26 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v27 = v23;
    v27[1] = v25;
    v28 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v49[v28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v49[v28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v30 = v0[36];
    v29 = v0[37];
    v31 = v0[35];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    (*(v30 + 8))(v29, v31);
  }

  else
  {
    v12 = v0[40];
    v13 = v0[35];
    v14 = v0[36];
    v15 = v0[23];
    sub_100004F84(v12, &unk_100AD6DD0);
    (*(v14 + 16))(v12, v15, v13);
    v11(v12, 0, 1, v13);
  }

  v32 = [objc_allocWithZone(LPMetadataProvider) init];
  v0[60] = v32;
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v0[61] = v34;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1001DF480;
  v36 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD7A50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A60948;
  v0[14] = v36;
  [v32 startFetchingMetadataForURL:v35 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001DF480()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  if (v2)
  {
    v3 = *(v1 + 424);
    v4 = *(v1 + 432);
    v5 = sub_1001DF968;
  }

  else
  {

    v3 = *(v1 + 424);
    v4 = *(v1 + 432);
    v5 = sub_1001DF598;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001DF598()
{
  v1 = *(v0 + 488);
  v28 = *(v0 + 464);
  v2 = *(v0 + 312);
  v27 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 168);

  v6 = [v5 dataRepresentation];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, v4, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v28(v2, 1, 1, v27);
  LinkAssetMetadata.init(data:date:url:)();

  v25 = *(v0 + 448);
  v26 = *(v0 + 440);
  v9 = *(v0 + 360);
  v22 = *(v0 + 320);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  (*(v8 + 8))(*(v0 + 208), v7);
  (*(v10 + 8))(v15, v11);
  v25(v14, v9);
  sub_100004F84(v22, &unk_100AD6DD0);
  (*(v12 + 32))(v13, v24, v23);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD7A40);
  v16 = swift_allocObject();
  v17 = *(*v16 + 104);
  v18 = sub_1000F24EC(&qword_100AD50C8);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + *(*v16 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v13, v16 + *(*v16 + 120), &qword_100AD7A38);
  *(v26 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata) = v16;

  v19 = *(v0 + 8);
  v20 = *(v0 + 440);

  return v19(v20);
}

uint64_t sub_1001DF968()
{
  v1 = v0[61];
  v2 = v0[60];
  v3 = v0[25];
  swift_willThrow();

  if (v3)
  {
    v4 = v0[25];
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v0[24] & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = v0[40];
      v7 = v0[38];
      v8 = v0[35];
      v9 = v0[36];
      v10 = [objc_allocWithZone(LPLinkMetadata) init];
      v11 = String._bridgeToObjectiveC()();

      [v10 setTitle:v11];

      sub_100161650(v6, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        v13 = 0;
      }

      else
      {
        v20 = v0[38];
        v21 = v0[35];
        v22 = v0[36];
        URL._bridgeToObjectiveC()(v12);
        v13 = v23;
        (*(v22 + 8))(v20, v21);
      }

      v47 = v0[58];
      v24 = v0[39];
      v46 = v0[35];
      v25 = v0[29];
      v26 = v0[26];
      [v10 setOriginalURL:v13];

      v27 = [v10 dataRepresentation];
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for Date();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v25, v26, v18);
      (*(v19 + 56))(v25, 0, 1, v18);
      v47(v24, 1, 1, v46);
      LinkAssetMetadata.init(data:date:url:)();

      goto LABEL_11;
    }
  }

  v14 = v0[39];
  v15 = v0[40];
  v16 = v0[29];
  v17 = v0[26];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_100161650(v15, v14);
  LinkAssetMetadata.init(data:date:url:)();
LABEL_11:
  v44 = v0[56];
  v45 = v0[55];
  v28 = v0[45];
  v41 = v0[40];
  v30 = v0[35];
  v29 = v0[36];
  v31 = v0[31];
  v42 = v0[30];
  v43 = v0[32];
  v32 = v0[28];
  v33 = v0[22];
  v34 = v0[23];
  (*(v19 + 8))(v0[26], v18);
  (*(v29 + 8))(v34, v30);
  v44(v33, v28);
  sub_100004F84(v41, &unk_100AD6DD0);
  (*(v31 + 32))(v32, v43, v42);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD7A40);
  v35 = swift_allocObject();
  v36 = *(*v35 + 104);
  v37 = sub_1000F24EC(&qword_100AD50C8);
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + *(*v35 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v32, v35 + *(*v35 + 120), &qword_100AD7A38);
  *(v45 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata) = v35;

  v38 = v0[1];
  v39 = v0[55];

  return v38(v39);
}

uint64_t sub_1001DFEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&qword_100AD7A38);
  v4[10] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v4[11] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v4[12] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD50C8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for LinkAssetMetadata();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[20] = v9;
  v4[21] = v11;

  return _swift_task_switch(sub_1001E0170, v9, v11);
}

uint64_t sub_1001E0170()
{
  v1 = v0[4];
  if (!v1)
  {
LABEL_7:

    v8 = v0[1];

    return v8();
  }

  v2 = v0[5];
  v3 = OBJC_IVAR____TtC7Journal9LinkAsset_metadata;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  if (!*(v2 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    (*(v5 + 56))(v0[15], 1, 1, v0[16]);
    goto LABEL_6;
  }

  v7 = v1;

  sub_10025E308(v6);

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {

LABEL_6:
    sub_100004F84(v0[15], &qword_100AD50C8);
    goto LABEL_7;
  }

  v10 = v0[17];
  v22 = v0[16];
  v23 = v0[18];
  v25 = v0[14];
  v26 = v0[13];
  v11 = v0[11];
  v24 = v0[10];
  (*(v10 + 32))(v0[19], v0[15]);
  v12 = [v7 dataRepresentation];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  LinkAssetMetadata.date.getter();
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  LinkAssetMetadata.init(data:date:url:)();
  (*(v10 + 16))(v24, v23, v22);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD7A40);
  v14 = swift_allocObject();
  (*(v25 + 56))(v14 + *(*v14 + 104), 1, 1, v26);
  *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v24, v14 + *(*v14 + 120), &qword_100AD7A38);
  *(v2 + v3) = v14;

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v16 = v0[5];
    ObjectType = swift_getObjectType();
    v18 = v16;
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_1001E0560;
    v21 = v0[2];
    v20 = v0[3];

    return sub_10078BBDC(v21, v20, ObjectType, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E0560()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1001E0680, v3, v2);
}

uint64_t sub_1001E0680()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1001E0734;
  v2 = *(v0 + 16);

  return sub_1001DA5A8(v2);
}

uint64_t sub_1001E0734()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1001E0854, v3, v2);
}

uint64_t sub_1001E0854()
{
  v1 = *(v0 + 40);
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  *(v0 + 192) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = swift_allocObject();
    *(v0 + 200) = v6;
    *(v6 + 16) = v1;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v7 = v1;
    v2;
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    v9 = sub_1000F24EC(&qword_100AD38E0);
    *v8 = v0;
    v8[1] = sub_1001E0A64;
    v10 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 224, v10, sub_1001E0F48, v6, v9);
  }

  else
  {

    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(*(v0 + 136) + 8);
    v13(*(v0 + 144), v12);
    v13(v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1001E0A64()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 168);
  v8 = *(v2 + 160);
  if (v0)
  {
    v9 = sub_1001E0D20;
  }

  else
  {
    v9 = sub_1001E0C38;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1001E0C38()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(*(v0 + 136) + 8);
  v3(*(v0 + 144), v2);
  v3(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001E0D20()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  if (qword_100ACFA88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000617C(v6, qword_100AD79A0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed saving updated link metadata to asset: %@", v9, 0xCu);
    sub_100004F84(v10, &unk_100AD4BB0);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001E0F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E0FC4()
{

  return swift_deallocObject();
}

uint64_t sub_1001E1058()
{

  return swift_deallocClassInstance();
}

id sub_1001E1090@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  type metadata accessor for SendableContext();
  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *a1 = v2;

  return v4;
}

uint64_t sub_1001E1188(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 16) = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_1001E121C, v5, v7);
}

uint64_t sub_1001E121C()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  *(v0 + 6) = v6;

  v7 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v6];
  *(v0 + 7) = v7;
  [v7 setAppliesPreferredTrackTransform:1];
  [v7 setMaximumSize:{v1, v1}];
  [v7 setDynamicRangePolicy:AVAssetImageGeneratorDynamicRangePolicyForceSDR];
  v14 = CMTime.init(seconds:preferredTimescale:)(0.0, 60);
  value = v14.value;
  v9 = *&v14.timescale;
  epoch = v14.epoch;
  v11 = swift_task_alloc();
  *(v0 + 8) = v11;
  *v11 = v0;
  v11[1] = sub_1001E138C;

  return AVAssetImageGenerator.image(at:)(value, v9, epoch);
}

uint64_t sub_1001E138C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1001E1550;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1001E14B4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001E14B4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1001E1550()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001E15B8(unint64_t a1, uint64_t a2)
{
  v46 = a2;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_27:
    v16 = 0;
LABEL_28:
    v41 = v46;
    if (*(v46 + 16))
    {
      v42 = [objc_opt_self() defaultCenter];
      v43 = String._bridgeToObjectiveC()();
      sub_1000F24EC(&qword_100AD5808);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940080;
      aBlock = 0xD000000000000019;
      v61 = 0x80000001008E5300;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = sub_1000F24EC(&qword_100AD60A0);
      *(inited + 72) = v41;

      sub_1003630D0(inited);
      swift_setDeallocating();
      sub_1001E1D08(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v42 postNotificationName:v43 object:0 userInfo:isa];
    }

    return;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v50 = v62;
    v49 = (v3 + 8);
    v48 = (v5 + 8);
    v11 = &off_100AF3000;
    v51 = a1 & 0xC000000000000001;
    v47 = v7;
    v52 = a1;
    while (1)
    {
      if (v10)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = *(a1 + 8 * v9 + 32);
        if (!v8)
        {
LABEL_11:
          v17 = v11[499];
          v18 = *&v17[v16];
          if (!v18)
          {
            goto LABEL_34;
          }

          v19 = v18;
          v20 = [v19 layer];
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (!v21)
          {
          }

          v22 = [v21 player];

          if (!v22 || ([v22 rate], v24 = v23, v22, v24 <= 0.0))
          {
LABEL_34:
            if ((*(v16 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) & 1) == 0)
            {
              *(v16 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) = 1;
              v25 = *(v16 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
              if (v25)
              {
                v26 = qword_100ACFB90;
                v27 = v25;
                if (v26 != -1)
                {
                  swift_once();
                }

                v58 = qword_100B2F628;
                v28 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v29 = *&v17[v16];
                if (v29)
                {
                  v30 = v29;
                  v31 = [v30 layer];
                  objc_opt_self();
                  v32 = swift_dynamicCastObjCClass();
                  if (!v32)
                  {
                  }

                  v33 = [v32 player];
                }

                else
                {
                  v33 = 0;
                }

                v34 = *(v16 + OBJC_IVAR____TtC7Journal14VideoAssetView_resourceConservationLevelWhilePaused);
                v35 = swift_allocObject();
                v35[2] = v28;
                v35[3] = v27;
                v35[4] = v33;
                v35[5] = v34;
                v62[2] = sub_1001E1D70;
                v62[3] = v35;
                aBlock = _NSConcreteStackBlock;
                v61 = 1107296256;
                v62[0] = sub_100006C7C;
                v62[1] = &unk_100A609C0;
                v36 = _Block_copy(&aBlock);
                v57 = v33;
                v37 = v27;

                v38 = v53;
                static DispatchQoS.unspecified.getter();
                v59 = _swiftEmptyArrayStorage;
                sub_1000826D8();
                sub_1000F24EC(&unk_100AD6220);
                sub_100006610();
                v39 = v55;
                v40 = v56;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v36);

                (*v49)(v39, v40);
                (*v48)(v38, v54);

                a1 = v52;
                v10 = v51;
                v11 = &off_100AF3000;
                v7 = v47;
              }
            }
          }

          goto LABEL_6;
        }
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v16;
      v13 = &v8[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
      v14 = *&v8[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
      *v13 = sub_1001E1D7C;
      v13[1] = v12;
      v15 = v16;
      sub_100004DF8(v14);

LABEL_6:
      ++v9;
      v8 = v16;
      if (v7 == v9)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1001E1D08(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD5810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001E1DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100361EDC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000BA20(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1001E1E04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a2;
  v3(a2, v4);
}

id sub_1001E1EA8()
{
  v33 = type metadata accessor for UTType();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&unk_100AD6DD0);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  sub_10008E398(0, 1);
  sub_1001E22C8(0, 1, v14);
  sub_100161650(v16, v11);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v20 = 0;
  if ((*(v18 + 48))(v11, 1, v17) != 1)
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(v18 + 8))(v11, v17);
  }

  v22 = [objc_allocWithZone(NSItemProvider) initWithContentsOfURL:v20];

  if (!v22)
  {
    v22 = [objc_allocWithZone(NSItemProvider) init];
  }

  static UTType.livePhoto.getter();
  UTType.identifier.getter();
  (*(v0 + 8))(v2, v33);
  v23 = String._bridgeToObjectiveC()();

  sub_100161650(v16, v8);
  v24 = v34;
  sub_100161650(v14, v34);
  v25 = *(v32 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = (v4 + v25 + v26) & ~v25;
  v28 = swift_allocObject();
  sub_1001E4364(v8, v28 + v26);
  sub_1001E4364(v24, v28 + v27);
  aBlock[4] = sub_1001E43D4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E3C4C;
  aBlock[3] = &unk_100A60A50;
  v29 = _Block_copy(aBlock);

  [v22 registerItemForTypeIdentifier:v23 loadHandler:v29];
  _Block_release(v29);

  sub_100004F84(v14, &unk_100AD6DD0);
  sub_100004F84(v16, &unk_100AD6DD0);
  return v22;
}

uint64_t sub_1001E22C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v127 = a1;
  v105 = a3;
  v4 = sub_1000F24EC(&unk_100AD7C40);
  v5 = __chkstk_darwin(v4 - 8);
  v109 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v95 - v7;
  v9 = type metadata accessor for UTType();
  v108 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - v13;
  __chkstk_darwin(v12);
  v99 = &v95 - v15;
  v115 = type metadata accessor for FileStoreConfiguration();
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
  v24 = sub_1000F24EC(&unk_100AD6DD0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v123 = (&v95 - v28);
  v129 = type metadata accessor for URL();
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
  v41 = *(v3 + OBJC_IVAR____TtC7Journal5Asset_attachments);
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
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
          v42 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v44 = *&v41[8 * v8 + 32];

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      v45 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068AC8(v44 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v40, type metadata accessor for AssetAttachment.AssetType);
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

          sub_100068AC8(v44 + v45, v38, type metadata accessor for AssetAttachment.AssetType);
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
            sub_100069140(v61, type metadata accessor for AssetAttachment.AssetType);
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

              v50 = &v38[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
            }

LABEL_23:
            v55 = v14;
            sub_100068CF4(v50, v52);
            sub_100068AC8(v52, v51, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_100069140(v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              v56 = v123;
              v57 = v129;
              (*v116)(v123, v51, v129);
              v58 = 0;
            }

            else
            {
              v59 = v114;
              static FileStoreConfiguration.shared.getter();
              v56 = v123;
              FileStoreConfiguration.getAttachmentURL(from:)();

              v60 = v59;
              v27 = v130;
              (*v101)(v60, v115);
              sub_100069140(v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              v58 = 0;
              v57 = v129;
            }
          }

          (*v120)(v56, v58, 1, v57);
          v53 = &v40[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
          if ((*v119)(v56, 1, v57) == 1)
          {

            sub_100004F84(v56, &unk_100AD6DD0);
            goto LABEL_31;
          }

          (*v116)(v122, v56, v57);
          URL.pathExtension.getter();
          static UTType.data.getter();
          v62 = v109;
          v63 = v121;
          UTType.init(filenameExtension:conformingTo:)();
          if ((*v104)(v62, 1, v63) == 1)
          {

            (*v103)(v122, v57);
            sub_100004F84(v62, &unk_100AD7C40);
            v27 = v130;
LABEL_31:
            v14 = v55;
          }

          else
          {
            v64 = v100;
            (*v97)(v100, v62, v63);
            static UTType.video.getter();
            v98 = UTType.conforms(to:)();
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
              sub_100069140(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              if (v54 == v127)
              {
LABEL_85:

                goto LABEL_90;
              }

              v41 = v131;
              goto LABEL_7;
            }

            static UTType.movie.getter();
            v98 = UTType.conforms(to:)();
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

          sub_100069140(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v38 = v118;
          v41 = v131;
          goto LABEL_7;
        }
      }

      v43 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_6:
      sub_100069140(v40, v43);
LABEL_7:
      ++v8;
    }

    while (v9 != v132);
  }

  v66 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  v67 = v102;
  swift_beginAccess();
  v8 = *(v67 + v66);
  if (v8 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
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
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

    v71 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
    sub_100068AC8(v70 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v135, type metadata accessor for AssetAttachment.AssetType);
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

      sub_100069140(v135, v69);
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
    sub_100068AC8(v73, v117, type metadata accessor for AssetAttachment.AssetType);
    v75 = swift_getEnumCaseMultiPayload();
    v76 = v75;
    if (v75 <= 1)
    {
      v78 = v74;
      if (v76)
      {
        sub_100069140(v74, type metadata accessor for AssetAttachment.AssetType);
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

        v78 = v74 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
      }
    }

    sub_100068CF4(v78, v40);
    sub_100068AC8(v40, v9, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100069140(v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v81 = v129;
      (*v123)(v27, v9, v129);
      v82 = 0;
      goto LABEL_69;
    }

    v83 = v114;
    static FileStoreConfiguration.shared.getter();
    FileStoreConfiguration.getAttachmentURL(from:)();
    v27 = v130;

    (*v119)(v83, v115);
    sub_100069140(v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v82 = 0;
LABEL_68:
    v81 = v129;
LABEL_69:
    (*v125)(v27, v82, 1, v81);
    v84 = sub_1000F24EC(&qword_100AD33B8);
    v85 = v27;
    v79 = v135 + *(v84 + 48);
    if ((*v124)(v85, 1, v81) == 1)
    {

      sub_100004F84(v85, &unk_100AD6DD0);
LABEL_74:
      sub_100069140(v79, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v27 = v130;
      goto LABEL_48;
    }

    v86 = v110;
    (*v123)(v110, v85, v81);
    URL.pathExtension.getter();
    static UTType.data.getter();
    v87 = v106;
    UTType.init(filenameExtension:conformingTo:)();
    v88 = v121;
    if ((*v122)(v87, 1, v121) == 1)
    {

      (*v120)(v86, v81);
      sub_100004F84(v87, &unk_100AD7C40);
LABEL_73:
      v9 = v113;
      v40 = v112;
      goto LABEL_74;
    }

    v89 = v99;
    (*v118)(v99, v87, v88);
    static UTType.video.getter();
    v90 = UTType.conforms(to:)();
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
      static UTType.movie.getter();
      LODWORD(v109) = UTType.conforms(to:)();
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
    sub_100069140(v79, type metadata accessor for AssetAttachment.AssetType.FilePathType);
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
  sub_100069140(v94, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_90:
  sub_1000A7D30(v105);
}

void sub_1001E360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v44 = a1;
  v45 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000F24EC(&unk_100AD6DD0);
  v11 = *(v43 - 8);
  v12 = __chkstk_darwin(v43);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  sub_1000F24EC(&unk_100AD7C30);
  v17 = *(v11 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v40 = swift_allocObject();
  v19 = v40 + v18;
  sub_100161650(a5, v40 + v18);
  sub_100161650(v42, v19 + v17);
  sub_100161650(v19, v16);
  sub_1001E4364(v16, v14);
  v20 = (v8 + 32);
  v42 = v8;
  v21 = *(v8 + 48);
  v22 = v21(v14, 1, v7);
  v41 = v10;
  if (v22 == 1)
  {
    sub_100004F84(v14, &unk_100AD6DD0);
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    v38 = *v20;
    v39 = (v8 + 32);
    v38(v10, v14, v7);
    v23 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1003E4AE0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1003E4AE0(v24 > 1, v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25];
    v20 = v39;
    v38(v26, v41, v7);
  }

  sub_100161650(v19 + v17, v16);
  sub_1001E4364(v16, v14);
  if (v21(v14, 1, v7) == 1)
  {
    sub_100004F84(v14, &unk_100AD6DD0);
  }

  else
  {
    v27 = *v20;
    v28 = v41;
    (*v20)(v41, v14, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1003E4AE0(0, *(v23 + 2) + 1, 1, v23);
    }

    v30 = *(v23 + 2);
    v29 = *(v23 + 3);
    if (v30 >= v29 >> 1)
    {
      v23 = sub_1003E4AE0(v29 > 1, v30 + 1, 1, v23);
    }

    *(v23 + 2) = v30 + 1;
    v27(&v23[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v30], v28, v7);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  height = PHImageManagerMaximumSize.height;
  v34 = swift_allocObject();
  v36 = v44;
  v35 = v45;
  *(v34 + 16) = v44;
  *(v34 + 24) = v35;
  aBlock[4] = sub_1001E44AC;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E1E04;
  aBlock[3] = &unk_100A60AC8;
  v37 = _Block_copy(aBlock);
  sub_100021E80(v36);

  [v31 requestLivePhotoWithResourceFileURLs:isa placeholderImage:0 targetSize:0 contentMode:v37 resultHandler:{PHImageManagerMaximumSize.width, height}];
  _Block_release(v37);
}

uint64_t sub_1001E3B38(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = result;
    v12[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12[1] = v6;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v7 = sub_100361EDC(v11), (v8 & 1) != 0))
    {
      sub_10000BA20(*(a2 + 56) + 32 * v7, v12);
      sub_100177B94(v11);
      sub_1000F24EC(&qword_100AD5BC0);
      if (swift_dynamicCast())
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      sub_100177B94(v11);
      v9 = 0;
    }

    a3(v5, v9);
  }

  return result;
}

uint64_t sub_1001E3C4C(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1001E44A4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_100004DF8(v7);
}

void sub_1001E3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1001E3DC4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  sub_1001E3F9C(sub_1001D54D0, sub_1006AB154);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v2 setSummary:v5];

  return v2;
}

uint64_t sub_1001E3F9C(uint64_t (*a1)(uint64_t), void (*a2)(void))
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000F24EC(&qword_100AD5B20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = a1(v8);
  v13 = v12;
  a2();
  v14 = type metadata accessor for PhotoLibraryAssetMetadata();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_100004F84(v10, &qword_100AD5B20);
    if (!v13)
    {
      return 0;
    }

    goto LABEL_13;
  }

  v16 = PhotoLibraryAssetMetadata.placeName.getter();
  v18 = v17;
  (*(v15 + 8))(v10, v14);
  if (v13)
  {
    if (v18)
    {
      v19 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v19 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v20 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v20 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v21._countAndFlagsBits = 0;
          v21._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
          v22._countAndFlagsBits = v11;
          v22._object = v13;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);
          v23._countAndFlagsBits = 548913696;
          v23._object = 0xA400000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
          v24._countAndFlagsBits = v16;
          v24._object = v18;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);
          v25._countAndFlagsBits = 0;
          v25._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v26 = String.init(localized:defaultValue:table:bundle:locale:comment:)();

          return v26;
        }
      }

LABEL_23:

      return 0;
    }

LABEL_13:
    v28 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v28 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      return v11;
    }

    goto LABEL_23;
  }

  if (v18)
  {
    v29 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v29 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      return v16;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1001E4364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001E43D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000F24EC(&unk_100AD6DD0) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = v4 + ((*(v9 + 64) + v10 + v11) & ~v10);

  sub_1001E360C(a1, a2, a3, a4, v4 + v11, v12);
}

uint64_t sub_1001E44BC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v12 - v3);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v5)
  {
    v11 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    goto LABEL_7;
  }

  v6 = v5;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v7 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
LABEL_7:
    sub_100004F84(v4, &unk_100AD7CB0);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v4;
    v9 = [*(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:*v4];

    type metadata accessor for JournalEntryMO();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_100165FAC(v4);
  }

  return 0;
}

uint64_t sub_1001E4680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v11)
  {
    v12 = v11;
    if ([v12 dataSource])
    {
      sub_1000F24EC(&unk_100AD7CC0);
      if (swift_dynamicCastClass())
      {
        v13 = *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
        *v7 = v13;
        swift_storeEnumTagMultiPayload();
        v14 = v13;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        swift_unknownObjectRelease();

        sub_100165FAC(v7);
        v15 = type metadata accessor for IndexPath();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v10, 1, v15) == 1)
        {
          sub_100004F84(v10, &unk_100ADFB90);
          return (*(v16 + 56))(a2, 1, 1, v15);
        }

        else
        {
          (*(v16 + 32))(a2, v10, v15);
          return (*(v16 + 56))(a2, 0, 1, v15);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v18 = type metadata accessor for IndexPath();
  v19 = *(*(v18 - 8) + 56);

  return v19(a2, 1, 1, v18);
}

void sub_1001E4950()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    sub_1000F24EC(&unk_100AE92B0);
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A57208);
    v3 = (*((swift_isaMask & *v0) + 0x368))();
    if (v3)
    {

      sub_1000F24EC(&qword_100AD7CD0);
      type metadata accessor for JournalEntryCollectionViewController.Item(0);
      *(swift_allocObject() + 16) = xmmword_100940080;
      swift_storeEnumTagMultiPayload();
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }
}

unint64_t sub_1001E4B10()
{
  result = qword_100AD7CF0;
  if (!qword_100AD7CF0)
  {
    sub_10006DD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7CF0);
  }

  return result;
}

uint64_t sub_1001E4B68()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for CollectionViewPickerCell();
  v14.receiver = v1;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, "_bridgedUpdateConfigurationUsingState:", isa);

  UICollectionViewCell.defaultBackgroundConfiguration()();
  v11 = UIBackgroundConfiguration.backgroundColor.getter();
  if (v11)
  {

    if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isReordering.getter() & 1) == 0)
    {
      v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      UIBackgroundConfiguration.backgroundColor.setter();
    }
  }

  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v6 + 8))(v8, v5);
}

id sub_1001E4F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewPickerCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E4F94(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD5170);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v9;
  v10 = sub_1001E5C6C(a1, a2);
  v56 = [a1 traitCollection];
  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_39:
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewPrefetcher_prefetchEntryTasks;
    v57 = v10 & 0xC000000000000001;
    swift_beginAccess();
    v13 = 0;
    v60 = v3;
    v53 = v11;
    v54 = v10;
    while (1)
    {
      if (v57)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v15 managedObjectContext];
      if (!v16)
      {
        v16 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      v17 = sub_100035ADC(v15, 0, 0, v16);
      v18 = v17;
      v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_id;
      if (*(*(v3 + v12) + 16))
      {
        v20 = *&v17[OBJC_IVAR____TtC7Journal14EntryViewModel_id];

        sub_100362280(v20);
        LOBYTE(v20) = v21;

        if (v20)
        {

          goto LABEL_7;
        }
      }

      v58 = v15;
      v59 = v19;
      v22 = v12;
      v23 = v61;
      TaskPriority.init(rawValue:)();
      v24 = type metadata accessor for TaskPriority();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v23, 0, 1, v24);
      type metadata accessor for MainActor();

      v26 = v56;
      v27 = v3;
      v28 = static MainActor.shared.getter();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v18;
      v29[5] = v26;
      v29[6] = v27;
      v30 = v55;
      sub_1001E6194(v23, v55);
      LODWORD(v28) = (*(v25 + 48))(v30, 1, v24);

      if (v28 == 1)
      {
        sub_100004F84(v30, &qword_100AD5170);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v25 + 8))(v30, v24);
      }

      v31 = v29[2];
      swift_unknownObjectRetain();

      v12 = v22;
      if (v31)
      {
        swift_getObjectType();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v60;
      sub_100004F84(v61, &qword_100AD5170);
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_100946C08;
      *(v36 + 24) = v29;
      if (v34 | v32)
      {
        v63 = 0;
        v64 = 0;
        v65 = v32;
        v66 = v34;
      }

      v37 = swift_task_create();
      v10 = *&v18[v59];
      swift_beginAccess();
      v38 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v35 + v12);
      v40 = v62;
      *(v35 + v12) = 0x8000000000000000;
      v3 = sub_100362280(v38);
      v42 = v40[2];
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }

      v45 = v41;
      if (v40[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v10 = v62;
          if ((v41 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1008229C0();
          v10 = v62;
          if ((v45 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_10081E4CC(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_100362280(v38);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_43;
        }

        v3 = v46;
        v10 = v62;
        if ((v45 & 1) == 0)
        {
LABEL_31:
          *(v10 + 8 * (v3 >> 6) + 64) |= 1 << v3;
          *(*(v10 + 48) + 8 * v3) = v38;
          *(*(v10 + 56) + 8 * v3) = v37;
          v48 = *(v10 + 16);
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_37;
          }

          *(v10 + 16) = v50;
          goto LABEL_6;
        }
      }

      *(*(v10 + 56) + 8 * v3) = v37;

LABEL_6:
      v3 = v60;
      *(v60 + v12) = v10;
      swift_endAccess();

      v11 = v53;
      v10 = v54;
LABEL_7:
      if (v11 == ++v13)
      {
      }
    }
  }

  __break(1u);
LABEL_43:
  sub_10006DD7C();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001E55F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_1001E568C, v8, v7);
}

uint64_t sub_1001E568C()
{
  v1 = v0[8];

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1001E5740;
  v3 = v0[6];

  return sub_1007330C4(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1001E5740()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1001E5884, v3, v2);
}

uint64_t sub_1001E5884()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
  swift_beginAccess();
  sub_100651D9C(v2);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1001E5954(void *a1, uint64_t a2)
{
  v3 = v2;
  result = sub_1001E5C6C(a1, a2);
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewPrefetcher_prefetchEntryTasks;
    v9 = v5 & 0xC000000000000001;
    v20 = v5;
    do
    {
      if (v9)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v11 managedObjectContext];
      if (!v12)
      {
        v12 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      v13 = sub_100035ADC(v11, 0, 0, v12);
      sub_1007333B0();
      v14 = *&v13[OBJC_IVAR____TtC7Journal14EntryViewModel_id];
      swift_beginAccess();
      v15 = sub_100362280(v14);
      if (v16)
      {
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v3 + v8);
        *(v3 + v8) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1008229C0();
        }

        sub_100201224(v17, v19);
        *(v3 + v8) = v19;
        swift_endAccess();
        Task.cancel()();

        v5 = v20;
      }

      else
      {
        swift_endAccess();
      }

      ++v7;
    }

    while (v6 != v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E5BDC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

void *sub_1001E5C6C(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v27 - v5);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 dataSource];
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = v11;
    sub_1000F24EC(&unk_100AD7CC0);
    v14 = swift_dynamicCastClass();
    if (v14 && (v34 = _swiftEmptyArrayStorage, (v15 = *(a2 + 16)) != 0))
    {
      v27 = v13;
      v30 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewPrefetcher_viewModel;
      v17 = *(v8 + 16);
      v16 = v8 + 16;
      v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v19 = v17;
      v33 = *(v16 + 56);
      v28 = _swiftEmptyArrayStorage;
      v29 = v14;
      v20 = (v16 - 8);
      v31 = v16;
      v17(v10, v18, v7);
      while (1)
      {
        dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
        v21 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
        if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
        {
          (*v20)(v10, v7);
          sub_100004F84(v6, &unk_100AD7CB0);
        }

        else if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = v19;
          v23 = *v6;
          v24 = *(*(v32 + v30) + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
          v25 = [v24 objectWithID:{v23, v27}];

          (*v20)(v10, v7);
          type metadata accessor for JournalEntryMO();
          if (swift_dynamicCastClass())
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v19 = v22;
            if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v19 = v22;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v28 = v34;
          }

          else
          {

            v19 = v22;
          }
        }

        else
        {
          (*v20)(v10, v7);
          sub_100165FAC(v6);
        }

        v18 += v33;
        if (!--v15)
        {
          break;
        }

        v19(v10, v18, v7);
      }

      swift_unknownObjectRelease();
      return v28;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v12;
}

id sub_1001E604C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryCollectionViewPrefetcher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E60CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1001E55F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001E6194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CircularDownloadProgressViewStyle()
{
  result = qword_100AD7E30;
  if (!qword_100AD7E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E6278()
{
  sub_1001E6300();
  if (v0 <= 0x3F)
  {
    sub_1001E635C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001E6300()
{
  if (!qword_100AE1610)
  {
    sub_10009BA68();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE1610);
    }
  }
}

void sub_1001E635C()
{
  if (!qword_100AD7E40)
  {
    type metadata accessor for ControlSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD7E40);
    }
  }
}

uint64_t sub_1001E63D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000F24EC(&qword_100AD7E80);
  sub_1001E652C(a1, a2 + *(v5 + 44));
  sub_1001E6FDC();
  sub_1001E6FDC();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_1000F24EC(&qword_100AD7E88) + 36));
  *v6 = v18;
  v6[1] = v19;
  v6[2] = v20;
  sub_1001E6FDC();
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(sub_1000F24EC(&qword_100AD7E90) + 36);
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  result = sub_1000F24EC(&qword_100AD7E98);
  *(a2 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1001E652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = sub_1000F24EC(&qword_100AD7EA0);
  __chkstk_darwin(v78);
  v74 = &v65[-v3];
  v4 = type metadata accessor for TintShapeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_1000F24EC(&qword_100AD7EA8);
  v8 = __chkstk_darwin(v71);
  v72 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v65[-v10];
  v75 = sub_1000F24EC(&qword_100AD7EB0);
  __chkstk_darwin(v75);
  v76 = &v65[-v12];
  v77 = sub_1000F24EC(&qword_100AD7EB8);
  v13 = *(v77 - 8);
  __chkstk_darwin(v77);
  v15 = &v65[-v14];
  v73 = a1;
  v16 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v17)
  {
    sub_1001E6FDC();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v18 = static Alignment.center.getter();
    v93 = xmmword_100946C20;
    WORD4(v96) = 256;
    *&v97 = v18;
    *(&v97 + 1) = v19;
    v80 = &off_100A58690;
    v20 = sub_1000F24EC(&qword_100AD7EC0);
    v21 = sub_1000F24EC(&qword_100AD7EC8);
    v73 = sub_1000F24EC(&qword_100AD7ED0);
    v74 = sub_10000B58C(&qword_100AD7ED8, &qword_100AD7EC0);
    v22 = sub_10000B58C(&qword_100AD7EE0, &qword_100AD7EC8);
    v64 = sub_1001E71D0();
    v23 = v21;
    View.phaseAnimator<A, B, C>(_:content:animation:)();
    v100 = v95;
    v101 = v96;
    v102 = v97;
    v98 = v93;
    v99 = v94;
    sub_100004F84(&v98, &qword_100AD7EC0);
    v24 = v77;
    (*(v13 + 16))(v76, v15, v77);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD7F00, &qword_100AD7EA0);
    *&v93 = v20;
    *(&v93 + 1) = &type metadata for Double;
    *&v94 = v23;
    *(&v94 + 1) = v73;
    *&v95 = v74;
    *(&v95 + 1) = &protocol witness table for Double;
    *&v96 = v22;
    *(&v96 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v24);
  }

  else
  {
    v26 = v16;
    sub_1001E6FDC();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v27 = v103;
    v28 = v104;
    v66 = v104;
    v68 = v105;
    v29 = v106;
    v67 = v107;
    v30 = v108;
    v31 = static Alignment.center.getter();
    v69 = v32;
    v70 = v31;
    TintShapeStyle.init()();
    sub_1001E6FDC();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v33 = sub_1000F24EC(&qword_100AD7F08);
    (*(v5 + 16))(&v11[*(v33 + 52)], v7, v4);
    *v11 = 0;
    *(v11 + 1) = v26;
    v34 = v89;
    *(v11 + 1) = v88;
    *(v11 + 2) = v34;
    *(v11 + 6) = v90;
    *&v11[*(v33 + 56)] = 256;
    v35 = static Alignment.center.getter();
    v37 = v36;
    (*(v5 + 8))(v7, v4);
    v38 = &v11[*(sub_1000F24EC(&qword_100AD7F10) + 36)];
    *v38 = v35;
    v38[1] = v37;
    static UnitPoint.center.getter();
    v40 = v39;
    v42 = v41;
    v43 = &v11[*(sub_1000F24EC(&qword_100AD7F18) + 36)];
    *v43 = 0xBFF921FB54442D18;
    v43[1] = v40;
    v43[2] = v42;
    v44 = static Animation.linear.getter();
    v45 = ProgressViewStyleConfiguration.fractionCompleted.getter();
    v46 = v72;
    v47 = &v11[*(v71 + 36)];
    *v47 = v44;
    *(v47 + 1) = v45;
    v47[16] = v48 & 1;
    sub_1000082B4(v11, v46, &qword_100AD7EA8);
    *&v93 = v27;
    v49 = v68;
    *(&v93 + 1) = __PAIR64__(v68, v28);
    *&v94 = v29;
    v50 = v67;
    *(&v94 + 1) = v67;
    *&v95 = v30;
    WORD4(v95) = 256;
    *(&v95 + 10) = v91;
    HIWORD(v95) = v92;
    v51 = v69;
    v52 = v70;
    *&v96 = v70;
    *(&v96 + 1) = v69;
    v53 = v93;
    v54 = v94;
    v55 = v96;
    v56 = v74;
    v74[2] = v95;
    v56[3] = v55;
    *v56 = v53;
    v56[1] = v54;
    v57 = sub_1000F24EC(&qword_100AD7F20);
    sub_1000082B4(v46, v56 + *(v57 + 48), &qword_100AD7EA8);
    sub_1000082B4(&v93, &v98, &qword_100AD7F28);
    sub_100004F84(v46, &qword_100AD7EA8);
    *&v98 = v27;
    *(&v98 + 1) = __PAIR64__(v49, v66);
    *&v99 = v29;
    *(&v99 + 1) = v50;
    *&v100 = v30;
    WORD4(v100) = 256;
    *(&v100 + 10) = v91;
    HIWORD(v100) = v92;
    *&v101 = v52;
    *(&v101 + 1) = v51;
    sub_100004F84(&v98, &qword_100AD7F28);
    sub_1000082B4(v56, v76, &qword_100AD7EA0);
    swift_storeEnumTagMultiPayload();
    v75 = sub_10000B58C(&qword_100AD7F00, &qword_100AD7EA0);
    v58 = sub_1000F2A18(&qword_100AD7EC0);
    v59 = sub_1000F2A18(&qword_100AD7EC8);
    v60 = sub_1000F2A18(&qword_100AD7ED0);
    v61 = sub_10000B58C(&qword_100AD7ED8, &qword_100AD7EC0);
    v62 = sub_10000B58C(&qword_100AD7EE0, &qword_100AD7EC8);
    v63 = sub_1001E71D0();
    v80 = v58;
    v81 = &type metadata for Double;
    v82 = v59;
    v83 = v60;
    v84 = v61;
    v85 = &protocol witness table for Double;
    v86 = v62;
    v87 = v63;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v56, &qword_100AD7EA0);
    return sub_100004F84(v11, &qword_100AD7EA8);
  }
}

uint64_t sub_1001E6EDC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2 * 0.0174532925;
  static UnitPoint.center.getter();
  v7 = v6;
  v9 = v8;
  v10 = sub_1000F24EC(&qword_100AD7EF8);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = sub_1000F24EC(&qword_100AD7ED0);
  v12 = a3 + *(result + 36);
  *v12 = v5;
  *(v12 + 8) = v7;
  *(v12 + 16) = v9;
  return result;
}

uint64_t sub_1001E6F98()
{
  static Animation.linear(duration:)();
  v0 = Animation.repeatForever(autoreverses:)();

  return v0;
}

uint64_t sub_1001E6FDC()
{
  v0 = type metadata accessor for ControlSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CircularDownloadProgressViewStyle();
  sub_1003D89A4(v3);
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4 == enum case for ControlSize.mini(_:) || v4 == enum case for ControlSize.small(_:);
  if (v5 || v4 == enum case for ControlSize.regular(_:) || v4 == enum case for ControlSize.large(_:) || v4 == enum case for ControlSize.extraLarge(_:))
  {
    sub_1000F24EC(&qword_100AD7DC8);
    return ScaledMetric.wrappedValue.getter();
  }

  else
  {
    sub_1000F24EC(&qword_100AD7DC8);
    ScaledMetric.wrappedValue.getter();
    return (*(v1 + 8))(v3, v0);
  }
}

unint64_t sub_1001E71D0()
{
  result = qword_100AD7EE8;
  if (!qword_100AD7EE8)
  {
    sub_1000F2A18(&qword_100AD7ED0);
    sub_10000B58C(&qword_100AD7EF0, &qword_100AD7EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7EE8);
  }

  return result;
}

unint64_t sub_1001E7288()
{
  result = qword_100AD7F30;
  if (!qword_100AD7F30)
  {
    sub_1000F2A18(&qword_100AD7E98);
    sub_1001E7314();
    sub_1001E7458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F30);
  }

  return result;
}

unint64_t sub_1001E7314()
{
  result = qword_100AD7F38;
  if (!qword_100AD7F38)
  {
    sub_1000F2A18(&qword_100AD7E90);
    sub_1001E73A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F38);
  }

  return result;
}

unint64_t sub_1001E73A0()
{
  result = qword_100AD7F40;
  if (!qword_100AD7F40)
  {
    sub_1000F2A18(&qword_100AD7E88);
    sub_10000B58C(&qword_100AD7F48, &qword_100AD7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F40);
  }

  return result;
}

unint64_t sub_1001E7458()
{
  result = qword_100AD7F58;
  if (!qword_100AD7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F58);
  }

  return result;
}

void sub_1001E74AC(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PromptCollectionViewCell();
  objc_msgSendSuper2(&v13, "applyLayoutAttributes:", a1);
  type metadata accessor for GalleryCollectionViewLayout.Attributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = fabs(*(v3 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_normalizedPosition)) < 0.5;
    v5 = v3;
    v6 = a1;
    [v1 setUserInteractionEnabled:v4];
    v7 = [v1 contentView];
    v8 = [v7 layer];

    v9 = *(v5 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 16);
    v10 = *(v5 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform + 32);
    *&m.a = *(v5 + OBJC_IVAR____TtCC7Journal27GalleryCollectionViewLayout10Attributes_contentTransform);
    *&m.c = v9;
    *&m.tx = v10;
    CATransform3DMakeAffineTransform(&v11, &m);
    [v8 setSublayerTransform:&v11];
  }
}

id sub_1001E763C(void *a1)
{
  type metadata accessor for GalleryCollectionViewLayout.Attributes();
  if (!swift_dynamicCastClass() || (([a1 size], v3 = v2, v5 = v4, type metadata accessor for UILayoutPriority(0), LODWORD(v17) = 1144750080, sub_1001E80F8(), static _UIKitNumericRawRepresentable.- infix(_:_:)(), LODWORD(v6) = v18, LODWORD(v7) = 1112014848, objc_msgSend(v1, "systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:", v3, v5, v6, v7), v9 = v8, v11 = v10, objc_msgSend(a1, "size"), v9 == v13) ? (v14 = v11 == v12) : (v14 = 0), v14))
  {

    return a1;
  }

  else
  {
    [a1 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    [v17 setSize:{v9, v11}];
    return v17;
  }
}

char *sub_1001E78EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v10 - 8);
  v54 = &v53 - v11;
  v12 = type metadata accessor for ColorResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView;
  *&v5[v16] = [objc_allocWithZone(UITextView) init];
  static UIBackgroundConfiguration.listCell()();
  v17 = objc_opt_self();
  v18 = [v17 secondarySystemGroupedBackgroundColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v19 = type metadata accessor for PromptCollectionViewCell();
  v55.receiver = v5;
  v55.super_class = v19;
  v20 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView;
  v22 = *&v20[OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView];
  v23 = v20;
  [v22 setUserInteractionEnabled:0];
  [*&v20[v21] setScrollEnabled:0];
  v24 = *&v20[v21];
  v25 = [v17 clearColor];
  [v24 setBackgroundColor:v25];

  [*&v20[v21] setTextAlignment:0];
  v26 = *&v20[v21];
  sub_10018D564();
  v27 = qword_100AD0BE0;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10000617C(v12, qword_100B312B0);
  (*(v13 + 16))(v15, v29, v12);
  v30 = UIColor.init(resource:)();
  v31 = [v30 colorWithProminence:1];

  [v28 setTextColor:v31];
  v32 = qword_100AD03C8;
  v33 = *&v20[v21];
  if (v32 != -1)
  {
    swift_once();
  }

  [v33 setFont:qword_100B303C0];

  v34 = [*&v20[v21] layer];
  v35 = [v17 blackColor];
  v36 = [v35 CGColor];

  [v34 setShadowColor:v36];
  v37 = [*&v20[v21] layer];
  LODWORD(v38) = 1034147594;
  [v37 setShadowOpacity:v38];

  v39 = [*&v20[v21] layer];
  [v39 setShadowOffset:{0.0, 2.0}];

  v40 = [*&v20[v21] layer];
  [v40 setShadowRadius:16.0];

  [*&v20[v21] setTextContainerInset:{15.0, 5.0, 15.0, 5.0}];
  v41 = [objc_allocWithZone(UIView) init];
  v42 = [v41 layer];
  [v42 setCornerRadius:12.0];

  v43 = [v41 layer];
  [v43 setMasksToBounds:1];

  v44 = [v23 contentView];
  [v44 addSubview:v41];

  sub_100013178(0.0);

  [*&v20[v21] sendSubviewToBack:v41];
  v45 = [v23 contentView];
  [v45 addSubview:*&v20[v21]];

  v46 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_intelligenceBackgroundConfig;
  v47 = type metadata accessor for UIBackgroundConfiguration();
  v48 = *(v47 - 8);
  v49 = &v23[v46];
  v50 = v54;
  (*(v48 + 16))(v54, v49, v47);
  (*(v48 + 56))(v50, 0, 1, v47);
  UICollectionViewCell.backgroundConfiguration.setter();

  v51 = *&v20[v21];
  sub_100013178(0.0);

  return v23;
}

id sub_1001E7F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PromptCollectionViewCell()
{
  result = qword_100AD7F98;
  if (!qword_100AD7F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E8058()
{
  result = type metadata accessor for UIBackgroundConfiguration();
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

unint64_t sub_1001E80F8()
{
  result = qword_100AF3610;
  if (!qword_100AF3610)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3610);
  }

  return result;
}

id sub_1001E8150()
{
  sub_1001E8C2C(v0, v7);
  v1 = type metadata accessor for LocationSearchBarCellView();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_searchBar;
  *&v2[v3] = [objc_allocWithZone(UISearchBar) init];
  swift_unknownObjectWeakInit();
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001E8490(v7);
  sub_1001E85E4();

  sub_1001E8C64(v7);
  sub_1001E8C94();
  return v4;
}

uint64_t sub_1001E8234(uint64_t a1)
{
  sub_100086C04(a1, v5);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    v4 = 0;
    sub_1001E8D88(&v3, v6);
    sub_1001E8490(v6);
    sub_10000BA7C(a1);
    return sub_1001E8C64(v6);
  }

  else
  {
    v3 = 0;
    v4 = 1;
    sub_10000BA7C(a1);
    return sub_1001E8D20(&v3);
  }
}

void (*sub_1001E82E0(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[16] = v1;
  v3[3] = &type metadata for LocationSearchBarCellConfiguration;
  v3[4] = sub_1001E8BD8();
  v5 = swift_allocObject();
  *v4 = v5;
  v6 = OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_appliedConfiguration;
  swift_beginAccess();
  sub_1001E8C2C(v1 + v6, v5 + 16);
  return sub_1001E83B0;
}

void sub_1001E83B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100086C04(*a1, v2 + 40);
    sub_1001E8234(v2 + 40);
LABEL_5:
    sub_10000BA7C(v2);
    goto LABEL_7;
  }

  sub_100086C04(*a1, v2 + 40);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    *(v2 + 112) = 0;
    sub_1001E8D88(v2 + 104, v2 + 120);
    sub_1001E8490(v2 + 120);
    sub_1001E8C64(v2 + 120);
    goto LABEL_5;
  }

  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  sub_10000BA7C(v2);
  sub_1001E8D20(v2 + 104);
LABEL_7:

  free(v2);
}

void sub_1001E8490(uint64_t a1)
{
  sub_1001E8C2C(a1, v7);
  v2 = OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_appliedConfiguration;
  swift_beginAccess();
  sub_1001E8CE8(v7, v1 + v2);
  swift_endAccess();
  v3 = *(v1 + OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_searchBar);
  sub_1001E8C2C(v1 + v2, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v3;
  sub_1001E8C64(v6);
  [v5 setDelegate:Strong];
  swift_unknownObjectRelease();
}

void sub_1001E85E4()
{
  [v0 setPreservesSuperviewLayoutMargins:0];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  v3 = -10.0;
  v4 = 0.0;
  if (v2 == 5)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = -10.0;
  }

  if (v2 == 5)
  {
    v3 = -6.0;
  }

  else
  {
    v4 = -8.0;
  }

  [v0 setDirectionalLayoutMargins:{v5, v4, v3, v4}];
  v6 = OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_searchBar;
  [*&v0[OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_searchBar] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v6] setSearchBarStyle:2];
  v7 = qword_100AD0638;
  v8 = *&v0[v6];
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  [v8 setPlaceholder:v9];

  [v0 addSubview:*&v0[v6]];
  v10 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100941830;
  v12 = [*&v0[v6] topAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v11 + 32) = v15;
  v16 = [*&v0[v6] leadingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v11 + 40) = v19;
  v20 = [*&v0[v6] bottomAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v11 + 48) = v23;
  v24 = [*&v0[v6] trailingAnchor];
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v11 + 56) = v27;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];
}

id sub_1001E89E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSearchBarCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E8A84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E8AA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1001E8ADC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for LocationSearchBarCellConfiguration;
  a1[4] = sub_1001E8BD8();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = OBJC_IVAR____TtC7Journal25LocationSearchBarCellView_appliedConfiguration;
  swift_beginAccess();
  return sub_1001E8C2C(v1 + v4, v3 + 16);
}

void (*sub_1001E8B68(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1001E82E0(v2);
  return sub_100113D90;
}

unint64_t sub_1001E8BD8()
{
  result = qword_100AF4360;
  if (!qword_100AF4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4360);
  }

  return result;
}

unint64_t sub_1001E8C94()
{
  result = qword_100AD7FF0;
  if (!qword_100AD7FF0)
  {
    type metadata accessor for LocationSearchBarCellView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7FF0);
  }

  return result;
}

uint64_t sub_1001E8D20(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD8010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E8DD0(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000F24EC(&qword_100AD8118);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000F24EC(&qword_100AD8120);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000F24EC(&qword_100AD8128);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000CA14(a1, a1[3]);
  sub_1001EDB78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1001EDBCC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1001EDC20();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1001E9098(uint64_t a1)
{
  v2 = sub_1001EDBCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E90D4(uint64_t a1)
{
  v2 = sub_1001EDBCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E9110()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1001E9140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
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

uint64_t sub_1001E9218(uint64_t a1)
{
  v2 = sub_1001EDB78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E9254(uint64_t a1)
{
  v2 = sub_1001EDB78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E9290(uint64_t a1)
{
  v2 = sub_1001EDC20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E92CC(uint64_t a1)
{
  v2 = sub_1001EDC20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E9308@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001ED6BC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1001E9354(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001E951C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD8218);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v54 - v3;
  v4 = sub_1000F24EC(&qword_100AD8220);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = &v54 - v5;
  v6 = sub_1000F24EC(&qword_100AD8228);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v54 - v7;
  v8 = sub_1000F24EC(&qword_100AD8230);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - v9;
  v10 = sub_1000F24EC(&qword_100AD8238);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v74 = sub_1000F24EC(&qword_100AD8240);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v54 - v12;
  v70 = sub_1000F24EC(&qword_100AD8248);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v54 - v13;
  v65 = sub_1000F24EC(&qword_100AD8250);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v14;
  v68 = sub_1000F24EC(&qword_100AD8258);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v54 - v15;
  v16 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v16 - 8);
  v61 = &v54 - v17;
  v60 = sub_1000F24EC(&qword_100AD8260);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v18;
  v58 = sub_1000F24EC(&qword_100AD8268);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v54 - v19;
  v21 = sub_1000F24EC(&qword_100AD8270);
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&qword_100AD8278);
  v28 = *(v27 - 8);
  v91 = v27;
  v92 = v28;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  sub_10000CA14(a1, a1[3]);
  sub_1001EDDA4();
  v90 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001EDC74(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v103 = 9;
        sub_1001EDF04();
        v37 = v80;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v81;
        v40 = v82;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v104 = 10;
        sub_1001EDEB0();
        v37 = v83;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v84;
        v40 = v85;
      }

      else
      {
        v105 = 11;
        sub_1001EDDF8();
        v37 = v86;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v87;
        v40 = v88;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v99 = 5;
        sub_1001EE054();
        v48 = v66;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v69 + 8))(v48, v70);
        return (*(v92 + 8))(v38, v39);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v101 = 7;
        sub_1001EDFAC();
        v37 = v73;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v75;
        v40 = v76;
      }

      else
      {
        v102 = 8;
        sub_1001EDF58();
        v37 = v77;
        v38 = v90;
        v39 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v78;
        v40 = v79;
      }
    }

    (*(v41 + 8))(v37, v40);
    return (*(v92 + 8))(v38, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v93 = 0;
      sub_1001EE24C();
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v23, v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v96 = 2;
        sub_1001EE150();
        v42 = v56;
        v43 = v90;
        v44 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v59 + 8))(v42, v60);
        return (*(v92 + 8))(v43, v44);
      }

      v98 = 4;
      sub_1001EE0A8();
      v53 = v62;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v53, v65);
    }

    return (*(v92 + 8))(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v32 = v61;
        sub_100024EC0(v26, v61);
        v97 = 3;
        sub_1001EE0FC();
        v33 = v64;
        v35 = v90;
        v34 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for UUID();
        sub_1001EE2A0(&qword_100AD8280, &type metadata accessor for UUID);
        v36 = v68;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        (*(v67 + 8))(v33, v36);
        sub_100004F84(v32, &qword_100AD1420);
      }

      else
      {
        v100 = 6;
        sub_1001EE000();
        v51 = v71;
        v35 = v90;
        v34 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v52 = v74;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v72 + 8))(v51, v52);
      }
    }

    else
    {
      v46 = *v26;
      v95 = 1;
      sub_1001EE1A4();
      v35 = v90;
      v34 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v94 = v46;
      sub_1001EE2E8();
      v47 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v57 + 8))(v20, v47);
    }

    return (*(v92 + 8))(v35, v34);
  }
}

void sub_1001EA278()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD1420);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001EDC74(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v15 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v15 = 10;
      }

      else
      {
        v15 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v15 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v15 = 7;
    }

    else
    {
      v15 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *v13;
    Hasher._combine(_:)(1uLL);
    v15 = v16;
LABEL_25:
    Hasher._combine(_:)(v15);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100024EC0(v13, v10);
    Hasher._combine(_:)(3uLL);
    sub_1001EDCD8(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      (*(v2 + 32))(v4, v8, v1);
      Hasher._combine(_:)(1u);
      sub_1001EE2A0(&qword_100AD4B40, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v2 + 8))(v4, v1);
    }

    sub_100004F84(v10, &qword_100AD1420);
  }

  else
  {
    v17 = *v13;
    Hasher._combine(_:)(6uLL);
    Hasher._combine(_:)(v17);
  }
}

uint64_t sub_1001EA5CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v102 = sub_1000F24EC(&qword_100AD8138);
  v116 = *(v102 - 8);
  __chkstk_darwin(v102);
  v111 = &v74 - v3;
  v101 = sub_1000F24EC(&qword_100AD8140);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v110 = &v74 - v4;
  v99 = sub_1000F24EC(&qword_100AD8148);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v107 = &v74 - v5;
  v97 = sub_1000F24EC(&qword_100AD8150);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v109 = &v74 - v6;
  v95 = sub_1000F24EC(&qword_100AD8158);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v108 = &v74 - v7;
  v93 = sub_1000F24EC(&qword_100AD8160);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v115 = &v74 - v8;
  v91 = sub_1000F24EC(&qword_100AD8168);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v106 = &v74 - v9;
  v88 = sub_1000F24EC(&qword_100AD8170);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v105 = &v74 - v10;
  v87 = sub_1000F24EC(&qword_100AD8178);
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v104 = &v74 - v11;
  v85 = sub_1000F24EC(&qword_100AD8180);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v103 = &v74 - v12;
  v82 = sub_1000F24EC(&qword_100AD8188);
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v114 = &v74 - v13;
  v80 = sub_1000F24EC(&qword_100AD8190);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v112 = &v74 - v14;
  v113 = sub_1000F24EC(&qword_100AD8198);
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v16 = &v74 - v15;
  v17 = type metadata accessor for CanvasContentInputType();
  v18 = __chkstk_darwin(v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v74 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v74 - v25;
  __chkstk_darwin(v24);
  v28 = &v74 - v27;
  v29 = a1[3];
  v120 = a1;
  sub_10000CA14(a1, v29);
  sub_1001EDDA4();
  v30 = v119;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v30)
  {
    v75 = v26;
    v76 = v20;
    v31 = v112;
    v77 = v23;
    v33 = v114;
    v32 = v115;
    v79 = 0;
    v34 = v116;
    v119 = v17;
    v78 = v28;
    v35 = v117;
    v36 = v113;
    v37 = KeyedDecodingContainer.allKeys.getter();
    v38 = (2 * *(v37 + 16)) | 1;
    v121 = v37;
    v122 = v37 + 32;
    v123 = 0;
    v124 = v38;
    v39 = sub_10000F924();
    if (v39 == 12 || v123 != v124 >> 1)
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      sub_1000F24EC(&qword_100AD8100);
      *v46 = v119;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
      swift_willThrow();
    }

    else
    {
      if (v39 > 5u)
      {
        v41 = v118;
        if (v39 > 8u)
        {
          v48 = v35;
          if (v39 == 9)
          {
            v125 = 9;
            sub_1001EDF04();
            v63 = v107;
            v64 = v79;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v64)
            {
              goto LABEL_39;
            }

            (*(v98 + 8))(v63, v99);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            swift_storeEnumTagMultiPayload();
          }

          else if (v39 == 10)
          {
            v125 = 10;
            sub_1001EDEB0();
            v55 = v110;
            v56 = v79;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v56)
            {
              goto LABEL_39;
            }

            (*(v100 + 8))(v55, v101);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v125 = 11;
            sub_1001EDDF8();
            v68 = v111;
            v69 = v79;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v69)
            {
              (*(v41 + 8))(v16, v36);
              swift_unknownObjectRelease();
              return sub_10000BA7C(v120);
            }

            (*(v34 + 8))(v68, v102);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          if (v39 == 6)
          {
            v125 = 6;
            sub_1001EE000();
            v57 = v32;
            v58 = v79;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v58)
            {
              v59 = v93;
              v70 = KeyedDecodingContainer.decode(_:forKey:)();
              (*(v92 + 8))(v57, v59);
              (*(v41 + 8))(v16, v36);
              swift_unknownObjectRelease();
              v71 = v70 & 1;
              v73 = v76;
              *v76 = v71;
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          v48 = v35;
          v49 = v79;
          if (v39 == 7)
          {
            v125 = 7;
            sub_1001EDFAC();
            v50 = v108;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v49)
            {
              goto LABEL_39;
            }

            (*(v94 + 8))(v50, v95);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v125 = 8;
            sub_1001EDF58();
            v66 = v109;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v49)
            {
              goto LABEL_39;
            }

            (*(v96 + 8))(v66, v97);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            swift_storeEnumTagMultiPayload();
          }
        }

        goto LABEL_50;
      }

      if (v39 <= 2u)
      {
        v40 = v79;
        if (v39)
        {
          v41 = v118;
          if (v39 == 1)
          {
            v125 = 1;
            sub_1001EE1A4();
            v42 = v33;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v40)
            {
              sub_1001EE1F8();
              v43 = v82;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v84 + 8))(v42, v43);
              (*(v41 + 8))(v16, v36);
              swift_unknownObjectRelease();
              v73 = v75;
              *v75 = v125;
LABEL_47:
              swift_storeEnumTagMultiPayload();
              v72 = v73;
              goto LABEL_48;
            }

            goto LABEL_39;
          }

          v125 = 2;
          sub_1001EE150();
          v65 = v103;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v40)
          {
            (*(v83 + 8))(v65, v85);
            (*(v41 + 8))(v16, v36);
            swift_unknownObjectRelease();
            v51 = v78;
            goto LABEL_37;
          }

LABEL_39:
          (*(v41 + 8))(v16, v36);
          goto LABEL_12;
        }

        v125 = 0;
        sub_1001EE24C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v118;
        if (!v40)
        {
          (*(v81 + 8))(v31, v80);
          (*(v54 + 8))(v16, v36);
          swift_unknownObjectRelease();
          v51 = v78;
LABEL_37:
          swift_storeEnumTagMultiPayload();
LABEL_49:
          v48 = v35;
          goto LABEL_50;
        }

LABEL_41:
        (*(v54 + 8))(v16, v36);
        goto LABEL_12;
      }

      v52 = v79;
      if (v39 != 3)
      {
        if (v39 == 4)
        {
          v125 = 4;
          sub_1001EE0A8();
          v53 = v105;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v54 = v118;
          if (v52)
          {
            goto LABEL_41;
          }

          v48 = v35;
          (*(v86 + 8))(v53, v88);
          (*(v54 + 8))(v16, v36);
          swift_unknownObjectRelease();
          v51 = v78;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v125 = 5;
          sub_1001EE054();
          v67 = v106;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v54 = v118;
          if (v52)
          {
            goto LABEL_41;
          }

          v48 = v35;
          (*(v90 + 8))(v67, v91);
          (*(v54 + 8))(v16, v36);
          swift_unknownObjectRelease();
          v51 = v78;
          swift_storeEnumTagMultiPayload();
        }

LABEL_50:
        sub_1001EDE4C(v51, v48);
        return sub_10000BA7C(v120);
      }

      v125 = 3;
      sub_1001EE0FC();
      v60 = v104;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v52)
      {
        type metadata accessor for UUID();
        sub_1001EE2A0(&qword_100AD81F0, &type metadata accessor for UUID);
        v61 = v77;
        v62 = v87;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v89 + 8))(v60, v62);
        (*(v118 + 8))(v16, v36);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v72 = v61;
LABEL_48:
        v51 = v78;
        sub_1001EDE4C(v72, v78);
        goto LABEL_49;
      }
    }

    (*(v118 + 8))(v16, v36);
LABEL_12:
    swift_unknownObjectRelease();
  }

  return sub_10000BA7C(v120);
}

uint64_t sub_1001EB954(uint64_t a1)
{
  v2 = sub_1001EE000();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EB990(uint64_t a1)
{
  v2 = sub_1001EE000();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EB9CC(uint64_t a1)
{
  v2 = sub_1001EE054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBA08(uint64_t a1)
{
  v2 = sub_1001EE054();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001EF234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001EBA80(uint64_t a1)
{
  v2 = sub_1001EDDA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBABC(uint64_t a1)
{
  v2 = sub_1001EDDA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBAF8(uint64_t a1)
{
  v2 = sub_1001EE150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBB34(uint64_t a1)
{
  v2 = sub_1001EE150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBB70(uint64_t a1)
{
  v2 = sub_1001EDEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBBAC(uint64_t a1)
{
  v2 = sub_1001EDEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1001EBC68(uint64_t a1)
{
  v2 = sub_1001EE1A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBCA4(uint64_t a1)
{
  v2 = sub_1001EE1A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBCE0(uint64_t a1)
{
  v2 = sub_1001EDFAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBD1C(uint64_t a1)
{
  v2 = sub_1001EDFAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBD58(uint64_t a1)
{
  v2 = sub_1001EE24C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBD94(uint64_t a1)
{
  v2 = sub_1001EE24C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBDD0(uint64_t a1)
{
  v2 = sub_1001EDDF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBE0C(uint64_t a1)
{
  v2 = sub_1001EDDF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBE48(uint64_t a1)
{
  v2 = sub_1001EE0A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBE84(uint64_t a1)
{
  v2 = sub_1001EE0A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBEC0(uint64_t a1)
{
  v2 = sub_1001EDF04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBEFC(uint64_t a1)
{
  v2 = sub_1001EDF04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBF38(uint64_t a1)
{
  v2 = sub_1001EDF58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EBF74(uint64_t a1)
{
  v2 = sub_1001EDF58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001EBFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001008E5880 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1001EC060(uint64_t a1)
{
  v2 = sub_1001EE0FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EC09C(uint64_t a1)
{
  v2 = sub_1001EE0FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001EC0D8()
{
  Hasher.init(_seed:)();
  sub_1001EA278();
  return Hasher._finalize()();
}

Swift::Int sub_1001EC11C()
{
  Hasher.init(_seed:)();
  sub_1001EA278();
  return Hasher._finalize()();
}

unint64_t sub_1001EC1D4()
{
  result = qword_100AD80D8;
  if (!qword_100AD80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD80D8);
  }

  return result;
}

uint64_t sub_1001EC228()
{
  sub_1000F24EC(&qword_100AD8290);
  v0 = *(type metadata accessor for CanvasContentInputType() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10093B4B0;
  v4 = v3 + v2;
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4 + v1, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v4 + 4 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  qword_100B2F530 = v3;
  return result;
}

uint64_t sub_1001EC3F4(uint64_t a1, uint64_t *a2)
{
  sub_1000F24EC(&qword_100AD8290);
  v3 = *(type metadata accessor for CanvasContentInputType() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100946E40;
  v7 = v6 + v5;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v7 + v4, 1, 1, v8);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v7 + 5 * v4) = 0;
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  *a2 = v6;
  return result;
}

uint64_t sub_1001EC594()
{
  sub_1000F24EC(&qword_100AD8290);
  v0 = *(type metadata accessor for CanvasContentInputType() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940050;
  swift_storeEnumTagMultiPayload();
  *(v3 + v2 + v1) = 0;
  result = swift_storeEnumTagMultiPayload();
  qword_100B2F548 = v3;
  return result;
}

uint64_t sub_1001EC67C()
{
  v25 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v0 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v23 = &v22 - v3;
  v4 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeModelsAvailability();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v4, v14);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v9 + 8))(v11, v8);
  v17 = v23;
  GenerativeModelsAvailability.availability.getter();
  (*(v13 + 8))(v16, v12);
  v19 = v24;
  v18 = v25;
  (*(v0 + 104))(v24, enum case for GenerativeModelsAvailability.Availability.available(_:), v25);
  LOBYTE(v4) = static GenerativeModelsAvailability.Availability.== infix(_:_:)();
  v20 = *(v0 + 8);
  v20(v19, v18);
  v20(v17, v18);
  return v4 & 1;
}

uint64_t sub_1001EC9B8()
{
  v1 = 0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001EDC74(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) < 2)
    {
      return v1;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v1 = String.init(localized:table:bundle:locale:comment:)();
      sub_100004F84(v6, &qword_100AD1420);
      return v1;
    }

LABEL_8:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return v1;
}

id sub_1001ECD40()
{
  v1 = v0;
  v2 = 0;
  v3 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001EDC74(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8 && EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() _systemImageNamed:v8];
      goto LABEL_15;
    }

LABEL_11:
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];
LABEL_15:
    v2 = v9;

    return v2;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) < 2)
    {
      return v2;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = String._bridgeToObjectiveC()();
      v2 = [objc_opt_self() _systemImageNamed:v7];

      sub_100004F84(v5, &qword_100AD1420);
      return v2;
    }

    goto LABEL_11;
  }

  return v2;
}

uint64_t sub_1001ED0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v8 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_1000F24EC(&qword_100AD8130);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_1001EDC74(a1, &v38 - v22);
  sub_1001EDC74(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001EDC74(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v8 + 48);
        sub_100024EC0(v17, v10);
        sub_100024EC0(&v23[v24], &v10[v26]);
        v28 = v40;
        v27 = v41;
        v29 = *(v40 + 48);
        if (v29(v10, 1, v41) == 1)
        {
          if (v29(&v10[v26], 1, v27) == 1)
          {
            sub_100004F84(v10, &qword_100AD1420);
LABEL_38:
            sub_1001EDD48(v23);
            v32 = 1;
            return v32 & 1;
          }
        }

        else
        {
          v34 = v39;
          sub_1001EDCD8(v10, v39);
          if (v29(&v10[v26], 1, v27) != 1)
          {
            v35 = v38;
            (*(v28 + 32))(v38, &v10[v26], v27);
            sub_1001EE2A0(&qword_100AD9220, &type metadata accessor for UUID);
            v36 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *(v28 + 8);
            v37(v35, v27);
            v37(v34, v27);
            sub_100004F84(v10, &qword_100AD1420);
            if (v36)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v28 + 8))(v34, v27);
        }

        sub_100004F84(v10, &unk_100AEEE20);
LABEL_46:
        sub_1001EDD48(v23);
        goto LABEL_41;
      }

      sub_100004F84(v17, &qword_100AD1420);
LABEL_40:
      sub_100004F84(v23, &qword_100AD8130);
LABEL_41:
      v32 = 0;
      return v32 & 1;
    }

    sub_1001EDC74(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v30 = *v14;
  }

  else
  {
    sub_1001EDC74(v23, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v30 = *v19;
  }

  v31 = v30 ^ v23[v24];
  sub_1001EDD48(v23);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_1001ED6BC(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD80E0);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1000F24EC(&qword_100AD80E8);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1000F24EC(&qword_100AD80F0);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000CA14(a1, a1[3]);
  sub_1001EDB78();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000BA7C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1007FDC80();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1000F24EC(&qword_100AD8100);
    *v19 = &type metadata for CanvasContentInputType.KeyboardFocus;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000BA7C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1001EDBCC();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1001EDC20();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000BA7C(v26);
  return v31 & 1;
}

unint64_t sub_1001EDB78()
{
  result = qword_100AD80F8;
  if (!qword_100AD80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD80F8);
  }

  return result;
}

unint64_t sub_1001EDBCC()
{
  result = qword_100AD8108;
  if (!qword_100AD8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8108);
  }

  return result;
}

unint64_t sub_1001EDC20()
{
  result = qword_100AD8110;
  if (!qword_100AD8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8110);
  }

  return result;
}

uint64_t sub_1001EDC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EDCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EDD48(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001EDDA4()
{
  result = qword_100AD81A0;
  if (!qword_100AD81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81A0);
  }

  return result;
}

unint64_t sub_1001EDDF8()
{
  result = qword_100AD81A8;
  if (!qword_100AD81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81A8);
  }

  return result;
}

uint64_t sub_1001EDE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001EDEB0()
{
  result = qword_100AD81B0;
  if (!qword_100AD81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81B0);
  }

  return result;
}

unint64_t sub_1001EDF04()
{
  result = qword_100AD81B8;
  if (!qword_100AD81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81B8);
  }

  return result;
}

unint64_t sub_1001EDF58()
{
  result = qword_100AD81C0;
  if (!qword_100AD81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81C0);
  }

  return result;
}

unint64_t sub_1001EDFAC()
{
  result = qword_100AD81C8;
  if (!qword_100AD81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81C8);
  }

  return result;
}

unint64_t sub_1001EE000()
{
  result = qword_100AD81D0;
  if (!qword_100AD81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81D0);
  }

  return result;
}

unint64_t sub_1001EE054()
{
  result = qword_100AD81D8;
  if (!qword_100AD81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81D8);
  }

  return result;
}

unint64_t sub_1001EE0A8()
{
  result = qword_100AD81E0;
  if (!qword_100AD81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81E0);
  }

  return result;
}

unint64_t sub_1001EE0FC()
{
  result = qword_100AD81E8;
  if (!qword_100AD81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81E8);
  }

  return result;
}

unint64_t sub_1001EE150()
{
  result = qword_100AD81F8;
  if (!qword_100AD81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD81F8);
  }

  return result;
}

unint64_t sub_1001EE1A4()
{
  result = qword_100AD8200;
  if (!qword_100AD8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8200);
  }

  return result;
}

unint64_t sub_1001EE1F8()
{
  result = qword_100AD8208;
  if (!qword_100AD8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8208);
  }

  return result;
}

unint64_t sub_1001EE24C()
{
  result = qword_100AD8210;
  if (!qword_100AD8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8210);
  }

  return result;
}

uint64_t sub_1001EE2A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001EE2E8()
{
  result = qword_100AD8288;
  if (!qword_100AD8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001EE580()
{
  result = qword_100AD8298;
  if (!qword_100AD8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8298);
  }

  return result;
}

unint64_t sub_1001EE5D8()
{
  result = qword_100AD82A0;
  if (!qword_100AD82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82A0);
  }

  return result;
}

unint64_t sub_1001EE630()
{
  result = qword_100AD82A8;
  if (!qword_100AD82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82A8);
  }

  return result;
}

unint64_t sub_1001EE688()
{
  result = qword_100AD82B0;
  if (!qword_100AD82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82B0);
  }

  return result;
}

unint64_t sub_1001EE6E0()
{
  result = qword_100AD82B8;
  if (!qword_100AD82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82B8);
  }

  return result;
}

unint64_t sub_1001EE738()
{
  result = qword_100AD82C0;
  if (!qword_100AD82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82C0);
  }

  return result;
}

unint64_t sub_1001EE790()
{
  result = qword_100AD82C8;
  if (!qword_100AD82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82C8);
  }

  return result;
}

unint64_t sub_1001EE7E8()
{
  result = qword_100AD82D0;
  if (!qword_100AD82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82D0);
  }

  return result;
}

unint64_t sub_1001EE840()
{
  result = qword_100AD82D8;
  if (!qword_100AD82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82D8);
  }

  return result;
}

unint64_t sub_1001EE898()
{
  result = qword_100AD82E0;
  if (!qword_100AD82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82E0);
  }

  return result;
}

unint64_t sub_1001EE8F0()
{
  result = qword_100AD82E8;
  if (!qword_100AD82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82E8);
  }

  return result;
}

unint64_t sub_1001EE948()
{
  result = qword_100AD82F0;
  if (!qword_100AD82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82F0);
  }

  return result;
}

unint64_t sub_1001EE9A0()
{
  result = qword_100AD82F8;
  if (!qword_100AD82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD82F8);
  }

  return result;
}

unint64_t sub_1001EE9F8()
{
  result = qword_100AD8300;
  if (!qword_100AD8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8300);
  }

  return result;
}

unint64_t sub_1001EEA50()
{
  result = qword_100AD8308;
  if (!qword_100AD8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8308);
  }

  return result;
}

unint64_t sub_1001EEAA8()
{
  result = qword_100AD8310;
  if (!qword_100AD8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8310);
  }

  return result;
}

unint64_t sub_1001EEB00()
{
  result = qword_100AD8318;
  if (!qword_100AD8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8318);
  }

  return result;
}

unint64_t sub_1001EEB58()
{
  result = qword_100AD8320;
  if (!qword_100AD8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8320);
  }

  return result;
}

unint64_t sub_1001EEBB0()
{
  result = qword_100AD8328;
  if (!qword_100AD8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8328);
  }

  return result;
}

unint64_t sub_1001EEC08()
{
  result = qword_100AD8330;
  if (!qword_100AD8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8330);
  }

  return result;
}

unint64_t sub_1001EEC60()
{
  result = qword_100AD8338;
  if (!qword_100AD8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8338);
  }

  return result;
}

unint64_t sub_1001EECB8()
{
  result = qword_100AD8340;
  if (!qword_100AD8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8340);
  }

  return result;
}

unint64_t sub_1001EED10()
{
  result = qword_100AD8348;
  if (!qword_100AD8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8348);
  }

  return result;
}

unint64_t sub_1001EED68()
{
  result = qword_100AD8350;
  if (!qword_100AD8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8350);
  }

  return result;
}

unint64_t sub_1001EEDC0()
{
  result = qword_100AD8358;
  if (!qword_100AD8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8358);
  }

  return result;
}

unint64_t sub_1001EEE18()
{
  result = qword_100AD8360;
  if (!qword_100AD8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8360);
  }

  return result;
}

unint64_t sub_1001EEE70()
{
  result = qword_100AD8368;
  if (!qword_100AD8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8368);
  }

  return result;
}

unint64_t sub_1001EEEC8()
{
  result = qword_100AD8370;
  if (!qword_100AD8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8370);
  }

  return result;
}

unint64_t sub_1001EEF20()
{
  result = qword_100AD8378;
  if (!qword_100AD8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8378);
  }

  return result;
}

unint64_t sub_1001EEF78()
{
  result = qword_100AD8380;
  if (!qword_100AD8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8380);
  }

  return result;
}

unint64_t sub_1001EEFD0()
{
  result = qword_100AD8388;
  if (!qword_100AD8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8388);
  }

  return result;
}

unint64_t sub_1001EF028()
{
  result = qword_100AD8390;
  if (!qword_100AD8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8390);
  }

  return result;
}

unint64_t sub_1001EF080()
{
  result = qword_100AD8398;
  if (!qword_100AD8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8398);
  }

  return result;
}

unint64_t sub_1001EF0D8()
{
  result = qword_100AD83A0;
  if (!qword_100AD83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD83A0);
  }

  return result;
}

unint64_t sub_1001EF130()
{
  result = qword_100AD83A8;
  if (!qword_100AD83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD83A8);
  }

  return result;
}

unint64_t sub_1001EF188()
{
  result = qword_100AD83B0;
  if (!qword_100AD83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD83B0);
  }

  return result;
}

unint64_t sub_1001EF1E0()
{
  result = qword_100AD83B8;
  if (!qword_100AD83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD83B8);
  }

  return result;
}

uint64_t sub_1001EF234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008E5800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008E5820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001008E5840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001008E5860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1001EF65C()
{
  v1 = sub_1000F24EC(&qword_100AD8440);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ContactAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata))
  {

    sub_10025D81C(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = ContactAssetMetadata.name.getter();
      (*(v5 + 8))(v7, v4);
      return v8;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_100004F84(v3, &qword_100AD8440);
  return 0;
}

id sub_1001EF844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001EF8E0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v8;
  v62 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UTType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AD8440);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ContactAssetMetadata();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_1006AC354(v18);
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_100004F84(v18, &qword_100AD8440);
    return 0;
  }

  else
  {
    v26 = *(v20 + 32);
    v60 = v23;
    v26(v22, v18, v23);
    static UTType.contact.getter();
    v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v25 = [v27 initWithContentType:isa];

    (*(v13 + 8))(v15, v12);
    ContactAssetMetadata.name.getter();
    v29 = String._bridgeToObjectiveC()();

    [v25 setDisplayName:v29];

    v30 = v62;
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.search(_:), v62);
    LOBYTE(isa) = JournalFeatureFlags.isEnabled.getter();
    (*(v9 + 8))(v11, v30);
    v31 = v22;
    if (isa)
    {
      ContactAssetMetadata.name.getter();
      v32 = objc_allocWithZone(CSPerson);
      v33 = String._bridgeToObjectiveC()();

      v34 = Array._bridgeToObjectiveC()().super.isa;
      v35 = String._bridgeToObjectiveC()();
      v36 = [v32 initWithDisplayName:v33 handles:v34 handleIdentifier:v35];

      sub_1000F24EC(&unk_100AD4780);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100941D50;
      *(v37 + 32) = v36;
      sub_1001F01F8();
      v38 = v36;
      v39.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 setAuthors:v39.super.isa];
    }

    else
    {
      sub_1000F24EC(&unk_100AD9A60);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100940080;
      *(v40 + 32) = ContactAssetMetadata.name.getter();
      *(v40 + 40) = v41;
      v39.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 setAuthorNames:v39.super.isa];
    }

    v42 = v66;
    v43 = v63;

    ContactAssetMetadata.startTime.getter();
    v44 = type metadata accessor for Date();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      v47 = *(v61 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
      if (v47 && (v48 = [v47 entry]) != 0)
      {
        v49 = v48;
        JournalEntryMO.displayDate.getter();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      (*(v45 + 56))(v42, v50, 1, v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_100004F84(v43, &unk_100AD4790);
      }
    }

    else
    {
      (*(v45 + 32))(v42, v43, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    v53 = v52;
    sub_1000F24EC(&unk_100AD9A60);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100940080;
    v55 = sub_10012C00C(v51, v53, v42);
    v57 = v56;

    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = Array._bridgeToObjectiveC()().super.isa;

    [v25 setAlternateNames:v58];

    sub_100004F84(v42, &unk_100AD4790);
    (*(v24 + 8))(v31, v60);
  }

  return v25;
}

uint64_t sub_1001F01B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001F01F8()
{
  result = qword_100AD8448;
  if (!qword_100AD8448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8448);
  }

  return result;
}

uint64_t sub_1001F0244()
{
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  if (UICellConfigurationState.isSelected.getter())
  {
    v0 = [objc_opt_self() secondarySystemFillColor];
  }

  else
  {
    result = UICellConfigurationState.isFocused.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v2 = [objc_opt_self() tintColor];
    [v2 colorWithProminence:1];
  }

  UIBackgroundConfiguration.strokeColor.setter();
  UIBackgroundConfiguration.strokeOutset.setter();
  return UIBackgroundConfiguration.strokeWidth.setter();
}

id sub_1001F05B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarBrickCollectionViewListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F05E8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - v3;
  v4 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for AppLaunchAction();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  sub_1000082B4(a1, v6, &qword_100AE46A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &qword_100AE46A0);
    return 0;
  }

  sub_1001F373C(v6, v16);
  sub_10004F698(v16, v14, type metadata accessor for AppLaunchAction);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_10004F700(v14, type metadata accessor for AppLaunchAction);
    sub_10004F698(v16, v11, type metadata accessor for AppLaunchAction);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1001F0A58(*v11);

      goto LABEL_18;
    }

    sub_10004F700(v11, type metadata accessor for AppLaunchAction);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      if ([v19 isBeingDismissed])
      {
      }

      else
      {
        v20 = [v19 isMovingFromParentViewController];

        if ((v20 & 1) == 0)
        {
          v21 = UIViewController.forPresenting.getter();
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            goto LABEL_20;
          }

          v22 = type metadata accessor for TaskPriority();
          v23 = v30;
          (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
          type metadata accessor for MainActor();
          v24 = v19;
          v25 = static MainActor.shared.getter();
          v26 = swift_allocObject();
          v26[2] = v25;
          v26[3] = &protocol witness table for MainActor;
          v26[4] = v24;
          sub_1003E9628(0, 0, v23, &unk_100947F88, v26);
        }
      }
    }

    v27 = sub_1001F0EA0();
    if (v27)
    {
      v28 = v27;
      sub_10000BD0C(v27);

      goto LABEL_18;
    }

LABEL_20:
    sub_10004F700(v16, type metadata accessor for AppLaunchAction);
    return 0;
  }

  sub_1001F33B4(*v14);
LABEL_18:
  sub_10004F700(v16, type metadata accessor for AppLaunchAction);
  return 1;
}

void sub_1001F0A58(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  if (v3)
  {
    v4 = [v3 rootViewController];
    if (v4)
    {
      v5 = v4;
      v6 = UIViewController.forPresenting.getter();

      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = sub_1003E7434(*(a1 + 16), 0);
        v9 = *(type metadata accessor for URL() - 8);
        v10 = sub_1001C1938(&v15, &v8[(*(v9 + 80) + 32) & ~*(v9 + 80)], v7, a1);

        sub_100014FF8();
        if (v10 != v7)
        {
          __break(1u);
          return;
        }
      }

      else
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      v11 = type metadata accessor for JournalShareUtility();
      type metadata accessor for JurassicAlertController();
      v12 = *(v8 + 2);
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      *(v13 + 24) = v11;
      v14 = sub_1000ED298(v12, sub_1000F2C54, v13, DebugData.init(name:), 0);

      [v6 presentViewController:v14 animated:1 completion:0];
    }
  }
}

uint64_t sub_1001F0C58()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001F0D04;

  return sub_1004F1518();
}

uint64_t sub_1001F0D04()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F0E40, v1, v0);
}

uint64_t sub_1001F0E40()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001F0EA0()
{
  v1 = sub_1000F24EC(&qword_100AD8478);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v17);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004F698(v0, v19, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v26 = sub_1001F1D60(*v19, v19[1]);

        return v26;
      }

      v30 = &unk_100AD6DD0;
      sub_100021CEC(v19, v16, &unk_100AD6DD0);
      v26 = sub_1001F1620(v16);
      v27 = v16;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          (*(v8 + 32))(v10, v19, v7);
          v31 = sub_1001F29F4(v10);
          (*(v8 + 8))(v10, v7);
          return v31;
        }

        v22 = *v19;
        v23 = v19[1];
        v24 = sub_1000F24EC(&qword_100AD62A0);
        v25 = *(v24 + 64);
        sub_100021CEC(v19 + *(v24 + 48), v6, &qword_100AD57F0);
        sub_100021CEC(v19 + v25, v3, &qword_100AD8478);
        v26 = sub_1001F2DF8(v22, v23, v6, v3);

        sub_100004F84(v3, &qword_100AD8478);
        v27 = v6;
        v28 = &qword_100AD57F0;
        goto LABEL_13;
      }

      v30 = &qword_100AD1420;
      sub_100021CEC(v19, v13, &qword_100AD1420);
      v26 = sub_1001F2194(v13);
      v27 = v13;
    }

    v28 = v30;
LABEL_13:
    sub_100004F84(v27, v28);
    return v26;
  }

  result = 0;
  if ((v21 - 5) >= 2)
  {
    if (v21 == 7)
    {
      sub_10004F700(v19, type metadata accessor for AppLaunchAction);
      return 0;
    }

    else
    {
      return sub_1001F27BC();
    }
  }

  return result;
}

uint64_t sub_1001F12F8()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1001F138C, v2, v1);
}

uint64_t sub_1001F138C()
{
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001F147C;

  return sub_100136530(v1, &protocol witness table for MainActor, &off_100A58760);
}

uint64_t sub_1001F147C()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_1001F15C0, v3, v2);
}

uint64_t sub_1001F15C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F1620(uint64_t a1)
{
  v43 = a1;
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v41 = &v37 - v2;
  v38 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  __chkstk_darwin(v38);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for URL();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v15 - 8) + 56))(v14, 2, 2, v15);
  v16 = sub_1000F24EC(&unk_100AD4BA0);
  (*(*(v16 - 8) + 56))(v14, 0, 2, v16);
  v17 = objc_allocWithZone(NSUserActivity);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithActivityType:v18];

  type metadata accessor for SceneSplitViewController(0);
  sub_10004F698(v14, v11, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  v20 = v19;
  v21 = v42;
  v37 = v19;
  static RestorableController.addRestorableState(_:to:key:)();
  sub_10004F700(v11, type metadata accessor for SceneSplitViewController.State);
  sub_10004F700(v14, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1000082B4(v43, v6, &unk_100AD6DD0);
  if ((*(v21 + 48))(v6, 1, v7) == 1)
  {

    sub_100004F84(v6, &unk_100AD6DD0);
    return v20;
  }

  v22 = v40;
  (*(v21 + 32))(v40, v6, v7);
  sub_1000F24EC(&qword_100AD65F0);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100940080;
  (*(v21 + 16))(v24 + v23, v22, v7);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v25 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v26 = static JournalDataUtilities.fetchJournalEntryMOs(objectURIs:context:)();

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v41;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    (*(v21 + 8))(v22, v7);
    return v20;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v28 = v41;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
LABEL_10:
    v30 = v29;

    v31 = [v30 id];
    if (v31)
    {
      v32 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 56))(v28, v33, 1, v34);
    v35 = type metadata accessor for JournalEntryCollectionViewController(0);
    v36 = v39;
    sub_100021CEC(v28, v39, &qword_100AD1420);
    *(v36 + *(v38 + 20)) = 0;
    v44 = v35;
    sub_1000F24EC(&qword_100AD8480);
    String.init<A>(describing:)();
    sub_1001F336C(&qword_100AD8488, type metadata accessor for JournalEntryCollectionViewController);
    static RestorableController.addRestorableState(_:to:key:)();

    sub_10004F700(v36, type metadata accessor for JournalEntryCollectionViewController.State);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_1001F1D60(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = type metadata accessor for JournalTimelineViewController.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v12 - 8) + 56))(v11, 2, 2, v12);
  v13 = sub_1000F24EC(&unk_100AD4BA0);
  (*(*(v13 - 8) + 56))(v11, 0, 2, v13);
  v14 = objc_allocWithZone(NSUserActivity);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithActivityType:v15];

  type metadata accessor for SceneSplitViewController(0);
  sub_10004F698(v11, v8, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  v17 = v16;
  static RestorableController.addRestorableState(_:to:key:)();
  sub_10004F700(v8, type metadata accessor for SceneSplitViewController.State);
  sub_10004F700(v11, type metadata accessor for SceneSplitViewController.ContentType);
  type metadata accessor for JournalTimelineViewController(0);
  v18 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_1001F336C(&qword_100AD8490, type metadata accessor for JournalTimelineViewController);
  static RestorableController.addRestorableState(_:to:key:)();
  sub_10004F700(v5, type metadata accessor for JournalTimelineViewController.State);
  type metadata accessor for SuggestedSearchController();
  v22 = v21;
  v23 = a2;
  sub_1001F336C(&unk_100AE4DF0, type metadata accessor for SuggestedSearchController);

  static RestorableController.addRestorableState(_:to:key:)();

  return v17;
}

id sub_1001F2194(uint64_t a1)
{
  v32 = a1;
  v1 = sub_1000F24EC(&qword_100AD8478);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for JournalTimelineViewController.State(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for JournalFeatureFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, enum case for JournalFeatureFlags.suggestionsAPI(_:), v16);
  v20 = JournalFeatureFlags.isEnabled.getter();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    sub_1000082B4(v32, v6, &qword_100AD1420);
    v21 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    v22 = type metadata accessor for WidgetFamily();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    v23 = sub_1001F2DF8(0, 0, v6, v3);
    sub_100004F84(v3, &qword_100AD8478);
    sub_100004F84(v6, &qword_100AD57F0);
  }

  else
  {
    v24 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v24 - 8) + 56))(v15, 2, 2, v24);
    v25 = sub_1000F24EC(&unk_100AD4BA0);
    (*(*(v25 - 8) + 56))(v15, 0, 2, v25);
    v26 = objc_allocWithZone(NSUserActivity);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithActivityType:v27];

    type metadata accessor for SceneSplitViewController(0);
    sub_10004F698(v15, v12, type metadata accessor for SceneSplitViewController.ContentType);
    sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
    v23 = v28;
    static RestorableController.addRestorableState(_:to:key:)();
    sub_10004F700(v12, type metadata accessor for SceneSplitViewController.State);
    sub_10004F700(v15, type metadata accessor for SceneSplitViewController.ContentType);
    type metadata accessor for JournalTimelineViewController(0);
    sub_1000082B4(v32, v9, &qword_100AD1420);
    v29 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    sub_1001F336C(&qword_100AD8490, type metadata accessor for JournalTimelineViewController);
    static RestorableController.addRestorableState(_:to:key:)();

    sub_10004F700(v9, type metadata accessor for JournalTimelineViewController.State);
  }

  return v23;
}

id sub_1001F27BC()
{
  v0 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4BA0);
  (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
  v7 = objc_allocWithZone(NSUserActivity);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithActivityType:v8];

  type metadata accessor for SceneSplitViewController(0);
  sub_10004F698(v5, v2, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  v10 = v9;
  static RestorableController.addRestorableState(_:to:key:)();

  sub_10004F700(v2, type metadata accessor for SceneSplitViewController.State);
  sub_10004F700(v5, type metadata accessor for SceneSplitViewController.ContentType);
  return v10;
}

id sub_1001F29F4(uint64_t a1)
{
  v21[0] = a1;
  v1 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v11 - 8) + 56))(v10, 2, 2, v11);
  v12 = sub_1000F24EC(&unk_100AD4BA0);
  (*(*(v12 - 8) + 56))(v10, 0, 2, v12);
  v13 = objc_allocWithZone(NSUserActivity);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithActivityType:v14];

  type metadata accessor for SceneSplitViewController(0);
  sub_10004F698(v10, v7, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  v16 = v15;
  static RestorableController.addRestorableState(_:to:key:)();
  sub_10004F700(v7, type metadata accessor for SceneSplitViewController.State);
  sub_10004F700(v10, type metadata accessor for SceneSplitViewController.ContentType);
  v17 = type metadata accessor for JournalEntryCollectionViewController(0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v4, v21[0], v18);
  (*(v19 + 56))(v4, 0, 1, v18);
  v4[*(v2 + 28)] = 1;
  v21[1] = v17;
  sub_1000F24EC(&qword_100AD8480);
  String.init<A>(describing:)();
  sub_1001F336C(&qword_100AD8488, type metadata accessor for JournalEntryCollectionViewController);
  static RestorableController.addRestorableState(_:to:key:)();

  sub_10004F700(v4, type metadata accessor for JournalEntryCollectionViewController.State);
  return v16;
}

id sub_1001F2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v36 = a1;
  v37 = a3;
  v35 = a2;
  v4 = sub_1000F24EC(&qword_100AD8478);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v38 = type metadata accessor for WidgetFamily();
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalTimelineViewController.State(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SceneSplitViewController.State(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v17 - 8) + 56))(v16, 2, 2, v17);
  v18 = sub_1000F24EC(&unk_100AD4BA0);
  (*(*(v18 - 8) + 56))(v16, 0, 2, v18);
  v19 = objc_allocWithZone(NSUserActivity);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithActivityType:v20];

  type metadata accessor for SceneSplitViewController(0);
  sub_10004F698(v16, v13, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1001F336C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController);
  v22 = v21;
  static RestorableController.addRestorableState(_:to:key:)();
  v23 = v13;
  v24 = v35;
  sub_10004F700(v23, type metadata accessor for SceneSplitViewController.State);
  sub_10004F700(v16, type metadata accessor for SceneSplitViewController.ContentType);
  type metadata accessor for JournalTimelineViewController(0);
  v25 = *(sub_1000F24EC(&qword_100AD8498) + 48);
  v26 = v37;
  *v10 = v36;
  v10[1] = v24;
  sub_1000082B4(v26, v10 + v25, &qword_100AD57F0);
  v27 = type metadata accessor for JournalTimelineViewController.RestorableNavigation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
  sub_1001F336C(&qword_100AD8490, type metadata accessor for JournalTimelineViewController);

  v28 = v34;
  v29 = v38;
  static RestorableController.addRestorableState(_:to:key:)();

  sub_10004F700(v10, type metadata accessor for JournalTimelineViewController.State);
  sub_1000082B4(v39, v6, &qword_100AD8478);
  if ((*(v28 + 48))(v6, 1, v29) == 1)
  {
    sub_100004F84(v6, &qword_100AD8478);
  }

  else
  {
    v30 = v33;
    (*(v28 + 32))(v33, v6, v29);
    if (v24)
    {
      sub_1004EB03C(v30);
    }

    (*(v28 + 8))(v30, v29);
  }

  return v22;
}

uint64_t sub_1001F336C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001F33B4(char a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (a1)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = &protocol witness table for MainActor;
    sub_1003E9628(0, 0, v4, &unk_100947F68, v7);
LABEL_7:

    return;
  }

  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v8 = [*(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v9 = [v8 authorizationStatus];

  if (!v9)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    sub_1003E98E8(0, 0, v4, &unk_100947F78, v12);
    goto LABEL_7;
  }
}

uint64_t sub_1001F35E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1001F12F8();
}

uint64_t sub_1001F3690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_100126AD0(a1);
}

uint64_t sub_1001F373C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F37A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1001F0C58();
}

id sub_1001F3854(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for LocationListSheetNavigationController();
  v3 = objc_msgSendSuper2(&v6, "initWithRootViewController:", a1);
  [v3 setModalInPresentation:1];
  [v3 setPreferredContentSize:{400.0, 1.79769313e308}];
  [v3 setTransitioningDelegate:v3];
  [v3 setModalPresentationStyle:4];
  v4 = [v3 navigationBar];
  [v4 setHidden:1];

  return v3;
}

id sub_1001F3B84(void *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtCC7Journal37LocationListSheetNavigationControllerP33_4C3A4C3AE07A41CEB38A55473D4742EF22PresentationController_standardDetent] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for LocationListSheetNavigationController.PresentationController();
  v9 = objc_msgSendSuper2(&v22, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v10 = String._bridgeToObjectiveC()();
  sub_1001F3EEC();
  v11 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();
  v12 = String._bridgeToObjectiveC()();
  sub_1000F24EC(&unk_100AD4780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100941D60;
  *(v13 + 32) = v11;
  *(v13 + 40) = a4;
  v14 = v11;
  v15 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setDetents:isa];

  v17 = [v15 identifier];
  [v9 setLargestUndimmedDetentIdentifier:v17];

  [v9 setSelectedDetentIdentifier:v12];
  [v9 setPrefersGrabberVisible:1];
  [v9 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  [v9 _setHorizontalAlignment:2];
  v18 = [a3 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  v20 = 10.0;
  if (v19 == 5)
  {
    v20 = 8.0;
  }

  [v9 _setMarginInRegularWidthRegularHeight:v20];
  [v9 _setForcePresentationInPresenterScene:1];
  [v9 _setAllowsAsymmetricVerticalMargins:1];

  return v9;
}

id sub_1001F3E80(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1001F3EEC()
{
  result = qword_100AD85C0;
  if (!qword_100AD85C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD85C0);
  }

  return result;
}

id sub_1001F3F38(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_23:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

LABEL_22:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        if (v9)
        {
          break;
        }
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v18 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = ObjectType;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1003E509C(0, *(v6 + 2) + 1, 1, v6);
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    v14 = v18;
    if (v13 >= v12 >> 1)
    {
      v6 = sub_1003E509C((v12 > 1), v13 + 1, 1, v6);
      v14 = v18;
    }

    *(v6 + 2) = v13 + 1;
    v15 = &v6[2 * v13];
    *(v15 + 4) = v9;
    *(v15 + 5) = v14;
    ObjectType = v17;
  }

  while (v5 != v4);
LABEL_24:

  *&v1[OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets] = v6;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

void sub_1001F4164(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = UIView.viewControllerForPresenting.getter();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:a3];
      v10 = [v9 popoverPresentationController];
      if (v10)
      {
        v11 = v10;
        v12 = [a1 presentationSourceItem];
        if (!v12)
        {
          v12 = v6;
        }

        [v11 setSourceItem:v12];
        swift_unknownObjectRelease();
      }

      [v8 presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v9 = v6;
    }
  }
}

void *sub_1001F42FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets);
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = v5;
      v8(ObjectType, v6);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 2;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1001F43E8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_12:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets);
    if (*(v11 + 16) > a1)
    {
      v12 = v11 + 16 * a1;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 16);
      v17 = v13;
      v18 = v16(ObjectType, v14);

      if (v18)
      {
        *(a2 + 24) = sub_1000065A8(0, &qword_100AD8670);
        *a2 = v18;
        return;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1001F468C()
{
  v1 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v1 - 8);
  v3 = &v40 - v2;
  v49 = type metadata accessor for FileStoreConfiguration();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v10 = __chkstk_darwin(v9);
  v52 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for URL();
  v44 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = (*((swift_isaMask & *v0) + 0xF8))(v20);
  v51 = v23;
  if (v23 >> 62)
  {
    goto LABEL_28;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = v52;
  v50 = v24;
  if (v24)
  {
    v41 = v22;
    v42 = v3;
    v22 = 0;
    v3 = v51;
    v54 = (v44 + 56);
    v55 = v51 & 0xC000000000000001;
    v45 = v51 & 0xFFFFFFFFFFFFFF8;
    v46 = (v4 + 8);
    v47 = (v44 + 32);
    v53 = (v44 + 48);
    v4 = v50;
    do
    {
      if (v55)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v22 >= *(v45 + 16))
        {
          goto LABEL_27;
        }

        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v24 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v56 = v27;
      v57 = v26;
      sub_100068AC8(v26 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v8, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload <= 1)
      {
        v31 = v8;
        if (v29)
        {
          sub_10004FECC(v8, type metadata accessor for AssetAttachment.AssetType);
          v34 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        v30 = EnumCaseMultiPayload - 2;
        v31 = v8;
        if (v30 >= 2)
        {

          v31 = &v8[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
        }
      }

      sub_100068CF4(v31, v13);
      sub_100068AC8(v13, v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10004FECC(v13, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*v47)(v16, v25, v17);
      }

      else
      {
        v32 = v48;
        static FileStoreConfiguration.shared.getter();
        v3 = v51;
        FileStoreConfiguration.getAttachmentURL(from:)();
        v4 = v50;

        v33 = v32;
        v25 = v52;
        (*v46)(v33, v49);
        sub_10004FECC(v13, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v34 = 0;
LABEL_19:
      (*v54)(v16, v34, 1, v17);
      if ((*v53)(v16, 1, v17) != 1)
      {

        v35 = v44;
        v36 = v41;
        (*(v44 + 32))(v41, v16, v17);
        sub_1000065A8(0, &unk_100AD8660);
        (*(v35 + 16))(v43, v36, v17);
        v37 = type metadata accessor for UTType();
        (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
        v38 = NSItemProvider.init(contentsOf:contentType:openInPlace:coordinated:visibility:)();

        (*(v35 + 8))(v36, v17);
        return v38;
      }

      sub_1001616C0(v16);
      ++v22;
    }

    while (v56 != v4);
  }

  return [objc_allocWithZone(NSItemProvider) init];
}

uint64_t sub_1001F4DE8()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v33 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = sub_1000F24EC(&qword_100AE4250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  UIButton.configuration.getter();
  if (*(v0 + OBJC_IVAR____TtC7Journal14PlaybackButton_placementView))
  {
    if (*(v0 + OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying))
    {
      v14 = 0x69662E6573756170;
    }

    else
    {
      v14 = 0x6C69662E79616C70;
    }

    v15 = type metadata accessor for UIButton.Configuration();
    if (!(*(*(v15 - 8) + 48))(v13, 1, v15))
    {
      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      v18 = &enum case for UIButton.Configuration.Size.small(_:);
      if (v17 != 1)
      {
        v18 = &enum case for UIButton.Configuration.Size.medium(_:);
      }

      (*(v33 + 104))(v5, *v18, v2);
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying))
    {
      v19 = 0xD000000000000011;
    }

    else
    {
      v19 = 0xD000000000000010;
    }

    v15 = type metadata accessor for UIButton.Configuration();
    if (!(*(*(v15 - 8) + 48))(v13, 1, v15))
    {
      v32 = v19;
      (*(v33 + 104))(v7, enum case for UIButton.Configuration.Size.large(_:), v2);
LABEL_14:
      UIButton.Configuration.buttonSize.setter();
    }
  }

  type metadata accessor for UIButton.Configuration();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15))
  {
  }

  else
  {
    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() systemImageNamed:v20];

    UIButton.Configuration.image.setter();
  }

  sub_1001BF174(v13, v11);
  UIButton.configuration.setter();
  if (*(v1 + OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying) == 1)
  {
    if (qword_100AD0868 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (qword_100AD0880 != -1)
  {
LABEL_23:
    swift_once();
  }

LABEL_22:

  v22 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v22];

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = objc_allocWithZone(UIAccessibilityCustomAction);

  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001F55AC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B7420;
  aBlock[3] = &unk_100A61238;
  v26 = _Block_copy(aBlock);
  v27 = [v24 initWithName:v25 actionHandler:v26];

  _Block_release(v26);

  sub_1000F24EC(&unk_100AD4780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100941D50;
  *(v28 + 32) = v27;
  sub_1000065A8(0, &qword_100AD86C0);
  v29 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setAccessibilityCustomActions:isa];

  return sub_1001F5544(v13);
}

BOOL sub_1001F53F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong sendActionsForControlEvents:64];
  }

  return v1 != 0;
}

id sub_1001F54A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001F54F0()
{
  result = qword_100AD86B8;
  if (!qword_100AD86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD86B8);
  }

  return result;
}

uint64_t sub_1001F5544(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE4250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F55B4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD86C8);
  v1 = sub_10000617C(v0, qword_100AD86C8);
  if (qword_100AD0218 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001F567C()
{
  sub_1001F60BC();
  result = sub_1001F7974();
  v2 = *(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = &v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v5 = *&v2[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v4 = sub_1001F7EF0;
    v4[1] = v3;
    v6 = v2;

    sub_100004DF8(v5);
  }

  return result;
}

void sub_1001F5748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F60BC();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1001F7974();
  }
}

id sub_1001F57C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset] = 0;
  v12 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_latestImageRequestID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MotionActivityAssetView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1001F5A84();

  return v14;
}

id sub_1001F5930(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset] = 0;
  v6 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_latestImageRequestID;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MotionActivityAssetView();
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1001F5A84();
  }

  return v9;
}

uint64_t sub_1001F5A84()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 accessibilityLabel];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_10020D800(v6, v8);
  v10 = v9;

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  [v1 setAccessibilityValue:v11];

  v12 = sub_1001F5D3C();
  v13 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  v14 = *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel);
  *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel) = v12;

  v15 = sub_1001F5E84();
  v16 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  v17 = *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel);
  *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel) = v15;

  v18 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v1 addSubview:*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView)];
  [v1 addSubview:*(v1 + v13)];
  [v1 addSubview:*(v1 + v16)];
  v19 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  [v1 addSubview:*(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView)];
  LODWORD(v20) = 1144750080;
  [*(v1 + v13) setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1132068864;
  [*(v1 + v19) setContentCompressionResistancePriority:1 forAxis:v21];
  LODWORD(v22) = 1144750080;
  [*(v1 + v16) setContentCompressionResistancePriority:1 forAxis:v22];
  v23 = *(v1 + v18);
  sub_100013178(0.0);

  sub_1001F7708(1);
  v24 = [*(v1 + v19) setContentMode:1];
  (*((swift_isaMask & *v1) + 0x100))(v24);
  sub_1000F24EC(&unk_100AEBEC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940080;
  *(v25 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v25 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();
}

id sub_1001F5D3C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_100B303E8];
  v1 = [objc_opt_self() labelColor];
  v2 = [v1 colorWithAlphaComponent:0.6];

  [v0 setTextColor:v2];
  [v0 setTextAlignment:0];
  [v0 setLineBreakMode:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  return v0;
}

id sub_1001F5E84()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  [v0 setFont:qword_100B303D8];
  v1 = [objc_opt_self() secondaryLabelColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  [v0 setTextColor:v2];
  [v0 setLineBreakMode:4];
  [v0 setTextAlignment:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  return v0;
}

uint64_t sub_1001F5FC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(8, v3);

  return sub_1001F60BC();
}

uint64_t sub_1001F60BC()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Date();
  v11 = __chkstk_darwin(v10);
  result = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = *&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset];
  if (!v17)
  {
    return result;
  }

  v50 = v14;
  v51 = v6;
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  v54 = result;
  v56 = v17;
  Date.init()();
  v49 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v18 = v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v57 = v16;
  if (v18 > 6)
  {

    goto LABEL_8;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_8:
    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v20 = &qword_100B2F630;
    goto LABEL_11;
  }

  if (qword_100ACFB90 != -1)
  {
    swift_once();
  }

  v20 = &qword_100B2F628;
LABEL_11:
  v48 = *v20;
  UUID.init()();
  v21 = v9;
  v22 = v5[2];
  v23 = v21;
  v22(v3);
  v55 = v5;
  v24 = v5[7];
  v25 = v4;
  v24(v3, 0, 1, v4);
  v26 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_latestImageRequestID;
  swift_beginAccess();
  sub_100075184(v3, &v0[v26]);
  swift_endAccess();
  v27 = [v0 traitCollection];
  v28 = [v27 userInterfaceStyle];

  v29 = 0;
  if (v28 != 1)
  {
    v30 = *&v56[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v30 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v31 != 1;
  }

  v46 = v29;
  v32 = v0;
  LODWORD(v49) = v0[v49];
  v45 = [v0 traitCollection];
  v33 = v52;
  v47 = v23;
  (v22)(v52, v23, v25);
  v34 = v53;
  v35 = v54;
  v36 = v50;
  (*(v53 + 16))(v50, v57, v54);
  v37 = v55;
  v38 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v39 = (v51 + *(v34 + 80) + v38) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  (v37[4])(v40 + v38, v33, v25);
  (*(v34 + 32))(v40 + v39, v36, v35);
  v41 = v32;
  v42 = v45;
  v43 = v48;
  v44 = v56;
  sub_100076220(v49, v46, 0, v48, v45, sub_1001F7EF8, v40);

  (v37[1])(v47, v25);
  return (*(v34 + 8))(v57, v35);
}

uint64_t sub_1001F66C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v32 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v31 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, v30, v10);
  v15 = v7;
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v14;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v16, v13, v10);
  (*(v8 + 32))(v18 + v17, v27, v15);
  aBlock[4] = sub_1001F7FD0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A612D8;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  v22 = v33;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v24 = v34;
  v23 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v38 + 8))(v24, v23);
  (*(v36 + 8))(v22, v37);
}

void sub_1001F6B6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v6 = type metadata accessor for Date();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = __chkstk_darwin(v6);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v70 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v65 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_1000F24EC(&qword_100AD1420);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v65 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v65 = v17;
      v66 = a2;
      v28 = Strong;
      (*(v15 + 16))(v26, a3, v14);
      (*(v15 + 56))(v26, 0, 1, v14);
      v29 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_latestImageRequestID;
      swift_beginAccess();
      v30 = *(v18 + 48);
      sub_1000082B4(v26, v20, &qword_100AD1420);
      v67 = v28;
      sub_1000082B4(&v28[v29], &v20[v30], &qword_100AD1420);
      v31 = *(v15 + 48);
      if (v31(v20, 1, v14) == 1)
      {
        v32 = v66;
        v33 = v66;
        sub_100004F84(v26, &qword_100AD1420);
        if (v31(&v20[v30], 1, v14) == 1)
        {
          sub_100004F84(v20, &qword_100AD1420);
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000082B4(v20, v24, &qword_100AD1420);
        v44 = v31(&v20[v30], 1, v14);
        v32 = v66;
        if (v44 != 1)
        {
          v46 = v65;
          (*(v15 + 32))(v65, &v20[v30], v14);
          sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
          v43 = v32;
          v47 = dispatch thunk of static Equatable.== infix(_:_:)();
          v48 = *(v15 + 8);
          v48(v46, v14);
          sub_100004F84(v26, &qword_100AD1420);
          v48(v24, v14);
          v32 = v66;
          sub_100004F84(v20, &qword_100AD1420);
          if (v47)
          {
LABEL_19:
            v49 = v67;
            [*&v67[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView] setImage:v32];
            v50 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
            {
              v51 = v73;
              v52 = v74;
              v53 = v72;
              if (v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 5u && v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] != 6)
              {
                v54 = 1;
LABEL_26:

                v43 = v67;

                (*(v53 + 16))(v52, v71, v51);
                (*(v53 + 56))(v52, 0, 1, v51);
                if (v54)
                {
LABEL_27:
                  swift_beginAccess();
                  v55 = swift_unknownObjectWeakLoadStrong();
                  if (v55)
                  {
                    v56 = v55;
                    sub_1001F7708(0);
                  }

                  else
                  {
                  }

                  goto LABEL_35;
                }

                v57 = v70;
                sub_1000082B4(v52, v70, &unk_100AD4790);
                if ((*(v53 + 48))(v57, 1, v51) == 1)
                {
                  sub_100004F84(v57, &unk_100AD4790);
                }

                else
                {
                  v58 = v68;
                  (*(v53 + 32))(v68, v57, v51);
                  v59 = v69;
                  static Date.now.getter();
                  Date.timeIntervalSince(_:)();
                  v61 = v60;
                  v62 = *(v53 + 8);
                  v62(v59, v51);
                  v62(v58, v51);
                  if (v61 < 0.1)
                  {
                    goto LABEL_27;
                  }
                }

                v63 = objc_opt_self();
                aBlock[4] = sub_1001F80A0;
                aBlock[5] = v50;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100006C7C;
                aBlock[3] = &unk_100A61300;
                v64 = _Block_copy(aBlock);

                [v63 animateWithDuration:0x10000 delay:v64 options:0 animations:0.1 completion:0.0];

                _Block_release(v64);

LABEL_35:
                sub_100004F84(v52, &unk_100AD4790);

                goto LABEL_36;
              }
            }

            else
            {
              v51 = v73;
              v52 = v74;
              v53 = v72;
            }

            v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            goto LABEL_26;
          }

LABEL_37:
          return;
        }

        v45 = v66;
        sub_100004F84(v26, &qword_100AD1420);
        (*(v15 + 8))(v24, v14);
      }

      sub_100004F84(v20, &unk_100AEEE20);

      v43 = v32;
      goto LABEL_37;
    }
  }

  if (qword_100ACFAB0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000617C(v34, qword_100AD86C8);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "%@.getImage returned nil", v37, 0xCu);
    sub_100004F84(v38, &unk_100AD4BB0);
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    sub_1001F7708(1);
  }

  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
LABEL_36:
    v43[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
    goto LABEL_37;
  }
}

void sub_1001F76B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F7708(0);
  }
}

id sub_1001F7708(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0BE8 != -1)
    {
      swift_once();
    }

    v9 = sub_10000617C(v4, qword_100B312C8);
    (*(v5 + 16))(v7, v9, v4);
    v8 = UIColor.init(resource:)();
  }

  v10 = v8;
  [v2 setBackgroundColor:v8];

  v11 = *&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset];
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC7Journal5Asset_attachments);
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() == 1)
      {
        goto LABEL_9;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_9:
      v13 = 1;
      goto LABEL_12;
    }
  }

  v13 = 0;
LABEL_12:
  [v2 setOverrideUserInterfaceStyle:v13];
  [*&v2[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView] setHidden:(a1 & 1) == 0];
  if (a1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  [*&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel] setAlpha:v14];
  [*&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel] setAlpha:v14];
  return [*&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView] setAlpha:v14];
}

uint64_t sub_1001F7974()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for MotionActivityAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset;
  v10 = *&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset];
  if (!v10 || !*(v10 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_100004F84(v4, &qword_100AD8740);
  }

  sub_10025DF64(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100004F84(v4, &qword_100AD8740);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = MotionActivityAssetMetadata.localizedActivityName.getter();
  if (v12)
  {
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      goto LABEL_14;
    }
  }

  MotionActivityAssetMetadata.activityType.getter();
LABEL_14:

  v15 = *&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel];
  v16 = *&v0[v9];
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    sub_10020DB44();
    v20 = v19;

    if (v20)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v21 = v15;
  }

  [v15 setText:v16];

  v22 = *&v1[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel];
  v23 = String._bridgeToObjectiveC()();

  [v22 setText:v23];

  v24 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v24];

  return (*(v6 + 8))(v8, v5);
}