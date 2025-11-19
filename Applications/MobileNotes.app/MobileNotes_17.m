uint64_t sub_1002AAF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002A76F0(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t sub_1002AB010(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BE7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AB0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002AB118()
{
  result = qword_1006C17B8;
  if (!qword_1006C17B8)
  {
    sub_1000054A4(255, &qword_1006C2D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C17B8);
  }

  return result;
}

uint64_t sub_1002AB1A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v3 = sub_10015DA04(&qword_1006C2898);
  __chkstk_darwin(v3 - 8);
  v154 = &v129 - v4;
  v5 = sub_10015DA04(&qword_1006C28A0);
  v6 = __chkstk_darwin(v5 - 8);
  v151 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v152 = &v129 - v8;
  v9 = sub_10015DA04(&qword_1006C28A8);
  v10 = __chkstk_darwin(v9 - 8);
  v164 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v144 = &v129 - v12;
  v13 = sub_10015DA04(&unk_1006C1710);
  v14 = __chkstk_darwin(v13 - 8);
  v158 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v134 = &v129 - v16;
  v17 = sub_10015DA04(&qword_1006C28B0);
  v18 = __chkstk_darwin(v17 - 8);
  v156 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v155 = &v129 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = &v129 - v23;
  v24 = __chkstk_darwin(v22);
  v148 = &v129 - v25;
  v26 = __chkstk_darwin(v24);
  v139 = &v129 - v27;
  v28 = __chkstk_darwin(v26);
  v133 = &v129 - v29;
  __chkstk_darwin(v28);
  v31 = &v129 - v30;
  v32 = sub_10015DA04(&qword_1006C28B8);
  v33 = __chkstk_darwin(v32 - 8);
  v150 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v140 = &v129 - v36;
  v37 = __chkstk_darwin(v35);
  v135 = &v129 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v129 - v40;
  __chkstk_darwin(v39);
  v43 = &v129 - v42;
  v44 = type metadata accessor for Date();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v46(a2, 1, 1, v44);
  v47 = _s8ActivityVMa();
  v48 = v47[5];
  v49 = type metadata accessor for ActivityEventObject();
  v136 = *(v49 - 8);
  v50 = *(v136 + 56);
  v138 = v48;
  v137 = v49;
  v159 = v50;
  v160 = v136 + 56;
  (v50)(a2 + v48, 1, 1);
  v51 = v47[6];
  v52 = type metadata accessor for ActivityEventParticipant();
  v141 = *(v52 - 8);
  v53 = *(v141 + 56);
  v143 = v51;
  v162 = v141 + 56;
  v163 = v52;
  v161 = v53;
  (v53)(a2 + v51, 1, 1);
  v165 = v47;
  v54 = v47[7];
  v55 = type metadata accessor for PersistedActivityEvent.Activities();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v157 = a2;
  v149 = v54;
  v147 = v55;
  v146 = v57;
  v145 = v56 + 56;
  (v57)(a2 + v54, 1, 1);
  sub_10019547C();
  static ICCloudSyncingObject.persistedActivityEvent(for:)();
  static ICCloudSyncingObject.fallbackActivityEvent(for:)();
  v169 = v43;
  sub_100006038(v43, v41, &qword_1006C28B8);
  v58 = type metadata accessor for PersistedActivityEvent();
  v59 = *(v58 - 8);
  v167 = *(v59 + 48);
  v168 = v59 + 48;
  if (v167(v41, 1, v58) == 1)
  {
    v131 = v45;
    sub_1000073B4(v41, &qword_1006C28B8);
    v130 = v46;
    v46(v158, 1, 1, v44);
    v132 = v31;
    v60 = v133;
    sub_100006038(v31, v133, &qword_1006C28B0);
    v61 = type metadata accessor for FallbackActivityEvent();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_1000073B4(v60, &qword_1006C28B0);
      v63 = 1;
      v64 = v169;
      v65 = v144;
      v66 = v139;
      v67 = v134;
    }

    else
    {
      v67 = v134;
      FallbackActivityEvent.timestamp.getter();
      (*(v62 + 8))(v60, v61);
      v63 = 0;
      v64 = v169;
      v65 = v144;
      v66 = v139;
    }

    v70 = v135;
    v130(v67, v63, 1, v44);
    v71 = v158;
    v72 = (*(v131 + 48))(v158, 1, v44);
    v31 = v132;
    if (v72 != 1)
    {
      sub_1000073B4(v71, &unk_1006C1710);
    }
  }

  else
  {
    v68 = v158;
    PersistedActivityEvent.timestamp.getter();
    (*(v59 + 8))(v41, v58);
    v46(v68, 0, 1, v44);
    v69 = v134;
    (*(v45 + 32))(v134, v68, v44);
    v46(v69, 0, 1, v44);
    v64 = v169;
    v65 = v144;
    v66 = v139;
    v67 = v69;
    v70 = v135;
  }

  v73 = v67;
  v74 = v157;
  sub_10000A49C(v73, v157, &unk_1006C1710);
  sub_100006038(v64, v70, &qword_1006C28B8);
  v75 = v167(v70, 1, v58);
  v76 = v151;
  v77 = v164;
  v78 = v137;
  v142 = v59;
  if (v75 == 1)
  {
    v79 = v58;
    sub_1000073B4(v70, &qword_1006C28B8);
    v159(v77, 1, 1, v78);
    sub_100006038(v31, v66, &qword_1006C28B0);
    v80 = type metadata accessor for FallbackActivityEvent();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v66, 1, v80) == 1)
    {
      sub_1000073B4(v66, &qword_1006C28B0);
      v82 = 1;
    }

    else
    {
      FallbackActivityEvent.object.getter();
      (*(v81 + 8))(v66, v80);
      v82 = 0;
    }

    v84 = v148;
    v159(v65, v82, 1, v78);
    v85 = v164;
    v86 = (*(v136 + 48))(v164, 1, v78);
    v58 = v79;
    v59 = v142;
    if (v86 != 1)
    {
      sub_1000073B4(v85, &qword_1006C28A8);
    }
  }

  else
  {
    PersistedActivityEvent.object.getter();
    (*(v59 + 8))(v70, v58);
    v83 = v159;
    v159(v77, 0, 1, v78);
    (*(v136 + 32))(v65, v77, v78);
    v83(v65, 0, 1, v78);
    v84 = v148;
  }

  sub_10000A49C(v65, v74 + v138, &qword_1006C28A8);
  v87 = v140;
  sub_100006038(v169, v140, &qword_1006C28B8);
  v88 = v167(v87, 1, v58);
  v89 = v156;
  if (v88 == 1)
  {
    v90 = v58;
    sub_1000073B4(v87, &qword_1006C28B8);
    v161(v76, 1, 1, v163);
    sub_100006038(v31, v84, &qword_1006C28B0);
    v91 = type metadata accessor for FallbackActivityEvent();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v84, 1, v91) == 1)
    {
      sub_1000073B4(v84, &qword_1006C28B0);
      v93 = 1;
      v94 = v152;
    }

    else
    {
      v94 = v152;
      FallbackActivityEvent.participant.getter();
      (*(v92 + 8))(v84, v91);
      v93 = 0;
    }

    v97 = v163;
    v161(v94, v93, 1, v163);
    v98 = (*(v141 + 48))(v76, 1, v97);
    v58 = v90;
    v59 = v142;
    if (v98 != 1)
    {
      sub_1000073B4(v76, &qword_1006C28A0);
    }
  }

  else
  {
    PersistedActivityEvent.participant.getter();
    (*(v59 + 8))(v87, v58);
    v95 = v163;
    v96 = v161;
    v161(v76, 0, 1, v163);
    v94 = v152;
    (*(v141 + 32))(v152, v76, v95);
    v96(v94, 0, 1, v95);
  }

  sub_10000A49C(v94, v74 + v143, &qword_1006C28A0);
  v99 = v150;
  sub_100006038(v169, v150, &qword_1006C28B8);
  if (v167(v99, 1, v58) == 1)
  {
    sub_1000073B4(v99, &qword_1006C28B8);
    v100 = 1;
    v101 = v154;
  }

  else
  {
    v101 = v154;
    PersistedActivityEvent.activity.getter();
    (*(v59 + 8))(v99, v58);
    v100 = 0;
  }

  v102 = v31;
  v146(v101, v100, 1, v147);
  sub_10000A49C(v101, v74 + v149, &qword_1006C2898);
  v103 = v153;
  sub_100006038(v31, v153, &qword_1006C28B0);
  v104 = type metadata accessor for FallbackActivityEvent();
  v105 = *(v104 - 8);
  v106 = *(v105 + 48);
  if (v106(v103, 1, v104) == 1)
  {
    sub_1000073B4(v103, &qword_1006C28B0);
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v107 = FallbackActivityEvent.typeName.getter();
    v108 = v109;
    (*(v105 + 8))(v103, v104);
  }

  v110 = v165;
  v111 = (v74 + v165[8]);
  *v111 = v107;
  v111[1] = v108;
  v112 = v155;
  sub_100006038(v102, v155, &qword_1006C28B0);
  v113 = v106(v112, 1, v104);
  if (v113 == 1)
  {
    sub_1000073B4(v112, &qword_1006C28B0);
    v114 = 0;
  }

  else
  {
    v115 = v112;
    v114 = FallbackActivityEvent.minimumSupportedNotesVersion.getter();
    v116 = v115;
    v110 = v165;
    (*(v105 + 8))(v116, v104);
  }

  v117 = v74 + v110[9];
  *v117 = v114;
  *(v117 + 8) = v113 == 1;
  sub_100006038(v102, v89, &qword_1006C28B0);
  if (v106(v89, 1, v104) == 1)
  {
    sub_1000073B4(v89, &qword_1006C28B0);
    v118 = 0;
    v119 = 0;
  }

  else
  {
    v118 = FallbackActivityEvent.localizedFallbackTitle.getter();
    v119 = v120;
    (*(v105 + 8))(v89, v104);
  }

  v121 = (v74 + v110[10]);
  *v121 = v118;
  v121[1] = v119;
  v122 = v166;
  v123 = [v166 data];
  v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v125;

  sub_1000073B4(v102, &qword_1006C28B0);
  result = sub_1000073B4(v169, &qword_1006C28B8);
  v128 = (v74 + v110[11]);
  *v128 = v124;
  v128[1] = v126;
  return result;
}

uint64_t _s8ActivityVMa()
{
  result = qword_1006C2918;
  if (!qword_1006C2918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AC34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v65 = a2;
  v3 = sub_10015DA04(&qword_1006C2898);
  __chkstk_darwin(v3 - 8);
  v56 = &v48 - v4;
  v5 = type metadata accessor for PersistedActivityEvent.Activities();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = __chkstk_darwin(v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v48 - v8;
  v9 = sub_10015DA04(&qword_1006C28A0);
  __chkstk_darwin(v9 - 8);
  v60 = &v48 - v10;
  v11 = type metadata accessor for ActivityEventParticipant();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = __chkstk_darwin(v11);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v48 - v14;
  v15 = sub_10015DA04(&qword_1006C28A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for ActivityEventObject();
  v64 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v48 - v21;
  v22 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v22 - 8);
  v24 = &v48 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v53 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v48 - v29;
  sub_100006038(v2, v24, &unk_1006C1710);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v31 = &unk_1006C1710;
    v32 = v24;
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
    v33 = _s8ActivityVMa();
    sub_100006038(v2 + v33[5], v17, &qword_1006C28A8);
    v34 = v64;
    if ((*(v64 + 48))(v17, 1, v18) == 1)
    {
      (*(v26 + 8))(v30, v25);
      v31 = &qword_1006C28A8;
      v32 = v17;
    }

    else
    {
      v49 = v30;
      v35 = v63;
      (*(v34 + 32))(v63, v17, v18);
      v36 = v60;
      sub_100006038(v2 + v33[6], v60, &qword_1006C28A0);
      v38 = v61;
      v37 = v62;
      if ((*(v61 + 48))(v36, 1, v62) == 1)
      {
        (*(v34 + 8))(v35, v18);
        (*(v26 + 8))(v49, v25);
        v31 = &qword_1006C28A0;
        v32 = v36;
      }

      else
      {
        v48 = v18;
        v39 = v59;
        (*(v38 + 32))(v59, v36, v37);
        v40 = v56;
        sub_100006038(v2 + v33[7], v56, &qword_1006C2898);
        v42 = v57;
        v41 = v58;
        if ((*(v57 + 48))(v40, 1, v58) != 1)
        {
          (*(v42 + 32))(v55, v40, v41);
          Date.addingTimeInterval(_:)();
          (*(v34 + 16))(v54, v63, v48);
          (*(v38 + 16))(v50, v39, v37);
          v47 = v55;
          (*(v42 + 16))(v51, v55, v41);
          v44 = v65;
          PersistedActivityEvent.init(timestamp:object:participant:activity:)();
          (*(v42 + 8))(v47, v41);
          (*(v38 + 8))(v59, v62);
          (*(v34 + 8))(v63, v48);
          (*(v26 + 8))(v49, v25);
          v43 = 0;
          goto LABEL_10;
        }

        (*(v38 + 8))(v39, v37);
        (*(v34 + 8))(v63, v48);
        (*(v26 + 8))(v49, v25);
        v31 = &qword_1006C2898;
        v32 = v40;
      }
    }
  }

  sub_1000073B4(v32, v31);
  v43 = 1;
  v44 = v65;
LABEL_10:
  v45 = type metadata accessor for PersistedActivityEvent();
  return (*(*(v45 - 8) + 56))(v44, v43, 1, v45);
}

uint64_t sub_1002ACB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v62 = a2;
  v4 = sub_10015DA04(&qword_1006C28A0);
  __chkstk_darwin(v4 - 8);
  v58 = &v47 - v5;
  v6 = type metadata accessor for ActivityEventParticipant();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = __chkstk_darwin(v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v47 - v9;
  v10 = sub_10015DA04(&qword_1006C28A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ActivityEventObject();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v47 - v17;
  v18 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v18 - 8);
  v20 = &v47 - v19;
  v21 = type metadata accessor for Date();
  v22 = __chkstk_darwin(v21);
  v53 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v26 = v3;
  v27 = v3;
  v29 = v28;
  sub_100006038(v27, v20, &unk_1006C1710);
  if ((*(v29 + 48))(v20, 1, v21) == 1)
  {
    sub_1000073B4(v20, &unk_1006C1710);
LABEL_12:
    v44 = 1;
    goto LABEL_13;
  }

  (*(v29 + 32))(v25, v20, v21);
  v30 = _s8ActivityVMa();
  sub_100006038(v26 + v30[5], v12, &qword_1006C28A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v29 + 8))(v25, v21);
    sub_1000073B4(v12, &qword_1006C28A8);
    goto LABEL_12;
  }

  v52 = v25;
  v31 = v61;
  (*(v14 + 32))(v61, v12, v13);
  v32 = v58;
  sub_100006038(v26 + v30[6], v58, &qword_1006C28A0);
  v34 = v59;
  v33 = v60;
  if ((*(v59 + 48))(v32, 1, v60) == 1)
  {
    (*(v14 + 8))(v31, v13);
    (*(v29 + 8))(v52, v21);
    sub_1000073B4(v32, &qword_1006C28A0);
    goto LABEL_12;
  }

  v35 = v13;
  v36 = v57;
  (*(v34 + 32))(v57, v32, v33);
  v37 = v26 + v30[9];
  if (*(v37 + 8) == 1 || (v38 = (v26 + v30[8]), (v39 = v38[1]) == 0) || (v40 = (v26 + v30[10]), !v40[1]))
  {
    (*(v34 + 8))(v36, v33);
    (*(v14 + 8))(v61, v35);
    (*(v29 + 8))(v52, v21);
    goto LABEL_12;
  }

  v58 = *v37;
  v51 = *v38;
  v41 = *v40;
  v49 = v39;
  v50 = v41;

  Date.addingTimeInterval(_:)();
  v42 = *(v14 + 16);
  v48 = v35;
  v42(v54, v61, v35);
  v43 = v60;
  (*(v34 + 16))(v55, v36, v60);
  FallbackActivityEvent.init(timestamp:object:participant:minimumSupportedNotesVersion:typeName:localizedFallbackTitle:)();
  (*(v34 + 8))(v36, v43);
  (*(v14 + 8))(v61, v48);
  (*(v29 + 8))(v52, v21);
  v44 = 0;
LABEL_13:
  v45 = type metadata accessor for FallbackActivityEvent();
  return (*(*(v45 - 8) + 56))(v62, v44, 1, v45);
}

void sub_1002AD254()
{
  sub_1002AD3D8(319, &qword_1006C0EE8, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1002AD3D8(319, &qword_1006C2928, &type metadata accessor for ActivityEventObject);
    if (v1 <= 0x3F)
    {
      sub_1002AD3D8(319, &qword_1006C2930, &type metadata accessor for ActivityEventParticipant);
      if (v2 <= 0x3F)
      {
        sub_1002AD3D8(319, &qword_1006C2938, &type metadata accessor for PersistedActivityEvent.Activities);
        if (v3 <= 0x3F)
        {
          sub_100006994();
          if (v4 <= 0x3F)
          {
            sub_1002AD3D8(319, &unk_1006C2940, type metadata accessor for NotesVersion);
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

void sub_1002AD3D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1002AD42C(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C29B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_1002AE2FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for Date();
  sub_1002AE410(&qword_1006C1230, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s8ActivityVMa();
    LOBYTE(v16) = 1;
    type metadata accessor for ActivityEventObject();
    sub_1002AE410(&qword_1006C29C0, &type metadata accessor for ActivityEventObject);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    type metadata accessor for ActivityEventParticipant();
    sub_1002AE410(&qword_1006C29C8, &type metadata accessor for ActivityEventParticipant);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    type metadata accessor for PersistedActivityEvent.Activities();
    sub_1002AE410(&qword_1006C29D0, &type metadata accessor for PersistedActivityEvent.Activities);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v3 + *(v9 + 36);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v16 = v11;
    LOBYTE(v17) = v10;
    v18 = 5;
    type metadata accessor for NotesVersion(0);
    sub_1002AE410(&qword_1006C29D8, type metadata accessor for NotesVersion);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = (v3 + *(v9 + 44));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 7;
    sub_1001C4E38(v16, v13);
    sub_100196888();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10019671C(v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002AD854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_10015DA04(&qword_1006C2898);
  __chkstk_darwin(v3 - 8);
  v51 = &v50 - v4;
  v5 = sub_10015DA04(&qword_1006C28A0);
  __chkstk_darwin(v5 - 8);
  v53 = &v50 - v6;
  v7 = sub_10015DA04(&qword_1006C28A8);
  __chkstk_darwin(v7 - 8);
  v52 = &v50 - v8;
  v9 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v57 = sub_10015DA04(&qword_1006C2988);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v50 - v11;
  v13 = _s8ActivityVMa();
  __chkstk_darwin(v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = v13[5];
  v18 = type metadata accessor for ActivityEventObject();
  v19 = *(*(v18 - 8) + 56);
  v61 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = v13[6];
  v21 = type metadata accessor for ActivityEventParticipant();
  v22 = *(*(v21 - 8) + 56);
  v60 = v20;
  v22(&v15[v20], 1, 1, v21);
  v23 = v13[7];
  v24 = type metadata accessor for PersistedActivityEvent.Activities();
  v25 = *(*(v24 - 8) + 56);
  v59 = v23;
  v63 = v15;
  v25(&v15[v23], 1, 1, v24);
  v26 = a1[3];
  v62 = a1;
  sub_10017CC60(a1, v26);
  sub_1002AE2FC();
  v56 = v12;
  v27 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v31 = v61;
    v32 = v59;
    v33 = v60;
    sub_100009F60(v62);
    v34 = v63;
    sub_1000073B4(v63, &unk_1006C1710);
    sub_1000073B4(v34 + v31, &qword_1006C28A8);
    sub_1000073B4(v34 + v33, &qword_1006C28A0);
    sub_1000073B4(v34 + v32, &qword_1006C2898);
  }

  else
  {
    v29 = v52;
    v28 = v53;
    v58 = v13;
    LOBYTE(v64) = 0;
    sub_1002AE410(&qword_1006C1220, &type metadata accessor for Date);
    v30 = v54;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v30, v63, &unk_1006C1710);
    LOBYTE(v64) = 1;
    sub_1002AE410(&qword_1006C2998, &type metadata accessor for ActivityEventObject);
    v35 = v29;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v63;
    sub_10000A49C(v35, &v63[v61], &qword_1006C28A8);
    LOBYTE(v64) = 2;
    sub_1002AE410(&qword_1006C29A0, &type metadata accessor for ActivityEventParticipant);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v28, v36 + v60, &qword_1006C28A0);
    LOBYTE(v64) = 3;
    sub_1002AE410(&qword_1006C29A8, &type metadata accessor for PersistedActivityEvent.Activities);
    v37 = v51;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v37, v36 + v59, &qword_1006C2898);
    LOBYTE(v64) = 4;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v58;
    v40 = (v36 + v58[8]);
    *v40 = v38;
    v40[1] = v41;
    type metadata accessor for NotesVersion(0);
    v65 = 5;
    sub_1002AE410(&qword_1006C29B0, type metadata accessor for NotesVersion);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v36 + v39[9];
    v43 = BYTE8(v64);
    *v42 = v64;
    *(v42 + 8) = v43;
    LOBYTE(v64) = 6;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = (v36 + v39[10]);
    *v45 = v44;
    v45[1] = v46;
    v65 = 7;
    sub_100196770();
    v47 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v55 + 8))(v47, v57);
    v48 = v63;
    *&v63[v39[11]] = v64;
    sub_1002AE350(v48, v50);
    sub_100009F60(v62);
    return sub_1002AE3B4(v48);
  }
}

uint64_t sub_1002AE10C()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6B6361626C6C6166;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 6)
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7069636974726170;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7463656A626FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002AE220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002AE6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002AE254(uint64_t a1)
{
  v2 = sub_1002AE2FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002AE290(uint64_t a1)
{
  v2 = sub_1002AE2FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002AE2FC()
{
  result = qword_1006C2990;
  if (!qword_1006C2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2990);
  }

  return result;
}

uint64_t sub_1002AE350(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE3B4(uint64_t a1)
{
  v2 = _s8ActivityVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AE410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8ActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002AE5AC()
{
  result = qword_1006C29E0;
  if (!qword_1006C29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C29E0);
  }

  return result;
}

unint64_t sub_1002AE604()
{
  result = qword_1006C29E8;
  if (!qword_1006C29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C29E8);
  }

  return result;
}

unint64_t sub_1002AE65C()
{
  result = qword_1006C29F0;
  if (!qword_1006C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C29F0);
  }

  return result;
}

uint64_t sub_1002AE6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010056AED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1002AE984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10015DA04(&qword_1006C29F8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10015DA04(&qword_1006C2A00);
  sub_1002AEB0C(a1, a2, a3, a4, &v13[*(v14 + 44)]);
  v15 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v11 + 44)];
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(v15) = static Edge.Set.horizontal.getter();
  [objc_opt_self() deviceIsMac];
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10002F398(v13, a5);
  result = sub_10015DA04(&qword_1006C2A08);
  v27 = a5 + *(result + 36);
  *v27 = v15;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_1002AEB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v135 = a4;
  LODWORD(v134) = a3;
  v145 = a2;
  v133 = a1;
  v151 = a5;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v132 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10015DA04(&qword_1006C0B30);
  v137 = *(v142 - 8);
  __chkstk_darwin(v142);
  v136 = &v130 - v8;
  v144 = sub_10015DA04(&qword_1006C2A10);
  v138 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v130 - v9;
  v139 = sub_10015DA04(&qword_1006C2A18);
  __chkstk_darwin(v139);
  v141 = (&v130 - v10);
  v154 = sub_10015DA04(&qword_1006C2A20);
  __chkstk_darwin(v154);
  v143 = &v130 - v11;
  v152 = sub_10015DA04(&qword_1006C2A28);
  __chkstk_darwin(v152);
  v153 = (&v130 - v12);
  v13 = sub_10015DA04(&qword_1006C2A30);
  v14 = __chkstk_darwin(v13 - 8);
  v150 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v146 = &v130 - v16;
  v17 = objc_opt_self();
  [v17 cipherVersionForObject:a2];
  v18 = ICCipherNameForCipherVersion();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&v158 = v19;
  *(&v158 + 1) = v21;
  sub_10019E0AC();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v21) = v25;
  static Font.subheadline.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;

  sub_1001B39D4(v22, v24, v21 & 1);

  static Font.Weight.medium.getter();
  v149 = Text.fontWeight(_:)();
  v148 = v31;
  v147 = v32;
  v34 = v33;
  sub_1001B39D4(v26, v28, v30 & 1);

  v35 = v145;
  v36 = [v17 cipherVersionForObject:v145];
  if (v36 != [v17 userSelectedCipherVersionForObject:v35])
  {
    v131 = v34;
    v48 = v146;
    if ([v17 userSelectedCipherVersionForObject:v35] == 2)
    {
      v49 = [v35 account];
      if (!v49 || (v50 = v49, v51 = [v49 accountData], v50, !v51) || (v52 = objc_msgSend(v51, "supportsV1Neo"), v51, (v52 & 1) == 0))
      {
        static Color.secondary.getter();
        v81 = Text.foregroundColor(_:)();
        v83 = v82;
        v85 = v84;
        v87 = v86;

        v88 = v85 & 1;
        *&v155 = v81;
        *(&v155 + 1) = v83;
        *&v156 = v85 & 1;
        *(&v156 + 1) = v87;
        LOBYTE(v157) = 1;
        sub_1001B39C4(v81, v83, v85 & 1);

        _ConditionalContent<>.init(storage:)();
        v155 = v158;
        v156 = v159;
        v157 = v160;
        sub_10015DA04(&qword_1006C2A50);
        sub_1002B02D0();
        _ConditionalContent<>.init(storage:)();
        v89 = v160;
        v90 = v161;
        v91 = v159;
        v92 = v153;
        *v153 = v158;
        v92[1] = v91;
        *(v92 + 32) = v89;
        *(v92 + 33) = v90;
        swift_storeEnumTagMultiPayload();
        sub_10015DA04(&qword_1006C2A38);
        sub_1002B024C();
        sub_1002B034C();
LABEL_23:
        _ConditionalContent<>.init(storage:)();
        sub_1001B39D4(v81, v83, v88);

LABEL_24:
        v34 = v131;
        goto LABEL_25;
      }
    }

    v53 = [v17 userSelectedCipherVersionForObject:v35];
    v54 = v153;
    if (v53 == 2)
    {
      v55 = [v35 account];
      if (!v55 || (v56 = v55, v57 = [v55 accountData], v56, !v57) || (v58 = objc_msgSend(v57, "cryptoPassphraseVerifier"), v57, !v58))
      {
        static Color.secondary.getter();
        v81 = Text.foregroundColor(_:)();
        v83 = v93;
        v95 = v94;
        v97 = v96;

        v88 = v95 & 1;
        *&v155 = v81;
        *(&v155 + 1) = v83;
        *&v156 = v95 & 1;
        *(&v156 + 1) = v97;
        LOBYTE(v157) = 0;
        sub_1001B39C4(v81, v83, v95 & 1);

        _ConditionalContent<>.init(storage:)();
        v155 = v158;
        v156 = v159;
        LOBYTE(v157) = v160;
        HIBYTE(v157) = 1;
LABEL_22:
        sub_10015DA04(&qword_1006C2A50);
        sub_1002B02D0();
        _ConditionalContent<>.init(storage:)();
        v119 = v160;
        v120 = v161;
        v121 = v159;
        *v54 = v158;
        v54[1] = v121;
        *(v54 + 32) = v119;
        *(v54 + 33) = v120;
        swift_storeEnumTagMultiPayload();
        sub_10015DA04(&qword_1006C2A38);
        sub_1002B024C();
        sub_1002B034C();
        goto LABEL_23;
      }

      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      sub_10019671C(v59, v61);
    }

    if ([v17 userSelectedCipherVersionForObject:v35])
    {
      goto LABEL_13;
    }

    v108 = [v35 account];
    if (v108)
    {
      v109 = v108;
      v110 = [v108 cryptoVerifier];

      if (v110)
      {
        v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        sub_10019671C(v111, v113);
LABEL_13:
        if ([v35 isAuthenticated])
        {
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v62._object = 0x800000010056AF20;
          v62._countAndFlagsBits = 0xD000000000000010;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
          [v17 userSelectedCipherVersionForObject:v35];
          v63 = ICCipherNameForCipherVersion();
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67._countAndFlagsBits = v64;
          v67._object = v66;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v67);

          v68._countAndFlagsBits = 0;
          v68._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v68);
          LocalizedStringKey.init(stringInterpolation:)();
          v69 = swift_allocObject();
          *(v69 + 16) = v133;
          *(v69 + 24) = v35;
          v70 = v134 & 1;
          *(v69 + 32) = v134 & 1;
          v71 = v135;
          *(v69 + 40) = v135;

          v72 = v35;
          v73 = v136;
          Button<>.init(_:action:)();
          v145 = LocalizedStringKey.init(stringLiteral:)();
          v134 = v74;
          LOBYTE(v155) = v70;
          *(&v155 + 1) = v71;
          sub_10015DA04(&qword_1006BE398);
          State.projectedValue.getter();
          v129 = sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
          v75 = v142;
          v76 = v140;
          View.alert<A>(_:isPresented:actions:)();

          (*(v137 + 8))(v73, v75);
          v77 = v138;
          v78 = v76;
          v79 = v144;
          (*(v138 + 16))(v141, v78, v144);
          swift_storeEnumTagMultiPayload();
          *&v158 = v75;
          *(&v158 + 1) = v75;
          *&v159 = v129;
          *(&v159 + 1) = v129;
          swift_getOpaqueTypeConformance2();
          v80 = v143;
          _ConditionalContent<>.init(storage:)();
          sub_100006038(v80, v153, &qword_1006C2A20);
          swift_storeEnumTagMultiPayload();
          sub_10015DA04(&qword_1006C2A38);
          sub_1002B024C();
          sub_1002B034C();
          _ConditionalContent<>.init(storage:)();
          sub_1000073B4(v80, &qword_1006C2A20);
          (*(v77 + 8))(v140, v79);
        }

        else
        {
          static Color.secondary.getter();
          v98 = Text.foregroundColor(_:)();
          v100 = v99;
          v102 = v101;
          v104 = v103;

          v105 = v141;
          *v141 = v98;
          v105[1] = v100;
          *(v105 + 16) = v102 & 1;
          v105[3] = v104;
          swift_storeEnumTagMultiPayload();
          sub_1001B39C4(v98, v100, v102 & 1);
          v106 = sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);

          *&v158 = v142;
          *(&v158 + 1) = v142;
          *&v159 = v106;
          *(&v159 + 1) = v106;
          swift_getOpaqueTypeConformance2();
          v107 = v143;
          _ConditionalContent<>.init(storage:)();
          sub_100006038(v107, v153, &qword_1006C2A20);
          swift_storeEnumTagMultiPayload();
          sub_10015DA04(&qword_1006C2A38);
          sub_1002B024C();
          sub_1002B034C();
          _ConditionalContent<>.init(storage:)();
          sub_1001B39D4(v98, v100, v102 & 1);

          sub_1000073B4(v107, &qword_1006C2A20);
        }

        goto LABEL_24;
      }
    }

    static Color.secondary.getter();
    v81 = Text.foregroundColor(_:)();
    v83 = v114;
    v116 = v115;
    v118 = v117;

    v88 = v116 & 1;
    *&v155 = v81;
    *(&v155 + 1) = v83;
    *&v156 = v116 & 1;
    *(&v156 + 1) = v118;
    LOBYTE(v157) = 1;
    sub_1001B39C4(v81, v83, v116 & 1);

    _ConditionalContent<>.init(storage:)();
    v155 = v158;
    v156 = v159;
    LOBYTE(v157) = v160;
    HIBYTE(v157) = 1;
    goto LABEL_22;
  }

  static Color.secondary.getter();
  v37 = Text.foregroundColor(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  *&v155 = v37;
  *(&v155 + 1) = v39;
  *&v156 = v41 & 1;
  *(&v156 + 1) = v43;
  LOBYTE(v157) = 0;
  sub_1001B39C4(v37, v39, v41 & 1);

  _ConditionalContent<>.init(storage:)();
  v155 = v158;
  v156 = v159;
  v157 = v160;
  sub_10015DA04(&qword_1006C2A50);
  sub_1002B02D0();
  _ConditionalContent<>.init(storage:)();
  v44 = v160;
  v45 = v161;
  v46 = v159;
  v47 = v153;
  *v153 = v158;
  v47[1] = v46;
  *(v47 + 32) = v44;
  *(v47 + 33) = v45;
  swift_storeEnumTagMultiPayload();
  sub_10015DA04(&qword_1006C2A38);
  sub_1002B024C();
  sub_1002B034C();
  v48 = v146;
  _ConditionalContent<>.init(storage:)();
  sub_1001B39D4(v37, v39, v41 & 1);

LABEL_25:
  v122 = v150;
  sub_100006038(v48, v150, &qword_1006C2A30);
  v123 = v151;
  v124 = v149;
  v125 = v148;
  *v151 = v149;
  v123[1] = v125;
  v126 = v147 & 1;
  *(v123 + 16) = v147 & 1;
  v123[3] = v34;
  v127 = sub_10015DA04(&qword_1006C2A60);
  sub_100006038(v122, v123 + *(v127 + 48), &qword_1006C2A30);
  sub_1001B39C4(v124, v125, v126);

  sub_1000073B4(v48, &qword_1006C2A30);
  sub_1000073B4(v122, &qword_1006C2A30);
  sub_1001B39D4(v124, v125, v126);
}

void sub_1002AFCB0(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedMigrator];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v12[4] = sub_1002B049C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1002B00B8;
  v12[3] = &unk_100653600;
  v10 = _Block_copy(v12);

  v11 = a2;

  [v8 migrateNote:v11 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1002AFDDC(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v22 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001B3B1C();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = v22;
  *(v16 + 40) = a5;
  *(v16 + 48) = a1;
  aBlock[4] = sub_1002B04AC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100653650;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002B0510();
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_1002B00B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1002B0124()
{
  v0 = sub_10015DA04(&qword_1006C2A68);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v3 = type metadata accessor for ButtonRole();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return Button<>.init(_:role:action:)();
}

unint64_t sub_1002B024C()
{
  result = qword_1006C2A40;
  if (!qword_1006C2A40)
  {
    sub_10017992C(&qword_1006C2A38);
    sub_1002B02D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2A40);
  }

  return result;
}

unint64_t sub_1002B02D0()
{
  result = qword_1006C2A48;
  if (!qword_1006C2A48)
  {
    sub_10017992C(&qword_1006C2A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2A48);
  }

  return result;
}

unint64_t sub_1002B034C()
{
  result = qword_1006C2A58;
  if (!qword_1006C2A58)
  {
    sub_10017992C(&qword_1006C2A20);
    sub_10017992C(&qword_1006C0B30);
    sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2A58);
  }

  return result;
}

uint64_t sub_1002B045C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1002B0510()
{
  result = qword_1006C1130;
  if (!qword_1006C1130)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1130);
  }

  return result;
}

unint64_t sub_1002B0568()
{
  result = qword_1006C2A70;
  if (!qword_1006C2A70)
  {
    sub_10017992C(&qword_1006C2A08);
    sub_1002B05F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2A70);
  }

  return result;
}

unint64_t sub_1002B05F4()
{
  result = qword_1006C2A78;
  if (!qword_1006C2A78)
  {
    sub_10017992C(&qword_1006C29F8);
    sub_1000060B4(&qword_1006C2A80, &qword_1006C2A88);
    sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2A78);
  }

  return result;
}

uint64_t sub_1002B06E0()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C2A90);
  sub_10002597C(v0, qword_1006C2A90);
  return static Logger.application.getter();
}

char *sub_1002B0750(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v42 = sub_10015DA04(&qword_1006C2B00);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v39 - v4;
  v5 = sub_10015DA04(&unk_1006C2B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for UICollectionLayoutListConfiguration();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___ICSearchSuggestionController_sectionId] = 0;
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v12);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  sub_1000054A4(0, &qword_1006BD9C8);
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000054A4(0, &qword_1006C2B20);
  v18 = static UICollectionViewCompositionalLayout.list(using:)();
  v19 = [objc_allocWithZone(UICollectionView) initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR___ICSearchSuggestionController_collectionView] = v19;
  v20 = *(v6 + 16);
  v45 = v11;
  v20(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = *(v6 + 32);
  v47 = v5;
  v23(v22 + v21, v9, v5);
  v24 = objc_allocWithZone(sub_10015DA04(&qword_1006C2B28));
  v25 = v19;
  v26 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  *&v3[OBJC_IVAR___ICSearchSuggestionController_dataSource] = v26;
  v27 = objc_opt_self();
  v28 = v26;
  result = [v27 orderedDefaultSearchSuggestions];
  if (result)
  {
    v30 = result;
    sub_1000054A4(0, &qword_1006C2B08);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v39;
    sub_1002B1210(v31, 0);

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v40 + 8))(v32, v42);
    *&v3[OBJC_IVAR___ICSearchSuggestionController_delegate] = v48;
    v33 = v46;
    *&v3[OBJC_IVAR___ICSearchSuggestionController_parentView] = v46;
    v49.receiver = v3;
    v49.super_class = ObjectType;
    swift_unknownObjectRetain();
    v34 = v33;
    v35 = objc_msgSendSuper2(&v49, "init");
    v36 = OBJC_IVAR___ICSearchSuggestionController_collectionView;
    v37 = *&v35[OBJC_IVAR___ICSearchSuggestionController_collectionView];
    v38 = v35;
    [v37 setDelegate:v38];
    [*&v35[v36] setKeyboardDismissMode:1];

    swift_unknownObjectRelease();
    (*(v6 + 8))(v45, v47);
    (*(v41 + 8))(v17, v43);
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B0D14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = IndexPath.row.getter();
  if (!result)
  {
    v10 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v11 = *(v5 + 104);
    v11(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
    v11(v7, v10, v4);
    return UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  }

  return result;
}

id sub_1002B0E6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  UICollectionViewListCell.defaultContentConfiguration()();
  v9.isa = AnyHashable._bridgeToObjectiveC()().isa;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 suggestionItemTitle];
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIListContentConfiguration.text.setter();
    v19 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
    v20 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
    v20(v24, 0);
    v21 = [v11 iconImage];
    UIListContentConfiguration.image.setter();

    goto LABEL_11;
  }

  sub_100024F40(a3, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v24[3] = v5;
    v24[4] = &protocol witness table for UIListContentConfiguration;
    v22 = sub_100180240(v24);
    (*(v6 + 16))(v22, v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
    return (*(v6 + 8))(v8, v5);
  }

  UIListContentConfiguration.text.setter();
  result = [objc_opt_self() ic_groupInsetHeaderFont];
  if (result)
  {

    v15 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v15(v24, 0);
    v16 = UIAccessibilityTraitHeader;
    v17 = [a1 accessibilityTraits];
    if ((v16 & ~v17) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    [a1 setAccessibilityTraits:v18 | v17];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B1184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100024F40(a3, v5);
  sub_1000054A4(0, &qword_1006BD9C8);
  v3 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000067E4(v5);
  return v3;
}

uint64_t sub_1002B1210(unint64_t a1, uint64_t a2)
{
  NSDiffableDataSourceSnapshot.init()();
  sub_10015DA04(&qword_1006BE8C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100531E30;
  *(v4 + 32) = a2;
  sub_10015DA04(&qword_1006C2B00);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v4);

  sub_10015DA04(&qword_1006BE7B8);
  *(swift_allocObject() + 16) = xmmword_100531E30;
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  sub_10035F870(a1);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

void sub_1002B1444(char a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *&v6[OBJC_IVAR___ICSearchSuggestionController_collectionView];
  [v13 setHidden:0];
  if ((a1 & 1) != 0 && a2)
  {
    swift_unknownObjectRetain();
    v14 = [v13 superview];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v55.origin.x = a3;
      v55.origin.y = a4;
      v55.size.width = a5;
      v55.size.height = a6;
      v24 = CGRectGetMaxY(v55) + a4;
      [v13 adjustedContentInset];
      v26 = v24 + v25;
      v56.origin.x = v17;
      v56.origin.y = v19;
      v56.size.width = v21;
      v56.size.height = v23;
      v57 = CGRectOffset(v56, 0.0, v26);
      [v13 setFrame:{v57.origin.x, v57.origin.y, v57.size.width, v57.size.height}];
      [a2 transitionDuration];
      if (v27 == 0.0)
      {
        v28 = swift_allocObject();
        *(v28 + 2) = v6;
        v28[3] = v17;
        v28[4] = v19;
        v28[5] = v21;
        v28[6] = v23;
        v52 = sub_1002B1F08;
        v53 = v28;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_1001B8B10;
        v51 = &unk_1006536F0;
        v29 = _Block_copy(&aBlock);
        v30 = v6;

        [a2 animateAlongsideTransition:v29 completion:0];

        _Block_release(v29);
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = v27;
        v43 = objc_opt_self();
        v44 = swift_allocObject();
        *(v44 + 2) = v6;
        v44[3] = v17;
        v44[4] = v19;
        v44[5] = v21;
        v44[6] = v23;
        v52 = sub_1002B1F08;
        v53 = v44;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_10028DCE8;
        v51 = &unk_1006536A0;
        v45 = _Block_copy(&aBlock);
        v46 = v6;

        [v43 animateWithDuration:v45 animations:v42];
        swift_unknownObjectRelease();

        _Block_release(v45);
      }
    }

    else
    {
      if (qword_1006BC710 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10002597C(v31, qword_1006C2A90);
      v32 = v6;
      oslog = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136315138;
        v36 = v32;
        v37 = [v36 description];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = sub_100009D88(v38, v40, &aBlock);

        *(v34 + 4) = v41;
        _os_log_impl(&_mh_execute_header, oslog, v33, "An instance of %s doesn't have a superview", v34, 0xCu);
        sub_100009F60(v35);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1002B1B8C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1002B1E74();

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_1002B1C8C(void *a1)
{
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if (v7)
  {
    v3.isa = AnyHashable._bridgeToObjectiveC()().isa;
    sub_100024F9C(v6);
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [*(v1 + OBJC_IVAR___ICSearchSuggestionController_delegate) didSelectSearchSuggestion:v4];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectItemAtIndexPath:isa animated:1];
    }

    else
    {
    }
  }

  else
  {
    sub_1000067E4(v6);
  }
}

BOOL sub_1002B1E74()
{
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if (!v5)
  {
    sub_1000067E4(v4);
    goto LABEL_5;
  }

  v0.isa = AnyHashable._bridgeToObjectiveC()().isa;
  sub_100024F9C(v4);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

LABEL_5:
    v1 = 0;
  }

  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1002B1F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&unk_1006C2B10);

  return sub_1002B1184(a1, a2, a3);
}

id sub_1002B1FD0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController_filterSelectionObservation] = 0;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource] = 0;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController_verticalInset] = 0x4030000000000000;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController_estimatedHeaderHeight] = 0x4046000000000000;
  *&v1[OBJC_IVAR___ICFolderComposerFilterViewController_account] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

void sub_1002B20A4(void *a1)
{
  v2 = (v1 + OBJC_IVAR___ICFolderComposerFilterViewController_completion);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR___ICFolderComposerFilterViewController_filterSelectionObservation) = 0;
  *(v1 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource) = 0;
  *(v1 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView) = 0;
  *(v1 + OBJC_IVAR___ICFolderComposerFilterViewController_verticalInset) = 0x4030000000000000;
  *(v1 + OBJC_IVAR___ICFolderComposerFilterViewController_estimatedHeaderHeight) = 0x4046000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002B2174()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1002B2474();
    [v2 addSubview:v3];

    [*&v0[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView] ic_addAnchorsToFillSuperview];
    v4 = [v0 navigationItem];
    v5 = objc_opt_self();
    v6 = [v5 mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v4 setTitle:v8];

    v9 = [v0 navigationItem];
    v10 = [v5 mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 localizedStringForKey:v11 value:0 table:0];

    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v9 setBackButtonTitle:v12];

    v13 = [v0 navigationItem];
    v14 = sub_1004C81B4();
    [v13 setLeftBarButtonItem:v14];

    v15 = [v0 navigationItem];
    v16 = sub_1004C81CC();
    [v15 setRightBarButtonItem:v16];

    v17 = [objc_opt_self() defaultCenter];
    [v17 addObserver:v0 selector:"splitViewWillTransitionToSizeWithNotification:" name:@"ICSplitViewControllerWillTransitionToSizeNotification" object:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1002B2474()
{
  v1 = OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v6 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v13[4] = sub_1002B3A78;
    v13[5] = v4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1002B39FC;
    v13[3] = &unk_100653790;
    v7 = _Block_copy(v13);
    v8 = [v6 initWithSectionProvider:v7 configuration:v5];

    _Block_release(v7);

    v9 = [objc_allocWithZone(UICollectionView) initWithFrame:v8 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1002B2640(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  v4 = sub_1002B29E0();
  v5 = *&v4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  v6 = [v5 filterTypeSelections];
  sub_1000054A4(0, &unk_1006C2B90);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= 1)
  {
    [*(*&v2[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource] + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000054A4(0, &unk_1006C4550);
    v9 = swift_dynamicCast();
    v10 = v19;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = *&v2[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection];
    *&v2[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection] = v10;
  }

  sub_1002B28AC();
  v12 = OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource;
  v13 = *&v2[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource];
  sub_100303670(0, 0, 0);

  v14 = *(*&v2[v12] + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v2;
  v15 = v14;
  v16 = v2;
  v17 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v18 = *&v16[OBJC_IVAR___ICFolderComposerFilterViewController_filterSelectionObservation];
  *&v16[OBJC_IVAR___ICFolderComposerFilterViewController_filterSelectionObservation] = v17;
}

void sub_1002B28AC()
{
  v1 = [v0 presentingViewController];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 window];

  if (v4)
  {
    v5 = [v4 ic_hasCompactSize];

    v6 = v5 ^ 1;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  v7 = sub_1002B29E0();
  v8 = v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries];

  if (v6 != v8)
  {
    v9 = *&v0[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource];
    v9[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries] = v6;
    v10 = v9;
    sub_100303670(0, 0, 0);
  }
}

char *sub_1002B29E0()
{
  v1 = OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource;
  v2 = *&v0[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource];
  }

  else
  {
    v4 = sub_1002B2C74(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002B2A98(void *a1)
{
  v2 = sub_1002B29E0();
  v3 = *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];
  *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] = a1;
  v4 = a1;

  sub_100303670(0, 0, 0);
}

uint64_t sub_1002B2B18()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection;
  v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection);
  v4 = v3;
  v5 = sub_1002B29E0();
  v6 = *&v5[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  if (v3)
  {
    sub_1000054A4(0, &unk_1006C4550);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = *(v1 + v2);
  if (v9 && ![v9 isEmpty])
  {
    return 1;
  }

  else
  {
    return [*(*(v1 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource) + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) isEmpty] ^ 1;
  }
}

char *sub_1002B2C74(char *a1)
{
  v22 = sub_1002B2474();
  v2 = *&a1[OBJC_IVAR___ICFolderComposerFilterViewController_account];
  v3 = [v2 objectID];
  v4 = [v2 managedObjectContext];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = type metadata accessor for FolderComposerFilterDataSource();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentingViewController] = 0;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource] = 0;
  v8 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection;
  v9 = objc_allocWithZone(ICFilterSelection);
  sub_1000054A4(0, &unk_1006C2B90);
  v10 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v9 initWithFilterTypeSelections:isa joinOperator:0];

  *&v7[v8] = v12;
  v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries] = 0;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation] = 0;
  v13 = &v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit];
  *v13 = 0;
  v13[8] = 1;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_enabledSections] = _swiftEmptyArrayStorage;
  v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem] = 35;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView] = v22;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_accountObjectID] = v3;
  *&v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_context] = v4;
  v14 = &v7[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentViewControllerBlock];
  *v14 = sub_1002B39F4;
  v14[1] = v5;
  v23.receiver = v7;
  v23.super_class = v6;
  v15 = v22;
  v16 = v3;
  v17 = v4;

  v18 = objc_msgSendSuper2(&v23, "init");
  [v15 setDelegate:v18];

  v19 = *&v18[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentingViewController];
  *&v18[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentingViewController] = v10;

  v20 = v10;
  return v18;
}

void sub_1002B2F0C(void *a1, void *a2, id a3)
{
  if (a2)
  {
    v16 = a2;
    [a1 setModalPresentationStyle:7];
    v5 = [a1 popoverPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setSourceView:v16];
    }

    v7 = [a1 popoverPresentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setPermittedArrowDirections:3];
    }

    [v16 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a1 popoverPresentationController];
    if (v13)
    {
      v14 = v13;
      [v13 setSourceRect:{v10 + -44.0, 0.0, 44.0, v12}];
    }

    [a3 presentViewController:a1 animated:1 completion:0];
  }

  else
  {
    v15 = [a3 navigationController];
    if (!v15)
    {
      return;
    }

    v16 = v15;
    [v15 pushViewController:a1 animated:1];
  }
}

void sub_1002B30AC(char *a1)
{
  v2 = sub_10015DA04(&unk_1006C3F00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - v4;
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v6);
    UICollectionLayoutListConfiguration.init(appearance:)();
    sub_1000054A4(0, &qword_1006C2BA0);
    v15 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    [v15 contentInsets];
    [v15 setContentInsets:0.0];
    v16 = sub_1002B29E0();
    v17 = sub_100305558();

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v3 + 8))(v5, v2);
    v19 = sub_100303640(0xCu, v18);

    if (a1 == 1)
    {
LABEL_6:
      v23 = objc_opt_self();
      v24 = [v23 fractionalWidthDimension:1.0];
      v25 = [v23 estimatedDimension:44.0];
      v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

      v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
      sub_10015DA04(&unk_1006BD390);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100534670;
      *(v28 + 32) = v27;
      sub_1000054A4(0, &qword_1006C2BB0);
      v29 = v27;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 setBoundarySupplementaryItems:isa];

      v14 = isa;
LABEL_7:

      (*(v32 + 8))(v12, v33);
      return;
    }

    v21 = sub_1002B2474(v20);
    v22 = [v21 numberOfSections];

    if (!__OFSUB__(v22, 1))
    {
      if (v22 - 1 != a1 || !v19)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    __break(1u);
  }
}

void sub_1002B3534()
{
  v2 = sub_1004C81CC();
  v0 = sub_1002B29E0();
  v1 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  LODWORD(v0) = [v1 isEmpty];
  [v2 setEnabled:v0 ^ 1];
}

uint64_t sub_1002B35C8(void *a1)
{
  v2 = v1;
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
  }

  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:0 completion:0];
  }

  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19[7] = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v12 = sub_100024E34(v19), (v13 & 1) == 0))
  {

    sub_100024F9C(v19);
LABEL_12:
    v20 = 0u;
    v21 = 0u;
    return sub_10027CAAC(&v20);
  }

  sub_10000A2A0(*(v10 + 56) + 32 * v12, &v20);
  sub_100024F9C(v19);

  if (!*(&v21 + 1))
  {
    return sub_10027CAAC(&v20);
  }

  sub_10015DA04(&qword_1006C2BB8);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v19[0];
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v19[4] = sub_1002B3A80;
    v19[5] = v16;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1001B8B10;
    v19[3] = &unk_1006537E0;
    v17 = _Block_copy(v19);
    swift_unknownObjectRetain();
    v18 = v2;

    [v15 animateAlongsideTransition:0 completion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002B38DC()
{
  sub_10000C840(*(v0 + OBJC_IVAR___ICFolderComposerFilterViewController_completion));

  v1 = *(v0 + OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___collectionView);
}

id sub_1002B39FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002B3AA4()
{
  v1 = v0;
  v2 = sub_1002B29E0();
  v3 = *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  LODWORD(v2) = [v3 isValid];
  v4 = OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource;
  v5 = *(*&v1[OBJC_IVAR___ICFolderComposerFilterViewController____lazy_storage___folderComposerFilterDataSource] + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection);
  if (v2)
  {
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000054A4(0, &unk_1006C4550);
    v6 = swift_dynamicCast();
    v7 = v34;
    if (!v6)
    {
      v7 = 0;
    }

    v8 = *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection];
    *&v1[OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection] = v7;

    v9 = *&v1[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
    if (v9)
    {
      v10 = *(*&v1[v4] + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection);
      sub_100010854(*&v1[OBJC_IVAR___ICFolderComposerFilterViewController_completion]);
      v11 = v10;
      v9();
      sub_10000C840(v9);
    }

    v12 = [v1 navigationController];
    if (v12)
    {
      v13 = v12;
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    return;
  }

  v14 = [v5 invalidSummaryTitle];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [*(*&v1[v4] + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) invalidSummary];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_17:
    v22 = 0;
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v21 = 0;
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_14:
  v22 = String._bridgeToObjectiveC()();

  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_15:
  v23 = String._bridgeToObjectiveC()();

LABEL_19:
  v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

  v25 = [objc_opt_self() mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = String._bridgeToObjectiveC()();

  v32 = [objc_opt_self() actionWithTitle:v28 style:1 handler:0];

  [v24 addAction:v32];
  v29 = [v24 popoverPresentationController];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004C81CC();
    [v30 setBarButtonItem:v31];
  }

  [v1 presentViewController:v24 animated:1 completion:{0, v32}];
}

char *sub_1002B3F04()
{
  v1 = OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_1002B4DE8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002B3F88(char *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v7 = *a4;
  v8 = *&a1[*a4];
  *&a1[*a4] = a3;
  v9 = a3;
  v10 = a1;

  v11 = sub_1002B3F04();
  v12 = *&a1[v7];
  v13 = v12;

  v14 = *&v11[*a5];
  *&v11[*a5] = v12;
}

id sub_1002B412C()
{
  v1 = v0;
  v2 = sub_1002B3F04();
  v3 = *&v1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  v4 = *&v1[OBJC_IVAR___ICTagContainerCell_selectionDidChange + 8];
  v5 = &v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange];
  swift_beginAccess();
  v6 = *v5;
  *v5 = v3;
  v5[1] = v4;
  sub_100010854(v3);
  sub_10000C840(v6);

  v7 = OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView;
  v8 = *&v1[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView];
  v9 = *&v1[OBJC_IVAR___ICTagContainerCell_dataDidChange];
  v10 = *&v1[OBJC_IVAR___ICTagContainerCell_dataDidChange + 8];
  v11 = &v8[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange];
  v12 = *&v8[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange];
  *v11 = v9;
  v11[1] = v10;
  v13 = v8;
  sub_100010854(v9);
  sub_10000C840(v12);

  v14 = *&v1[v7];
  v15 = v1[OBJC_IVAR___ICTagContainerCell_includesNewTagItem];
  v16 = v1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem];
  v17 = v1[OBJC_IVAR___ICTagContainerCell_hasGroupInset];
  v18 = v1[OBJC_IVAR___ICTagContainerCell_allowsExclusion];
  v19 = *&v1[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  v20 = v1[OBJC_IVAR___ICTagContainerCell_tagRowLimit + 8];
  v21 = &v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  v22 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  LOBYTE(v5) = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 1];
  v23 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 2];
  v24 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 3];
  v25 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 4];
  v26 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 5];
  v27 = *&v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 8];
  v28 = v14[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 16];
  *v21 = v1[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling];
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = 0;
  *(v21 + 1) = v19;
  v21[16] = v20;
  v29 = v14;
  v30 = 256;
  if ((v5 & 1) == 0)
  {
    v30 = 0;
  }

  v31 = v30 | v22;
  v32 = 0x10000;
  if ((v23 & 1) == 0)
  {
    v32 = 0;
  }

  v33 = 0x1000000;
  if ((v24 & 1) == 0)
  {
    v33 = 0;
  }

  v34 = v31 | v32 | v33;
  v35 = &_mh_execute_header;
  if ((v25 & 1) == 0)
  {
    v35 = 0;
  }

  v36 = 0x10000000000;
  if ((v26 & 1) == 0)
  {
    v36 = 0;
  }

  sub_1003ABBAC(v34 | v35 | v36, v27, v28 & 1);

  return [v1 invalidateIntrinsicContentSize];
}

_BYTE *sub_1002B43A4(_BYTE *result, uint64_t a2, int a3, void *a4)
{
  v4 = result[*a4];
  result[*a4] = a3;
  if (v4 != a3)
  {
    return [result setNeedsUpdateConfiguration];
  }

  return result;
}

void sub_1002B4738(int a1)
{
  v21 = a1;
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1002B3F04();
  v6 = [v5 indexPathsForVisibleItems];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);
  if (v8)
  {
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v19[1] = v7;
    v20 = v10;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v20(v4, v11, v1);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v5 deselectItemAtIndexPath:isa animated:v21 & 1];

      v16 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v13)(v4, v1);
      v17 = [v5 cellForItemAtIndexPath:v16];

      if (v17)
      {
        type metadata accessor for TagCell();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          *(v18 + OBJC_IVAR___ICTagCell_isExcluded) = 0;
          sub_10047EED4();
        }
      }

      v11 += v12;
      --v8;
      v9 = v14;
    }

    while (v8);
  }

  [*&v5[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] clear];
}

void sub_1002B49B8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002B3F04();
  v7 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (v8)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = sub_1002B5E94;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_100653890;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    sub_100010854(a2);

    [v12 reloadDataAnimated:a1 & 1 dataIndexedBlock:0 dataRenderedBlock:v11];

    _Block_release(v11);
    v6 = v12;
  }
}

char *sub_1002B4DE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  v4 = *&v0[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  v11 = v3[8];
  v5 = objc_allocWithZone(type metadata accessor for TagCollectionView());
  v6 = sub_1003ADAD4(0x10001010000uLL, v4, v11);
  v10[3] = ObjectType;
  v10[4] = &off_100653830;
  v10[0] = v1;
  v7 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_accessibilityProvider;
  swift_beginAccess();
  v8 = v1;
  sub_1002B5E24(v10, &v6[v7]);
  swift_endAccess();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v6;
}

void sub_1002B4EC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v8 - 8);
  v10 = &aBlock[-1] - v9;
  v71 = type metadata accessor for UIListContentConfiguration();
  v72 = &protocol witness table for UIListContentConfiguration;
  sub_100180240(aBlock);
  static UIListContentConfiguration.cell()();
  UICollectionViewCell.contentConfiguration.setter();
  if (v1[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling] == 1)
  {
    static UIBackgroundConfiguration.clear()();
    v11 = type metadata accessor for UICellConfigurationState();
    v71 = v11;
    v72 = &protocol witness table for UICellConfigurationState;
    v12 = sub_100180240(aBlock);
    (*(*(v11 - 8) + 16))(v12, a1, v11);
    UIBackgroundConfiguration.updated(for:)();
    (*(v5 + 8))(v7, v4);
    sub_100009F60(aBlock);
    (*(v5 + 56))(v10, 0, 1, v4);
    UICollectionViewCell.backgroundConfiguration.setter();
  }

  v13 = sub_1002B3F04();
  v14 = UICellConfigurationState.isEditing.getter();
  v15 = type metadata accessor for TagCollectionView();
  v75.receiver = v13;
  v75.super_class = v15;
  v16 = objc_msgSendSuper2(&v75, "isEditing");
  v74.receiver = v13;
  v74.super_class = v15;
  objc_msgSendSuper2(&v74, "setEditing:", v14 & 1);
  sub_1003AD7C0(v16);

  if ((UICellConfigurationState.isEditing.getter() & 1) == 0)
  {
    sub_1002B412C();
  }

  v17 = OBJC_IVAR___ICTagContainerCell_preservesSuperviewHorizontalLayoutMargins;
  v18 = 0.0;
  if (v2[OBJC_IVAR___ICTagContainerCell_preservesSuperviewHorizontalLayoutMargins] == 1)
  {
    [v2 layoutMargins];
    v20 = v19;
    v21 = 16.0;
    if ((v2[OBJC_IVAR___ICTagContainerCell_hasGroupInset] & 1) == 0)
    {
      v22 = [objc_opt_self() ic_isVision];
      v21 = 0.0;
      if (v22)
      {
        v21 = 12.0;
      }
    }

    v23 = v20 - v21;
    if (v2[v17] == 1)
    {
      [v2 layoutMargins];
      v25 = v24;
      v26 = 16.0;
      if ((v2[OBJC_IVAR___ICTagContainerCell_hasGroupInset] & 1) == 0)
      {
        v27 = [objc_opt_self() ic_isVision];
        v26 = 0.0;
        if (v27)
        {
          v26 = 12.0;
        }
      }

      v18 = -(v25 - v26);
    }
  }

  else
  {
    v23 = 0.0;
  }

  v28 = OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView;
  if (*(*&v2[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView] + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration) == 2)
  {
    v29 = [v2 ic_viewControllerManager];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 hasCompactWidth];

      if (!v31)
      {
        v18 = 16.0;
        v23 = -16.0;
      }
    }
  }

  v32 = [*&v2[v28] superview];
  if (v32)
  {

    v33 = *&v2[OBJC_IVAR___ICTagContainerCell_leadingConstraint];
    if (v33)
    {
      [v33 setConstant:v23];
    }

    v34 = *&v2[OBJC_IVAR___ICTagContainerCell_trailingConstraint];
    if (v34)
    {
      [v34 setConstant:v18];
    }
  }

  else
  {
    v35 = [v2 contentView];
    [v35 addSubview:*&v2[v28]];

    v36 = [*&v2[v28] leadingAnchor];
    v37 = [v2 contentView];
    v38 = [v37 leadingAnchor];

    v39 = [v36 constraintEqualToAnchor:v38 constant:v23];
    v40 = OBJC_IVAR___ICTagContainerCell_leadingConstraint;
    v41 = *&v2[OBJC_IVAR___ICTagContainerCell_leadingConstraint];
    *&v2[OBJC_IVAR___ICTagContainerCell_leadingConstraint] = v39;

    v42 = *&v2[v40];
    if (v42)
    {
      [v42 setActive:1];
    }

    v43 = [*&v2[v28] trailingAnchor];
    v44 = [v2 contentView];
    v45 = [v44 trailingAnchor];

    v46 = [v43 constraintEqualToAnchor:v45 constant:v18];
    v47 = OBJC_IVAR___ICTagContainerCell_trailingConstraint;
    v48 = *&v2[OBJC_IVAR___ICTagContainerCell_trailingConstraint];
    *&v2[OBJC_IVAR___ICTagContainerCell_trailingConstraint] = v46;

    v49 = *&v2[v47];
    if (v49)
    {
      [v49 setActive:1];
    }

    v50 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100531E20;
    v52 = [*&v2[v28] topAnchor];
    v53 = [v2 contentView];
    v54 = [v53 topAnchor];

    v55 = [v52 constraintEqualToAnchor:v54];
    *(v51 + 32) = v55;
    v56 = [*&v2[v28] bottomAnchor];
    v57 = [v2 contentView];
    v58 = [v57 bottomAnchor];

    v59 = [v56 constraintEqualToAnchor:v58];
    *(v51 + 40) = v59;
    sub_1002B5EA0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:isa];

    v61 = *&v2[v28];
    v62 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
    swift_beginAccess();
    v63 = *&v61[v62];
    if (v63)
    {
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      v65[3] = 0;
      v65[4] = 0;
      v65[2] = v64;
      v72 = sub_1002B5F5C;
      v73 = v65;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      v71 = &unk_1006538E0;
      v66 = _Block_copy(aBlock);
      v67 = v61;
      v68 = v63;

      [v68 reloadDataAnimated:0 dataIndexedBlock:0 dataRenderedBlock:v66];
      _Block_release(v66);
    }
  }
}

void sub_1002B5828()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = sub_1002B3F04();
  [v1 removeFromSuperview];

  v2 = sub_1002B4DE8();
  v3 = *&v0[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView];
  *&v0[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView] = v2;

  v4 = v0[OBJC_IVAR___ICTagContainerCell_hasGroupInset];
  v0[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  if ((v4 & 1) == 0)
  {
    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
    [v0 setNeedsUpdateConfiguration];
  }

  v5 = v0[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling];
  v0[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling] = 0;
  if (v5 == 1)
  {
    sub_1002B412C();
  }

  v6 = v0[OBJC_IVAR___ICTagContainerCell_includesNewTagItem];
  v0[OBJC_IVAR___ICTagContainerCell_includesNewTagItem] = 0;
  if (v6 == 1)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v7 = v0[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem];
  v0[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 1;
  if ((v7 & 1) == 0)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v8 = v0[OBJC_IVAR___ICTagContainerCell_allowsExclusion];
  v0[OBJC_IVAR___ICTagContainerCell_allowsExclusion] = 0;
  if (v8 == 1)
  {
    [v0 setNeedsUpdateConfiguration];
  }
}

id sub_1002B5AB4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR___ICTagContainerCell_preservesSuperviewHorizontalLayoutMargins] = 0;
  *&v4[OBJC_IVAR___ICTagContainerCell_presentingViewController] = 0;
  *&v4[OBJC_IVAR___ICTagContainerCell_defaultAccountObjectID] = 0;
  v4[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  v4[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling] = 0;
  v4[OBJC_IVAR___ICTagContainerCell_includesNewTagItem] = 0;
  v4[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 1;
  v4[OBJC_IVAR___ICTagContainerCell_allowsExclusion] = 0;
  v10 = &v4[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR___ICTagContainerCell_dataDidChange];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR___ICTagContainerCell_allowsContextualMenu] = 1;
  v12 = &v4[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView] = 0;
  *&v4[OBJC_IVAR___ICTagContainerCell_leadingConstraint] = 0;
  *&v4[OBJC_IVAR___ICTagContainerCell_trailingConstraint] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1002B5C08(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___ICTagContainerCell_preservesSuperviewHorizontalLayoutMargins] = 0;
  *&v1[OBJC_IVAR___ICTagContainerCell_presentingViewController] = 0;
  *&v1[OBJC_IVAR___ICTagContainerCell_defaultAccountObjectID] = 0;
  v1[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  v1[OBJC_IVAR___ICTagContainerCell_hasHorizontalScrolling] = 0;
  v1[OBJC_IVAR___ICTagContainerCell_includesNewTagItem] = 0;
  v1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 1;
  v1[OBJC_IVAR___ICTagContainerCell_allowsExclusion] = 0;
  v4 = &v1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___ICTagContainerCell_dataDidChange];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR___ICTagContainerCell_allowsContextualMenu] = 1;
  v6 = &v1[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR___ICTagContainerCell_leadingConstraint] = 0;
  *&v1[OBJC_IVAR___ICTagContainerCell_trailingConstraint] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1002B5E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C2C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B5EA0()
{
  result = qword_1006C5D90;
  if (!qword_1006C5D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C5D90);
  }

  return result;
}

uint64_t sub_1002B5EEC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002B5F64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttachmentEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

void *sub_1002B5FA8@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

void *sub_1002B5FCC(uint64_t a1)
{
  v25 = type metadata accessor for String.StandardComparator();
  v2 = *(v25 - 8);
  v3 = __chkstk_darwin(v25);
  v24 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v18 - v5;
  v23 = sub_10015DA04(&qword_1006C2FB0);
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = v18 - v7;
  v9 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  sub_100189884(0, v9, 0);
  v10 = v26;
  v18[0] = a1;
  if (v9)
  {
    v11 = a1 + 32;
    v19 = (v2 + 8);
    v20 = (v2 + 16);
    v18[2] = v6 + 32;

    v21 = v6;
    v12 = v24;
    do
    {
      swift_getKeyPath();
      v13 = v22;
      static String.StandardComparator.localizedStandard.getter();
      v14 = v25;
      (*v20)(v12, v13, v25);
      SortDescriptor.init<A>(_:comparator:order:)();
      (*v19)(v13, v14);
      v26 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_100189884(v15 > 1, v16 + 1, 1);
        v10 = v26;
      }

      v10[2] = v16 + 1;
      (*(v21 + 32))(v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, v8, v23);
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_1002B629C()
{
  v0 = sub_10015DA04(&unk_1006C7A60);
  sub_100025918(v0, static ICAttachment.hasValidEntityIdentifier);
  sub_10002597C(v0, static ICAttachment.hasValidEntityIdentifier);
  sub_1000054A4(0, &unk_1006C2C90);
  return Predicate.init(_:)();
}

uint64_t sub_1002B633C@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10015DA04(&qword_1006C1A38);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_10015DA04(&qword_1006C3080);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10015DA04(&qword_1006C3088);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C3090);
  v14 = *(v13 - 8);
  v22 = v13;
  v23 = v14;
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000060B4(&qword_1006C3098, &qword_1006C3080);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  sub_10015DA04(&qword_1006C1A60);
  sub_1000060B4(&qword_1006C30A0, &qword_1006C3088);
  sub_1000060B4(&qword_1006C1A70, &qword_1006C1A60);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v27 = 0;
  sub_10015DA04(&qword_1006C1A78);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = sub_10015DA04(&qword_1006C30A8);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_1002C3DB8();
  sub_100180240(v18);
  sub_1000060B4(&unk_1006C30D0, &qword_1006C3090);
  sub_1000060B4(&qword_1006C1AE0, &qword_1006C1A38);
  sub_100271D14(&qword_1006C1AE8);
  v19 = v22;
  v20 = v25;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v26 + 8))(v4, v20);
  return (*(v23 + 8))(v16, v19);
}

uint64_t ICAttachment.hasValidEntityIdentifier.unsafeMutableAddressor()
{
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&unk_1006C7A60);

  return sub_10002597C(v0, static ICAttachment.hasValidEntityIdentifier);
}

uint64_t static ICAttachment.hasValidEntityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&unk_1006C7A60);
  v3 = sub_10002597C(v2, static ICAttachment.hasValidEntityIdentifier);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002B6954()
{
  v0 = sub_10015DA04(&unk_1006C2FD0);
  sub_100025918(v0, qword_1006C2C70);
  sub_10002597C(v0, qword_1006C2C70);
  sub_1000054A4(0, &qword_1006C2CA8);
  return Predicate.init(_:)();
}

uint64_t sub_1002B69F4@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10015DA04(&qword_1006C1A38);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  v5 = sub_10015DA04(&qword_1006C2FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10015DA04(&qword_1006C2FE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_10015DA04(&qword_1006C2FF0);
  v14 = *(v13 - 8);
  v22 = v13;
  v23 = v14;
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000060B4(&qword_1006C2FF8, &qword_1006C2FE0);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  sub_10015DA04(&qword_1006C1A60);
  sub_1000060B4(&qword_1006C3008, &qword_1006C2FE8);
  sub_1000060B4(&qword_1006C1A70, &qword_1006C1A60);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v27 = 0;
  sub_10015DA04(&qword_1006C1A78);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = sub_10015DA04(&qword_1006C3010);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_1002C3B08();
  sub_100180240(v18);
  sub_1000060B4(&qword_1006C3038, &qword_1006C2FF0);
  sub_1000060B4(&qword_1006C1AE0, &qword_1006C1A38);
  sub_100271D14(&qword_1006C1AE8);
  v19 = v22;
  v20 = v25;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v26 + 8))(v4, v20);
  return (*(v23 + 8))(v16, v19);
}

void sub_1002B6EE8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1002B6F58()
{
  v0 = sub_10015DA04(&qword_1006C1AB8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000060B4(&qword_1006C1AF0, &qword_1006C1AB8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002B70A8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = qword_1006BC718;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_10015DA04(&unk_1006C7A60);
    v4 = static ICAttachment.hasValidEntityIdentifier;
LABEL_9:
    sub_10002597C(v3, v4);
    v7[0] = v1;
    v7[1] = v7;
    swift_unknownObjectRetain();
    LOBYTE(v1) = Predicate.evaluate(_:)();
    swift_unknownObjectRelease();

    return v1 & 1;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v5 = qword_1006BC720;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v3 = sub_10015DA04(&unk_1006C2FD0);
    v4 = qword_1006C2C70;
    goto LABEL_9;
  }

  return v1 & 1;
}

uint64_t sub_1002B7368(uint64_t a1)
{
  swift_getObjectType();
  sub_100006038(a1, v7, &qword_1006BE7A0);
  if (!v8)
  {
    sub_1000073B4(v7, &qword_1006BE7A0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if ((static AttachmentID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (*&v6[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title] == *(v1 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title) && *&v6[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title + 8] == *(v1 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title + 8))
  {

    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1002B75AC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v24 = a4;
  v4 = sub_1002B5FCC(a1);
  sub_10015DA04(&unk_1006C2CB0);
  sub_10015DA04(&qword_1006C2FB8);
  v5 = sub_10015DA04(&qword_1006C2FB0);
  sub_1000060B4(&qword_1006C3078, &unk_1006C2CB0);
  sub_1000060B4(&qword_1006C2FC0, &qword_1006C2FB8);
  sub_1000060B4(&qword_1006C2FC8, &qword_1006C2FB0);
  v6 = &v24;
  v7 = Sequence.sorted<A, B>(using:)();

  v8 = a3;
  if (a3)
  {
    return v7;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    v5 = v7 >> 62;
    if (!(v7 >> 62))
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v9 >= v11)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  if (v7 < 0)
  {
    v6 = v7;
  }

  else
  {
    v6 = v8;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v4 >= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v4;
    }

    if (v4 < 0)
    {
      v21 = a2;
    }

    if (a2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v11)
    {
LABEL_11:
      if ((v7 & 0xC000000000000001) != 0 && v11)
      {
        type metadata accessor for AttachmentSearchResult(0);

        v12 = 0;
        do
        {
          v13 = v12 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v12);
          v12 = v13;
        }

        while (v11 != v13);
      }

      else
      {
      }

      if (v5)
      {
        v6 = _CocoaArrayWrapper.subscript.getter();
        v5 = v14;
        v4 = v15;
        v11 = v16;

        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 0;
        v6 = (v7 & 0xFFFFFFFFFFFFFF8);
        v5 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
        v11 = (2 * v11) | 1;
        if (v11)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = _swiftEmptyArrayStorage;
          }

          v19 = v18[2];

          if (!__OFSUB__(v11 >> 1, v4))
          {
            if (v19 == (v11 >> 1) - v4)
            {
              v7 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v7)
              {
                swift_unknownObjectRelease();
                v7 = _swiftEmptyArrayStorage;
              }

              goto LABEL_28;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100375108(v6, v5, v4, v11);
      v7 = v17;
LABEL_28:
      swift_unknownObjectRelease();
      return v7;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B78F8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = sub_10015DA04(&qword_1006C2FB0);
  v13 = sub_1002553A8(sub_1002B7C4C, 0, a5, v11, &type metadata for Never, a7, &protocol witness table for Never, v12);
  sub_10015DA04(&qword_1006C2FB8);
  sub_1000060B4(&qword_1006C2FC0, &qword_1006C2FB8);
  sub_1000060B4(&qword_1006C2FC8, &qword_1006C2FB0);
  v14 = v30;
  v15 = Sequence.sorted<A, B>(using:)();

  v16 = a3;
  if (a3)
  {
    return v15;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    a4 = v15 >> 62;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= v19)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }
  }

  if (v15 < 0)
  {
    v14 = v15;
  }

  else
  {
    v14 = v16;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v13 >= a2)
    {
      v29 = a2;
    }

    else
    {
      v29 = v13;
    }

    if (v13 < 0)
    {
      v29 = a2;
    }

    if (a2)
    {
      v19 = v29;
    }

    else
    {
      v19 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v19)
    {
LABEL_11:
      if ((v15 & 0xC000000000000001) != 0 && v19)
      {
        type metadata accessor for AttachmentSearchResult(0);

        v20 = 0;
        do
        {
          v21 = v20 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v20);
          v20 = v21;
        }

        while (v19 != v21);
      }

      else
      {
      }

      if (a4)
      {
        v14 = _CocoaArrayWrapper.subscript.getter();
        a2 = v22;
        v13 = v23;
        v19 = v24;

        if (v19)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = 0;
        v14 = v15 & 0xFFFFFFFFFFFFFF8;
        a2 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
        v19 = (2 * v19) | 1;
        if (v19)
        {
LABEL_22:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = _swiftEmptyArrayStorage;
          }

          v27 = v26[2];

          if (!__OFSUB__(v19 >> 1, v13))
          {
            if (v27 == (v19 >> 1) - v13)
            {
              v15 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v15)
              {
                return v15;
              }

              v15 = _swiftEmptyArrayStorage;
LABEL_28:
              swift_unknownObjectRelease();
              return v15;
            }

            goto LABEL_46;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_unknownObjectRelease_n();
        }
      }

      sub_100375108(v14, a2, v13, v19);
      v15 = v25;
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B7C4C()
{
  v0 = type metadata accessor for String.StandardComparator();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v1 + 16))(v4, v6, v0);
  SortDescriptor.init<A>(_:comparator:order:)();
  return (*(v1 + 8))(v6, v0);
}

void (*VisibleAttachmentsQuery.loggingConfiguration.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t VisibleAttachmentsQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_1002B7E2C, 0, 0);
}

uint64_t sub_1002B7E2C()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1001927C4;
  v3 = v0[3];

  return sub_10018BB3C(v3, v1);
}

uint64_t VisibleAttachmentsQuery.suggestedEntities()(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 2120) = a3;
  *(v3 + 1752) = a2;
  *(v3 + 1704) = a1;
  v4 = type metadata accessor for AttachmentID();
  *(v3 + 1800) = v4;
  *(v3 + 1848) = *(v4 - 8);
  *(v3 + 1896) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 1904) = v5;
  *(v3 + 1912) = *(v5 - 8);
  *(v3 + 1920) = swift_task_alloc();
  *(v3 + 1928) = swift_task_alloc();
  *(v3 + 1936) = swift_task_alloc();
  *(v3 + 1944) = swift_task_alloc();
  v6 = sub_10015DA04(&unk_1006C7A60);
  *(v3 + 1952) = v6;
  *(v3 + 1960) = *(v6 - 8);
  *(v3 + 1968) = swift_task_alloc();
  v7 = type metadata accessor for ManagedEntityContextType();
  *(v3 + 1976) = v7;
  *(v3 + 1984) = *(v7 - 8);
  *(v3 + 1992) = swift_task_alloc();

  return _swift_task_switch(sub_1002B80F8, 0, 0);
}

uint64_t sub_1002B80F8()
{
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1984);
  v3 = *(v0 + 1976);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 1464);
  v5 = [v4 modernManagedObjectContext];
  *(v0 + 2000) = v5;

  AppDependency.wrappedValue.getter();
  v6 = *(v0 + 1512);
  (*(v2 + 104))(v1, enum case for ManagedEntityContextType.html(_:), v3);
  v7 = ICUnifiedNoteContext.managedObjectContext(for:)();
  *(v0 + 2008) = v7;
  (*(*(v0 + 1984) + 8))(*(v0 + 1992), *(v0 + 1976));

  sub_1000054A4(0, &unk_1006C2C90);
  v8 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2016) = v8;
  sub_10015DA04(&unk_1006BD390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100531E20;
  *(v9 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v5];
  sub_1000054A4(0, &qword_1006C2CA0);
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 1968);
  v11 = *(v0 + 1960);
  v12 = *(v0 + 1952);
  v13 = sub_10002597C(v12, static ICAttachment.hasValidEntityIdentifier);
  (*(v11 + 16))(v10, v13, v12);
  v14 = NSPredicate.init<A>(_:)();
  if (v14)
  {
    v18 = *(v0 + 2120);
    *(v9 + 40) = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v8 setPredicate:v20];
    sub_1000054A4(0, &qword_1006C2CA8);
    v21 = static NSObject<>.ic_fetchRequest()();
    *(v0 + 2024) = v21;
    if ((v18 & 1) == 0)
    {
      v22 = [objc_opt_self() predicateWithValue:0];
      [v21 setPredicate:v22];
    }

    [v8 setFetchLimit:25];
    [v21 setFetchLimit:25];
    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "VisibleAttachmentsQuery: suggested entities", v25, 2u);
    }

    v26 = *(v0 + 1944);
    v27 = *(v0 + 1912);
    v28 = *(v0 + 1904);

    v29 = *(v27 + 8);
    *(v0 + 2032) = v29;
    v29(v26, v28);
    v30 = swift_allocObject();
    *(v0 + 2040) = v30;
    *(v30 + 16) = v5;
    *(v30 + 24) = v8;
    v31 = v5;
    v32 = v8;
    sub_10015DA04(&unk_1006C2CB0);
    swift_asyncLet_begin();
    v33 = swift_allocObject();
    *(v0 + 2048) = v33;
    *(v33 + 16) = v7;
    *(v33 + 24) = v21;
    v34 = v7;
    v35 = v21;
    swift_asyncLet_begin();
    v16 = sub_1002B8650;
    v14 = v0 + 16;
    v15 = v0 + 1560;
    v17 = v0 + 1296;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v14, v15, v16, v17);
}

uint64_t sub_1002B8650()
{
  v1[257] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 201, sub_1002B9164, v1 + 184);
  }

  else
  {
    v1[258] = v1[195];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 201, sub_1002B8704, v1 + 196);
  }
}

uint64_t sub_1002B8704()
{
  *(v1 + 2072) = v0;
  if (v0)
  {
    v2 = sub_1002B93F8;
  }

  else
  {
    v2 = sub_1002B8738;
  }

  return _swift_task_switch(v2, 0, 0);
}

size_t sub_1002B8738()
{
  v38 = v0;
  v37 = *(v0 + 2064);

  sub_1002DC23C(v1);
  v2 = sub_1002B75AC(&off_10064CC48, 25, 0, v37);

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = v2;
  v37 = _swiftEmptyArrayStorage;
  result = sub_100189724(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = *(v0 + 1848);
  v8 = v37;
  v9 = v4;
  v35 = v4 & 0xC000000000000001;
  v10 = v4;
  v11 = v3;
  do
  {
    if (v35)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v6 + 32);
    }

    v13 = v12;
    (*(v7 + 16))(*(v0 + 1896), v12 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id, *(v0 + 1800));

    v37 = v8;
    v15 = v8[2];
    v14 = v8[3];
    if (v15 >= v14 >> 1)
    {
      sub_100189724(v14 > 1, v15 + 1, 1);
      v8 = v37;
    }

    v16 = *(v0 + 1896);
    v17 = *(v0 + 1800);
    ++v6;
    v8[2] = v15 + 1;
    (*(v7 + 32))(v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
    v9 = v10;
  }

  while (v11 != v6);

LABEL_14:
  *(v0 + 2080) = v8;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v8[2];

    _os_log_impl(&_mh_execute_header, v18, v19, "VisibleAttachmentsQuery: found %ld suggested attachment(s)", v20, 0xCu);
  }

  else
  {
  }

  (*(v0 + 2032))(*(v0 + 1936), *(v0 + 1904));
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 2032);
  v25 = *(v0 + 1928);
  v26 = *(v0 + 1904);
  if (v23)
  {
    v36 = *(v0 + 1904);
    v34 = *(v0 + 2032);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = Array.description.getter();
    v31 = sub_100009D88(v29, v30, &v37);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "VisibleAttachmentsQuery: matching attachment IDs: %s", v27, 0xCu);
    sub_100009F60(v28);

    v34(v25, v36);
  }

  else
  {

    v24(v25, v26);
  }

  AppDependency.wrappedValue.getter();
  v32 = *(v0 + 1656);
  *(v0 + 2088) = v32;
  v33 = swift_task_alloc();
  *(v0 + 2096) = v33;
  *v33 = v0;
  v33[1] = sub_1002B8BF0;

  return sub_10018BB3C(v8, v32);
}

uint64_t sub_1002B8BF0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 2104) = v1;

  if (v1)
  {
    v5 = sub_1002B8ED0;
    v6 = v4 + 656;
    v7 = v4 + 1608;
    v8 = v4 + 1712;
  }

  else
  {
    *(v4 + 2112) = a1;
    v5 = sub_1002B8D64;
    v6 = v4 + 656;
    v7 = v4 + 1608;
    v8 = v4 + 1808;
  }

  return _swift_asyncLet_finish(v6, v7, v5, v8);
}

uint64_t sub_1002B8DBC()
{
  v1 = *(v0 + 2024);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 2008);

  v4 = *(v0 + 8);
  v5 = *(v0 + 2112);

  return v4(v5);
}

uint64_t sub_1002B8F28()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = *(v0 + 2032);
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2016);
  v9 = v1;
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1904);

  v6(v10, v11);
  swift_willThrow();

  v12 = *(v0 + 2008);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B91BC()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = *(v0 + 2032);
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2016);
  v9 = v1;
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1904);

  v6(v10, v11);
  swift_willThrow();

  v12 = *(v0 + 2008);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B93F8()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1608, sub_1002B9464, v0 + 1616);
}

uint64_t sub_1002B94BC()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = *(v0 + 2032);
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2016);
  v9 = v1;
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1904);

  v6(v10, v11);
  swift_willThrow();

  v12 = *(v0 + 2008);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B96F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002B971C, 0, 0);
}

uint64_t sub_1002B971C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10015DA04(&unk_1006C2CB0);
  *v6 = v0;
  v6[1] = sub_1002619DC;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1002C3D8C, v3, v7);
}

uint64_t sub_1002B981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002B9840, 0, 0);
}

uint64_t sub_1002B9840()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10015DA04(&unk_1006C2CB0);
  *v6 = v0;
  v6[1] = sub_100261544;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_1002C3D60, v3, v7);
}

unint64_t sub_1002B9940@<X0>(unint64_t *a1@<X2>, void *a2@<X8>)
{
  v5 = type metadata accessor for AttachmentID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000054A4(0, a1);
  result = NSManagedObjectContext.fetch<A>(_:)();
  v11 = v2;
  if (!v2)
  {
    v12 = result;
    v35 = v8;
    v36 = a2;
    v38 = _swiftEmptyArrayStorage;
    v13 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
LABEL_4:
        v33 = v9;
        v34 = v5;
        v15 = 0;
        v5 = v12 & 0xC000000000000001;
        v32 = (v6 + 32);
        v9 = _swiftEmptyArrayStorage;
        do
        {
          v6 = v15;
          while (1)
          {
            if (v5)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *(v13 + 16))
              {
                goto LABEL_22;
              }

              v16 = *(v12 + 8 * v6 + 32);
            }

            v17 = v16;
            v15 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if (![v16 isHiddenFromSearch])
            {
              break;
            }

            ++v6;
            if (v15 == v14)
            {
              goto LABEL_25;
            }
          }

          v31 = v11;
          v30 = type metadata accessor for AttachmentSearchResult(0);
          v18 = objc_allocWithZone(v30);
          v19 = v35;
          ICAttachmentObject<>.entityIdentifier.getter();
          (*v32)(&v18[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id], v19, v34);
          v20 = [v17 title];
          if (v20)
          {
            v21 = v20;
            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            v24 = v23;
            v25 = v29;
          }

          else
          {
            v25 = 0;
            v24 = 0xE000000000000000;
          }

          v11 = v31;
          v26 = &v18[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title];
          *v26 = v25;
          v26[1] = v24;
          v27 = [v17 objectID];

          v28 = [v27 ic_isAttachmentType];
          v18[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_isModernAttachment] = v28;
          v37.receiver = v18;
          v37.super_class = v30;
          objc_msgSendSuper2(&v37, "init");
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v38;
        }

        while (v15 != v14);
        goto LABEL_25;
      }
    }

    else
    {
      v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_25:

    *v36 = v9;
  }

  return result;
}

uint64_t sub_1002B9C84@<X0>(uint64_t a1@<X8>)
{
  result = _s11MobileNotes23VisibleAttachmentsQueryVACycfC_0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1002B9CB4(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_1002B9CD8, 0, 0);
}

uint64_t sub_1002B9CD8()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100187AB0;
  v3 = v0[3];

  return sub_10018BB3C(v3, v1);
}

uint64_t sub_1002B9D98(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_1001927BC;

  return VisibleAttachmentsQuery.suggestedEntities()(v3, v4, v5);
}

uint64_t sub_1002B9E44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100179B50();
  *v5 = v2;
  v5[1] = sub_10000A600;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t VisibleAttachmentsQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1002B9F20, 0, 0);
}

uint64_t sub_1002B9F20()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_10015DA04(&unk_1006C2CC8);
  v3 = *(type metadata accessor for VisibleAttachmentsQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *v6 = KeyPath;
  v6[1] = v8;
  v6[2] = v2;
  v6[3] = v1;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1002BA0BC;
  v10 = *(v0 + 72);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);

  return VisibleAttachmentsQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v11, v12, v10);
}

uint64_t sub_1002BA0BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002BA214, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1002BA214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VisibleAttachmentsQuery.ComparatorKeyPath.title.getter()
{
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  return KeyPath;
}

uint64_t VisibleAttachmentsQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 2642) = a8;
  *(v8 + 2160) = a7;
  *(v8 + 2152) = a6;
  *(v8 + 2641) = a5;
  *(v8 + 2144) = a4;
  *(v8 + 2136) = a3;
  *(v8 + 2640) = a2;
  *(v8 + 2128) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 2168) = v9;
  *(v8 + 2176) = *(v9 - 8);
  *(v8 + 2184) = swift_task_alloc();
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  *(v8 + 2208) = swift_task_alloc();
  v10 = sub_10015DA04(&unk_1006C7A60);
  *(v8 + 2216) = v10;
  *(v8 + 2224) = *(v10 - 8);
  *(v8 + 2232) = swift_task_alloc();
  v11 = type metadata accessor for AttachmentID();
  *(v8 + 2240) = v11;
  *(v8 + 2248) = *(v11 - 8);
  *(v8 + 2256) = swift_task_alloc();
  *(v8 + 2264) = swift_task_alloc();
  v12 = type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  *(v8 + 2272) = v12;
  *(v8 + 2280) = *(v12 - 8);
  *(v8 + 2288) = swift_task_alloc();
  *(v8 + 2296) = swift_task_alloc();
  *(v8 + 2304) = swift_task_alloc();
  *(v8 + 2312) = swift_task_alloc();
  sub_10015DA04(&qword_1006BEA90);
  *(v8 + 2320) = swift_task_alloc();
  *(v8 + 2328) = swift_task_alloc();
  v13 = type metadata accessor for ManagedEntityContextType();
  *(v8 + 2336) = v13;
  *(v8 + 2344) = *(v13 - 8);
  *(v8 + 2352) = swift_task_alloc();

  return _swift_task_switch(sub_1002BA5A8, 0, 0);
}

uint64_t sub_1002BA5A8()
{
  v140 = v0;
  v1 = *(v0 + 2352);
  v2 = *(v0 + 2344);
  v3 = *(v0 + 2336);
  AppDependency.wrappedValue.getter();
  v4 = *(v0 + 1800);
  *(v0 + 2360) = [v4 modernManagedObjectContext];

  AppDependency.wrappedValue.getter();
  v5 = *(v0 + 2104);
  v6 = enum case for ManagedEntityContextType.html(_:);
  v7 = *(v2 + 104);
  (v7)(v1, enum case for ManagedEntityContextType.html(_:), v3);
  *(v0 + 2368) = ICUnifiedNoteContext.managedObjectContext(for:)();
  v8 = *(v0 + 2344);
  v9 = *(v0 + 2336);
  v10 = *(v0 + 2328);
  v11 = *(v0 + 2320);
  v134 = *(v0 + 2136);
  v135 = *(v0 + 2640);
  (*(v8 + 8))(*(v0 + 2352), v9);

  v133 = enum case for ManagedEntityContextType.modern(_:);
  v7(v10);
  v12 = *(v8 + 56);
  v12(v10, 0, 1, v9);
  sub_100006038(v10, v11, &qword_1006BEA90);

  *(v0 + 2376) = sub_1002C1948(v13, v135 & 1, v11, 0);
  sub_1000073B4(v10, &qword_1006BEA90);
  (v7)(v10, v6, v9);
  v12(v10, 0, 1, v9);
  sub_100006038(v10, v11, &qword_1006BEA90);

  *(v0 + 2384) = sub_1002C1948(v14, v135 & 1, v11, 0);
  sub_1000073B4(v10, &qword_1006BEA90);
  (v7)(v10, v133, v9);
  v12(v10, 0, 1, v9);
  sub_100006038(v10, v11, &qword_1006BEA90);

  *(v0 + 2392) = sub_1002C1948(v15, v135 & 1, v11, 1);
  sub_1000073B4(v10, &qword_1006BEA90);
  (v7)(v10, v6, v9);
  v12(v10, 0, 1, v9);
  sub_100006038(v10, v11, &qword_1006BEA90);

  *(v0 + 2400) = sub_1002C1948(v16, v135 & 1, v11, 1);
  sub_1000073B4(v10, &qword_1006BEA90);
  if (*(v134 + 16))
  {
    v17 = *(v0 + 2136);
    v18 = sub_10015DA04(&qword_1006C2CD8);
    v19 = sub_1000060B4(&unk_1006C2CE0, &qword_1006C2CD8);
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = sub_10022115C;
    v20[4] = 0;
    v20[5] = sub_1002C2CF8;
    v20[6] = 0;
    v20[7] = sub_1002C2D08;
    v20[8] = 0;
  }

  else
  {
    v18 = sub_10015DA04(&qword_1006C2D20);
    v19 = sub_1000060B4(&qword_1006C2D28, &qword_1006C2D20);
    v20 = &off_10064CC70;
  }

  v21 = *(v0 + 2128);
  *(v0 + 1360) = v18;
  *(v0 + 1368) = v19;
  *(v0 + 1336) = v20;
  sub_10017CC60((v0 + 1336), v18);
  v22 = sub_1000054A4(0, &qword_1006C13E8);
  *(v0 + 2408) = v22;
  *(v0 + 2416) = sub_1002553A8(sub_1002BFA58, 0, v18, v22, &type metadata for Never, v19, &protocol witness table for Never, v23);
  v24 = *(v21 + 16);
  *(v0 + 2424) = v24;
  v25 = _swiftEmptyArrayStorage;
  if (v24)
  {
    v26 = *(v0 + 2304);
    v27 = *(v0 + 2280);
    v28 = *(v0 + 2128) + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v27 + 72);
    do
    {
      v30 = *(v0 + 2312);
      v31 = *(v0 + 2304);
      sub_1002C33BC(v28, v30, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      sub_1002C33BC(v30, v31, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = *(v0 + 2304);
      if (EnumCaseMultiPayload == 3)
      {
        v34 = *(v26 + 8);
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = *v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v36 = *(v0 + 2312);
          v37 = objc_opt_self();
          v38 = String._bridgeToObjectiveC()();

          v39 = [v37 prefixMatchingQueryStringForSearchString:v38];

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          sub_1002C3424(v36, type metadata accessor for VisibleAttachmentsQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1001CAE70(0, *(v25 + 2) + 1, 1, v25);
          }

          v44 = *(v25 + 2);
          v43 = *(v25 + 3);
          if (v44 >= v43 >> 1)
          {
            v25 = sub_1001CAE70((v43 > 1), v44 + 1, 1, v25);
          }

          *(v25 + 2) = v44 + 1;
          v45 = &v25[16 * v44];
          *(v45 + 4) = v40;
          *(v45 + 5) = v42;
          goto LABEL_8;
        }
      }

      else
      {
        sub_1002C3424(v33, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      }

      sub_1002C3424(*(v0 + 2312), type metadata accessor for VisibleAttachmentsQuery.Comparator);
LABEL_8:
      v28 += v29;
      --v24;
    }

    while (v24);
  }

  v46 = *(v25 + 2);
  if (v46)
  {
    sub_100189444(0, v46, 0);
    v47 = (v25 + 40);
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      v138 = 40;
      v139 = 0xE100000000000000;

      v50._countAndFlagsBits = v48;
      v50._object = v49;
      String.append(_:)(v50);
      v51._countAndFlagsBits = 41;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);

      v53 = _swiftEmptyArrayStorage[2];
      v52 = _swiftEmptyArrayStorage[3];
      if (v53 >= v52 >> 1)
      {
        sub_100189444((v52 > 1), v53 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v53 + 1;
      v54 = &_swiftEmptyArrayStorage[2 * v53];
      v54[4] = 40;
      v54[5] = 0xE100000000000000;
      v47 += 2;
      --v46;
    }

    while (v46);
    v55 = *(v0 + 2640);

    *(v0 + 2096) = _swiftEmptyArrayStorage;
    v138 = 32;
    v139 = 0xE100000000000000;
    if (v55)
    {
      v56 = 31868;
    }

    else
    {
      v56 = 9766;
    }

    v57 = 0xE200000000000000;
    String.append(_:)(*&v56);

    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    sub_10015DA04(&qword_1006C13F0);
    sub_1000060B4(&qword_1006C13F8, &qword_1006C13F0);
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;

    *(v0 + 2432) = v61;
    sub_1000054A4(0, &unk_1006C1400);
    v62 = swift_task_alloc();
    *(v0 + 2440) = v62;
    *v62 = v0;
    v62[1] = sub_1002BB6C0;
    v63 = _swiftEmptyArrayStorage;
    v64 = v59;
    v65 = v61;

    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v64, v65, v63);
  }

  *(v0 + 2528) = 0;
  if (*(v0 + 2424))
  {
    v66 = 0;
    v67 = *(v0 + 2288);
    v68 = *(v0 + 2280);
    v69 = *(v0 + 2128) + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v70 = *(v68 + 72);
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      v73 = *(v0 + 2296);
      v74 = *(v0 + 2288);
      sub_1002C33BC(v69, v73, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      sub_1002C33BC(v73, v74, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      v75 = swift_getEnumCaseMultiPayload();
      v76 = *(v0 + 2288);
      if (v75 == 3)
      {
        v77 = *(v67 + 8);
        v78 = HIBYTE(v77) & 0xF;
        if ((v77 & 0x2000000000000000) == 0)
        {
          v78 = *v76 & 0xFFFFFFFFFFFFLL;
        }

        if (v78)
        {
          v79 = *(v0 + 2296);
          v80 = objc_opt_self();
          v81 = String._bridgeToObjectiveC()();

          v82 = [v80 prefixMatchingQueryStringForSearchString:v81];

          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          sub_1002C3424(v79, type metadata accessor for VisibleAttachmentsQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_1001CAE70(0, *(v71 + 2) + 1, 1, v71);
          }

          v87 = *(v71 + 2);
          v86 = *(v71 + 3);
          if (v87 >= v86 >> 1)
          {
            v71 = sub_1001CAE70((v86 > 1), v87 + 1, 1, v71);
          }

          *(v71 + 2) = v87 + 1;
          v88 = &v71[16 * v87];
          *(v88 + 4) = v83;
          *(v88 + 5) = v85;
          goto LABEL_34;
        }
      }

      else
      {
        sub_1002C3424(v76, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      }

      sub_1002C3424(*(v0 + 2296), type metadata accessor for VisibleAttachmentsQuery.Comparator);
LABEL_34:
      v72 = *(v0 + 2424);
      ++v66;
      v69 += v70;
      if (v66 == v72)
      {
        v89 = *(v71 + 2);

        v90 = v89 < v72;
        goto LABEL_47;
      }
    }
  }

  v90 = 1;
LABEL_47:
  *(v0 + 2643) = v90;
  v91 = *(v0 + 2360);
  sub_1000054A4(0, &unk_1006C2C90);
  v92 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2536) = v92;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v92 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_100534950;
  *(v94 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v91];
  sub_1000054A4(0, &qword_1006C2CA0);
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v95 = *(v0 + 2232);
  v96 = *(v0 + 2224);
  v97 = *(v0 + 2216);
  v98 = sub_10002597C(v97, static ICAttachment.hasValidEntityIdentifier);
  (*(v96 + 16))(v95, v98, v97);
  v64 = NSPredicate.init<A>(_:)();
  if (!v64)
  {
    __break(1u);
    return static ICSearchQueryOperation.searchResults(queryString:rankingQueries:)(v64, v65, v63);
  }

  v99 = v64;
  v100 = *(v0 + 2376);
  v101 = *(v0 + 2642);

  *(v94 + 40) = v99;
  *(v94 + 48) = v100;
  v102 = v100;
  v103 = Array._bridgeToObjectiveC()().super.isa;

  v104 = [objc_opt_self() andPredicateWithSubpredicates:v103];

  [v92 setPredicate:v104];
  sub_1000054A4(0, &qword_1006C2CA8);
  v105 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2544) = v105;
  if ((v101 & 1) == 0)
  {
    v106 = [objc_opt_self() predicateWithValue:0];
    [v105 setPredicate:v106];
  }

  if ((*(v0 + 2641) & 1) == 0)
  {
    v107 = *(v0 + 2144);
    [v92 setFetchLimit:v107];
    [v105 setFetchLimit:v107];
  }

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = *(v0 + 2176);
    v136 = *(v0 + 2168);
    v137 = *(v0 + 2208);
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v138 = v112;
    *v111 = 136315138;
    v113 = Array.description.getter();
    v115 = sub_100009D88(v113, v114, &v138);

    *(v111 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v108, v109, "VisibleAttachmentsQuery: performing with filters %s", v111, 0xCu);
    sub_100009F60(v112);

    v116 = *(v110 + 8);
    v116(v137, v136);
  }

  else
  {
    v117 = *(v0 + 2208);
    v118 = *(v0 + 2176);
    v119 = *(v0 + 2168);

    v116 = *(v118 + 8);
    v116(v117, v119);
  }

  *(v0 + 2552) = v116;
  v120 = *(v0 + 2384);
  v121 = *(v0 + 2376);
  v122 = *(v0 + 2368);
  v123 = *(v0 + 2360);
  v124 = swift_allocObject();
  *(v0 + 2560) = v124;
  v124[2] = v123;
  v124[3] = v92;
  v124[4] = v121;
  v125 = v123;
  v126 = v121;
  v127 = v92;
  *(v0 + 2568) = sub_10015DA04(&unk_1006C2CB0);
  swift_asyncLet_begin();
  v128 = swift_allocObject();
  *(v0 + 2576) = v128;
  v128[2] = v122;
  v128[3] = v105;
  v128[4] = v120;
  v129 = v122;
  v130 = v105;
  v131 = v120;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1992, sub_1002BD6C0, v0 + 1760);
}

uint64_t sub_1002BB6C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2448) = a1;
  *(v3 + 2456) = v1;

  if (v1)
  {

    v4 = sub_1002BE4C4;
  }

  else
  {
    v4 = sub_1002BB810;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002BB810()
{
  v78 = v0;
  v1 = *(v0 + 2448);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(v0 + 2464) = type metadata accessor for MainActor();
    *(v0 + 2472) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002BC000, v3, v2);
  }

  *(v0 + 2528) = 0;
  if (*(v0 + 2424))
  {
    v4 = 0;
    v5 = *(v0 + 2288);
    v6 = *(v0 + 2280);
    v7 = *(v0 + 2128) + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v11 = *(v0 + 2296);
      v12 = *(v0 + 2288);
      sub_1002C33BC(v7, v11, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      sub_1002C33BC(v11, v12, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = *(v0 + 2288);
      if (EnumCaseMultiPayload == 3)
      {
        v15 = *(v5 + 8);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v17 = *(v0 + 2296);
          v18 = objc_opt_self();
          v19 = String._bridgeToObjectiveC()();

          v20 = [v18 prefixMatchingQueryStringForSearchString:v19];

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          sub_1002C3424(v17, type metadata accessor for VisibleAttachmentsQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1001CAE70(0, *(v9 + 2) + 1, 1, v9);
          }

          v25 = *(v9 + 2);
          v24 = *(v9 + 3);
          if (v25 >= v24 >> 1)
          {
            v9 = sub_1001CAE70((v24 > 1), v25 + 1, 1, v9);
          }

          *(v9 + 2) = v25 + 1;
          v26 = &v9[16 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          goto LABEL_11;
        }
      }

      else
      {
        sub_1002C3424(v14, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      }

      sub_1002C3424(*(v0 + 2296), type metadata accessor for VisibleAttachmentsQuery.Comparator);
LABEL_11:
      v10 = *(v0 + 2424);
      ++v4;
      v7 += v8;
      if (v4 == v10)
      {
        v27 = *(v9 + 2);

        v28 = v27 < v10;
        goto LABEL_24;
      }
    }
  }

  v28 = 1;
LABEL_24:
  *(v0 + 2643) = v28;
  v29 = *(v0 + 2360);
  sub_1000054A4(0, &unk_1006C2C90);
  v30 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2536) = v30;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v30 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100534950;
  *(v32 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v29];
  sub_1000054A4(0, &qword_1006C2CA0);
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 2232);
  v34 = *(v0 + 2224);
  v35 = *(v0 + 2216);
  v36 = sub_10002597C(v35, static ICAttachment.hasValidEntityIdentifier);
  (*(v34 + 16))(v33, v36, v35);
  v37 = NSPredicate.init<A>(_:)();
  if (v37)
  {
    v41 = v37;
    v42 = *(v0 + 2376);
    v43 = *(v0 + 2642);

    *(v32 + 40) = v41;
    *(v32 + 48) = v42;
    v44 = v42;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    v46 = [objc_opt_self() andPredicateWithSubpredicates:v45];

    [v30 setPredicate:v46];
    sub_1000054A4(0, &qword_1006C2CA8);
    v47 = static NSObject<>.ic_fetchRequest()();
    *(v0 + 2544) = v47;
    if ((v43 & 1) == 0)
    {
      v48 = [objc_opt_self() predicateWithValue:0];
      [v47 setPredicate:v48];
    }

    if ((*(v0 + 2641) & 1) == 0)
    {
      v49 = *(v0 + 2144);
      [v30 setFetchLimit:v49];
      [v47 setFetchLimit:v49];
    }

    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 2176);
      v75 = *(v0 + 2168);
      v76 = *(v0 + 2208);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315138;
      v55 = Array.description.getter();
      v57 = sub_100009D88(v55, v56, &v77);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "VisibleAttachmentsQuery: performing with filters %s", v53, 0xCu);
      sub_100009F60(v54);

      v58 = *(v52 + 8);
      v58(v76, v75);
    }

    else
    {
      v59 = *(v0 + 2208);
      v60 = *(v0 + 2176);
      v61 = *(v0 + 2168);

      v58 = *(v60 + 8);
      v58(v59, v61);
    }

    *(v0 + 2552) = v58;
    v62 = *(v0 + 2384);
    v63 = *(v0 + 2376);
    v64 = *(v0 + 2368);
    v65 = *(v0 + 2360);
    v66 = swift_allocObject();
    *(v0 + 2560) = v66;
    v66[2] = v65;
    v66[3] = v30;
    v66[4] = v63;
    v67 = v65;
    v68 = v63;
    v69 = v30;
    *(v0 + 2568) = sub_10015DA04(&unk_1006C2CB0);
    swift_asyncLet_begin();
    v70 = swift_allocObject();
    *(v0 + 2576) = v70;
    v70[2] = v64;
    v70[3] = v47;
    v70[4] = v62;
    v71 = v64;
    v72 = v47;
    v73 = v62;
    swift_asyncLet_begin();
    v39 = sub_1002BD6C0;
    v37 = v0 + 16;
    v38 = v0 + 1992;
    v40 = v0 + 1760;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v37, v38, v39, v40);
}

uint64_t sub_1002BC000()
{
  v22 = v0;
  v1 = *(v0 + 2368);
  v2 = *(v0 + 2360);

  v3 = [objc_opt_self() sharedIndexer];
  sub_1000054A4(0, &unk_1006C64D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10015DA04(&unk_1006BD390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E20;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  sub_1000054A4(0, &unk_1006C2CF0);
  v6 = v2;
  v7 = v1;
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v3 objectsForSearchableItems:isa inContexts:v8];

  sub_10015DA04(&unk_1006C1410);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20[310] = v11;
    if (!i)
    {
      goto LABEL_24;
    }

    v13 = 0;
    v19 = v20 + 255;
    if ((v10 & 0xC000000000000001) != 0)
    {
      break;
    }

LABEL_5:
    if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      v14 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_7;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    ;
  }

  while (1)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_27;
    }

LABEL_7:
    v20[261] = &OBJC_PROTOCOL___ICAttachmentObject;
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v15;
    swift_getObjectType();
    sub_1000054A4(0, &qword_1006C2D00);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_14;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_1002B70A8() & 1) == 0 || (*v19 = &OBJC_PROTOCOL___ICSearchIndexable, (v16 = swift_dynamicCastObjCProtocolConditional()) != 0) && ([v16 isHiddenFromSearch] & 1) != 0 || (objc_msgSend(v11, "isDeletedOrInTrash", v19))
    {
      swift_unknownObjectRelease();
LABEL_14:
      swift_unknownObjectRelease();
      if (v14 == i)
      {
        break;
      }

      goto LABEL_15;
    }

    v17 = objc_allocWithZone(type metadata accessor for AttachmentSearchResult(0));
    sub_1002C2D24(v11, v17);
    swift_unknownObjectRelease();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v11 = &v21;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20[310] = v21;
    if (v14 == i)
    {
      break;
    }

LABEL_15:
    ++v13;
    if ((v10 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_24:

  return _swift_task_switch(sub_1002BC3CC, 0, 0);
}

uint64_t sub_1002BC3CC()
{
  v77 = v0;
  if (static EntityQueryComparatorMode.== infix(_:_:)())
  {

    *(v0 + 2488) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002BCB9C, v2, v1);
  }

  *(v0 + 2528) = *(v0 + 2480);
  if (*(v0 + 2424))
  {
    v3 = 0;
    v4 = *(v0 + 2288);
    v5 = *(v0 + 2280);
    v6 = *(v0 + 2128) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = *(v0 + 2296);
      v11 = *(v0 + 2288);
      sub_1002C33BC(v6, v10, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      sub_1002C33BC(v10, v11, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = *(v0 + 2288);
      if (EnumCaseMultiPayload == 3)
      {
        v14 = *(v4 + 8);
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = *v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          v16 = *(v0 + 2296);
          v17 = objc_opt_self();
          v18 = String._bridgeToObjectiveC()();

          v19 = [v17 prefixMatchingQueryStringForSearchString:v18];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          sub_1002C3424(v16, type metadata accessor for VisibleAttachmentsQuery.Comparator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1001CAE70(0, *(v8 + 2) + 1, 1, v8);
          }

          v24 = *(v8 + 2);
          v23 = *(v8 + 3);
          if (v24 >= v23 >> 1)
          {
            v8 = sub_1001CAE70((v23 > 1), v24 + 1, 1, v8);
          }

          *(v8 + 2) = v24 + 1;
          v25 = &v8[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1002C3424(v13, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      }

      sub_1002C3424(*(v0 + 2296), type metadata accessor for VisibleAttachmentsQuery.Comparator);
LABEL_9:
      v9 = *(v0 + 2424);
      ++v3;
      v6 += v7;
      if (v3 == v9)
      {
        v26 = *(v8 + 2);

        v27 = v26 < v9;
        goto LABEL_22;
      }
    }
  }

  v27 = 1;
LABEL_22:
  *(v0 + 2643) = v27;
  v28 = *(v0 + 2360);
  sub_1000054A4(0, &unk_1006C2C90);
  v29 = static NSObject<>.ic_fetchRequest()();
  *(v0 + 2536) = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v29 setSortDescriptors:isa];

  sub_10015DA04(&unk_1006BD390);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100534950;
  *(v31 + 32) = [swift_getObjCClassFromMetadata() predicateForVisibleAttachmentsInContext:v28];
  sub_1000054A4(0, &qword_1006C2CA0);
  if (qword_1006BC718 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 2232);
  v33 = *(v0 + 2224);
  v34 = *(v0 + 2216);
  v35 = sub_10002597C(v34, static ICAttachment.hasValidEntityIdentifier);
  (*(v33 + 16))(v32, v35, v34);
  v36 = NSPredicate.init<A>(_:)();
  if (v36)
  {
    v40 = v36;
    v41 = *(v0 + 2376);
    v42 = *(v0 + 2642);

    *(v31 + 40) = v40;
    *(v31 + 48) = v41;
    v43 = v41;
    v44 = Array._bridgeToObjectiveC()().super.isa;

    v45 = [objc_opt_self() andPredicateWithSubpredicates:v44];

    [v29 setPredicate:v45];
    sub_1000054A4(0, &qword_1006C2CA8);
    v46 = static NSObject<>.ic_fetchRequest()();
    *(v0 + 2544) = v46;
    if ((v42 & 1) == 0)
    {
      v47 = [objc_opt_self() predicateWithValue:0];
      [v46 setPredicate:v47];
    }

    if ((*(v0 + 2641) & 1) == 0)
    {
      v48 = *(v0 + 2144);
      [v29 setFetchLimit:v48];
      [v46 setFetchLimit:v48];
    }

    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 2176);
      v74 = *(v0 + 2168);
      v75 = *(v0 + 2208);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76 = v53;
      *v52 = 136315138;
      v54 = Array.description.getter();
      v56 = sub_100009D88(v54, v55, &v76);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "VisibleAttachmentsQuery: performing with filters %s", v52, 0xCu);
      sub_100009F60(v53);

      v57 = *(v51 + 8);
      v57(v75, v74);
    }

    else
    {
      v58 = *(v0 + 2208);
      v59 = *(v0 + 2176);
      v60 = *(v0 + 2168);

      v57 = *(v59 + 8);
      v57(v58, v60);
    }

    *(v0 + 2552) = v57;
    v61 = *(v0 + 2384);
    v62 = *(v0 + 2376);
    v63 = *(v0 + 2368);
    v64 = *(v0 + 2360);
    v65 = swift_allocObject();
    *(v0 + 2560) = v65;
    v65[2] = v64;
    v65[3] = v29;
    v65[4] = v62;
    v66 = v64;
    v67 = v62;
    v68 = v29;
    *(v0 + 2568) = sub_10015DA04(&unk_1006C2CB0);
    swift_asyncLet_begin();
    v69 = swift_allocObject();
    *(v0 + 2576) = v69;
    v69[2] = v63;
    v69[3] = v46;
    v69[4] = v61;
    v70 = v63;
    v71 = v46;
    v72 = v61;
    swift_asyncLet_begin();
    v38 = sub_1002BD6C0;
    v36 = v0 + 16;
    v37 = v0 + 1992;
    v39 = v0 + 1760;
  }

  else
  {
    __break(1u);
  }

  return _swift_asyncLet_get_throwing(v36, v37, v38, v39);
}

uint64_t sub_1002BCB9C()
{
  v53 = v0;
  v1 = *(v0 + 2480);

  v52 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v49 = v1 & 0xFFFFFFFFFFFFFF8;
    v50 = v1 & 0xC000000000000001;
    v48 = *(v0 + 2480) + 32;
    while (1)
    {
      if (v50)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v49 + 16))
        {
          goto LABEL_36;
        }

        v5 = *(v48 + 8 * v4);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(v5 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_isModernAttachment) == 1)
      {
        *(v0 + 1472) = type metadata accessor for AttachmentSearchResult(0);
        *(v0 + 1448) = v6;
        sub_100006038(v0 + 1448, v0 + 1416, &qword_1006BE7A0);
        v8 = *(v0 + 1440);
        if (v8)
        {
          v9 = sub_10017CC60((v0 + 1416), *(v0 + 1440));
          v10 = *(v8 - 8);
          v11 = swift_task_alloc();
          (*(v10 + 16))(v11, v9, v8);
          v12 = v6;
          v13 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v10 + 8))(v11, v8);

          sub_100009F60(v0 + 1416);
        }

        else
        {
          v20 = v6;
          v13 = 0;
        }

        v1 = [*(v0 + 2392) evaluateWithObject:v13];
        swift_unknownObjectRelease();
        v21 = v0 + 1448;
      }

      else
      {
        *(v0 + 1536) = type metadata accessor for AttachmentSearchResult(0);
        *(v0 + 1512) = v6;
        sub_100006038(v0 + 1512, v0 + 1480, &qword_1006BE7A0);
        v14 = *(v0 + 1504);
        if (v14)
        {
          v15 = sub_10017CC60((v0 + 1480), *(v0 + 1504));
          v16 = *(v14 - 8);
          v17 = swift_task_alloc();
          (*(v16 + 16))(v17, v15, v14);
          v18 = v6;
          v19 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v16 + 8))(v17, v14);

          sub_100009F60(v0 + 1480);
        }

        else
        {
          v22 = v6;
          v19 = 0;
        }

        v1 = [*(v0 + 2400) evaluateWithObject:v19];
        swift_unknownObjectRelease();
        v21 = v0 + 1512;
      }

      sub_1000073B4(v21, &qword_1006BE7A0);
      if (v1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v52;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v3 = v52;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_24:
  v23 = *(v0 + 2641);
  v24 = *(v0 + 2144);

  v25 = *(v0 + 1360);
  v26 = *(v0 + 1368);
  v27 = sub_10017CC60((v0 + 1336), v25);
  *(v0 + 2112) = v3;
  v28 = sub_10015DA04(&unk_1006C2CB0);
  v29 = sub_1000060B4(&qword_1006C2D08, &unk_1006C2CB0);
  v30 = sub_1002B78F8(v27, v24, v23 & 1, v28, v25, v29, v26);

  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
      goto LABEL_26;
    }

LABEL_39:

    v37 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_39;
  }

LABEL_26:
  v52 = _swiftEmptyArrayStorage;
  v32 = sub_100189724(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return _swift_task_switch(v32, v33, v34);
  }

  v35 = 0;
  v36 = *(v0 + 2248);
  v37 = v52;
  v38 = v30;
  v51 = v30 & 0xC000000000000001;
  v39 = v30;
  v40 = v31;
  do
  {
    if (v51)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v41 = *(v38 + 8 * v35 + 32);
    }

    v42 = v41;
    (*(v36 + 16))(*(v0 + 2264), v41 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id, *(v0 + 2240));

    v52 = v37;
    v44 = v37[2];
    v43 = v37[3];
    if (v44 >= v43 >> 1)
    {
      sub_100189724(v43 > 1, v44 + 1, 1);
      v37 = v52;
    }

    v45 = *(v0 + 2264);
    v46 = *(v0 + 2240);
    ++v35;
    v37[2] = v44 + 1;
    (*(v36 + 32))(v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v44, v45, v46);
    v38 = v39;
  }

  while (v40 != v35);

LABEL_40:
  *(v0 + 2496) = v37;
  v32 = sub_1002BD1A8;
  v33 = 0;
  v34 = 0;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_1002BD1A8()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[265];
  v0[313] = v1;
  v2 = swift_task_alloc();
  v0[314] = v2;
  *v2 = v0;
  v2[1] = sub_1002BD268;
  v3 = v0[312];

  return sub_10018BB3C(v3, v1);
}

uint64_t sub_1002BD268(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[209] = v2;
  v4[210] = a1;
  v4[211] = v1;
  v4[315] = v1;

  v5 = v3[313];
  if (v1)
  {

    v6 = sub_1002BD558;
  }

  else
  {

    v6 = sub_1002BD3D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002BD3D0()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);

  v8 = *(v0 + 1680);
  sub_100009F60(v0 + 1336);
  sub_10000C840(0);
  sub_10000C840(0);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_1002BD558()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);

  sub_100009F60(v0 + 1336);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002BD6C0()
{
  v1[323] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 243, sub_1002BE62C, v1 + 226);
  }

  else
  {
    v1[324] = v1[249];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 243, sub_1002BD77C, v1 + 238);
  }
}

uint64_t sub_1002BD77C()
{
  *(v1 + 2600) = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 656, v1 + 1944, sub_1002BE95C, v1 + 1952);
  }

  else
  {

    return _swift_task_switch(sub_1002BD834, 0, 0);
  }
}

size_t sub_1002BD834()
{
  v53 = v0;
  v1 = *(v0 + 2643);
  v52 = *(v0 + 2592);

  sub_1002DC23C(v2);
  v3 = v52;
  v4 = _swiftEmptyArrayStorage;
  if (v1 == 1)
  {

    v4 = v52;
  }

  v5 = *(v0 + 2528);
  if ((static EntityQueryComparatorMode.== infix(_:_:)() & 1) != 0 && v5)
  {
    v6 = *(v0 + 2528);

    v52 = v6;

    sub_1002DC23C(v3);
    v7 = sub_100270004(v6);

    v4 = sub_100375120(v7);
  }

  v8 = *(v0 + 2568);
  v9 = *(v0 + 2641);
  v10 = *(v0 + 2144);

  v11 = *(v0 + 1360);
  v12 = *(v0 + 1368);
  v13 = sub_10017CC60((v0 + 1336), v11);
  *(v0 + 1896) = v4;
  v14 = sub_1000060B4(&qword_1006C2D08, &unk_1006C2CB0);
  v15 = sub_1002B78F8(v13, v10, v9 & 1, v8, v11, v14, v12);

  v16 = v15;
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v15;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_18:

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_8:
  v18 = v16;
  v52 = _swiftEmptyArrayStorage;
  result = sub_100189724(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v20 = 0;
  v21 = *(v0 + 2248);
  v22 = v52;
  v23 = v18;
  v50 = v18 & 0xC000000000000001;
  v24 = v18;
  v25 = v17;
  do
  {
    if (v50)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v23 + 8 * v20 + 32);
    }

    v27 = v26;
    (*(v21 + 16))(*(v0 + 2256), v26 + OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id, *(v0 + 2240));

    v52 = v22;
    v29 = *(v22 + 2);
    v28 = *(v22 + 3);
    if (v29 >= v28 >> 1)
    {
      sub_100189724(v28 > 1, v29 + 1, 1);
      v22 = v52;
    }

    v30 = *(v0 + 2256);
    v31 = *(v0 + 2240);
    ++v20;
    *(v22 + 2) = v29 + 1;
    (*(v21 + 32))(&v22[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v29], v30, v31);
    v23 = v24;
  }

  while (v25 != v20);

LABEL_19:
  *(v0 + 2608) = v22;
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(v22 + 2);

    _os_log_impl(&_mh_execute_header, v32, v33, "VisibleAttachmentsQuery: found %ld matching attachment(s)", v34, 0xCu);
  }

  else
  {
  }

  (*(v0 + 2552))(*(v0 + 2200), *(v0 + 2168));
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 2552);
  if (v37)
  {
    v51 = *(v0 + 2552);
    v49 = *(v0 + 2192);
    v39 = *(v0 + 2168);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v40 = 136315138;
    v42 = Array.description.getter();
    v44 = sub_100009D88(v42, v43, &v52);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "VisibleAttachmentsQuery: matching note IDs: %s", v40, 0xCu);
    sub_100009F60(v41);

    v51(v49, v39);
  }

  else
  {
    v45 = *(v0 + 2192);
    v46 = *(v0 + 2168);

    v38(v45, v46);
  }

  AppDependency.wrappedValue.getter();
  v47 = *(v0 + 1848);
  *(v0 + 2616) = v47;
  v48 = swift_task_alloc();
  *(v0 + 2624) = v48;
  *v48 = v0;
  v48[1] = sub_1002BDE04;

  return sub_10018BB3C(v22, v47);
}

uint64_t sub_1002BDE04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[217] = v2;
  v4[218] = a1;
  v4[219] = v1;
  v4[329] = v1;

  if (v1)
  {
    v5 = sub_1002BE194;
    v6 = v4 + 82;
    v7 = v4 + 243;
    v8 = v4 + 162;
  }

  else
  {
    v5 = sub_1002BDF74;
    v6 = v4 + 82;
    v7 = v4 + 243;
    v8 = v4 + 212;
  }

  return _swift_asyncLet_finish(v6, v7, v5, v8);
}

uint64_t sub_1002BDFCC()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2400);
  v4 = *(v0 + 2392);
  v5 = *(v0 + 2384);
  v6 = *(v0 + 2376);
  v7 = *(v0 + 2368);

  v10 = *(v0 + 1744);
  sub_100009F60(v0 + 1336);
  sub_10000C840(&unk_10053FE98);
  sub_10000C840(&unk_10053FEA8);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_1002BE1EC()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[319];
  v18 = v0[318];
  v19 = v0[317];
  v7 = v0[300];
  v8 = v0[299];
  v16 = v0[298];
  v17 = v0[297];
  v9 = v0[296];
  v10 = v1;
  v11 = v0[295];
  v12 = v0[273];
  v13 = v0[271];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002BE4C4()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2368);

  sub_100009F60(v0 + 1336);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002BE684()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[319];
  v18 = v0[318];
  v19 = v0[317];
  v7 = v0[300];
  v8 = v0[299];
  v16 = v0[298];
  v17 = v0[297];
  v9 = v0[296];
  v10 = v1;
  v11 = v0[295];
  v12 = v0[273];
  v13 = v0[271];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002BE9B4()
{
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "VisibleAttachmentsQuery: error fetching notes: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[319];
  v18 = v0[318];
  v19 = v0[317];
  v7 = v0[300];
  v8 = v0[299];
  v16 = v0[298];
  v17 = v0[297];
  v9 = v0[296];
  v10 = v1;
  v11 = v0[295];
  v12 = v0[273];
  v13 = v0[271];

  v6(v12, v13);
  swift_willThrow();

  sub_100009F60((v0 + 167));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002BEC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 80) = *(v3 + 16);
  return _swift_task_switch(sub_1002BECC0, 0, 0);
}

uint64_t sub_1002BECC0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_10015DA04(&unk_1006C2CC8);
  v3 = *(type metadata accessor for VisibleAttachmentsQuery.Comparator(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = xmmword_100531E30;
  v6 = (v5 + v4);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *v6 = KeyPath;
  v6[1] = v8;
  v6[2] = v2;
  v6[3] = v1;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1002BEE5C;
  v10 = *(v0 + 80);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);

  return VisibleAttachmentsQuery.entities(matching:mode:sortedBy:limit:)(v5, 0, _swiftEmptyArrayStorage, 0, 1, v11, v12, v10);
}

uint64_t sub_1002BEE5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002BEFBC, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1002BEFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002BF020()
{
  v0 = sub_10015DA04(&qword_1006C2D30);
  sub_100025918(v0, static VisibleAttachmentsQuery.sortingOptions);
  sub_10002597C(v0, static VisibleAttachmentsQuery.sortingOptions);
  type metadata accessor for AttachmentEntity();
  sub_1002C3D18(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_1002BF0DC()
{
  v0 = sub_10015DA04(&qword_1006C2F98);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_1002C3D18(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  sub_1000060B4(&qword_1006C2FA0, &unk_1006C1870);
  EntityQuerySortableByProperty.init<A>(_:)();
  type metadata accessor for AttachmentEntity();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_10015DA04(&qword_1006C2FA8);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v7(v6, v0);
  return v10;
}

uint64_t VisibleAttachmentsQuery.sortingOptions.unsafeMutableAddressor()
{
  if (qword_1006BC728 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&qword_1006C2D30);

  return sub_10002597C(v0, static VisibleAttachmentsQuery.sortingOptions);
}

uint64_t static VisibleAttachmentsQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC728 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&qword_1006C2D30);
  v3 = sub_10002597C(v2, static VisibleAttachmentsQuery.sortingOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002BF44C()
{
  v0 = sub_10015DA04(&unk_1006C2D38);
  sub_100025918(v0, static VisibleAttachmentsQuery.properties);
  sub_10002597C(v0, static VisibleAttachmentsQuery.properties);
  type metadata accessor for AttachmentEntity();
  type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  sub_1002C3D18(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_1002BF520()
{
  sub_10015DA04(&qword_1006C2F68);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_1002C3D18(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  v0 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;
  type metadata accessor for AttachmentEntity();
  type metadata accessor for VisibleAttachmentsQuery.Comparator(0);

  v2 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1002BF660()
{
  v0 = sub_10015DA04(&qword_1006C2F70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10015DA04(&qword_1006C2F78);
  swift_allocObject();
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for AttachmentEntity();
  sub_1002C3D18(&qword_1006BCCF0, type metadata accessor for AttachmentEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10015DA04(&unk_1006C2F80);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100531E30;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10015DA04(&unk_1006C1870);
  type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  sub_10001CAF8();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1002BF8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  *a3 = KeyPath;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t VisibleAttachmentsQuery.properties.unsafeMutableAddressor()
{
  if (qword_1006BC730 != -1)
  {
    swift_once();
  }

  v0 = sub_10015DA04(&unk_1006C2D38);

  return sub_10002597C(v0, static VisibleAttachmentsQuery.properties);
}

uint64_t static VisibleAttachmentsQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC730 != -1)
  {
    swift_once();
  }

  v2 = sub_10015DA04(&unk_1006C2D38);
  v3 = sub_10002597C(v2, static VisibleAttachmentsQuery.properties);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002BFA58@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for String.StandardComparator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = sub_10015DA04(&qword_1006C7D20);
  __chkstk_darwin(v9 - 8);
  sub_1000054A4(0, &qword_1006C13E8);
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  (*(v3 + 16))(v6, v8, v2);
  SortDescriptor.init<A>(_:comparator:order:)();
  (*(v3 + 8))(v8, v2);
  sub_1000054A4(0, &unk_1006C2C90);
  result = NSSortDescriptor.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002BFC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002BFC60, 0, 0);
}

uint64_t sub_1002BFC60()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_10015DA04(&unk_1006C2CB0);
  *v8 = v0;
  v8[1] = sub_1002BFD74;
  v10 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v10, sub_1002C3ACC, v4, v9);
}

uint64_t sub_1002BFD74()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002BFEB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002BFEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002BFF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002BFF38, 0, 0);
}

uint64_t sub_1002BFF38()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_10015DA04(&unk_1006C2CB0);
  *v8 = v0;
  v8[1] = sub_1002C004C;
  v10 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v10, sub_1002C3A54, v4, v9);
}

uint64_t sub_1002C004C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002C3F88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_1002C0188@<X0>(void *a1@<X2>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v49 = a3;
  v6 = type metadata accessor for AttachmentID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000054A4(0, a2);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v3)
  {
    v12 = v7;
    v50 = v10;
    v45 = v9;
    v46 = v6;
    v59 = _swiftEmptyArrayStorage;
    v13 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_27:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v16 = v49;
      v17 = v50;
      if (v15)
      {
LABEL_4:
        v18 = v12;
        v12 = 0;
        v54 = v13 & 0xC000000000000001;
        v44 = (v18 + 32);
        v19 = _swiftEmptyArrayStorage;
        v48 = v3;
        v51 = v15;
        v52 = v14;
        do
        {
          v47 = v19;
          v20 = v12;
          while (1)
          {
            if (v54)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *(v14 + 16))
              {
                goto LABEL_26;
              }

              v30 = *(v13 + 8 * v20 + 32);
            }

            v31 = v30;
            v12 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            if (([v30 isHiddenFromSearch] & 1) == 0)
            {
              v58[3] = v17;
              v58[0] = v31;
              sub_100006038(v58, v56, &qword_1006BE7A0);
              v32 = v57;
              if (v57)
              {
                v21 = sub_10017CC60(v56, v57);
                v53 = &v44;
                v22 = v13;
                v23 = a1;
                v24 = *(v32 - 8);
                __chkstk_darwin(v21);
                v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v24 + 16))(v26);
                v27 = v31;
                v28 = _bridgeAnythingToObjectiveC<A>(_:)();
                (*(v24 + 8))(v26, v32);
                a1 = v23;
                v13 = v22;
                v17 = v50;
                sub_100009F60(v56);
              }

              else
              {
                v33 = v31;
                v28 = 0;
              }

              v29 = [a1 evaluateWithObject:v28];
              swift_unknownObjectRelease();
              sub_1000073B4(v58, &qword_1006BE7A0);
              v15 = v51;
              v14 = v52;
              if (v29)
              {
                break;
              }
            }

            ++v20;
            if (v12 == v15)
            {
              v16 = v49;
              v19 = v47;
              goto LABEL_29;
            }
          }

          v53 = type metadata accessor for AttachmentSearchResult(0);
          v34 = objc_allocWithZone(v53);
          v35 = v45;
          ICAttachmentObject<>.entityIdentifier.getter();
          (*v44)(&v34[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id], v35, v46);
          v36 = [v31 title];
          if (v36)
          {
            v37 = v36;
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;
          }

          else
          {
            v38 = 0;
            v40 = 0xE000000000000000;
          }

          v41 = &v34[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title];
          *v41 = v38;
          v41[1] = v40;
          v42 = [v31 objectID];

          v43 = [v42 ic_isAttachmentType];
          v34[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_isModernAttachment] = v43;
          v55.receiver = v34;
          v55.super_class = v53;
          objc_msgSendSuper2(&v55, "init");
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v52;
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v19 = v59;
          v15 = v51;
          v3 = v48;
          v16 = v49;
        }

        while (v12 != v51);
        goto LABEL_29;
      }
    }

    else
    {
      v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v49;
      v17 = v50;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_29:

    *v16 = v19;
  }

  return result;
}

uint64_t sub_1002C066C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 16) = a1;
  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = *(v6 + 16);
  v16 = swift_task_alloc();
  *(v7 + 24) = v16;
  *v16 = v7;
  v16[1] = sub_100189314;

  return VisibleAttachmentsQuery.entities(matching:mode:sortedBy:limit:)(a2, a3 & 1, a4, a5, a6 & 1, v13, v14, v15);
}

uint64_t sub_1002C0754(uint64_t a1, int a2)
{
  v87 = a2;
  v4 = type metadata accessor for ICQueryType();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FolderEntity();
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10015DA04(&qword_1006BEA90);
  v8 = __chkstk_darwin(v86);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v86 - v12;
  __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = sub_10015DA04(&unk_1006C3050);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v86 - v18;
  v20 = *(v17 + 56);
  sub_1002C33BC(v2, &v86 - v18, type metadata accessor for VisibleAttachmentsQuery.Comparator);
  v93 = v20;
  v21 = &v19[v20];
  v22 = a1;
  sub_100006038(a1, v21, &qword_1006BEA90);
  type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  LODWORD(v23) = swift_getEnumCaseMultiPayload();
  if (v23 > 5)
  {
    if (v23 <= 8)
    {
      v24 = v93;
      if (v23 == 6)
      {
        sub_100192680(v19, v96);
        sub_10001FA64(v19 + 40, v95);
        v44 = v97;
        v45 = v98;
        sub_10017CC60(v96, v97);
        v46 = sub_100220F7C(v22, v44, v45);
        v48 = v47;
        sub_10015DA04(&qword_1006BE850);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_100535E30;
        *(v49 + 56) = &type metadata for String;
        *(v49 + 32) = v46;
        *(v49 + 40) = v48;
        sub_10000A2A0(v95, v49 + 64);
        v34 = String._bridgeToObjectiveC()();
        v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v36 = [objc_opt_self() predicateWithFormat:v34 argumentArray:v35.super.isa];
        goto LABEL_26;
      }

LABEL_10:
      sub_100192680(v19, v96);
      sub_10001FA64(v19 + 40, v95);
      v28 = v97;
      v29 = v98;
      sub_10017CC60(v96, v97);
      v30 = sub_100220F7C(v22, v28, v29);
      v32 = v31;
      sub_10015DA04(&qword_1006BE850);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100539C40;
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      *(v33 + 88) = &type metadata for String;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = v30;
      *(v33 + 72) = v32;
      sub_10000A2A0(v95, v33 + 96);

      v34 = String._bridgeToObjectiveC()();
      v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v36 = [objc_opt_self() predicateWithFormat:v34 argumentArray:v35.super.isa];
LABEL_26:
      v27 = v36;

LABEL_27:
      sub_100009F60(v95);
      sub_100009F60(v96);
      goto LABEL_40;
    }

LABEL_17:
    v24 = v93;
    if (v23 != 9 && v23 != 10)
    {
      sub_100192680(v19, v96);
      sub_10001FA64(v19 + 40, v95);
      sub_10001FA64(v19 + 72, v94);
      v62 = v97;
      v63 = v98;
      sub_10017CC60(v96, v97);
      v64 = sub_100220F7C(v22, v62, v63);
      v66 = v65;
      sub_10015DA04(&qword_1006BE850);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100539C20;
      *(v67 + 32) = v64;
      *(v67 + 40) = v66;
      *(v67 + 88) = &type metadata for String;
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = v64;
      *(v67 + 72) = v66;
      sub_10000A2A0(v95, v67 + 96);
      *(v67 + 152) = &type metadata for String;
      *(v67 + 128) = v64;
      *(v67 + 136) = v66;
      sub_10000A2A0(v94, v67 + 160);
      swift_bridgeObjectRetain_n();
      v68 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = [objc_opt_self() predicateWithFormat:v68 argumentArray:isa];

      sub_100009F60(v94);
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  if (v23 <= 2)
  {
    v24 = v93;
    if (!v23)
    {
      if ((*(v90 + 48))(v19, 1, v6) == 1)
      {
        v27 = 0;
      }

      else
      {
        if ((v87 & 1) == 0)
        {
          v70 = type metadata accessor for ManagedEntityContextType();
          v71 = *(v70 - 8);
          if ((*(v71 + 48))(&v19[v24], 1, v70) != 1)
          {
            sub_100006038(&v19[v24], v13, &qword_1006BEA90);
            if ((*(v71 + 88))(v13, v70) != enum case for ManagedEntityContextType.html(_:))
            {
              (*(v71 + 8))(v13, v70);
            }
          }
        }

        v81 = v88;
        sub_1002C3358(v19, v88);
        sub_1000054A4(0, &qword_1006C2CA0);
        sub_10015DA04(&qword_1006C1A30);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_100531E30;
        v83 = FolderID.managedIdentifier.getter();
        v85 = v84;
        *(v82 + 56) = &type metadata for String;
        *(v82 + 64) = sub_1001D9030();
        *(v82 + 32) = v83;
        *(v82 + 40) = v85;
        v27 = NSPredicate.init(format:_:)();
        sub_1002C3424(v81, type metadata accessor for FolderEntity);
      }

      goto LABEL_40;
    }

    if (v23 == 1)
    {
      v25 = type metadata accessor for ManagedEntityContextType();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(&v19[v24], 1, v25) != 1)
      {
        sub_100006038(&v19[v24], v10, &qword_1006BEA90);
        if ((*(v26 + 88))(v10, v25) == enum case for ManagedEntityContextType.html(_:))
        {
          v27 = [objc_opt_self() predicateWithValue:0];
          (*(v91 + 8))(v19, v92);
LABEL_40:
          sub_1000073B4(&v19[v24], &qword_1006BEA90);
          return v27;
        }

        (*(v26 + 8))(v10, v25);
      }

      v73 = v91;
      v72 = v92;
      v74 = v89;
      (*(v91 + 32))(v89, v19, v92);
      v27 = ICQueryType.predicate.getter();
      (*(v73 + 8))(v74, v72);
      goto LABEL_40;
    }

    v50 = *v19;
    sub_10015DA04(&qword_1006BE850);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100531E30;
    *(v51 + 56) = sub_10015DA04(&unk_1006C3060);
    *(v51 + 32) = v50;
    v52 = String._bridgeToObjectiveC()();
    v53 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [objc_opt_self() predicateWithFormat:v52 argumentArray:v53];

    goto LABEL_40;
  }

  if (v23 == 3)
  {
    sub_1002C3424(v19, type metadata accessor for VisibleAttachmentsQuery.Comparator);
    v27 = 0;
LABEL_39:
    v24 = v93;
    goto LABEL_40;
  }

  if (v23 != 4)
  {
    sub_100192680(v19, v96);
    sub_10001FA64(v19 + 40, v95);
    v54 = v97;
    v55 = v98;
    sub_10017CC60(v96, v97);
    v56 = sub_100220F7C(a1, v54, v55);
    v58 = v57;
    sub_10015DA04(&qword_1006BE850);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100535E30;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 32) = v56;
    *(v59 + 40) = v58;
    sub_10000A2A0(v95, v59 + 64);
    v60 = String._bridgeToObjectiveC()();
    v61 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [objc_opt_self() predicateWithFormat:v60 argumentArray:v61];

    sub_100009F60(v95);
    sub_100009F60(v96);
    goto LABEL_39;
  }

  v22 = *v19;
  v37 = v19;
  v19 = *(v19 + 2);
  v38 = v37;
  v39 = *(v37 + 3);
  sub_100006038(a1, v15, &qword_1006BEA90);
  v40 = type metadata accessor for ManagedEntityContextType();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v15, 1, v40) == 1 || (v42 = (*(v41 + 88))(v15, v40), v42 == enum case for ManagedEntityContextType.modern(_:)))
  {
    v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v43)
    {
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  if (v42 == enum case for ManagedEntityContextType.html(_:))
  {
    v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v43)
    {
LABEL_38:
      v75 = v23;
      v76 = v43;
      sub_10015DA04(&qword_1006BE850);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_100535E30;
      *(v77 + 32) = v75;
      *(v77 + 40) = v76;
      *(v77 + 88) = &type metadata for String;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v19;
      *(v77 + 72) = v39;
      v78 = String._bridgeToObjectiveC()();
      v79 = Array._bridgeToObjectiveC()().super.isa;

      v27 = [objc_opt_self() predicateWithFormat:v78 argumentArray:v79];

      v19 = v38;
      goto LABEL_39;
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1002C1948(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v67 = a4;
  v62 = a2;
  v63 = a1;
  v75 = type metadata accessor for ICQueryType();
  v69 = *(v75 - 8);
  v5 = __chkstk_darwin(v75);
  v61 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v74 = &v60 - v8;
  __chkstk_darwin(v7);
  v73 = &v60 - v9;
  v72 = type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  v66 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ManagedEntityContextType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10015DA04(&unk_1006C3040);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_10015DA04(&qword_1006BEA90);
  v23 = __chkstk_darwin(v22 - 8);
  v71 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v60 - v25;
  (*(v15 + 104))(&v60 - v25, enum case for ManagedEntityContextType.html(_:), v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  v27 = *(v19 + 56);
  v70 = a3;
  sub_100006038(a3, v21, &qword_1006BEA90);
  sub_100006038(v26, &v21[v27], &qword_1006BEA90);
  v28 = *(v15 + 48);
  if (v28(v21, 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    if (v28(&v21[v27], 1, v14) == 1)
    {
      v29 = sub_1000073B4(v21, &qword_1006BEA90);
      v30 = v62;
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  sub_100006038(v21, v71, &qword_1006BEA90);
  if (v28(&v21[v27], 1, v14) == 1)
  {
    sub_1000073B4(v26, &qword_1006BEA90);
    (*(v15 + 8))(v71, v14);
LABEL_6:
    sub_1000073B4(v21, &unk_1006C3040);
    v31 = v68;
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, &v21[v27], v14);
  sub_1002C3D18(&qword_1006C1A20, &type metadata accessor for ManagedEntityContextType);
  v45 = v71;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v15 + 8);
  v47(v17, v14);
  sub_1000073B4(v26, &qword_1006BEA90);
  v47(v45, v14);
  v29 = sub_1000073B4(v21, &qword_1006BEA90);
  v31 = v68;
  v30 = v62;
  if (v46)
  {
LABEL_23:
    __chkstk_darwin(v29);
    *(&v60 - 2) = v70;
    *(&v60 - 8) = v67 & 1;
    sub_100400AC0(sub_1002C3CD0, (&v60 - 4), v63);

    sub_1000054A4(0, &qword_1006C2CA0);
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v49 = objc_opt_self();
    if (v30)
    {
      v50 = [v49 orPredicateWithSubpredicates:v48.super.isa];
    }

    else
    {
      v50 = [v49 andPredicateWithSubpredicates:v48.super.isa];
    }

    goto LABEL_35;
  }

LABEL_7:
  v76 = _swiftEmptyArrayStorage;
  v32 = *(v63 + 16);
  if (v32)
  {
    v33 = v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v34 = *(v66 + 72);
    v71 = (v69 + 32);
    v65 = v69 + 8;
    v66 = v69 + 16;
    v35 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
    do
    {
      sub_1002C33BC(v33, v13, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      sub_1002C33BC(v13, v31, type metadata accessor for VisibleAttachmentsQuery.Comparator);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *v71;
        v37 = v73;
        v38 = v75;
        (*v71)(v73, v31, v75);
        (*v66)(v74, v37, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1001CB244(0, *(v35 + 2) + 1, 1, v35);
        }

        v40 = *(v35 + 2);
        v39 = *(v35 + 3);
        if (v40 >= v39 >> 1)
        {
          v35 = sub_1001CB244(v39 > 1, v40 + 1, 1, v35);
        }

        v41 = v69;
        v42 = v75;
        (*(v69 + 8))(v73, v75);
        sub_1002C3424(v13, type metadata accessor for VisibleAttachmentsQuery.Comparator);
        *(v35 + 2) = v40 + 1;
        v36(&v35[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v74, v42);
        v31 = v68;
      }

      else
      {
        sub_1002C3424(v31, type metadata accessor for VisibleAttachmentsQuery.Comparator);
        v43 = sub_1002C0754(v70, v67 & 1);
        if (v43)
        {
          v44 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          sub_1002C3424(v13, type metadata accessor for VisibleAttachmentsQuery.Comparator);
          v64 = v76;
        }

        else
        {
          sub_1002C3424(v13, type metadata accessor for VisibleAttachmentsQuery.Comparator);
        }
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v51 = v62;
  if (*(v35 + 2))
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v35;
    v53 = v61;
    *v61 = v52;
    v54 = v69;
    v55 = v75;
    (*(v69 + 104))(v53, enum case for ICQueryType.and(_:), v75);
    ICQueryType.predicate.getter();
    (*(v54 + 8))(v53, v55);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  sub_1000054A4(0, &qword_1006C2CA0);
  v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = objc_opt_self();
  v57 = &selRef_orPredicateWithSubpredicates_;
  if ((v51 & 1) == 0)
  {
    v57 = &selRef_andPredicateWithSubpredicates_;
  }

  v50 = [v56 *v57];
LABEL_35:
  v58 = v50;

  sub_1000073B4(v70, &qword_1006BEA90);
  return v58;
}

uint64_t VisibleAttachmentsQuery.Comparator.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ICQueryType();
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FolderEntity();
  v58 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = sub_10015DA04(&unk_1006BF9D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = type metadata accessor for VisibleAttachmentsQuery.Comparator(0);
  __chkstk_darwin(v17);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002C33BC(v1, v19, type metadata accessor for VisibleAttachmentsQuery.Comparator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_100192680(v19, v64);
        sub_10001FA64((v19 + 40), v63);
        *&v62[0] = 0;
        *(&v62[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        v60[0] = v62[0];
        v25 = 0x5472657461657267;
        v26 = 0xEC000000286E6168;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_100192680(v19, v64);
          sub_10001FA64((v19 + 40), v63);
          sub_10001FA64((v19 + 72), v62);
          *&v60[0] = 0;
          *(&v60[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(18);
          v61 = v60[0];
          v49._countAndFlagsBits = 0x286E656577746562;
          v49._object = 0xE800000000000000;
          String.append(_:)(v49);
          sub_10015DA04(&qword_1006C2D48);
          _print_unlocked<A, B>(_:_:)();
          v50._countAndFlagsBits = 8236;
          v50._object = 0xE200000000000000;
          String.append(_:)(v50);
          sub_10000A2A0(v63, v60);
          v51._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 8236;
          v52._object = 0xE200000000000000;
          String.append(_:)(v52);
          sub_10000A2A0(v62, v60);
          v53._countAndFlagsBits = String.init<A>(reflecting:)();
          String.append(_:)(v53);

          v24 = v61;
          sub_100009F60(v62);
          goto LABEL_27;
        }

        sub_100192680(v19, v64);
        sub_10001FA64((v19 + 40), v63);
        *&v62[0] = 0;
        *(&v62[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v60[0] = v62[0];
        v25 = 0xD000000000000015;
        v26 = 0x80000001005699F0;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v60[0] = v62[0];
      v25 = 0x6C61757145746F6ELL;
      v26 = 0xEB00000000286F54;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v60[0] = v62[0];
      v25 = 0x6E6168547373656CLL;
      v26 = 0xE900000000000028;
    }

    else
    {
      sub_100192680(v19, v64);
      sub_10001FA64((v19 + 40), v63);
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v60[0] = v62[0];
      v26 = 0x8000000100569A10;
      v25 = 0xD000000000000012;
    }

LABEL_26:
    String.append(_:)(*&v25);
    sub_10015DA04(&qword_1006C2D48);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 8236;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    sub_10000A2A0(v63, v62);
    v46._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v24 = *&v60[0];
LABEL_27:
    sub_100009F60(v63);
    sub_100009F60(v64);
    return v24;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v37 = *v19;
      v38 = *(v19 + 1);
      strcpy(v64, "textSearch(");
      HIDWORD(v64[1]) = -352321536;
      *&v63[0] = v37;
      *(&v63[0] + 1) = v38;
      v39._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v39);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v27 = *v19;
      v28 = *(v19 + 1);
      v29 = *(v19 + 2);
      v30 = *(v19 + 3);
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v31._countAndFlagsBits = 0x736E6961746E6F63;
      v31._object = 0xE900000000000028;
      String.append(_:)(v31);
      *&v63[0] = v27;
      *(&v63[0] + 1) = v28;
      sub_10015DA04(&unk_1006C2D50);
      _print_unlocked<A, B>(_:_:)();
      v32._countAndFlagsBits = 8236;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      *&v63[0] = v29;
      *(&v63[0] + 1) = v30;
      v33._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v24 = v64[0];

      return v24;
    }

    sub_100192680(v19, v64);
    sub_10001FA64((v19 + 40), v63);
    *&v60[0] = 0;
    *(&v60[0] + 1) = 0xE000000000000000;
    v25 = 0x286F546C61757165;
    v26 = 0xE800000000000000;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v59;
      (*(v59 + 32))(v4, v19, v2);
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      v22._countAndFlagsBits = 0x2879726575516369;
      v22._object = 0xE800000000000000;
      String.append(_:)(v22);
      _print_unlocked<A, B>(_:_:)();
      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = v64[0];
      (*(v21 + 8))(v4, v2);
      return v24;
    }

    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v64[0] = 0xD000000000000014;
    v64[1] = 0x8000000100569A30;
    sub_1000054A4(0, &qword_1006BFEC0);
    v40 = Array.description.getter();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);
LABEL_23:

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    return v64[0];
  }

  sub_1002C32E8(v19, v16);
  sub_100006038(v16, v14, &unk_1006BF9D0);
  if ((*(v58 + 48))(v14, 1, v5) == 1)
  {
    v35 = 0xE300000000000000;
    v36 = 7104878;
  }

  else
  {
    sub_1002C3358(v14, v10);
    sub_1002C33BC(v10, v8, type metadata accessor for FolderEntity);
    v54 = String.init<A>(describing:)();
    v35 = v55;
    sub_1002C3424(v10, type metadata accessor for FolderEntity);
    v36 = v54;
  }

  strcpy(v64, "containedIn(");
  BYTE5(v64[1]) = 0;
  HIWORD(v64[1]) = -5120;
  v56 = v35;
  String.append(_:)(*&v36);

  v57._countAndFlagsBits = 41;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  v24 = v64[0];
  sub_1000073B4(v16, &unk_1006BF9D0);
  return v24;
}

unsigned __int8 *sub_1002C2D08@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 & 1;
  }

  return result;
}

id sub_1002C2D24(void *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AttachmentID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ICAttachmentObject<>.entityIdentifier.getter();
  (*(v6 + 32))(&a2[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_id], v8, v5);
  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &a2[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_title];
  *v14 = v11;
  v14[1] = v13;
  v15 = [a1 objectID];

  v16 = [v15 ic_isAttachmentType];
  a2[OBJC_IVAR____TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult_isModernAttachment] = v16;
  v18.receiver = a2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t _s11MobileNotes23VisibleAttachmentsQueryVACycfC_0()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v0;
}

uint64_t sub_1002C2FE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1002B96F8(a1, v5, v4);
}

uint64_t sub_1002C3094(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_1002B981C(a1, v5, v4);
}

uint64_t sub_1002C3180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1002BFC3C(a1, v4, v5, v6);
}

uint64_t sub_1002C3234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1002BFF14(a1, v4, v5, v6);
}

uint64_t sub_1002C32E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BF9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FolderEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C33BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C3424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002C3488()
{
  result = qword_1006C2D60;
  if (!qword_1006C2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2D60);
  }

  return result;
}

unint64_t sub_1002C34E0()
{
  result = qword_1006C2D68;
  if (!qword_1006C2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2D68);
  }

  return result;
}

unint64_t sub_1002C3580()
{
  result = qword_1006C2D78;
  if (!qword_1006C2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2D78);
  }

  return result;
}

unint64_t sub_1002C3620()
{
  result = qword_1006C2D88;
  if (!qword_1006C2D88)
  {
    sub_10017992C(&unk_1006C2D90);
    sub_1002C3D18(&unk_1006C0540, type metadata accessor for AttachmentEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2D88);
  }

  return result;
}

uint64_t sub_1002C36DC()
{
  result = type metadata accessor for AttachmentID();
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

uint64_t sub_1002C3780(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1002C37C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C3818()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1002C386C()
{
  sub_1002C397C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ICQueryType();
    if (v1 <= 0x3F)
    {
      sub_100271680();
      if (v2 <= 0x3F)
      {
        sub_100271730(319, &qword_1006C2F20, &unk_1006C2D50);
        if (v3 <= 0x3F)
        {
          sub_100271730(319, &qword_1006C2F28, &qword_1006C2D48);
          if (v4 <= 0x3F)
          {
            sub_1002C39D4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002C397C()
{
  if (!qword_1006C1670)
  {
    type metadata accessor for FolderEntity();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C1670);
    }
  }
}

void sub_1002C39D4()
{
  if (!qword_1006C2F30)
  {
    sub_10017992C(&qword_1006C2D48);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006C2F30);
    }
  }
}

uint64_t sub_1002C3A84()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1002C3B08()
{
  result = qword_1006C3018;
  if (!qword_1006C3018)
  {
    sub_10017992C(&qword_1006C3010);
    sub_1002C3B94();
    sub_100271C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3018);
  }

  return result;
}

unint64_t sub_1002C3B94()
{
  result = qword_1006C3020;
  if (!qword_1006C3020)
  {
    sub_10017992C(&qword_1006C2FF0);
    sub_1002C3C20();
    sub_100271B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3020);
  }

  return result;
}

unint64_t sub_1002C3C20()
{
  result = qword_1006C3028;
  if (!qword_1006C3028)
  {
    sub_10017992C(&qword_1006C2FE8);
    sub_1000060B4(&qword_1006C3030, &qword_1006C2FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3028);
  }

  return result;
}

uint64_t sub_1002C3CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0754(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1002C3D18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002C3DB8()
{
  result = qword_1006C30B0;
  if (!qword_1006C30B0)
  {
    sub_10017992C(&qword_1006C30A8);
    sub_1002C3E44();
    sub_100271C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C30B0);
  }

  return result;
}

unint64_t sub_1002C3E44()
{
  result = qword_1006C30B8;
  if (!qword_1006C30B8)
  {
    sub_10017992C(&qword_1006C3090);
    sub_1002C3ED0();
    sub_100271B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C30B8);
  }

  return result;
}

unint64_t sub_1002C3ED0()
{
  result = qword_1006C30C0;
  if (!qword_1006C30C0)
  {
    sub_10017992C(&qword_1006C3088);
    sub_1000060B4(&qword_1006C30C8, &qword_1006C3080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C30C0);
  }

  return result;
}

uint64_t ICKeyboardHandler.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v6 = result;
    if ([result respondsToSelector:"canPerformAddNote"])
    {
      v7 = [v6 canPerformAddNote];
LABEL_125:
      v38 = v7;
      swift_unknownObjectRelease();
      return v38;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ([result respondsToSelector:"canPerformAddFolder"])
    {
      v7 = [v8 canPerformAddFolder];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v9 = result;
    if ([result respondsToSelector:"canPerformDuplicateSelectedNote"])
    {
      v7 = [v9 canPerformDuplicateSelectedNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v10 = result;
    if ([result respondsToSelector:"canPerformToggleSearch"])
    {
      v7 = [v10 canPerformToggleSearch];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v11 = result;
    if ([result respondsToSelector:"canPerformCmd1"])
    {
      v7 = [v11 canPerformCmd1];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v12 = result;
    if ([result respondsToSelector:"canPerformCmd2"])
    {
      v7 = [v12 canPerformCmd2];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v13 = result;
    if ([result respondsToSelector:"canPerformCmd3"])
    {
      v7 = [v13 canPerformCmd3];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v14 = result;
    if ([result respondsToSelector:"canPerformReturnKey"])
    {
      v7 = [v14 canPerformReturnKey];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v15 = result;
    if ([result respondsToSelector:"canPerformHandleShiftReturn"])
    {
      v7 = [v15 canPerformHandleShiftReturn];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v16 = result;
    if ([result respondsToSelector:"canPerformCmdReturnKey"])
    {
      v7 = [v16 canPerformCmdReturnKey];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v17 = result;
    if ([result respondsToSelector:"canPerformAddLink"])
    {
      v7 = [v17 canPerformAddLink];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v18 = result;
    if ([result respondsToSelector:"canPerformEnclosingFolderKey"])
    {
      v7 = [v18 canPerformEnclosingFolderKey];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v19 = result;
    if ([result respondsToSelector:"canPerformDeleteKey"])
    {
      v7 = [v19 canPerformDeleteKey];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v20 = result;
    if ([result respondsToSelector:"canPerformDeleteSystemPaperNote"])
    {
      v7 = [v20 canPerformDeleteSystemPaperNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v21 = result;
    if ([result respondsToSelector:"canPerformPrintNote"])
    {
      v7 = [v21 canPerformPrintNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v22 = result;
    if ([result respondsToSelector:"canPerformScanDocument"])
    {
      v7 = [v22 canPerformScanDocument];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v23 = result;
    if ([result respondsToSelector:"canPerformToggleEditorCallouts"])
    {
      v7 = [v23 canPerformToggleEditorCallouts];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v24 = result;
    if ([result respondsToSelector:"canPerformToggleNoteActivity"])
    {
      v7 = [v24 canPerformToggleNoteActivity];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v25 = result;
    if ([result respondsToSelector:"canPerformToggleFolderActivity"])
    {
      v7 = [v25 canPerformToggleFolderActivity];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v26 = result;
    if ([result respondsToSelector:"canPerformSystemPaperNavigateLeft"])
    {
      v7 = [v26 canPerformSystemPaperNavigateLeft];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v27 = result;
    if ([result respondsToSelector:"canPerformSystemPaperNavigateRight"])
    {
      v7 = [v27 canPerformSystemPaperNavigateRight];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v28 = result;
    if ([result respondsToSelector:"canPerformSystemPaperShowInNotes"])
    {
      v7 = [v28 canPerformSystemPaperShowInNotes];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v29 = result;
    if ([result respondsToSelector:"canPerformExpandSection"])
    {
      v7 = [v29 canPerformExpandSection];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v30 = result;
    if ([result respondsToSelector:"canPerformExpandAllSections"])
    {
      v7 = [v30 canPerformExpandAllSections];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v31 = result;
    if ([result respondsToSelector:"canPerformCollapseSection"])
    {
      v7 = [v31 canPerformCollapseSection];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v32 = result;
    if ([result respondsToSelector:"canPerformCollapseAllSections"])
    {
      v7 = [v32 canPerformCollapseAllSections];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v33 = result;
    if ([result respondsToSelector:"canPerformGotoPreviousNote"])
    {
      v7 = [v33 canPerformGotoPreviousNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v34 = result;
    if ([result respondsToSelector:"canPerformGotoNextNote"])
    {
      v7 = [v34 canPerformGotoNextNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v35 = result;
    if ([result respondsToSelector:"canPerformAttachFile"])
    {
      v7 = [v35 canPerformAttachFile];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    goto LABEL_119;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v37 = result;
    if ([result respondsToSelector:"canPerformShareFolderAction"])
    {
      v7 = [v37 canPerformShareFolderAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v39 = result;
    if ([result respondsToSelector:"canPerformImportMarkdownAction"])
    {
      v7 = [v39 canPerformImportMarkdownAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v40 = result;
    if ([result respondsToSelector:"canPerformExportMarkdownAction"])
    {
      v7 = [v40 canPerformExportMarkdownAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v41 = result;
    if ([result respondsToSelector:"canPerformTogglePinNoteAction"])
    {
      v7 = [v41 canPerformTogglePinNoteAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v42 = result;
    if ([result respondsToSelector:"canPerformPagesHandoffAction"])
    {
      v7 = [v42 canPerformPagesHandoffAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v43 = result;
    if ([result respondsToSelector:"canPerformLockNoteAction"])
    {
      v7 = [v43 canPerformLockNoteAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v44 = result;
    if ([result respondsToSelector:"canPerformLockAllNotesAction"])
    {
      v7 = [v44 canPerformLockAllNotesAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v45 = result;
    if ([result respondsToSelector:"canPerformConvertToSmartFolderAction"])
    {
      v7 = [v45 canPerformConvertToSmartFolderAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v46 = result;
    if ([result respondsToSelector:"canPerformCreateSmartFolder"])
    {
      v7 = [v46 canPerformCreateSmartFolder];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v47 = result;
    if ([result respondsToSelector:"canPerformCreateSmartFolderFromSelectedTags"])
    {
      v7 = [v47 canPerformCreateSmartFolderFromSelectedTags];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v48 = result;
    if ([result respondsToSelector:"canPerformShowAccountsSettings"])
    {
      v7 = [v48 canPerformShowAccountsSettings];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    goto LABEL_170;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v50 = result;
    if ([result respondsToSelector:"canPerformShowInNote"])
    {
      v7 = [v50 canPerformShowInNote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v51 = result;
    if ([result respondsToSelector:"canPerformRenameAttachment"])
    {
      v7 = [v51 canPerformRenameAttachment];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v52 = result;
    if ([result respondsToSelector:"canPerformRecordAudio"])
    {
      v7 = [v52 canPerformRecordAudio];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

LABEL_119:
    v36 = result;
    if ([result respondsToSelector:"canPerformShareNoteAction"])
    {
      v7 = [v36 canPerformShareNoteAction];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v53 = result;
    if ([result respondsToSelector:"canPerformToggleBoldface"])
    {
      v7 = [v53 canPerformToggleBoldface];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v54 = result;
    if ([result respondsToSelector:"canPerformToggleItalics"])
    {
      v7 = [v54 canPerformToggleItalics];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v55 = result;
    if ([result respondsToSelector:"canPerformToggleUnderline"])
    {
      v7 = [v55 canPerformToggleUnderline];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v56 = result;
    if ([result respondsToSelector:"canPerformToggleStrikethrough"])
    {
      v7 = [v56 canPerformToggleStrikethrough];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

LABEL_170:
    v49 = result;
    if ([result respondsToSelector:"canPerformToggleEmphasis"])
    {
      v7 = [v49 canPerformToggleEmphasis];
      goto LABEL_125;
    }

LABEL_298:
    swift_unknownObjectRelease();
    return 0;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v57 = result;
    if ([result respondsToSelector:"canPerformTab"])
    {
      v7 = [v57 canPerformTab];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v58 = result;
    if ([result respondsToSelector:"canPerformShiftTab"])
    {
      v7 = [v58 canPerformShiftTab];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v59 = result;
    if ([result respondsToSelector:"canPerformSetTitleStyle"])
    {
      v7 = [v59 canPerformSetTitleStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v60 = result;
    if ([result respondsToSelector:"canPerformSetHeadingStyle"])
    {
      v7 = [v60 canPerformSetHeadingStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v61 = result;
    if ([result respondsToSelector:"canPerformSetSubheadingStyle"])
    {
      v7 = [v61 canPerformSetSubheadingStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v62 = result;
    if ([result respondsToSelector:"canPerformSetBodyStyle"])
    {
      v7 = [v62 canPerformSetBodyStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v63 = result;
    if ([result respondsToSelector:"canPerformSetFixedWidthStyle"])
    {
      v7 = [v63 canPerformSetFixedWidthStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v64 = result;
    if ([result respondsToSelector:"canPerformToggleBulletedListStyle"])
    {
      v7 = [v64 canPerformToggleBulletedListStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v65 = result;
    if ([result respondsToSelector:"canPerformToggleDashedListStyle"])
    {
      v7 = [v65 canPerformToggleDashedListStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v66 = result;
    if ([result respondsToSelector:"canPerformToggleNumberedListStyle"])
    {
      v7 = [v66 canPerformToggleNumberedListStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v67 = result;
    if ([result respondsToSelector:"canPerformToggleBlockQuote"])
    {
      v7 = [v67 canPerformToggleBlockQuote];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v68 = result;
    if ([result respondsToSelector:"canPerformToggleTodoStyle"])
    {
      v7 = [v68 canPerformToggleTodoStyle];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v69 = result;
    if ([result respondsToSelector:"canPerformToggleTodoChecked"])
    {
      v7 = [v69 canPerformToggleTodoChecked];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v70 = result;
    if ([result respondsToSelector:"canPerformCheckAll"])
    {
      v7 = [v70 canPerformCheckAll];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v71 = result;
    if ([result respondsToSelector:"canPerformUncheckAll"])
    {
      v7 = [v71 canPerformUncheckAll];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v72 = result;
    if ([result respondsToSelector:"canPerformMoveCheckedToBottom"])
    {
      v7 = [v72 canPerformMoveCheckedToBottom];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v73 = result;
    if ([result respondsToSelector:"canPerformMoveSelectedListItemUp"])
    {
      v7 = [v73 canPerformMoveSelectedListItemUp];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v74 = result;
    if ([result respondsToSelector:"canPerformMoveSelectedListItemDown"])
    {
      v7 = [v74 canPerformMoveSelectedListItemDown];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v75 = result;
    if ([result respondsToSelector:"canPerformAddTable"])
    {
      v7 = [v75 canPerformAddTable];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v76 = result;
    if ([result respondsToSelector:"canPerformConvertToText"])
    {
      v7 = [v76 canPerformConvertToText];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v77 = result;
    if ([result respondsToSelector:"canPerformHandleRemoveChecked"])
    {
      v7 = [v77 canPerformHandleRemoveChecked];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v78 = result;
    if ([result respondsToSelector:"canPerformReverseTableDirection"])
    {
      v7 = [v78 canPerformReverseTableDirection];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v79 = result;
    if ([result respondsToSelector:"canPerformUndo"])
    {
      v7 = [v79 canPerformUndo];
      goto LABEL_125;
    }

    goto LABEL_298;
  }

  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  sub_10027CA3C(a2, v88);
  v80 = v89;
  if (v89)
  {
    v81 = sub_10017CC60(v88, v89);
    v82 = *(v80 - 8);
    __chkstk_darwin(v81);
    v84 = &v87 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v84);
    v85 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v82 + 8))(v84, v80);
    sub_100009F60(v88);
  }

  else
  {
    v85 = 0;
  }

  v87.receiver = v2;
  v87.super_class = ICKeyboardHandler;
  v86 = objc_msgSendSuper2(&v87, "canPerformAction:withSender:", a1, v85);
  swift_unknownObjectRelease();
  return v86;
}