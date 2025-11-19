BOOL sub_1003F06F0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1003F07E8(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v3 = type metadata accessor for URL();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v83 = *(v5 - 8);
  v84 = v5;
  __chkstk_darwin(v5);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareableMusicItem();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReportableMusicItem();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Song();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v69 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v87 = *(v13 - 8);
  v88 = v13;
  __chkstk_darwin(v13);
  v68 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v67 - v16;
  v17 = _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin(v17);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v67 - v20;
  __chkstk_darwin(v21);
  v74 = &v67 - v22;
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  __chkstk_darwin(v29);
  v31 = &v67 - v30;
  __chkstk_darwin(v32);
  v34 = &v67 - v33;
  __chkstk_darwin(v35);
  v37 = (&v67 - v36);
  v38 = sub_10010FC20(&qword_10118E078);
  __chkstk_darwin(v38 - 8);
  v40 = &v67 - v39;
  v42 = *(v41 + 56);
  sub_1003F2650(a1, &v67 - v39, _s23AppSheetPageDestinationOMa);
  sub_1003F2650(v89, &v40[v42], _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1003F2650(v40, v31, _s23AppSheetPageDestinationOMa);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v87 + 8))(v31, v88);
          goto LABEL_36;
        }

        v51 = v87;
        v50 = v88;
        v52 = v68;
        (*(v87 + 32))(v68, &v40[v42], v88);
        v48 = static Playlist.== infix(_:_:)();
        v53 = *(v51 + 8);
        v53(v52, v50);
        v54 = v31;
        v55 = v50;
      }

      else
      {
        sub_1003F2650(v40, v28, _s23AppSheetPageDestinationOMa);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          (*(v77 + 8))(v28, v78);
          goto LABEL_36;
        }

        v61 = v77;
        v60 = v78;
        v62 = v69;
        (*(v77 + 32))(v69, &v40[v42], v78);
        v48 = static Song.== infix(_:_:)();
        v53 = *(v61 + 8);
        v53(v62, v60);
        v54 = v28;
        v55 = v60;
      }

      v53(v54, v55);
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1003F2650(v40, v37, _s23AppSheetPageDestinationOMa);
      v44 = *v37;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_36:
        sub_1000095E8(v40, &qword_10118E078);
        v48 = 0;
        return v48 & 1;
      }

      v48 = sub_10047C350(v44, *&v40[v42]);

      goto LABEL_27;
    }

    sub_1003F2650(v40, v34, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v87;
      v56 = v88;
      v58 = v67;
      (*(v87 + 32))(v67, &v40[v42], v88);
      v59 = static Playlist.== infix(_:_:)();
      goto LABEL_25;
    }

    v65 = v87;
    v64 = v88;
LABEL_35:
    (*(v65 + 8))(v34, v64);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v34 = v75;
      sub_1003F2650(v40, v75, _s23AppSheetPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v57 = v83;
        v56 = v84;
        v58 = v72;
        (*(v83 + 32))(v72, &v40[v42], v84);
        v59 = static MusicAppDestination.SharePageDescriptor.== infix(_:_:)();
        goto LABEL_25;
      }

      v65 = v83;
      v64 = v84;
      goto LABEL_35;
    }

    v34 = v76;
    sub_1003F2650(v40, v76, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v65 = v85;
      v64 = v86;
      goto LABEL_35;
    }

    v57 = v85;
    v56 = v86;
    v58 = v73;
    (*(v85 + 32))(v73, &v40[v42], v86);
    v59 = static URL.== infix(_:_:)();
LABEL_25:
    v48 = v59;
    v63 = *(v57 + 8);
    v63(v58, v56);
    v63(v34, v56);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v34 = v74;
    sub_1003F2650(v40, v74, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v65 = v81;
      v64 = v82;
      goto LABEL_35;
    }

    v57 = v81;
    v56 = v82;
    v58 = v71;
    (*(v81 + 32))(v71, &v40[v42], v82);
    v59 = static ShareableMusicItem.== infix(_:_:)();
    goto LABEL_25;
  }

  sub_1003F2650(v40, v25, _s23AppSheetPageDestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v79 + 8))(v25, v80);
    goto LABEL_36;
  }

  v46 = v79;
  v45 = v80;
  v47 = v70;
  (*(v79 + 32))(v70, &v40[v42], v80);
  v48 = static ReportableMusicItem.== infix(_:_:)();
  v49 = *(v46 + 8);
  v49(v47, v45);
  v49(v25, v45);
LABEL_27:
  sub_1003F26B8(v40, _s23AppSheetPageDestinationOMa);
  return v48 & 1;
}

uint64_t sub_1003F11E0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v179 = a1;
  v180 = a2;
  v2 = type metadata accessor for Composer();
  v171 = *(v2 - 8);
  v172 = v2;
  __chkstk_darwin(v2);
  v157 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artist();
  v169 = *(v4 - 8);
  v170 = v4;
  __chkstk_darwin(v4);
  v156 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Folder();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v153 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v165 = *(v8 - 8);
  v166 = v8;
  __chkstk_darwin(v8);
  v152 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for URL();
  v176 = *(v174 - 8);
  __chkstk_darwin(v174);
  v154 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v155 = &v146 - v12;
  __chkstk_darwin(v13);
  v147 = &v146 - v14;
  v149 = sub_10010FC20(&qword_10118CA90);
  __chkstk_darwin(v149);
  v150 = &v146 - v15;
  v16 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v16 - 8);
  v148 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v159 = &v146 - v19;
  __chkstk_darwin(v20);
  v160 = &v146 - v21;
  v173 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v175 = *(v173 - 8);
  __chkstk_darwin(v173);
  v161 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v24 = *(v23 - 8);
  v177 = v23;
  v178 = v24;
  __chkstk_darwin(v23);
  v151 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v158 = &v146 - v27;
  v28 = _s18AppPageDestinationOMa(0);
  __chkstk_darwin(v28);
  v164 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v163 = &v146 - v31;
  __chkstk_darwin(v32);
  v162 = &v146 - v33;
  __chkstk_darwin(v34);
  v36 = &v146 - v35;
  __chkstk_darwin(v37);
  v39 = &v146 - v38;
  __chkstk_darwin(v40);
  v42 = &v146 - v41;
  __chkstk_darwin(v43);
  v45 = &v146 - v44;
  __chkstk_darwin(v46);
  v48 = &v146 - v47;
  v49 = sub_10010FC20(&qword_10118E028);
  __chkstk_darwin(v49 - 8);
  v51 = &v146 - v50;
  v53 = &v146 + *(v52 + 56) - v50;
  sub_1003F2650(v179, &v146 - v50, _s18AppPageDestinationOMa);
  v54 = v53;
  sub_1003F2650(v180, v53, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v107 = v164;
        sub_1003F2650(v51, v164, _s18AppPageDestinationOMa);
        v109 = *v107;
        v108 = *(v107 + 1);
        v110 = *(sub_10010FC20(&qword_10118E030) + 48);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          (*(v176 + 8))(&v107[v110], v174);

          goto LABEL_39;
        }

        v180 = v51;
        v112 = *v54;
        v111 = v54[1];
        v113 = *(v176 + 32);
        v114 = &v107[v110];
        v115 = v155;
        v116 = v174;
        v113(v155, v114, v174);
        v117 = v54 + v110;
        v118 = v154;
        v113(v154, v117, v116);
        if (v109 == v112 && v108 == v111)
        {
        }

        else
        {
          v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v130 & 1) == 0)
          {
            v133 = *(v176 + 8);
            v133(v118, v116);
            v133(v115, v116);
            goto LABEL_55;
          }
        }

        v131 = v115;
        v62 = static URL.== infix(_:_:)();
        v132 = *(v176 + 8);
        v132(v118, v116);
        v132(v131, v116);
        sub_1003F26B8(v180, _s18AppPageDestinationOMa);
        return v62 & 1;
      }

      v68 = v163;
      sub_1003F2650(v51, v163, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        (*(v171 + 8))(v68, v172);
        goto LABEL_39;
      }

      v70 = v171;
      v69 = v172;
      v71 = v157;
      (*(v171 + 32))(v157, v54, v172);
      v62 = static Composer.== infix(_:_:)();
      v72 = *(v70 + 8);
      v72(v71, v69);
      v72(v68, v69);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1003F2650(v51, v36, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v167 + 8))(v36, v168);
        goto LABEL_39;
      }

      v60 = v167;
      v59 = v168;
      v61 = v153;
      (*(v167 + 32))(v153, v53, v168);
      v62 = static Playlist.Folder.== infix(_:_:)();
      v63 = *(v60 + 8);
      v63(v61, v59);
      v63(v36, v59);
    }

    else
    {
      v98 = v162;
      sub_1003F2650(v51, v162, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v169 + 8))(v98, v170);
        goto LABEL_39;
      }

      v100 = v169;
      v99 = v170;
      v101 = v156;
      (*(v169 + 32))(v156, v53, v170);
      v62 = static Artist.== infix(_:_:)();
      v102 = *(v100 + 8);
      v102(v101, v99);
      v102(v98, v99);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1003F2650(v51, v48, _s18AppPageDestinationOMa);
        v56 = *(sub_10010FC20(&qword_10118E040) + 48);
        v58 = *&v48[v56];
        v57 = *&v48[v56 + 8];
        if (swift_getEnumCaseMultiPayload())
        {

          (*(v178 + 8))(v48, v177);
LABEL_39:
          sub_1000095E8(v51, &qword_10118E028);
LABEL_40:
          v62 = 0;
          return v62 & 1;
        }

        v120 = v51;
        v121 = *(v54 + v56);
        v122 = *(v54 + v56 + 8);
        v180 = v121;
        v123 = v178;
        v124 = v158;
        v125 = v54;
        v126 = v177;
        (*(v178 + 32))(v158, v125, v177);
        v127 = static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
        v128 = *(v123 + 8);
        v128(v48, v126);
        if (v127)
        {
          if (v57)
          {
            v129 = v158;
            if (v122)
            {
              if (v58 == v180 && v57 == v122)
              {

                v128(v129, v126);
LABEL_73:
                v141 = v120;
LABEL_76:
                sub_1003F26B8(v141, _s18AppPageDestinationOMa);
                v62 = 1;
                return v62 & 1;
              }

              v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v128(v129, v126);
              if (v140)
              {
                goto LABEL_73;
              }
            }

            else
            {

              v128(v129, v126);
            }

LABEL_53:
            sub_1003F26B8(v120, _s18AppPageDestinationOMa);
            goto LABEL_40;
          }

          v128(v158, v126);
          if (!v122)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v128(v124, v126);
        }

        goto LABEL_53;
      }

      v180 = v51;
      sub_1003F2650(v51, v45, _s18AppPageDestinationOMa);
      v73 = sub_10010FC20(&qword_10118E038);
      v74 = *(v73 + 48);
      v76 = *&v45[v74];
      v75 = *&v45[v74 + 8];
      v77 = *(v73 + 64);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1000095E8(&v45[v77], &qword_101183A20);

        (*(v175 + 8))(v45, v173);
        v51 = v180;
        goto LABEL_39;
      }

      v78 = *(v54 + v74);
      v79 = *(v54 + v74 + 8);
      v179 = v78;
      v80 = v175;
      v81 = v161;
      v82 = v173;
      (*(v175 + 32))(v161, v54, v173);
      v83 = v160;
      sub_100027998(&v45[v77], v160);
      v84 = v54 + v77;
      v85 = v159;
      sub_100027998(v84, v159);
      v86 = static MusicAppDestination.PlaylistDescriptor.== infix(_:_:)();
      v88 = *(v80 + 8);
      v87 = v80 + 8;
      v89 = v45;
      v90 = v82;
      v91 = v88;
      v88(v89, v90);
      if (v86)
      {
        v92 = v90;
        v175 = v87;
        if (v75)
        {
          v93 = v174;
          v94 = v150;
          v95 = v160;
          v96 = v159;
          if (v79)
          {
            v97 = v180;
            if (v76 == v179 && v75 == v79)
            {

              goto LABEL_64;
            }

            v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v134)
            {
LABEL_64:
              v179 = v91;
              v135 = *(v149 + 48);
              sub_1000089F8(v95, v94, &qword_101183A20);
              sub_1000089F8(v96, v94 + v135, &qword_101183A20);
              v136 = *(v176 + 48);
              if (v136(v94, 1, v93) == 1)
              {
                sub_1000095E8(v96, &qword_101183A20);
                sub_1000095E8(v95, &qword_101183A20);
                v179(v161, v92);
                v137 = v136(v94 + v135, 1, v93);
                v138 = v180;
                if (v137 == 1)
                {
                  sub_1000095E8(v94, &qword_101183A20);
LABEL_75:
                  v141 = v138;
                  goto LABEL_76;
                }
              }

              else
              {
                v139 = v148;
                sub_1000089F8(v94, v148, &qword_101183A20);
                if (v136(v94 + v135, 1, v93) != 1)
                {
                  v142 = v176;
                  v143 = v94 + v135;
                  v144 = v147;
                  (*(v176 + 32))(v147, v143, v93);
                  sub_1000340AC(&qword_101199D20, &type metadata accessor for URL);
                  LODWORD(v178) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v145 = *(v142 + 8);
                  v145(v144, v93);
                  sub_1000095E8(v96, &qword_101183A20);
                  sub_1000095E8(v95, &qword_101183A20);
                  v179(v161, v92);
                  v145(v139, v93);
                  sub_1000095E8(v94, &qword_101183A20);
                  v138 = v180;
                  if (v178)
                  {
                    goto LABEL_75;
                  }

LABEL_70:
                  sub_1003F26B8(v138, _s18AppPageDestinationOMa);
                  goto LABEL_40;
                }

                sub_1000095E8(v96, &qword_101183A20);
                sub_1000095E8(v95, &qword_101183A20);
                v179(v161, v92);
                (*(v176 + 8))(v139, v93);
                v138 = v180;
              }

              sub_1000095E8(v94, &qword_10118CA90);
              goto LABEL_70;
            }

LABEL_62:
            sub_1000095E8(v96, &qword_101183A20);
            sub_1000095E8(v95, &qword_101183A20);
            v91(v161, v92);
            sub_1003F26B8(v97, _s18AppPageDestinationOMa);
            goto LABEL_40;
          }

          v97 = v180;
        }

        else
        {
          v97 = v180;
          v93 = v174;
          v94 = v150;
          v95 = v160;
          v96 = v159;
          if (!v79)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_62;
      }

      sub_1000095E8(v85, &qword_101183A20);
      sub_1000095E8(v83, &qword_101183A20);
      v91(v81, v90);
LABEL_55:
      sub_1003F26B8(v180, _s18AppPageDestinationOMa);
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1003F2650(v51, v42, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v178 + 8))(v42, v177);
        goto LABEL_39;
      }

      v65 = v177;
      v64 = v178;
      v66 = v151;
      (*(v178 + 32))(v151, v53, v177);
      v62 = static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
      v67 = *(v64 + 8);
      v67(v66, v65);
      v67(v42, v65);
    }

    else
    {
      sub_1003F2650(v51, v39, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v165 + 8))(v39, v166);
        goto LABEL_39;
      }

      v104 = v165;
      v103 = v166;
      v105 = v152;
      (*(v165 + 32))(v152, v53, v166);
      v62 = static Playlist.== infix(_:_:)();
      v106 = *(v104 + 8);
      v106(v105, v103);
      v106(v39, v103);
    }
  }

  sub_1003F26B8(v51, _s18AppPageDestinationOMa);
  return v62 & 1;
}

uint64_t sub_1003F2650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F26B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F2718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003F2780(void *a1, uint64_t a2, uint64_t a3)
{
  if (!MusicStackAuthority.navigationControllerDelegate.getter())
  {
    return;
  }

  _s17NavigationHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 16);

    v8 = v6(v7);

    if (v8)
    {
      v9 = [v8 viewControllers];

      sub_100009F78(0, &qword_101183D40);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v10 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_5:
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_6;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
LABEL_6:
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v12)
      {
        __break(1u);
      }

      else if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v10 + 8 * v13 + 32);
LABEL_11:
          v15 = v14;

          sub_100009F78(0, &qword_101184710);
          v16 = [objc_allocWithZone(UIZoomTransitionOptions) init];
          UIZoomTransitionOptions.alignmentRectProvider.setter();
          v17 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1000160F8(a3, v22);
          v19 = swift_allocObject();
          *(v19 + 16) = v17;
          v20 = v22[1];
          *(v19 + 24) = v22[0];
          *(v19 + 40) = v20;
          *(v19 + 56) = v23;
          *(v19 + 64) = v18;

          v21 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

          [a1 setPreferredTransition:v21];
          swift_unknownObjectRelease();

          return;
        }

        __break(1u);
        return;
      }

      v14 = sub_10004056C(v13, v10);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:

  swift_unknownObjectRelease();
}

uint64_t sub_1003F2A88(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_101194980);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v17 = URLComponents.queryItemsDictionary.getter();
    if (v17)
    {
      v18 = v17;
      if (*(v17 + 16))
      {
        v19 = sub_100019C10(29556, 0xE200000000000000);
        if (v20)
        {
          v21 = (*(v18 + 56) + 16 * v19);
          v41 = a3;
          v22 = *v21;
          v23 = v21[1];

          v42 = 0;
          sub_1003F06F0(v22, v23);

          (*(v7 + 8))(v41, v6);
          (*(v14 + 8))(v16, v13);
          return a1;
        }
      }
    }

    (*(v14 + 8))(v16, v13);
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000060E4(v24, qword_1012194A8);
  (*(v7 + 16))(v9, a3, v6);
  v25 = Logger.logObject.getter();
  v26 = a3;
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = a1;
    v30 = v29;
    v42 = v29;
    *v28 = 136446210;
    sub_1000340AC(&qword_1011A4850, &type metadata accessor for URL);
    v41 = v26;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v40 = a2;
    v34 = *(v7 + 8);
    v34(v9, v6);
    v35 = sub_1000105AC(v31, v33, &v42);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v27, "Failed to retrieve start time from lyrics snippet url=%{public}s", v28, 0xCu);
    sub_10000959C(v30);
    a1 = v39;

    v34(v41, v6);
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v26, v6);
    v36(v9, v6);
  }

  return a1;
}

char *sub_1003F2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v437 = a3;
  v425 = a2;
  v436 = a1;
  v3 = type metadata accessor for URL();
  v430 = *(v3 - 8);
  v431 = v3;
  __chkstk_darwin(v3);
  v404 = &v373 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v421 = &v373 - v6;
  v405 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v405);
  v408 = (&v373 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v409 = type metadata accessor for Playlist.Folder();
  v407 = *(v409 - 8);
  __chkstk_darwin(v409);
  v406 = &v373 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = _s6AlbumsV5ScopeOMa(0);
  v417 = *(v428 - 8);
  __chkstk_darwin(v428);
  v402 = &v373 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for Composer();
  v401 = *(v403 - 8);
  __chkstk_darwin(v403);
  v400 = &v373 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = type metadata accessor for Artist();
  v398 = *(v399 - 8);
  __chkstk_darwin(v399);
  v396 = &v373 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v397 = &v373 - v13;
  v414 = type metadata accessor for Playlist();
  v413 = *(v414 - 8);
  __chkstk_darwin(v414);
  v411 = &v373 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v419 = &v373 - v16;
  __chkstk_darwin(v17);
  v429 = &v373 - v18;
  v416 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v415 = *(v416 - 8);
  __chkstk_darwin(v416);
  v374 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v376 = &v373 - v21;
  __chkstk_darwin(v22);
  v410 = (&v373 - v23);
  __chkstk_darwin(v24);
  v422 = &v373 - v25;
  v379 = type metadata accessor for Song();
  v378 = *(v379 - 8);
  __chkstk_darwin(v379);
  v377 = &v373 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v384 = &v373 - v28;
  __chkstk_darwin(v29);
  v385 = &v373 - v30;
  v31 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v31 - 8);
  v382 = &v373 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v383 = (&v373 - v34);
  v35 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v35 - 8);
  v375 = &v373 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v386 = &v373 - v38;
  __chkstk_darwin(v39);
  v420 = &v373 - v40;
  __chkstk_darwin(v41);
  v432 = &v373 - v42;
  __chkstk_darwin(v43);
  v435 = &v373 - v44;
  __chkstk_darwin(v45);
  v395 = &v373 - v46;
  __chkstk_darwin(v47);
  v381 = &v373 - v48;
  v433 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v433);
  v380 = &v373 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v426 = &v373 - v51;
  __chkstk_darwin(v52);
  v427 = &v373 - v53;
  __chkstk_darwin(v54);
  v392 = &v373 - v55;
  __chkstk_darwin(v56);
  v393 = &v373 - v57;
  __chkstk_darwin(v58);
  v394 = &v373 - v59;
  v412 = type metadata accessor for Album();
  v418 = *(v412 - 8);
  __chkstk_darwin(v412);
  v61 = &v373 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v387 = &v373 - v63;
  __chkstk_darwin(v64);
  v391 = &v373 - v65;
  __chkstk_darwin(v66);
  v390 = &v373 - v67;
  __chkstk_darwin(v68);
  v70 = &v373 - v69;
  __chkstk_darwin(v71);
  v73 = &v373 - v72;
  __chkstk_darwin(v74);
  v389 = &v373 - v75;
  __chkstk_darwin(v76);
  v388 = &v373 - v77;
  v78 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v434 = *(v78 - 8);
  __chkstk_darwin(v78);
  v80 = &v373 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v83 = (&v373 - v82);
  __chkstk_darwin(v84);
  v423 = &v373 - v85;
  __chkstk_darwin(v86);
  v373 = &v373 - v87;
  __chkstk_darwin(v88);
  v90 = &v373 - v89;
  __chkstk_darwin(v91);
  v93 = (&v373 - v92);
  __chkstk_darwin(v94);
  v424 = &v373 - v95;
  v96 = _s18AppPageDestinationOMa(0);
  __chkstk_darwin(v96);
  v98 = (&v373 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003F2650(v436, v98, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v216 = *v98;
        v217 = v98[1];
        v218 = sub_10010FC20(&qword_10118E030);
        v219 = v430;
        v220 = v98 + *(v218 + 48);
        v221 = v421;
        v222 = v431;
        (*(v430 + 32))(v421, v220, v431);
        v223 = *(v219 + 16);
        v224 = v404;
        v223(v404, v221, v222);
        v225 = sub_1003F2A88(v216, v217, v224);
        v227 = v226;
        v229 = v228;
        v231 = v230;
        if (qword_10117FC68 != -1)
        {
          swift_once();
        }

        v232 = type metadata accessor for Logger();
        sub_1000060E4(v232, qword_1012194A8);

        v233 = Logger.logObject.getter();
        v234 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v233, v234))
        {
          v235 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          *&v438 = v236;
          *v235 = 136446210;
          *&v441 = v225;
          *(&v441 + 1) = v227;
          *&v442 = v229;
          BYTE8(v442) = v231 & 1;

          v237 = String.init<A>(describing:)();
          v239 = sub_1000105AC(v237, v238, &v438);

          *(v235 + 4) = v239;
          _os_log_impl(&_mh_execute_header, v233, v234, "Initializing container detail view controller with lyrics snippet data=%{public}s", v235, 0xCu);
          sub_10000959C(v236);
        }

        v240 = v435;
        MusicAppDestinationContext.originalURL.getter();
        v198 = sub_1006A9F64(v225, v227, v229, v231 & 1, v240);
        (*(v430 + 8))(v421, v431);
        goto LABEL_29;
      }

      v160 = v401;
      v161 = v400;
      v162 = v403;
      (*(v401 + 32))(v400, v98, v403);
      v163 = v402;
      (*(v160 + 16))(v402, v161, v162);
      swift_storeEnumTagMultiPayload();
      v164 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController());
      v165 = sub_1006E7454(v163, 0);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v119 = v407;
        v120 = v406;
        v121 = v409;
        (*(v407 + 32))(v406, v98, v409);
        v122 = v405;
        v123 = *(v405 + 20);
        v124 = v408;
        (*(v119 + 16))(v408 + v123, v120, v121);
        (*(v119 + 56))(v124 + v123, 0, 1, v121);
        if (qword_10117F5D8 != -1)
        {
          swift_once();
        }

        *v124 = qword_101218AB8;
        *(v124 + *(v122 + 24)) = 0;
        v125 = objc_opt_self();

        v126 = [v125 currentTraitCollection];
        v127 = [v126 horizontalSizeClass];

        v128 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
        v129 = sub_10037E11C(v124, 0, v127 != 2);
        (*(v119 + 8))(v120, v121);
        goto LABEL_12;
      }

      v160 = v398;
      v161 = v397;
      v162 = v399;
      (*(v398 + 32))(v397, v98, v399);
      v196 = v396;
      (*(v160 + 16))(v396, v161, v162);
      v197 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v165 = sub_1001FAE8C(v196, 0);
    }

    v198 = v165;
    (*(v160 + 8))(v161, v162);
LABEL_29:
    v215 = v198;
    LODWORD(v436) = 0;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v199 = v413;
      v200 = v429;
      v201 = v414;
      (*(v413 + 32))(v429, v98, v414);
      v202 = *(v199 + 16);
      v203 = v419;
      v202(v419, v200, v201);
      v204 = sub_10010FC20(&qword_10118A430);
      v205 = *(v204 + 48);
      v207 = v427;
      v206 = v428;
      v427[*(v204 + 64)] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v417 + 56))(v207, 0, 1, v206);
      *(v207 + v205) = 0;
      swift_storeEnumTagMultiPayload();
      v208 = v435;
      (*(v430 + 56))(v435, 1, 1, v431);
      v209 = v411;
      v202(v411, v203, v201);
      v210 = v426;
      sub_1003F2650(v207, v426, type metadata accessor for ContainerDetail.Source);
      v211 = v432;
      sub_1000089F8(v208, v432, &qword_101183A20);
      v212 = sub_100866288(v209, v210, 0, 0, v211, 0);
      v213 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v159 = sub_100137F48(v212, v213);
      sub_1000095E8(v208, &qword_101183A20);
      sub_1003F26B8(v207, type metadata accessor for ContainerDetail.Source);
      v214 = *(v199 + 8);
      LODWORD(v436) = 1;
      v214(v203, v201);
      v214(v429, v201);
      goto LABEL_23;
    }

    v131 = v434;
    v132 = v423;
    v133 = v78;
    (*(v434 + 4))(v423, v98, v78);
    v134 = *(v131 + 2);
    v134(v83, v132, v78);
    v135 = (*(v131 + 11))(v83, v78);
    if (v135 == enum case for MusicAppDestination.AlbumDescriptor.album(_:))
    {
      (*(v131 + 12))(v83, v78);
      v136 = v418;
      v137 = v390;
      v138 = v412;
      (*(v418 + 32))(v390, v83, v412);
      v139 = *(v136 + 16);
      v140 = v391;
      v139(v391, v137, v138);
      v141 = sub_10010FC20(&qword_10118A430);
      v142 = *(v141 + 48);
      v143 = *(v141 + 64);
      v145 = v427;
      v144 = v428;
      LODWORD(v436) = 1;
      v427[v143] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v417 + 56))(v145, 0, 1, v144);
      *(v145 + v142) = 0;
      swift_storeEnumTagMultiPayload();
      v146 = v435;
      MusicAppDestinationContext.originalURL.getter();
      v147 = v387;
      v139(v387, v140, v138);
      v148 = v426;
      sub_1003F2650(v145, v426, type metadata accessor for ContainerDetail.Source);
      v149 = v146;
      v150 = v432;
      sub_1000089F8(v149, v432, &qword_101183A20);
      v139(v61, v147, v138);
      v151 = v380;
      sub_1003F2650(v148, v380, type metadata accessor for ContainerDetail.Source);
      v152 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      v153 = v382;
      (*(*(v152 - 8) + 56))(v382, 1, 1, v152);
      v154 = v386;
      sub_1000089F8(v150, v386, &qword_101183A20);
      v155 = sub_1004E34D0(v61, v151, v153, v154);
      sub_1000095E8(v150, &qword_101183A20);
      sub_1003F26B8(v148, type metadata accessor for ContainerDetail.Source);
      v156 = *(v418 + 8);
      v157 = v412;
      v156(v387, v412);
      v158 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v159 = sub_100137F64(v155, v158);
      sub_1000095E8(v435, &qword_101183A20);
      sub_1003F26B8(v145, type metadata accessor for ContainerDetail.Source);
      v156(v391, v157);
      v156(v390, v157);
      (*(v434 + 1))(v423, v133);
      goto LABEL_23;
    }

    if (v135 == enum case for MusicAppDestination.AlbumDescriptor.albumID(_:))
    {
      v251 = v78;
      (*(v131 + 12))(v83, v78);
      v253 = *v83;
      v252 = v83[1];
      v254 = sub_10010FC20(&qword_10118A430);
      v255 = *(v254 + 48);
      v256 = *(v254 + 64);
      v258 = v427;
      v257 = v428;
      LODWORD(v436) = 1;
      v427[v256] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v417 + 56))(v258, 0, 1, v257);
      *(v258 + v255) = 0;
      swift_storeEnumTagMultiPayload();
      v259 = v131;
      v260 = v435;
      MusicAppDestinationContext.originalURL.getter();
      v261 = v426;
      sub_1003F2650(v258, v426, type metadata accessor for ContainerDetail.Source);
      v262 = v432;
      sub_1000089F8(v260, v432, &qword_101183A20);
      v263 = sub_1004E4D90(v253, v252, v261, 0, 0, v262);
      v264 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v194 = sub_100137F64(v263, v264);
      sub_1000095E8(v260, &qword_101183A20);
      sub_1003F26B8(v258, type metadata accessor for ContainerDetail.Source);
      (*(v259 + 1))(v423, v251);
      goto LABEL_35;
    }

    v287 = v78;
    if (v135 == enum case for MusicAppDestination.AlbumDescriptor.song(_:))
    {
      (*(v131 + 12))(v83, v78);
      v288 = v378;
      v289 = *(v378 + 32);
      v290 = v385;
      v431 = v287;
      v291 = v379;
      v289(v385, v83, v379);
      v292 = *(v288 + 16);
      v293 = v384;
      v292(v384, v290, v291);
      v294 = sub_10010FC20(&qword_10118A430);
      v295 = *(v294 + 48);
      v296 = *(v294 + 64);
      v298 = v427;
      v297 = v428;
      LODWORD(v436) = 1;
      v427[v296] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v417 + 56))(v298, 0, 1, v297);
      *(v298 + v295) = 0;
      swift_storeEnumTagMultiPayload();
      v299 = v435;
      MusicAppDestinationContext.originalURL.getter();
      v300 = v377;
      v292(v377, v293, v291);
      v301 = v426;
      sub_1003F2650(v298, v426, type metadata accessor for ContainerDetail.Source);
      v302 = v432;
      sub_1000089F8(v299, v432, &qword_101183A20);
      v303 = sub_1004E484C(v300, v301, v302);
      v304 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v159 = sub_100137F64(v303, v304);
      sub_1000095E8(v299, &qword_101183A20);
      sub_1003F26B8(v298, type metadata accessor for ContainerDetail.Source);
      v305 = *(v288 + 8);
      v305(v384, v291);
      v305(v385, v291);
      (*(v131 + 1))(v423, v431);
      goto LABEL_23;
    }

    if (v135 != enum case for MusicAppDestination.AlbumDescriptor.songID(_:))
    {
      if (qword_10117FC68 != -1)
      {
        swift_once();
      }

      v361 = type metadata accessor for Logger();
      sub_1000060E4(v361, qword_1012194A8);
      v362 = v423;
      v134(v80, v423, v78);
      v363 = Logger.logObject.getter();
      v364 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v363, v364))
      {
        v365 = swift_slowAlloc();
        v436 = swift_slowAlloc();
        *&v441 = v436;
        *v365 = 136446210;
        v134(v373, v80, v78);
        v366 = String.init<A>(describing:)();
        v368 = v367;
        v369 = *(v131 + 1);
        v369(v80, v78);
        v370 = sub_1000105AC(v366, v368, &v441);

        *(v365 + 4) = v370;
        _os_log_impl(&_mh_execute_header, v363, v364, "Unable to navigate to library album: Unknown Descriptor=%{public}s", v365, 0xCu);
        sub_10000959C(v436);

        v362 = v423;
      }

      else
      {

        v369 = *(v131 + 1);
        v369(v80, v78);
      }

      v372 = [objc_allocWithZone(UIViewController) init];
      v369(v362, v78);
      v215 = v372;
      v369(v83, v78);
      goto LABEL_49;
    }

    (*(v131 + 12))(v83, v78);
    v335 = *v83;
    v336 = v83[1];
    v337 = sub_10010FC20(&qword_10118A430);
    v338 = *(v337 + 48);
    v339 = *(v337 + 64);
    v341 = v427;
    v340 = v428;
    LODWORD(v436) = 1;
    v427[v339] = 1;
    swift_storeEnumTagMultiPayload();
    (*(v417 + 56))(v341, 0, 1, v340);
    *(v341 + v338) = 0;
    swift_storeEnumTagMultiPayload();
    v342 = v131;
    v343 = v435;
    MusicAppDestinationContext.originalURL.getter();
    v344 = v426;
    sub_1003F2650(v341, v426, type metadata accessor for ContainerDetail.Source);
    v345 = v432;
    sub_1000089F8(v343, v432, &qword_101183A20);
    v346 = sub_1004E5248(v335, v336, v344, v345);
    v347 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v194 = sub_100137F64(v346, v347);
    sub_1000095E8(v343, &qword_101183A20);
    sub_1003F26B8(v341, type metadata accessor for ContainerDetail.Source);
    (*(v342 + 1))(v423, v287);
LABEL_35:
    v215 = v194;
    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    v100 = (v98 + *(sub_10010FC20(&qword_10118E040) + 48));
    v102 = *v100;
    v101 = v100[1];
    v430 = v102;
    v431 = v101;
    v103 = v434;
    v104 = v424;
    (*(v434 + 4))(v424, v98, v78);
    v105 = *(v103 + 2);
    v105(v93, v104, v78);
    v106 = (*(v103 + 11))(v93, v78);
    if (v106 == enum case for MusicAppDestination.AlbumDescriptor.album(_:))
    {
      (*(v103 + 12))(v93, v78);
      v107 = v418;
      v108 = v388;
      v109 = v412;
      (*(v418 + 32))(v388, v93, v412);
      v110 = *(v107 + 16);
      v111 = v389;
      v110(v389, v108, v109);
      v112 = v394;
      *v394 = 0;
      swift_storeEnumTagMultiPayload();
      v113 = v381;
      MusicAppDestinationContext.originalURL.getter();
      v110(v73, v111, v109);
      v114 = v112;
      v115 = v393;
      sub_1003F2650(v114, v393, type metadata accessor for ContainerDetail.Source);
      sub_1000089F8(v113, v395, &qword_101183A20);
      v110(v70, v73, v109);
      sub_1003F2650(v115, v392, type metadata accessor for ContainerDetail.Source);
      v116 = v431;
      if (v431)
      {
        v117 = v383;
        *v383 = v430;
        *(v117 + 8) = v116;
        v118 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
      }

      else
      {
        v317 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        v117 = v383;
        (*(*(v317 - 8) + 56))(v383, 1, 1, v317);
      }

      v318 = v395;
      v319 = v435;
      sub_1000089F8(v395, v435, &qword_101183A20);
      v320 = sub_1004E34D0(v70, v392, v117, v319);
      sub_1000095E8(v318, &qword_101183A20);
      sub_1003F26B8(v393, type metadata accessor for ContainerDetail.Source);
      v321 = *(v418 + 8);
      v321(v73, v109);
      v322 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v323 = sub_100137F64(v320, v322);
      sub_1000095E8(v113, &qword_101183A20);
      sub_1003F26B8(v394, type metadata accessor for ContainerDetail.Source);
      v321(v389, v109);
      v321(v388, v109);
      (*(v434 + 1))(v424, v78);
      v130 = v323;
      goto LABEL_48;
    }

    v241 = v431;
    if (v106 == enum case for MusicAppDestination.AlbumDescriptor.albumID(_:))
    {
      v242 = v434;
      (*(v434 + 12))(v93, v78);
      v243 = v93[1];
      v429 = *v93;
      v244 = v427;
      *v427 = 0;
      LODWORD(v436) = 1;
      swift_storeEnumTagMultiPayload();
      v245 = v435;
      MusicAppDestinationContext.originalURL.getter();
      v246 = v426;
      sub_1003F2650(v244, v426, type metadata accessor for ContainerDetail.Source);
      v247 = v432;
      sub_1000089F8(v245, v432, &qword_101183A20);
      v248 = sub_1004E4D90(v429, v243, v246, v430, v241, v247);
      v249 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v194 = sub_100137F64(v248, v249);
      sub_1000095E8(v245, &qword_101183A20);
      v250 = v244;
LABEL_32:
      sub_1003F26B8(v250, type metadata accessor for ContainerDetail.Source);
      (*(v242 + 1))(v424, v78);
      goto LABEL_35;
    }

    v242 = v434;
    if (v106 != enum case for MusicAppDestination.AlbumDescriptor.song(_:))
    {
      v325 = enum case for MusicAppDestination.AlbumDescriptor.songID(_:);
      v326 = v106;

      if (v326 != v325)
      {
        if (qword_10117FC68 != -1)
        {
          swift_once();
        }

        v349 = type metadata accessor for Logger();
        sub_1000060E4(v349, qword_1012194A8);
        v105(v90, v424, v78);
        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v350, v351))
        {
          v352 = swift_slowAlloc();
          v436 = swift_slowAlloc();
          *&v441 = v436;
          *v352 = 136446210;
          v105(v373, v90, v78);
          v353 = String.init<A>(describing:)();
          v354 = v242;
          v355 = v353;
          v357 = v356;
          v358 = *(v354 + 1);
          v359 = v78;
          v358(v90, v78);
          v360 = sub_1000105AC(v355, v357, &v441);

          *(v352 + 4) = v360;
          _os_log_impl(&_mh_execute_header, v350, v351, "Unable to navigate to catalog album: Unknown Descriptor=%{public}s", v352, 0xCu);
          sub_10000959C(v436);
        }

        else
        {

          v358 = *(v242 + 1);
          v359 = v78;
          v358(v90, v78);
        }

        v371 = [objc_allocWithZone(UIViewController) init];
        v358(v424, v359);
        v215 = v371;
        v358(v93, v359);
        goto LABEL_49;
      }

      (*(v242 + 12))(v93, v78);
      v327 = *v93;
      v328 = v93[1];
      v329 = v427;
      *v427 = 0;
      LODWORD(v436) = 1;
      swift_storeEnumTagMultiPayload();
      v330 = v435;
      MusicAppDestinationContext.originalURL.getter();
      v331 = v426;
      sub_1003F2650(v329, v426, type metadata accessor for ContainerDetail.Source);
      v332 = v432;
      sub_1000089F8(v330, v432, &qword_101183A20);
      v333 = sub_1004E5248(v327, v328, v331, v332);
      v334 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v194 = sub_100137F64(v333, v334);
      sub_1000095E8(v330, &qword_101183A20);
      v250 = v329;
      goto LABEL_32;
    }

    (*(v242 + 12))(v93, v78);
    v273 = v378;
    v274 = v385;
    v275 = v93;
    v276 = v379;
    (*(v378 + 32))(v385, v275, v379);
    v277 = *(v273 + 16);
    v278 = v384;
    v277(v384, v274, v276);
    v279 = v427;
    *v427 = 0;
    LODWORD(v436) = 1;
    swift_storeEnumTagMultiPayload();
    v280 = v435;
    MusicAppDestinationContext.originalURL.getter();
    v281 = v377;
    v277(v377, v278, v276);
    v282 = v426;
    sub_1003F2650(v279, v426, type metadata accessor for ContainerDetail.Source);
    v283 = v432;
    sub_1000089F8(v280, v432, &qword_101183A20);
    v284 = sub_1004E484C(v281, v282, v283);
    v285 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v159 = sub_100137F64(v284, v285);
    sub_1000095E8(v280, &qword_101183A20);
    sub_1003F26B8(v279, type metadata accessor for ContainerDetail.Source);
    v286 = *(v273 + 8);
    v286(v384, v276);
    v286(v385, v276);
    (*(v434 + 1))(v424, v78);
LABEL_23:
    v215 = v159;
    goto LABEL_50;
  }

  v166 = sub_10010FC20(&qword_10118E038);
  v167 = (v98 + *(v166 + 48));
  v168 = *v167;
  v169 = v167[1];
  v170 = *(v166 + 64);
  v171 = v415;
  v172 = v422;
  v173 = v416;
  (*(v415 + 32))(v422, v98, v416);
  v174 = v98 + v170;
  v175 = v420;
  sub_100027998(v174, v420);
  v176 = *(v171 + 16);
  v177 = v410;
  v176(v410, v172, v173);
  v178 = (*(v171 + 88))(v177, v173);
  if (v178 == enum case for MusicAppDestination.PlaylistDescriptor.playlist(_:))
  {
    (*(v171 + 96))(v177, v173);
    v179 = v413;
    v180 = *(v413 + 32);
    v434 = v169;
    v431 = v168;
    v181 = v429;
    v182 = v414;
    v180();
    v183 = *(v179 + 16);
    v184 = v419;
    v185 = v181;
    v186 = v182;
    v183(v419, v185, v182);
    v187 = v427;
    *v427 = 0;
    LODWORD(v436) = 1;
    swift_storeEnumTagMultiPayload();
    v188 = v435;
    MusicAppDestinationContext.originalURL.getter();
    v189 = v411;
    v183(v411, v184, v186);
    v190 = v426;
    sub_1003F2650(v187, v426, type metadata accessor for ContainerDetail.Source);
    v191 = v432;
    sub_1000089F8(v188, v432, &qword_101183A20);
    v192 = sub_100866288(v189, v190, v431, v434, v191, 0);
    v193 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v194 = sub_100137F48(v192, v193);
    sub_1000095E8(v188, &qword_101183A20);
    sub_1003F26B8(v187, type metadata accessor for ContainerDetail.Source);
    v195 = *(v179 + 8);
    v195(v419, v186);
    v195(v429, v186);
    sub_1000095E8(v420, &qword_101183A20);
    (*(v415 + 8))(v422, v416);
    goto LABEL_35;
  }

  if (v178 != enum case for MusicAppDestination.PlaylistDescriptor.playlistID(_:))
  {

    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v306 = type metadata accessor for Logger();
    sub_1000060E4(v306, qword_1012194A8);
    v307 = v376;
    v176(v376, v172, v173);
    v308 = Logger.logObject.getter();
    v309 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v308, v309))
    {
      v310 = swift_slowAlloc();
      v311 = swift_slowAlloc();
      *&v441 = v311;
      *v310 = 136446210;
      v176(v374, v307, v173);
      v312 = String.init<A>(describing:)();
      v314 = v313;
      v315 = *(v171 + 8);
      v315(v307, v173);
      v316 = sub_1000105AC(v312, v314, &v441);

      *(v310 + 4) = v316;
      _os_log_impl(&_mh_execute_header, v308, v309, "Unable to navigate to playlist: Unknown Descriptor=%{public}s", v310, 0xCu);
      sub_10000959C(v311);
      v177 = v410;
    }

    else
    {

      v315 = *(v171 + 8);
      v315(v307, v173);
    }

    v348 = [objc_allocWithZone(UIViewController) init];
    sub_1000095E8(v420, &qword_101183A20);
    v315(v422, v173);
    v215 = v348;
    v315(v177, v173);
    goto LABEL_49;
  }

  (*(v171 + 96))(v177, v173);
  v265 = v177[1];
  v436 = *v177;
  v266 = v171;
  v267 = v435;
  sub_1000089F8(v175, v435, &qword_101183A20);
  v268 = v432;
  MusicAppDestinationContext.originalURL.getter();
  v269 = v386;
  sub_1000089F8(v267, v386, &qword_101183A20);
  v270 = v375;
  sub_1000089F8(v268, v375, &qword_101183A20);
  v271 = sub_100867410(v436, v265, v168, v169, v269, v270);
  v272 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v129 = sub_100137F48(v271, v272);
  sub_1000095E8(v268, &qword_101183A20);
  sub_1000095E8(v267, &qword_101183A20);
  sub_1000095E8(v420, &qword_101183A20);
  (*(v266 + 8))(v422, v416);
LABEL_12:
  v130 = v129;
LABEL_48:
  v215 = v130;
LABEL_49:
  LODWORD(v436) = 1;
LABEL_50:
  MusicAppDestinationContext.presentationSourceID.getter();
  if (*(&v439 + 1))
  {
    v441 = v438;
    v442 = v439;
    v443 = v440;
    if (v436)
    {
      sub_1003F2780(v215, v425, &v441);
    }

    sub_10001621C(&v441);
  }

  else
  {

    sub_1000095E8(&v438, &qword_10118E0A0);
  }

  return v215;
}

_BYTE *sub_1003F5E64@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1003F5EE4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003EF714(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003F6020()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100496E88(v0 + 16, v6, v2, v3, v4, v5, v0 + 96);
}

uint64_t sub_1003F60E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003EF300(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6198(uint64_t a1)
{
  v4 = *(type metadata accessor for ShareURLDescriptor() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003EDBD0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003F62B8(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicFriendsInviteDescriptor() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ED7B8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003F63D8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1003F64B8(uint64_t a1)
{
  v4 = *(type metadata accessor for SocialProfileDescriptor() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ED4A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003F65D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003ED1D0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003EC76C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6738()
{
  type metadata accessor for Playlist();

  return sub_100451F84();
}

uint64_t sub_1003F679C()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100452004(v3, v0 + v2, v4);
}

uint64_t sub_1003F682C(uint64_t a1)
{
  v4 = *(type metadata accessor for Actions.Collaborate.Context() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003EC444(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003F691C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003F696C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1003E9B2C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6A1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1003E4EF4(v0);
}

uint64_t sub_1003F6AB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1003E51DC(v0);
}

uint64_t sub_1003F6B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1003E4DE4(a1, v4, v5, v6);
}

void sub_1003F6C04()
{
  if (!qword_10118E208)
  {
    type metadata accessor for PlaylistAddableItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10118E208);
    }
  }
}

uint64_t _s16PlaybackControlsVMa()
{
  result = qword_10118E358;
  if (!qword_10118E358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003F6CEC()
{
  sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1003F6DF8();
    if (v1 <= 0x3F)
    {
      sub_100266B58(319, &qword_10118E378, &qword_10118E380, &unk_100ECA620, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1003F6EA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003F6DF8()
{
  if (!qword_10118E368)
  {
    sub_1003F6E54();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10118E368);
    }
  }
}

unint64_t sub_1003F6E54()
{
  result = qword_10118E370;
  if (!qword_10118E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E370);
  }

  return result;
}

void sub_1003F6EA8()
{
  if (!qword_10118E388)
  {
    type metadata accessor for RedactionReasons();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10118E388);
    }
  }
}

uint64_t sub_1003F6F1C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&qword_10118E3C0);
  __chkstk_darwin(v5);
  v7 = &v12[-v6];
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = sub_10010FC20(&qword_10118E3C8);
  sub_1003F7174(v0, &v7[*(v8 + 44)]);
  v9 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10027AC30(v9, 0);
    (*(v2 + 8))(v4, v1);
  }

  sub_100020674(&qword_10118E3D0, &qword_10118E3C0);
  View.playIntentButtonMaterial(_:)();
  return sub_1000095E8(v7, &qword_10118E3C0);
}

uint64_t sub_1003F7174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = _s16PlaybackControlsVMa();
  *&v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v64 = sub_10010FC20(&qword_10118E3D8);
  __chkstk_darwin(v64);
  v66 = (&v58 - v5);
  v65 = sub_10010FC20(&qword_10118E3E0);
  __chkstk_darwin(v65);
  v63 = &v58 - v6;
  v59 = sub_10010FC20(&qword_10118E3E8);
  __chkstk_darwin(v59);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v58 - v9;
  __chkstk_darwin(v10);
  v62 = &v58 - v11;
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for RedactionReasons();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  sub_10056CF14(&v58 - v20);
  static RedactionReasons.placeholder.getter();
  sub_1003F82B8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v16 + 8);
  v22(v18, v15);
  v22(v21, v15);
  if (v71 == v68)
  {
    v23 = type metadata accessor for RoundedRectangle();
    v24 = *(v23 + 20);
    v25 = enum case for RoundedCornerStyle.continuous(_:);
    v26 = type metadata accessor for RoundedCornerStyle();
    v27 = *(*(v26 - 8) + 104);
    v27(&v14[v24], v25, v26);
    __asm { FMOV            V0.2D, #10.0 }

    v58 = _Q0;
    *v14 = _Q0;
    v33 = objc_opt_self();
    v34 = [v33 tertiarySystemFillColor];
    v35 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v37 = sub_10010FC20(&qword_10118E408);
    v38 = &v14[*(v37 + 36)];
    *v38 = KeyPath;
    v38[1] = v35;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v39 = v59;
    v40 = &v14[*(v59 + 36)];
    v41 = v69;
    *v40 = v68;
    *(v40 + 1) = v41;
    *(v40 + 2) = v70;
    v42 = v62;
    v27(&v62[*(v23 + 20)], v25, v26);
    *v42 = v58;
    v43 = [v33 tertiarySystemFillColor];
    v44 = Color.init(_:)();
    v45 = swift_getKeyPath();
    v46 = (v42 + *(v37 + 36));
    *v46 = v45;
    v46[1] = v44;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47 = (v42 + *(v39 + 36));
    v48 = v72;
    *v47 = v71;
    v47[1] = v48;
    v47[2] = v73;
    v49 = v60;
    sub_1000089F8(v14, v60, &qword_10118E3E8);
    v50 = v61;
    sub_1000089F8(v42, v61, &qword_10118E3E8);
    v51 = v63;
    sub_1000089F8(v49, v63, &qword_10118E3E8);
    v52 = sub_10010FC20(&qword_10118E410);
    sub_1000089F8(v50, v51 + *(v52 + 48), &qword_10118E3E8);
    sub_1000095E8(v50, &qword_10118E3E8);
    sub_1000095E8(v49, &qword_10118E3E8);
    sub_1000089F8(v51, v66, &qword_10118E3E0);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E400, &qword_10118E3E0);
    sub_100218D98();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v51, &qword_10118E3E0);
    sub_1000095E8(v42, &qword_10118E3E8);
    return sub_1000095E8(v14, &qword_10118E3E8);
  }

  else
  {
    v54 = *(a1 + 16);
    sub_1003F8570(a1, &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s16PlaybackControlsVMa);
    v55 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v56 = swift_allocObject();
    sub_1003F8498(&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55, _s16PlaybackControlsVMa);
    v57 = v66;
    *v66 = v54;
    v57[1] = sub_1003F8310;
    v57[2] = v56;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E400, &qword_10118E3E0);
    sub_100218D98();

    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1003F78D0(char a1, uint64_t a2)
{
  v4 = _s16PlaybackControlsVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1003F8570(a2, v7, _s16PlaybackControlsVMa);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1003F8498(v7, v15 + v13, _s16PlaybackControlsVMa);
  *(v15 + v14) = a1;
  sub_1001F4CB8(0, 0, v10, &unk_100ECA6F8, v15);
}

uint64_t sub_1003F7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 248) = a5;
  *(v5 + 136) = a4;
  sub_10010FC20(&unk_101181520);
  *(v5 + 144) = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0);
  *(v5 + 152) = swift_task_alloc();
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 160) = v6;
  v7 = *(v6 - 8);
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 + 64);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = type metadata accessor for MainActor();
  *(v5 + 216) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 224) = v9;
  *(v5 + 232) = v8;

  return _swift_task_switch(sub_1003F7C44, v9, v8);
}

uint64_t sub_1003F7C44()
{
  v1 = *(v0 + 136);
  if (*v1)
  {
    v10 = (*v1 + **v1);
    v2 = swift_task_alloc();
    *(v0 + 240) = v2;
    *v2 = v0;
    v2[1] = sub_1003F7E00;
    v3 = *(v0 + 152);
    v4 = *(v0 + 248);

    return v10(v3, v4);
  }

  else
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);

    (*(v7 + 56))(v8, 1, 1, v6);
    sub_1000095E8(*(v0 + 152), &qword_1011848A0);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1003F7E00()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1003F7F20, v3, v2);
}

uint64_t sub_1003F7F20()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011848A0);
  }

  else
  {
    v4 = *(v0 + 248);
    sub_1003F8498(*(v0 + 152), *(v0 + 200), type metadata accessor for PlaybackIntentDescriptor);
    _StringGuts.grow(_:)(27);

    v5 = "PlayIntentButton.sing";
    v6 = 0xD000000000000018;
    if (v4 != 1)
    {
      v6 = 0xD000000000000015;
      v5 = "Header.PlaybackControls: ";
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = "PlayIntentButton.shuffle";
    }

    v9 = *(v0 + 200);
    v10 = *(v0 + 160);
    v11 = *(v0 + 248);
    v12 = v8 | 0x8000000000000000;
    String.append(_:)(*&v7);

    v14 = 0xD000000000000019;
    v13 = 0x8000000100E419C0;
    PlaybackIntentDescriptor.configure(for:)(v11);
    v15 = v9 + *(v10 + 32);
    if (*(v15 + 24))
    {
      sub_100008FE4(v9 + *(v10 + 32), v0 + 56);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      sub_10000954C((v0 + 56), v17);
      *(v0 + 120) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 128) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 96) = 0xD000000000000019;
      *(v0 + 104) = 0x8000000100E419C0;

      v18 = Player.CommandIssuer.appending(_:)(v0 + 96, v17, v16);
      v20 = v19;
      sub_10000959C(v0 + 96);
      sub_10000959C(v0 + 56);
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
      if (v20)
      {

        v14 = v18;
        v13 = v20;
      }
    }

    else
    {
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v21 = *(v0 + 200);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    *(v0 + 16) = v14;
    *(v0 + 24) = v13;
    sub_1003F8500(v0 + 16, v15);
    sub_1003F8570(v21, v22, type metadata accessor for PlaybackIntentDescriptor);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_1003F8570(v22, v23, type metadata accessor for PlaybackIntentDescriptor);
    v27 = static MainActor.shared.getter();
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_1003F8498(v23, v29 + v28, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v25, &unk_100ECA700, v29);

    sub_100188CDC(v22);
    sub_100188CDC(v21);
  }

  v30 = *(v0 + 8);

  return v30();
}

unint64_t sub_1003F82B8()
{
  result = qword_10118E3F0;
  if (!qword_10118E3F0)
  {
    type metadata accessor for RedactionReasons();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E3F0);
  }

  return result;
}

uint64_t sub_1003F8310(char a1)
{
  v3 = *(_s16PlaybackControlsVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F78D0(a1, v4);
}

uint64_t sub_1003F8380(uint64_t a1)
{
  v4 = *(_s16PlaybackControlsVMa() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003F7AB8(a1, v5, v6, v7, v8);
}

uint64_t sub_1003F8498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F8500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F8570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003F85D8()
{
  result = qword_10118E418;
  if (!qword_10118E418)
  {
    sub_1001109D0(&qword_10118E420);
    sub_100020674(&qword_10118E3D0, &qword_10118E3C0);
    sub_100020674(&qword_10118E428, &qword_10118E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E418);
  }

  return result;
}

unint64_t sub_1003F86C0()
{
  result = qword_10118E450;
  if (!qword_10118E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E450);
  }

  return result;
}

unint64_t sub_1003F8718()
{
  result = qword_10118E458;
  if (!qword_10118E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E458);
  }

  return result;
}

unint64_t sub_1003F8770()
{
  result = qword_10118E460;
  if (!qword_10118E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E460);
  }

  return result;
}

unint64_t sub_1003F87C8()
{
  result = qword_10118E468;
  if (!qword_10118E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E468);
  }

  return result;
}

uint64_t sub_1003F8888()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100006080(v0, qword_101218BC0);
  sub_1000060E4(v0, qword_101218BC0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1003F88EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[13] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_10010FC20(&qword_10118E480);
  v3[18] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_1003F8AC8, v6, v5);
}

uint64_t sub_1003F8AC8()
{
  IntentParameter.wrappedValue.getter();
  v2 = v0[2];
  v1 = v0[3];
  v0[25] = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1003F8B78;
  v4 = v0[18];

  return sub_1003F9978(v4, v2, v1);
}

uint64_t sub_1003F8B78()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003F9518;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003F8C94;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003F8C94()
{
  v33 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for MusicPin.Item();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    sub_1000095E8(v1, &qword_10118E480);
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  else
  {
    IntentParameter.wrappedValue.getter();
    v7 = *(v0 + 240);
    if (qword_10117F6D8 != -1)
    {
      v29 = *(v0 + 240);
      swift_once();
      v7 = v29;
    }

    v8 = *(v0 + 144);
    sub_10042BAAC(v8, v7, *(v0 + 160));
    (*(v3 + 8))(v8, v2);
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  sub_1003FAC48(*(v0 + 160), v9);
  sub_1003FACB8(v9, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v13 = *(v0 + 152);

    sub_1000095E8(v13, &unk_10118CDB0);
    if (qword_10117F698 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_10118E438);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create playbackIntent", v17, 2u);
    }

    static IntentResult.result<>()();
    sub_1000095E8(*(v0 + 168), &unk_10118CDB0);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = *(v0 + 104);
    (*(v21 + 32))(v20, *(v0 + 152), v23);
    v25 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v26 = String._bridgeToObjectiveC()();
    [v25 setPlayActivityFeatureName:v26];

    (*(v21 + 16))(v24, v20, v23);
    swift_storeEnumTagMultiPayload();
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v32[3] = &type metadata for Player.CommandIssuerIdentity;
    v32[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v32[0] = 0xD000000000000018;
    v32[1] = 0x8000000100ECA860;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v24, v30, 2, 1, 0, 1, 0, 1, v22, 0, v32);
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v27 = swift_task_alloc();
    *(v0 + 224) = v27;
    *v27 = v0;
    v27[1] = sub_1003F9198;
    v28 = *(v0 + 112);

    return PlaybackController.add(_:route:)(v28, 0);
  }
}

uint64_t sub_1003F9198()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1003F9734;
  }

  else
  {
    v5 = sub_1003F92D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003F92D4()
{
  v14 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    IntentParameter.wrappedValue.getter();
    v6 = sub_1000105AC(v0[6], v0[7], &v13);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Added new playback intent for item: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  static IntentResult.result<>()();
  sub_100188CDC(v10);
  (*(v8 + 8))(v7, v9);
  sub_1000095E8(v0[21], &unk_10118CDB0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003F9518()
{
  v13 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create playbackIntent with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F9734()
{
  v15 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    IntentParameter.wrappedValue.getter();
    v6 = sub_1000105AC(v0[4], v0[5], &v14);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new playback intent for item: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v7 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  swift_willThrow();
  sub_100188CDC(v11);
  (*(v9 + 8))(v8, v10);
  sub_1000095E8(v7, &unk_10118CDB0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003F9978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for GenericMusicItem();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicSiriItemResponse();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_10010FC20(&qword_10118E488);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for MusicSiriItemRequest();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F9B44, 0, 0);
}

uint64_t sub_1003F9B44()
{
  v1 = v0[13];

  MusicSiriItemRequest.init(siriRepresentationID:)();
  v2 = enum case for MusicDataRequest.Source.widgets(_:);
  v3 = type metadata accessor for MusicDataRequest.Source();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  MusicSiriItemRequest.source.setter();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003F9C9C;
  v6 = v0[12];

  return MusicSiriItemRequest.response()(v6);
}

uint64_t sub_1003F9C9C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1003FA534;
  }

  else
  {
    v2 = sub_1003F9DB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003F9DB0()
{
  v85 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  MusicSiriItemResponse.item.getter();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v6 + 8))(v5, v7);
    (*(v10 + 96))(v8, v9);
    v12 = type metadata accessor for Album();
    (*(*(v12 - 8) + 32))(v11, v8, v12);
    v13 = &enum case for MusicPin.Item.album(_:);
LABEL_11:
    v42 = *v13;
    v43 = type metadata accessor for MusicPin.Item();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v11, v42, v43);
    (*(v44 + 56))(v11, 0, 1, v43);
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[14];
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v15 + 8))(v14, v16);
    (*(v19 + 96))(v17, v18);
    v20 = type metadata accessor for Artist();
    (*(*(v20 - 8) + 32))(v11, v17, v20);
    v13 = &enum case for MusicPin.Item.artist(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v22 + 8))(v21, v23);
    (*(v26 + 96))(v24, v25);
    v27 = type metadata accessor for MusicVideo();
    (*(*(v27 - 8) + 32))(v11, v24, v27);
    v13 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    v31 = v0[8];
    v32 = v0[5];
    v33 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v29 + 8))(v28, v30);
    (*(v33 + 96))(v31, v32);
    v34 = type metadata accessor for Playlist();
    (*(*(v34 - 8) + 32))(v11, v31, v34);
    v13 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[14];
    v38 = v0[8];
    v39 = v0[5];
    v40 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v36 + 8))(v35, v37);
    (*(v40 + 96))(v38, v39);
    v41 = type metadata accessor for Song();
    (*(*(v41 - 8) + 32))(v11, v38, v41);
    v13 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_11;
  }

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v47 = v0[11];
  v48 = v0[12];
  v49 = v0[9];
  v50 = v0[10];
  v51 = type metadata accessor for Logger();
  sub_1000060E4(v51, qword_10118E438);
  (*(v50 + 16))(v47, v48, v49);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v54 = os_log_type_enabled(v52, v53);
  v56 = v0[15];
  v55 = v0[16];
  v57 = v0[14];
  v58 = v0[11];
  v59 = v0[12];
  v60 = v0[9];
  v61 = v0[10];
  if (v54)
  {
    v82 = v0[14];
    v83 = v0[16];
    v63 = v0[6];
    v62 = v0[7];
    log = v52;
    v64 = v0[5];
    v77 = v0[9];
    v65 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84 = v81;
    *v65 = 136315138;
    v79 = v53;
    MusicSiriItemResponse.item.getter();
    sub_1003FAD28();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v59;
    v68 = v67;
    (*(v63 + 8))(v62, v64);
    v69 = *(v61 + 8);
    v69(v58, v77);
    v70 = sub_1000105AC(v66, v68, &v84);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, log, v79, "Cannot play non MusicPin.Item=%s", v65, 0xCu);
    sub_10000959C(v81);

    v69(v80, v77);
    (*(v56 + 8))(v83, v82);
  }

  else
  {

    v71 = *(v61 + 8);
    v71(v58, v60);
    v71(v59, v60);
    (*(v56 + 8))(v55, v57);
  }

  v72 = v0[8];
  v73 = v0[5];
  v74 = v0[6];
  v75 = v0[2];
  v76 = type metadata accessor for MusicPin.Item();
  (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
  (*(v74 + 8))(v72, v73);
LABEL_12:

  v45 = v0[1];

  return v45();
}

uint64_t sub_1003FA534()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FA5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000060E4(v2, qword_101218BC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003FA6B0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1003F88EC(a1, v5, v4);
}

uint64_t sub_1003FA75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003FA834();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003FA784(uint64_t a1)
{
  v2 = sub_1003F8718();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1003FA7D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10118E438);
  sub_1000060E4(v0, qword_10118E438);
  return static Logger.music(_:)();
}

uint64_t sub_1003FA834()
{
  v0 = sub_10010FC20(&qword_10118E470);
  __chkstk_darwin(v0 - 8);
  v32 = v24 - v1;
  v29 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101182C10);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_10010FC20(&qword_101182C18);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_10010FC20(&qword_101182C20);
  __chkstk_darwin(v11 - 8);
  v13 = v24 - v12;
  v31 = sub_10010FC20(&qword_101182C28);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v30 = *(v15 + 56);
  v28 = v15 + 56;
  v30(v13, 1, 1, v14);
  v16 = type metadata accessor for String.IntentInputOptions();
  v33 = 0;
  v34 = 0;
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = type metadata accessor for IntentDialog();
  v18 = *(v17 - 8);
  v26 = *(v18 + 56);
  v27 = v18 + 56;
  v26(v7, 1, 1, v17);
  v19 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v2 + 104);
  v24[1] = v2 + 104;
  v25 = v20;
  v21 = v29;
  v20(v4, enum case for InputConnectionBehavior.default(_:), v29);
  v31 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10010FC20(&qword_10118E478);
  v30(v13, 1, 1, v14);
  LOBYTE(v33) = 2;
  v22 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v26(v7, 1, 1, v17);
  v25(v4, v19, v21);
  IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v31;
}

uint64_t sub_1003FAC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118CDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FACB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118CDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003FAD28()
{
  result = qword_101186698;
  if (!qword_101186698)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186698);
  }

  return result;
}

void sub_1003FAD80(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    if (v4)
    {
      sub_1003FB264();
      v5 = a1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v8 = a1;
    }

    v9 = [a1 superview];
    if (v9)
    {
      v10 = v9;
      sub_1003FB264();
      v11 = v2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [a1 removeFromSuperview];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v13 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
  if (v13)
  {
    v18 = v13;
    v14 = [v18 superview];
    if (!v14 || (v15 = v14, sub_1003FB264(), v16 = v2, v17 = static NSObject.== infix(_:_:)(), v15, v16, (v17 & 1) == 0))
    {
      [v2 addSubview:v18];
    }
  }
}

id sub_1003FB0D4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
  v8.receiver = v1;
  v8.super_class = _s10HeaderCellCMa();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1003FB1A8()
{
  v2.receiver = v0;
  v2.super_class = _s10HeaderCellCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003FB264()
{
  result = qword_101181620;
  if (!qword_101181620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101181620);
  }

  return result;
}

void sub_1003FB2B0(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded);
      if (*(v4 + 16) > a1)
      {
        v5 = *(v4 + 48 * a1 + 32);
        v6 = [v5 album];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 orphanMusicVideo];

          if (v8)
          {
            v9 = *&v3[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController];
            if (v9)
            {
              v10 = [v9 playbackManager];
              swift_beginAccess();
              v11 = swift_unknownObjectWeakLoadStrong();
              v12 = v8;
              if (v11)
              {
                v13 = [v11 playActivityFeatureName];
              }

              else
              {
                v13 = 0;
              }

              [v10 initiatePlaybackForSong:v12 lastResponse:0 shuffled:0 forceScopingToResponseResults:0 playActivityFeatureName:v13];

              swift_unknownObjectRelease();
            }

            swift_beginAccess();
            v27 = swift_unknownObjectWeakLoadStrong();
            if (!v27)
            {
              goto LABEL_33;
            }

            v28 = v27;
            v29 = [v27 navigationController];

            if (!v29)
            {
              goto LABEL_33;
            }

            type metadata accessor for CarPlayRootNavigationController();
            if (swift_dynamicCastClass())
            {
              sub_1001D3268(0, 1);
              v26 = v29;
              v22 = v5;
            }

            else
            {
              v26 = v8;
              v22 = v5;
              v8 = v29;
            }

            goto LABEL_31;
          }
        }

        v14 = [v5 type];
        if (v14 == 1)
        {
          v20 = [v5 song];
          if (!v20)
          {
            goto LABEL_34;
          }

          v21 = v20;
          v16 = [v20 album];

          if (!v16)
          {
            goto LABEL_34;
          }

          v19 = [objc_allocWithZone(type metadata accessor for MCDItemDetailViewController()) initWithAlbum:v16 onlyDownloaded:v3[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_onlyShowDownloaded] preferCatalog:0];
        }

        else
        {
          if (v14 == 2)
          {
            v18 = [v5 album];
            if (!v18)
            {
              goto LABEL_34;
            }

            v16 = v18;
            v17 = &selRef_initWithAlbum_onlyDownloaded_preferCatalog_;
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_34;
            }

            v15 = [v5 playlist];
            if (!v15)
            {
              goto LABEL_34;
            }

            v16 = v15;
            v17 = &selRef_initWithPlaylist_onlyDownloaded_preferCatalog_;
          }

          v19 = [objc_allocWithZone(type metadata accessor for MCDItemDetailViewController()) *v17];
        }

        v22 = v19;

        if (v22)
        {
          swift_beginAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          [v22 setPlayActivityFeatureNameSourceViewController:v23];

          swift_beginAccess();
          v24 = swift_unknownObjectWeakLoadStrong();
          if (!v24)
          {
            goto LABEL_32;
          }

          v25 = v24;
          v26 = [v24 navigationController];

          if (!v26)
          {
            goto LABEL_32;
          }

          [v26 pushViewController:v22 animated:1];
          v8 = v5;
LABEL_31:
          v5 = v8;

LABEL_32:
          v8 = v3;
          v3 = v22;
LABEL_33:
        }

LABEL_34:

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003FB68C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_1003FB6E0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController] = 0;
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_onlyShowDownloaded] = a2;
  v11 = &v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_updateHandler];
  *v11 = a3;
  v11[1] = a4;
  v25.receiver = v5;
  v25.super_class = ObjectType;

  v12 = objc_msgSendSuper2(&v25, "init");
  v13 = objc_allocWithZone(MCDRecentlyAddedDataSource);
  v14 = v12;
  v15 = [v13 init];
  if (a1)
  {
    v16 = [a1 traitCollection];
    v17 = [v16 shouldLimitMusicLists];
  }

  else
  {
    v17 = 0;
  }

  result = [objc_allocWithZone(MCDLibraryPlaybackManager) initWithDelegate:0];
  if (result)
  {
    v19 = result;
    v20 = objc_allocWithZone(MCDLibraryContentManager);
    v21 = v14;
    LOBYTE(v24) = 1;
    v22 = [v20 initWithDataSource:v15 limitedUI:v17 showLocalContent:a2 & 1 delegate:v21 viewController:a1 playbackManager:v19 shouldPerformRequestImmediately:v24];

    v23 = *&v21[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController];
    *&v21[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController] = v22;

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003FB8D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded;

  sub_10047C95C(v4, a1);
  LOBYTE(a1) = v5;

  if (a1)
  {
    return;
  }

  v23 = v1;
  v6 = *(v1 + v3);
  v7 = *(v6 + 16);

  v8 = 0;
  v9 = v6 + 72;
LABEL_3:
  v10 = (v9 + 48 * v8);
  while (v7 != v8)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v13 = *(v10 - 5);
    v14 = *(v10 - 4);
    v15 = *v10;
    if (*(v10 - 2))
    {

      v16 = v13;
      v17 = v14;
      v18 = String._bridgeToObjectiveC()();

      if (!v15)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v19 = v13;
      v20 = v14;
      v18 = 0;
      if (!v15)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_5;
      }
    }

    v11 = String._bridgeToObjectiveC()();

LABEL_5:
    ++v8;
    v10 += 6;
    v12 = [objc_allocWithZone(CPUIImageRowCellItemConfiguration) initWithArtworkCatalog:v14 title:v18 subtitle:v11];

    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v6 + 72;
      goto LABEL_3;
    }
  }

  v21 = *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels);
  *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels) = _swiftEmptyArrayStorage;
  v22 = *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_updateHandler);

  v22(v23, v21, _swiftEmptyArrayStorage);
}

id sub_1003FBBCC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifiers];
  v4 = [v2 identifiers];
  v5 = [v3 intersectsSet:v4];

  return v5;
}

void *sub_1003FBD30(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100009F78(0, &qword_10118E538);

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = sub_1003FBF3C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003FB68C;
  aBlock[3] = &unk_1010AAE20;
  v6 = _Block_copy(aBlock);

  LOBYTE(v9) = 1;
  v7 = [objc_opt_self() configurationWithText:0 itemsConfigurations:isa maximumNumberOfLines:3 contentInsets:v6 lineSpacing:0 selectGridItemBlock:0 selectTitleBlock:0.0 showActivityIndicator:8.0 enabled:0.0 bundleIdentifier:{0.0, 16.0, v9, 0}];
  _Block_release(v6);

  [a1 applyConfiguration:v7];
  [a1 invalidateIntrinsicContentSize];

  return a1;
}

void sub_1003FBF44(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = a1;
  v9 = [v8 artworkCatalog];
  v10 = [v8 type];
  if (v10 <= 3)
  {
    if (v10 == 1)
    {
      v18 = [v8 song];
      if (v18 && (v19 = v18, v20 = [v18 title], v19, v20))
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v21;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = [v8 song];

      if (v17)
      {
        v26 = [v17 artist];

        if (v26)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_30:
      v26 = 0;
      if (v9)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    if (v10 == 2)
    {
      v11 = [v8 album];
      if (v11 && (v12 = v11, v13 = [v11 representativeTitle], v12, v13))
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v14 = String.init(localized:table:bundle:locale:comment:)();
        v16 = v25;
      }

      v17 = [v8 album];

      if (v17)
      {
        v26 = [v17 artist];

        if (v26)
        {
LABEL_27:
          v27 = [v26 name];

          if (v27)
          {
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v28;

            if (v9)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          goto LABEL_42;
        }

LABEL_32:
        v17 = 0;
        if (v9)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (v10 == 4)
  {
    if (v9)
    {
      goto LABEL_39;
    }

    v22 = [v8 playlist];
    if (v22 && ((v23 = v22, v24 = [v22 type], v23, v24 == 1) || v24 == 3))
    {
      v32 = objc_opt_self();
      v30 = String._bridgeToObjectiveC()();
      v31 = [v32 placeholderCatalogWithSymbolName:v30];
    }

    else
    {
      v29 = [v8 playlist];
      if (!v29)
      {
        v9 = 0;
        goto LABEL_39;
      }

      v30 = v29;
      v31 = [v29 tracksTiledArtworkCatalogWithRows:2 columns:2];
    }

    v9 = v31;

LABEL_39:
    v14 = [v8 playlist];

    if (v14)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  if (v10 != 13)
  {
LABEL_11:

    v17 = 0;
LABEL_44:
    v26 = 0;
    v14 = 0;
    v16 = 0;
    if (v9)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v14 = [v8 radioStation];

  if (v14)
  {
LABEL_40:
    v17 = [v14 name];

    if (v17)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v33;

LABEL_42:
      v17 = 0;
      v26 = 0;
      if (v9)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_46:
  v17 = 0;
  v26 = 0;
  v16 = 0;
  if (v9)
  {
    goto LABEL_49;
  }

LABEL_47:
  v9 = [objc_opt_self() defaultPlaceholderForTraitCollection:a2];
  if (!v9)
  {

    v8 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v26 = 0;
    goto LABEL_50;
  }

  v34 = objc_opt_self();
  v35 = v9;
  v9 = [v34 staticArtworkCatalogWithImage:v35];

LABEL_49:
LABEL_50:
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v14;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = v26;
}

uint64_t sub_1003FC51C(void *a1)
{
  v1 = [a1 itemsInSectionAtIndex:0];
  sub_100009F78(0, &unk_101186F00);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v29[0] = _swiftEmptyArrayStorage;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E99CC(v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = *&v29[0];
  }

  while (v4 != v3);
LABEL_21:

  if (v5 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v27 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E99B8(v10, v5);
      }

      else
      {
        if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v14 = *(v5 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v18 = Strong, v13 = [Strong traitCollection], v18, !v13))
      {
        v13 = [objc_opt_self() currentTraitCollection];
      }

      sub_1003FBF44(v15, v13, v29);
      ++v10;
      if (*&v29[0])
      {
        v26 = v29[0];
        v24 = v29[2];
        v25 = v29[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10049A30C(0, *(v27 + 2) + 1, 1, v27);
        }

        v20 = *(v27 + 2);
        v19 = *(v27 + 3);
        v21 = v26;
        if (v20 >= v19 >> 1)
        {
          v23 = sub_10049A30C((v19 > 1), v20 + 1, 1, v27);
          v21 = v26;
          v27 = v23;
        }

        *(v27 + 2) = v20 + 1;
        v22 = &v27[48 * v20];
        *(v22 + 2) = v21;
        *(v22 + 3) = v25;
        *(v22 + 4) = v24;
        v10 = v16;
        if (i == v16)
        {
          goto LABEL_24;
        }
      }

      else if (i == v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_24:

  v11 = *(v28 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded);
  *(v28 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded) = v27;
  sub_1003FB8D8(v11);
}

uint64_t sub_1003FC8E4()
{
  v0 = type metadata accessor for MusicPin();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011972A0);
  sub_1003FFBE8();
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v11 & 1) == 0)
  {
    return v10;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v4 = v12;
  if (v12 == v10)
  {
    return 0;
  }

  v5 = (v1 + 16);
  v6 = (v1 + 8);
  while (1)
  {
    v7 = dispatch thunk of Collection.subscript.read();
    (*v5)(v3);
    (v7)(&v10, 0);
    sub_1003FFC4C();
    LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v6)(v3, v0);
    if (v7)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v4 = v12;
    if (v12 == v10)
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1003FCB28(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t), unint64_t *a4)
{
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = a3(v8, a2);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    sub_100009F78(0, a4);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1003FCC44(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = *(v5 + v4);
      if (v6 == 1)
      {
        v7 = 0x73746E65636572;
      }

      else
      {
        v7 = 0x6C79616C506C6C61;
      }

      v8 = 0xEC00000073747369;
      if (v6 == 1)
      {
        v8 = 0xE700000000000000;
      }

      if (*(v5 + v4))
      {
        v9 = v7;
      }

      else
      {
        v9 = 7824750;
      }

      if (*(v5 + v4))
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x73746E65636572;
        }

        else
        {
          v11 = 0x6C79616C506C6C61;
        }

        if (a1 == 1)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEC00000073747369;
        }

        if (v9 != v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v9 != 7824750)
        {
          goto LABEL_25;
        }
      }

      if (v10 == v12)
      {

        return v4;
      }

LABEL_25:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v4;
      }

      if (v2 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

id sub_1003FCD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a6;
  v127 = a5;
  v124 = a3;
  v134 = a1;
  v110 = type metadata accessor for MusicVideo();
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v103 - v10;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v130 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v129 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Track();
  v108 = *(v119 - 8);
  __chkstk_darwin(v119);
  v104 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v103 - v17;
  v120 = type metadata accessor for Song();
  v111 = *(v120 - 8);
  __chkstk_darwin(v120);
  v107 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v103 - v20;
  v133 = *(a4 - 8);
  __chkstk_darwin(v21);
  v125 = v22;
  v126 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v118 = &v103 - v24;
  v122 = type metadata accessor for MusicLibrary.RemoveAction();
  v123 = *(v122 - 1);
  __chkstk_darwin(v122);
  v114 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10010FC20(&unk_101193E60);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v112 = &v103 - v28;
  v29 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10010FC20(&qword_101183E28);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v103 - v38;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v30 + 8))(v32, v29);
  (*(v34 + 32))(v36, v39, v33);
  LODWORD(v132) = (*(v34 + 88))(v36, v33);
  v40 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v41 = v36;
  v42 = v119;
  v43 = v33;
  v44 = v117;
  (*(v34 + 8))(v41, v43);
  v45 = v114;
  static MusicLibraryAction<>.remove.getter();
  v46 = v112;
  v47 = v134;
  v48 = a4;
  v49 = v122;
  v128 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  v50 = v48;
  (*(v123 + 8))(v45, v49);
  v51 = v115;
  v52 = v113;
  v53 = v116;
  (*(v115 + 32))(v113, v46, v116);
  v54 = (*(v51 + 88))(v52, v53);
  (*(v51 + 8))(v52, v53);
  v55 = v118;
  v56 = *(v133 + 16);
  v57 = v47;
  v58 = v121;
  v123 = v133 + 16;
  v122 = v56;
  (v56)(v118, v57, v50);
  v59 = v120;
  if (swift_dynamicCast())
  {
    (*(v111 + 8))(v44, v59);
    if (v132 == v40 && v54 == v40)
    {
      goto LABEL_26;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v108 + 8))(v58, v42);
    if (v132 == v40 && v54 == v40)
    {
      goto LABEL_26;
    }
  }

  v60 = v42;
  v61 = v109;
  v62 = v110;
  if (swift_dynamicCast())
  {
    if (v132 == v40 && v54 == v40)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v120 = String.init(localized:table:bundle:locale:comment:)();
      v121 = v63;
      (*(v106 + 8))(v61, v62);
      (*(v133 + 8))(v55, v50);
      goto LABEL_27;
    }

    (*(v106 + 8))(v61, v62);
  }

  v64 = v107;
  if (swift_dynamicCast())
  {
    (*(v111 + 8))(v64, v59);
    if (v54 != v40)
    {
      v65 = v60;
      v66 = v104;
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:
        if (swift_dynamicCast())
        {
          if (v54 == v40)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v120 = String.init(localized:table:bundle:locale:comment:)();
            v121 = v68;
            (*(v106 + 8))(v105, v62);
            (*(v133 + 8))(v55, v50);
            goto LABEL_27;
          }

          (*(v106 + 8))(v105, v62);
        }

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v120 = String.init(localized:table:bundle:locale:comment:)();
        v121 = v67;
        (*(v133 + 8))(v55, v50);
        goto LABEL_27;
      }

LABEL_19:
      (*(v108 + 8))(v66, v65);
      goto LABEL_20;
    }
  }

  else
  {
    v65 = v60;
    v66 = v104;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v54 != v40)
    {
      goto LABEL_19;
    }

    (*(v108 + 8))(v66, v65);
  }

LABEL_26:
  (*(v133 + 8))(v55, v50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v120 = String.init(localized:table:bundle:locale:comment:)();
  v121 = v69;
LABEL_27:
  v70 = String._bridgeToObjectiveC()();

  v71 = [objc_opt_self() alertControllerWithTitle:0 message:v70 preferredStyle:v124];

  v72 = &selRef__replacePlaceholderViewWithView_;
  v73 = &selRef__replacePlaceholderViewWithView_;
  if (v132 == v40)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v132 = String.init(localized:table:bundle:locale:comment:)();
    v74 = v40;
    v75 = v126;
    (v122)(v126, v134, v50);
    v76 = v71;
    v77 = v54;
    v78 = v133;
    v79 = (*(v133 + 80) + 48) & ~*(v133 + 80);
    v80 = swift_allocObject();
    v81 = v127;
    *(v80 + 2) = v50;
    *(v80 + 3) = v81;
    v82 = v50;
    v83 = v128;
    *(v80 + 4) = v131;
    *(v80 + 5) = v83;
    v84 = v78;
    v54 = v77;
    v71 = v76;
    v85 = v75;
    v40 = v74;
    v73 = &selRef__replacePlaceholderViewWithView_;
    (*(v84 + 32))(&v80[v79], v85, v82);
    v50 = v82;
    v72 = &selRef__replacePlaceholderViewWithView_;

    v86 = String._bridgeToObjectiveC()();

    v139 = sub_1003FF60C;
    v140 = v80;
    aBlock = _NSConcreteStackBlock;
    v136 = 1107296256;
    v137 = sub_10027D328;
    v138 = &unk_1010AAEC0;
    v87 = _Block_copy(&aBlock);

    v88 = [objc_opt_self() actionWithTitle:v86 style:2 handler:v87];
    _Block_release(v87);

    [v71 addAction:v88];
  }

  if (v54 == v40)
  {
    v89 = v126;
    (v122)(v126, v134, v50);
    v90 = v72;
    v91 = v133;
    v92 = (*(v133 + 80) + 48) & ~*(v133 + 80);
    v93 = swift_allocObject();
    v94 = v127;
    *(v93 + 2) = v50;
    *(v93 + 3) = v94;
    v95 = v50;
    v96 = v128;
    *(v93 + 4) = v131;
    *(v93 + 5) = v96;
    (*(v91 + 32))(&v93[v92], v89, v95);
    v72 = v90;

    v97 = String._bridgeToObjectiveC()();

    v139 = sub_1003FF530;
    v140 = v93;
    aBlock = _NSConcreteStackBlock;
    v136 = 1107296256;
    v137 = sub_10027D328;
    v138 = &unk_1010AAE70;
    v98 = _Block_copy(&aBlock);

    v99 = [objc_opt_self() v90[28]];
    _Block_release(v98);

    [v71 v73[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v100 = String._bridgeToObjectiveC()();

  v101 = [objc_opt_self() v72[28]];

  [v71 v73[33]];
  return v71;
}

void sub_1003FE034(char a1)
{
  v2 = v1;
  if (qword_10117F6A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10118E540;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v2, v4, isa, 0);

  if (a1)
  {
    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v2 navigationController];
      if (!v8 || (v9 = v8, v10 = [v8 viewControllers], sub_100009F78(0, &qword_101183D40), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v12 = sub_1003FCB28(v2, v11, sub_10004056C, &qword_101183D40), v14 = v13, , v9, (v14 & 1) != 0) || v12 < 1)
      {
        if (qword_10117F6A8 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000060E4(v19, qword_10118E548);
        v20 = v2;
        v72 = v7;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v23 = 136446466;
          v24 = v20;
          v25 = [v24 description];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v29 = sub_1000105AC(v26, v28, &v73);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2082;
          v30 = v72;
          v31 = [v30 description];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_1000105AC(v32, v34, &v73);

          *(v23 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v21, v22, "Failed to remove viewController %{public}s from its navigation controller %{public}s: It's the only VC in the stack, removing it would hose the navigationController.", v23, 0x16u);
          swift_arrayDestroy();
        }

        sub_1003FE034(0);
      }

      else
      {
        v15 = [v7 topViewController];
        if (v15)
        {
          v16 = v15;
          v17 = v2;
          v18 = static NSObject.== infix(_:_:)();
        }

        else
        {
          v18 = 0;
        }

        v36 = [v7 removeViewController:v2 animated:v18 & 1];
        if (v36)
        {
          v72 = v36;
          if (qword_10117F6A8 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000060E4(v37, qword_10118E548);
          v38 = v2;
          v39 = v7;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v42 = 136446466;
            v43 = v38;
            v44 = [v43 description];
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = sub_1000105AC(v45, v47, &v73);

            *(v42 + 4) = v48;
            *(v42 + 12) = 2082;
            v49 = v39;
            v50 = [v49 description];
            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = sub_1000105AC(v51, v53, &v73);

            *(v42 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v40, v41, "Removing viewController %{public}s from its navigation controller %{public}s", v42, 0x16u);
            swift_arrayDestroy();

            return;
          }
        }

        else
        {
          if (qword_10117F6A8 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_1000060E4(v55, qword_10118E548);
          v56 = v2;
          v57 = v7;
          v72 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v58))
          {
            v59 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v59 = 136446466;
            v60 = v56;
            v61 = [v60 description];
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v65 = sub_1000105AC(v62, v64, &v73);

            *(v59 + 4) = v65;
            *(v59 + 12) = 2082;
            v66 = v57;
            v67 = [v66 description];
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            v71 = sub_1000105AC(v68, v70, &v73);

            *(v59 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v72, v58, "Failed to remove viewController %{public}s from its navigation controller %{public}s", v59, 0x16u);
            swift_arrayDestroy();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1003FE7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_1003FE8F8;

  return MusicLibrary.removeDownload<A>(_:)(a5, a6, a7);
}

uint64_t sub_1003FE8F8()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003FEA54;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003FEA54()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[4];
    v20 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to remove downloaded item=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003FEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a6;
  v23 = a8;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v14 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  *(v20 + 6) = v22;
  *(v20 + 7) = a2;
  (*(v12 + 32))(&v20[v19], &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  sub_1001F4CB8(0, 0, v16, v23, v20);
}

uint64_t sub_1003FEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_1003FEF98;

  return MusicLibrary.remove<A>(_:)(a5, a6, a7);
}

uint64_t sub_1003FEF98()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003FF0F4;
  }

  else
  {
    v4 = sub_100251C74;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003FF0F4()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[4];
    v20 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to delete item=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003FF304()
{
  result = swift_slowAlloc();
  qword_10118E540 = result;
  return result;
}

id sub_1003FF32C()
{
  result = [v0 navigationController];
  if (result)
  {
    v2 = result;
    v3 = [result viewControllers];
    sub_100009F78(0, &qword_101183D40);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_1003FCB28(v0, v4, sub_10004056C, &qword_101183D40);
    v7 = v6;

    result = 0;
    if ((v7 & 1) == 0 && v5 >= 1)
    {
      if (qword_10117F6A0 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v0, qword_10118E540))
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v11[0] = v9;
      v11[1] = v10;
      if (*(&v10 + 1))
      {
        if (swift_dynamicCast())
        {
          return v8;
        }
      }

      else
      {
        sub_100011DF0(v11);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003FF4D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10118E548);
  sub_1000060E4(v0, qword_10118E548);
  return static Logger.music(_:)();
}

uint64_t sub_1003FF550()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003FF688(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1003FE7C4(a1, v8, v9, v6, v1 + v7, v4, v5);
}

uint64_t sub_1003FF798()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003FF85C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1003FEE64(a1, v8, v9, v6, v1 + v7, v4, v5);
}

id sub_1003FF96C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  return v4;
}

unint64_t sub_1003FFBE8()
{
  result = qword_1011972B0;
  if (!qword_1011972B0)
  {
    sub_1001109D0(&unk_1011972A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011972B0);
  }

  return result;
}

unint64_t sub_1003FFC4C()
{
  result = qword_1011972F0[0];
  if (!qword_1011972F0[0])
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011972F0);
  }

  return result;
}

uint64_t sub_1003FFCB0(unint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  v4 = sub_10047CAF4(v3, a1);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 16);

    v5(v3, v6);
  }
}

uint64_t sub_1003FFD48(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;

  Library.Menu.Request.init()(&v26);
  v10 = v28;
  v33[0] = v29;
  v11 = v27;
  v12 = sub_10010F828(&off_10109AC28);
  sub_1004009F0(v33);
  if (a2)
  {
    v13 = 67108866;
  }

  else
  {
    v13 = v11;
  }

  *&v21 = v13;
  *(&v21 + 1) = v10;
  *v22 = v12;
  *&v22[40] = v32;
  *&v22[24] = v31;
  *&v22[8] = v30;
  *v25 = *v22;
  *&v25[16] = *&v22[16];
  *&v25[32] = *&v22[32];
  v20 = v26;
  v23 = v26;
  v24 = v21;
  sub_10010FC20(&unk_101197030);
  swift_allocObject();
  sub_1003E1510(&v20, &v19);
  *(v5 + 104) = RequestResponse.Controller.init(request:)(&v23);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v14 = *(v5 + 104);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = (v14 + *(*v14 + 128));
  swift_beginAccess();
  v17 = *v16;
  *v16 = sub_100400A58;
  v16[1] = v15;

  sub_100020438(v17);

  v23 = v26;
  *&v24 = v13;
  *(&v24 + 1) = v10;
  *&v25[8] = v30;
  *&v25[24] = v31;
  *v25 = v12;
  *&v25[40] = v32;
  sub_100400A60(&v23);
  return v5;
}

uint64_t sub_1003FFF84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 56);
    if (v1)
    {
    }
  }

  else
  {
    v1 = 0;
  }

  result = RequestResponse.Revision.content.getter(&v14);
  v3 = v14;
  if (v14)
  {

    if (v1)
    {
      v4 = sub_10047CD0C(v1, v3);

      if (v4)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else if (!v1)
  {
    return result;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    RequestResponse.Revision.content.getter(&v14);
    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v5[7];
    v13 = v5[8];
    v5[7] = v14;
    v5[8] = v7;
    v5[9] = v8;
    v5[10] = v9;
    v5[11] = v10;
    v5[12] = v11;
    sub_100400AB4(v6, v7);
    sub_100400B30(v12, v13);
    sub_100400148();
    sub_100400B30(v6, v7);
  }

  return result;
}

uint64_t sub_100400148()
{
  v1 = sub_10010FC20(&qword_10118BFA0);
  __chkstk_darwin(v1 - 8);
  v40 = v27 - v2;
  v39 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration();
  __chkstk_darwin(v6 - 8);
  v38 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 56);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    swift_weakInit();
    v10 = *(v8 + 16);
    if (v10)
    {
      v27[0] = v0;
      v44 = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      v11 = type metadata accessor for GridView.Base.ViewModel();
      v35 = 0x8000000100E3E560;
      v36 = v11;
      swift_beginAccess();
      v34 = (v3 + 104);
      v33 = enum case for GridView.Base.ViewModel.ImageConfiguration.Image.systemImage(_:);
      v12 = 32;
      v31 = 0xD000000000000014;
      v32 = "nt";
      v29 = "LibraryView.Playlists";
      v30 = "LibraryView.RecentlyAdded";
      v28 = "LibraryView.Artists";
      v27[9] = "LibraryView.Albums";
      v27[8] = "LibraryView.Songs";
      v27[7] = "LibraryView.MadeForYou";
      v27[6] = "LibraryView.MusicVideos";
      v27[5] = "LibraryView.Genres";
      v27[4] = "LibraryView.Compilations";
      v27[3] = "LibraryView.Composers";
      v27[2] = "LibraryView.Shows";
      v27[1] = "LibraryView.Downloaded";
      v37 = v8;
      do
      {
        v25 = *(v8 + v12);
        v13 = 0xD000000000000029;
        v15 = v32;
        switch(v25)
        {
          case 1:
            v13 = 0xD000000000000025;
            v15 = v30;
            break;
          case 2:
            v13 = 0xD000000000000023;
            v15 = v29;
            break;
          case 3:
            v13 = 0xD000000000000022;
            v15 = v28;
            break;
          case 4:
            v13 = 0xD000000000000021;
            v14 = &v53;
            goto LABEL_5;
          case 5:
            v13 = 0xD000000000000026;
            v14 = &v52;
            goto LABEL_5;
          case 6:
            v13 = 0xD000000000000027;
            v14 = &v51;
            goto LABEL_5;
          case 7:
            v13 = 0xD000000000000022;
            v14 = &v50;
            goto LABEL_5;
          case 8:
            v13 = 0xD000000000000028;
            v14 = &v49;
            goto LABEL_5;
          case 9:
            v13 = 0xD000000000000025;
            v14 = &v48;
            goto LABEL_5;
          case 10:
            v13 = 0xD000000000000021;
            v14 = &v47;
            goto LABEL_5;
          case 11:
            v13 = 0xD000000000000026;
            v14 = &v46;
            goto LABEL_5;
          case 12:
            v13 = 0xD000000000000027;
            v14 = &v45;
LABEL_5:
            v15 = *(v14 - 32);
            break;
          default:
            break;
        }

        v42 = v31;
        v43 = v35;
        v16 = v15 | 0x8000000000000000;
        String.append(_:)(*&v13);

        v41 = v42;
        Library.Menu.Identifier.name(for:)();
        v17 = sub_10010FC20(&qword_101180CB0);
        v18 = *(v17 + 48);
        v19 = v5 + *(v17 + 64);
        *v5 = Library.Menu.Identifier.symbolName(for:)(2, v25);
        v5[1] = v20;
        v21 = type metadata accessor for Image.Scale();
        (*(*(v21 - 8) + 56))(v5 + v18, 1, 1, v21);
        *v19 = 0;
        v19[8] = 1;
        (*v34)(v5, v33, v39);
        v22 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
        (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
        GridView.Base.ViewModel.ImageConfiguration.init(image:shape:isTallArtwork:)();
        v23 = swift_allocObject();
        swift_weakLoadStrong();
        swift_weakInit();

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v25;
        GridView.Base.ViewModel.__allocating_init(id:title:symbolName:imageConfiguration:allowsTouches:disabledAppearance:action:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v12;
        --v10;
        v8 = v37;
      }

      while (v10);
      swift_weakDestroy();

      v9 = v44;
    }

    else
    {
      swift_weakDestroy();
    }
  }

  return sub_1003FFCB0(v9);
}

void sub_100400738(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong traitCollection];

      __chkstk_darwin(v6);
      v7 = UITraitCollection.modifyingTraits(_:)();

      v8 = sub_10066BAEC(v7, a2);
      Library.Menu.Identifier.name(for:)();
      v9 = String._bridgeToObjectiveC()();

      [v8 setTitle:v9];

      v10 = swift_unknownObjectWeakLoadStrong();
      [v8 setPlayActivityFeatureNameSourceViewController:v10];

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 navigationController];

        if (v13)
        {
          [v13 pushViewController:v8 animated:1];
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004008EC(uint64_t result, char a2, uint64_t a3)
{
  if (a2 == 11 || (*(a3 + 32) & 1) != 0)
  {
    sub_100309A88(result, *(result + 24));
    sub_1005A634C();
    sub_1003B3FC0();
    return sub_1005A62F0();
  }

  return result;
}

uint64_t sub_10040096C()
{

  swift_unknownObjectWeakDestroy();

  sub_100400B30(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1004009F0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101196FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100400AB4(uint64_t result, void *a2)
{
  if (result)
  {

    v3 = a2;
  }

  return result;
}

uint64_t sub_100400B30(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100400BC4()
{
  result = type metadata accessor for WaveformState();
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

uint64_t sub_100400C4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for WaveformState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100400E8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for WaveformState() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1004011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[2] = a1;
  v19[3] = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v5 = *(a2 + 16);
  sub_1001109D0(&qword_10118E6A8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v19[1] = type metadata accessor for _OverlayModifier();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v19 - v11;
  v13 = *(a2 + 24);
  v19[6] = v5;
  v19[7] = v13;
  v20 = v3;
  static Alignment.center.getter();
  v14 = swift_getWitnessTable();
  View.overlay<A>(alignment:content:)();
  v15 = swift_getWitnessTable();
  v21 = v14;
  v22 = v15;
  v16 = swift_getWitnessTable();
  sub_100663950(v9, v6, v16);
  v17 = *(v7 + 8);
  v17(v9, v6);
  sub_100663950(v12, v6, v16);
  return (v17)(v12, v6);
}

uint64_t sub_1004014B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v43 = a4;
  sub_1001109D0(&qword_10118E6A8);
  v38 = a2;
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v37[1] = swift_getWitnessTable();
  v37[2] = v6;
  v7 = type metadata accessor for ZStack();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v13 = type metadata accessor for WaveformState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = v37 - v22;
  v24 = *(v14 + 16);
  v40 = a1;
  v24(v16, a1, v13, v21);
  if (*(v14 + 88))(v16, v13) == enum case for WaveformState.hidden(_:) || ((*(v14 + 8))(v16, v13), v25 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *v25 == 1) && (v26 = [objc_opt_self() standardUserDefaults], v27 = String._bridgeToObjectiveC()(), v28 = objc_msgSend(v26, "BOOLForKey:", v27), v26, v27, (v28))
  {
    (*(v8 + 56))(v19, 1, 1, v7);
    swift_getWitnessTable();
  }

  else
  {
    __chkstk_darwin(v25);
    v29 = v40;
    v30 = v41;
    v37[-4] = v38;
    v37[-3] = v30;
    v37[-2] = v29;
    static Alignment.center.getter();
    v31 = v39;
    ZStack.init(alignment:content:)();
    WitnessTable = swift_getWitnessTable();
    sub_100663950(v31, v7, WitnessTable);
    v33 = *(v8 + 8);
    v33(v31, v7);
    sub_100663950(v12, v7, WitnessTable);
    v33(v12, v7);
    (*(v8 + 32))(v19, v31, v7);
    (*(v8 + 56))(v19, 0, 1, v7);
  }

  sub_100653A68(v19, v23);
  v34 = *(v42 + 8);
  v34(v19, v17);
  v44 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  sub_100663950(v23, v17, v35);
  return (v34)(v23, v17);
}

uint64_t sub_100401A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = type metadata accessor for WaveformColorPalette();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WaveformView();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_10118E6A8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v50 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = &v38 - v17;
  v18 = *(a2 - 8);
  __chkstk_darwin(v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v38 - v23;
  v41 = a3;
  v25 = type metadata accessor for DancingPlaybackBarsOverlayModifier();
  sub_100663950(a1 + *(v25 + 36), a2, a3);
  (*(v10 + 16))(v12, a1, v9);
  WaveformView.init(state:)();
  v26 = v45;
  static WaveformColorPalette.white.getter();
  v27 = sub_100401ED4();
  v28 = v39;
  v29 = v43;
  View.waveformColorPalette(_:)();
  (*(v47 + 8))(v26, v48);
  (*(v46 + 8))(v14, v29);
  v30 = *(v18 + 16);
  v40 = v21;
  v31 = a2;
  v30(v21, v24, a2);
  v56[0] = v21;
  v32 = v42;
  v33 = v50;
  v34 = v44;
  (*(v42 + 16))(v50, v28, v44);
  v56[1] = v33;
  v55[0] = v31;
  v55[1] = v34;
  v52 = v27;
  v53 = v41;
  v51 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1006769F4(v56, 2uLL, v55);
  v35 = *(v32 + 8);
  v35(v28, v34);
  v36 = *(v18 + 8);
  v36(v24, v31);
  v35(v50, v34);
  return (v36)(v40, v31);
}

unint64_t sub_100401ED4()
{
  result = qword_10118E6B0;
  if (!qword_10118E6B0)
  {
    type metadata accessor for WaveformView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E6B0);
  }

  return result;
}

uint64_t type metadata accessor for DancingPlaybackBarsConditionalModifier()
{
  result = qword_10118E710;
  if (!qword_10118E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100401FA0()
{
  result = type metadata accessor for WaveformState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100402028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v4 = sub_10010FC20(&qword_10118E748);
  __chkstk_darwin(v4);
  v6 = v29 - v5;
  v32 = sub_10010FC20(&qword_10118E750);
  __chkstk_darwin(v32);
  v8 = v29 - v7;
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v29 - v15;
  v17 = *(v10 + 16);
  v30 = a1;
  v17(v29 - v15, a1, v9, v14);
  if ((*(v10 + 88))(v16, v9) == enum case for WaveformState.hidden(_:) || ((*(v10 + 8))(v16, v9), *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1) && (v20 = [objc_opt_self() standardUserDefaults], v21 = String._bridgeToObjectiveC()(), v22 = objc_msgSend(v20, "BOOLForKey:", v21), v20, v21, v22))
  {
    v18 = sub_10010FC20(&qword_10118E758);
    (*(*(v18 - 8) + 16))(v8, v31, v18);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E768, &qword_10118E758);
    sub_1004024EC();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v23 = sub_10010FC20(&qword_10118E758);
    (*(*(v23 - 8) + 16))(v6, v31, v23);
    v24 = static Alignment.center.getter();
    v26 = v25;
    v29[1] = v4;
    v27 = &v6[*(v4 + 36)];
    (v17)(v12, v30, v9);
    WaveformView.init(state:)();
    v28 = &v27[*(sub_10010FC20(&qword_10118E760) + 36)];
    *v28 = v24;
    v28[1] = v26;
    sub_10040247C(v6, v8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E768, &qword_10118E758);
    sub_1004024EC();
    _ConditionalContent<>.init(storage:)();
    return sub_1004026B0(v6);
  }
}

uint64_t sub_10040247C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118E748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004024EC()
{
  result = qword_10118E770;
  if (!qword_10118E770)
  {
    sub_1001109D0(&qword_10118E748);
    sub_1004025A4();
    sub_100020674(&qword_10118E790, &qword_10118E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E770);
  }

  return result;
}

unint64_t sub_1004025A4()
{
  result = qword_10118E778;
  if (!qword_10118E778)
  {
    sub_1001109D0(&qword_10118E780);
    sub_100020674(&qword_10118E768, &qword_10118E758);
    sub_10040265C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E778);
  }

  return result;
}

unint64_t sub_10040265C()
{
  result = qword_10118E788;
  if (!qword_10118E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E788);
  }

  return result;
}

uint64_t sub_1004026B0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118E748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100402718()
{
  result = qword_10118E798;
  if (!qword_10118E798)
  {
    sub_1001109D0(&qword_10118E7A0);
    sub_10040279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E798);
  }

  return result;
}

unint64_t sub_10040279C()
{
  result = qword_10118E7A8;
  if (!qword_10118E7A8)
  {
    sub_1001109D0(&qword_10118E7B0);
    sub_100020674(&qword_10118E768, &qword_10118E758);
    sub_1004024EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E7A8);
  }

  return result;
}

void sub_1004028A4()
{
  type metadata accessor for PlaylistPicker.Mode(319);
  if (v0 <= 0x3F)
  {
    sub_100117C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100402978()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_10002F678();
    if (v1 <= 0x3F)
    {
      sub_100117C38();
      if (v2 <= 0x3F)
      {
        sub_100402A50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100402A50()
{
  if (!qword_10119A0E0)
  {
    sub_100363C0C();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_10119A0E0);
    }
  }
}

uint64_t sub_100402AC8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = type metadata accessor for AccessibilityTraits();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v20 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118EA38);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_10010FC20(&qword_10118EA40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if (sub_100402E14())
  {
    v13 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
  }

  *v8 = v13;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v14 = sub_10010FC20(&qword_10118EA48);
  sub_1004030A0(v1, &v8[*(v14 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v15 = sub_100020674(&qword_10118EA50, &qword_10118EA38);
  View.accessibilityElement(children:)();
  (*(v18 + 8))(v5, v19);
  sub_1000095E8(v8, &qword_10118EA38);
  v16 = v20;
  static AccessibilityTraits.isButton.getter();
  v24 = v6;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v21 + 8))(v16, v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100402E14()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s23NewPlaylistOrFolderCellVMa(0);
  sub_1000089F8(v0 + *(v11 + 24), v6, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_1004030A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v74 = a2;
  v3 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10010FC20(&qword_10118EA58);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v10 = &v62 - v9;
  v69 = sub_10010FC20(&qword_10118EA60);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = &v62 - v11;
  v71 = sub_10010FC20(&qword_10118EA68);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v63 = &v62 - v13;
  v14 = sub_10010FC20(&qword_10118EA70);
  __chkstk_darwin(v14 - 8);
  v64 = &v62 - v15;
  v68 = sub_10010FC20(&qword_10118EA78);
  __chkstk_darwin(v68);
  v17 = &v62 - v16;
  v18 = sub_10010FC20(&qword_10118EA80);
  __chkstk_darwin(v18 - 8);
  v75 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v65 = &v62 - v21;
  sub_100406B30(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = sub_10010FC20(&unk_101182950);
  if (EnumCaseMultiPayload == 1)
  {
    v24 = 3;
  }

  else
  {
    v24 = 4;
  }

  (*(*(v23 - 8) + 56))(v8, v24, 11, v23);
  sub_100406B94(v5, type metadata accessor for PlaylistPicker.Mode);
  ArtworkImage.Placeholder.view(availableSize:)(v10, 48.0, 48.0);
  sub_100406B94(v8, type metadata accessor for ArtworkImage.Placeholder);
  Border.artwork.unsafeMutableAddressor();

  Corner.medium.unsafeMutableAddressor();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v66;
  View.border(_:corner:)();

  (*(v67 + 8))(v10, v26);
  v84 = v26;
  v85 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v63;
  v29 = v69;
  View.corner(_:)();
  (*(v70 + 8))(v12, v29);
  v84 = v29;
  v85 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v64;
  v31 = v71;
  View.placeholderStyle(_:)(sub_100407254, 0);
  (*(v73 + 8))(v28, v31);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v30, v17, &qword_10118EA70);
  v32 = &v17[*(v68 + 36)];
  v33 = v82;
  *v32 = v81;
  *(v32 + 1) = v33;
  *(v32 + 2) = v83;
  sub_100406BF4();
  v34 = v65;
  View.accessibilityHidden(_:)();
  sub_1000095E8(v17, &qword_10118EA78);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v73 = v84;
  v71 = v86;
  v70 = v88;
  v69 = v89;
  v80 = 1;
  v79 = v85;
  v78 = v87;
  v76 = sub_1004039D8();
  v77 = v35;
  sub_100009838();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v30) = v39;
  static Font.body.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;

  sub_10011895C(v36, v38, v30 & 1);

  static Color.primary.getter();
  v45 = Text.foregroundColor(_:)();
  v47 = v46;
  LODWORD(v72) = v48;
  v50 = v49;

  sub_10011895C(v40, v42, v44 & 1);

  v51 = v75;
  sub_1000089F8(v34, v75, &qword_10118EA80);
  v52 = v80;
  LOBYTE(v40) = v79;
  LOBYTE(v42) = v78;
  v53 = v51;
  v54 = v74;
  sub_1000089F8(v53, v74, &qword_10118EA80);
  v55 = sub_10010FC20(&qword_10118EA98);
  v56 = v54 + v55[12];
  *v56 = 0;
  *(v56 + 8) = v52;
  *(v56 + 16) = v73;
  *(v56 + 24) = v40;
  *(v56 + 32) = v71;
  *(v56 + 40) = v42;
  v57 = v69;
  *(v56 + 48) = v70;
  *(v56 + 56) = v57;
  v58 = v54 + v55[16];
  *v58 = v45;
  *(v58 + 8) = v47;
  LOBYTE(v57) = v72;
  v59 = v72 & 1;
  *(v58 + 16) = v72 & 1;
  *(v58 + 24) = v50;
  v60 = v54 + v55[20];
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_10021D0C0(v45, v47, v57 & 1);

  sub_1000095E8(v34, &qword_10118EA80);
  sub_10011895C(v45, v47, v59);

  return sub_1000095E8(v75, &qword_10118EA80);
}

uint64_t sub_1004039D8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100406B30(v1, v6);
  swift_getEnumCaseMultiPayload();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  sub_100406B94(v6, type metadata accessor for PlaylistPicker.Mode);
  return v7;
}

uint64_t sub_100403BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118E900);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v22 = sub_10010FC20(&qword_10118E908);
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v21 - v12;
  v24 = sub_10010FC20(&qword_10118E910);
  __chkstk_darwin(v24);
  v15 = &v21 - v14;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = sub_10010FC20(&qword_10118E918);
  sub_100403FBC(v2, &v10[*(v16 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_100020674(&qword_10118E920, &qword_10118E900);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v25);
  sub_1000095E8(v10, &qword_10118E900);
  v18 = v23;
  static AccessibilityTraits.isButton.getter();
  v29 = v8;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v18, v27);
  (*(v11 + 8))(v13, v19);
  sub_100405FC4();
  ModifiedContent<>.accessibilityInputLabels(_:)();

  return sub_1000095E8(v15, &qword_10118E910);
}

uint64_t sub_100403FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_10010FC20(&qword_10118E928);
  __chkstk_darwin(v3);
  v5 = v49 - v4;
  v6 = sub_10010FC20(&qword_10118E930);
  __chkstk_darwin(v6);
  v8 = v49 - v7;
  v9 = sub_10010FC20(&qword_10118E938);
  __chkstk_darwin(v9 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  v15 = sub_10010FC20(&qword_10118E940);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v49 - v19;
  __chkstk_darwin(v21);
  v23 = v49 - v22;
  v56 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v24 = sub_100404628();
  v55 = v14;
  if (v24)
  {
    v25 = static VerticalAlignment.top.getter();
  }

  else
  {
    v25 = static VerticalAlignment.center.getter();
  }

  *v20 = v25;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v26 = sub_10010FC20(&qword_10118E948);
  sub_1004048B4(a1, v56, &v20[*(v26 + 44)]);
  sub_10003D17C(v20, v23, &qword_10118E940);
  v27 = _s12PlaylistCellVMa(0);
  if (*(a1 + *(v27 + 28)) == 1)
  {
    v51 = v6;
    v52 = v5;
    v53 = v3;
    v28 = [objc_opt_self() tertiaryLabelColor];
    v29 = Color.init(_:)();
    v49[1] = v29;
    KeyPath = swift_getKeyPath();
    strcpy(v57, "person.2.fill");
    HIWORD(v57[1]) = -4864;
    v58 = KeyPath;
    v59 = v29;
    LocalizedStringKey.init(stringLiteral:)();
    v30 = v17;
    v31 = Text.init(_:tableName:bundle:comment:)();
    v32 = v11;
    v34 = v33;
    v36 = v35;
    sub_10010FC20(&qword_10118E960);
    sub_1004065A8();
    View.accessibilityLabel(_:)();
    v37 = v31;
    v17 = v30;
    v38 = v34;
    v11 = v32;
    sub_10011895C(v37, v38, v36 & 1);
  }

  else
  {
    if (*(a1 + *(v27 + 36)) != 1)
    {
      v43 = 1;
      v42 = v55;
      goto LABEL_10;
    }

    v51 = v6;
    v52 = v5;
    v53 = v3;
    v39 = [objc_opt_self() tertiaryLabelColor];
    v40 = Color.init(_:)();
    v41 = swift_getKeyPath();
    v57[0] = 0x2E6E6F7276656863;
    v57[1] = 0xEF64726177726F66;
    v58 = v41;
    v59 = v40;
    sub_10010FC20(&qword_10118E960);
    sub_1004065A8();
    View.accessibilityHidden(_:)();
  }

  v42 = v55;
  sub_1000089F8(v8, v52, &qword_10118E930);
  swift_storeEnumTagMultiPayload();
  sub_1004066B4();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v8, &qword_10118E930);
  v43 = 0;
LABEL_10:
  v44 = sub_10010FC20(&qword_10118E950);
  (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
  sub_1000089F8(v23, v17, &qword_10118E940);
  sub_1000089F8(v42, v11, &qword_10118E938);
  v45 = v54;
  sub_1000089F8(v17, v54, &qword_10118E940);
  v46 = sub_10010FC20(&qword_10118E958);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_1000089F8(v11, v45 + *(v46 + 64), &qword_10118E938);

  sub_1000095E8(v42, &qword_10118E938);
  sub_1000095E8(v23, &qword_10118E940);
  sub_1000095E8(v11, &qword_10118E938);
  return sub_1000095E8(v17, &qword_10118E940);
}

uint64_t sub_100404628()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12PlaylistCellVMa(0);
  sub_1000089F8(v0 + *(v11 + 44), v6, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_1004048B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_10010FC20(&qword_10118E980);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_10010FC20(&qword_10118E988);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = sub_10010FC20(&qword_10118E990);
  sub_100404C10(a1, a2, &v16[*(v17 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = v44;
  v40 = v42;
  v37 = v47;
  v38 = v46;
  v50 = 1;
  v49 = v43;
  v48 = v45;
  v18 = static HorizontalAlignment.leading.getter();
  if (sub_100404628())
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = (a1 + *(_s12PlaylistCellVMa(0) + 24));
    v22 = v21[1];
    if (v22)
    {
      v23 = *v21 & 0xFFFFFFFFFFFFLL;
      if ((v22 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 != 0;
      v20 = v24 == 0;
      v19 = v25 << 62;
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }
  }

  *v10 = v18;
  *(v10 + 1) = v19;
  v10[16] = v20;
  v26 = sub_10010FC20(&qword_10118E998);
  sub_10040596C(a1, a2, &v10[*(v26 + 44)]);
  sub_1000089F8(v16, v13, &qword_10118E988);
  v27 = v50;
  v28 = v49;
  v29 = v13;
  v30 = v48;
  sub_1000089F8(v10, v7, &qword_10118E980);
  v31 = v41;
  sub_1000089F8(v29, v41, &qword_10118E988);
  v32 = sub_10010FC20(&qword_10118E9A0);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = v27;
  v34 = v39;
  *(v33 + 16) = v40;
  *(v33 + 24) = v28;
  *(v33 + 32) = v34;
  *(v33 + 40) = v30;
  v35 = v37;
  *(v33 + 48) = v38;
  *(v33 + 56) = v35;
  sub_1000089F8(v7, v31 + *(v32 + 64), &qword_10118E980);
  sub_1000095E8(v10, &qword_10118E980);
  sub_1000095E8(v16, &qword_10118E988);
  sub_1000095E8(v7, &qword_10118E980);
  return sub_1000095E8(v29, &qword_10118E988);
}

uint64_t sub_100404C10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v110 = a3;
  v95 = type metadata accessor for ArtworkImage.ReusePolicy();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10010FC20(&unk_1011A1400);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v82 - v5;
  v99 = sub_10010FC20(&unk_10119F190);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v91 = &v82 - v6;
  v102 = sub_10010FC20(&unk_1011A1410);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v82 - v7;
  v100 = sub_10010FC20(&qword_10118E9D0);
  __chkstk_darwin(v100);
  v96 = &v82 - v8;
  v9 = sub_10010FC20(&qword_10118E9D8);
  __chkstk_darwin(v9 - 8);
  v90 = &v82 - v10;
  v105 = sub_10010FC20(&qword_10118E9E0);
  __chkstk_darwin(v105);
  v108 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v82 - v13;
  __chkstk_darwin(v14);
  v107 = &v82 - v15;
  v16 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v16 - 8);
  v18 = &v82 - v17;
  v19 = sub_10010FC20(&qword_10118E9E8);
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  v22 = sub_10010FC20(&qword_10118E9F0);
  __chkstk_darwin(v22 - 8);
  v87 = &v82 - v23;
  v88 = sub_10010FC20(&qword_10118E9F8) - 8;
  __chkstk_darwin(v88);
  v104 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  __chkstk_darwin(v28);
  v84 = &v82 - v29;
  v85 = Image.init(systemName:)();
  v86 = _s12PlaylistCellVMa(0);
  sub_10010FC20(&qword_10119A070);
  v83 = a1;
  ScaledMetric.wrappedValue.getter();
  v30 = type metadata accessor for Font.Design();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v82 = static Font.system(size:weight:design:)();
  sub_1000095E8(v18, &qword_101188610);
  KeyPath = swift_getKeyPath();
  v32 = static Edge.Set.leading.getter();
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v112) = 0;
  v41 = static Color.accentColor.getter();
  v42 = swift_getKeyPath();
  v43 = v19;
  v44 = &v21[*(v19 + 36)];
  v45 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v46 = enum case for Image.Scale.medium(_:);
  v47 = type metadata accessor for Image.Scale();
  v48 = v44 + v45;
  v49 = v84;
  (*(*(v47 - 8) + 104))(v48, v46, v47);
  *v44 = swift_getKeyPath();
  *v21 = v85;
  *(v21 + 1) = KeyPath;
  *(v21 + 2) = v82;
  v21[24] = v32;
  *(v21 + 4) = v34;
  *(v21 + 5) = v36;
  *(v21 + 6) = v38;
  *(v21 + 7) = v40;
  v21[64] = 0;
  *(v21 + 9) = v42;
  *(v21 + 10) = v41;
  v50 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
  v51 = *v50;
  v52 = v50[1];
  v53 = sub_100406770();

  v54 = v87;
  View.accessibilityLabel(_:)(v51, v52, v43, v53);

  sub_1000095E8(v21, &qword_10118E9E8);
  v55 = v83;
  if (*(v83 + *(v86 + 32)))
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.0;
  }

  sub_10003D17C(v54, v27, &qword_10118E9F0);
  *&v27[*(v88 + 44)] = v56;
  sub_10003D17C(v27, v49, &qword_10118E9F8);
  v57 = *(type metadata accessor for ArtworkImage.Info(0) + 20);
  ArtworkImage.Size.init(cgSize:)(0x4048000000000000, 0x4048000000000000, 0, &v111);
  v58 = v94;
  v59 = v92;
  v60 = v95;
  (*(v94 + 104))(v92, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v95);
  v61 = v89;
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v55, v55 + v57, &v111, v59, v89);
  (*(v58 + 8))(v59, v60);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v91;
  v64 = v97;
  View.corner(_:)();
  (*(v98 + 8))(v61, v64);
  Border.artwork.unsafeMutableAddressor();

  *&v112 = v64;
  *(&v112 + 1) = OpaqueTypeConformance2;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v93;
  v67 = v99;
  View.border(_:corner:)();

  (*(v101 + 8))(v63, v67);
  *&v112 = v67;
  *(&v112 + 1) = v65;
  v68 = v90;
  swift_getOpaqueTypeConformance2();
  v69 = v96;
  v70 = v102;
  View.placeholderStyle(_:)(sub_100407254, 0);
  (*(v103 + 8))(v66, v70);
  sub_10040696C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v69, &qword_10118E9D0);
  [v109 lineHeight];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v71 = v106;
  sub_10003D17C(v68, v106, &qword_10118E9D8);
  v72 = (v71 + *(v105 + 36));
  v73 = v117;
  v72[4] = v116;
  v72[5] = v73;
  v72[6] = v118;
  v74 = v113;
  *v72 = v112;
  v72[1] = v74;
  v75 = v115;
  v72[2] = v114;
  v72[3] = v75;
  v76 = v107;
  sub_10003D17C(v71, v107, &qword_10118E9E0);
  v77 = v104;
  sub_1000089F8(v49, v104, &qword_10118E9F8);
  v78 = v108;
  sub_1000089F8(v76, v108, &qword_10118E9E0);
  v79 = v110;
  sub_1000089F8(v77, v110, &qword_10118E9F8);
  v80 = sub_10010FC20(&qword_10118EA30);
  sub_1000089F8(v78, v79 + *(v80 + 48), &qword_10118E9E0);
  sub_1000095E8(v76, &qword_10118E9E0);
  sub_1000095E8(v49, &qword_10118E9F8);
  sub_1000095E8(v78, &qword_10118E9E0);
  return sub_1000095E8(v77, &qword_10118E9F8);
}

uint64_t sub_10040591C(uint64_t a1)
{
  v3[3] = &type metadata for Color;
  v3[4] = &protocol witness table for Color;
  v3[0] = static Color.accentColor.getter();
  return sub_100406AC0(v3, a1);
}

uint64_t sub_10040596C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v76 = a1;
  v86 = a3;
  v4 = sub_10010FC20(&qword_10118E9A8);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v77 = &v75 - v5;
  v80 = sub_10010FC20(&qword_10118E9B0) - 8;
  __chkstk_darwin(v80);
  v79 = &v75 - v6;
  v85 = sub_10010FC20(&qword_10118E9B8) - 8;
  __chkstk_darwin(v85);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v75 - v9;
  __chkstk_darwin(v10);
  v87 = &v75 - v11;
  v84 = _s12PlaylistCellVMa(0);
  v12 = (a1 + *(v84 + 20));
  v13 = v12[1];
  *&v103 = *v12;
  *(&v103 + 1) = v13;
  sub_100009838();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.body.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_10011895C(v14, v16, v18 & 1);

  static Color.primary.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10011895C(v19, v21, v23 & 1);

  *&v103 = v24;
  *(&v103 + 1) = v26;
  v28 &= 1u;
  LOBYTE(v104) = v28;
  *(&v104 + 1) = v30;
  v31 = v78;
  [v78 lineHeight];
  [v31 leading];
  v32 = v77;
  View.bodyHeadOutdent(_:)();
  sub_10011895C(v24, v26, v28);

  KeyPath = swift_getKeyPath();
  v34 = v79;
  (*(v82 + 32))(v79, v32, v83);
  v35 = v34 + *(v80 + 44);
  *v35 = KeyPath;
  *(v35 + 8) = 2;
  *(v35 + 16) = 0;
  v36 = v76;
  sub_100404628();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v81;
  sub_10003D17C(v34, v81, &qword_10118E9B0);
  v38 = (v37 + *(v85 + 44));
  v39 = v108;
  v38[4] = v107;
  v38[5] = v39;
  v38[6] = v109;
  v40 = v104;
  *v38 = v103;
  v38[1] = v40;
  v41 = v106;
  v38[2] = v105;
  v38[3] = v41;
  v42 = v87;
  sub_10003D17C(v37, v87, &qword_10118E9B8);
  v43 = (v36 + *(v84 + 24));
  v45 = *v43;
  v44 = v43[1];
  v46 = sub_100479D70(&off_10109AC50);

  v47 = Text.init(optional:options:)(v45, v44, v46);
  v49 = v48;
  v51 = v50;
  v85 = v52;
  v84 = static Font.footnote.getter();
  v53 = swift_getKeyPath();
  v81 = v53;
  v83 = static Color.secondary.getter();
  v54 = swift_getKeyPath();
  v80 = v54;
  LODWORD(v82) = static Edge.Set.leading.getter();
  sub_100404628();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v102 = 0;
  v63 = v88;
  sub_1000089F8(v42, v88, &qword_10118E9B8);
  v64 = v63;
  v65 = v86;
  sub_1000089F8(v64, v86, &qword_10118E9B8);
  v66 = (v65 + *(sub_10010FC20(&qword_10118E9C0) + 48));
  *&v89 = v47;
  *(&v89 + 1) = v49;
  v67 = v51;
  *&v90 = v51;
  v68 = v85;
  *(&v90 + 1) = v85;
  *&v91 = v53;
  v69 = v84;
  *(&v91 + 1) = v84;
  *&v92 = v54;
  v70 = v83;
  *(&v92 + 1) = v83;
  LOBYTE(v46) = v82;
  LOBYTE(v93) = v82;
  *(&v93 + 1) = v56;
  *&v94[0] = v58;
  *(&v94[0] + 1) = v60;
  *&v94[1] = v62;
  BYTE8(v94[1]) = 0;
  v71 = v90;
  *v66 = v89;
  v66[1] = v71;
  v72 = v92;
  v66[2] = v91;
  v66[3] = v72;
  v73 = v94[0];
  v66[4] = v93;
  v66[5] = v73;
  *(v66 + 89) = *(v94 + 9);
  sub_1000089F8(&v89, v95, &qword_10118E9C8);
  sub_1000095E8(v87, &qword_10118E9B8);
  v95[0] = v47;
  v95[1] = v49;
  v95[2] = v67;
  v95[3] = v68;
  v95[4] = v81;
  v95[5] = v69;
  v95[6] = v80;
  v95[7] = v70;
  v96 = v46;
  v97 = v56;
  v98 = v58;
  v99 = v60;
  v100 = v62;
  v101 = 0;
  sub_1000095E8(v95, &qword_10118E9C8);
  return sub_1000095E8(v88, &qword_10118E9B8);
}

void *sub_100405FC4()
{
  v1 = _s12PlaylistCellVMa(0);
  v27[0] = *(v0 + *(v1 + 20) + 8);
  v2 = (v0 + *(v1 + 24));
  v3 = v2[1];
  v27[1] = *v2;
  v27[2] = v3;

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v27[2 * v4];
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100498B7C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_100498B7C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v13 = *(v5 + 2);
  if (v13)
  {
    sub_10066CC74(0, v13, 0);
    sub_100009838();
    v14 = v5 + 40;
    do
    {

      v15 = Text.init<A>(_:)();
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        v25 = v16;
        v26 = v15;
        v22 = v17;
        v23 = v18;
        sub_10066CC74((v19 > 1), v20 + 1, 1);
        v17 = v22;
        v16 = v25;
        v15 = v26;
        v18 = v23;
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[4 * v20];
      v21[4] = v15;
      v21[5] = v16;
      *(v21 + 48) = v17 & 1;
      v21[7] = v18;
      v14 += 16;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004061FC@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v21);
  v3 = &v20 - v2;
  v4 = sub_10010FC20(&qword_101185BB8);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;

  v7 = Image.init(systemName:)();
  v8 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  *&v22 = v7;
  *(&v22 + 1) = KeyPath;
  *&v23 = v8;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  v10 = &v6[*(v4 + 36)];
  v11 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v12 = enum case for Image.Scale.small(_:);
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v14 = enum case for DynamicTypeSize.accessibility1(_:);
  v15 = type metadata accessor for DynamicTypeSize();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_100407058(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100239428();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v3, &qword_1011A1440);
    sub_1000095E8(v6, &qword_101185BB8);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v17 = (a1 + *(sub_10010FC20(&qword_10118EAB8) + 36));
    v18 = v23;
    *v17 = v22;
    v17[1] = v18;
    v17[2] = v24;
    result = sub_10010FC20(&qword_10118EAC0);
    v19 = a1 + *(result + 36);
    *v19 = 0;
    *(v19 + 8) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004065A8()
{
  result = qword_10118E968;
  if (!qword_10118E968)
  {
    sub_1001109D0(&qword_10118E960);
    sub_100406660();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E968);
  }

  return result;
}

unint64_t sub_100406660()
{
  result = qword_10118E970;
  if (!qword_10118E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E970);
  }

  return result;
}

unint64_t sub_1004066B4()
{
  result = qword_10118E978;
  if (!qword_10118E978)
  {
    sub_1001109D0(&qword_10118E930);
    sub_1004065A8();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E978);
  }

  return result;
}

unint64_t sub_100406770()
{
  result = qword_10118EA00;
  if (!qword_10118EA00)
  {
    sub_1001109D0(&qword_10118E9E8);
    sub_100406828();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA00);
  }

  return result;
}

unint64_t sub_100406828()
{
  result = qword_10118EA08;
  if (!qword_10118EA08)
  {
    sub_1001109D0(&qword_10118EA10);
    sub_1004068E0();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA08);
  }

  return result;
}

unint64_t sub_1004068E0()
{
  result = qword_10118EA18;
  if (!qword_10118EA18)
  {
    sub_1001109D0(&qword_10118EA20);
    sub_100238768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA18);
  }

  return result;
}

unint64_t sub_10040696C()
{
  result = qword_10118EA28;
  if (!qword_10118EA28)
  {
    sub_1001109D0(&qword_10118E9D0);
    sub_1001109D0(&unk_10119F190);
    sub_1001109D0(&unk_1011A1400);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA28);
  }

  return result;
}

uint64_t sub_100406AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118D2A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100406B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPicker.Mode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100406B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100406BF4()
{
  result = qword_10118EA88;
  if (!qword_10118EA88)
  {
    sub_1001109D0(&qword_10118EA78);
    sub_100406C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA88);
  }

  return result;
}

unint64_t sub_100406C80()
{
  result = qword_10118EA90;
  if (!qword_10118EA90)
  {
    sub_1001109D0(&qword_10118EA70);
    sub_1001109D0(&qword_10118EA60);
    sub_1001109D0(&qword_10118EA58);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA90);
  }

  return result;
}

unint64_t sub_100406DE4()
{
  result = qword_10118EAA0;
  if (!qword_10118EAA0)
  {
    sub_1001109D0(&qword_10118E910);
    sub_1001109D0(&qword_10118E900);
    sub_100020674(&qword_10118E920, &qword_10118E900);
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAA0);
  }

  return result;
}

unint64_t sub_100406F10()
{
  result = qword_10118EAA8;
  if (!qword_10118EAA8)
  {
    sub_1001109D0(&qword_10118EAB0);
    sub_1001109D0(&qword_10118EA38);
    sub_100020674(&qword_10118EA50, &qword_10118EA38);
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAA8);
  }

  return result;
}

uint64_t sub_100407058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004070A0()
{
  result = qword_10118EAC8;
  if (!qword_10118EAC8)
  {
    sub_1001109D0(&qword_10118EAC0);
    sub_10040712C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAC8);
  }

  return result;
}

unint64_t sub_10040712C()
{
  result = qword_10118EAD0;
  if (!qword_10118EAD0)
  {
    sub_1001109D0(&qword_10118EAB8);
    sub_1001109D0(&qword_101185BB8);
    sub_1001109D0(&qword_1011A1440);
    sub_100239428();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAD0);
  }

  return result;
}

unint64_t sub_100407258(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_10118EB20);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v33);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000160F8(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_1000095E8(v30, &qword_10118EB28);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_10000DD18(v31 + 8, v23);
        sub_1000095E8(v30, &qword_10118EB28);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_100019C10(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_10040DF5C(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1000095E8(&v24, &qword_10118E0A0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100407584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100019C10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_1004075E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000160B4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000DD18(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_10040764C(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1006C585C(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1006BE85C(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1006C811C();
        v11 = v13;
      }

      sub_100408638(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_10040770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1006C59A4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30);
    sub_1004081A8(a2, a3, v9);

    return sub_1000095E8(v9, &unk_101183F30);
  }

  return result;
}

uint64_t sub_1004077DC(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2 == 1)
  {
    result = sub_1006CCC5C(a4);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C8B54();
        v10 = v16;
      }

      sub_100020438(*(*(v10 + 56) + 24 * v8 + 8));
      result = sub_10040907C(v8, v10);
      *v5 = v10;
    }
  }

  else
  {
    v12 = a4;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    result = sub_1006C5FE0(a1 & 0x1FF, a2, a3, v12, v15);
    *v5 = v17;
  }

  return result;
}

uint64_t sub_1004078C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10006800C(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001621C(a2);
    *v2 = v6;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30);
    sub_1004082F0(a2, v7);
    sub_10001621C(a2);
    return sub_1000095E8(v7, &unk_101183F30);
  }

  return result;
}

_OWORD *sub_100407980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100016270(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1006C6DA4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30);
    v7 = sub_1006CCC5C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1006C992C();
        v11 = v13;
      }

      sub_100016270((*(v11 + 56) + 32 * v9), v14);
      sub_100409898(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1000095E8(v14, &unk_101183F30);
  }

  return result;
}

uint64_t sub_100407A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_10118EB30);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10010FC20(&unk_1011A4B90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000095E8(a1, &qword_10118EB30);
    v13 = sub_1006CCC5C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C9AA8();
        v17 = v21;
      }

      sub_10040DFB8(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_100409A2C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000095E8(v8, &qword_10118EB30);
  }

  else
  {
    sub_10040DFB8(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1006C6ED0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100407CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10010FC20(&qword_10118EB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Cache.Entry(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1000095E8(a1, &qword_10118EB40);
    sub_100408394(a2, a3, v9);

    return sub_1000095E8(v9, &qword_10118EB40);
  }

  else
  {
    sub_10040E028(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1006C716C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_100407E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1006C77AC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100019C10(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1006CAB18();
        v14 = v16;
      }

      result = sub_100409F88(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

BOOL sub_100407F70(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_100009F78(0, &qword_101197A30);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_100407FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_100009F78(0, &qword_10118EB08);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

void *sub_1004080D0(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1004081A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C8278();
      v10 = v12;
    }

    sub_100016270((*(v10 + 56) + 32 * v8), a3);
    sub_100408824(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_10040824C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C89B0();
      v10 = v12;
    }

    sub_100016270((*(v10 + 56) + 32 * v8), a3);
    sub_100408ECC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1004082F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000160B4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C8CD0();
      v9 = v11;
    }

    sub_10001621C(*(v9 + 48) + 40 * v7);
    sub_100016270((*(v9 + 56) + 32 * v7), a2);
    sub_10040921C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100408394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C9E3C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Cache.Entry(0);
    v19 = *(v12 - 8);
    sub_10040E028(v11 + *(v19 + 72) * v8, a3);
    sub_100409C14(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Cache.Entry(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1004084EC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1006BEB80(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100409DFC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1006CA358();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_1005A32F4(v4, v7);

  v9 = sub_1006BEB80(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100409DFC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100408638(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100408824(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1004089D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 32 * v6 + 24);
      Hasher.init(_seed:)();

      String.hash(into:)();
      if (v9)
      {
        String.hash(into:)();
      }

      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v11)
      {
LABEL_12:
        v12 = *(a2 + 48);
        v13 = (v12 + 32 * v3);
        v14 = (v12 + 32 * v6);
        if (v3 != v6 || v13 >= v14 + 2)
        {
          v15 = v14[1];
          *v13 = *v14;
          v13[1] = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100408BAC(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for EditorialVideoArtworkFlavor();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10040E08C(qword_10118EB48, &type metadata accessor for EditorialVideoArtworkFlavor);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100408ECC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10040907C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10040921C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_1000160F8(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10001621C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1004093C0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 16 * v3);
        v12 = (v10 + 16 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v14 >= v15 + 1))
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100409578(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for IndexPath();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10040E08C(&qword_10118EB38, &type metadata accessor for IndexPath);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

Swift::Int sub_100409898(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100409A2C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_10010FC20(&unk_1011A4B90) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100409C14(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 16 * v3);
      v12 = (v10 + 16 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for Cache.Entry(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100409DFC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_100409F88(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 16 * v3);
        v12 = (v10 + 16 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10040A134(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = type metadata accessor for URLRequest();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_10040A268, 0, 0);
}

uint64_t sub_10040A268()
{
  v1 = v0[33];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 urlForBagKey:v2];

  if (v3)
  {
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[37];
    v7 = v0[38];
    v8 = v0[32];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v4, v5, v6);
    v9 = UIImageJPEGRepresentation(v8, 0.8);
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v0[42] = v11;
    v0[43] = v13;
    (*(v0[38] + 16))(v0[39], v0[41], v0[37]);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v17.value._countAndFlagsBits = 0x706A2F6567616D69;
    v18._countAndFlagsBits = 0x2D746E65746E6F43;
    v18._object = 0xEC00000065707954;
    v17.value._object = 0xEA00000000006765;
    URLRequest.setValue(_:forHTTPHeaderField:)(v17, v18);
    v19 = [objc_allocWithZone(NSUUID) init];
    v20 = [v19 UUIDString];
    if (v20)
    {
      v21 = v20;

      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 stringByAppendingPathExtension:v22];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27._countAndFlagsBits = 0xD000000000000013;
      v27._object = 0x8000000100E49920;
      v28.value._countAndFlagsBits = v24;
      v28.value._object = v26;
      URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);

      sub_10002D6A4(v11, v13);
      URLRequest.httpBody.setter();
      sub_100009F78(0, &qword_1011BE880);
      v29 = static ICUserIdentity.active.getter();
      v30 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v29];
      v0[44] = v30;

      v31 = objc_allocWithZone(ICStoreURLRequest);
      v32 = v30;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      v34 = [v31 initWithURLRequest:isa requestContext:v32];
      v0[45] = v34;

      sub_100009F78(0, &qword_10118EAF8);
      v35 = static ICURLSessionManager.musicSession.getter();
      v0[46] = v35;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_10040A730;
      v36 = swift_continuation_init();
      v0[17] = sub_10010FC20(&qword_10118EB00);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10040E398;
      v0[13] = &unk_1010AB0B0;
      v0[14] = v36;
      [v35 enqueueUploadRequest:v34 withCompletionHandler:v0 + 10];
      v20 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v20);
  }

  else
  {
    sub_10040DF08();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x8000000100E49900;
    *(v14 + 16) = 1;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10040A730()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_10040AB50;
  }

  else
  {
    v2 = sub_10040A840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10040A840()
{
  v1 = *(v0 + 248);

  v33 = v1;
  v2 = [v1 parsedBodyDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 216) = 0x6E656B6F74;
    *(v0 + 224) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_1000160B4(v0 + 144), (v6 & 1) != 0))
    {
      sub_10000DD18(*(v4 + 56) + 32 * v5, v0 + 184);
      sub_10001621C(v0 + 144);

      if (swift_dynamicCast())
      {
        v8 = *(v0 + 352);
        v7 = *(v0 + 360);
        v10 = *(v0 + 336);
        v9 = *(v0 + 344);
        v11 = *(v0 + 328);
        v12 = *(v0 + 304);
        v13 = *(v0 + 288);
        v29 = *(v0 + 296);
        v15 = *(v0 + 272);
        v14 = *(v0 + 280);

        sub_100029CA4(v10, v9);
        (*(v14 + 8))(v13, v15);
        (*(v12 + 8))(v11, v29);
        v17 = *(v0 + 232);
        v16 = *(v0 + 240);

        v18 = *(v0 + 8);

        return v18(v17, v16);
      }
    }

    else
    {

      sub_10001621C(v0 + 144);
    }
  }

  v21 = *(v0 + 352);
  v20 = *(v0 + 360);
  v23 = *(v0 + 336);
  v22 = *(v0 + 344);
  v24 = *(v0 + 304);
  v31 = *(v0 + 296);
  v32 = *(v0 + 328);
  v25 = *(v0 + 280);
  v30 = *(v0 + 288);
  v26 = *(v0 + 272);
  sub_10040DF08();
  swift_allocError();
  *v27 = xmmword_100EC78D0;
  *(v27 + 16) = 2;
  swift_willThrow();

  sub_100029CA4(v23, v22);
  (*(v25 + 8))(v30, v26);
  (*(v24 + 8))(v32, v31);

  v28 = *(v0 + 8);

  return v28();
}