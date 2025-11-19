uint64_t _s18TrustedPeersHelper14SupportAppViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v30 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = v9;
  v30 = type metadata accessor for SupportAppView(0);
  v20 = *(v30 + 28);
  v21 = *(v15 + 48);
  sub_100019C6C(a1 + v20, v19, &qword_10029D780, &qword_1002265D0);
  sub_100019C6C(a2 + v20, &v19[v21], &qword_10029D780, &qword_1002265D0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_100019C6C(v19, v14, &qword_10029D780, &qword_1002265D0);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v23 = &v19[v21];
      v24 = v31;
      (*(v5 + 32))(v31, v23, v4);
      sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
      v25 = sub_100216954();
      v26 = *(v5 + 8);
      v26(v24, v4);
      v26(v14, v4);
      sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v14, v4);
LABEL_9:
    sub_1000114D4(v19, &qword_100297E30, &qword_10021DA38);
    goto LABEL_12;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
LABEL_11:
  if (*(a1 + 16) == *(a2 + 16))
  {
    v29 = *(v30 + 24);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v27 = sub_100216954();
    return v27 & 1;
  }

LABEL_12:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s18TrustedPeersHelper14PeerDifferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_10001148C(&qword_100297E08, &qword_10021DA20);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_100019C6C(a1, &v27 - v19, &qword_100297E00, &qword_10021DA18);
  sub_100019C6C(a2, &v20[v21], &qword_100297E00, &qword_10021DA18);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_1000114D4(v20, &qword_100297E00, &qword_10021DA18);
LABEL_9:
      v25 = *(type metadata accessor for PeerDifference(0) + 20);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v23 = sub_100216954();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v20, v14, &qword_100297E00, &qword_10021DA18);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_1000F9228(v14, type metadata accessor for PeerDifference.OneOf_Operation);
LABEL_6:
    sub_1000114D4(v20, &qword_100297E08, &qword_10021DA20);
    goto LABEL_7;
  }

  sub_1000F89AC(&v20[v21], v9, type metadata accessor for PeerDifference.OneOf_Operation);
  v24 = _s18TrustedPeersHelper14PeerDifferenceV15OneOf_OperationO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_1000F9228(v9, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000F9228(v14, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000114D4(v20, &qword_100297E00, &qword_10021DA18);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v131 = *(v4 - 8);
  v132 = v4;
  v5 = *(v131 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v128 = &v123 - v12;
  v130 = sub_10001148C(&qword_10029CDE0, &qword_100225D70);
  v13 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130, v14);
  v16 = &v123 - v15;
  v17 = type metadata accessor for SignedRecoveryVoucher(0);
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  __chkstk_darwin(v17, v19);
  v129 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001148C(&qword_1002985B0, &qword_10021E818);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  v133 = &v123 - v24;
  v134 = sub_10001148C(&qword_10029CDE8, &qword_100225D78);
  v25 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134, v26);
  v137 = &v123 - v27;
  v28 = type metadata accessor for SignedPeerDynamicInfo(0);
  v142 = *(v28 - 8);
  v143 = v28;
  v29 = *(v142 + 64);
  __chkstk_darwin(v28, v30);
  v138 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  v139 = &v123 - v35;
  v141 = sub_10001148C(&qword_10029CDC0, &qword_100225D50);
  v36 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141, v37);
  v144 = &v123 - v38;
  v149 = type metadata accessor for SignedPeerStableInfo(0);
  v147 = *(v149 - 8);
  v39 = *(v147 + 64);
  __chkstk_darwin(v149, v40);
  v140 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8, v44);
  v145 = &v123 - v45;
  v146 = sub_10001148C(&qword_10029CDC8, &qword_100225D58);
  v46 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146, v47);
  v148 = &v123 - v48;
  v49 = type metadata accessor for SignedPeerPermanentInfo(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49, v52);
  v54 = &v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8, v57);
  v59 = &v123 - v58;
  v60 = sub_10001148C(&qword_10029CDF0, &unk_100225D80);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60, v62);
  v64 = &v123 - v63;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v124 = v8;
  v127 = v16;
  v65 = a2;
  v126 = type metadata accessor for Peer(0);
  v66 = *(v126 + 28);
  v67 = *(v60 + 48);
  v125 = a1;
  sub_100019C6C(a1 + v66, v64, &qword_10029DA00, &unk_10021E800);
  v68 = v65 + v66;
  v69 = v65;
  sub_100019C6C(v68, &v64[v67], &qword_10029DA00, &unk_10021E800);
  v70 = *(v50 + 48);
  if (v70(v64, 1, v49) == 1)
  {
    if (v70(&v64[v67], 1, v49) == 1)
    {
      sub_1000114D4(v64, &qword_10029DA00, &unk_10021E800);
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  sub_100019C6C(v64, v59, &qword_10029DA00, &unk_10021E800);
  if (v70(&v64[v67], 1, v49) == 1)
  {
    sub_1000F9228(v59, type metadata accessor for SignedPeerPermanentInfo);
LABEL_23:
    v102 = &qword_10029CDF0;
    v103 = &unk_100225D80;
LABEL_29:
    v106 = v64;
LABEL_30:
    sub_1000114D4(v106, v102, v103);
    goto LABEL_31;
  }

  sub_1000F89AC(&v64[v67], v54, type metadata accessor for SignedPeerPermanentInfo);
  if ((sub_100052F18(*v59, *(v59 + 1), *v54, *(v54 + 1)) & 1) == 0 || (sub_100052F18(*(v59 + 2), *(v59 + 3), *(v54 + 2), *(v54 + 3)) & 1) == 0)
  {
    sub_1000F9228(v54, type metadata accessor for SignedPeerPermanentInfo);
    sub_1000F9228(v59, type metadata accessor for SignedPeerPermanentInfo);
    v102 = &qword_10029DA00;
    v103 = &unk_10021E800;
    goto LABEL_29;
  }

  v104 = *(v49 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v105 = sub_100216954();
  sub_1000F9228(v54, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000F9228(v59, type metadata accessor for SignedPeerPermanentInfo);
  sub_1000114D4(v64, &qword_10029DA00, &unk_10021E800);
  if ((v105 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_7:
  v71 = v126;
  v72 = *(v126 + 32);
  v73 = *(v146 + 48);
  v74 = v125;
  v75 = v148;
  sub_100019C6C(v125 + v72, v148, &qword_1002985A8, &unk_100226650);
  v76 = v65 + v72;
  v77 = v75;
  sub_100019C6C(v76, v75 + v73, &qword_1002985A8, &unk_100226650);
  v78 = *(v147 + 48);
  v79 = v75;
  v80 = v149;
  if (v78(v79, 1, v149) == 1)
  {
    v81 = v78(v77 + v73, 1, v80);
    v82 = v127;
    v83 = v124;
    if (v81 == 1)
    {
      sub_1000114D4(v77, &qword_1002985A8, &unk_100226650);
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v108 = v145;
  sub_100019C6C(v77, v145, &qword_1002985A8, &unk_100226650);
  v109 = v78(v77 + v73, 1, v80);
  v82 = v127;
  v83 = v124;
  if (v109 == 1)
  {
    sub_1000F9228(v108, type metadata accessor for SignedPeerStableInfo);
LABEL_35:
    v102 = &qword_10029CDC8;
    v103 = &qword_100225D58;
    v106 = v77;
    goto LABEL_30;
  }

  v110 = v77 + v73;
  v111 = v140;
  sub_1000F89AC(v110, v140, type metadata accessor for SignedPeerStableInfo);
  if ((sub_100052F18(*v108, *(v108 + 8), *v111, *(v111 + 8)) & 1) == 0 || (sub_100052F18(*(v108 + 16), *(v108 + 24), *(v111 + 16), *(v111 + 24)) & 1) == 0)
  {
    sub_1000F9228(v111, type metadata accessor for SignedPeerStableInfo);
    sub_1000F9228(v108, type metadata accessor for SignedPeerStableInfo);
    v102 = &qword_1002985A8;
    v103 = &unk_100226650;
    v106 = v77;
    goto LABEL_30;
  }

  v112 = *(v149 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v112) = sub_100216954();
  sub_1000F9228(v111, type metadata accessor for SignedPeerStableInfo);
  sub_1000F9228(v108, type metadata accessor for SignedPeerStableInfo);
  sub_1000114D4(v77, &qword_1002985A8, &unk_100226650);
  if ((v112 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  v84 = v71[9];
  v85 = *(v141 + 48);
  v86 = v144;
  sub_100019C6C(v74 + v84, v144, &unk_10029D760, &qword_10021E810);
  sub_100019C6C(v69 + v84, v86 + v85, &unk_10029D760, &qword_10021E810);
  v87 = v143;
  v88 = *(v142 + 48);
  if (v88(v86, 1, v143) == 1)
  {
    if (v88(v86 + v85, 1, v87) == 1)
    {
      sub_1000114D4(v86, &unk_10029D760, &qword_10021E810);
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  v113 = v139;
  sub_100019C6C(v86, v139, &unk_10029D760, &qword_10021E810);
  if (v88(v86 + v85, 1, v87) == 1)
  {
    sub_1000F9228(v113, type metadata accessor for SignedPeerDynamicInfo);
LABEL_43:
    v102 = &qword_10029CDC0;
    v103 = &qword_100225D50;
    v106 = v86;
    goto LABEL_30;
  }

  v114 = v86 + v85;
  v115 = v138;
  sub_1000F89AC(v114, v138, type metadata accessor for SignedPeerDynamicInfo);
  if ((sub_100052F18(*v113, *(v113 + 8), *v115, *(v115 + 8)) & 1) == 0 || (sub_100052F18(*(v113 + 16), *(v113 + 24), *(v115 + 16), *(v115 + 24)) & 1) == 0)
  {
    sub_1000F9228(v115, type metadata accessor for SignedPeerDynamicInfo);
    sub_1000F9228(v113, type metadata accessor for SignedPeerDynamicInfo);
    v102 = &unk_10029D760;
    v103 = &qword_10021E810;
    v106 = v86;
    goto LABEL_30;
  }

  v116 = *(v87 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v116) = sub_100216954();
  sub_1000F9228(v115, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000F9228(v113, type metadata accessor for SignedPeerDynamicInfo);
  sub_1000114D4(v86, &unk_10029D760, &qword_10021E810);
  v82 = v127;
  if ((v116 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((sub_100051F9C(v74[2], v69[2]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v89 = v71[10];
  v90 = *(v134 + 48);
  v91 = v137;
  sub_100019C6C(v74 + v89, v137, &qword_1002985B0, &qword_10021E818);
  v92 = v69 + v89;
  v93 = v91;
  sub_100019C6C(v92, v91 + v90, &qword_1002985B0, &qword_10021E818);
  v94 = v136;
  v95 = *(v135 + 48);
  if (v95(v91, 1, v136) == 1)
  {
    if (v95(v91 + v90, 1, v94) == 1)
    {
      sub_1000114D4(v91, &qword_1002985B0, &qword_10021E818);
      goto LABEL_17;
    }

    goto LABEL_51;
  }

  v117 = v133;
  sub_100019C6C(v93, v133, &qword_1002985B0, &qword_10021E818);
  if (v95(v93 + v90, 1, v94) == 1)
  {
    sub_1000F9228(v117, type metadata accessor for SignedRecoveryVoucher);
LABEL_51:
    v102 = &qword_10029CDE8;
    v103 = &qword_100225D78;
    v106 = v93;
    goto LABEL_30;
  }

  v118 = v93 + v90;
  v119 = v129;
  sub_1000F89AC(v118, v129, type metadata accessor for SignedRecoveryVoucher);
  if ((sub_100052F18(*v117, *(v117 + 8), *v119, *(v119 + 8)) & 1) == 0 || (sub_100052F18(*(v117 + 16), *(v117 + 24), *(v119 + 16), *(v119 + 24)) & 1) == 0)
  {
    sub_1000F9228(v119, type metadata accessor for SignedRecoveryVoucher);
    sub_1000F9228(v117, type metadata accessor for SignedRecoveryVoucher);
    v102 = &qword_1002985B0;
    v103 = &qword_10021E818;
    v106 = v93;
    goto LABEL_30;
  }

  v120 = *(v94 + 24);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  LOBYTE(v120) = sub_100216954();
  sub_1000F9228(v119, type metadata accessor for SignedRecoveryVoucher);
  sub_1000F9228(v117, type metadata accessor for SignedRecoveryVoucher);
  sub_1000114D4(v93, &qword_1002985B0, &qword_10021E818);
  v71 = v126;
  if ((v120 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v96 = v71[11];
  v97 = *(v130 + 48);
  sub_100019C6C(v74 + v96, v82, &unk_10029D7B0, &unk_10021E820);
  sub_100019C6C(v69 + v96, v82 + v97, &unk_10029D7B0, &unk_10021E820);
  v98 = v132;
  v99 = *(v131 + 48);
  if (v99(v82, 1, v132) != 1)
  {
    v121 = v128;
    sub_100019C6C(v82, v128, &unk_10029D7B0, &unk_10021E820);
    if (v99(v82 + v97, 1, v98) == 1)
    {
      sub_1000F9228(v121, type metadata accessor for SignedCustodianRecoveryKey);
      goto LABEL_59;
    }

    sub_1000F89AC(v82 + v97, v83, type metadata accessor for SignedCustodianRecoveryKey);
    if ((sub_100052F18(*v121, *(v121 + 8), *v83, *(v83 + 8)) & 1) == 0 || (sub_100052F18(*(v121 + 16), *(v121 + 24), *(v83 + 16), *(v83 + 24)) & 1) == 0)
    {
      sub_1000F9228(v83, type metadata accessor for SignedCustodianRecoveryKey);
      sub_1000F9228(v121, type metadata accessor for SignedCustodianRecoveryKey);
      v102 = &unk_10029D7B0;
      v103 = &unk_10021E820;
      v106 = v82;
      goto LABEL_30;
    }

    v122 = *(v98 + 24);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    LOBYTE(v122) = sub_100216954();
    sub_1000F9228(v83, type metadata accessor for SignedCustodianRecoveryKey);
    sub_1000F9228(v121, type metadata accessor for SignedCustodianRecoveryKey);
    sub_1000114D4(v82, &unk_10029D7B0, &unk_10021E820);
    if (v122)
    {
      goto LABEL_20;
    }

LABEL_31:
    v101 = 0;
    return v101 & 1;
  }

  if (v99(v82 + v97, 1, v98) != 1)
  {
LABEL_59:
    v102 = &qword_10029CDE0;
    v103 = &qword_100225D70;
    v106 = v82;
    goto LABEL_30;
  }

  sub_1000114D4(v82, &unk_10029D7B0, &unk_10021E820);
LABEL_20:
  v100 = v71[6];
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v101 = sub_100216954();
  return v101 & 1;
}

uint64_t _s18TrustedPeersHelper14PeerDifferenceV15OneOf_OperationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Peer(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v44 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7, v9);
  v43 = (&v43 - v11);
  __chkstk_darwin(v10, v12);
  v14 = (&v43 - v13);
  v15 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v18, v21);
  v24 = (&v43 - v23);
  __chkstk_darwin(v22, v25);
  v27 = (&v43 - v26);
  v28 = sub_10001148C(&qword_10029CDF8, &unk_100225D90);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v33 = &v43 - v32;
  v34 = *(v31 + 56);
  sub_1000F91C0(a1, &v43 - v32, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1000F91C0(a2, &v33[v34], type metadata accessor for PeerDifference.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000F91C0(v33, v24, type metadata accessor for PeerDifference.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = &v33[v34];
        v37 = v43;
        sub_1000F89AC(v36, v43, type metadata accessor for Peer);
        v38 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v24, v37);
        sub_1000F9228(v37, type metadata accessor for Peer);
        v39 = v24;
LABEL_12:
        sub_1000F9228(v39, type metadata accessor for Peer);
        sub_1000F9228(v33, type metadata accessor for PeerDifference.OneOf_Operation);
        return v38 & 1;
      }

      v20 = v24;
    }

    else
    {
      sub_1000F91C0(v33, v20, type metadata accessor for PeerDifference.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v40 = &v33[v34];
        v41 = v44;
        sub_1000F89AC(v40, v44, type metadata accessor for Peer);
        v38 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v20, v41);
        sub_1000F9228(v41, type metadata accessor for Peer);
        v39 = v20;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1000F91C0(v33, v27, type metadata accessor for PeerDifference.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000F89AC(&v33[v34], v14, type metadata accessor for Peer);
      v38 = _s18TrustedPeersHelper4PeerV2eeoiySbAC_ACtFZ_0(v27, v14);
      sub_1000F9228(v14, type metadata accessor for Peer);
      v39 = v27;
      goto LABEL_12;
    }

    v20 = v27;
  }

  sub_1000F9228(v20, type metadata accessor for Peer);
  sub_1000114D4(v33, &qword_10029CDF8, &unk_100225D90);
  v38 = 0;
  return v38 & 1;
}

uint64_t _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1002171A4() & 1) == 0 || (sub_10005274C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_100052F18(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0 || (sub_100052F18(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Changes(0) + 36);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper13ResetResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Changes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v27 - v12;
  v14 = sub_10001148C(&qword_100297DF8, &qword_10021DA10);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v17);
  v19 = v27 - v18;
  v20 = *(type metadata accessor for ResetResponse(0) + 20);
  v21 = *(v15 + 56);
  v27[1] = a1;
  sub_100019C6C(a1 + v20, v19, &unk_10029D750, &qword_10021E850);
  sub_100019C6C(a2 + v20, &v19[v21], &unk_10029D750, &qword_10021E850);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000114D4(v19, &unk_10029D750, &qword_10021E850);
LABEL_9:
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v23 = sub_100216954();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_100019C6C(v19, v13, &unk_10029D750, &qword_10021E850);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1000F9228(v13, type metadata accessor for Changes);
LABEL_6:
    sub_1000114D4(v19, &qword_100297DF8, &qword_10021DA10);
    goto LABEL_7;
  }

  v24 = v27[0];
  sub_1000F89AC(&v19[v21], v27[0], type metadata accessor for Changes);
  v25 = _s18TrustedPeersHelper7ChangesV2eeoiySbAC_ACtFZ_0(v13, v24);
  sub_1000F9228(v24, type metadata accessor for Changes);
  sub_1000F9228(v13, type metadata accessor for Changes);
  sub_1000114D4(v19, &unk_10029D750, &qword_10021E850);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1000F7CB8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Metrics(0);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  __chkstk_darwin(v6, v8);
  v64 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v65 = (&v61 - v13);
  v66 = sub_10001148C(&qword_10029CD78, &qword_100225CE8);
  v14 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66, v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for AccountInfo(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v28 = (&v61 - v27);
  v29 = sub_10001148C(&qword_10029CD70, &qword_100225CE0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29, v31);
  v33 = &v61 - v32;
  v34 = *a1;
  v35 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v35 > 3)
    {
      if (v35 > 5)
      {
        if (v35 == 6)
        {
          if (v34 != 6)
          {
            goto LABEL_59;
          }
        }

        else if (v34 != 7)
        {
          goto LABEL_59;
        }
      }

      else if (v35 == 4)
      {
        if (v34 != 4)
        {
          goto LABEL_59;
        }
      }

      else if (v34 != 5)
      {
        goto LABEL_59;
      }
    }

    else if (v35 > 1)
    {
      if (v35 == 2)
      {
        if (v34 != 2)
        {
          goto LABEL_59;
        }
      }

      else if (v34 != 3)
      {
        goto LABEL_59;
      }
    }

    else if (v35)
    {
      if (v34 != 1)
      {
        goto LABEL_59;
      }
    }

    else if (v34)
    {
      goto LABEL_59;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_59;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_1002171A4() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_1002171A4() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_59;
  }

  v63 = v17;
  v62 = a3(0);
  v36 = *(v62 + 40);
  v37 = *(v29 + 48);
  sub_100019C6C(a1 + v36, v33, &unk_10029D6F0, &qword_100226B40);
  v38 = a2 + v36;
  v39 = v37;
  sub_100019C6C(v38, &v33[v37], &unk_10029D6F0, &qword_100226B40);
  v40 = *(v19 + 48);
  if (v40(v33, 1, v18) == 1)
  {
    v41 = v40(&v33[v39], 1, v18);
    v42 = v63;
    if (v41 == 1)
    {
      sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
      goto LABEL_18;
    }

    goto LABEL_33;
  }

  sub_100019C6C(v33, v28, &unk_10029D6F0, &qword_100226B40);
  v48 = v40(&v33[v39], 1, v18);
  v42 = v63;
  if (v48 == 1)
  {
    sub_1000F9228(v28, type metadata accessor for AccountInfo);
LABEL_33:
    v49 = &qword_10029CD70;
    v50 = &qword_100225CE0;
LABEL_34:
    v51 = v33;
    goto LABEL_35;
  }

  sub_1000F89AC(&v33[v39], v23, type metadata accessor for AccountInfo);
  if (*v28 != *v23)
  {
    sub_1000F9228(v23, type metadata accessor for AccountInfo);
    sub_1000F9228(v28, type metadata accessor for AccountInfo);
    v49 = &unk_10029D6F0;
    v50 = &qword_100226B40;
    goto LABEL_34;
  }

  v52 = *(v18 + 20);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  v53 = sub_100216954();
  sub_1000F9228(v23, type metadata accessor for AccountInfo);
  sub_1000F9228(v28, type metadata accessor for AccountInfo);
  sub_1000114D4(v33, &unk_10029D6F0, &qword_100226B40);
  if ((v53 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_18:
  v43 = v62;
  v44 = *(v62 + 44);
  v45 = *(v66 + 48);
  sub_100019C6C(a1 + v44, v42, &qword_100297FE0, &unk_10021E7F0);
  sub_100019C6C(a2 + v44, v42 + v45, &qword_100297FE0, &unk_10021E7F0);
  v46 = v68;
  v47 = *(v67 + 48);
  if (v47(v42, 1, v68) != 1)
  {
    v54 = v65;
    sub_100019C6C(v42, v65, &qword_100297FE0, &unk_10021E7F0);
    if (v47(v42 + v45, 1, v46) == 1)
    {
      sub_1000F9228(v54, type metadata accessor for Metrics);
      goto LABEL_49;
    }

    v55 = v64;
    sub_1000F89AC(v42 + v45, v64, type metadata accessor for Metrics);
    if (*v54 == *v55 && v54[1] == v55[1] || (sub_1002171A4()) && (v54[2] == v55[2] && v54[3] == v55[3] || (sub_1002171A4()))
    {
      v56 = *(v46 + 24);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v57 = sub_100216954();
      sub_1000F9228(v55, type metadata accessor for Metrics);
      sub_1000F9228(v54, type metadata accessor for Metrics);
      sub_1000114D4(v42, &qword_100297FE0, &unk_10021E7F0);
      if ((v57 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    sub_1000F9228(v55, type metadata accessor for Metrics);
    sub_1000F9228(v54, type metadata accessor for Metrics);
    v49 = &qword_100297FE0;
    v50 = &unk_10021E7F0;
    v51 = v42;
LABEL_35:
    sub_1000114D4(v51, v49, v50);
    goto LABEL_59;
  }

  if (v47(v42 + v45, 1, v46) != 1)
  {
LABEL_49:
    v49 = &qword_10029CD78;
    v50 = &qword_100225CE8;
    v51 = v42;
    goto LABEL_35;
  }

  sub_1000114D4(v42, &qword_100297FE0, &unk_10021E7F0);
LABEL_58:
  if (*(a1 + 49) == *(a2 + 49))
  {
    v60 = *(v43 + 36);
    sub_1002164D4();
    sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
    v58 = sub_100216954();
    return v58 & 1;
  }

LABEL_59:
  v58 = 0;
  return v58 & 1;
}

uint64_t _s18TrustedPeersHelper10PCSServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_100052F18(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v4 && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PCSService(0) + 28);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t _s18TrustedPeersHelper6BottleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_100052F18(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_100052F18(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (sub_100052F18(a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (sub_100052F18(a1[6], a1[7], a2[6], a2[7]) & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1002171A4() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1002171A4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Bottle(0) + 40);
  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F8778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1002164D4();
  sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
  return sub_100216954() & 1;
}

uint64_t sub_1000F89AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s18TrustedPeersHelper04IdmsA14DevicesVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1002164A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_10029D780, &qword_1002265D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = sub_10001148C(&qword_100297E30, &qword_10021DA38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v30 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1002171A4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v9;
  v31 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v20 = *(v31 + 24);
  v21 = *(v15 + 48);
  sub_100019C6C(a1 + v20, v19, &qword_10029D780, &qword_1002265D0);
  sub_100019C6C(a2 + v20, &v19[v21], &qword_10029D780, &qword_1002265D0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
LABEL_12:
      v28 = *(v31 + 20);
      sub_1002164D4();
      sub_1000F9F28(&qword_100297DF0, &type metadata accessor for UnknownStorage);
      v23 = sub_100216954();
      return v23 & 1;
    }

    goto LABEL_9;
  }

  sub_100019C6C(v19, v14, &qword_10029D780, &qword_1002265D0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_9:
    sub_1000114D4(v19, &qword_100297E30, &qword_10021DA38);
    goto LABEL_10;
  }

  v24 = &v19[v21];
  v25 = v30;
  (*(v5 + 32))(v30, v24, v4);
  sub_1000F9F28(&qword_100297E38, &type metadata accessor for Google_Protobuf_Timestamp);
  v26 = sub_100216954();
  v27 = *(v5 + 8);
  v27(v25, v4);
  v27(v14, v4);
  sub_1000114D4(v19, &qword_10029D780, &qword_1002265D0);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1000F90F0(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 16:
        return 5;
      case 8:
        return 4;
      case 4:
        return 3;
    }
  }

  return result;
}

uint64_t sub_1000F91C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F9228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F960C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 88) = 0;
  *(v1 + 80) = 0;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  *(v1 + 24) = 1;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 248) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v7;
  swift_beginAccess();
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v9;
  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v10;
  swift_beginAccess();
  v11 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v11;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v11;
  swift_beginAccess();
  v12 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v12;
  swift_beginAccess();
  v13 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v13;
  swift_beginAccess();
  v14 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v14;
  swift_beginAccess();
  v15 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v15;
  swift_beginAccess();
  LOBYTE(v15) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v15;
  swift_beginAccess();
  v16 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v16;
  swift_beginAccess();
  v17 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v17;
  swift_beginAccess();
  v18 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v18;
  swift_beginAccess();
  v19 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v19;
  swift_beginAccess();
  v20 = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v20;
  swift_beginAccess();
  v21 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 184) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 185);
  swift_beginAccess();
  *(v1 + 185) = v21;
  swift_beginAccess();
  v22 = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 192) = v22;
  swift_beginAccess();
  v23 = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v23;
  swift_beginAccess();
  v24 = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 208) = v24;
  swift_beginAccess();
  v25 = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 225);
  swift_beginAccess();
  *(v1 + 225) = v25;
  swift_beginAccess();
  v26 = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v26;
  swift_beginAccess();
  v27 = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v27;
  swift_beginAccess();
  v28 = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v28;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = a1;
  return v1;
}

uint64_t sub_1000F9E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001148C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000F9F28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F9F70()
{
  result = qword_100298708;
  if (!qword_100298708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298708);
  }

  return result;
}

unint64_t sub_1000F9FC4()
{
  result = qword_100298768;
  if (!qword_100298768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298768);
  }

  return result;
}

unint64_t sub_1000FA038()
{
  result = qword_100298810;
  if (!qword_100298810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298810);
  }

  return result;
}

unint64_t sub_1000FA08C()
{
  result = qword_100298890;
  if (!qword_100298890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298890);
  }

  return result;
}

unint64_t sub_1000FA0E0()
{
  result = qword_100298898;
  if (!qword_100298898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298898);
  }

  return result;
}

unint64_t sub_1000FA134()
{
  result = qword_1002988A0;
  if (!qword_1002988A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002988A0);
  }

  return result;
}

unint64_t sub_1000FA188()
{
  result = qword_1002988C0;
  if (!qword_1002988C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002988C0);
  }

  return result;
}

unint64_t sub_1000FA1FC()
{
  result = qword_100298900;
  if (!qword_100298900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298900);
  }

  return result;
}

unint64_t sub_1000FA250()
{
  result = qword_100298908;
  if (!qword_100298908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298908);
  }

  return result;
}

uint64_t sub_1000FA2C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000FA300()
{
  result = qword_100298988;
  if (!qword_100298988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298988);
  }

  return result;
}

unint64_t sub_1000FA358()
{
  result = qword_100298990;
  if (!qword_100298990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298990);
  }

  return result;
}

unint64_t sub_1000FA3E0()
{
  result = qword_1002989A8;
  if (!qword_1002989A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989A8);
  }

  return result;
}

unint64_t sub_1000FA438()
{
  result = qword_1002989B0;
  if (!qword_1002989B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989B0);
  }

  return result;
}

unint64_t sub_1000FA490()
{
  result = qword_1002989B8;
  if (!qword_1002989B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989B8);
  }

  return result;
}

unint64_t sub_1000FA518()
{
  result = qword_1002989D0;
  if (!qword_1002989D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989D0);
  }

  return result;
}

unint64_t sub_1000FA570()
{
  result = qword_1002989D8;
  if (!qword_1002989D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989D8);
  }

  return result;
}

unint64_t sub_1000FA5C8()
{
  result = qword_1002989E0;
  if (!qword_1002989E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989E0);
  }

  return result;
}

unint64_t sub_1000FA650()
{
  result = qword_1002989F8;
  if (!qword_1002989F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002989F8);
  }

  return result;
}

unint64_t sub_1000FA6A8()
{
  result = qword_100298A00;
  if (!qword_100298A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A00);
  }

  return result;
}

unint64_t sub_1000FA700()
{
  result = qword_100298A08;
  if (!qword_100298A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A08);
  }

  return result;
}

unint64_t sub_1000FA788()
{
  result = qword_100298A20;
  if (!qword_100298A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A20);
  }

  return result;
}

unint64_t sub_1000FA7E0()
{
  result = qword_100298A28;
  if (!qword_100298A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A28);
  }

  return result;
}

unint64_t sub_1000FA838()
{
  result = qword_100298A30;
  if (!qword_100298A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A30);
  }

  return result;
}

unint64_t sub_1000FA8C0()
{
  result = qword_100298A48;
  if (!qword_100298A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A48);
  }

  return result;
}

unint64_t sub_1000FA918()
{
  result = qword_100298A50;
  if (!qword_100298A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A50);
  }

  return result;
}

unint64_t sub_1000FA970()
{
  result = qword_100298A58;
  if (!qword_100298A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A58);
  }

  return result;
}

unint64_t sub_1000FA9F8()
{
  result = qword_100298A70;
  if (!qword_100298A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A70);
  }

  return result;
}

unint64_t sub_1000FAA50()
{
  result = qword_100298A78;
  if (!qword_100298A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A78);
  }

  return result;
}

unint64_t sub_1000FAAA8()
{
  result = qword_100298A80;
  if (!qword_100298A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A80);
  }

  return result;
}

unint64_t sub_1000FAB30()
{
  result = qword_100298A98;
  if (!qword_100298A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298A98);
  }

  return result;
}

unint64_t sub_1000FAB88()
{
  result = qword_100298AA0;
  if (!qword_100298AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AA0);
  }

  return result;
}

unint64_t sub_1000FABE0()
{
  result = qword_100298AA8;
  if (!qword_100298AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AA8);
  }

  return result;
}

unint64_t sub_1000FAC68()
{
  result = qword_100298AC0;
  if (!qword_100298AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AC0);
  }

  return result;
}

unint64_t sub_1000FACC0()
{
  result = qword_100298AC8;
  if (!qword_100298AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AC8);
  }

  return result;
}

unint64_t sub_1000FAD18()
{
  result = qword_100298AD0;
  if (!qword_100298AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AD0);
  }

  return result;
}

unint64_t sub_1000FADA0()
{
  result = qword_100298AE8;
  if (!qword_100298AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AE8);
  }

  return result;
}

unint64_t sub_1000FADF8()
{
  result = qword_100298AF0;
  if (!qword_100298AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AF0);
  }

  return result;
}

unint64_t sub_1000FAE50()
{
  result = qword_100298AF8;
  if (!qword_100298AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298AF8);
  }

  return result;
}

unint64_t sub_1000FAED8()
{
  result = qword_100298B10;
  if (!qword_100298B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B10);
  }

  return result;
}

unint64_t sub_1000FAF30()
{
  result = qword_100298B18;
  if (!qword_100298B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B18);
  }

  return result;
}

unint64_t sub_1000FAF88()
{
  result = qword_100298B20;
  if (!qword_100298B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B20);
  }

  return result;
}

uint64_t sub_1000FB00C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011534(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FB064()
{
  result = qword_100298B38;
  if (!qword_100298B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298B38);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ViewKeyClass(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100100118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1001001E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100308()
{
  sub_100100534(319, &qword_100299590, type metadata accessor for SignedVoucher, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &qword_100299598, type metadata accessor for SignedPeerPermanentInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100100534(319, &qword_1002995B0, type metadata accessor for SignedRecoveryVoucher, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100100534(319, &unk_1002995B8, type metadata accessor for SignedCustodianRecoveryKey, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
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

void sub_100100534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100100644()
{
  result = type metadata accessor for Peer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001006D0()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010079C()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100100894()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_100299990, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100100978()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100100A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100100B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100BC0()
{
  sub_100100534(319, &unk_100299B68, type metadata accessor for PeerDifference, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100100D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1002164D4();
  if (v8 <= 0x3F)
  {
    sub_100100534(319, a5, a6, &type metadata accessor for Optional);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100100F80()
{
  sub_100100534(319, &qword_10029A218, type metadata accessor for TLKShare, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &qword_10029A220, type metadata accessor for ViewKeys, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1002164D4();
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100100534(319, &unk_10029A228, type metadata accessor for IdmsTrustedDevicesVersion, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
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

void sub_100101244()
{
  sub_100100534(319, &qword_10029A218, type metadata accessor for TLKShare, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &qword_10029A220, type metadata accessor for ViewKeys, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1002164D4();
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
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

void sub_100101484()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100101728(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D750, &qword_10021E850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10010186C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10001148C(&unk_10029D750, &qword_10021E850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10010199C()
{
  sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_100299F28, type metadata accessor for Changes, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100101AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1002164D4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = sub_10001148C(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100101BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1002164D4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = sub_10001148C(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_100101D04()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_100299F28, type metadata accessor for Changes, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100101E14()
{
  sub_100100534(319, &qword_10029AA08, type metadata accessor for EscrowPair, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_10029AA10, type metadata accessor for EscrowInformation, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1002164D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100101F38(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1001020D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_1001022D8()
{
  sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_10029ABF0, type metadata accessor for ViewKeysRecords, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100102440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100102500(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001025D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_100100534(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1002164D4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100102690()
{
  sub_1001027C8();
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001027C8()
{
  if (!qword_10029ADC8)
  {
    v0 = sub_100216B74();
    if (!v1)
    {
      atomic_store(v0, &qword_10029ADC8);
    }
  }
}

uint64_t sub_10010282C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_1001029C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void sub_100102B48()
{
  sub_1001027C8();
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100102CB0()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100102DE4()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_10029B060, type metadata accessor for EscrowProxyFederationMoveRecordRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100102EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = sub_10001148C(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t sub_100103034(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1002164D4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = sub_10001148C(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_100103174()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100103268()
{
  sub_100100534(319, &unk_10029B1A8, type metadata accessor for SupportAppView, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001033A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1002164D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_10010350C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_1001036A0()
{
  sub_100100534(319, &unk_10029B2F8, type metadata accessor for SupportAppDevice, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1002164D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10010378C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_100103924(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_100103AA8()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100103C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1002164D4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100103C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100103D20()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100103DBC()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &unk_10029B568, type metadata accessor for EscrowInformation.Metadata, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100103F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002164D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100103FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1002164D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001040A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1002164D4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10010415C()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100104270()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010440C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001044CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100104570()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001045F8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_100104790(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1002164D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_100104934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_100100534(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_1002164D4();
    if (v6 <= 0x3F)
    {
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v7 <= 0x3F)
      {
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100104A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1002164D4();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = sub_10001148C(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = sub_10001148C(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t sub_100104BFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1002164D4();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = sub_10001148C(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = sub_10001148C(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void sub_100104DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1002164D4();
  if (v11 <= 0x3F)
  {
    sub_100100534(319, a4, a5, &type metadata accessor for Optional);
    if (v12 <= 0x3F)
    {
      sub_100100534(319, a6, a7, &type metadata accessor for Optional);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100104EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1002164D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100104F7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1002164D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100105040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_100100534(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_100100534(319, &unk_10029A050, &type metadata accessor for Ckcode_RecordTransport, &type metadata accessor for Array);
    if (v6 <= 0x3F)
    {
      sub_1002164D4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010515C()
{
  sub_1002164D4();
  if (v0 <= 0x3F)
  {
    sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100105274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001052F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002164D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100105364()
{
  result = sub_1002164D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001053D8()
{
  sub_100100534(319, &unk_10029BD58, type metadata accessor for ViewKey, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001054B0()
{
  sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100100534(319, &unk_10029BEB8, type metadata accessor for EscrowInformation, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001055EC()
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100105804()
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_100100534(319, &qword_10029BEB0, type metadata accessor for Bottle, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_100100534(319, &unk_10029A228, type metadata accessor for IdmsTrustedDevicesVersion, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100105A94()
{
  sub_100100534(319, &unk_10029BFD0, type metadata accessor for Peer, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_100100534(319, &qword_1002995A0, type metadata accessor for SignedPeerStableInfo, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_100100534(319, &qword_1002995A8, type metadata accessor for SignedPeerDynamicInfo, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100100534(319, &unk_100299E78, type metadata accessor for Metrics, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_100100534(319, &qword_100299E70, type metadata accessor for AccountInfo, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100105D24()
{
  sub_100100534(319, &qword_10029C968, type metadata accessor for EscrowInformation.Metadata.ClientMetadata, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100100534(319, &unk_1002994F0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100100534(319, &unk_10029C970, type metadata accessor for PasscodeGeneration, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100105EEC()
{
  result = qword_10029CD60;
  if (!qword_10029CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CD60);
  }

  return result;
}

unint64_t sub_100105F40()
{
  result = qword_10029CD68;
  if (!qword_10029CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CD68);
  }

  return result;
}

Swift::Int StreamingEncoderError.hashValue.getter(char a1)
{
  sub_100217264();
  sub_100217274(a1 & 1);
  return sub_100217284();
}

Swift::Int sub_1001062A0()
{
  v1 = *v0;
  sub_100217264();
  sub_100217274(v1);
  return sub_100217284();
}

Swift::Int sub_100106314()
{
  v1 = *v0;
  sub_100217264();
  sub_100217274(v1);
  return sub_100217284();
}

unint64_t sub_10010635C()
{
  result = qword_10029CE18;
  if (!qword_10029CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029CE18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamingEncoderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamingEncoderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100106528(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100216774();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  if (a1 < 0)
  {

    sub_100107D3C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v28 = *(v6 + 32);

    type metadata accessor for StreamingEncoderBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v15;
    v33 = a2;
    *(v6 + 16) = a1;
    *(v6 + 20) = 0;
    v34 = a3;
    sub_100107C94();
    v18 = sub_1002167C4();
    if (v19)
    {
      v20 = v18;

      v35 = v20;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v21 = v20;

      sub_100216764();
      swift_errorRetain();
      v22 = sub_100216754();
      v23 = sub_100216C74();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "StreamingEncoder could not write initial byte: %@", v24, 0xCu);
        sub_1000114D4(v25, &qword_10029D580, &unk_10021CCC0);
      }

      (*(v32 + 8))(v17, v12);
      swift_willThrow();
    }

    else
    {

      v29 = *(v6 + 32);
      *(v6 + 24) = a4;
      *(v6 + 32) = a5;
    }
  }

  return v6;
}

uint64_t sub_100106838()
{
  v1 = sub_100216774();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  if (*(v0 + 32))
  {
    sub_100106AA8();
  }

  v4 = *(v0 + 32);

  return v0;
}

uint64_t sub_100106A50()
{
  sub_100106838();

  return swift_deallocClassInstance();
}

uint64_t sub_100106AA8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    sub_100107C94();

    v2 = sub_1002167C4();
    if (v3)
    {
      v4 = v2;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v5 = v4;
    }

    else
    {

      v8 = *(v0 + 32);
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
    }
  }

  else
  {
    sub_100107D3C();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100106BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v102 = sub_100216254();
  v3 = *(v102 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v102, v5);
  v105 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100216274();
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v101, v8);
  v99 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1002162D4();
  v103 = *(v104 - 8);
  v10 = *(v103 + 64);
  v12 = __chkstk_darwin(v104, v11);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v95 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v95 - v21;
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v95 - v25;
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v95 - v29;
  v32 = __chkstk_darwin(v28, v31);
  v96 = &v95 - v33;
  __chkstk_darwin(v32, v34);
  v97 = &v95 - v35;
  v36 = sub_100216384();
  v108 = *(v36 - 8);
  v37 = *(v108 + 64);
  v39 = __chkstk_darwin(v36, v38);
  v41 = &v95 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v42);
  v44 = &v95 - v43;
  v98 = a1;
  sub_1000060A0(a1, v115);
  v106 = sub_10001148C(&unk_10029DB10, &unk_1002267B0);
  if (swift_dynamicCast())
  {
    v45 = v114;
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    result = sub_100217114();
    v47 = result;
    v48 = 0;
    v49 = 1 << *(v45 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v45[8];
    v52 = (v49 + 63) >> 6;
    v108 = result + 64;
    if (v51)
    {
      while (1)
      {
        v53 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
LABEL_11:
        v56 = v53 | (v48 << 6);
        sub_100019390(v45[6] + 40 * v56, v111);
        sub_1000060A0(v45[7] + 32 * v56, v113);
        sub_100106BB0(v110, v113);
        sub_100006128(v113);
        *(v108 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v57 = v47[6] + 40 * v56;
        v58 = v111[0];
        v59 = v111[1];
        *(v57 + 32) = v112;
        *v57 = v58;
        *(v57 + 16) = v59;
        result = sub_1000125AC(v110, (v47[7] + 32 * v56));
        v60 = v47[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          break;
        }

        v47[2] = v62;
        if (!v51)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v54 = v48;
      while (1)
      {
        v48 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v48 >= v52)
        {

          v70 = v107;
          v107[3] = v106;
          *v70 = v47;
          return sub_100006128(v115);
        }

        v55 = v45[v48 + 8];
        ++v54;
        if (v55)
        {
          v53 = __clz(__rbit64(v55));
          v51 = (v55 - 1) & v55;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v106 = v3;
    v63 = sub_10001148C(&qword_10029D148, &qword_100225F40);
    if (swift_dynamicCast())
    {
      v64 = *&v110[0];
      v65 = *(*&v110[0] + 16);
      if (v65)
      {
        v114 = _swiftEmptyArrayStorage;
        sub_100187764(0, v65, 0);
        v66 = v114;
        v67 = v64 + 32;
        do
        {
          sub_1000060A0(v67, v113);
          sub_100106BB0(v111, v113);
          sub_100006128(v113);
          v114 = v66;
          v69 = v66[2];
          v68 = v66[3];
          if (v69 >= v68 >> 1)
          {
            sub_100187764((v68 > 1), v69 + 1, 1);
            v66 = v114;
          }

          v66[2] = v69 + 1;
          sub_1000125AC(v111, &v66[4 * v69 + 4]);
          v67 += 32;
          --v65;
        }

        while (v65);
      }

      else
      {

        v66 = _swiftEmptyArrayStorage;
      }

      v86 = v107;
      v107[3] = v63;
      *v86 = v66;
    }

    else if (swift_dynamicCast())
    {
      v71 = v111[0];
      v72 = sub_100216214(0);
      v74 = v73;
      v75 = v107;
      v107[3] = &type metadata for String;
      sub_100002BF0(v71, *(&v71 + 1));
      *v75 = v72;
      v75[1] = v74;
    }

    else if (swift_dynamicCast())
    {
      (*(v108 + 32))(v41, v44, v36);
      sub_100216004();
      sub_1002162A4();
      v109 = v36;
      v76 = *(v103 + 8);
      v77 = v104;
      v76(v14, v104);
      sub_1002162B4();
      v76(v18, v77);
      sub_100216284();
      v76(v22, v77);
      v78 = v100;
      v79 = v99;
      v80 = v101;
      (*(v100 + 104))(v99, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v101);
      sub_1002162C4();
      (*(v78 + 8))(v79, v80);
      v76(v26, v77);
      v81 = v96;
      sub_100216294();
      v76(v30, v77);
      v82 = v106;
      v83 = v105;
      v84 = v102;
      (*(v106 + 104))(v105, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v102);
      v85 = v97;
      sub_100216264();
      (*(v82 + 8))(v83, v84);
      v76(v81, v77);
      v107[3] = &type metadata for String;
      sub_100107DE4();
      sub_100216364();
      v76(v85, v77);
      (*(v108 + 8))(v41, v109);
    }

    else
    {
      v87 = objc_opt_self();
      sub_10001148C(&qword_10029D150, &qword_100226560);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_10021D600;
      v89 = v98;
      sub_1000060A0(v98, v88 + 32);
      isa = sub_100216B14().super.isa;

      v91 = [v87 isValidJSONObject:isa];

      if (v91)
      {
        sub_1000060A0(v89, v107);
      }

      else
      {
        sub_1000060A0(v89, v111);
        v92 = sub_100216994();
        v93 = v107;
        v107[3] = &type metadata for String;
        *v93 = v92;
        v93[1] = v94;
      }
    }

    return sub_100006128(v115);
  }

  return result;
}

uint64_t sub_10010755C(uint64_t a1, uint64_t a2)
{
  sub_100106BB0(a2, v16);
  v2 = objc_opt_self();
  sub_100006484(v16, v16[3]);
  v14 = 0;
  v3 = [v2 dataWithJSONObject:sub_100217194() options:6 error:&v14];
  swift_unknownObjectRelease();
  v4 = v14;
  if (v3)
  {
    v5 = sub_100216224();
    v7 = v6;

    v14 = v5;
    v15 = v7;
    sub_100107D90();
    v8 = sub_1002167C4();
    if (v9)
    {
      v10 = v8;
      sub_100107CE8();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v11 = v10;
    }

    sub_100002BF0(v5, v7);
    return sub_100006128(v16);
  }

  else
  {
    v13 = v4;
    sub_100216154();

    swift_willThrow();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_100216FD4(70);
    v17._object = 0x800000010023B250;
    v17._countAndFlagsBits = 0xD000000000000044;
    sub_100216A14(v17);
    sub_10001148C(&unk_10029D560, qword_10021D450);
    sub_100217094();
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100107794(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 20) == 1 && (v4 = *(v1 + 4), sub_100107C94(), v5 = sub_1002167C4(), (v6 & 1) != 0))
  {
    v7 = v5;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v9 = v7;
  }

  else
  {
    *(v1 + 20) = 1;
    return sub_10010755C(*(v1 + 4), a1);
  }

  return result;
}

uint64_t sub_1001078BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000124E8(a3, &v17);
  if (!v18)
  {
    return sub_1000114D4(&v17, &unk_100297770, &unk_10021DF90);
  }

  sub_1000125AC(&v17, v19);
  if (*(v3 + 20) == 1)
  {
    v8 = *(v3 + 4);
    *&v17 = 44;
    *(&v17 + 1) = 0xE100000000000000;
    sub_100107C94();
    v9 = sub_1002167C4();
    if (v10)
    {
      goto LABEL_8;
    }
  }

  *(v3 + 20) = 1;
  v11 = *(v3 + 4);
  v18 = &type metadata for String;
  *&v17 = a1;
  *(&v17 + 1) = a2;

  sub_10010755C(v11, &v17);
  if (!v4)
  {
    sub_100006128(&v17);
    *&v17 = 58;
    *(&v17 + 1) = 0xE100000000000000;
    sub_100107C94();
    v9 = sub_1002167C4();
    if ((v14 & 1) == 0)
    {
      sub_10010755C(v11, v19);
      goto LABEL_10;
    }

LABEL_8:
    v15 = v9;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v16 = v15;
LABEL_10:
    v12 = v19;
    return sub_100006128(v12);
  }

  sub_100006128(v19);
  v12 = &v17;
  return sub_100006128(v12);
}

uint64_t sub_100107A88(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v8 = *v3;
  if (*(v3 + 20) == 1)
  {
    v9 = *(v3 + 4);
    v17 = 44;
    v18 = 0xE100000000000000;
    sub_100107C94();
    v10 = sub_1002167C4();
    if (v11)
    {
      goto LABEL_6;
    }
  }

  *(v3 + 20) = 1;
  v12 = *(v3 + 4);
  v19 = &type metadata for String;
  v17 = a1;
  v18 = a2;

  sub_10010755C(v12, &v17);
  if (v4)
  {
    return sub_100006128(&v17);
  }

  sub_100006128(&v17);
  v17 = 58;
  v18 = 0xE100000000000000;
  sub_100107C94();
  v10 = sub_1002167C4();
  if (v14)
  {
LABEL_6:
    v15 = v10;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v16 = v15;
  }

  else
  {
    type metadata accessor for StreamingEncoderArray();
    swift_allocObject();
    sub_100106528(v12, 91, 0xE100000000000000, 93, 0xE100000000000000);
    a3();
    sub_100106AA8();
  }

  return result;
}

unint64_t sub_100107C94()
{
  result = qword_10029D130;
  if (!qword_10029D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D130);
  }

  return result;
}

unint64_t sub_100107CE8()
{
  result = qword_10029DB30;
  if (!qword_10029DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DB30);
  }

  return result;
}

unint64_t sub_100107D3C()
{
  result = qword_10029D138;
  if (!qword_10029D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D138);
  }

  return result;
}

unint64_t sub_100107D90()
{
  result = qword_10029D140;
  if (!qword_10029D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D140);
  }

  return result;
}

unint64_t sub_100107DE4()
{
  result = qword_10029D158;
  if (!qword_10029D158)
  {
    sub_1002162D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D158);
  }

  return result;
}

uint64_t sub_100107E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_100185DC4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_100216194();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100015B28(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_100186CCC();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_100216194();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1001850D4(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_100216194();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_100108000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100185F90(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100015A28(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100186F40();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1001853F4(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_100108108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100186290(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_100297D60, &qword_10021D770);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100015A28(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100187218(&qword_100297D60, &qword_10021D770);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001855A4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void *sub_100108220(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1002170C4();

    if (v4)
    {
      sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100015AE4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1001082E4(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100216ED4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_1001877C4(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v3 = sub_100216E74();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_100216E44();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_10018F7B0(v35, v36, v37, v1, type metadata accessor for BottleMO);
        v14 = v13;
        v15 = sub_1001906BC(v13);

        v16 = v33;
        v38 = v33;
        v18 = v33[2];
        v17 = v33[3];
        if (v18 >= v17 >> 1)
        {
          sub_1001877C4((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        v16[2] = v18 + 1;
        v16[v18 + 4] = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_100216E94())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          sub_10001148C(&qword_10029DB78, &qword_100226808);
          v7 = sub_100216BF4();
          sub_100216F44();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_1001A9594(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1001A9594(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_1001A9594(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_100108644(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100216ED4();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v30 = &_swiftEmptyArrayStorage;
    sub_100217064();
    result = sub_100216E74();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v30 = &_swiftEmptyArrayStorage;
  sub_100217064();
  v5 = -1 << *(a1 + 32);
  result = sub_100216E44();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_10018F7B0(v27, v28, v29, a1, type metadata accessor for MachineMO);
    v14 = v13;
    sub_1001E6DA8();

    sub_100217044();
    v15 = v30[2];
    sub_100217074();
    sub_100217084();
    result = sub_100217054();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_100216E94())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10001148C(&qword_10029D788, &unk_1002265D8);
      v8 = sub_100216BF4();
      sub_100216F44();
      result = v8(v26, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1001A9594(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v11 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v11 >> 6;
      v18 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v18 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v11 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1001A9594(v11, v10, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_1001A9594(v11, v10, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v10;
      v29 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
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
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_100108960(uint64_t a1)
{
  v3 = type metadata accessor for PolicyDocumentKey(0);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_100216ED4();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_10018788C(0, v8 & ~(v8 >> 63), 0);
    v49 = v54;
    if (v47)
    {
      result = sub_100216E74();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_100216E44();
      v10 = *(a1 + 36);
    }

    v51 = result;
    v52 = v10;
    v53 = v47 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v43 = v8;
      v44 = v7;
      v48 = v1;
      v12 = 0;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v41 = a1 + 56;
      v42 = v13;
      v40 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v17 = v51;
        v16 = v52;
        v18 = v53;
        v19 = a1;
        sub_10018F9BC(v51, v52, v53, a1);
        v21 = v20;
        *(&v39 - 2) = __chkstk_darwin(v20, v22);
        sub_1001A13C4(&qword_10029D840, type metadata accessor for PolicyDocumentKey);
        v23 = v44;
        v24 = v48;
        sub_100216654();
        v48 = v24;

        v25 = v49;
        v54 = v49;
        v27 = v49[2];
        v26 = v49[3];
        if (v27 >= v26 >> 1)
        {
          sub_10018788C(v26 > 1, v27 + 1, 1);
          v25 = v54;
        }

        v25[2] = v27 + 1;
        v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v49 = v25;
        result = sub_1001AC038(v23, v25 + v28 + *(v45 + 72) * v27, type metadata accessor for PolicyDocumentKey);
        if (v47)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_100216E94())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v43;
          sub_10001148C(&qword_10029D848, &qword_100226638);
          v14 = sub_100216BF4();
          sub_100216F44();
          result = v14(v50, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1001A9594(v51, v52, v53);
            return v49;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v29 = 1 << *(v19 + 32);
          if (v17 >= v29)
          {
            goto LABEL_38;
          }

          v30 = v17 >> 6;
          v31 = *(v41 + 8 * (v17 >> 6));
          if (((v31 >> v17) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v16)
          {
            goto LABEL_40;
          }

          v32 = v31 & (-2 << (v17 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v40 + 8 * v30);
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                result = sub_1001A9594(v17, v16, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_33;
              }
            }

            result = sub_1001A9594(v17, v16, 0);
          }

LABEL_33:
          v38 = *(v19 + 36);
          v51 = v29;
          v52 = v38;
          v53 = 0;
          v8 = v43;
          if (v12 == v43)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100108DDC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100216E74();
    v5 = v4;
    v6 = sub_100216F34();
    v8 = v7;
    v9 = sub_100216EA4();
    sub_1001A9594(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1001A9594(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_100216E44();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10018F7B0(v3, v5, v2 != 0, a1, type metadata accessor for BottleMO);
  v13 = v12;
  sub_1001A9594(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_100108F0C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100216E74();
    v5 = v4;
    v6 = sub_100216F34();
    v8 = v7;
    v9 = sub_100216EA4();
    sub_1001A9594(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1001A9594(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_100216E44();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10018F9BC(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1001A9594(v3, v5, v2 != 0);
  return v13;
}

void sub_100109078(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216C04();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = &_swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_100216F14() || (type metadata accessor for MachineMO(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_10000D778();
      return;
    }

LABEL_17:
    v12 = [v11 machineID];
    if (v12)
    {
      v13 = v12;
      v19 = sub_100216974();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100182D90(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100182D90((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_100109320(void *a1, void (*a2)(void *, char *), uint64_t a3, void (*a4)(unint64_t))
{
  type metadata accessor for CustodianRecoveryKeyMO();
  v9 = sub_100216D44();
  if (v5)
  {
    if (qword_100297520 != -1)
    {
LABEL_41:
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029D160);
    swift_errorRetain();
    v11 = sub_100216754();
    v12 = sub_100216C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to fetch count for chunkwise enumeration: %{public}@", v13, 0xCu);
      sub_1000114D4(v14, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
  }

  else
  {
    v16 = v9;
    v17 = [a1 fetchBatchSize];
    if (v17)
    {
      v18 = v16 >= 0;
      if (v17 > 0)
      {
        v18 = v16 < 1;
      }

      if (!v18)
      {
        v19 = v16;
        v49 = a2;
        v48 = 0;
        v20 = &selRef_hasPeerWithID_error_;
        v21 = &type metadata for Any;
        v44 = a4;
        v43 = a1;
        v47 = v19;
        v42 = v17;
        while (1)
        {
          v22 = v17 + v48;
          if (__OFADD__(v48, v17))
          {
            v22 = ((v17 + v48) >> 63) ^ 0x8000000000000000;
          }

          v45 = v22;
          v51 = 0;
          v46 = objc_autoreleasePoolPush();
          [a1 v20[303]];
          sub_100216E24();
          swift_unknownObjectRelease();
          sub_10001148C(&qword_10029D5F0, &qword_100226530);
          if (!swift_dynamicCast())
          {
            break;
          }

          v23 = v21;
          v16 = v50;
          [v50 setFetchBatchSize:0];
          [v50 setFetchOffset:v48];
          if (__OFSUB__(v47, v48))
          {
            __break(1u);
            goto LABEL_43;
          }

          v24 = [a1 fetchBatchSize];
          if (v24 >= v47 - v48)
          {
            v25 = (v47 - v48);
          }

          else
          {
            v25 = v24;
          }

          [v50 setFetchLimit:v25];
          v26 = sub_100216D54();
          v27 = v26;
          v28 = v26 & 0xFFFFFFFFFFFFFF8;
          if (v26 >> 62)
          {
            v29 = sub_1002170F4();
          }

          else
          {
            v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v30 = 0;
          do
          {
            v31 = v30;
            if (v29 == v30)
            {
              break;
            }

            if ((v27 & 0xC000000000000001) != 0)
            {
              v32 = sub_100217014();
            }

            else
            {
              if (v30 >= *(v28 + 16))
              {
                goto LABEL_40;
              }

              v32 = *(v27 + 8 * v30 + 32);
            }

            v33 = v32;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v34 = objc_autoreleasePoolPush();
            v49(v33, &v51);
            objc_autoreleasePoolPop(v34);

            v30 = v31 + 1;
            v23 = &type metadata for Any;
          }

          while ((v51 & 1) == 0);
          v44(v27);

          [v4 refreshAllObjects];

          objc_autoreleasePoolPop(v46);
          if (v29 == v31)
          {
            v35 = v47 >= v45;
            v17 = v42;
            if (v42 > 0)
            {
              v35 = v45 >= v47;
            }

            v48 = v45;
            a1 = v43;
            v20 = &selRef_hasPeerWithID_error_;
            v21 = v23;
            if (!v35)
            {
              continue;
            }
          }

          return;
        }

        sub_1002170E4();
        __break(1u);
      }
    }

    else
    {
LABEL_43:
      __break(1u);
      swift_once();
      v36 = sub_100216774();
      sub_100002648(v36, qword_10029D160);
      swift_errorRetain();
      v37 = sub_100216754();
      v38 = sub_100216C74();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543362;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v41;
        *v40 = v41;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to fetch for chunkwise enumeration: %{public}@", v39, 0xCu);
        sub_1000114D4(v40, &qword_10029D580, &unk_10021CCC0);
      }

      swift_willThrow();
      objc_autoreleasePoolPop(v46);
    }
  }
}

const char *sub_1001099A0()
{
  v1 = "EscrowCheckMigration";
  v2 = "TestDisableEscrowCheck";
  if (*v0 != 2)
  {
    v2 = "TestDisableEscrowRepair";
  }

  if (*v0)
  {
    v1 = "SEPBasedICSCHealingEnabled";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100109A00()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029D160);
  sub_100002648(v0, qword_10029D160);
  return sub_100216764();
}

uint64_t sub_100109A7C(uint64_t a1)
{
  v2 = sub_1001AC548();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100109AB8(uint64_t a1)
{
  v2 = sub_1001AC548();

  return Error<>._code.getter(a1, v2);
}

unint64_t ContainerError.errorDescription.getter(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_100216FD4(26);

      v15 = 0xD000000000000018;
      goto LABEL_12;
    case 2:
      v15 = 0;
      sub_100216FD4(52);
      v18._countAndFlagsBits = 0xD000000000000013;
      v18._object = 0x800000010023BA60;
      sub_100216A14(v18);
      v19._countAndFlagsBits = a1;
      v19._object = a2;
      sub_100216A14(v19);
      v13 = "prepared identity (";
      v5._countAndFlagsBits = 0xD00000000000001FLL;
      goto LABEL_18;
    case 3:
    case 6:
      return 0xD00000000000001ELL;
    case 4:
      sub_100216FD4(25);

      v7 = 0xD000000000000017;
      goto LABEL_11;
    case 5:
      sub_100216FD4(45);

      v7 = 0xD00000000000002BLL;
      goto LABEL_11;
    case 7:
      sub_100216FD4(44);

      v15 = 0xD00000000000002ALL;
      goto LABEL_12;
    case 8:
      sub_100216FD4(29);

      v15 = 0x2072656550;
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      sub_100216A14(v21);
      v13 = " does not match user ";
      v5._countAndFlagsBits = 0xD000000000000016;
LABEL_18:
      v5._object = (v13 | 0x8000000000000000);
      goto LABEL_19;
    case 9:
      v15 = 0;
      sub_100216FD4(55);
      v16._countAndFlagsBits = 0xD000000000000035;
      v16._object = 0x800000010023B4D0;
      sub_100216A14(v16);
      v8 = [a1 description];
      v9 = sub_100216974();
      v11 = v10;

      v17._countAndFlagsBits = v9;
      v17._object = v11;
      sub_100216A14(v17);

      return v15;
    case 10:
      return 0xD000000000000018;
    case 11:
      return 0xD000000000000022;
    case 12:
      sub_100216FD4(28);

      v7 = 0xD00000000000001ALL;
LABEL_11:
      v15 = v7;
LABEL_12:
      v20._countAndFlagsBits = sub_100217174();
      sub_100216A14(v20);

      return v15;
    case 13:
      result = 0x626D656D206E6F6ELL;
      switch(a1)
      {
        case 1uLL:
        case 3uLL:
        case 5uLL:
          result = 0xD000000000000014;
          break;
        case 4uLL:
          result = 0xD000000000000013;
          break;
        case 6uLL:
          return result;
        case 7uLL:
        case 0x28uLL:
          result = 0xD000000000000023;
          break;
        case 8uLL:
          result = 0xD00000000000001CLL;
          break;
        case 9uLL:
          result = 0xD000000000000020;
          break;
        case 0xAuLL:
        case 0x18uLL:
          result = 0xD000000000000025;
          break;
        case 0xBuLL:
          result = 0xD00000000000002CLL;
          break;
        case 0xCuLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x17uLL:
          result = 0xD00000000000001FLL;
          break;
        case 0xEuLL:
          result = 0xD000000000000018;
          break;
        case 0xFuLL:
          result = 0xD000000000000024;
          break;
        case 0x10uLL:
        case 0x2BuLL:
          result = 0xD00000000000002ALL;
          break;
        case 0x11uLL:
          result = 0xD000000000000028;
          break;
        case 0x12uLL:
        case 0x24uLL:
          result = 0xD000000000000026;
          break;
        case 0x15uLL:
        case 0x2CuLL:
        case 0x2DuLL:
          result = 0xD00000000000001ALL;
          break;
        case 0x16uLL:
        case 0x1BuLL:
          result = 0xD000000000000029;
          break;
        case 0x19uLL:
          result = 0xD000000000000017;
          break;
        case 0x1AuLL:
        case 0x21uLL:
        case 0x25uLL:
          result = 0xD000000000000011;
          break;
        case 0x1CuLL:
          result = 0xD00000000000002ELL;
          break;
        case 0x1DuLL:
          result = 0xD00000000000001BLL;
          break;
        case 0x1EuLL:
          return 0xD00000000000001ELL;
        case 0x1FuLL:
          result = 0xD000000000000045;
          break;
        case 0x20uLL:
        case 0x2AuLL:
          return 0xD000000000000022;
        case 0x22uLL:
          result = 0xD00000000000002BLL;
          break;
        case 0x23uLL:
          result = 0xD00000000000002DLL;
          break;
        case 0x27uLL:
          result = 0xD000000000000027;
          break;
        case 0x2EuLL:
          result = 0xD000000000000018;
          break;
        case 0x2FuLL:
        case 0x30uLL:
          result = 0xD000000000000016;
          break;
        default:
          result = 0xD000000000000019;
          break;
      }

      return result;
    default:
      sub_100216FD4(26);

      v15 = 0xD000000000000018;
      v5._countAndFlagsBits = a1;
      v5._object = a2;
LABEL_19:
      sub_100216A14(v5);
      return v15;
  }
}

uint64_t ContainerError.errorCode.getter(uint64_t a1, uint64_t a2, char a3)
{
  result = 11;
  switch(a3)
  {
    case 1:
      result = 12;
      break;
    case 2:
      result = 13;
      break;
    case 3:
      result = 31;
      break;
    case 4:
      result = 38;
      break;
    case 5:
      result = 40;
      break;
    case 6:
      result = 44;
      break;
    case 7:
      result = 46;
      break;
    case 8:
      result = 48;
      break;
    case 9:
      result = 49;
      break;
    case 10:
      result = 53;
      break;
    case 11:
      result = 54;
      break;
    case 12:
      result = 59;
      break;
    case 13:
      result = qword_100226930[a1];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ContainerError.underlyingError.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if (a3 > 9u)
  {
    if (a3 == 10 || a3 == 11)
    {
      return sub_100216144();
    }

    if (a3 != 12)
    {
      return result;
    }

LABEL_9:
    v5 = objc_allocWithZone(NSError);
    v6 = sub_100216964();
    v7 = [v5 initWithDomain:v6 code:a1 userInfo:0];

    return v7;
  }

  if (a3 - 4 < 2)
  {
    goto LABEL_9;
  }

  if (a3 == 3 || a3 == 6)
  {
    return sub_100216144();
  }

  return result;
}

void *ContainerError.errorUserInfo.getter(void *a1, void *a2, unsigned __int8 a3)
{
  v5 = ContainerError.errorDescription.getter(a1, a2, a3);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_100216974();
    v11 = v10;
    v24 = &type metadata for String;
    *&v23 = v7;
    *(&v23 + 1) = v8;
    sub_1000125AC(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v22, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a3 <= 0xCu)
  {
    if (((1 << a3) & 0xC48) != 0)
    {
      v13 = sub_100216144();
LABEL_8:
      v16 = sub_100216974();
      v18 = v17;
      v24 = sub_10000200C(0, &qword_100297CE8, NSError_ptr);
      *&v23 = v13;
      sub_1000125AC(&v23, v22);
      v19 = v13;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_100185894(v22, v16, v18, v20);

      return &_swiftEmptyDictionarySingleton;
    }

    if (((1 << a3) & 0x1030) != 0)
    {
      v14 = objc_allocWithZone(NSError);
      v15 = sub_100216964();
      v13 = [v14 initWithDomain:v15 code:a1 userInfo:0];

      if (v13)
      {
        goto LABEL_8;
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10010A6CC()
{
  result = 11;
  switch(*(v0 + 16))
  {
    case 1:
      result = 12;
      break;
    case 2:
      result = 13;
      break;
    case 3:
      result = 31;
      break;
    case 4:
      result = 38;
      break;
    case 5:
      result = 40;
      break;
    case 6:
      result = 44;
      break;
    case 7:
      result = 46;
      break;
    case 8:
      result = 48;
      break;
    case 9:
      result = 49;
      break;
    case 0xA:
      result = 53;
      break;
    case 0xB:
      result = 54;
      break;
    case 0xC:
      result = 59;
      break;
    case 0xD:
      result = qword_100226930[*v0];
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10010A774()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1002168D4();

  v4 = sub_100216974();
  if (!*(v3 + 16))
  {

    goto LABEL_9;
  }

  v6 = sub_100015A28(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_1000060A0(*(v3 + 56) + 32 * v6, v30);

  sub_10001148C(&unk_10029D560, qword_10021D450);
  if (swift_dynamicCast())
  {
    v9 = sub_100216144();
    if ([v1 code] == 134110)
    {
      v10 = [v1 domain];
      v11 = sub_100216974();
      v13 = v12;

      if (v11 == sub_100216974() && v13 == v14)
      {
      }

      else
      {
        v23 = sub_1002171A4();

        if ((v23 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if ([v9 code] == 11)
      {
        v24 = [v9 domain];
        v25 = sub_100216974();
        v27 = v26;

        if (v25 == sub_100216974() && v27 == v28)
        {

          return 1;
        }

        v29 = sub_1002171A4();

        return (v29 & 1) != 0;
      }
    }

LABEL_24:

    return 0;
  }

LABEL_10:
  if ([v1 code] == 11)
  {
    v15 = [v1 domain];
    v16 = sub_100216974();
    v18 = v17;

    if (v16 == sub_100216974() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_1002171A4();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

id sub_10010AAD0()
{
  result = [v0 hasChanges];
  if (result)
  {
    v12 = 0;
    if ([v0 save:&v12])
    {
      v2 = v12;
      return [v0 refreshAllObjects];
    }

    else
    {
      v3 = v12;
      sub_100216154();

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v4 = sub_100216774();
      sub_100002648(v4, qword_10029D160);
      swift_errorRetain();
      v5 = sub_100216754();
      v6 = sub_100216C74();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        *v7 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v9 = sub_100216994();
        v11 = sub_100005FB0(v9, v10, &v12);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save moc: %{public}s", v7, 0xCu);
        sub_100006128(v8);
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10010ACF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10021D5F0;
  *(v7 + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(v7 + 40) = kSecClassInternetPassword;
  *(v7 + 64) = v8;
  *(v7 + 72) = kSecAttrAccessible;
  *(v7 + 80) = kSecAttrAccessibleWhenUnlocked;
  *(v7 + 104) = v8;
  *(v7 + 112) = kSecUseDataProtectionKeychain;
  *(v7 + 120) = 1;
  *(v7 + 144) = &type metadata for Bool;
  *(v7 + 152) = kSecAttrAccessGroup;
  *(v7 + 160) = 0xD00000000000001ALL;
  *(v7 + 168) = 0x8000000100227BB0;
  *(v7 + 184) = &type metadata for String;
  *(v7 + 192) = kSecAttrSynchronizable;
  *(v7 + 200) = 0;
  *(v7 + 224) = &type metadata for Bool;
  *(v7 + 232) = kSecAttrDescription;
  *(v7 + 240) = a3;
  *(v7 + 248) = a4;
  *(v7 + 264) = &type metadata for String;
  *(v7 + 272) = kSecAttrPath;
  *(v7 + 280) = a3;
  *(v7 + 288) = a4;
  *(v7 + 304) = &type metadata for String;
  *(v7 + 312) = kSecValueData;
  *(v7 + 344) = &type metadata for Data;
  *(v7 + 320) = a1;
  *(v7 + 328) = a2;
  swift_bridgeObjectRetain_n();
  v44 = kSecClass;
  v9 = kSecClassInternetPassword;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v43 = kSecUseDataProtectionKeychain;
  v42 = kSecAttrAccessGroup;
  v12 = kSecAttrSynchronizable;
  v13 = kSecAttrDescription;
  v14 = kSecAttrPath;
  v15 = kSecValueData;
  sub_100012558(a1, a2);
  v16 = sub_100018728(v7);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = 0;
  sub_1001A13C4(&qword_1002978D0, type metadata accessor for CFString);
  isa = sub_1002168C4().super.isa;
  v18 = SecItemAdd(isa, &result);

  if (v18 == -25299)
  {
    sub_100018728(&_swiftEmptyArrayStorage);
    if (*(v16 + 16) && (v19 = sub_100015974(v44), (v20 & 1) != 0))
    {
      sub_1000060A0(*(v16 + 56) + 32 * v19, v47);
      sub_1000125AC(v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100185754(v46, v44, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_100015790(v44, v47);
      sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
    }

    if (*(v16 + 16) && (v22 = sub_100015974(v12), (v23 & 1) != 0))
    {
      sub_1000060A0(*(v16 + 56) + 32 * v22, v47);
      sub_1000125AC(v47, v46);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_100185754(v46, v12, v24);
      if (!*(v16 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100015790(v12, v47);
      sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
      if (!*(v16 + 16))
      {
        goto LABEL_16;
      }
    }

    v25 = sub_100015974(v42);
    if (v26)
    {
      sub_1000060A0(*(v16 + 56) + 32 * v25, v47);
      sub_1000125AC(v47, v46);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_100185754(v46, v42, v27);
LABEL_17:
      if (*(v16 + 16) && (v28 = sub_100015974(v13), (v29 & 1) != 0))
      {
        sub_1000060A0(*(v16 + 56) + 32 * v28, v47);
        sub_1000125AC(v47, v46);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_100185754(v46, kSecAttrServer, v30);
      }

      else
      {
        sub_100015790(kSecAttrServer, v47);
        sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
      }

      if (*(v16 + 16) && (v31 = sub_100015974(v14), (v32 & 1) != 0))
      {
        sub_1000060A0(*(v16 + 56) + 32 * v31, v47);
        sub_1000125AC(v47, v46);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_100185754(v46, v14, v33);
      }

      else
      {
        sub_100015790(v14, v47);
        sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
      }

      if (*(v16 + 16) && (v34 = sub_100015974(v43), (v35 & 1) != 0))
      {
        sub_1000060A0(*(v16 + 56) + 32 * v34, v47);
        sub_1000125AC(v47, v46);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_100185754(v46, v43, v36);
      }

      else
      {
        sub_100015790(v43, v47);
        sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
      }

      *&v46[0] = v16;
      sub_100015790(v44, v47);
      sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
      v37 = sub_1002168C4().super.isa;

      v38 = sub_1002168C4().super.isa;

      v18 = SecItemUpdate(v37, v38);

      if (!v18)
      {
        return swift_unknownObjectRelease();
      }

LABEL_30:
      sub_1000561D0();
      swift_allocError();
      *v39 = v18;
      *(v39 + 8) = 0;
      *(v39 + 16) = 5;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

LABEL_16:
    sub_100015790(v42, v47);
    sub_1000114D4(v47, &unk_100297770, &unk_10021DF90);
    goto LABEL_17;
  }

  if (v18)
  {

    goto LABEL_30;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10010B47C(uint64_t a1, uint64_t a2)
{
  sub_10001148C(&qword_100297D28, &unk_10021D730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D5F0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v4;
  *(inited + 72) = kSecAttrAccessGroup;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000100227BB0;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrDescription;
  *(inited + 120) = a1;
  *(inited + 128) = a2;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecReturnAttributes;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrSynchronizable;
  *(inited + 240) = 0;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = kSecUseDataProtectionKeychain;
  *(inited + 280) = 1;
  *(inited + 304) = &type metadata for Bool;
  *(inited + 312) = kSecMatchLimit;
  *(inited + 344) = v4;
  *(inited + 320) = kSecMatchLimitOne;
  v5 = kSecClass;
  v6 = kSecClassInternetPassword;
  v7 = kSecAttrAccessGroup;
  v8 = kSecAttrDescription;

  v9 = kSecReturnAttributes;
  v10 = kSecReturnData;
  v11 = kSecAttrSynchronizable;
  v12 = kSecUseDataProtectionKeychain;
  v13 = kSecMatchLimit;
  v14 = kSecMatchLimitOne;
  sub_100018728(inited);
  swift_setDeallocating();
  sub_10001148C(&unk_10029D970, &unk_10021D740);
  swift_arrayDestroy();
  result = 0;
  sub_1001A13C4(&qword_1002978D0, type metadata accessor for CFString);
  isa = sub_1002168C4().super.isa;

  LODWORD(a2) = SecItemCopyMatching(isa, &result);

  if (a2 || !result)
  {
    a2 = a2;
    v19 = 4;
LABEL_11:
    sub_1000561D0();
    swift_allocError();
    *v20 = a2;
    *(v20 + 8) = 0;
    *(v20 + 16) = v19;
    swift_willThrow();
    swift_unknownObjectRelease();
    return a2;
  }

  v23[0] = result;
  swift_unknownObjectRetain();
  sub_10001148C(&qword_10029D998, &unk_100226728);
  if (!swift_dynamicCast())
  {
    v19 = 13;
    a2 = 31;
    goto LABEL_11;
  }

  if (*(v22 + 16) && (v17 = sub_100015974(kSecValueData), (v18 & 1) != 0))
  {
    sub_1000060A0(*(v22 + 56) + 32 * v17, v23);

    if (swift_dynamicCast())
    {
      a2 = v22;
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {

    a2 = 0;
  }

  swift_unknownObjectRelease();
  return a2;
}

void sub_10010B83C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v16 = [objc_opt_self() defaultManager];
  v4 = sub_100216964();
  v15 = [v16 identityForIdentifier:v4];

  if (!v15)
  {
    (a3)(0, 0);
    v9 = v16;
    goto LABEL_14;
  }

  v5 = [v15 resultType];
  if (v5 == 2)
  {
    v13 = [v15 error];
    (a3)(0, v13);

    v9 = v15;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    sub_1000561D0();
    v11 = swift_allocError();
    v12 = xmmword_100225F90;
  }

  else
  {
    if (!v5)
    {
      v6 = [v15 value];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 keyPair];

        if (!v8)
        {
LABEL_9:
          v6 = 0;
          goto LABEL_10;
        }

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {

          goto LABEL_9;
        }
      }

LABEL_10:
      v14 = v6;
      a3();

      v9 = v14;
LABEL_14:

      return;
    }

    sub_1000561D0();
    v11 = swift_allocError();
    v12 = xmmword_100225FA0;
  }

  *v10 = v12;
  *(v10 + 16) = 13;
  (a3)(0, v11);
}

void sub_10010BA8C(void *a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = a1;
    v23._countAndFlagsBits = a5;
    v23._object = a6;
    sub_100216A14(v23);
    v20 = v10;

    sub_100194B04(0x6974707972636E65, 0xEF2079656B2D6E6FLL, a3, a4, a5, a6, v20);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      v21[2] = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v17 = sub_100216994();
      v19 = sub_100005FB0(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to load signing key: %{public}s", v15, 0xCu);
      sub_100006128(v16);
    }

    a3(0, a2);
  }
}

unint64_t *sub_10010BD08(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v66 = v5;

    v5 = &v66;
    sub_100217064();
    if (i < 0)
    {
      goto LABEL_44;
    }

    v60 = v6 & 0xC000000000000001;
    v59 = objc_opt_self();
    v8 = 0;
    v55 = v6 & 0xFFFFFFFFFFFFFF8;
    *&v9 = 136446210;
    v54 = v9;
    v57 = v6;
    v58 = i;
    v63 = a3;
    while (!__OFADD__(v8, 1))
    {
      v65 = v8;
      v64 = v8 + 1;
      if (v60)
      {
        v12 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v55 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(v6 + 8 * v8 + 32);
      }

      v13 = v12;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v14 = sub_100216774();
      sub_100002648(v14, qword_10029D160);
      swift_unknownObjectRetain();
      v15 = v13;
      v16 = sub_100216754();
      v17 = sub_100216C54();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v18 = 136446466;
        swift_unknownObjectRetain();
        sub_10001148C(&unk_10029D7C8, &unk_1002265F8);
        v19 = sub_100216994();
        v21 = sub_100005FB0(v19, v20, &v67);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = v15;
        v23 = [v22 description];
        v24 = v15;
        v25 = sub_100216974();
        v27 = v26;

        v6 = v57;
        v28 = sub_100005FB0(v25, v27, &v67);

        *(v18 + 14) = v28;
        v15 = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "Making TLKShare for %{public}s for key %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        i = v58;

        a3 = v63;
      }

      v67 = 0;
      if ([v59 share:v15 as:a2 to:a3 epoch:a4 poisoned:0 error:&v67])
      {
        v10 = v67;
      }

      else
      {
        v29 = v15;
        v30 = v67;
        sub_100216154();

        swift_willThrow();
        v5 = sub_100216144();
        v31 = [v5 domain];
        v32 = sub_100216974();
        v34 = v33;

        if (v32 == 0x7974697275636573 && v34 == 0xE900000000000064)
        {
        }

        else
        {
          v35 = sub_1002171A4();

          if ((v35 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        if ([v5 code] != -25300)
        {
LABEL_29:
          swift_willThrow();

          return v5;
        }

        v56 = v5;
        v36 = v29;
        v37 = sub_100216754();
        v38 = sub_100216C54();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v67 = v40;
          *v39 = v54;
          v36 = v36;
          v41 = [v36 description];
          v42 = sub_100216974();
          v44 = v43;

          v45 = v42;
          v6 = v57;
          v46 = sub_100005FB0(v45, v44, &v67);
          a3 = v63;

          *(v39 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "No TLK contents for %{public}s, no TLK share possible", v39, 0xCu);
          sub_100006128(v40);
        }

        i = v58;
      }

      v5 = &v66;
      sub_100217044();
      v11 = *(v66 + 16);
      sub_100217074();
      sub_100217084();
      sub_100217054();
      v8 = v65 + 1;
      if (v64 == i)
      {

        v47 = v66;
        v5 = &_swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v47 = &_swiftEmptyArrayStorage;
LABEL_34:
  v48 = 0;
  v66 = v5;
  v49 = v47[2];
  while (v49 != v48)
  {
    if (v48 >= v47[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v50 = v47[v48++ + 4];
    if (v50)
    {
      v51 = v50;
      sub_100216B04();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100216B44();
      }

      sub_100216B64();
      v5 = v66;
    }
  }

  return v5;
}

void *sub_10010C3CC(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TLKShare(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010BD08(a1, a2, a3, a4);
  if (!v4)
  {
    v16 = v15;
    v33 = 0;
    if (v15 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
    {
      v18 = 0;
      v31 = v16 & 0xFFFFFFFFFFFFFF8;
      v32 = v16 & 0xC000000000000001;
      a2 = &_swiftEmptyArrayStorage;
      v29 = v16;
      v30 = v10;
      v28 = i;
      while (1)
      {
        if (v32)
        {
          v19 = sub_100217014();
        }

        else
        {
          if (v18 >= *(v31 + 16))
          {
            goto LABEL_17;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v21 = v19;
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        __chkstk_darwin(v19, v20);
        *(&v27 - 2) = v21;
        sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
        v23 = v33;
        sub_100216654();
        v33 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_100182964(0, a2[2] + 1, 1, a2);
        }

        v10 = v30;
        v25 = a2[2];
        v24 = a2[3];
        if (v25 >= v24 >> 1)
        {
          a2 = sub_100182964(v24 > 1, v25 + 1, 1, a2);
        }

        v16 = v29;
        a2[2] = v25 + 1;
        sub_1001AC038(v14, a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, type metadata accessor for TLKShare);
        ++v18;
        if (v22 == v28)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a2 = &_swiftEmptyArrayStorage;
LABEL_20:
  }

  return a2;
}

void *sub_10010C6BC(unint64_t a1, void *a2, void *a3)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);

  v7 = a2;
  v8 = sub_100216754();
  v9 = sub_100216C54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 134218242;
    if (a1 >> 62)
    {
      v12 = sub_1002170F4();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v12;

    *(v10 + 12) = 2082;
    v13 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    v14 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8];

    v15 = sub_100005FB0(v13, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to recover %ld shares for peer %{public}s", v10, 0x16u);
    sub_100006128(v11);
  }

  else
  {
  }

  return sub_10010C8B4(a1, v7, 0, 0, a3);
}

void *sub_10010C8B4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v179 = sub_100019560(_swiftEmptyArrayStorage);
  sub_10001148C(&qword_10029D8B0, &qword_100226670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  v185 = a2;
  type metadata accessor for OctagonSelfPeerKeys();
  sub_1001A13C4(&qword_10029D8B8, type metadata accessor for OctagonSelfPeerKeys);
  v9 = a2;
  sub_100216F74();
  v183 = inited;
  v10 = sub_100019574(_swiftEmptyArrayStorage);
  if (!a4)
  {
    v11 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    v12 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8];
  }

  v13 = v9;

  v14 = sub_100216964();

  v185 = 0;
  v15 = [a5 peerWithID:v14 error:&v185];

  p_cache = CKKSSOSSelfPeer.cache;
  v177 = v9;
  if (v185)
  {
    v17 = v185;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);
    v19 = v17;
    v20 = sub_100216754();
    v21 = sub_100216C74();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = v19;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error getting ego peer from model: %{public}@", v22, 0xCu);
      sub_1000114D4(v23, &qword_10029D580, &unk_10021CCC0);

      v19 = v20;
      v20 = v24;
    }

    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_9:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    v27 = sub_100216754();
    v28 = sub_100216C54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No ego peer in model; no trusted peers", v29, 2u);
    }

    v174 = 0;
    goto LABEL_14;
  }

  v174 = v15;
  v132 = [v174 peerID];
  if (!v132)
  {
    sub_100216974();
    v132 = sub_100216964();
  }

  v133 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
  v185 = 0;
  v134 = [a5 calculateDynamicInfoForPeerWithID:v132 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:v133 currentMachineIDs:0 error:&v185];

  if (v134)
  {
    v135 = qword_100297520;
    v136 = v185;
    if (v135 != -1)
    {
      swift_once();
    }

    v137 = sub_100216774();
    sub_100002648(v137, qword_10029D160);
    v138 = v134;
    v139 = sub_100216754();
    v140 = sub_100216C54();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v141 = 138543362;
      *(v141 + 4) = v138;
      *v142 = v134;
      v143 = v138;
      _os_log_impl(&_mh_execute_header, v139, v140, "Using computed dynamic info for share recovery: %{public}@", v141, 0xCu);
      sub_1000114D4(v142, &qword_10029D580, &unk_10021CCC0);
      v13 = v9;

      p_cache = (CKKSSOSSelfPeer + 16);
    }

    v144 = [v138 includedPeerIDs];
    v145 = sub_100216BB4();

    v146 = a5;
    sub_10019097C(v145, v146, &v183);
  }

  else
  {
    v147 = v185;
    v148 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v149 = sub_100216774();
    sub_100002648(v149, qword_10029D160);
    swift_errorRetain();
    v150 = sub_100216754();
    v151 = sub_100216C74();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v185 = v153;
      *v152 = 136446210;
      v184[0] = v148;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v154 = sub_100216994();
      v156 = sub_100005FB0(v154, v155, &v185);

      *(v152 + 4) = v156;
      p_cache = (CKKSSOSSelfPeer + 16);
      _os_log_impl(&_mh_execute_header, v150, v151, "Unable to create dynamic info for share recovery: %{public}s", v152, 0xCu);
      sub_100006128(v153);
    }

    else
    {
    }
  }

LABEL_14:
  if (a1 >> 62)
  {
    goto LABEL_76;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v178 = 0;
    v175 = 0;
    v31 = 0;
    v32 = &v13[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    v181 = i;
    v176 = &v13[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v39 = sub_100217014();
      }

      else
      {
        if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v39 = *(a1 + 32 + 8 * v31);
      }

      v40 = v39;
      if (__OFADD__(v31++, 1))
      {
        break;
      }

      v42 = [v39 receiverPeerID];
      v43 = sub_100216974();
      v45 = v44;

      if (v43 == *v32 && v45 == *(v32 + 1))
      {
      }

      else
      {
        v47 = sub_1002171A4();

        if ((v47 & 1) == 0)
        {
          if (p_cache[164] != -1)
          {
            swift_once();
          }

          v48 = sub_100216774();
          sub_100002648(v48, qword_10029D160);
          v49 = v40;
          v50 = sub_100216754();
          v51 = sub_100216C54();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = v31;
            v54 = swift_slowAlloc();
            v185 = v54;
            *v52 = 136446210;
            v55 = v49;
            v56 = [v55 description];
            v57 = sub_100216974();
            v59 = v58;

            v60 = v57;
            p_cache = (CKKSSOSSelfPeer + 16);
            v61 = sub_100005FB0(v60, v59, &v185);
            v13 = v177;

            *(v52 + 4) = v61;
            i = v181;
            _os_log_impl(&_mh_execute_header, v50, v51, "Skipping %{public}s (wrong peerID)", v52, 0xCu);
            sub_100006128(v54);
            v31 = v53;
            v32 = v176;
          }

          else
          {
          }

          goto LABEL_21;
        }
      }

      v62 = v183;
      v63 = *(v183 + 2);
      sub_100216BD4();
      v64 = *(v62 + 2);
      if (v64)
      {
        v65 = (v62 + 32);
        do
        {
          sub_100019390(v65, &v185);
          sub_10018B150(v184, &v185);
          sub_1000193EC(v184);
          v65 += 40;
          --v64;
        }

        while (v64);
      }

      isa = sub_100216B94().super.isa;

      v185 = 0;
      v67 = [v40 recoverTLK:v13 trustedPeers:isa ckrecord:0 error:&v185];

      v68 = v185;
      v182 = v31;
      if (v67)
      {
        v185 = 0;
        v69 = v68;
        if ([v67 saveKeyMaterialToKeychain:&v185])
        {
          v70 = v185;
          v71 = [v67 uuid];
          v72 = sub_100216974();
          v74 = v73;

          v75 = v67;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v179;
          sub_100186290(v75, v72, v74, isUniquelyReferenced_nonNull_native, &qword_100297D78, &qword_10021D790);

          v178 = v175 + 1;
          if (__OFADD__(v175, 1))
          {
            goto LABEL_75;
          }

          v179 = v185;
          if (p_cache[164] != -1)
          {
            swift_once();
          }

          v77 = sub_100216774();
          sub_100002648(v77, qword_10029D160);
          v78 = v75;
          v79 = v40;
          v80 = sub_100216754();
          v81 = sub_100216C54();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            *v82 = 136446466;
            v83 = v78;
            v84 = [v83 description];
            v85 = v10;
            v86 = sub_100216974();
            v88 = v87;

            v89 = sub_100005FB0(v86, v88, &v185);

            *(v82 + 4) = v89;
            *(v82 + 12) = 2082;
            v90 = v79;
            v91 = [v90 description];
            v92 = sub_100216974();
            v94 = v93;

            v95 = v92;
            v13 = v177;
            v96 = sub_100005FB0(v95, v94, &v185);
            v10 = v85;
            v32 = v176;

            *(v82 + 14) = v96;
            _os_log_impl(&_mh_execute_header, v80, v81, "Recovered %{public}s (from %{public}s", v82, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          ++v175;
          p_cache = (CKKSSOSSelfPeer + 16);
          goto LABEL_20;
        }

        v99 = v185;
        v98 = sub_100216154();

        swift_willThrow();
      }

      else
      {
        v97 = v185;
        v98 = sub_100216154();

        swift_willThrow();
      }

      if (p_cache[164] != -1)
      {
        swift_once();
      }

      v100 = sub_100216774();
      sub_100002648(v100, qword_10029D160);
      v101 = v40;
      swift_errorRetain();
      v102 = sub_100216754();
      v103 = sub_100216C74();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *v104 = 136446466;
        v105 = v101;
        v106 = [v105 description];
        v107 = v101;
        v108 = v10;
        v109 = sub_100216974();
        v111 = v110;

        v112 = v109;
        v10 = v108;
        v101 = v107;
        v113 = sub_100005FB0(v112, v111, &v185);
        v32 = v176;

        *(v104 + 4) = v113;
        *(v104 + 12) = 2082;
        v184[0] = v98;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v114 = sub_100216994();
        v116 = sub_100005FB0(v114, v115, &v185);

        *(v104 + 14) = v116;
        v13 = v177;
        _os_log_impl(&_mh_execute_header, v102, v103, "Failed to recover share %{public}s: %{public}s", v104, 0x16u);
        swift_arrayDestroy();
        p_cache = CKKSSOSSelfPeer.cache;
      }

      v117 = [v101 tlkUUID];
      v118 = sub_100216974();
      v120 = v119;

      if (v10[2])
      {
        v121 = sub_100015A28(v118, v120);
        v123 = v122;

        if (v123)
        {
          v124 = *(v10[7] + 8 * v121);

          v125 = [v101 tlkUUID];
          v126 = sub_100216974();
          v128 = v127;

          sub_10001148C(&qword_10029D8D0, &unk_100226680);
          v129 = swift_initStackObject();
          *(v129 + 16) = xmmword_10021D600;
          *(v129 + 32) = v98;
          v185 = v124;
          swift_errorRetain();
          sub_10010FFA4(v129);
          v130 = v185;
          v131 = swift_isUniquelyReferenced_nonNull_native();
          v185 = v10;
          sub_100186440(v130, v126, v128, v131, &qword_10029D8F0, &qword_100226690);

          goto LABEL_19;
        }
      }

      else
      {
      }

      v33 = [v101 tlkUUID];
      v34 = sub_100216974();
      v36 = v35;

      sub_10001148C(&qword_10029D8D0, &unk_100226680);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10021D600;
      *(v37 + 32) = v98;
      swift_errorRetain();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v185 = v10;
      sub_100186440(v37, v34, v36, v38, &qword_10029D8F0, &qword_100226690);

LABEL_19:

      v10 = v185;
LABEL_20:
      i = v181;
      v31 = v182;
LABEL_21:
      if (v31 == i)
      {
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

  v178 = 0;
LABEL_78:
  if (p_cache[164] != -1)
  {
    swift_once();
  }

  v157 = sub_100216774();
  sub_100002648(v157, qword_10029D160);
  v158 = sub_100216754();
  v159 = sub_100216C54();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v185 = v161;
    *v160 = 136446210;
    sub_10000200C(0, &qword_10029D8C8, off_100275010);

    v162 = sub_1002168E4();
    v164 = v163;

    v165 = sub_100005FB0(v162, v164, &v185);

    *(v160 + 4) = v165;
    _os_log_impl(&_mh_execute_header, v158, v159, "Recovered TLKs: %{public}s", v160, 0xCu);
    sub_100006128(v161);
  }

  v166 = v179[2];
  if (!v166)
  {
    goto LABEL_85;
  }

  v167 = sub_100183130(v179[2], 0);
  v168 = sub_10018FBE0(&v185, v167 + 4, v166, v179);

  sub_10000D778();
  if (v168 != v166)
  {
    __break(1u);
LABEL_85:
    v167 = _swiftEmptyArrayStorage;
  }

  sub_10010E320(v169);
  v170 = objc_allocWithZone(TrustedPeersHelperTLKRecoveryResult);
  v171 = sub_100216B94().super.isa;

  sub_10001148C(&qword_10029D8C0, &qword_100226678);
  v172 = sub_1002168C4().super.isa;
  [v170 initWithSuccessfulKeyUUIDs:v171 totalTLKSharesRecovered:v178 tlkRecoveryErrors:v172];

  return v167;
}

void sub_10010DCB0(void *a1, uint64_t a2, unint64_t a3, char **a4)
{
  v8 = sub_100216964();
  *&v46[0] = 0;
  v9 = [a1 peerWithID:v8 error:v46];

  p_cache = CKKSSOSSelfPeer.cache;
  if (*&v46[0])
  {
    v11 = *&v46[0];

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);

    v13 = v11;
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *&v46[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_100005FB0(a2, a3, v46);
      *(v16 + 12) = 2082;
      v17 = v13;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18 = sub_100216994();
      v20 = sub_100005FB0(v18, v19, v46);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error getting included peer (%s) from model: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      p_cache = (CKKSSOSSelfPeer + 16);
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (!v9)
  {
LABEL_15:
    if (p_cache[164] != -1)
    {
      swift_once();
    }

    v41 = sub_100216774();
    sub_100002648(v41, qword_10029D160);

    v42 = sub_100216754();
    v43 = sub_100216C54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v46[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_100005FB0(a2, a3, v46);
      _os_log_impl(&_mh_execute_header, v42, v43, "No peer for trusted ID %{public}s", v44, 0xCu);
      sub_100006128(v45);
    }

    return;
  }

  v21 = v9;
  v22 = [v21 permanentInfo];
  v23 = [v22 encryptionPubKey];

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24 && (v25 = v24, v26 = [v21 permanentInfo], v27 = objc_msgSend(v26, "signingPubKey"), v26, objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) != 0))
  {
    v29 = v28;
    v30 = objc_allocWithZone(CKKSActualPeer);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = sub_100216964();
    isa = sub_100216B94().super.isa;
    v33 = [v30 initWithPeerID:v31 encryptionPublicKey:v25 signingPublicKey:v29 viewList:isa];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_10000200C(0, &qword_10029D8D8, off_100275008);
    sub_1001A9AB8(&unk_10029D8E0, &qword_10029D8D8, off_100275008);
    v34 = v33;
    sub_100216F74();
    v35 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_100182C70(0, *(v35 + 2) + 1, 1, v35);
      *a4 = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      *a4 = sub_100182C70((v37 > 1), v38 + 1, 1, v35);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v39 = *a4;
    *(v39 + 2) = v38 + 1;
    v40 = &v39[40 * v38];
    *(v40 + 2) = v46[0];
    *(v40 + 3) = v46[1];
    *(v40 + 8) = v47;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1002170E4();
    __break(1u);
  }
}

uint64_t sub_10010E320(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100216BD4();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10018B000(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_10010E43C()
{
  result = sub_100019678(_swiftEmptyArrayStorage);
  off_10029D178 = result;
  return result;
}

uint64_t sub_10010E464()
{
  v13 = sub_100216CC4();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100216CA4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v8 = sub_100216824();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12[1] = sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216804();
  v14 = _swiftEmptyArrayStorage;
  sub_1001A13C4(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_1001AC36C(&qword_10029D680, &unk_1002977F0, &unk_100226580);
  sub_100216E34();
  (*(v0 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  result = sub_100216CF4();
  qword_10029D180 = result;
  return result;
}

void sub_10010E6D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100216194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_10029D178;
  if (*(off_10029D178 + 2) && (v11 = sub_100015B28(a1), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    swift_endAccess();
    *a2 = v13;
    v14 = v13;
  }

  else
  {
    swift_endAccess();
    v15 = objc_allocWithZone(NSManagedObjectModel);
    sub_100216174(v16);
    v18 = v17;
    v19 = [v15 initWithContentsOfURL:v17];

    if (v19)
    {
      (*(v5 + 16))(v9, a1, v4);
      swift_beginAccess();
      v20 = v19;
      sub_100107E40(v19, v9);
      swift_endAccess();
      *a2 = v20;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int sub_10010E8C8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  return sub_100217284();
}

uint64_t sub_10010E930()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1002169C4();

  return sub_1002169C4();
}

Swift::Int sub_10010E980()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100217264();
  sub_1002169C4();
  sub_1002169C4();
  return sub_100217284();
}

uint64_t sub_10010E9E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_100216FD4(16);

  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_100216A14(v6);
  v7._countAndFlagsBits = 44;
  v7._object = 0xE100000000000000;
  sub_100216A14(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v4;
  sub_100216A14(v8);
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_100216A14(v9);
  return 0x656E6961746E6F43;
}

uint64_t sub_10010EA9C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1002171A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1002171A4();
    }
  }

  return result;
}

id sub_10010EB40()
{
  v1 = v0;
  v2 = [v0 egoPeerStableInfo];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100216224();
  v6 = v5;

  v7 = [v1 egoPeerStableInfoSig];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;

    v12 = objc_allocWithZone(TPPeerStableInfo);
    isa = sub_100216204().super.isa;
    v14 = sub_100216204().super.isa;
    v15 = [v12 initWithData:isa sig:v14];

    sub_100002BF0(v9, v11);
  }

  else
  {
    v15 = 0;
  }

  sub_100002BF0(v4, v6);
  return v15;
}

uint64_t sub_10010EC58()
{
  v1 = v0;
  if (*(v0 + 40) != 1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v4 = sub_100216774();
    sub_100002648(v4, qword_10029D160);

    v5 = sub_100216754();
    v6 = sub_100216C84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136446210;
      v9 = *(v1 + 24);
      v10 = *(v1 + 32);

      v11 = sub_100005FB0(v9, v10, &v19);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Semaphore was not signaled by %{public}s", v7, 0xCu);
      sub_100006128(v8);
    }

    v12 = objc_opt_self();
    v13 = sub_100216964();
    v14 = sub_100216964();
    v16 = *(v1 + 24);
    v15 = *(v1 + 32);

    v17 = sub_100216964();

    v18 = sub_100216964();
    [v12 triggerAutoBugCaptureWithType:v13 subType:v14 subtypeContext:v17 domain:v18 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_10010EEB8()
{
  sub_10010EC58();

  return swift_deallocClassInstance();
}

void sub_10010EEEC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 40))
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v5 = sub_100216774();
    sub_100002648(v5, qword_10029D160);

    v6 = sub_100216754();
    v7 = sub_100216C84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_100005FB0(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v6, v7, "Semaphore double signaled by %{public}s", v8, 0xCu);
      sub_100006128(v9);
    }

    v10 = objc_opt_self();
    v11 = sub_100216964();
    v12 = sub_100216964();
    v13 = sub_100216964();
    v14 = sub_100216964();
    [v10 triggerAutoBugCaptureWithType:v11 subType:v12 subtypeContext:v13 domain:v14 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  *(v2 + 40) = 1;
  v3 = (*(v2 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore);
  v4 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  v16 = *(*(v2 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper9Container_semaphore);
  sub_100216D24();
}

uint64_t sub_10010F154()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 >> 60 == 15)
  {
    v3 = sub_10010B47C(0x79654B43414D48, 0xE700000000000000);
    if (v4 >> 60 != 15)
    {
      v6 = *(v1 + 32);
      v7 = *(v1 + 40);
      *(v1 + 32) = v3;
      *(v1 + 40) = v4;
      v8 = v6;
      v9 = v7;
LABEL_13:
      sub_10004CD18(v8, v9);
      v5 = *(v1 + 32);
      sub_1000602D0(v5, *(v1 + 40));
      return v5;
    }

    v10 = sub_100216B54();
    *(v10 + 16) = 32;
    *(v10 + 48) = 0u;
    *(v10 + 32) = 0u;
    v11 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, (v10 + 32));
    if (!v11)
    {
      v17 = sub_1001EFFC8(v10);
      v19 = v18;

      sub_10010ACF0(v17, v19, 0x79654B43414D48, 0xE700000000000000);
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      *(v1 + 32) = v17;
      *(v1 + 40) = v19;
      goto LABEL_13;
    }

    v12 = v11;

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    v14 = sub_100216754();
    v15 = sub_100216C74();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v14, v15, "failed generating random bytes: %d", v16, 8u);
    }

    return 0;
  }

  else
  {
    v5 = *(v1 + 32);
    sub_100012558(v5, v2);
  }

  return v5;
}

uint64_t sub_10010F840()
{
  v2 = v0;
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_100216964();
  v5 = [v3 initWithEntityName:v4];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  v24 = xmmword_10021D600;
  *(v6 + 16) = xmmword_10021D600;
  v7 = *(v2 + 24);
  *(v6 + 56) = type metadata accessor for ContainerMO();
  *(v6 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = sub_100216C34();
  [v5 setPredicate:v9];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v10 = swift_allocObject();
  *(v10 + 16) = v24;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0x444972656570;
  *(v10 + 40) = 0xE600000000000000;
  isa = sub_100216B14().super.isa;

  [v5 setPropertiesToFetch:isa];

  v25 = &_swiftEmptyArrayStorage;
  v12 = *(v2 + 16);
  type metadata accessor for PeerMO();
  v13 = sub_100216D44();
  if (v1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    swift_errorRetain();
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch peers: %{public}@", v19, 0xCu);
      sub_1000114D4(v20, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
  }

  else
  {
    v25 = sub_100182D90(0, v13 & ~(v13 >> 63), 0, &_swiftEmptyArrayStorage);
    v14 = [v5 setFetchBatchSize:25];
    __chkstk_darwin(v14, v15);
    v23[2] = &v25;
    v23[3] = v2;
    sub_100004860(v5, EscrowCheckGraphStatus.rawValue.getter, 0, sub_1001AB3BC, v23, type metadata accessor for PeerMO);

    return v25;
  }
}

void sub_10010FC48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = a1 & 0xC000000000000001;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = sub_1002170F4();
  v5 = a1 & 0xC000000000000001;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if (v5)
      {
        v9 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 peerID];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_100216974();
    v23 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100182D90(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100182D90((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v23;
  }

  while (v6 != v4);
LABEL_23:
  sub_1001100A8(v7);
  v18 = *(a3 + 16);
  if (v4)
  {
    v19 = 0;
    while (1)
    {
      if (v5)
      {
        v20 = sub_100217014();
      }

      else
      {
        if (v19 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (([v20 hasChanges] & 1) == 0)
      {
        [v18 refreshObject:v21 mergeChanges:0];
      }

      ++v19;
      if (v22 == v4)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_10010FEA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_100217024();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10001148C(&qword_10029D7E8, &qword_100226610);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10010FFA4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100182B3C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10001148C(&unk_10029D560, qword_10021D450);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001100A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100182D90(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10011019C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1002170F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1002170F4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10018AF3C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10018CD98(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10011028C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100182964(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TLKShare(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100110478()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_100216964();
  v4 = [v2 initWithEntityName:v3];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10021D600;
  v6 = *(v1 + 24);
  *(v5 + 56) = type metadata accessor for ContainerMO();
  *(v5 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = sub_100216C34();
  [v4 setPredicate:v8];

  v9 = *(v1 + 16);
  type metadata accessor for PeerMO();
  v10 = sub_100216D44();

  result = v10;
  if (v10 < 0)
  {
    __break(1u);

    return 0;
  }

  return result;
}

void *sub_1001107F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10019CE9C(*(v2 + 16), *(v2 + 24), a1, a2);
  v4 = sub_10011124C(v3);

  sub_10010AAD0();
  return v4;
}

void sub_100110B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D600;
  v10 = *(v3 + 24);
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  [v8 setFetchBatchSize:25];
  v13 = *(v3 + 16);
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  sub_100004860(v8, sub_1001AB380, v14, sub_1001AB3A0, v3, type metadata accessor for PeerMO);
}

void sub_100110CEC(void *a1, _BYTE *a2, uint64_t a3, void (*a4)(void *, char *))
{
  v6 = sub_10011124C(a1);
  if (v6)
  {
    v8 = 0;
    v7 = v6;
    a4(v6, &v8);

    *a2 = v8;
  }
}

void sub_100110D90(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_10010AAD0();
  if (v2)
  {
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v6 = v4;
    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100217014();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v4 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (([v8 hasChanges] & 1) == 0)
      {
        [v6 refreshObject:v4 mergeChanges:0];
      }

      ++v7;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:
}

void sub_100110EEC(unint64_t a1, uint64_t a2, void *a3)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = a1 & 0xC000000000000001;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = sub_1002170F4();
  v5 = a1 & 0xC000000000000001;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if (v5)
      {
        v9 = sub_100217014();
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 machineID];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_100216974();
    v23 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100182D90(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100182D90((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v23;
  }

  while (v6 != v4);
LABEL_23:
  sub_10019DCFC(v7);

  v18 = a3;
  if (v4)
  {
    v19 = 0;
    while (1)
    {
      if (v5)
      {
        v20 = sub_100217014();
      }

      else
      {
        if (v19 >= *(v25 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (([v20 hasChanges] & 1) == 0)
      {
        [v18 refreshObject:v21 mergeChanges:0];
      }

      ++v19;
      if (v22 == v4)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_100111148(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10018B000(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_10011124C(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [v1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    v23 = sub_100216754();
    v24 = sub_100216C74();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "DBAdapter PeerMO has no ID?", v25, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v106 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v7 = [v1 permanentInfo];
  if (!v7)
  {
LABEL_14:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);

    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v107 = v30;
      *v29 = 136446210;
      v31 = sub_100005FB0(v4, v6, &v107);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "DBAdapter peer %{public}s has no/incomplete permanent info/sig", v29, 0xCu);
      sub_100006128(v30);

LABEL_19:

      return 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_100216224();
  v105 = v10;

  v11 = [v1 permanentInfoSig];
  if (!v11)
  {
    sub_100002BF0(v9, v105);
    goto LABEL_14;
  }

  v101 = v4;
  v12 = v11;
  v104 = sub_100216224();
  v14 = v13;

  v102 = sub_10010F154();
  v16 = v15;
  v17 = [v1 hmacSig];
  v103 = v9;
  v98 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = sub_100216224();
    v99 = v20;

    if (v16 >> 60 == 15)
    {
      sub_100002BF0(v19, v99);
      v21 = 1;
    }

    else
    {
      sub_100012558(v102, v16);
      log = sub_100216204().super.isa;
      v93.super.isa = sub_100216204().super.isa;
      v32 = [v1 stableInfo];
      if (v32)
      {
        v33 = v32;
        v34 = sub_100216224();
        v36 = v35;

        v92.super.isa = sub_100216204().super.isa;
        sub_100002BF0(v34, v36);
      }

      else
      {
        v92.super.isa = 0;
      }

      v37 = [v1 stableInfoSig];
      if (v37)
      {
        v38 = v37;
        v39 = sub_100216224();
        v41 = v40;

        v91.super.isa = sub_100216204().super.isa;
        sub_100002BF0(v39, v41);
      }

      else
      {
        v91.super.isa = 0;
      }

      v42 = [v1 dynamicInfo];
      if (v42)
      {
        v43 = v42;
        v44 = sub_100216224();
        v46 = v45;

        v90.super.isa = sub_100216204().super.isa;
        sub_100002BF0(v44, v46);
      }

      else
      {
        v90.super.isa = 0;
      }

      v47 = [v1 dynamicInfoSig];
      if (v47)
      {
        v48 = v47;
        v49 = sub_100216224();
        v51 = v50;

        v96.super.isa = sub_100216204().super.isa;
        sub_100002BF0(v49, v51);
      }

      else
      {
        v96.super.isa = 0;
      }

      v52 = objc_opt_self();
      isa = sub_100216204().super.isa;
      v89 = sub_100216204().super.isa;
      v87 = [v52 verifyHMACWithPermanentInfoData:log permanentInfoSig:v93.super.isa stableInfoData:v92.super.isa stableInfoSig:v91.super.isa dynamicInfoData:v90.super.isa dynamicInfoSig:v96.super.isa hmacKey:isa hmacSig:v89];
      sub_100002BF0(v19, v99);
      sub_10004CD18(v102, v16);

      v21 = v87 ^ 1;
      v14 = v98;
      v9 = v103;
    }
  }

  else
  {
    v21 = 1;
  }

  v53 = v106;
  sub_100012558(v9, v105);
  sub_100012558(v104, v14);
  v54 = sub_100216964();
  v100 = v6;

  v55 = sub_100216204().super.isa;
  v56 = sub_100216204().super.isa;
  v57 = [objc_opt_self() permanentInfoWithPeerID:v54 data:v55 sig:v56 keyFactory:v53 checkSig:v21];

  v106 = v53;
  sub_100002BF0(v104, v14);

  sub_100002BF0(v103, v105);
  if (!v57)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v67 = sub_100216774();
    sub_100002648(v67, qword_10029D160);

    v27 = sub_100216754();
    v68 = sub_100216C74();

    if (os_log_type_enabled(v27, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v107 = v70;
      *v69 = 136446210;
      v71 = sub_100005FB0(v101, v6, &v107);

      *(v69 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v27, v68, "DBAdapter unable to construct permanent info for peerID %{public}s", v69, 0xCu);
      sub_100006128(v70);

      sub_100002BF0(v103, v105);
      sub_10004CD18(v102, v16);
      sub_100002BF0(v104, v14);
      goto LABEL_19;
    }

    sub_100002BF0(v103, v105);
    sub_10004CD18(v102, v16);
    sub_100002BF0(v104, v14);
    goto LABEL_18;
  }

  v58 = sub_10019D0FC(v1);
  v59 = sub_10019D5B4(v1);
  v60 = objc_allocWithZone(TPPeer);
  v107 = 0;
  v61 = v59;
  v62 = v57;
  v63 = v58;
  v64 = [v60 initWithPermanentInfo:v62 stableInfo:v63 dynamicInfo:v61 checkSig:v21 error:&v107];
  if (!v64)
  {
    v72 = v107;
    sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v73 = sub_100216774();
    sub_100002648(v73, qword_10029D160);

    swift_errorRetain();
    v74 = sub_100216754();
    v75 = sub_100216C74();

    if (os_log_type_enabled(v74, v75))
    {
      loga = v74;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v107 = v97;
      *v76 = 136446466;
      v78 = sub_100005FB0(v101, v100, &v107);

      *(v76 + 4) = v78;
      *(v76 + 12) = 2114;
      swift_errorRetain();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 14) = v79;
      *v77 = v79;
      _os_log_impl(&_mh_execute_header, loga, v75, "DBAdapter unable to init for peerID %{public}s): %{public}@", v76, 0x16u);
      sub_1000114D4(v77, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v97);

      sub_100002BF0(v103, v105);
      sub_10004CD18(v102, v16);
      sub_100002BF0(v104, v98);
    }

    else
    {
      sub_100002BF0(v103, v105);
      sub_10004CD18(v102, v16);
      sub_100002BF0(v104, v98);
    }

    return 0;
  }

  v65 = v64;
  v66 = v107;

  if ((v21 & 1) == 0)
  {
    sub_100002BF0(v103, v105);
    sub_10004CD18(v102, v16);
    goto LABEL_50;
  }

  if (v16 >> 60 == 15)
  {
    [v1 setHmacSig:0];
    sub_100002BF0(v103, v105);
LABEL_50:
    sub_100002BF0(v104, v98);

    return v65;
  }

  v80 = sub_100216204().super.isa;
  v81 = v65;
  v82 = [v65 calculateHmacWithHmacKey:v80];

  v83 = sub_100216224();
  v85 = v84;

  v86 = sub_100216204().super.isa;
  [v1 setHmacSig:v86];
  sub_100002BF0(v103, v105);
  sub_100002BF0(v104, v98);

  sub_100002BF0(v83, v85);
  sub_10004CD18(v102, v16);
  return v81;
}

uint64_t sub_100111EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D600;
  v10 = *(v3 + 24);
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  [v8 setFetchBatchSize:50];
  v13 = *(v3 + 16);
  v19 = a1;
  v20 = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v17[2] = sub_1001AB2FC;
  v17[3] = v14;
  v15 = v13;
  sub_100004860(v8, sub_1001AB2E0, v18, sub_1001AB348, v17, type metadata accessor for VoucherMO);
}

void sub_1001120E0(void *a1, _BYTE *a2, void (*a3)(id, char *))
{
  v21 = 0;
  v5 = a1;
  v6 = [v5 voucherInfo];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = sub_100216224();
  v10 = v9;

  v11 = [v5 voucherInfoSig];
  if (!v11)
  {
    sub_100002BF0(v8, v10);
LABEL_6:

    return;
  }

  v19 = a3;
  v20 = a2;
  v12 = v11;
  v13 = sub_100216224();
  v15 = v14;

  isa = sub_100216204().super.isa;
  v17 = sub_100216204().super.isa;
  v18 = [objc_opt_self() voucherInfoWithData:isa sig:v17];

  sub_100002BF0(v13, v15);
  sub_100002BF0(v8, v10);

  if (v18)
  {
    v19(v18, &v21);

    *v20 = v21;
  }
}

uint64_t sub_100112280(uint64_t a1, void (*a2)(uint64_t *))
{
  v5[3] = sub_10001148C(&qword_10029D988, &qword_100226720);
  v5[4] = sub_1001AC36C(&qword_10029D990, &qword_10029D988, &qword_100226720);
  v5[0] = a1;

  a2(v5);
  return sub_100006128(v5);
}

uint64_t sub_100112368(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  a7(a6, v10);

  return 1;
}

uint64_t sub_100112444()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_100216964();
  v4 = [v2 initWithEntityName:v3];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10021D600;
  v6 = *(v1 + 24);
  *(v5 + 56) = type metadata accessor for ContainerMO();
  *(v5 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v5 + 32) = v6;
  v7 = v6;
  v8 = sub_100216C34();
  [v4 setPredicate:v8];

  v9 = *(v1 + 16);
  type metadata accessor for VoucherMO();
  v10 = sub_100216D44();

  result = v10;
  if (v10 < 0)
  {
    __break(1u);

    return 0;
  }

  return result;
}

uint64_t sub_1001127C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  v6 = a4(a3);

  return v6;
}

uint64_t sub_100112814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_100216964();
  v9 = [v7 initWithEntityName:v8];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D600;
  v11 = *(v3 + 24);
  *(v10 + 56) = type metadata accessor for ContainerMO();
  *(v10 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = sub_100216C34();
  [v9 setPredicate:v13];

  [v9 setFetchBatchSize:10];
  v14 = *(v3 + 16);
  v18 = v6;
  v19 = a1;
  v20 = a2;
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  sub_100109320(v9, sub_1001AB274, v17, sub_100060220);
}

void sub_100112A5C(void *a1, _BYTE *a2, uint64_t a3, void (*a4)(id, char *))
{
  v21 = 0;
  v7 = [a1 crkInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xC000000000000000;
  }

  v12 = [a1 crkInfoSig];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xC000000000000000;
  }

  isa = sub_100216204().super.isa;
  v18 = sub_100216204().super.isa;
  v19 = [objc_opt_self() custodianRecoveryKeyWithData:isa sig:v18 keyFactory:a3];

  sub_100002BF0(v14, v16);
  sub_100002BF0(v9, v11);
  if (v19)
  {
    a4(v19, &v21);

    *a2 = v21;
  }
}

unint64_t sub_100112BF4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100216964();
  v8 = [v6 initWithEntityName:v7];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10021D420;
  v10 = v3[3];
  *(v9 + 56) = type metadata accessor for ContainerMO();
  *(v9 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v9 + 32) = v10;
  *(v9 + 96) = &type metadata for Int64;
  *(v9 + 104) = &protocol witness table for Int64;
  if (a1 < 0)
  {
    __break(1u);
    swift_once();
    v17 = sub_100216774();
    sub_100002648(v17, qword_10029D160);
    v18 = v3;
    v19 = sub_100216754();
    v20 = sub_100216C74();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = a2;
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 134349314;
      *(v21 + 4) = a1;
      *(v21 + 12) = 2082;
      v23 = v18;
      v24 = [v23 description];
      v25 = sub_100216974();
      v27 = v26;

      v28 = sub_100005FB0(v25, v27, &v45);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch policy for version %{public}llu: %{public}s", v21, 0x16u);
      sub_100006128(v22);
      a2 = v44;
    }

    if (a2)
    {
      v29 = v18;
      *a2 = v18;
    }

    else
    {
    }

    return 0;
  }

  *(v9 + 72) = a1;
  v11 = v10;
  v12 = sub_100216C34();
  [v8 setPredicate:v12];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10021D420;
  *(v13 + 32) = 0x61447963696C6F70;
  *(v13 + 40) = 0xEA00000000006174;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 0x61487963696C6F70;
  *(v13 + 72) = 0xEA00000000006873;
  isa = sub_100216B14().super.isa;

  [v8 setPropertiesToFetch:isa];

  [v8 setFetchLimit:1];
  v15 = v3[2];
  type metadata accessor for PolicyMO();
  result = sub_100216D54();
  if (result >> 62)
  {
    v42 = result;
    v43 = sub_1002170F4();
    result = v42;
    if (v43)
    {
      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((result & 0xC000000000000001) != 0)
    {
      v30 = sub_100217014();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v30 = *(result + 32);
    }

    v31 = v30;

    v32 = [v31 policyHash];
    if (v32)
    {
      v33 = v32;
      v34 = [v31 policyData];
      if (v34)
      {
        v35 = v34;
        v36 = sub_100216224();
        v38 = v37;

        v39 = objc_opt_self();
        v40 = sub_100216204().super.isa;
        v41 = [v39 policyDocWithHash:v33 data:v40];

        sub_100002BF0(v36, v38);
        return v41;
      }

      return 0;
    }

    goto LABEL_22;
  }

LABEL_22:

  return 0;
}

void sub_1001131EC()
{
  v2 = v0;
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_100216964();
  v5 = [v3 initWithEntityName:v4];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10021D600;
  v7 = *(v2 + 24);
  *(v6 + 56) = type metadata accessor for ContainerMO();
  *(v6 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = sub_100216C34();
  [v5 setPredicate:v9];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D420;
  *(v10 + 32) = 0x6E6F6973726576;
  *(v10 + 40) = 0xE700000000000000;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 0x61487963696C6F70;
  *(v10 + 72) = 0xEA00000000006873;
  isa = sub_100216B14().super.isa;

  [v5 setPropertiesToFetch:isa];

  v12 = *(v2 + 16);
  type metadata accessor for PolicyMO();
  v13 = sub_100216D54();
  if (!v1)
  {
    v21 = v13;
    if (v13 >> 62)
    {
      v32 = v13 & 0xFFFFFFFFFFFFFF8;
      v22 = sub_1002170F4();
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = v13 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    v23 = 0;
    v31 = v5;
    while (1)
    {
      v5 = v23;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_100217014();
        }

        else
        {
          if (v5 >= *(v32 + 16))
          {
            goto LABEL_27;
          }

          v24 = *(v21 + 8 * v5 + 32);
        }

        v25 = v24;
        v23 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v26 = [v24 policyHash];
        if (!v26)
        {

          goto LABEL_11;
        }

        v27 = v26;
        v28 = [v25 version];
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        v29 = [objc_allocWithZone(TPPolicyVersion) initWithVersion:v28 hash:v27];

        if (v29)
        {
          break;
        }

LABEL_11:
        ++v5;
        if (v23 == v22)
        {
          v5 = v31;
          goto LABEL_31;
        }
      }

      sub_100216B04();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100216B44();
      }

      sub_100216B64();
      v5 = v31;
      if (v23 == v22)
      {
LABEL_31:

        sub_10019C6BC(&_swiftEmptyArrayStorage);

        return;
      }
    }
  }

  if (qword_100297520 != -1)
  {
LABEL_29:
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  swift_errorRetain();
  v15 = sub_100216754();
  v16 = sub_100216C74();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = v5;
    v19 = swift_slowAlloc();
    *v17 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch policies: %{public}@", v17, 0xCu);
    sub_1000114D4(v19, &qword_10029D580, &unk_10021CCC0);
    v5 = v18;
  }

  swift_willThrow();
}