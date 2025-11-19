uint64_t RCSServiceSession.participantsRemoved(_:fromGroupChat:withRemovedParticipants:removedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v136 = &v122 - v11;
  v12 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v141 = *(v12 - 8);
  v142 = v12;
  v13 = v141[8];
  __chkstk_darwin(v12);
  v140 = &v122 - v14;
  v15 = sub_F06CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v135 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v122 - v21;
  v22 = __chkstk_darwin(v20);
  v138 = &v122 - v23;
  v24 = __chkstk_darwin(v22);
  v139 = &v122 - v25;
  __chkstk_darwin(v24);
  v27 = &v122 - v26;
  result = sub_53040(0xD000000000000047, 0x80000000000FE4C0);
  if (result)
  {
    v125 = v4;
    v29 = Logger.rcs.unsafeMutableAddressor();
    v134 = v16;
    v30 = *(v16 + 16);
    v131 = v29;
    v132 = v30;
    v133 = v16 + 16;
    (v30)(v27);
    v129 = a4;
    v31 = a4;
    v32 = a1;
    v33 = v27;
    v34 = a2;
    v35 = a3;
    v36 = v32;
    v37 = sub_F06AC();
    LOBYTE(v32) = sub_F0CCC();
    v126 = v31;

    v128 = v35;
    v130 = v34;

    v38 = v32;
    v39 = v32;
    v40 = v37;
    v41 = os_log_type_enabled(v37, v39);
    v127 = v36;
    if (v41)
    {
      v42 = v33;
      v124 = v15;
      v43 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v150 = v123;
      *v43 = 136447234;
      *(v43 + 4) = sub_3E850(0xD000000000000047, 0x80000000000FE4C0, &v150);
      *(v43 + 12) = 2080;
      v44 = [v36 labelID];
      if (v44)
      {
        v45 = v44;
        v46 = sub_F07EC();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0xE000000000000000;
      }

      v50 = 0x3E6C696E3CLL;
      v51 = sub_3E850(v46, v48, &v150);

      *(v43 + 14) = v51;
      *(v43 + 22) = 2080;
      v52 = [v130 remoteUri];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 destination];

        v55 = sub_F07EC();
        v57 = v56;
      }

      else
      {
        v57 = 0xE500000000000000;
        v55 = 0x3E6C696E3CLL;
      }

      v58 = sub_3E850(v55, v57, &v150);

      *(v43 + 24) = v58;
      *(v43 + 32) = 2112;
      v59 = v128;
      *(v43 + 34) = v128;
      v60 = v122;
      *v122 = v59;
      *(v43 + 42) = 2080;
      v61 = v59;
      if (v129)
      {
        v62 = [v126 member];
        v50 = sub_F07EC();
        v64 = v63;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = sub_3E850(v50, v64, &v150);

      *(v43 + 44) = v65;
      _os_log_impl(&dword_0, v40, v38, "%{public}s simID: %s remoteUri: %s removedParticipants: %@ removedBy: %s", v43, 0x34u);
      sub_372B0(v60, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v49 = *(v134 + 8);
      v15 = v124;
      v49(v42, v124);
    }

    else
    {

      v49 = *(v134 + 8);
      v49(v33, v15);
    }

    if (qword_127A20 != -1)
    {
      swift_once();
    }

    v66 = v142;
    v67 = sub_3C96C(v142, qword_127C58);
    v68 = v140;
    v69 = v141;
    (v141[2])(v140, v67, v66);
    sub_F044C();
    (v69[1])(v68, v66);
    if (v150 == 1)
    {
      v70 = v139;
      v132(v139, v131, v15);
      v71 = sub_F06AC();
      v72 = sub_F0CDC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        v74 = "Dropping participant removal due to override";
LABEL_28:
        _os_log_impl(&dword_0, v71, v72, v74, v73, 2u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v75 = [v127 phoneNumber];
    if (!v75)
    {
      v70 = v137;
      v132(v137, v131, v15);
      v71 = sub_F06AC();
      v72 = sub_F0CEC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        v74 = "Dropping participant removal due to missing phone number on subscription context";
        goto LABEL_28;
      }

LABEL_29:

      v90 = v70;
      return (v49)(v90, v15);
    }

    v76 = v75;
    v77 = sub_F07EC();
    v79 = v78;

    v80 = v130;
    v81 = [v130 remoteUri];
    if (v81)
    {
      v82 = v81;
      v142 = v79;
      v83 = [v80 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v84 = static NSUserDefaults.forceEncryption.getter();
      v157.id._object = &type metadata for CTRCSGroupIdentity;
      v157.attributes._rawValue = &off_11F358;
      v157.scheme._countAndFlagsBits = v82;
      LOBYTE(v157.scheme._object) = (v84 | v83) & 1;
      v85 = v80;
      RCSGroup.init(group:identity:)(v85, &v157, &v143);
      v153 = v146;
      v154 = v147;
      v155 = v148;
      v156 = v149;
      v150 = v143;
      v151 = v144;
      v152 = v145;
      v91 = *(&v144 + 1);
      v92 = v145;
      v93 = sub_373E8(&v150, *(&v144 + 1));
      v94 = sub_6F3C8(v93, v125, v91, v92);
      if (v94)
      {
        v141 = v85;
        v124 = v15;
        *&v143 = v94;
        v95 = v94;
        v96 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v97 = v128;
        v98 = v126;
        v99 = v95;
        v100 = v142;

        RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)(&v143, v77, v100, v97, v129, 1, 0, v96, v136);
        v101 = *(&v151 + 1);
        v102 = v152;
        sub_373E8(&v150, *(&v151 + 1));
        result = (*(v102 + 16))(v101, v102);
        if (!v103)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v104 = v103;
        if (*(*(*&v125[OBJC_IVAR___RCSServiceSession_state] + 72) + 16))
        {
          v105 = result;
          v106 = *(*&v125[OBJC_IVAR___RCSServiceSession_state] + 72);

          sub_51FEC(v105, v104);
          LOBYTE(v105) = v107;

          if (v105)
          {
            v108 = v127;
            v109 = [v127 phoneNumber];
            if (v109)
            {
              v110 = v109;
              v111 = sub_F07EC();
              v113 = v112;

              v114 = sub_53E04(_swiftEmptyArrayStorage);
              v115._countAndFlagsBits = 7103860;
              v115._object = 0xE300000000000000;
              v116._countAndFlagsBits = v111;
              v116._object = v113;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v157, v115, v116, v114, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v117);
              RCSHandle.canonicalizedHandle(for:)(sub_55244, &v143);
              v108 = v127;
              sub_3CAB8(&v157);

              sub_3CAB8(&v143);
            }

            v119 = [v108 labelID];
            v120 = v136;
            if (v119)
            {
              v121 = v119;
              sub_F07EC();
            }

            sub_62878(v120, &v150);
            sub_372B0(v120, &qword_127EE0, qword_F2CB0);

            return sub_53D58(&v150);
          }
        }

        else
        {
        }

        v118 = v136;
        RCSServiceSession.process(participantChange:)(v136);
        sub_77CA4(v118, 1);

        sub_372B0(v118, &qword_127EE0, qword_F2CB0);
        return sub_53D58(&v150);
      }

      sub_53D58(&v150);
    }

    else
    {

      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      sub_372B0(&v143, &qword_127EE8, &unk_F33F0);
    }

    v86 = v138;
    v132(v138, v131, v15);
    v87 = sub_F06AC();
    v88 = sub_F0CEC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "Dropping participantsRemoved for unknown group", v89, 2u);
    }

    v90 = v86;
    return (v49)(v90, v15);
  }

  return result;
}

uint64_t RCSServiceSession.participantsAdded(_:toGroupChat:withAddedParticipants:addedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v136 = &v122 - v11;
  v12 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v141 = *(v12 - 8);
  v142 = v12;
  v13 = v141[8];
  __chkstk_darwin(v12);
  v140 = &v122 - v14;
  v15 = sub_F06CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v135 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v122 - v21;
  v22 = __chkstk_darwin(v20);
  v138 = &v122 - v23;
  v24 = __chkstk_darwin(v22);
  v139 = &v122 - v25;
  __chkstk_darwin(v24);
  v27 = &v122 - v26;
  result = sub_53040(0xD00000000000003FLL, 0x80000000000FE580);
  if (result)
  {
    v125 = v4;
    v29 = Logger.rcs.unsafeMutableAddressor();
    v134 = v16;
    v30 = *(v16 + 16);
    v131 = v29;
    v132 = v30;
    v133 = v16 + 16;
    (v30)(v27);
    v129 = a4;
    v31 = a4;
    v32 = a1;
    v33 = v27;
    v34 = a2;
    v35 = a3;
    v36 = v32;
    v37 = sub_F06AC();
    LOBYTE(v32) = sub_F0CCC();
    v126 = v31;

    v128 = v35;
    v130 = v34;

    v38 = v32;
    v39 = v32;
    v40 = v37;
    v41 = os_log_type_enabled(v37, v39);
    v127 = v36;
    if (v41)
    {
      v42 = v33;
      v124 = v15;
      v43 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v150 = v123;
      *v43 = 136447234;
      *(v43 + 4) = sub_3E850(0xD00000000000003FLL, 0x80000000000FE580, &v150);
      *(v43 + 12) = 2080;
      v44 = [v36 labelID];
      if (v44)
      {
        v45 = v44;
        v46 = sub_F07EC();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0xE000000000000000;
      }

      v50 = 0x3E6C696E3CLL;
      v51 = sub_3E850(v46, v48, &v150);

      *(v43 + 14) = v51;
      *(v43 + 22) = 2080;
      v52 = [v130 remoteUri];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 destination];

        v55 = sub_F07EC();
        v57 = v56;
      }

      else
      {
        v57 = 0xE500000000000000;
        v55 = 0x3E6C696E3CLL;
      }

      v58 = sub_3E850(v55, v57, &v150);

      *(v43 + 24) = v58;
      *(v43 + 32) = 2112;
      v59 = v128;
      *(v43 + 34) = v128;
      v60 = v122;
      *v122 = v59;
      *(v43 + 42) = 2080;
      v61 = v59;
      if (v129)
      {
        v62 = [v126 member];
        v50 = sub_F07EC();
        v64 = v63;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = sub_3E850(v50, v64, &v150);

      *(v43 + 44) = v65;
      _os_log_impl(&dword_0, v40, v38, "%{public}s simID: %s remoteUri: %s addedParticipants: %@ addedBy: %s", v43, 0x34u);
      sub_372B0(v60, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v49 = *(v134 + 8);
      v15 = v124;
      v49(v42, v124);
    }

    else
    {

      v49 = *(v134 + 8);
      v49(v33, v15);
    }

    if (qword_127A28 != -1)
    {
      swift_once();
    }

    v66 = v142;
    v67 = sub_3C96C(v142, qword_127C70);
    v68 = v140;
    v69 = v141;
    (v141[2])(v140, v67, v66);
    sub_F044C();
    (v69[1])(v68, v66);
    if (v150 == 1)
    {
      v70 = v139;
      v132(v139, v131, v15);
      v71 = sub_F06AC();
      v72 = sub_F0CDC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        v74 = "Dropping participant addition due to override";
LABEL_28:
        _os_log_impl(&dword_0, v71, v72, v74, v73, 2u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v75 = [v127 phoneNumber];
    if (!v75)
    {
      v70 = v137;
      v132(v137, v131, v15);
      v71 = sub_F06AC();
      v72 = sub_F0CEC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        v74 = "Dropping participant addition due to missing phone number on subscription context";
        goto LABEL_28;
      }

LABEL_29:

      v90 = v70;
      return (v49)(v90, v15);
    }

    v76 = v75;
    v77 = sub_F07EC();
    v79 = v78;

    v80 = v130;
    v81 = [v130 remoteUri];
    if (v81)
    {
      v82 = v81;
      v142 = v79;
      v83 = [v80 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v84 = static NSUserDefaults.forceEncryption.getter();
      v157.id._object = &type metadata for CTRCSGroupIdentity;
      v157.attributes._rawValue = &off_11F358;
      v157.scheme._countAndFlagsBits = v82;
      LOBYTE(v157.scheme._object) = (v84 | v83) & 1;
      v85 = v80;
      RCSGroup.init(group:identity:)(v85, &v157, &v143);
      v153 = v146;
      v154 = v147;
      v155 = v148;
      v156 = v149;
      v150 = v143;
      v151 = v144;
      v152 = v145;
      v91 = *(&v144 + 1);
      v92 = v145;
      v93 = sub_373E8(&v150, *(&v144 + 1));
      v94 = sub_6F3C8(v93, v125, v91, v92);
      if (v94)
      {
        v141 = v85;
        v124 = v15;
        *&v143 = v94;
        v95 = v94;
        v96 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v97 = v128;
        v98 = v126;
        v99 = v95;
        v100 = v142;

        RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)(&v143, v77, v100, v97, v129, 0, 0, v96, v136);
        v101 = *(&v151 + 1);
        v102 = v152;
        sub_373E8(&v150, *(&v151 + 1));
        result = (*(v102 + 16))(v101, v102);
        if (!v103)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v104 = v103;
        if (*(*(*&v125[OBJC_IVAR___RCSServiceSession_state] + 72) + 16))
        {
          v105 = result;
          v106 = *(*&v125[OBJC_IVAR___RCSServiceSession_state] + 72);

          sub_51FEC(v105, v104);
          LOBYTE(v105) = v107;

          if (v105)
          {
            v108 = v127;
            v109 = [v127 phoneNumber];
            if (v109)
            {
              v110 = v109;
              v111 = sub_F07EC();
              v113 = v112;

              v114 = sub_53E04(_swiftEmptyArrayStorage);
              v115._countAndFlagsBits = 7103860;
              v115._object = 0xE300000000000000;
              v116._countAndFlagsBits = v111;
              v116._object = v113;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v157, v115, v116, v114, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v117);
              RCSHandle.canonicalizedHandle(for:)(sub_55244, &v143);
              v108 = v127;
              sub_3CAB8(&v157);

              sub_3CAB8(&v143);
            }

            v119 = [v108 labelID];
            v120 = v136;
            if (v119)
            {
              v121 = v119;
              sub_F07EC();
            }

            sub_62878(v120, &v150);
            sub_372B0(v120, &qword_127EE0, qword_F2CB0);

            return sub_53D58(&v150);
          }
        }

        else
        {
        }

        v118 = v136;
        RCSServiceSession.process(participantChange:)(v136);
        sub_77CA4(v118, 1);

        sub_372B0(v118, &qword_127EE0, qword_F2CB0);
        return sub_53D58(&v150);
      }

      sub_53D58(&v150);
    }

    else
    {

      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      sub_372B0(&v143, &qword_127EE8, &unk_F33F0);
    }

    v86 = v138;
    v132(v138, v131, v15);
    v87 = sub_F06AC();
    v88 = sub_F0CEC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "Dropping participantsAdded for unknown group", v89, 2u);
    }

    v90 = v86;
    return (v49)(v90, v15);
  }

  return result;
}

void sub_4E520(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(id, id, id, void *))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  a7(v12, v13, v14, a6);
}

uint64_t RCSServiceSession.didFinishGroupUpdate(_:forGroupChat:)(void *a1, void *a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v5);
  v8 = &v84 - v7;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v93 = &v84 - v16;
  v17 = __chkstk_darwin(v15);
  v94 = &v84 - v18;
  __chkstk_darwin(v17);
  v20 = &v84 - v19;
  result = sub_53040(0xD000000000000025, 0x80000000000FE600);
  if (result)
  {
    v88 = v14;
    v87 = v2;
    v22 = Logger.rcs.unsafeMutableAddressor();
    v23 = *(v10 + 16);
    v89 = v22;
    v91 = v10 + 16;
    v90 = v23;
    (v23)(v20);
    v24 = a1;
    v25 = v10;
    v26 = v24;
    v27 = a2;
    v28 = v9;
    v29 = sub_F06AC();
    v30 = sub_F0CCC();
    v92 = v27;

    if (os_log_type_enabled(v29, v30))
    {
      v85 = v25;
      v86 = v28;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v100 = v84;
      *v31 = 136446722;
      *(v31 + 4) = sub_3E850(0xD000000000000025, 0x80000000000FE600, &v100);
      *(v31 + 12) = 2080;
      v33 = [v26 labelID];
      if (v33)
      {
        v34 = v33;
        v35 = sub_F07EC();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0xE000000000000000;
      }

      v40 = sub_3E850(v35, v37, &v100);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2112;
      v41 = v92;
      *(v31 + 24) = v92;
      *v32 = v41;
      v42 = v41;
      _os_log_impl(&dword_0, v29, v30, "%{public}s simID: %s forGroupChat: %@", v31, 0x20u);
      sub_372B0(v32, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v38 = *(v85 + 8);
      v39 = v86;
      v38(v20, v86);
    }

    else
    {

      v38 = *(v25 + 8);
      v38(v20, v28);
      v39 = v28;
    }

    if (qword_127AB0 != -1)
    {
      swift_once();
    }

    v43 = sub_3C96C(v5, qword_127E08);
    v44 = v95;
    (*(v95 + 16))(v8, v43, v5);
    sub_F044C();
    (*(v44 + 8))(v8, v5);
    if (v100 == 1)
    {
      v45 = v94;
      v90(v94, v89, v39);
      v46 = sub_F06AC();
      v47 = sub_F0CEC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "Dropping group update completion due to override", v48, 2u);
      }

      v49 = v45;
      return (v38)(v49, v39);
    }

    v50 = v92;
    v51 = [v92 remoteUri];
    if (!v51)
    {
      v63 = v93;
      v90(v93, v89, v39);
      v64 = sub_F06AC();
      v65 = sub_F0CEC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_0, v64, v65, "Dropping didFinishGroupUpdate for group with no remoteUri", v66, 2u);
      }

      v49 = v63;
      return (v38)(v49, v39);
    }

    v52 = v51;
    v53 = [v50 remoteUri];
    if (v53)
    {
      v54 = v53;
      v55 = [v50 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v56 = static NSUserDefaults.forceEncryption.getter();
      v98 = &type metadata for CTRCSGroupIdentity;
      v99 = &off_11F358;
      v96 = v54;
      v97 = (v56 | v55) & 1;
      RCSGroup.init(group:identity:)(v50, &v96, &v100);
      v57 = [v52 conversationID];
      v58 = sub_F07EC();
      v60 = v59;

      sub_54C4C(&v100, &v96);
      sub_60AF0(v58, v60, &v96);
      v62 = v61;

      sub_372B0(&v96, &qword_127EE8, &unk_F33F0);
      return sub_53D58(&v100);
    }

    else
    {
      sub_53D04();
      v67 = swift_allocError();
      swift_willThrow();
      v90(v88, v89, v39);
      swift_errorRetain();
      v68 = sub_F06AC();
      v69 = sub_F0CEC();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        swift_errorRetain();
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v72;
        *v71 = v72;
        _os_log_impl(&dword_0, v68, v69, "Error processing group update completion: %@", v70, 0xCu);
        sub_372B0(v71, &qword_127AF0, &qword_F28E0);
        v50 = v92;
      }

      v38(v88, v39);
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v73 = result;
        v100 = 0x52552070756F7267;
        v101 = 0xEA00000000002049;
        v74 = [v50 remoteUri];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 focus];

          v77 = sub_F07EC();
          v79 = v78;
        }

        else
        {
          v79 = 0xE500000000000000;
          v77 = 0x3E6C696E3CLL;
        }

        v107._countAndFlagsBits = v77;
        v107._object = v79;
        sub_F08CC(v107);

        v80 = v100;
        v81 = v101;
        v82 = sub_F0FBC();
        LOBYTE(v100) = 1;
        v101 = v82;
        v102 = v83;
        v103 = v80;
        v104 = v81;
        v105 = v67;
        v106 = 0;
        swift_errorRetain();
        sub_94528(&v100);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishExit(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000016, 0x80000000000FE660);
  if (result)
  {
    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v12, v6);
    v13 = a1;
    v14 = a2;
    v15 = sub_F06AC();
    v16 = sub_F0CCC();

    if (os_log_type_enabled(v15, v16))
    {
      v29 = v3;
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v17 = 136446722;
      *(v17 + 4) = sub_3E850(0xD000000000000016, 0x80000000000FE660, v30);
      *(v17 + 12) = 2080;
      v18 = [v13 labelID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_F07EC();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_3E850(v20, v22, v30);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v14;
      v24 = v27;
      *v27 = v14;
      v25 = v14;
      _os_log_impl(&dword_0, v15, v16, "%{public}s simID: %s operationResult: %@", v17, 0x20u);
      sub_372B0(v24, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      result = (*(v7 + 8))(v10, v6);
      v3 = v29;
    }

    else
    {

      result = (*(v7 + 8))(v10, v6);
    }

    if (*(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v30[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v30[4] = &protocol witness table for CTLazuliOperationResult;
      v30[0] = v14;
      v26 = v14;

      RCSGroupController.groupExitCompleted(with:)(v30);

      return sub_1EDC(v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.evicted(fromGroup:withGroupInfo:evictedBy:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  if (sub_53040(0xD00000000000002BLL, 0x80000000000FE680))
  {
    v66 = v13;
    v16 = Logger.rcs.unsafeMutableAddressor();
    v17 = v9[2];
    v64 = v16;
    v65 = v9 + 2;
    v63 = v17;
    (v17)(v15);
    v67 = a3;
    v18 = a3;
    v19 = a1;
    v20 = a2;
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    v62 = v18;

    v23 = v20;
    v68 = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v60 = v9;
      v61 = v4;
      v24 = swift_slowAlloc();
      *&v69[0] = swift_slowAlloc();
      *v24 = 136446978;
      *(v24 + 4) = sub_3E850(0xD00000000000002BLL, 0x80000000000FE680, v69);
      *(v24 + 12) = 2080;
      v25 = [v19 labelID];
      if (v25)
      {
        v26 = v25;
        v27 = sub_F07EC();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0xE000000000000000;
      }

      v31 = v23;
      v32 = sub_3E850(v27, v29, v69);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2080;
      v33 = [v23 destination];
      v34 = sub_F07EC();
      v36 = v35;

      v37 = sub_3E850(v34, v36, v69);

      *(v24 + 24) = v37;
      *(v24 + 32) = 2080;
      if (v67)
      {
        v38 = [v62 member];
        v39 = sub_F07EC();
        v41 = v40;
      }

      else
      {
        v41 = 0xE600000000000000;
        v39 = 0x296C6C756E28;
      }

      v4 = v61;
      v42 = sub_3E850(v39, v41, v69);

      *(v24 + 34) = v42;
      _os_log_impl(&dword_0, v21, v68, "%{public}s simID: %s evicted from group %s by %s", v24, 0x2Au);
      swift_arrayDestroy();

      v30 = v60[1];
      v30(v15, v8);
    }

    else
    {

      v30 = v9[1];
      v30(v15, v8);
      v31 = v23;
    }

    v43 = v31;
    v44 = sub_5270C(v43, 0, v4);

    if (v44)
    {
      v45 = [v43 conversationID];
      v46 = sub_F07EC();
      v48 = v47;

      memset(v69, 0, 112);
      sub_60AF0(v46, v48, v69);
      v50 = v49;

      sub_372B0(v69, &qword_127EE8, &unk_F33F0);
      v51 = [v44 chatIdentifier];
      if (v51)
      {
        v52 = v51;
        v53 = [v44 style];
        v54 = [v4 account];
        [v4 didLeaveChat:v52 style:v53 account:v54];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v55 = v66;
      v63(v66, v64, v8);
      v56 = sub_F06AC();
      v57 = sub_F0CEC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "Dropping eviction from unknown group", v58, 2u);
      }

      v30(v55, v8);
    }
  }
}

uint64_t RCSServiceSession.didFinishParticipantsAddition(_:added:didNotAdd:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000036, 0x80000000000FE6B0);
  if (result)
  {
    v62 = v4;
    v15 = Logger.rcs.unsafeMutableAddressor();
    (*(v10 + 16))(v13, v15, v9);
    v16 = a3;
    v60 = v9;
    v17 = v13;
    v18 = v10;
    v19 = v16;
    v20 = a4;
    v21 = a1;
    v65 = a2;
    v22 = a2;
    v23 = sub_F06AC();
    v24 = sub_F0CCC();
    v61 = v20;

    v64 = v19;
    v63 = v22;

    v58 = v24;
    v25 = v24;
    v26 = v23;
    if (os_log_type_enabled(v23, v25))
    {
      v57 = v18;
      v27 = v60;
      v59 = a3;
      v28 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v28 = 136447234;
      *(v28 + 4) = sub_3E850(0xD000000000000036, 0x80000000000FE6B0, v66);
      *(v28 + 12) = 2080;
      v29 = [v21 labelID];
      if (v29)
      {
        v30 = v29;
        v31 = sub_F07EC();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = v61;
      v35 = 0x3E6C696E3CLL;
      v36 = sub_3E850(v31, v33, v66);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2080;
      if (v65)
      {
        v37 = [v63 description];
        v38 = sub_F07EC();
        v40 = v39;
      }

      else
      {
        v40 = 0xE500000000000000;
        v38 = 0x3E6C696E3CLL;
      }

      v41 = sub_3E850(v38, v40, v66);

      *(v28 + 24) = v41;
      *(v28 + 32) = 2080;
      if (v59)
      {
        v42 = [v64 description];
        v35 = sub_F07EC();
        v44 = v43;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      v45 = sub_3E850(v35, v44, v66);

      *(v28 + 34) = v45;
      *(v28 + 42) = 2112;
      *(v28 + 44) = v34;
      v46 = v55;
      *v55 = v34;
      v47 = v34;
      _os_log_impl(&dword_0, v26, v58, "%{public}s simID: %s added %s notAdded %s operationResult: %@", v28, 0x34u);
      sub_372B0(v46, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v57 + 8))(v17, v27);
      a3 = v59;
    }

    else
    {

      (*(v18 + 8))(v17, v60);
      v34 = v61;
    }

    type metadata accessor for RCSServiceSession(0);
    v48 = v63;
    v49 = v64;
    result = RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(v65, a3);
    if (*(*(v62 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v51 = v50;
      v52 = result;
      v66[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v66[4] = &protocol witness table for CTLazuliOperationResult;
      v66[0] = v34;
      v53 = v34;

      RCSGroupController.participantRemovalCompleted(with:groupOperation:)(v52, v51, v66);

      sub_54CA8(v52);
      return sub_1EDC(v66);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishParticipantsRemoval(_:removed:didNotRemove:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000003ALL, 0x80000000000FE6F0);
  if (result)
  {
    v62 = v4;
    v15 = Logger.rcs.unsafeMutableAddressor();
    (*(v10 + 16))(v13, v15, v9);
    v16 = a3;
    v60 = v9;
    v17 = v13;
    v18 = v10;
    v19 = v16;
    v20 = a4;
    v21 = a1;
    v65 = a2;
    v22 = a2;
    v23 = sub_F06AC();
    v24 = sub_F0CCC();
    v61 = v20;

    v64 = v19;
    v63 = v22;

    v58 = v24;
    v25 = v24;
    v26 = v23;
    if (os_log_type_enabled(v23, v25))
    {
      v57 = v18;
      v27 = v60;
      v59 = a3;
      v28 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v28 = 136447234;
      *(v28 + 4) = sub_3E850(0xD00000000000003ALL, 0x80000000000FE6F0, v66);
      *(v28 + 12) = 2080;
      v29 = [v21 labelID];
      if (v29)
      {
        v30 = v29;
        v31 = sub_F07EC();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = v61;
      v35 = 0x3E6C696E3CLL;
      v36 = sub_3E850(v31, v33, v66);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2080;
      if (v65)
      {
        v37 = [v63 description];
        v38 = sub_F07EC();
        v40 = v39;
      }

      else
      {
        v40 = 0xE500000000000000;
        v38 = 0x3E6C696E3CLL;
      }

      v41 = sub_3E850(v38, v40, v66);

      *(v28 + 24) = v41;
      *(v28 + 32) = 2080;
      if (v59)
      {
        v42 = [v64 description];
        v35 = sub_F07EC();
        v44 = v43;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      v45 = sub_3E850(v35, v44, v66);

      *(v28 + 34) = v45;
      *(v28 + 42) = 2112;
      *(v28 + 44) = v34;
      v46 = v55;
      *v55 = v34;
      v47 = v34;
      _os_log_impl(&dword_0, v26, v58, "%{public}s simID: %s removed %s notRemoved %s operationResult: %@", v28, 0x34u);
      sub_372B0(v46, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v57 + 8))(v17, v27);
      a3 = v59;
    }

    else
    {

      (*(v18 + 8))(v17, v60);
      v34 = v61;
    }

    type metadata accessor for RCSServiceSession(0);
    v48 = v63;
    v49 = v64;
    result = RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(v65, a3);
    if (*(*(v62 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v51 = v50;
      v52 = result;
      v66[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v66[4] = &protocol witness table for CTLazuliOperationResult;
      v66[0] = v34;
      v53 = v34;

      RCSGroupController.participantRemovalCompleted(with:groupOperation:)(v52, v51, v66);

      sub_54CA8(v52);
      return sub_1EDC(v66);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_50574(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(id, void *, void *, id))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  a7(v12, a4, a5, v15);
}

uint64_t RCSServiceSession.didFinishGroupChatCreation(_:forGroupChat:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000030, 0x80000000000FE730);
  if (result)
  {
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v14, v8);
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();

    if (os_log_type_enabled(v18, v19))
    {
      v33 = v19;
      v35 = v16;
      v36 = v4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v20 = 136446978;
      *(v20 + 4) = sub_3E850(0xD000000000000030, 0x80000000000FE730, v38);
      *(v20 + 12) = 2080;
      v34 = v15;
      v22 = [v15 labelID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_F07EC();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_3E850(v24, v26, v38);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      v16 = v35;
      *(v20 + 24) = v35;
      *(v20 + 32) = 2112;
      *(v20 + 34) = v17;
      *v21 = v16;
      v21[1] = v17;
      v28 = v16;
      v29 = v17;
      _os_log_impl(&dword_0, v18, v33, "%{public}s simID: %s forGroupChat: %@ operationResult: %@", v20, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v12, v8);
      v4 = v36;
      v15 = v34;
    }

    else
    {

      result = (*(v9 + 8))(v12, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v38[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v38[4] = &protocol witness table for CTLazuliOperationResult;
      v37 = v15;
      v38[0] = v17;
      v30 = v17;

      RCSGroupController.groupCreationCompleted(with:operationResult:subscriptionContext:)(v16, v38, &v37);

      return sub_1EDC(v38);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishSubjectChange(_:withNewSubject:with:)(void *a1, void *a2, void *a3)
{
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ELL, 0x80000000000FE770);
  if (result)
  {
    v49 = v3;
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v13, v7);
    v14 = a2;
    v15 = a3;
    v16 = v11;
    v17 = a2;
    v18 = a1;
    v19 = sub_F06AC();
    v20 = sub_F0CCC();
    v47 = v15;

    v48 = v14;
    v21 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v45 = v8;
      v46 = v17;
      v22 = v19;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50[0] = v44;
      *v23 = 136446978;
      *(v23 + 4) = sub_3E850(0xD00000000000002ELL, 0x80000000000FE770, v50);
      *(v23 + 12) = 2080;
      v25 = [v18 labelID];
      if (v25)
      {
        v26 = v25;
        v27 = sub_F07EC();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0xE000000000000000;
      }

      v33 = sub_3E850(v27, v29, v50);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2112;
      v31 = v47;
      v30 = v48;
      *(v23 + 24) = v48;
      *(v23 + 32) = 2112;
      *(v23 + 34) = v31;
      v32 = v46;
      *v24 = v46;
      v24[1] = v31;
      v34 = v30;
      v35 = v31;
      _os_log_impl(&dword_0, v22, v21, "%{public}s simID: %s newSubject: %@ operationResult: %@", v23, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v45 + 8))(v16, v7);
    }

    else
    {

      result = (*(v8 + 8))(v16, v7);
      v31 = v47;
      v30 = v48;
      v32 = v17;
    }

    v36 = *(v49 + OBJC_IVAR___RCSServiceSession_state);
    if (*(v36 + 40))
    {
      v37 = *(v36 + 40);

      if (v32)
      {
        v38 = [v30 displayString];
        v39 = sub_F07EC();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v50[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v50[4] = &protocol witness table for CTLazuliOperationResult;
      v50[0] = v31;
      v42 = v31;
      RCSGroupController.groupRenameCompleted(with:operationResult:)(v39, v41, v50);

      return sub_1EDC(v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didReportChatbotSpam(_:forChatbot:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000028, 0x80000000000FE7A0);
  if (result)
  {
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v14, v8);
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v35 = v18;
      v36 = v4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v20 = 136446978;
      *(v20 + 4) = sub_3E850(0xD000000000000028, 0x80000000000FE7A0, v37);
      *(v20 + 12) = 2080;
      v22 = [v15 labelID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_F07EC();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_3E850(v24, v26, v37);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v16;
      *(v20 + 32) = 2112;
      *(v20 + 34) = v17;
      *v21 = v16;
      v21[1] = v17;
      v28 = v16;
      v29 = v17;
      v30 = v35;
      _os_log_impl(&dword_0, v35, v34, "%{public}s simID: %s forChatbot: %@ operationResult: %@", v20, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v12, v8);
      v4 = v36;
    }

    else
    {

      result = (*(v9 + 8))(v12, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 56))
    {
      v37[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v37[4] = &protocol witness table for CTLazuliOperationResult;
      v37[0] = v17;
      v31 = v17;

      RCSSpamReportingController.spamReportCompleted(operationResult:)(v37);

      return sub_1EDC(v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didReportSpam(_:for:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000001ALL, 0x80000000000FE7D0);
  if (result)
  {
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v14, v8);
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v35 = v18;
      v36 = v4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v20 = 136446978;
      *(v20 + 4) = sub_3E850(0xD00000000000001ALL, 0x80000000000FE7D0, v37);
      *(v20 + 12) = 2080;
      v22 = [v15 labelID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_F07EC();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_3E850(v24, v26, v37);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v16;
      *(v20 + 32) = 2112;
      *(v20 + 34) = v17;
      *v21 = v16;
      v21[1] = v17;
      v28 = v16;
      v29 = v17;
      v30 = v35;
      _os_log_impl(&dword_0, v35, v34, "%{public}s simID: %s forDestination: %@ operationResult: %@", v20, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v12, v8);
      v4 = v36;
    }

    else
    {

      result = (*(v9 + 8))(v12, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 56))
    {
      v37[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v37[4] = &protocol witness table for CTLazuliOperationResult;
      v37[0] = v17;
      v31 = v17;

      RCSSpamReportingController.spamReportCompleted(operationResult:)(v37);

      return sub_1EDC(v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CTLazuliOperationResult.operationId.getter()
{
  v1 = [v0 operation];
  v2 = [v1 uuid];

  v3 = sub_F07EC();
  return v3;
}

uint64_t sub_51770()
{
  v1 = [*v0 operation];
  v2 = [v1 uuid];

  v3 = sub_F07EC();
  return v3;
}

id sub_5180C()
{
  v1 = [*v0 error];

  return v1;
}

uint64_t sub_51844(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_3FE38(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_54F88(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_54F88(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_54F88(v31, v32);
    result = sub_F0F1C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_54F88(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_51B0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_54F88(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_54F88(v31, v32);
    result = sub_F0F1C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_54F88(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_51DC0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_51DF8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_F12FC();
  sub_F089C();

  v4 = sub_F132C();

  return sub_37740(a1, v4);
}

void *sub_51F04(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_51F78@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_51FA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_F0F1C(*(v2 + 40));

  return sub_52064(a1, v4);
}

unint64_t sub_51FEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_F12FC();
  sub_F089C();
  v6 = sub_F132C();

  return sub_5212C(a1, a2, v6);
}

unint64_t sub_52064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_54ED8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_F0F2C();
      sub_54F34(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_5212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_F122C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_521E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76A24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_7589C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_F126C();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  sub_76710(v11, a2, a3, a1, v22);
}

_OWORD *sub_52328(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76D70();
      v11 = v19;
      goto LABEL_8;
    }

    sub_75E48(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_F126C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1EDC(v23);

    return sub_54F88(a1, v23);
  }

  else
  {
    sub_76758(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_52478(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_51FEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_76B90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_75B40(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_51FEC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_F126C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 160 * v11;

    return sub_54F98(a1, v23);
  }

  else
  {
    sub_767C4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_525C0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_51FA8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_76F14();
      goto LABEL_7;
    }

    sub_76100(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_51FA8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_54ED8(a2, v22);
      return sub_76838(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_F126C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1EDC(v17);

  return sub_54F88(a1, v17);
}

uint64_t sub_5270C(void *a1, char a2, char *a3)
{
  v79 = sub_F06CC();
  v78 = *(v79 - 8);
  v6 = *(v78 + 64);
  v7 = __chkstk_darwin(v79);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v73 - v9;
  v90 = &type metadata for CTRCSGroupIdentity;
  v91 = &off_11F358;
  v88 = a1;
  v89 = a2;
  v80 = a1;
  v11 = [v80 conversationID];
  v12 = sub_F07EC();
  v14 = v13;

  v15 = objc_opt_self();
  v16 = [v15 sharedInstance];
  v75 = v12;
  static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v12, v14);
  v17 = sub_F07BC();

  v77 = a3;
  v18 = [a3 service];
  v19 = [v18 internalName];

  if (!v19)
  {
    sub_F07EC();
    v19 = sub_F07BC();
  }

  v20 = [v16 newestExistingChatWithOriginalGroupID:v17 onService:v19];

  if (!v20)
  {

    v36 = static IMDChatRCSGroupIdentity.migrationEnabled.getter();
    v37 = v77;
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }

    v38 = [v80 focus];
    v39 = sub_F07EC();
    v41 = v40;

    v42 = [v15 sharedInstance];
    v75 = v39;
    v43 = sub_F07BC();
    v44 = [v37 service];
    v45 = [v44 internalName];

    if (!v45)
    {
      sub_F07EC();
      v45 = sub_F07BC();
    }

    v46 = [v42 newestExistingChatWithOriginalGroupID:v43 onService:v45];

    if (!v46)
    {

      v20 = 0;
      goto LABEL_19;
    }

    v76 = v46;
    v47 = v46;
    v48 = Logger.rcs.unsafeMutableAddressor();
    v49 = v78;
    v50 = v74;
    v51 = v79;
    (*(v78 + 16))(v74, v48, v79);
    v52 = v47;

    v53 = sub_F06AC();
    v54 = sub_F0D0C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *&v81 = swift_slowAlloc();
      *v55 = 136315394;
      v56 = [v52 guid];

      if (!v56)
      {
        goto LABEL_30;
      }

      v57 = sub_F07EC();
      v59 = v58;

      v60 = sub_3E850(v57, v59, &v81);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = sub_3E850(v75, v41, &v81);

      *(v55 + 14) = v61;
      _os_log_impl(&dword_0, v53, v54, "Found chat %s for group URI %s", v55, 0x16u);
      swift_arrayDestroy();

      (*(v78 + 8))(v74, v79);
      v37 = v77;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v49 + 8))(v50, v51);
    }

    v20 = v76;
    if (!v76)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v76 = v20;
  v21 = v20;
  v22 = Logger.rcs.unsafeMutableAddressor();
  v23 = v78;
  v24 = v79;
  (*(v78 + 16))(v10, v22, v79);
  v25 = v21;

  v26 = sub_F06AC();
  v27 = sub_F0D0C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *&v81 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = [v25 guid];

    if (v29)
    {
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v81);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      v35 = sub_3E850(v75, v14, &v81);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_0, v26, v27, "Found chat %s for conversation ID %s", v28, 0x16u);
      swift_arrayDestroy();

      (*(v78 + 8))(v10, v79);
      goto LABEL_15;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  (*(v23 + 8))(v10, v24);
LABEL_15:
  v37 = v77;
  v62 = static IMDChatRCSGroupIdentity.migrationEnabled.getter();
  v20 = v76;
  if (v62)
  {
LABEL_18:
    v63 = v25;
    *(&v82 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    *&v83 = &protocol witness table for IMDChat;
    *&v81 = v63;
    IMDChatRCSGroupIdentity.converge(identity:)(&v88);
    sub_39BC4(&v81);
    goto LABEL_19;
  }

LABEL_16:
  if (v20)
  {
LABEL_17:
    v25 = v20;
    goto LABEL_18;
  }

LABEL_19:
  v64 = [v80 conversationID];
  v65 = sub_F07EC();
  v67 = v66;

  if (*(*(*&v37[OBJC_IVAR___RCSServiceSession_state] + 72) + 16))
  {
    v68 = v20;
    v69 = *(*&v37[OBJC_IVAR___RCSServiceSession_state] + 72);

    sub_51FEC(v65, v67);
    v71 = v70;

    if (v71)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      sub_60AF0(v65, v67, &v81);
      v20 = v72;

      sub_372B0(&v81, &qword_127EE8, &unk_F33F0);
    }

    else
    {

      v20 = v68;
    }
  }

  else
  {
  }

  sub_1EDC(&v88);
  return v20;
}

uint64_t sub_52F78(void *a1)
{
  v2 = [a1 extractedUri];
  v3 = sub_F07EC();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = &selRef_extractedUri;
  }

  else
  {
    v7 = &selRef_uri;
  }

  v8 = [a1 *v7];
  v9 = sub_F07EC();

  [a1 isBot];
  return v9;
}

id sub_53040(uint64_t a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v10 = result;
    v11 = [result isMessagesTheDefaultTextApp];

    if (v11)
    {
      return v11;
    }

    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_F06AC();
    v14 = sub_F0CEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_3E850(a1, a2, &v19);
      _os_log_impl(&dword_0, v13, v14, "%{public}s invoked while Messages is not the default text app", v15, 0xCu);
      sub_1EDC(v16);
    }

    (*(v5 + 8))(v8, v4);
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v17 = result;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_F0F9C(41);

      v19 = 0xD000000000000027;
      v20 = 0x80000000000FE9F0;
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      sub_F08CC(v21);
      v18 = sub_F07BC();

      [v17 forceAutoBugCaptureWithSubType:v18 errorPayload:0];

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE22dispositionInformation_4withAEySo31CTXPCServiceSubscriptionContextC_So32CTLazuliMessageDispositionStatusCSo0J8SecurityCSgtF_0(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v77 - v11;
  __chkstk_darwin(v10);
  v14 = &v77 - v13;
  result = sub_53040(0xD000000000000024, 0x80000000000FE960);
  if ((result & 1) == 0)
  {
    return result;
  }

  v77 = v12;
  v78 = v9;
  v16 = Logger.rcs.unsafeMutableAddressor();
  v17 = v5[2];
  v79 = v16;
  v81 = v5 + 2;
  v80 = v17;
  (v17)(v14);
  v18 = a1;
  v19 = a2;
  v20 = sub_F06AC();
  v21 = sub_F0CCC();

  v22 = os_log_type_enabled(v20, v21);
  v84 = v5;
  v85 = v4;
  v83 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *&v87[0] = swift_slowAlloc();
    *v23 = 136446722;
    *(v23 + 4) = sub_3E850(0xD000000000000024, 0x80000000000FE960, v87);
    *(v23 + 12) = 2080;
    v24 = [v18 labelID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_F07EC();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = sub_3E850(v26, v28, v87);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = [v19 description];
    v31 = sub_F07EC();
    v33 = v32;

    v34 = sub_3E850(v31, v33, v87);

    *(v23 + 24) = v34;
    _os_log_impl(&dword_0, v20, v21, "%{public}s simID: %s status: %s", v23, 0x20u);
    swift_arrayDestroy();

    v82 = v84[1];
    v82(v14, v85);
    v18 = v83;
  }

  else
  {

    v82 = v5[1];
    v82(v14, v4);
  }

  v35 = [objc_opt_self() sharedInstance];
  sub_388C8(&qword_127F78, &qword_F2EB8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_F2C70;
  *(v36 + 32) = 5456722;
  *(v36 + 40) = 0xE300000000000000;
  *(v36 + 88) = &type metadata for String;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = 0xD000000000000019;
  *(v36 + 72) = 0x80000000000FE990;
  v37 = sub_F09EC();

  v38 = sub_F0A5C();
  v39 = sub_F0A5C();
  v40 = [v35 copyCarrierBundleValueForSubscriptionContext:v18 keyHierarchy:v37 defaultValue:v38 valueIfError:v39];

  if (v40)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v87[0] = v88;
  v87[1] = v89;
  if (!*(&v89 + 1))
  {
    sub_372B0(v87, &unk_127FB0, &qword_F2F40);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v41 = 0;
    goto LABEL_16;
  }

  v41 = v86;
LABEL_16:
  v42 = [v19 forMessageID];
  v43 = [v42 uuid];

  v44 = sub_F07EC();
  v46 = v45;

  sub_727A4();
  v48 = v47;
  v49 = [v19 from];
  v50 = [v49 uri];

  v51 = sub_F07EC();
  v53 = v52;

  *&v87[0] = v51;
  *(&v87[0] + 1) = v53;
  __chkstk_darwin(v54);
  *(&v77 - 2) = v87;
  LOBYTE(v50) = sub_400F0(sub_55224, (&v77 - 4), v48);

  v55 = sub_AC068(v44, v46, v50 & 1, v41);

  if (v55)
  {
    v56 = [objc_opt_self() sharedInstance];
    v57 = [v56 chatForMessage:v55];

    v58 = v85;
    if (v57)
    {
      RCSHandle.init(destination:)([v19 from], v87);
      v76 = [v19 deliveryType];
      sub_3ADD8(v76, v55, v57, v87, v83);

      return sub_3CAB8(v87);
    }

    v72 = v77;
    v80(v77, v79, v85);
    v73 = sub_F06AC();
    v74 = sub_F0CEC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "Dropping disposition notification due to missing chat", v75, 2u);
    }

    v71 = v72;
  }

  else
  {
    v59 = v78;
    v58 = v85;
    v80(v78, v79, v85);
    v60 = v19;
    v61 = sub_F06AC();
    v62 = sub_F0CEC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v87[0] = v64;
      *v63 = 136315138;
      v65 = [v60 forMessageID];
      v66 = [v65 uuid];

      v67 = sub_F07EC();
      v69 = v68;

      v70 = sub_3E850(v67, v69, v87);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_0, v61, v62, "Dropping disposition notification due to unrecognized message ID %s", v63, 0xCu);
      sub_1EDC(v64);
    }

    v71 = v59;
  }

  return (v82)(v71, v58);
}

unint64_t sub_53D04()
{
  result = qword_127E90;
  if (!qword_127E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127E90);
  }

  return result;
}

void *RCSPersistentMenu.menu.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_53E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_127F68, &qword_F2EB0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_51DF8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE7request22toDisableAnonymization4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0M9MessageIDCtF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ALL, 0x80000000000FE900);
  if (result)
  {
    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v12, v6);
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = sub_F06AC();
    v17 = sub_F0CCC();

    if (os_log_type_enabled(v16, v17))
    {
      v37 = v6;
      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v18 = 136446978;
      *(v18 + 4) = sub_3E850(0xD00000000000002ALL, 0x80000000000FE900, &v38);
      *(v18 + 12) = 2080;
      v19 = [v13 labelID];
      if (v19)
      {
        v20 = v19;
        v21 = sub_F07EC();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_3E850(v21, v23, &v38);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      v25 = [v14 uri];
      v26 = sub_F07EC();
      v28 = v27;

      v29 = sub_3E850(v26, v28, &v38);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2080;
      v30 = [v15 uuid];
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v38);

      *(v18 + 34) = v34;
      _os_log_impl(&dword_0, v16, v17, "%{public}s simID: %s from: %s id: %s", v18, 0x2Au);
      swift_arrayDestroy();

      return (*(v7 + 8))(v10, v37);
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE7request30toEnableDisplayedNotifications4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0N9MessageIDCtF_0(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000032, 0x80000000000FE8C0);
  if (result)
  {
    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v12, v6);
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = sub_F06AC();
    v17 = sub_F0CCC();

    if (os_log_type_enabled(v16, v17))
    {
      v37 = v6;
      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v18 = 136446978;
      *(v18 + 4) = sub_3E850(0xD000000000000032, 0x80000000000FE8C0, &v38);
      *(v18 + 12) = 2080;
      v19 = [v13 labelID];
      if (v19)
      {
        v20 = v19;
        v21 = sub_F07EC();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_3E850(v21, v23, &v38);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      v25 = [v14 uri];
      v26 = sub_F07EC();
      v28 = v27;

      v29 = sub_3E850(v26, v28, &v38);

      *(v18 + 24) = v29;
      *(v18 + 32) = 2080;
      v30 = [v15 uuid];
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v38);

      *(v18 + 34) = v34;
      _os_log_impl(&dword_0, v16, v17, "%{public}s simID: %s from: %s id: %s", v18, 0x2Au);
      swift_arrayDestroy();

      return (*(v7 + 8))(v10, v37);
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t sub_54564(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  result = sub_53040(0xD000000000000049, 0x80000000000FE870);
  if (result)
  {
    v13 = Logger.chatbot.unsafeMutableAddressor();
    v14 = v5[2];
    v68 = v13;
    v65 = v5 + 2;
    v66 = v14;
    v14(v11);
    v15 = a2;
    v16 = a1;
    v17 = sub_F06AC();
    v18 = sub_F0CCC();
    v64 = v15;

    LODWORD(v67) = v18;
    v19 = os_log_type_enabled(v17, v18);
    v70 = v16;
    if (v19)
    {
      v69 = v9;
      v63 = v5;
      v20 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v71[0] = v62;
      *v20 = 136446722;
      *(v20 + 4) = sub_3E850(0xD000000000000049, 0x80000000000FE870, v71);
      *(v20 + 12) = 2080;
      v21 = [v16 uri];
      v22 = sub_F07EC();
      v24 = v23;

      v25 = sub_3E850(v22, v24, v71);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v26 = a2;
      if (a2)
      {
        v27 = [v64 description];
        v28 = sub_F07EC();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v33 = v67;
      v34 = sub_3E850(v28, v30, v71);

      *(v20 + 24) = v34;
      _os_log_impl(&dword_0, v17, v33, "Persistent Menu - Fetched from %{public}s destination: %s info: %s", v20, 0x20u);
      swift_arrayDestroy();

      v32 = v63[1];
      (v32)(v11, v4);
      v9 = v69;
      v16 = v70;
    }

    else
    {

      v31 = v5[1];
      (v31)(v11, v4);
      v26 = a2;
      v32 = v31;
    }

    v35 = sub_64270(v16);
    v48 = v35;
    if (v35 >> 62)
    {
      goto LABEL_29;
    }

    v49 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (v49)
    {
      while (([v16 isBot] & 1) != 0 || v26 && objc_msgSend(v64, "cacheType") == &dword_0 + 1)
      {
        v4 = 0;
        v68 = v26;
        v69 = v48 & 0xC000000000000001;
        v66 = v48 & 0xFFFFFFFFFFFFFF8;
        v67 = v48;
        while (1)
        {
          if (v69)
          {
            v50 = sub_F0FCC();
          }

          else
          {
            if (v4 >= *(v66 + 16))
            {
              goto LABEL_28;
            }

            v50 = *(v48 + 8 * v4 + 32);
          }

          v16 = v50;
          v51 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            break;
          }

          sub_64724(v50, v68);
          v53 = v52;
          v54 = v70;
          v26 = v49;
          v55 = [v70 uri];
          v9 = sub_F07EC();
          v32 = v56;

          v57 = [v54 uri];
          v58 = sub_F07EC();
          v60 = v59;

          v61 = v53 & 1;
          v48 = v67;
          sub_47F0C(v9, v32, v58, v60, v61);
          v49 = v26;

          ++v4;
          if (v51 == v26)
          {
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v49 = sub_F10DC();
        if (!v49)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:

      (v66)(v9, v68, v4);
      v36 = v16;
      v37 = sub_F06AC();
      v38 = sub_F0CEC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v71[0] = v40;
        *v39 = 136315138;
        v41 = [v36 uri];
        v42 = sub_F07EC();
        v69 = v9;
        v43 = v42;
        v45 = v44;

        v46 = sub_3E850(v43, v45, v71);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_0, v37, v38, "Persistent Menu - Cannot find any chat for %s", v39, 0xCu);
        sub_1EDC(v40);

        v47 = v69;
      }

      else
      {

        v47 = v9;
      }

      return (v32)(v47, v4);
    }
  }

  return result;
}

uint64_t sub_54B7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_37C54;

  return sub_49EF8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_54CA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_54CE8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_54CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_54D44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_54DA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_54DB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_54DD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_54E0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_54E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_54F88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_54FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_55014()
{
  result = qword_127F88;
  if (!qword_127F88)
  {
    sub_F06EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127F88);
  }

  return result;
}

unint64_t sub_5506C()
{
  result = qword_127F98;
  if (!qword_127F98)
  {
    sub_3CB70(&qword_127F90, &qword_F2EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127F98);
  }

  return result;
}

uint64_t sub_55108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[30];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_38B0C;

  return sub_467EC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_5524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_F06CC();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_F0AEC();
  v6[14] = sub_F0ADC();
  v11 = sub_F0A6C();
  v6[15] = v11;
  v6[16] = v10;

  return _swift_task_switch(sub_55354, v11, v10);
}

void sub_55354()
{
  v80 = v0;
  v1 = *(v0 + 40);
  v2 = sub_F035C();
  *(v0 + 136) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 144) = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = *(*(sub_388C8(&qword_128020, &qword_F2F08) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = [v1 guid];
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  sub_F07EC();

  sub_F031C();

  if ((*(v4 + 48))(v8, 1, v2) == 1)
  {
    v11 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    v15 = *(v0 + 40);

    sub_372B0(v8, &qword_128020, &qword_F2F08);

    v16 = Logger.rcs.unsafeMutableAddressor();
    (*(v13 + 16))(v12, v16, v14);
    v17 = v15;
    v18 = sub_F06AC();
    v19 = sub_F0CFC();
    if (!os_log_type_enabled(v18, v19))
    {
      v58 = *(v0 + 88);
      v57 = *(v0 + 96);
      v59 = *(v0 + 80);

      (*(v58 + 8))(v57, v59);
      goto LABEL_10;
    }

    v20 = *(v0 + 40);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v79[0] = v22;
    *v21 = 136315138;
    v23 = [v20 guid];

    if (v23)
    {
      v24 = *(v0 + 88);
      v76 = *(v0 + 96);
      v25 = *(v0 + 80);
      v26 = sub_F07EC();
      v28 = v27;

      v29 = sub_3E850(v26, v28, v79);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "Non-UUID message GUID %s passed to RCSServiceSession?!", v21, 0xCu);
      sub_1EDC(v22);

      (*(v24 + 8))(v76, v25);
LABEL_10:
      sub_5F980();
      swift_allocError();
      *v60 = 1;
      *(v60 + 4) = 1;
      swift_willThrow();
      v62 = *(v0 + 96);
      v61 = *(v0 + 104);

      v63 = *(v0 + 8);

      v63();
      return;
    }

    goto LABEL_20;
  }

  v30 = *(v0 + 104);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  v33 = *(v0 + 64);
  v77 = *(v0 + 56);
  (*(v4 + 32))(v6, v8, v2);

  v34 = Logger.rcs.unsafeMutableAddressor();
  (*(v32 + 16))(v30, v34, v31);
  v35 = swift_task_alloc();
  (*(v4 + 16))(v35, v6, v2);
  v36 = v33;
  v37 = v77;
  v38 = sub_F06AC();
  v39 = sub_F0CDC();

  if (os_log_type_enabled(v38, v39))
  {
    v78 = v39;
    v41 = *(v0 + 56);
    v40 = *(v0 + 64);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v42 = 138412802;
    *(v42 + 4) = v40;
    v75 = v43;
    *v43 = v40;
    *(v42 + 12) = 2080;
    sub_5F9D4();
    v44 = v40;
    v45 = sub_F11EC();
    v47 = v46;
    v48 = *(v4 + 8);
    v48(v35, v2);
    v49 = sub_3E850(v45, v47, v79);

    *(v42 + 14) = v49;
    *(v42 + 22) = 2080;
    v50 = [v41 chatIdentifier];

    if (!v50)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v74 = *(v0 + 104);
    v51 = *(v0 + 80);
    v52 = *(v0 + 88);
    v53 = sub_F07EC();
    v55 = v54;

    v56 = sub_3E850(v53, v55, v79);

    *(v42 + 24) = v56;
    _os_log_impl(&dword_0, v38, v78, "Using context %@ for sending message %s to chat %s", v42, 0x20u);
    sub_372B0(v75, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v52 + 8))(v74, v51);
  }

  else
  {
    v64 = *(v0 + 104);
    v65 = *(v0 + 80);
    v66 = *(v0 + 88);
    v67 = *(v0 + 56);

    v48 = *(v4 + 8);
    v48(v35, v2);
    (*(v66 + 8))(v64, v65);
  }

  *(v0 + 160) = v48;
  v68 = *(v0 + 72);

  v69 = *(*(v68 + OBJC_IVAR___RCSServiceSession_state) + 48);
  *(v0 + 168) = v69;
  if (!v69)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 16) = *(v0 + 56);

  v70 = swift_task_alloc();
  *(v0 + 176) = v70;
  *v70 = v0;
  v70[1] = sub_55A84;
  v71 = *(v0 + 40);
  v72 = *(v0 + 48);
  v73 = *(v0 + 32);

  RCSMessageCreator.createRCSMessage(with:originalItem:in:using:)(v73, v71, v72, v0 + 16, v0 + 24);
}

uint64_t sub_55A84()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  v4 = v2[21];

  v5 = v2[15];
  v6 = v2[16];
  if (v0)
  {
    v7 = sub_55C58;
  }

  else
  {
    v7 = sub_55BA8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_55BA8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v2(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_55C58()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[14];

  v2(v1, v3);

  v6 = v0[23];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];

  return v9();
}

void sub_55CFC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = [a2 destinationCallerID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_5F444(v16, v18);
    LOBYTE(v16) = v20;

    if ((v16 & 1) == 0)
    {
      v32 = Logger.rcs.unsafeMutableAddressor();
      (*(v7 + 16))(v13, v32, v6);
      sub_3FA94(v19, 0);
      v33 = a2;
      v34 = sub_F06AC();
      v35 = sub_F0CDC();
      sub_3FA88(v19, 0);

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412546;
        *(v36 + 4) = v19;
        *(v36 + 12) = 2112;
        *(v36 + 14) = v33;
        *v37 = v19;
        v37[1] = v33;
        sub_3FA94(v19, 0);
        v38 = v33;
        _os_log_impl(&dword_0, v34, v35, "Using context %@ for interacting with message %@", v36, 0x16u);
        sub_388C8(&qword_127AF0, &qword_F28E0);
        swift_arrayDestroy();
      }

      (*(v7 + 8))(v13, v6);
      return;
    }

    v19 = v19;
  }

  else
  {
    v19 = 33;
  }

  v21 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v11, v21, v6);
  v22 = a2;
  v23 = sub_F06AC();
  v24 = sub_F0CCC();
  if (!os_log_type_enabled(v23, v24))
  {

    (*(v7 + 8))(v11, v6);
    goto LABEL_9;
  }

  v39 = v19;
  v40 = a1;
  v41 = v6;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v42 = v26;
  *v25 = 136315138;
  v27 = [v22 guid];

  if (v27)
  {
    v28 = sub_F07EC();
    v30 = v29;

    v31 = sub_3E850(v28, v30, &v42);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v23, v24, "Couldn't find a context for message %s, trying to resolve using the chat", v25, 0xCu);
    sub_1EDC(v26);

    (*(v7 + 8))(v11, v41);
    a1 = v40;
LABEL_9:
    [v3 subscriptionContextForChat:a1];
    return;
  }

  __break(1u);
}

uint64_t sub_56124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  v7 = sub_F06CC();
  v6[38] = v7;
  v8 = *(v7 - 8);
  v6[39] = v8;
  v9 = *(v8 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  sub_F0AEC();
  v6[42] = sub_F0ADC();
  v11 = sub_F0A6C();
  v6[43] = v11;
  v6[44] = v10;

  return _swift_task_switch(sub_5622C, v11, v10);
}

void sub_5622C()
{
  v61 = v0;
  v1 = *(v0 + 264);
  v2 = sub_F035C();
  *(v0 + 360) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 368) = v3;
  *(v0 + 376) = *(v3 + 64);
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  v6 = *(*(sub_388C8(&qword_128020, &qword_F2F08) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = [v1 guid];
  if (!v8)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_F07EC();

  sub_F031C();

  if ((*(v4 + 48))(v7, 1, v2) == 1)
  {
    v10 = *(v0 + 336);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 304);
    v14 = *(v0 + 264);

    sub_372B0(v7, &qword_128020, &qword_F2F08);

    v15 = Logger.rcs.unsafeMutableAddressor();
    (*(v12 + 16))(v11, v15, v13);
    v16 = v14;
    v17 = sub_F06AC();
    v18 = sub_F0CFC();
    if (!os_log_type_enabled(v17, v18))
    {
      v46 = *(v0 + 312);
      v45 = *(v0 + 320);
      v47 = *(v0 + 304);

      (*(v46 + 8))(v45, v47);
      goto LABEL_14;
    }

    v19 = *(v0 + 264);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136315138;
    v22 = [v19 guid];

    if (v22)
    {
      v23 = *(v0 + 312);
      v59 = *(v0 + 320);
      v24 = *(v0 + 304);
      v25 = sub_F07EC();
      v27 = v26;

      v28 = sub_3E850(v25, v27, &v60);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_0, v17, v18, "Non-UUID message GUID %s passed to RCSServiceSession?!", v20, 0xCu);
      sub_1EDC(v21);

      (*(v23 + 8))(v59, v24);
LABEL_14:
      sub_5F980();
      swift_allocError();
      *v48 = 1;
      *(v48 + 4) = 1;
      swift_willThrow();
LABEL_18:
      v53 = *(v0 + 320);
      v52 = *(v0 + 328);

      v54 = *(v0 + 8);

      v54();
      return;
    }

    goto LABEL_27;
  }

  v29 = *(v0 + 280);
  (*(v4 + 32))(v5, v7, v2);

  v30 = sub_F07EC();
  if (!*(v29 + 16))
  {
    v50 = *(v0 + 336);

    goto LABEL_17;
  }

  v32 = *(v0 + 280);
  v33 = sub_51FEC(v30, v31);
  v35 = v34;

  if ((v35 & 1) == 0 || (v36 = *(v0 + 280), sub_3FE38(*(v36 + 56) + 32 * v33, v0 + 144), (swift_dynamicCast() & 1) == 0))
  {
    v49 = *(v0 + 336);

LABEL_17:
    sub_5F980();
    swift_allocError();
    *v51 = 5;
    *(v51 + 4) = 1;
    swift_willThrow();
    (*(v4 + 8))(v5, v2);

    goto LABEL_18;
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v39 = sub_F07EC();
  if (*(v29 + 16))
  {
    v41 = *(v0 + 280);
    v42 = sub_51FEC(v39, v40);
    v44 = v43;

    if (v44)
    {
      sub_3FE38(*(v36 + 56) + 32 * v42, v0 + 176);
      if (swift_dynamicCast())
      {

        v37 = *(v0 + 224);
        v38 = *(v0 + 232);
      }
    }
  }

  else
  {
  }

  *(v0 + 392) = v37;
  *(v0 + 400) = v38;
  v55 = *(*(v0 + 296) + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 408) = v55;
  v56 = *(v55 + 48);
  *(v0 + 416) = v56;
  if (!v56)
  {
    goto LABEL_28;
  }

  v57 = swift_task_alloc();
  *(v0 + 424) = v57;
  *v57 = v0;
  v57[1] = sub_56820;
  v58 = *(v0 + 264);

  RCSMessageCreator.createSenderInfo(with:for:using:)(v0 + 16, v58, v37, v38);
}

uint64_t sub_56820()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v11 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[52];
    v5 = v2[50];

    v6 = v2[43];
    v7 = v2[44];
    v8 = sub_56F10;
  }

  else
  {
    v9 = v2[52];

    v6 = v2[43];
    v7 = v2[44];
    v8 = sub_56950;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_56950()
{
  v48 = v0;
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[47] + 15;
  v10 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v10, v6);
  v11 = swift_task_alloc();
  (*(v4 + 16))(v11, v2, v3);
  v12 = v8;

  v13 = sub_F06AC();
  v14 = sub_F0CDC();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[50];
  if (v15)
  {
    v42 = v0[49];
    log = v13;
    v18 = v0[45];
    v17 = v0[46];
    v44 = v0[39];
    v45 = v0[38];
    v46 = v0[41];
    v19 = v0[36];
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v20 = 138412802;
    *(v20 + 4) = v19;
    *v41 = v19;
    *(v20 + 12) = 2080;
    sub_5F9D4();
    v21 = v11;
    v22 = v19;
    v23 = sub_F11EC();
    v25 = v24;
    v26 = *(v17 + 8);
    v26(v21, v18);
    v27 = sub_3E850(v23, v25, &v47);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2080;
    v28 = sub_3E850(v42, v16, &v47);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_0, log, v14, "Using context %@ for sending message %s to broadcast recipient %s", v20, 0x20u);
    sub_372B0(v41, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v44 + 8))(v46, v45);
  }

  else
  {
    v29 = v0[45];
    v30 = v0[46];
    v31 = v0[41];
    v32 = v0[38];
    v33 = v0[39];

    v26 = *(v30 + 8);
    v26(v11, v29);
    (*(v33 + 8))(v31, v32);
  }

  v0[55] = v26;
  v34 = v0[51];

  v36 = *(v34 + 48);
  v0[56] = v36;
  if (v36)
  {
    v0[31] = v0[36];

    v37 = swift_task_alloc();
    v0[57] = v37;
    *v37 = v0;
    v37[1] = sub_56CE4;
    v38 = v0[33];
    v39 = v0[34];
    v40 = v0[32];

    return RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(v40, v38, v39, (v0 + 2), (v0 + 31));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_56CE4()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v9 = *v1;
  *(*v1 + 464) = v0;

  v4 = v2[56];

  v5 = v2[43];
  v6 = v2[44];
  if (v0)
  {
    v7 = sub_56FB4;
  }

  else
  {
    v7 = sub_56E08;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_56E08()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[32];

  sub_5EFF4((v0 + 2));
  v1(v2, v3);
  v9 = type metadata accessor for RCSMessage(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_56F10()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[42];

  (*(v3 + 8))(v1, v2);

  v5 = v0[54];
  v7 = v0[40];
  v6 = v0[41];

  v8 = v0[1];

  return v8();
}

uint64_t sub_56FB4()
{
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[42];

  sub_5EFF4((v0 + 2));
  v1(v2, v3);

  v6 = v0[58];
  v8 = v0[40];
  v7 = v0[41];

  v9 = v0[1];

  return v9();
}

uint64_t sub_57064(uint64_t a1, void *a2)
{
  v113 = a2;
  v3 = type metadata accessor for RCSMessage(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v109 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v98 - v7;
  __chkstk_darwin(v8);
  v104 = &v98 - v9;
  __chkstk_darwin(v10);
  v103 = &v98 - v11;
  v12 = sub_F06CC();
  v110 = *(v12 - 8);
  v13 = *(v110 + 64);
  __chkstk_darwin(v12);
  v108 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v98 - v16;
  __chkstk_darwin(v17);
  v105 = &v98 - v18;
  v19 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v98 - v24;
  v26 = type metadata accessor for RCSMessage.Content(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v98 - v32;
  v111 = *(v3 + 32);
  sub_5F2EC(a1 + v111, v25);
  v34 = (*(v27 + 48))(v25, 1, v26);
  v112 = v3;
  if (v34 == 1)
  {
    sub_372B0(v25, &unk_127FA0, &qword_F34C0);
LABEL_15:
    v47 = v113;
    goto LABEL_16;
  }

  v102 = v12;
  v35 = type metadata accessor for RCSMessage.Content;
  sub_5F38C(v25, v33, type metadata accessor for RCSMessage.Content);
  sub_5F918(v33, v30, type metadata accessor for RCSMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v101 = v33;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_37640(v33, type metadata accessor for RCSMessage.Content);
      sub_37640(v30, type metadata accessor for RCSMessage.Content);
      v12 = v102;
      goto LABEL_15;
    }

    v101 = v33;
    v37 = *&v30[*(sub_388C8(&qword_128028, &qword_F3670) + 48)];

    v35 = type metadata accessor for RCSFile;
  }

  sub_37640(v30, v35);
  v38 = sub_F035C();
  v100 = &v98;
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  v99 = sub_F032C();
  v44 = v43;
  (*(v39 + 8))(v42, v38);
  v45 = v115;
  sub_5BD2C(a1, v115);
  if (v117 == 1)
  {

    v45 = v116;
  }

  v46 = *(v45 + 1);
  v118 = *v45;
  v119 = v46;
  *v120 = *(v45 + 2);
  *&v120[10] = *(v45 + 42);
  *v22 = 0;
  swift_storeEnumTagMultiPayload();
  (*(v27 + 56))(v22, 0, 1, v26);
  v47 = v113;
  v48 = v121;
  sub_57E38(v99, v44, &v118, v22, *(a1 + 160), 0, v113);
  if (v48)
  {
    v99 = v48;
    v49 = v47;
    v121 = 0;

    sub_372B0(v22, &unk_127FA0, &qword_F34C0);
    sub_5BD88(&v118);
    v50 = Logger.rcs.unsafeMutableAddressor();
    v51 = v110;
    v52 = v108;
    v12 = v102;
    (*(v110 + 16))(v108, v50, v102);
    v53 = v107;
    sub_5F918(a1, v107, type metadata accessor for RCSMessage);
    v54 = v109;
    sub_5F918(a1, v109, type metadata accessor for RCSMessage);
    v55 = sub_F06AC();
    v56 = sub_F0CEC();
    if (os_log_type_enabled(v55, v56))
    {
      LODWORD(v100) = v56;
      v57 = v54;
      v58 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v114 = v98;
      *v58 = 136315394;
      v59 = *(v53 + 128);
      v60 = *(v53 + 136);

      sub_37640(v53, type metadata accessor for RCSMessage);
      v61 = sub_3E850(v59, v60, &v114);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = v115;
      sub_5BD2C(v57, v115);
      if (v117 == 1)
      {

        v52 = v108;

        v62 = v116;
      }

      v63 = *(v62 + 1);
      v118 = *v62;
      v119 = v63;
      *v120 = *(v62 + 2);
      *&v120[10] = *(v62 + 42);
      v64 = RCSDestination.description.getter();
      v66 = v65;
      sub_5BD88(&v118);
      sub_37640(v109, type metadata accessor for RCSMessage);
      v67 = sub_3E850(v64, v66, &v114);

      *(v58 + 14) = v67;
      _os_log_impl(&dword_0, v55, v100, "Failed to revoke typing indicator while sending %s to %s, still attempting to send", v58, 0x16u);
      swift_arrayDestroy();

      (*(v110 + 8))(v52, v12);
      sub_37640(v101, type metadata accessor for RCSMessage.Content);
      goto LABEL_15;
    }

    sub_37640(v54, type metadata accessor for RCSMessage);
    sub_37640(v53, type metadata accessor for RCSMessage);
    (*(v51 + 8))(v52, v12);
    sub_37640(v101, type metadata accessor for RCSMessage.Content);
    v47 = v49;
  }

  else
  {

    sub_372B0(v22, &unk_127FA0, &qword_F34C0);
    sub_5BD88(&v118);
    sub_37640(v101, type metadata accessor for RCSMessage.Content);
    v121 = 0;
    v12 = v102;
  }

LABEL_16:
  v68 = *(a1 + 128);
  v69 = *(a1 + 136);
  v70 = v115;
  sub_5BD2C(a1, v115);
  if (v117 == 1)
  {

    v70 = v116;
  }

  v71 = *(v70 + 1);
  v118 = *v70;
  v119 = v71;
  *v120 = *(v70 + 2);
  *&v120[10] = *(v70 + 42);
  v72 = v121;
  v73 = sub_57E38(v68, v69, &v118, a1 + v111, *(a1 + 160), *(a1 + *(v112 + 40)), v47);
  result = sub_5BD88(&v118);
  if (!v72)
  {
    v75 = Logger.rcs.unsafeMutableAddressor();
    v76 = v110;
    v77 = *(v110 + 16);
    if (v73)
    {
      v78 = v105;
      v77(v105, v75, v12);
      v79 = a1;
      v80 = v103;
      sub_5F918(v79, v103, type metadata accessor for RCSMessage);
      v81 = sub_F06AC();
      v82 = sub_F0CCC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v115[0] = v121;
        *v83 = 136315138;
        v84 = v80;
        v85 = *(v80 + 128);
        v86 = *(v80 + 136);

        sub_37640(v84, type metadata accessor for RCSMessage);
        v87 = sub_3E850(v85, v86, v115);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_0, v81, v82, "Handed %s off to CT!", v83, 0xCu);
        sub_1EDC(v121);
      }

      else
      {

        sub_37640(v80, type metadata accessor for RCSMessage);
      }

      (*(v76 + 8))(v78, v12);
      return 0;
    }

    else
    {
      v88 = v106;
      v77(v106, v75, v12);
      v89 = a1;
      v90 = v104;
      sub_5F918(v89, v104, type metadata accessor for RCSMessage);
      v91 = sub_F06AC();
      v92 = sub_F0CEC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v115[0] = v121;
        *v93 = 136315138;
        v94 = v90;
        v95 = *(v90 + 128);
        v96 = *(v90 + 136);

        sub_37640(v94, type metadata accessor for RCSMessage);
        v97 = sub_3E850(v95, v96, v115);

        *(v93 + 4) = v97;
        _os_log_impl(&dword_0, v91, v92, "Didn't send message %s!", v93, 0xCu);
        sub_1EDC(v121);
      }

      else
      {

        sub_37640(v90, type metadata accessor for RCSMessage);
      }

      (*(v76 + 8))(v88, v12);
      return 5;
    }
  }

  return result;
}

uint64_t sub_57E38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v115 = a7;
  v118 = a6;
  v120 = a5;
  v116 = a1;
  v10 = type metadata accessor for RCSFile(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v105 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v106 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v121 = &v103 - v17;
  __chkstk_darwin(v18);
  v20 = &v103 - v19;
  __chkstk_darwin(v21);
  v23 = &v103 - v22;
  v24 = sub_F06CC();
  v25 = *(v24 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v113 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v103 - v29;
  v31 = Logger.rcs.unsafeMutableAddressor();
  v32 = v25[2];
  v109 = v31;
  v110 = v25 + 2;
  v108 = v32;
  (v32)(v30);
  v112 = a4;
  sub_5F2EC(a4, v23);
  v111 = a3;
  sub_551C8(a3, v122);

  v33 = sub_F06AC();
  v34 = sub_F0CCC();
  v114 = a2;

  v35 = os_log_type_enabled(v33, v34);
  v119 = v25;
  if (v35)
  {
    v104 = v24;
    v36 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v36 = 136315650;
    sub_5F2EC(v23, v20);
    v37 = type metadata accessor for RCSMessage.Content(0);
    if ((*(*(v37 - 8) + 48))(v20, 1, v37) == 1)
    {
      sub_372B0(v20, &unk_127FA0, &qword_F34C0);
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v42 = RCSMessage.Content.type.getter();
      sub_37640(v20, type metadata accessor for RCSMessage.Content);
      if (v42 <= 3u)
      {
        v49 = 0xE400000000000000;
        v50 = 1954047348;
        v51 = 0xE800000000000000;
        v52 = 0x6E6F697461636F6CLL;
        if (v42 != 2)
        {
          v52 = 0x70756F7267;
          v51 = 0xE500000000000000;
        }

        if (v42)
        {
          v50 = 0x726566736E617274;
          v49 = 0xE800000000000000;
        }

        if (v42 <= 1u)
        {
          v38 = v50;
        }

        else
        {
          v38 = v52;
        }

        if (v42 <= 1u)
        {
          v39 = v49;
        }

        else
        {
          v39 = v51;
        }
      }

      else
      {
        v43 = 0xEE00796C70655264;
        v44 = 0x6574736567677573;
        v45 = 0xEF6E6F6974634164;
        v46 = 0x6574736567677573;
        if (v42 != 7)
        {
          v46 = 0x6341656369766564;
          v45 = 0xEC0000006E6F6974;
        }

        if (v42 != 6)
        {
          v44 = v46;
          v43 = v45;
        }

        v47 = 0xE600000000000000;
        v48 = 0x676E69707974;
        if (v42 != 4)
        {
          v48 = 0x6472614368636972;
          v47 = 0xE900000000000073;
        }

        if (v42 <= 5u)
        {
          v38 = v48;
        }

        else
        {
          v38 = v44;
        }

        if (v42 <= 5u)
        {
          v39 = v47;
        }

        else
        {
          v39 = v43;
        }
      }
    }

    sub_372B0(v23, &unk_127FA0, &qword_F34C0);
    v53 = sub_3E850(v38, v39, &v124);

    *(v36 + 4) = v53;
    *(v36 + 12) = 2080;
    v40 = v116;
    v41 = v114;
    *(v36 + 14) = sub_3E850(v116, v114, &v124);
    *(v36 + 22) = 2080;
    v54 = RCSDestination.description.getter();
    v56 = v55;
    sub_5BD88(v122);
    v57 = sub_3E850(v54, v56, &v124);

    *(v36 + 24) = v57;
    _os_log_impl(&dword_0, v33, v34, "Sending %s message with ID %s to %s", v36, 0x20u);
    swift_arrayDestroy();

    v24 = v104;
    v107 = v119[1];
    v107(v30, v104);
  }

  else
  {

    sub_5BD88(v122);
    sub_372B0(v23, &unk_127FA0, &qword_F34C0);
    v107 = v25[1];
    v107(v30, v24);
    v40 = v116;
    v41 = v114;
  }

  v58 = v120;
  sub_551C8(v111, v123);
  v122[0] = v40;
  v122[1] = v41;
  v59 = v115;
  v123[8] = v115;
  v123[9] = v58;
  v123[10] = v118;
  v60 = v121;
  sub_5F2EC(v112, v121);
  v61 = type metadata accessor for RCSMessage.Content(0);
  v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
  v63 = v113;
  if (v62 == 1)
  {

    v64 = v59;

    sub_3896C(v58);
LABEL_31:
    v108(v63, v109, v24);

    v65 = sub_F06AC();
    v66 = sub_F0CFC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = v63;
      v68 = swift_slowAlloc();
      v69 = v24;
      v70 = swift_slowAlloc();
      v124 = v70;
      *v68 = 136315138;
      *(v68 + 4) = sub_3E850(v40, v41, &v124);
      _os_log_impl(&dword_0, v65, v66, "Attempt to send invalid/unsupported message %s", v68, 0xCu);
      sub_1EDC(v70);

      v71 = v67;
      v72 = v69;
    }

    else
    {

      v71 = v63;
      v72 = v24;
    }

    v107(v71, v72);
    sub_5F35C(v122);
    LOBYTE(v61) = 0;
    goto LABEL_57;
  }

  v73 = v106;
  sub_5F2EC(v121, v106);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v61 = *(v73 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));

        v100 = v59;

        sub_3896C(v120);

        v101 = v105;
        sub_5F38C(v73, v105, type metadata accessor for RCSFile);
        LOBYTE(v61) = sub_5D3E8(v122, v101);
        sub_37640(v101, type metadata accessor for RCSFile);
        goto LABEL_56;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_50:

        v93 = v59;

        sub_3896C(v120);
        sub_37640(v73, type metadata accessor for RCSMessage.Content);
        goto LABEL_31;
      }

      v77 = *v73;
      v78 = v73[1];
      v79 = v73[2];
      v80 = v73[3];
      v81 = v59;
      v82 = v73[4];

      v83 = v81;

      sub_3896C(v120);

      v84 = sub_5CBCC(v122, v79, v80);
    }

    else
    {
      v88 = *v73;
      v89 = v73[1];
      v90 = v59;
      v91 = v73[2];

      v92 = v90;

      sub_3896C(v120);

      v84 = sub_5C344(v122);
    }

    LOBYTE(v61) = v84;
    sub_5F35C(v122);

    goto LABEL_57;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v75 = *v73;

        v76 = v59;

        sub_3896C(v120);
        LOBYTE(v61) = sub_5E700(v122, v75, sub_5FBB0, RCSSuggestedReply.responseForSuggestedReply.getter, &selRef_sendResponseForSuggestedReply_to_withMessageID_response_withError_);
        sub_5F35C(v122);

        goto LABEL_57;
      }

      goto LABEL_50;
    }

    v94 = *v73;

    v95 = v59;

    sub_3896C(v120);
    LOBYTE(v61) = sub_5DCA8(v122, v94);
LABEL_56:
    sub_5F35C(v122);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {

      v85 = v59;

      sub_3896C(v120);
      v86 = v117;
      sub_5E9B0(v122);
      if (!v86)
      {
        LOBYTE(v61) = v87;
      }

      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v96 = *v73;

  v97 = v59;

  sub_3896C(v120);
  v98 = v117;
  v99 = sub_5E700(v122, v96, sub_5FBB0, RCSSuggestedAction.responseForSuggestedAction.getter, &selRef_sendResponseForSuggestedAction_to_withMessageID_response_withError_);
  if (!v98)
  {
    LOBYTE(v61) = v99;
  }

  sub_5F35C(v122);

LABEL_57:
  sub_372B0(v121, &unk_127FA0, &qword_F34C0);
  return v61 & 1;
}

uint64_t sub_58A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[75] = v3;
  v4[74] = a3;
  v4[73] = a2;
  v4[72] = a1;
  v5 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v6 = sub_F06CC();
  v4[78] = v6;
  v7 = *(v6 - 8);
  v4[79] = v7;
  v8 = *(v7 + 64) + 15;
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v9 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v4[84] = v9;
  v10 = *(v9 - 8);
  v4[85] = v10;
  v11 = *(v10 + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = sub_F0AEC();
  v4[88] = sub_F0ADC();
  v13 = sub_F0A6C();
  v4[89] = v13;
  v4[90] = v12;

  return _swift_task_switch(sub_58C50, v13, v12);
}

uint64_t sub_58C50()
{
  v1 = *(v0 + 592);
  v2 = sub_F014C();
  *(v0 + 728) = v2;
  v3 = [v2 domain];
  v4 = sub_F07EC();
  v6 = v5;

  v7 = CTLazuliOperationError.errorDomain.unsafeMutableAddressor();
  if (v4 == *v7 && v6 == v7[1])
  {
  }

  else
  {
    v9 = sub_F122C();

    if ((v9 & 1) == 0)
    {
LABEL_12:
      v15 = *(v0 + 704);

LABEL_24:
      v46 = [v2 domain];
      v47 = sub_F07EC();
      v49 = v48;

      if (v47 == *v7 && v49 == v7[1])
      {
      }

      else
      {
        v50 = sub_F122C();

        if ((v50 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v51 = [v2 code];
      if (qword_127A98 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 688);
      v53 = *(v0 + 680);
      v54 = *(v0 + 672);
      v55 = sub_3C96C(v54, qword_127DC0);
      (*(v53 + 16))(v52, v55, v54);
      sub_F044C();
      (*(v53 + 8))(v52, v54);
      if ((*(v0 + 139) & 1) != 0 || v51 == &dword_8 + 1)
      {
        v56 = (v0 + 16);
        sub_5BD2C(*(v0 + 576), v0 + 16);
        if (*(v0 + 138) == 1)
        {
          v57 = *(v0 + 24);
          v58 = *(v0 + 40);
          v59 = *(v0 + 48);
          v60 = *(v0 + 64);

          v56 = (v0 + 80);
        }

        *(v0 + 314) = *(v56 + 42);
        v61 = v56[1];
        *(v0 + 272) = *v56;
        *(v0 + 288) = v61;
        *(v0 + 304) = v56[2];
        if ((*(v0 + 329) & 1) == 0)
        {

          sub_5BD88(v0 + 272);
          goto LABEL_41;
        }

        v62 = *(v0 + 600);
        sub_55248((v0 + 272), v0 + 400);
        v63 = *(v0 + 424);
        v64 = *(v0 + 432);
        v65 = sub_373E8((v0 + 400), v63);
        v66 = sub_6F3C8(v65, v62, v63, v64);
        if (v66)
        {
          v67 = v66;
          v68 = *(v0 + 648);
          v69 = *(v0 + 632);
          v70 = *(v0 + 624);
          v71 = Logger.rcs.unsafeMutableAddressor();
          (*(v69 + 16))(v68, v71, v70);
          v72 = sub_F06AC();
          v73 = sub_F0CCC();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_0, v72, v73, "We were evicted from the group, failing message send and updating chat join state", v74, 2u);
          }

          v75 = *(v0 + 648);
          v76 = *(v0 + 632);
          v77 = *(v0 + 624);

          (*(v76 + 8))(v75, v77);
          sub_1EDC((v0 + 400));
          v78 = 0;
          v79 = 20;
          goto LABEL_42;
        }

        sub_1EDC((v0 + 400));
      }

LABEL_32:

LABEL_41:
      v79 = 0;
      v78 = 1;
LABEL_42:
      v80 = *(v0 + 688);
      v81 = *(v0 + 664);
      v82 = *(v0 + 656);
      v83 = *(v0 + 648);
      v84 = *(v0 + 640);
      v85 = *(v0 + 616);
      v86 = *(v0 + 608);

      v87 = *(v0 + 8);

      return v87(v79 | (v78 << 32));
    }
  }

  v10 = [v2 code];
  if (qword_127A90 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 688);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v14 = sub_3C96C(v13, qword_127DA8);
  (*(v12 + 16))(v11, v14, v13);
  sub_F044C();
  (*(v12 + 8))(v11, v13);
  if ((*(v0 + 140) & 1) == 0 && v10 != &dword_8)
  {
    goto LABEL_12;
  }

  v16 = (v0 + 144);
  sub_5BD2C(*(v0 + 576), v0 + 144);
  if (*(v0 + 266) == 1)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);

    v16 = (v0 + 208);
  }

  *(v0 + 378) = *(v16 + 42);
  v21 = v16[1];
  *(v0 + 336) = *v16;
  *(v0 + 352) = v21;
  *(v0 + 368) = v16[2];
  if ((*(v0 + 393) & 1) == 0)
  {
    v44 = *(v0 + 704);

    sub_5BD88(v0 + 336);
    goto LABEL_24;
  }

  v22 = *(v0 + 600);
  sub_55248((v0 + 336), v0 + 440);
  v23 = *(v0 + 464);
  v24 = *(v0 + 472);
  v25 = sub_373E8((v0 + 440), v23);
  v26 = sub_6F3C8(v25, v22, v23, v24);
  *(v0 + 736) = v26;
  if (!v26)
  {
    v45 = *(v0 + 704);

    sub_1EDC((v0 + 440));
    goto LABEL_24;
  }

  v27 = v26;
  v28 = *(v0 + 664);
  v29 = *(v0 + 632);
  v30 = *(v0 + 624);
  v31 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 744) = v31;
  v32 = *(v29 + 16);
  *(v0 + 752) = v32;
  *(v0 + 760) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v28, v31, v30);
  v33 = sub_F06AC();
  v34 = sub_F0CCC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "Group recreation requested, recreating group", v35, 2u);
  }

  v36 = *(v0 + 696);
  v37 = *(v0 + 664);
  v38 = *(v0 + 632);
  v39 = *(v0 + 624);

  v40 = *(v38 + 8);
  *(v0 + 768) = v40;
  v40(v37, v39);
  *(v0 + 504) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  *(v0 + 512) = &protocol witness table for IMDChat;
  *(v0 + 480) = v27;
  v41 = v27;
  IMDChatRCSGroupIdentity.reset()();
  sub_39BC4(v0 + 480);
  *(v0 + 776) = sub_F0ADC();
  v43 = sub_F0A6C();
  *(v0 + 784) = v43;
  *(v0 + 792) = v42;

  return _swift_task_switch(sub_59370, v43, v42);
}

void sub_59370()
{
  v1 = *(*(v0[75] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[100] = v1;
  if (v1)
  {
    v2 = v0[73];
    v0[70] = v0[92];
    v0[71] = v2;

    v3 = swift_task_alloc();
    v0[101] = v3;
    *v3 = v0;
    v3[1] = sub_5944C;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 65), (v0 + 70), (v0 + 71));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5944C()
{
  v2 = *v1;
  v3 = (*v1)[101];
  v10 = *v1;
  (*v1)[102] = v0;

  if (v0)
  {
    v4 = v2[100];

    v5 = v2[99];
    v6 = v2[98];
    v7 = sub_5995C;
  }

  else
  {
    v8 = v2[100];
    sub_1EDC(v2 + 65);

    v5 = v2[99];
    v6 = v2[98];
    v7 = sub_59584;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_59584()
{
  v1 = v0[97];

  v2 = v0[90];
  v3 = v0[89];

  return _swift_task_switch(sub_595EC, v3, v2);
}

uint64_t sub_595EC()
{
  v45 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 704);
  v3 = *(v0 + 600);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);

  v6 = sub_57064(v5, v4);
  if (v1)
  {
    v7 = *(v0 + 760);
    v8 = *(v0 + 608);
    v9 = *(v0 + 576);
    (*(v0 + 752))(*(v0 + 640), *(v0 + 744), *(v0 + 624));
    sub_5F918(v9, v8, type metadata accessor for RCSMessage);
    swift_errorRetain();
    v10 = sub_F06AC();
    v11 = sub_F0CEC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 768);
    v14 = *(v0 + 736);
    v15 = *(v0 + 640);
    v16 = *(v0 + 632);
    v17 = *(v0 + 624);
    v18 = *(v0 + 608);
    if (v12)
    {
      v41 = *(v0 + 728);
      v43 = *(v0 + 624);
      v19 = swift_slowAlloc();
      v42 = v14;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v19 = 136315394;
      v39 = v15;
      v40 = v13;
      v23 = *(v18 + 128);
      v22 = *(v18 + 136);

      sub_37640(v18, type metadata accessor for RCSMessage);
      v24 = sub_3E850(v23, v22, &v44);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v20 = v25;
      _os_log_impl(&dword_0, v10, v11, "Re-send after group creation failed, failing message %s due to error %@", v19, 0x16u);
      sub_372B0(v20, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v21);

      v40(v39, v43);
    }

    else
    {

      sub_37640(v18, type metadata accessor for RCSMessage);
      v13(v15, v17);
    }

    sub_1EDC((v0 + 440));
    v29 = 4;
  }

  else
  {
    v26 = v6;
    v27 = *(v0 + 736);
    v28 = *(v0 + 728);
    sub_1EDC((v0 + 440));

    v29 = v26;
  }

  v30 = *(v0 + 688);
  v31 = *(v0 + 664);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 616);
  v36 = *(v0 + 608);

  LOBYTE(v44) = 0;
  v37 = *(v0 + 8);

  return v37(v29);
}

uint64_t sub_5995C()
{
  v1 = v0[97];

  v2 = v0[90];
  v3 = v0[89];

  return _swift_task_switch(sub_599C4, v3, v2);
}

uint64_t sub_599C4()
{
  v42 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 704);
  v6 = *(v0 + 656);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  v9 = *(v0 + 576);

  v3(v6, v4, v7);
  sub_5F918(v9, v8, type metadata accessor for RCSMessage);
  swift_errorRetain();
  v10 = sub_F06AC();
  v11 = sub_F0CEC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 816);
  v14 = *(v0 + 768);
  v15 = *(v0 + 736);
  v16 = *(v0 + 656);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v0 + 616);
  if (v12)
  {
    v38 = *(v0 + 728);
    v40 = *(v0 + 624);
    v20 = swift_slowAlloc();
    v39 = v15;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v20 = 136315394;
    v36 = v16;
    v37 = v14;
    v24 = *(v19 + 128);
    v23 = *(v19 + 136);

    sub_37640(v19, type metadata accessor for RCSMessage);
    v25 = sub_3E850(v24, v23, &v41);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&dword_0, v10, v11, "Failed to re-create group, failing message %s due to error %@", v20, 0x16u);
    sub_372B0(v21, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v22);

    v37(v36, v40);
  }

  else
  {

    sub_37640(v19, type metadata accessor for RCSMessage);
    v14(v16, v18);
  }

  sub_1EDC((v0 + 440));
  v27 = *(v0 + 688);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 640);
  v32 = *(v0 + 616);
  v33 = *(v0 + 608);

  v34 = *(v0 + 8);

  return v34(4);
}

uint64_t sub_59D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[98] = v6;
  v7[97] = a6;
  v7[96] = a5;
  v7[95] = a4;
  v7[94] = a3;
  v7[93] = a2;
  v7[92] = a1;
  v8 = *(type metadata accessor for RCSMessage(0) - 8);
  v7[99] = v8;
  v7[100] = *(v8 + 64);
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v9 = sub_F06CC();
  v7[105] = v9;
  v10 = *(v9 - 8);
  v7[106] = v10;
  v11 = *(v10 + 64) + 15;
  v7[107] = swift_task_alloc();
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  sub_F0AEC();
  v7[111] = sub_F0ADC();
  v13 = sub_F0A6C();
  v7[112] = v13;
  v7[113] = v12;

  return _swift_task_switch(sub_59EBC, v13, v12);
}

uint64_t sub_59EBC()
{
  v120 = v0;
  sub_5BD2C(*(v0 + 736), v0 + 16);
  if (*(v0 + 138))
  {
    v1 = *(v0 + 856);
    v2 = *(v0 + 848);
    v3 = *(v0 + 840);
    v4 = *(v0 + 808);
    v5 = *(v0 + 736);
    v6 = *(v0 + 24);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 64);

    sub_5BD88(v0 + 80);
    v10 = Logger.rcs.unsafeMutableAddressor();
    (*(v2 + 16))(v1, v10, v3);
    sub_5F918(v5, v4, type metadata accessor for RCSMessage);
    v11 = sub_F06AC();
    v12 = sub_F0CEC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);
    v17 = *(v0 + 808);
    if (v13)
    {
      v115 = *(v0 + 856);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v119 = v19;
      *v18 = 136315138;
      v20 = *(v17 + 128);
      v21 = *(v17 + 136);

      sub_37640(v17, type metadata accessor for RCSMessage);
      v22 = sub_3E850(v20, v21, &v119);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v11, v12, "Not sending message %s, not from me", v18, 0xCu);
      sub_1EDC(v19);

      (*(v15 + 8))(v115, v16);
    }

    else
    {

      sub_37640(v17, type metadata accessor for RCSMessage);
      (*(v15 + 8))(v14, v16);
    }

    v116 = (*(v0 + 768) + **(v0 + 768));
    v46 = *(*(v0 + 768) + 4);
    v47 = swift_task_alloc();
    *(v0 + 1016) = v47;
    *v47 = v0;
    v47[1] = sub_5B5C8;
    v48 = *(v0 + 776);
    v49 = 5;
    goto LABEL_15;
  }

  v23 = (v0 + 144);
  v24 = *(v0 + 736);
  sub_5EFF4(v0 + 16);
  sub_5BD2C(v24, v0 + 144);
  if (*(v0 + 266) == 1)
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 192);

    v23 = (v0 + 208);
  }

  v29 = v23[1];
  *(v0 + 400) = *v23;
  *(v0 + 416) = v29;
  *(v0 + 432) = v23[2];
  *(v0 + 442) = *(v23 + 42);
  sub_551C8(v0 + 400, v0 + 464);
  if (*(v0 + 521))
  {
    v30 = (v0 + 272);
    v31 = *(v0 + 736);
    sub_5BD88(v0 + 464);
    sub_5BD2C(v31, v0 + 272);
    if (*(v0 + 394) == 1)
    {
      v32 = *(v0 + 280);
      v33 = *(v0 + 296);
      v34 = *(v0 + 304);
      v35 = *(v0 + 320);

      v30 = (v0 + 336);
    }

    *(v0 + 570) = *(v30 + 42);
    v36 = v30[1];
    *(v0 + 528) = *v30;
    *(v0 + 544) = v36;
    *(v0 + 560) = v30[2];
    if ((*(v0 + 585) & 1) == 0)
    {
      v43 = sub_5BD88(v0 + 528);
      goto LABEL_26;
    }

    v37 = *(v0 + 784);
    sub_55248((v0 + 528), v0 + 656);
    v38 = *(v0 + 680);
    v39 = *(v0 + 688);
    v40 = sub_373E8((v0 + 656), v38);
    v41 = sub_6F3C8(v40, v37, v38, v39);
    *(v0 + 920) = v41;
    if (!v41)
    {
      v43 = sub_1EDC((v0 + 656));
      goto LABEL_26;
    }

    v42 = v41;
    if ([v41 state])
    {
      sub_1EDC((v0 + 656));

      goto LABEL_26;
    }

    v99 = *(v0 + 872);
    v100 = *(v0 + 848);
    v101 = *(v0 + 840);
    v102 = Logger.rcs.unsafeMutableAddressor();
    (*(v100 + 16))(v99, v102, v101);
    v103 = sub_F06AC();
    v104 = sub_F0CEC();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "Not sending group message, we are not a member anymore", v105, 2u);
    }

    v106 = *(v0 + 872);
    v107 = *(v0 + 848);
    v108 = *(v0 + 840);
    v109 = *(v0 + 768);

    (*(v107 + 8))(v106, v108);
    v116 = (v109 + *v109);
    v110 = v109[1];
    v97 = swift_task_alloc();
    *(v0 + 928) = v97;
    *v97 = v0;
    v98 = sub_5AB44;
  }

  else
  {
    v51 = *(v0 + 472);
    v53 = *(v0 + 488);
    v52 = *(v0 + 496);
    v54 = *(v0 + 512);
    if (!*(v0 + 520))
    {
      v75 = *(v0 + 472);

      goto LABEL_26;
    }

    v43 = [objc_opt_self() sharedInstance];
    if (!v43)
    {
      goto LABEL_39;
    }

    v55 = v43;

    v56 = [v55 isRBMEnabled];

    if (v56)
    {
LABEL_26:
      v76 = *(*(*(v0 + 784) + OBJC_IVAR___RCSServiceSession_state) + 64);
      *(v0 + 936) = v76;
      if (v76)
      {
        v77 = *(v0 + 736);
        v78 = *(*(sub_388C8(&qword_128020, &qword_F2F08) - 8) + 64) + 15;
        v79 = swift_task_alloc();
        *(v0 + 944) = v79;
        *(v0 + 952) = *(v77 + 128);
        *(v0 + 960) = *(v77 + 136);
        v80 = v76;
        sub_F031C();
        v81 = sub_F035C();
        *(v0 + 968) = v81;
        v82 = *(v81 - 8);
        *(v0 + 976) = v82;
        v43 = (*(v82 + 48))(v79, 1, v81);
        if (v43 != 1)
        {
          v83 = *(v0 + 824);
          v84 = *(v0 + 800);
          v85 = *(v0 + 792);
          v86 = *(v0 + 784);
          v114 = *(v0 + 776);
          v118 = *(v0 + 760);
          v112 = *(v0 + 768);
          v113 = *(v0 + 752);
          v87 = *(v0 + 744);
          sub_5F918(*(v0 + 736), v83, type metadata accessor for RCSMessage);
          v88 = (*(v85 + 80) + 24) & ~*(v85 + 80);
          v89 = (v84 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
          v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
          v91 = swift_allocObject();
          *(v0 + 984) = v91;
          *(v91 + 16) = v86;
          sub_5F38C(v83, v91 + v88, type metadata accessor for RCSMessage);
          *(v91 + v89) = v87;
          v92 = (v91 + v90);
          *v92 = v112;
          v92[1] = v114;
          v93 = (v91 + ((v90 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v93 = v113;
          v93[1] = v118;
          v94 = v86;
          v95 = v87;

          v43 = sub_5AD50;
          v44 = 0;
          v45 = 0;

          return _swift_task_switch(v43, v44, v45);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return _swift_task_switch(v43, v44, v45);
    }

    v57 = *(v0 + 880);
    v58 = *(v0 + 848);
    v59 = *(v0 + 840);
    v60 = *(v0 + 832);
    v61 = *(v0 + 736);
    v62 = Logger.rcs.unsafeMutableAddressor();
    (*(v58 + 16))(v57, v62, v59);
    sub_5F918(v61, v60, type metadata accessor for RCSMessage);
    v63 = sub_F06AC();
    v64 = sub_F0CEC();
    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 880);
    v67 = *(v0 + 848);
    v68 = *(v0 + 840);
    v69 = *(v0 + 832);
    if (v65)
    {
      v117 = *(v0 + 880);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v119 = v71;
      *v70 = 136315138;
      v72 = *(v69 + 128);
      v73 = *(v69 + 136);

      sub_37640(v69, type metadata accessor for RCSMessage);
      v74 = sub_3E850(v72, v73, &v119);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_0, v63, v64, "Not sending RBM message %s, RBM is disabled in Settings", v70, 0xCu);
      sub_1EDC(v71);

      (*(v67 + 8))(v117, v68);
    }

    else
    {

      sub_37640(v69, type metadata accessor for RCSMessage);
      (*(v67 + 8))(v66, v68);
    }

    v116 = (*(v0 + 768) + **(v0 + 768));
    v96 = *(*(v0 + 768) + 4);
    v97 = swift_task_alloc();
    *(v0 + 912) = v97;
    *v97 = v0;
    v98 = sub_5A948;
  }

  v97[1] = v98;
  v111 = *(v0 + 776);
  v49 = 4;
LABEL_15:

  return v116(v49);
}

uint64_t sub_5A948()
{
  v1 = *v0;
  v2 = *(*v0 + 912);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return _swift_task_switch(sub_5AA68, v4, v3);
}

uint64_t sub_5AA68()
{
  v1 = v0[111];

  sub_5BD88((v0 + 50));
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];

  v10 = v0[1];

  return v10();
}

uint64_t sub_5AB44()
{
  v1 = *v0;
  v2 = *(*v0 + 928);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return _swift_task_switch(sub_5AC64, v4, v3);
}

uint64_t sub_5AC64()
{
  v1 = v0[115];
  v2 = v0[111];

  sub_5BD88((v0 + 50));
  sub_1EDC(v0 + 82);
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[104];
  v8 = v0[103];
  v9 = v0[102];
  v10 = v0[101];

  v11 = v0[1];

  return v11();
}

uint64_t sub_5AD50()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[118];
  v5 = *(v0[117] + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v0[90] = type metadata accessor for RCSOutgoingMessageController.OperationID();
  v0[91] = sub_5F1E4();
  v6 = sub_37474(v0 + 87);
  (*(v2 + 16))(v6, v4, v3);
  v7 = swift_allocObject();
  v0[124] = v7;
  *(v7 + 16) = &unk_F2F20;
  *(v7 + 24) = v1;
  v8 = *(*v5 + 216);

  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[125] = v10;
  *v10 = v0;
  v10[1] = sub_5AF1C;

  return v12(v0 + 87, &unk_F3E80, v7);
}

uint64_t sub_5AF1C()
{
  v2 = *v1;
  v3 = (*v1)[125];
  v4 = (*v1)[124];
  v14 = *v1;
  (*v1)[126] = v0;

  if (v0)
  {
    v5 = sub_5B1D8;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2[123];
    v9 = v2[122];
    v10 = v2[121];
    v11 = v2[118];
    v12 = v2[117];

    sub_1EDC(v2 + 87);
    (*(v9 + 8))(v11, v10);

    v7 = v2[113];
    v6 = v2[112];
    v5 = sub_5B0AC;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_5B0AC()
{
  v1 = v0[111];
  v2 = v0[92];

  if (*(v2 + 152))
  {
    v3 = (v0[92] + 144);
  }

  else
  {
    v4 = v0[120];
    v3 = v0 + 119;
  }

  v5 = *v3;
  v6 = v0[98];

  sub_43EB0();

  sub_5BD88((v0 + 50));
  v7 = v0[110];
  v8 = v0[109];
  v9 = v0[108];
  v10 = v0[107];
  v11 = v0[104];
  v12 = v0[103];
  v13 = v0[102];
  v14 = v0[101];

  v15 = v0[1];

  return v15();
}

uint64_t sub_5B1D8()
{
  v1 = v0[123];
  v2 = v0[117];

  sub_1EDC(v0 + 87);
  v3 = v0[113];
  v4 = v0[112];

  return _swift_task_switch(sub_5B250, v4, v3);
}

uint64_t sub_5B250()
{
  v36 = v0;
  v1 = v0[126];
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[102];
  v6 = v0[92];
  (*(v0[122] + 8))(v0[118], v0[121]);

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);
  sub_5F918(v6, v5, type metadata accessor for RCSMessage);
  sub_551C8((v0 + 50), (v0 + 74));
  swift_errorRetain();
  v8 = sub_F06AC();
  v9 = sub_F0CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[126];
    v32 = v0[106];
    v33 = v0[105];
    v34 = v0[108];
    v11 = v0[102];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315650;
    v14 = *(v11 + 128);
    v15 = *(v11 + 136);

    sub_37640(v11, type metadata accessor for RCSMessage);
    v16 = sub_3E850(v14, v15, &v35);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = RCSDestination.description.getter();
    v19 = v18;
    sub_5BD88((v0 + 74));
    v20 = sub_3E850(v17, v19, &v35);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v13 = v21;
    _os_log_impl(&dword_0, v8, v9, "Failed to send %s to %s via CT: %@", v12, 0x20u);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v22 = v0[108];
    v23 = v0[106];
    v24 = v0[105];
    v25 = v0[102];

    sub_5BD88((v0 + 74));
    sub_37640(v25, type metadata accessor for RCSMessage);
    (*(v23 + 8))(v22, v24);
  }

  v26 = swift_task_alloc();
  v0[128] = v26;
  *v26 = v0;
  v26[1] = sub_5B7BC;
  v27 = v0[126];
  v28 = v0[98];
  v29 = v0[93];
  v30 = v0[92];

  return sub_58A84(v30, v29, v27);
}

uint64_t sub_5B5C8()
{
  v1 = *v0;
  v2 = *(*v0 + 1016);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return _swift_task_switch(sub_5B6E8, v4, v3);
}

uint64_t sub_5B6E8()
{
  v1 = v0[111];

  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];

  v10 = v0[1];

  return v10();
}

uint64_t sub_5B7BC(uint64_t a1)
{
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 1024);
  v6 = *v1;

  v13 = (v3[96] + *v3[96]);
  v7 = *(v3[96] + 4);
  v8 = swift_task_alloc();
  if ((a1 & 0x100000000) != 0)
  {
    v4[130] = v8;
    *v8 = v6;
    v8[1] = sub_5BC0C;
    v11 = v4[97];
    v10 = 4;
  }

  else
  {
    v4[129] = v8;
    *v8 = v6;
    v8[1] = sub_5BA04;
    v9 = v4[97];
    v10 = a1;
  }

  return v13(v10);
}

uint64_t sub_5BA04()
{
  v1 = *v0;
  v2 = *(*v0 + 1032);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return _swift_task_switch(sub_5BB24, v4, v3);
}

uint64_t sub_5BB24()
{
  v1 = v0[126];
  v2 = v0[111];

  sub_5BD88((v0 + 50));
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[104];
  v8 = v0[103];
  v9 = v0[102];
  v10 = v0[101];

  v11 = v0[1];

  return v11();
}

uint64_t sub_5BC0C()
{
  v1 = *v0;
  v2 = *(*v0 + 1040);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return _swift_task_switch(sub_5FBAC, v4, v3);
}

uint64_t sub_5BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_F0AEC();
  v7[9] = sub_F0ADC();
  v9 = sub_F0A6C();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_5BE80, v9, v8);
}

uint64_t sub_5BE80()
{
  v1 = *(v0 + 16);
  v2 = sub_57064(*(v0 + 24), *(v0 + 32));
  if (v2)
  {
    v11 = (*(v0 + 40) + **(v0 + 40));
    v3 = *(*(v0 + 40) + 4);
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_5C0A0;
    v6 = *(v0 + 48);

    return v11(v4);
  }

  else
  {
    v12 = (*(v0 + 56) + **(v0 + 56));
    v8 = *(*(v0 + 56) + 4);
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_5C224;
    v10 = *(v0 + 64);

    return v12();
  }
}

uint64_t sub_5C0A0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_5C1C0, v4, v3);
}

uint64_t sub_5C1C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5C224()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_5FBB4, v4, v3);
}

uint64_t sub_5C344(uint64_t *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(CTLazuliMessageText) init];
  v8 = sub_F07BC();
  [v7 setContent:v8];

  v9 = a1[12];
  if (v9)
  {
    v10 = sub_5F720(v9);
    [v7 setMetaData:v10];
  }

  v72 = v7;
  v70 = a1[11];
  if (v70)
  {
    v11 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v11 = 0;
  }

  v12 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v12, v2);
  v13 = v11;
  v14 = sub_F06AC();
  v15 = sub_F0CCC();
  v73 = v13;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v73;
    *(v16 + 4) = v73;
    *v17 = v11;
    v19 = v18;
    _os_log_impl(&dword_0, v14, v15, "Sending with encryption: %@", v16, 0xCu);
    sub_372B0(v17, &qword_127AF0, &qword_F28E0);
  }

  (*(v3 + 8))(v6, v2);
  sub_551C8((a1 + 2), v78);
  if (v80)
  {
    sub_55248(v78, v74);
    v20 = *(*(v71 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v21 = a1[10];
    v22 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v74, v75);
    v23 = v76;
    v24 = v77;
    v25 = sub_5F3F4(v75, v76);
    v26 = *(*(v23 - 8) + 64);
    __chkstk_darwin(v25);
    v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    v30 = v20;
    v31 = sub_A84F0(v28, v22, v23, v24);
    sub_1EDC(v75);
    v32 = v70;
    if (v70 >= 2)
    {
      v71 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v45 = *a1;
      v46 = a1[1];

      v47 = [v32 secureGroupVersion];
      v48 = v21;
      v49 = [v32 uuid];
      sub_F07EC();

      v21 = v48;
      v35 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v45, v46, v47);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v33 = *a1;
      v34 = a1[1];

      v35 = CTLazuliMessageID.init(uuid:)(v33, v34);
    }

    v50 = v35;
    v51 = v72;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v52 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v52 = v73;
    }

    v75[0] = 0;
    v53 = [v30 sendTextMessage:v21 toGroupDestination:v31 withMessageID:v50 withMessage:v51 withSecurity:v52 withError:v75];

    if (!v53)
    {
      v67 = v75[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v74);
      return 1;
    }

    v54 = v75[0];
    sub_1EDC(v74);
  }

  else
  {
    v81[0] = v78[0];
    v81[1] = v78[1];
    *v82 = *v79;
    *&v82[9] = *&v79[9];
    v36 = a1[10];
    v37 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v37);
    v69[-2] = v36;
    sub_38910(v81, v74);
    v38 = CTLazuliDestination.init(handle:countryCode:)(v81, sub_39CD4);
    v39 = *(*(v71 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v40 = v70;
    if (v70 >= 2)
    {
      v69[1] = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v55 = v36;
      v56 = v38;
      v57 = *a1;
      v42 = a1[1];
      v58 = v39;

      v59 = [v40 secureGroupVersion];
      v60 = [v40 uuid];
      sub_F07EC();

      v41 = v57;
      v38 = v56;
      v36 = v55;
      v44 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v41, v42, v59);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v41 = *a1;
      v42 = a1[1];
      v43 = v39;

      v44 = CTLazuliMessageID.init(uuid:)(v41, v42);
    }

    v61 = v44;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v62 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v62 = v73;
    }

    v74[0] = 0;
    v63 = v72;
    v64 = [v39 sendTextMessage:v36 to:v38 withMessageID:v61 withMessage:v72 withSecurity:v62 withError:v74];

    v65 = v74[0];
    sub_3CAB8(v81);
    if (!v64)
    {
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    if (v82[24])
    {
      sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);

      v66 = CTLazuliOperationID.init(id:)(v41, v42);
      sub_62F9C(v36, v38, v66);
    }
  }

  return 1;
}

uint64_t sub_5CBCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = RCSMessage.Coordinates.toCTCoordinates()(a2, a3);
  v14 = a1[12];
  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    v16 = sub_5F720(v14);
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    [v17 setMetaData:v16];
  }

  v77 = a1[11];
  if (v77)
  {
    v18 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v18 = 0;
  }

  v78 = v13;
  v19 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v19, v8);
  v20 = v18;
  v21 = sub_F06AC();
  v22 = sub_F0CCC();
  v79 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v76 = v8;
    v25 = a1;
    v26 = v4;
    v27 = v24;
    *v23 = 138412290;
    v28 = v79;
    *(v23 + 4) = v79;
    *v24 = v18;
    v29 = v28;
    _os_log_impl(&dword_0, v21, v22, "Sending with encryption: %@", v23, 0xCu);
    sub_372B0(v27, &qword_127AF0, &qword_F28E0);
    v4 = v26;
    a1 = v25;
    v8 = v76;
  }

  (*(v9 + 8))(v12, v8);
  sub_551C8((a1 + 2), v84);
  if (v86)
  {
    sub_55248(v84, v83);
    v30 = *(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v76 = a1[10];
    v31 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v83, v80);
    v32 = v81;
    v33 = v82;
    v34 = sub_5F3F4(v80, v81);
    v35 = *(*(v32 - 8) + 64);
    v36 = __chkstk_darwin(v34);
    v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v40 = v30;
    v41 = sub_A84F0(v38, v31, v32, v33);
    sub_1EDC(v80);
    v42 = v77;
    if (v77 >= 2)
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v55 = *a1;
      v56 = a1[1];

      v57 = [v42 secureGroupVersion];
      v58 = [v42 uuid];
      sub_F07EC();

      v45 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v55, v56, v57);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v44 = *a1;
      v43 = a1[1];

      v45 = CTLazuliMessageID.init(uuid:)(v44, v43);
    }

    v59 = v45;
    v60 = v78;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v61 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v61 = v79;
    }

    v80[0] = 0;
    v62 = [v40 sendGeolocationMessage:v76 toGroupDestination:v41 withMessageID:v59 withGeoPush:v60 withSecurity:v61 withError:v80];

    if (!v62)
    {
      v72 = v80[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v83);
      return 1;
    }

    v63 = v80[0];
    sub_1EDC(v83);
  }

  else
  {
    v87[0] = v84[0];
    v87[1] = v84[1];
    v88[0] = *v85;
    *(v88 + 9) = *&v85[9];
    v46 = *(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v47 = a1[10];
    v48 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v48);
    *(&v75 - 2) = v47;
    v49 = v46;
    v50 = CTLazuliDestination.init(handle:countryCode:)(v87, sub_5FBB0);
    v51 = v77;
    if (v77 >= 2)
    {
      v76 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v64 = *a1;
      v65 = a1[1];

      v66 = [v51 secureGroupVersion];
      v67 = [v51 uuid];
      sub_F07EC();

      v54 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v64, v65, v66);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v53 = *a1;
      v52 = a1[1];

      v54 = CTLazuliMessageID.init(uuid:)(v53, v52);
    }

    v68 = v54;
    v60 = v78;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v69 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v69 = v79;
    }

    v83[0] = 0;
    v70 = [v49 sendGeolocationMessage:v47 to:v50 withMessageID:v68 withGeoPush:v60 withSecurity:v69 withError:v83];

    if (!v70)
    {
      v73 = v83[0];
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    v71 = v83[0];
  }

  return 1;
}

uint64_t sub_5D3E8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RCSFile(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37310(0, &qword_128048, CTLazuliFileTransferDescriptor_ptr);
  sub_5F918(a2, v14, type metadata accessor for RCSFile);
  v15 = CTLazuliFileTransferDescriptor.init(file:)(v14);
  v16 = a1[12];
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = sub_5F720(v16);
      [v18 setMetaData:v19];
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      v19 = sub_5F720(v16);
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v15;
      }

      [v21 setMetaData:v19];
    }
  }

  v81 = a1[11];
  v82 = v15;
  if (v81)
  {
    v22 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v22 = 0;
  }

  v23 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v10, v23, v6);
  v24 = v22;
  v25 = sub_F06AC();
  v26 = sub_F0CCC();
  v83 = v24;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v80 = a1;
    v28 = v6;
    v29 = v3;
    v30 = v27;
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v83;
    *(v30 + 4) = v83;
    *v31 = v22;
    v33 = v32;
    _os_log_impl(&dword_0, v25, v26, "Sending with encryption: %@", v30, 0xCu);
    sub_372B0(v31, &qword_127AF0, &qword_F28E0);

    v3 = v29;
    v6 = v28;
    a1 = v80;
  }

  (*(v7 + 8))(v10, v6);
  sub_551C8((a1 + 2), v88);
  if (v90)
  {
    sub_55248(v88, v87);
    v34 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v80 = a1[10];
    v35 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
    sub_1F28(v87, v84);
    v36 = v85;
    v37 = v86;
    v38 = sub_5F3F4(v84, v85);
    v39 = *(*(v36 - 8) + 64);
    v40 = __chkstk_darwin(v38);
    v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v40);
    v44 = v34;
    v45 = sub_A84F0(v42, v35, v36, v37);
    sub_1EDC(v84);
    v46 = v81;
    if (v81 >= 2)
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v59 = *a1;
      v60 = a1[1];

      v61 = [v46 secureGroupVersion];
      v62 = [v46 uuid];
      sub_F07EC();

      v49 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v59, v60, v61);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v48 = *a1;
      v47 = a1[1];

      v49 = CTLazuliMessageID.init(uuid:)(v48, v47);
    }

    v63 = v49;
    v64 = v82;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v65 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v65 = v83;
    }

    v84[0] = 0;
    v66 = [v44 sendFileTransferMessage:v80 toGroupDestination:v45 withMessageID:v63 withFileInformation:v64 withSecurity:v65 withError:v84];

    if (!v66)
    {
      v76 = v84[0];
      sub_F015C();

      swift_willThrow();
      sub_1EDC(v87);
      return 1;
    }

    v67 = v84[0];
    sub_1EDC(v87);
  }

  else
  {
    v91[0] = v88[0];
    v91[1] = v88[1];
    v92[0] = *v89;
    *(v92 + 9) = *&v89[9];
    v50 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v51 = a1[10];
    v52 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v52);
    *(&v79 - 2) = v51;
    v53 = v50;
    v54 = CTLazuliDestination.init(handle:countryCode:)(v91, sub_5FBB0);
    v55 = v81;
    if (v81 >= 2)
    {
      v80 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v68 = *a1;
      v69 = a1[1];

      v70 = [v55 secureGroupVersion];
      v71 = [v55 uuid];
      sub_F07EC();

      v58 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v68, v69, v70);
    }

    else
    {
      sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
      v57 = *a1;
      v56 = a1[1];

      v58 = CTLazuliMessageID.init(uuid:)(v57, v56);
    }

    v72 = v58;
    v64 = v82;
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v73 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v73 = v83;
    }

    v87[0] = 0;
    v74 = [v53 sendFileTransferMessage:v51 to:v54 withMessageID:v72 withFileInformation:v64 withSecurity:v73 withError:v87];

    if (!v74)
    {
      v77 = v87[0];
      sub_F015C();

      swift_willThrow();
      return 1;
    }

    v75 = v87[0];
  }

  return 1;
}

uint64_t sub_5DCA8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v92 = *(v6 - 1);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = &v90 - v8;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(CTLazuliMessageComposingIndicator) init];
  [v14 setActive:a2 & 1];
  if (a2)
  {
    sub_37310(0, &qword_128050, NSNumber_ptr);
    v15 = sub_F0DCC();
    [v14 setRefreshTime:v15];
  }

  v16 = *(a1 + 88);
  v96 = a1;
  v94 = v16;
  if (v16)
  {
    v17 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  else
  {
    v17 = 0;
  }

  v18 = Logger.rcs.unsafeMutableAddressor();
  v19 = *(v10 + 16);
  v95 = v9;
  v19(v13, v18, v9);
  v20 = v17;
  v21 = sub_F06AC();
  v22 = sub_F0CCC();
  v97 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v90 = v3;
    v25 = v14;
    v26 = v24;
    *v23 = 138412290;
    v27 = v97;
    *(v23 + 4) = v97;
    *v24 = v17;
    v28 = v27;
    _os_log_impl(&dword_0, v21, v22, "Sending with encryption: %@", v23, 0xCu);
    sub_372B0(v26, &qword_127AF0, &qword_F28E0);
    v14 = v25;
    v3 = v90;
  }

  (*(v10 + 8))(v13, v95);
  v29 = v96;
  sub_551C8((v96 + 2), v105);
  if (v107)
  {
    sub_55248(v105, v104);
    v30 = [objc_opt_self() sharedInstanceForBagType:1];
    v31 = sub_F07BC();
    v32 = [v30 objectForKey:v31];

    if (v32)
    {
      sub_F0E6C();
      swift_unknownObjectRelease();
    }

    else
    {
      v102 = 0u;
      v103 = 0u;
    }

    v99 = v102;
    v100 = v103;
    if (*(&v103 + 1))
    {
      sub_37310(0, &qword_128050, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v53 = v98;
        v54 = [v98 BOOLValue];

        if (v54)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_372B0(&v99, &unk_127FB0, &qword_F2F40);
    }

    if (qword_127A08 != -1)
    {
      swift_once();
    }

    v55 = v93;
    v56 = sub_3C96C(v93, qword_127C10);
    v57 = v91;
    v58 = v92;
    (*(v92 + 16))(v91, v56, v55);
    sub_F044C();
    (*(v58 + 8))(v57, v55);
    if (v99 != 1)
    {
LABEL_31:

      sub_1EDC(v104);
      v52 = 0;
      return v52 & 1;
    }

LABEL_28:
    v59 = [objc_opt_self() sharedFeatureFlags];
    v60 = [v59 isGroupTypingIndicatorsEnabled];

    if (v60)
    {
      v95 = v14;
      v61 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
      v92 = v29[10];
      v93 = v30;
      v62 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
      sub_1F28(v104, &v99);
      v63 = *(&v100 + 1);
      v64 = v101;
      v65 = sub_5F3F4(&v99, *(&v100 + 1));
      v66 = *(*(v63 - 8) + 64);
      v67 = __chkstk_darwin(v65);
      v69 = v29;
      v70 = &v90 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v71 + 16))(v70, v67);
      v91 = v61;
      v72 = sub_A84F0(v70, v62, v63, v64);
      sub_1EDC(&v99);
      v73 = v94;
      if (v94 >= 2)
      {
        v90 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v77 = *v69;
        v78 = v69[1];

        v79 = [v73 secureGroupVersion];
        v80 = [v73 uuid];
        sub_F07EC();

        v76 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v77, v78, v79);
      }

      else
      {
        sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v74 = *v69;
        v75 = v69[1];

        v76 = CTLazuliMessageID.init(uuid:)(v74, v75);
      }

      v81 = v76;
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v82 = static NSUserDefaults.forceEncryption.getter();
      v83 = 0;
      v84 = v95;
      if ((v82 & 1) == 0)
      {
        v83 = v97;
      }

      *&v99 = 0;
      v85 = v91;
      v86 = [v91 sendComposingIndicator:v92 toGroupDestination:v72 withMessageID:v81 withIndication:v84 withSecurity:v83 withError:&v99];

      if (!v86)
      {
        v88 = v99;
        sub_F015C();

        swift_willThrow();
        sub_1EDC(v104);
        return v52 & 1;
      }

      v87 = v99;
      sub_1EDC(v104);

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v108[0] = v105[0];
  v108[1] = v105[1];
  v109[0] = *v106;
  *(v109 + 9) = *&v106[9];
  v33 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 16);
  v34 = v29[10];
  v35 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
  __chkstk_darwin(v35);
  v95 = v34;
  *(&v90 - 2) = v34;
  v36 = v33;
  v37 = CTLazuliDestination.init(handle:countryCode:)(v108, sub_5FBB0);
  v38 = v94;
  if (v94 >= 2)
  {
    v42 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v43 = v29[1];
    v92 = *v29;
    v93 = v42;

    v44 = [v38 secureGroupVersion];
    v45 = v14;
    v46 = [v38 uuid];
    sub_F07EC();

    v14 = v45;
    v41 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v92, v43, v44);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v39 = *v29;
    v40 = v29[1];

    v41 = CTLazuliMessageID.init(uuid:)(v39, v40);
  }

  v47 = v41;
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v48 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v48 = v97;
  }

  v104[0] = 0;
  v49 = [v36 sendComposingIndicator:v95 to:v37 messageID:v47 indication:v14 withSecurity:v48 error:v104];

  if (v49)
  {
    v50 = v104[0];

LABEL_37:
    v52 = 1;
    return v52 & 1;
  }

  v51 = v104[0];
  sub_F015C();

  swift_willThrow();
  return v52 & 1;
}

uint64_t sub_5E700(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), SEL *a5)
{
  sub_551C8((a1 + 2), v36);
  v10 = v38;
  if (v38)
  {
    sub_5BD88(v36);
    v11 = v10 ^ 1;
  }

  else
  {
    v33 = a4;
    v34 = a5;
    v39[0] = v36[0];
    v39[1] = v36[1];
    v40[0] = *v37;
    *(v40 + 9) = *&v37[9];
    v12 = *(*(v5 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v13 = a1[10];
    v14 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v14);
    v32 = v13;
    v15 = v12;
    v16 = CTLazuliDestination.init(handle:countryCode:)(v39, a3);
    v17 = a1[11];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    if (v17 >= 2)
    {
      v21 = *a1;
      v22 = a1[1];
      v31 = v21;

      v23 = [v17 secureGroupVersion];
      v24 = [v17 uuid];
      sub_F07EC();

      v20 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v31, v22, v23);
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];

      v20 = CTLazuliMessageID.init(uuid:)(v18, v19);
    }

    v25 = v20;
    v26 = v33();
    v35 = 0;
    v27 = [v15 *v34];

    if (v27)
    {
      v28 = v35;
      v11 = v10 ^ 1;
    }

    else
    {
      v29 = v35;
      sub_F015C();

      swift_willThrow();
    }
  }

  return v11 & 1;
}

void sub_5E9B0(uint64_t *a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_551C8((a1 + 2), v60);
  if (v62)
  {
    sub_5BD88(v60);
    return;
  }

  v54 = v7;
  v53 = v4;
  v63[0] = v60[0];
  v63[1] = v60[1];
  *v64 = *v61;
  *&v64[9] = *&v61[9];
  v8 = [objc_allocWithZone(CTLazuliSuggestedActionDevice) init];
  [v8 setType:0];
  v55 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  v9 = *(v55 + 16);
  v10 = a1[10];
  v11 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
  __chkstk_darwin(v11);
  v57 = v10;
  *(&v49 - 2) = v10;
  v56 = v9;
  sub_38910(v63, v59);
  v12 = CTLazuliDestination.init(handle:countryCode:)(v63, sub_5FBB0);
  v52 = a1[11];
  v13 = v52;
  if (v52 >= 2)
  {
    v51 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v15 = a1[1];
    v50 = *a1;

    v17 = [v13 secureGroupVersion];
    v18 = [v13 uuid];
    v19 = v3;
    v20 = v8;
    v21 = v18;
    sub_F07EC();

    v8 = v20;
    v3 = v19;
    v14 = v50;
    v16 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v50, v15, v17);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v14 = *a1;
    v15 = a1[1];

    v16 = CTLazuliMessageID.init(uuid:)(v14, v15);
  }

  v22 = v16;
  v59[0] = 0;
  v23 = v56;
  v24 = [v56 sendDeviceAction:v57 to:v12 withMessageID:v16 withAction:v8 withError:v59];

  if (!v24)
  {
    v34 = v59[0];
    sub_3CAB8(v63);
    v35 = sub_F015C();

    v58 = v35;
    swift_willThrow();

    return;
  }

  v25 = *(v55 + 64);
  if (!v25)
  {
    __break(1u);
    goto LABEL_19;
  }

  v26 = v59[0];
  v27 = v25;
  sub_3CAB8(v63);
  v28 = [v27 respondsToSelector:"messageSendSuccess:withID:"];

  v29 = v54;
  if (!v28)
  {
    v36 = Logger.rcs.unsafeMutableAddressor();
    v37 = v53;
    (*(v53 + 16))(v29, v36, v3);
    v38 = sub_F06AC();
    v39 = sub_F0CEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v29;
      v42 = swift_slowAlloc();
      v59[0] = v42;
      *v40 = 136315138;
      *(v40 + 4) = sub_3E850(0xD00000000000001BLL, 0x80000000000FEA50, v59);
      _os_log_impl(&dword_0, v38, v39, "OutgoingMessageController no longer responds to selector %s", v40, 0xCu);
      sub_1EDC(v42);

      (*(v37 + 8))(v41, v3);
    }

    else
    {

      (*(v37 + 8))(v29, v3);
    }

    return;
  }

  v30 = *(v55 + 64);
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v52;
  if (v52 >= 2)
  {
    v56 = sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v43 = v30;

    v44 = v15;
    v45 = v14;
    v46 = [v31 secureGroupVersion];
    v47 = [v31 uuid];
    sub_F07EC();

    v33 = CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v45, v44, v46);
  }

  else
  {
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v32 = v30;

    v33 = CTLazuliMessageID.init(uuid:)(v14, v15);
  }

  v48 = v33;
  RCSOutgoingMessageController.messageSendSuccess(_:with:)(v57, v33);
}

uint64_t sub_5F048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5F09C()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_38B0C;

  return sub_5BDDC(v7, v0 + v3, v8, v9, v10, v11, v12);
}

unint64_t sub_5F1E4()
{
  result = qword_128030;
  if (!qword_128030)
  {
    type metadata accessor for RCSOutgoingMessageController.OperationID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128030);
  }

  return result;
}

uint64_t sub_5F23C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_37C54;

  return sub_97C40(a1, a2, v7);
}

uint64_t sub_5F2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5F3F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_5F444(uint64_t a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v23, v9, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v10)
  {
  }

  else
  {

    sub_3CAB8(&v23);
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 ctSubscriptionInfo];

  if (v12)
  {
    v13 = sub_F07BC();
    v14 = sub_F07BC();

    v15 = [v12 __im_subscriptionContextForForSimID:v13 phoneNumber:v14];

    if (v15)
    {
      return v15;
    }
  }

  else
  {
  }

  v17 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v17, v4);

  v18 = sub_F06AC();
  v19 = sub_F0CEC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_3E850(a1, a2, v22);
    _os_log_impl(&dword_0, v18, v19, "Can't find a subscription context for destination caller ID %s", v20, 0xCu);
    sub_1EDC(v21);
  }

  (*(v5 + 8))(v8, v4);
  return 31;
}

id sub_5F720(uint64_t a1)
{
  v1 = RCSMessageMetadata.toPairs()(a1);
  v2 = v1[2];
  if (v2)
  {
    v17 = [objc_allocWithZone(CTLazuliCustomMetaData) init];
    v3 = v1 + 7;
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = objc_allocWithZone(CTLazuliCustomMetaDataWrapper);

      v9 = [v8 init];
      v10 = sub_F07BC();

      [v9 setHeader:v10];

      v11 = sub_F07BC();

      [v9 setValue:v11];

      v12 = v9;
      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v13 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_F0A1C();
      }

      sub_F0A3C();

      v3 += 4;
      --v2;
    }

    while (v2);

    sub_37310(0, &qword_128040, CTLazuliCustomMetaDataWrapper_ptr);
    v14 = sub_F09EC();

    v15 = v17;
    [v17 setList:v14];
  }

  else
  {

    return 0;
  }

  return v15;
}

uint64_t sub_5F918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_5F980()
{
  result = qword_128058;
  if (!qword_128058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128058);
  }

  return result;
}

unint64_t sub_5F9D4()
{
  result = qword_128060;
  if (!qword_128060)
  {
    sub_F035C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128060);
  }

  return result;
}

__n128 sub_5FA20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_5FA4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_5FA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s23RCSServiceSessionErrorsOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s23RCSServiceSessionErrorsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s23RCSServiceSessionErrorsOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_5FB5C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5FB7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_5FBB8()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_F0F9C(25);

  strcpy(v11, "originalID: ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v6 = *(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v7 = *(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  v12._countAndFlagsBits = v6;
  v12._object = v7;
  sub_F08CC(v12);

  v13._countAndFlagsBits = 0x3A6574617473202CLL;
  v13._object = 0xE900000000000020;
  sub_F08CC(v13);
  v8 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  sub_60478(v1 + v8, v5);
  v14._countAndFlagsBits = sub_6018C();
  sub_F08CC(v14);

  sub_60528(v5, type metadata accessor for RCSMessageSendItem.SendState);
  return v11[0];
}

uint64_t sub_5FD20()
{
  sub_60528(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, type metadata accessor for RCSMessage);

  sub_60528(v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState, type metadata accessor for RCSMessageSendItem.SendState);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_5FE0C()
{
  result = type metadata accessor for RCSMessage(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RCSMessageSendItem.SendState(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5FF34()
{
  sub_5FF8C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_5FF8C()
{
  if (!qword_128240)
  {
    v0 = sub_F030C();
    if (!v1)
    {
      atomic_store(v0, &qword_128240);
    }
  }
}

uint64_t sub_5FFF8@<X0>(void *a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v3 = *(v2 + 136);
  *a1 = *(v2 + 128);
  a1[1] = v3;
}

Swift::Int sub_60014()
{
  v1 = *v0;
  sub_F12FC();
  v2 = v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v3 = *(v1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v4 = *(v2 + 136);

  sub_F089C();

  return sub_F132C();
}

uint64_t sub_60080()
{
  v1 = *v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);

  sub_F089C();
}

Swift::Int sub_600E8()
{
  sub_F12FC();
  v1 = *v0 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);

  sub_F089C();

  return sub_F132C();
}

uint64_t sub_60150(void *a1, void *a2)
{
  v2 = *a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  if (*(v2 + 128) == *(*a2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128) && *(v2 + 136) == *(*a2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136))
  {
    return 1;
  }

  else
  {
    return sub_F122C();
  }
}

uint64_t sub_6018C()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_60478(v1, v5);
  v6 = sub_388C8(&qword_127B28, &qword_F2B20);
  v7 = (*(*(v6 - 8) + 48))(v5, 4, v6);
  if (v7 <= 1)
  {
    if (v7)
    {
      return 0x6C616974696E49;
    }

    else
    {
      v9 = sub_F030C();
      v10 = *(v9 - 8);
      v11 = *(v10 + 64);
      v12 = __chkstk_darwin(v9);
      v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 32))(v14, v5, v9, v12);
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_F0F9C(21);

      v16 = 0xD000000000000012;
      v17 = 0x80000000000FEAC0;
      sub_604DC();
      v18._countAndFlagsBits = sub_F11EC();
      sub_F08CC(v18);

      v19._countAndFlagsBits = 41;
      v19._object = 0xE100000000000000;
      sub_F08CC(v19);
      v15 = v16;
      (*(v10 + 8))(v14, v9);
      return v15;
    }
  }

  else if (v7 == 2)
  {
    return 0x6572206C616E6946;
  }

  else if (v7 == 3)
  {
    return 0x73736563637553;
  }

  else
  {
    return 0x6572756C696146;
  }
}

unint64_t sub_60414()
{
  result = qword_128268;
  if (!qword_128268)
  {
    type metadata accessor for RCSMessageSendItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128268);
  }

  return result;
}

uint64_t sub_60478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_604DC()
{
  result = qword_128270;
  if (!qword_128270)
  {
    sub_F030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128270);
  }

  return result;
}

uint64_t sub_60528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_605A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_F07EC();

  return v6;
}

uint64_t sub_60628()
{
  v1 = [*v0 participantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F09FC();

  return v3;
}

void sub_60684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v10 = sub_F06CC();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_373E8(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v49 = v5;
    v50 = v13;
    v20 = *(v5 + OBJC_IVAR___RCSServiceSession_state);
    if (*(*(v20 + 72) + 16) && (v21 = *(v20 + 72), , sub_51FEC(v18, v19), v23 = v22, , (v23 & 1) != 0))
    {
    }

    else
    {
      sub_54C4C(a1, &v56);
      *&v65 = _swiftEmptyArrayStorage;
      *(&v65 + 1) = _swiftEmptyArrayStorage;
      *&v63 = a2;
      *(&v63 + 1) = a3;
      *&v64 = v51;
      *(&v64 + 1) = a5;
      v24 = *(v20 + 72);
      v55[6] = v62;
      v55[7] = v63;
      v55[8] = v64;
      v55[9] = v65;
      v55[2] = v58;
      v55[3] = v59;
      v55[4] = v60;
      v55[5] = v61;
      v55[0] = v56;
      v55[1] = v57;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v24;
      sub_52478(v55, v18, v19, isUniquelyReferenced_nonNull_native);

      v26 = *(v20 + 72);
      *(v20 + 72) = v54;

      sub_61894(a1);
      v27 = Logger.rcs.unsafeMutableAddressor();
      v29 = v52;
      v28 = v53;
      v30 = v50;
      (*(v52 + 16))(v50, v27, v53);
      sub_54C4C(a1, &v56);
      v31 = sub_F06AC();
      v32 = sub_F0CCC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v55[0] = v34;
        *v33 = 136315138;
        v35 = *(&v57 + 1);
        v36 = v58;
        sub_373E8(&v56, *(&v57 + 1));
        v37 = (*(v36 + 16))(v35, v36);
        if (v38)
        {
          v39 = v37;
        }

        else
        {
          v39 = 0x3E6C696E3CLL;
        }

        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0xE500000000000000;
        }

        sub_53D58(&v56);
        v41 = sub_3E850(v39, v40, v55);

        *(v33 + 4) = v41;
        _os_log_impl(&dword_0, v31, v32, "Queued incoming group change for group: %s", v33, 0xCu);
        sub_1EDC(v34);

        (*(v29 + 8))(v50, v28);
      }

      else
      {

        (*(v29 + 8))(v30, v28);
        sub_53D58(&v56);
      }
    }
  }

  else
  {
    v42 = [objc_opt_self() sharedInstance];
    if (v42)
    {
      v43 = v42;
      sub_54C4C(a1, &v56);
      v44 = sub_F085C();
      v46 = v45;
      v47 = sub_F0FBC();
      LOBYTE(v56) = 1;
      *(&v56 + 1) = v47;
      *&v57 = v48;
      *(&v57 + 1) = v44;
      v58 = v46;
      LOBYTE(v59) = 0;
      sub_94528(&v56);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_60AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v62 - v14;
  v16 = *&v3[OBJC_IVAR___RCSServiceSession_state];
  *&v94[0] = *(v16 + 72);

  sub_61BA8(a1, a2, &v84);
  v17 = *(v16 + 72);
  *(v16 + 72) = *&v94[0];

  if (!*(&v85 + 1))
  {
    sub_372B0(&v84, &qword_128280, &qword_F3400);
    return;
  }

  v94[6] = v90;
  v94[7] = v91;
  v94[8] = v92;
  v95 = v93;
  v94[2] = v86;
  v94[3] = v87;
  v94[4] = v88;
  v94[5] = v89;
  v94[0] = v84;
  v94[1] = v85;
  v73 = *(&v91 + 1);
  v67 = v92;
  v68 = v91;
  v66 = *(&v92 + 1);
  sub_37380(a3, &v77, &qword_127EE8, &unk_F33F0);
  if (*(&v78 + 1))
  {
    v88 = v81;
    v89 = v82;
    v90 = v83;
    v84 = v77;
    v85 = v78;
    v86 = v79;
    v87 = v80;
  }

  else
  {
    sub_54C4C(v94, &v84);
    if (*(&v78 + 1))
    {
      sub_372B0(&v77, &qword_127EE8, &unk_F33F0);
    }
  }

  v18 = v73;
  if (v73)
  {
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = v68;
    *(inited + 40) = v18;

    RCSGroup.removing(participants:)(inited, &v77);
    swift_setDeallocating();
    sub_61CB0(inited + 32);
    sub_53D58(&v84);
    v88 = v81;
    v89 = v82;
    v90 = v83;
    v84 = v77;
    v85 = v78;
    v86 = v79;
    v87 = v80;
  }

  v20 = *(v95 + 16);
  if (v20)
  {
    v21 = v95 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = *(v12 + 72);
    do
    {
      sub_37380(v21, v15, &qword_127EE0, qword_F2CB0);
      RCSServiceSession.process(participantChange:)(v15);
      sub_77CA4(v15, 1);
      sub_372B0(v15, &qword_127EE0, qword_F2CB0);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  v23 = *(&v85 + 1);
  v24 = v86;
  v25 = sub_373E8(&v84, *(&v85 + 1));
  v26 = sub_6F3C8(v25, v4, v23, v24);
  if (v26)
  {
    v71 = v4;
    v72 = v26;
    v70 = *(&v95 + 1);
    v69 = *(*(&v95 + 1) + 16);
    if (v69)
    {
      v27 = 0;
      v28 = (v70 + 56);
      while (v27 < *(v70 + 16))
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v74 = *(v28 - 2);
        v76 = v29;
        if (v74)
        {
          v31 = *(v28 - 3);

          v75 = sub_F07BC();
        }

        else
        {

          v75 = 0;
        }

        v32 = sub_F035C();
        v33 = *(v32 - 8);
        v34 = *(v33 + 64);
        __chkstk_darwin(v32);
        v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_F034C();
        sub_F032C();
        (*(v33 + 8))(v36, v32);
        v37 = sub_F07BC();

        v38 = sub_F07BC();
        if (v73)
        {
          v39 = sub_F07BC();
        }

        else
        {
          v39 = 0;
        }

        v40 = v72;
        v41 = [v72 chatIdentifier];
        if (!v41)
        {
          goto LABEL_32;
        }

        v42 = v41;
        ++v27;

        v43 = [v40 style];
        v44 = v71;
        v45 = [v71 account];
        LOBYTE(v61) = 1;
        v46 = v44;
        v47 = v75;
        [v46 didReceiveDisplayNameChange:v75 guid:v37 fromID:v38 toIdentifier:v39 forChat:v42 style:v43 account:v45 shouldRelay:v61];

        v28 += 4;
        if (v69 == v27)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

LABEL_24:

    v4 = v71;
  }

  memset(v96, 0, 57);

  v48 = *(&v85 + 1);
  v49 = v86;
  v50 = sub_373E8(&v84, *(&v85 + 1));
  v51 = sub_6F3C8(v50, v4, v48, v49);
  if (v51)
  {
    v52 = v51;
    v53 = [v51 chatIdentifier];
    if (v53)
    {
      v54 = v53;
      [v4 didJoinChat:v53 style:{objc_msgSend(v52, "style")}];

      sub_53D58(&v84);
      sub_61C80(v94);
      return;
    }

    goto LABEL_33;
  }

  v55 = Logger.rcs.unsafeMutableAddressor();
  v57 = v63;
  v56 = v64;
  (*(v63 + 16))(v65, v55, v64);
  v58 = sub_F06AC();
  v59 = sub_F0CCC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "Dropping incoming group for group that doesn't already exist in the database", v60, 2u);
  }

  (*(v57 + 8))(v65, v56);
  sub_53D58(&v84);
  sub_61C80(v94);
}

Swift::Int sub_61324()
{
  sub_F12FC();
  sub_F130C(0);
  return sub_F132C();
}

Swift::Int sub_61390()
{
  sub_F12FC();
  sub_F130C(0);
  return sub_F132C();
}

void sub_613D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(*(v2 + OBJC_IVAR___RCSServiceSession_state) + 72) + 16))
  {

    sub_51FEC(a1, a2);
    v11 = v10;

    if (v11)
    {
      v12 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v9, v12, v5);
      v13 = sub_F06AC();
      v14 = sub_F0CCC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = 5;
        _os_log_impl(&dword_0, v13, v14, "Finishing group change after %ld timeout", v15, 0xCu);
      }

      (*(v6 + 8))(v9, v5);
      memset(v17, 0, sizeof(v17));
      sub_60AF0(a1, a2, v17);

      sub_372B0(v17, &qword_127EE8, &unk_F33F0);
    }
  }
}

uint64_t sub_6163C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_61658(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_61670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_6169C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_616E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessageMetadata.Entry.HeaderKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RCSMessageMetadata.Entry.HeaderKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_61840()
{
  result = qword_128278;
  if (!qword_128278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128278);
  }

  return result;
}

void sub_61894(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_373E8(a1, v3);
  (*(v4 + 16))(v3, v4);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = sub_F07BC();
    [v6 cancelPreviousPerformRequestsWithTarget:v1 selector:"cleanupPendingGroupChangesFor:" object:v7];

    v15 = sub_F07BC();

    [v1 performSelector:"cleanupPendingGroupChangesFor:" withObject:v15 afterDelay:5.0];
  }

  else
  {
    v8 = [objc_opt_self() sharedInstance];
    if (v8)
    {
      v9 = v8;
      sub_54C4C(a1, v16);
      v10 = sub_F085C();
      v12 = v11;
      v13 = sub_F0FBC();
      v16[0] = 1;
      v17 = v13;
      v18 = v14;
      v19 = v10;
      v20 = v12;
      v21 = 0;
      v22 = 0;
      sub_94528(v16);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_61A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v13 - v7;
  sub_37380(a2, &v13 - v7, &qword_127EE0, qword_F2CB0);
  v9 = *(a1 + 144);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_6E518(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_6E518(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = sub_62E88(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
  *(a1 + 144) = v9;
  return result;
}

double sub_61BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_51FEC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76B90();
      v12 = v21;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 160 * v9);
    v15 = v14[7];
    a3[6] = v14[6];
    a3[7] = v15;
    v16 = v14[9];
    a3[8] = v14[8];
    a3[9] = v16;
    v17 = v14[3];
    a3[2] = v14[2];
    a3[3] = v17;
    v18 = v14[5];
    a3[4] = v14[4];
    a3[5] = v18;
    v19 = v14[1];
    *a3 = *v14;
    a3[1] = v19;
    sub_763B8(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_61D04(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_373E8(a1, v10);
  result = (*(v11 + 16))(v10, v11);
  if (!v13)
  {
    return result;
  }

  v14 = v13;
  v51 = a5;
  v15 = *(a2 + OBJC_IVAR___RCSServiceSession_state);
  if (!*(*(v15 + 72) + 16) || (v16 = result, v17 = *(v15 + 72), , sub_51FEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    sub_62E34();
    swift_allocError();
    return swift_willThrow();
  }

  v50 = a4;
  v20 = *(v15 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v20;
  v23 = sub_51FEC(v16, v14);
  v24 = v20[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_22;
  }

  v27 = v22;
  if (v20[3] >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_76B90();
    }

    v16 = v23;
  }

  else
  {
    sub_75B40(v26, isUniquelyReferenced_nonNull_native);
    v28 = sub_51FEC(v16, v14);
    if ((v27 & 1) != (v29 & 1))
    {
LABEL_24:

      result = sub_F126C();
      __break(1u);
      return result;
    }

    v16 = v28;
  }

  v23 = v50;
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v20 = v75;
  v30 = (v75[7] + 160 * v16);
  v31 = v30[1];
  v73[0] = *v30;
  v73[1] = v31;
  v32 = v30[5];
  v34 = v30[2];
  v33 = v30[3];
  v73[4] = v30[4];
  v73[5] = v32;
  v73[2] = v34;
  v73[3] = v33;
  v35 = v30[9];
  v37 = v30[6];
  v36 = v30[7];
  v73[8] = v30[8];
  v74 = v35;
  v73[6] = v37;
  v73[7] = v36;
  v10 = *(&v35 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v10 = sub_6E708(0, *(v10 + 2) + 1, 1, v10);
  }

  v39 = *(v10 + 2);
  v38 = *(v10 + 3);
  if (v39 >= v38 >> 1)
  {
    v10 = sub_6E708((v38 > 1), v39 + 1, 1, v10);
  }

  *(v10 + 2) = v39 + 1;
  v40 = &v10[32 * v39];
  *(v40 + 4) = a3;
  *(v40 + 5) = v23;
  *(v40 + 6) = v51;
  *(v40 + 7) = a6;
  *(&v74 + 1) = v10;
  sub_37380(v73, &v53, &qword_128280, &qword_F3400);
  if (*(&v54 + 1))
  {
    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v41 = v55;
    v65 = v55;
    v66 = v56;
    v67 = v57;
    v68 = v58;
    v63 = v53;
    v64 = v54;
    v42 = (v20[7] + 160 * v16);
    v43 = v60;
    v42[6] = v59;
    v42[7] = v43;
    v44 = v72;
    v42[8] = v71;
    v42[9] = v44;
    v45 = v66;
    v46 = v67;
    v47 = v68;
    v42[2] = v41;
    v42[3] = v45;
    v42[4] = v46;
    v42[5] = v47;
    v48 = v64;
    *v42 = v63;
    v42[1] = v48;
  }

  else
  {
    sub_372B0(&v53, &qword_128280, &qword_F3400);
    sub_61CB0(v20[6] + 16 * v16);
    sub_763B8(v16, v20);
  }

  sub_372B0(v73, &qword_128280, &qword_F3400);
  v49 = *(v15 + 72);
  *(v15 + 72) = v20;
}

void sub_62078(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v49 = a1;
  v52 = sub_F06CC();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v52);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  if (qword_127AB8 != -1)
  {
    swift_once();
  }

  v20 = sub_3C96C(v15, qword_127E20);
  (*(v16 + 16))(v19, v20, v15);
  sub_F044C();
  (*(v16 + 8))(v19, v15);
  if (LOBYTE(v53[0]) == 1)
  {
    v21 = Logger.rcs.unsafeMutableAddressor();
    v22 = v52;
    (*(v9 + 16))(v14, v21, v52);
    v23 = sub_F06AC();
    v24 = sub_F0CCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Dropping pending name change due to override", v25, 2u);
    }

    (*(v9 + 8))(v14, v22);
  }

  else
  {

    v26 = v50;
    sub_61D04(v50, v51, v49, a2, a3, a4);

    if (!v5)
    {
      v27 = v9;
      v28 = Logger.rcs.unsafeMutableAddressor();
      v29 = *(v9 + 16);
      v30 = v48;
      v31 = v52;
      v29(v48, v28, v52);
      sub_54C4C(v26, v53);

      v32 = sub_F06AC();
      v33 = sub_F0CCC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56 = v47;
        *v34 = 136315394;
        if (a2)
        {
          v35 = v49;
        }

        else
        {
          v35 = 0x3E6C696E3CLL;
        }

        if (a2)
        {
          v36 = a2;
        }

        else
        {
          v36 = 0xE500000000000000;
        }

        v37 = sub_3E850(v35, v36, &v56);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        v38 = v27;
        v39 = v54;
        v40 = v55;
        sub_373E8(v53, v54);
        v41 = (*(v40 + 16))(v39, v40);
        if (v42)
        {
          v43 = v41;
        }

        else
        {
          v43 = 0x3E6C696E3CLL;
        }

        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = 0xE500000000000000;
        }

        sub_53D58(v53);
        v45 = sub_3E850(v43, v44, &v56);

        *(v34 + 14) = v45;
        _os_log_impl(&dword_0, v32, v33, "Added pending name change %s to group: %s", v34, 0x16u);
        swift_arrayDestroy();

        (*(v38 + 8))(v48, v31);
      }

      else
      {

        (*(v27 + 8))(v30, v31);
        sub_53D58(v53);
      }

      sub_61894(v50);
    }
  }
}

uint64_t sub_62598(void *a1, void (*a2)(_OWORD *))
{
  v4 = a1[3];
  v5 = a1[4];
  sub_373E8(a1, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v7)
  {
    return result;
  }

  v8 = v7;
  v9 = *(v2 + OBJC_IVAR___RCSServiceSession_state);
  if (!*(*(v9 + 72) + 16) || (v10 = result, v11 = *(v9 + 72), , sub_51FEC(v10, v8), v13 = v12, , (v13 & 1) == 0))
  {

    sub_62E34();
    swift_allocError();
    return swift_willThrow();
  }

  v41 = a2;
  v14 = *(v9 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v14;
  v17 = sub_51FEC(v10, v8);
  v18 = *(v14 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a2) = v16;
    if (*(v14 + 24) < v20)
    {
      sub_75B40(v20, isUniquelyReferenced_nonNull_native);
      v21 = sub_51FEC(v10, v8);
      if ((a2 & 1) != (v22 & 1))
      {
LABEL_20:
        result = sub_F126C();
        __break(1u);
        return result;
      }

      v17 = v21;
      if ((a2 & 1) == 0)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

  sub_76B90();
  if ((a2 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:

  v23 = v63;
  v24 = (*(v63 + 56) + 160 * v17);
  v25 = v24[1];
  v62[0] = *v24;
  v62[1] = v25;
  v26 = v24[5];
  v28 = v24[2];
  v27 = v24[3];
  v62[4] = v24[4];
  v62[5] = v26;
  v62[2] = v28;
  v62[3] = v27;
  v29 = v24[9];
  v31 = v24[6];
  v30 = v24[7];
  v62[8] = v24[8];
  v62[9] = v29;
  v62[6] = v31;
  v62[7] = v30;
  v41(v62);
  sub_37380(v62, &v42, &qword_128280, &qword_F3400);
  if (*(&v43 + 1))
  {
    v58 = v48;
    v59 = v49;
    v60 = v50;
    v61 = v51;
    v32 = v44;
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v57 = v47;
    v52 = v42;
    v53 = v43;
    v33 = (*(v23 + 56) + 160 * v17);
    v34 = v49;
    v33[6] = v48;
    v33[7] = v34;
    v35 = v61;
    v33[8] = v60;
    v33[9] = v35;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v33[2] = v32;
    v33[3] = v36;
    v33[4] = v37;
    v33[5] = v38;
    v39 = v53;
    *v33 = v52;
    v33[1] = v39;
  }

  else
  {
    sub_372B0(&v42, &qword_128280, &qword_F3400);
    sub_61CB0(*(v23 + 48) + 16 * v17);
    sub_763B8(v17, v23);
  }

  sub_372B0(v62, &qword_128280, &qword_F3400);
  v40 = *(v9 + 72);
  *(v9 + 72) = v23;
}

void sub_62878(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v43[-v5];
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v45 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v43[-v12];
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43[-v17];
  if (qword_127AB8 != -1)
  {
    swift_once();
  }

  v19 = sub_3C96C(v14, qword_127E20);
  (*(v15 + 16))(v18, v19, v14);
  sub_F044C();
  v20 = (*(v15 + 8))(v18, v14);
  if (LOBYTE(v48[0]) == 1)
  {
    v21 = Logger.rcs.unsafeMutableAddressor();
    (*(v8 + 16))(v13, v21, v7);
    v22 = sub_F06AC();
    v23 = sub_F0CCC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Dropping pending participant change due to override", v24, 2u);
    }

    (*(v8 + 8))(v13, v7);
  }

  else
  {
    __chkstk_darwin(v20);
    *&v43[-16] = a1;
    v25 = v46;
    v26 = v47;
    sub_62598(v46, sub_62E2C);
    if (!v26)
    {
      v47 = 0;
      v27 = Logger.rcs.unsafeMutableAddressor();
      v28 = v45;
      (*(v8 + 16))(v45, v27, v7);
      sub_37380(a1, v6, &qword_127EE0, qword_F2CB0);
      sub_54C4C(v25, v48);
      v29 = sub_F06AC();
      v30 = sub_F0CCC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v44 = v30;
        v32 = v31;
        v51 = swift_slowAlloc();
        *v32 = 136315394;
        if (v6[*(v3 + 40)])
        {
          v33 = 0x65766F6D6572;
        }

        else
        {
          v33 = 6579297;
        }

        if (v6[*(v3 + 40)])
        {
          v34 = 0xE600000000000000;
        }

        else
        {
          v34 = 0xE300000000000000;
        }

        sub_372B0(v6, &qword_127EE0, qword_F2CB0);
        v35 = sub_3E850(v33, v34, &v51);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        v36 = v49;
        v37 = v50;
        sub_373E8(v48, v49);
        v38 = (*(v37 + 16))(v36, v37);
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0x3E6C696E3CLL;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE500000000000000;
        }

        sub_53D58(v48);
        v42 = sub_3E850(v40, v41, &v51);

        *(v32 + 14) = v42;
        _os_log_impl(&dword_0, v29, v44, "Added pending participant change: %s to group: %s", v32, 0x16u);
        swift_arrayDestroy();

        (*(v8 + 8))(v45, v7);
      }

      else
      {

        sub_372B0(v6, &qword_127EE0, qword_F2CB0);
        (*(v8 + 8))(v28, v7);
        sub_53D58(v48);
      }

      sub_61894(v46);
    }
  }
}

unint64_t sub_62E34()
{
  result = qword_128290;
  if (!qword_128290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128290);
  }

  return result;
}

uint64_t sub_62E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_62EF8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_62F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_62F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_62F9C(void (**a1)(char **, uint64_t, uint64_t), char **a2, unint64_t a3)
{
  v173 = a1;
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v160 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v160 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = (&v160 - v18);
  __chkstk_darwin(v17);
  v21 = &v160 - v20;
  v22 = sub_64270(a2);
  v37 = a3;
  v38 = v175;
  v39 = v21;
  v170 = v16;
  v172 = v19;
  v174 = v37;
  v40 = v22;
  if (!(v22 >> 62))
  {
    v41 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    v42 = v6;
    if (v41)
    {
      goto LABEL_9;
    }

LABEL_77:

    v23 = Logger.chatbot.unsafeMutableAddressor();
    (*(v42 + 16))(v13, v23, v5);
    v24 = a2;
    v25 = sub_F06AC();
    v26 = sub_F0CEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v177[0] = v28;
      *v27 = 136315138;
      v29 = [v24 uri];
      v30 = v5;
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, v177);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_0, v25, v26, "Persistent Menu - Trying to fetch but cannot find any chat for %s ", v27, 0xCu);
      sub_1EDC(v28);

      (*(v42 + 8))(v13, v30);
      return;
    }

    v35 = *(v42 + 8);
    v36 = v13;
LABEL_5:
    v35(v36, v5);
    return;
  }

LABEL_76:
  v41 = sub_F10DC();
  v42 = v6;
  if (!v41)
  {
    goto LABEL_77;
  }

LABEL_9:
  v6 = v39;
  v43 = v41;
  v166 = v10;
  v44 = *&v38[OBJC_IVAR___RCSServiceSession_state];
  v45 = *(v44 + 16);
  v177[0] = 0;
  *&v168 = a2;
  v46 = [v45 readCachedChatBotRenderInformation:v173 forChatBot:a2 withError:v177];
  v10 = v177[0];
  if (!v46)
  {
    v87 = v177[0];

    sub_F015C();

    swift_willThrow();
LABEL_63:
    v127 = Logger.chatbot.unsafeMutableAddressor();
    v128 = v166;
    (*(v42 + 16))(v166, v127, v5);
    v129 = v168;
    swift_errorRetain();
    v130 = sub_F06AC();
    v131 = sub_F0CEC();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v170 = v42;
      v169 = v5;
      v134 = v133;
      v135 = swift_slowAlloc();
      v177[0] = v135;
      *v132 = 136315394;
      v136 = [v129 extractedUri];
      v137 = sub_F07EC();
      v139 = v138;

      v140 = sub_3E850(v137, v139, v177);

      *(v132 + 4) = v140;
      *(v132 + 12) = 2112;
      swift_errorRetain();
      v141 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 14) = v141;
      *v134 = v141;
      _os_log_impl(&dword_0, v130, v131, "Persistent Menu - Failed to fetch chatbot info for %s with error %@", v132, 0x16u);
      sub_389D8(v134);

      sub_1EDC(v135);

      v170[1](v128, v169);
      return;
    }

    v35 = *(v42 + 8);
    v36 = v128;
    goto LABEL_5;
  }

  v47 = v46;
  v171 = v40;
  v48 = v46;
  v49 = v10;
  v50 = [v48 renderInformation];
  v169 = v5;
  v175 = v43;
  v165 = v48;
  if (v50)
  {
    v51 = v50;
    v38 = v43;
    type metadata accessor for RCSPersistentMenu();
    swift_initStackObject();
    v40 = RCSPersistentMenu.init(menu:)(v51);
    isa = v40[2].isa;
    v10 = isa;

    if (isa)
    {

      a2 = 0;
      v39 = v171;
      v174 = v171 & 0xC000000000000001;
      v166 = v171 & 0xFFFFFFFFFFFFFF8;
      v172 = (v42 + 8);
      v173 = (v42 + 16);
      *&v53 = 136315138;
      v168 = v53;
      v13 = v170;
      v167 = v47;
      while (1)
      {
        if (v174)
        {
          v54 = sub_F0FCC();
        }

        else
        {
          if (a2 >= *(v166 + 16))
          {
            goto LABEL_75;
          }

          v54 = *&v39[8 * a2 + 32];
        }

        v10 = v54;
        v55 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_74;
        }

        sub_64724(v54, v47);
        v56 = Logger.chatbot.unsafeMutableAddressor();
        (*v173)(v13, v56, v5);
        v57 = v10;
        v10 = v5;
        v58 = v57;
        v40 = sub_F06AC();
        v6 = sub_F0CCC();
        if (os_log_type_enabled(v40, v6))
        {
          v59 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v177[0] = v10;
          *v59 = v168;
          v60 = [v58 guid];

          if (!v60)
          {
            __break(1u);
            return;
          }

          v61 = sub_F07EC();
          v63 = v62;

          v64 = sub_3E850(v61, v63, v177);

          *(v59 + 4) = v64;
          _os_log_impl(&dword_0, v40, v6, "Persistent Menu - Populate cached chatbot info for %s", v59, 0xCu);
          sub_1EDC(v10);

          v13 = v170;
          v5 = v169;
          (*v172)(v170, v169);
          v39 = v171;
          v38 = v175;
          v47 = v167;
        }

        else
        {

          (*v172)(v13, v10);
          v5 = v10;
        }

        a2 = (a2 + 1);
        if (v55 == v38)
        {
          v102 = v165;

          return;
        }
      }
    }
  }

  v164 = v44;
  v163 = v6;
  v170 = v42;

  v65 = 0;
  v176 = _swiftEmptyArrayStorage;
  v39 = v171;
  v6 = v171 & 0xC000000000000001;
  v5 = v171 & 0xFFFFFFFFFFFFFF8;
  v167 = IMPersistentMenuAttributeName;
  v13 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  a2 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  do
  {
    if (v6)
    {
      v66 = sub_F0FCC();
    }

    else
    {
      if (v65 >= *(v5 + 16))
      {
        goto LABEL_73;
      }

      v66 = *&v39[8 * v65 + 32];
    }

    v38 = v66;
    v67 = (v65 + 1);
    if (__OFADD__(v65, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v68 = [objc_opt_self() sharedInstance];
    if (!v68)
    {
      goto LABEL_84;
    }

    v10 = v68;
    v40 = [v68 isRBMEnabled];

    if ((v40 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v69 = [v38 properties];
    if (!v69)
    {
      goto LABEL_44;
    }

    v70 = v69;
    v71 = sub_F076C();

    v72 = sub_A93BC(v71);

    if (!v72)
    {
      goto LABEL_44;
    }

    v40 = objc_allocWithZone(IMPersistentMenu);
    v73 = sub_F075C();

    v10 = [v40 initWithDictionary:v73];

    if (v10)
    {

      v39 = v171;
      goto LABEL_25;
    }

    v74 = [v38 properties];
    v39 = v171;
    if (!v74)
    {
      goto LABEL_42;
    }

    v75 = v74;
    v76 = sub_F076C();

    *&v178 = sub_F07EC();
    *(&v178 + 1) = v77;
    sub_F0F3C();
    if (!*(v76 + 16) || (v78 = sub_51FA8(v177), (v79 & 1) == 0))
    {

      sub_54F34(v177);
LABEL_42:
      v40 = 0;
      v178 = 0u;
      v179 = 0u;
      goto LABEL_43;
    }

    sub_3FE38(*(v76 + 56) + 32 * v78, &v178);
    sub_54F34(v177);

    v80 = *(&v179 + 1);
    if (*(&v179 + 1))
    {
      v81 = sub_373E8(&v178, *(&v179 + 1));
      v162 = &v160;
      v161 = *(v80 - 8);
      v82 = *(v161 + 64);
      __chkstk_darwin(v81);
      v84 = &v160 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v85 + 16))(v84);
      v40 = sub_F121C();
      v86 = v84;
      v39 = v171;
      (*(v161 + 8))(v86, v80);
      sub_1EDC(&v178);
    }

    else
    {
      v40 = 0;
    }

LABEL_43:
    v10 = [objc_opt_self() isEmptyStamped:v40];
    swift_unknownObjectRelease();
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_44:
    v40 = &v176;
    sub_F0FFC();
    v10 = *(v176 + 16);
    sub_F104C();
    sub_F105C();
    sub_F100C();
LABEL_25:
    ++v65;
  }

  while (v67 != v175);

  v88 = v176;
  if ((v176 & 0x8000000000000000) == 0 && (v176 & 0x4000000000000000) == 0)
  {
    v89 = *(v176 + 16);
    v90 = v169;
    v91 = v170;
    v92 = v172;
    if (v89)
    {
      goto LABEL_51;
    }

LABEL_79:

    v149 = Logger.chatbot.unsafeMutableAddressor();
    (v91[2])(v92, v149, v90);
    v150 = v168;
    v151 = sub_F06AC();
    v152 = sub_F0CCC();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v177[0] = v154;
      *v153 = 136315138;
      v155 = [v150 uri];
      v156 = sub_F07EC();
      v158 = v157;

      v159 = sub_3E850(v156, v158, v177);

      *(v153 + 4) = v159;
      _os_log_impl(&dword_0, v151, v152, "Persistent Menu - Found no chat in need of persistent menu for %s ", v153, 0xCu);
      sub_1EDC(v154);
    }

    else
    {
    }

    v91[1](v92, v90);
    return;
  }

  v89 = sub_F10DC();
  v90 = v169;
  v91 = v170;
  v92 = v172;
  if (!v89)
  {
    goto LABEL_79;
  }

LABEL_51:
  v93 = objc_opt_self();
  if (v89 < 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v94 = v93;
  v95 = 0;
  do
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v96 = sub_F0FCC();
    }

    else
    {
      v96 = *(v88 + 8 * v95 + 32);
    }

    v97 = v96;
    ++v95;
    v98 = [v94 emptyStampProperty];
    v99 = sub_F076C();

    sub_51844(v99);

    v100 = sub_F075C();

    [v97 updateProperties:v100];

    v101 = v174;
  }

  while (v89 != v95);

  v103 = *(v164 + 16);
  v177[0] = 0;
  v104 = v173;
  v105 = v168;
  if (![v103 fetchRenderInformation:v173 forChatBot:v168 withOperationID:v101 withError:v177])
  {
    v126 = v177[0];
    sub_F015C();

    swift_willThrow();
    v5 = v169;
    v42 = v170;
    goto LABEL_63;
  }

  v106 = v177[0];
  v107 = Logger.chatbot.unsafeMutableAddressor();
  v108 = v170;
  v109 = v163;
  v110 = v169;
  (v170[2])(v163, v107, v169);
  v111 = v104;
  v112 = v105;
  v113 = sub_F06AC();
  v114 = sub_F0CCC();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v177[0] = swift_slowAlloc();
    *v115 = 136315650;
    v116 = [v112 extractedUri];
    v117 = sub_F07EC();
    v119 = v118;

    v120 = sub_3E850(v117, v119, v177);

    *(v115 + 4) = v120;
    *(v115 + 12) = 2080;
    v121 = [v111 label];
    if (v121)
    {
      v122 = v121;
      v123 = sub_F07EC();
      v125 = v124;
    }

    else
    {
      v125 = 0xEB0000000064656CLL;
      v123 = 0x6562616C2D746F6ELL;
    }

    v142 = sub_3E850(v123, v125, v177);

    *(v115 + 14) = v142;
    *(v115 + 22) = 2080;
    v143 = [v111 phoneNumber];
    if (v143)
    {
      v144 = v143;
      v145 = sub_F07EC();
      v147 = v146;
    }

    else
    {
      v147 = 0xE400000000000000;
      v145 = 1701736302;
    }

    v148 = sub_3E850(v145, v147, v177);

    *(v115 + 24) = v148;
    _os_log_impl(&dword_0, v113, v114, "Persistent Menu - Fetch chatbot info for %s, with %s number: %s", v115, 0x20u);
    swift_arrayDestroy();

    v108[1](v163, v169);
  }

  else
  {

    v108[1](v109, v110);
  }
}