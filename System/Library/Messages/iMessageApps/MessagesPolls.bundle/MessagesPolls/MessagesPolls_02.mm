uint64_t sub_2E0A4()
{
  v1 = type metadata accessor for ViewModelPollVote();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1 - 8, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = (&v30 - v9);
  v11 = *v0;
  swift_getKeyPath();
  *&v34 = v11;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v12 = *(v11 + 72);
  v13 = *(v0 + 3);
  v14 = *(v0 + 7);
  v36 = *(v0 + 5);
  v37[0] = v14;
  *(v37 + 10) = *(v0 + 66);
  v34 = *(v0 + 1);
  v35 = v13;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v15 = v40;
  v33 = v39;

  sub_E8EC(v38);
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v32 = v7;
    v31 = v15;
    while (v17 < *(v12 + 16))
    {
      v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v20 = *(v2 + 72);
      sub_31EE4(v12 + v19 + v20 * v17, v10, type metadata accessor for ViewModelPollVote);
      v21 = v10[1];
      if (v21 && (*v10 == v33 ? (v22 = v21 == v15) : (v22 = 0), v22 || (sub_48874() & 1) != 0))
      {
        sub_32284(v10, v7, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v18[2] + 1, 1);
          v18 = v34;
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          sub_21FD8(v24 > 1, v25 + 1, 1);
          v18 = v34;
        }

        v18[2] = v25 + 1;
        v7 = v32;
        sub_32284(v32, v18 + v19 + v25 * v20, type metadata accessor for ViewModelPollVote);
        v15 = v31;
      }

      else
      {
        sub_6C50(v10);
      }

      if (v16 == ++v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:

  v26 = v18[2];

  sub_54A4(&qword_62B50, &qword_4BB60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_4A9C0;
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v26;
  if (qword_61CD0 != -1)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_47494();
  v28 = sub_483E4();

  return v28;
}

uint64_t sub_2E4FC()
{
  v1 = type metadata accessor for ViewModelPollVote();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  swift_getKeyPath();
  *&v24 = v7;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v8 = v7[9];
  v9 = *(v0 + 24);
  v10 = *(v0 + 56);
  v26 = *(v0 + 40);
  v27[0] = v10;
  *(v27 + 10) = *(v0 + 66);
  v24 = *(v0 + 8);
  v25 = v9;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v11 = v30;
  v23 = v29;

  sub_E8EC(v28);
  swift_getKeyPath();
  *&v24 = v7;
  sub_475C4();

  v12 = v7[11];
  if (v12 && (v13 = *(v8 + 16)) != 0)
  {
    v14 = v7[10];
    v15 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v17 = 0;
    while (v17 < *(v8 + 16))
    {
      sub_31EE4(v15 + *(v2 + 72) * v17, v6, type metadata accessor for ViewModelPollVote);
      v18 = v6[3];
      if (v18 && (v6[2] == v14 ? (v19 = v18 == v12) : (v19 = 0), (v19 || (sub_48874() & 1) != 0) && (v20 = v6[1]) != 0))
      {
        if (*v6 == v23 && v20 == v11)
        {
          sub_6C50(v6);
LABEL_23:

          return 1;
        }

        v21 = sub_48874();
        result = sub_6C50(v6);
        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_6C50(v6);
      }

      if (v13 == ++v17)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_2E814()
{
  v1 = type metadata accessor for ViewModelPollVote();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1 - 8, v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = v56 - v10;
  __chkstk_darwin(v9, v12);
  v14 = (v56 - v13);
  v15 = *v0;
  swift_getKeyPath();
  *&v63 = v15;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v16 = *(v15 + 72);
  v17 = *(v0 + 3);
  v18 = *(v0 + 7);
  v65 = *(v0 + 5);
  v66[0] = v18;
  *(v66 + 10) = *(v0 + 66);
  v63 = *(v0 + 1);
  v64 = v17;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v19 = v69;
  v60 = v68;

  sub_E8EC(v67);
  v61 = *(v16 + 16);
  if (v61)
  {
    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    v59 = v7;
    v58 = v19;
    while (v20 < *(v16 + 16))
    {
      v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v23 = *(v2 + 72);
      sub_31EE4(v16 + v22 + v23 * v20, v14, type metadata accessor for ViewModelPollVote);
      v24 = v14[1];
      if (v24 && (*v14 == v60 ? (v25 = v24 == v19) : (v25 = 0), v25 || (sub_48874() & 1) != 0))
      {
        sub_32284(v14, v7, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v63 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v21[2] + 1, 1);
          v21 = v63;
        }

        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_21FD8(v27 > 1, v28 + 1, 1);
          v21 = v63;
        }

        v21[2] = v28 + 1;
        v7 = v59;
        sub_32284(v59, v21 + v22 + v28 * v23, type metadata accessor for ViewModelPollVote);
        v19 = v58;
      }

      else
      {
        sub_6C50(v14);
      }

      if (v61 == ++v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_18:

  v29 = v21[2];
  if (v29)
  {
    v30 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v31 = *(v2 + 72);
    v32 = _swiftEmptyArrayStorage;
    do
    {
      sub_31EE4(v30, v11, type metadata accessor for ViewModelPollVote);
      v35 = *(v11 + 2);
      v34 = *(v11 + 3);

      sub_6C50(v11);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_10C50(0, *(v32 + 2) + 1, 1, v32);
        }

        v37 = *(v32 + 2);
        v36 = *(v32 + 3);
        if (v37 >= v36 >> 1)
        {
          v32 = sub_10C50((v36 > 1), v37 + 1, 1, v32);
        }

        *(v32 + 2) = v37 + 1;
        v33 = &v32[16 * v37];
        *(v33 + 4) = v35;
        *(v33 + 5) = v34;
      }

      v30 += v31;
      --v29;
    }

    while (v29);

    if (*(v32 + 2))
    {
      goto LABEL_28;
    }
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v62 = v32;
      v59 = sub_54A4(&qword_637B8, &qword_4C7B0);
      v61 = v56;
      v60 = *(v59 - 1);
      v38 = *(v60 + 64);
      __chkstk_darwin(v59, v39);
      v57 = v56 - v40;
      v41 = sub_54A4(&qword_637C0, &qword_4C7B8);
      v58 = v56;
      v42 = *(v41 - 8);
      v43 = *(v42 + 64);
      __chkstk_darwin(v41, v44);
      v46 = v56 - v45;
      (*(v42 + 104))(v56 - v45, enum case for ListFormatStyle.ListType.and<A, B>(_:), v41);
      v47 = sub_54A4(&qword_637C8, &unk_4C7C0);
      v56[1] = v56;
      v48 = *(v47 - 8);
      v49 = *(v48 + 64);
      __chkstk_darwin(v47, v50);
      v52 = v56 - v51;
      (*(v48 + 104))(v56 - v51, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v47);
      sub_54A4(&qword_62690, &qword_4B280);
      sub_EAF0(&qword_637D0, &qword_62690, &qword_4B280);
      v53 = v57;
      sub_47354();
      (*(v48 + 8))(v52, v47);
      (*(v42 + 8))(v46, v41);
      sub_318B4();
      v54 = v59;
      sub_48514();
      (*(v60 + 8))(v53, v54);

      return v63;
    }
  }

  if (qword_61CD0 != -1)
  {
LABEL_33:
    swift_once();
  }

  return sub_47494();
}

uint64_t sub_2F04C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v10 = *(a2 + 40);
  *v11 = *(a2 + 56);
  *&v11[10] = *(a2 + 66);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v5 = v12[0];
  v4 = v12[1];

  sub_E8EC(v12);
  if (v2 == v5 && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_48874();
  }

  return v6 & 1;
}

uint64_t sub_2F120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v96 = a3;
  v103 = a4;
  v104 = a2;
  v7 = sub_54A4(&qword_638E0, &qword_4C938);
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  __chkstk_darwin(v7, v9);
  v90 = &v87 - v10;
  v11 = sub_54A4(&qword_638E8, &qword_4C940);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v89 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v88 = &v87 - v17;
  v18 = sub_54A4(&qword_638F0, &qword_4C948);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v102 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v99 = &v87 - v24;
  v91 = sub_47A04();
  v25 = *(v91 - 8);
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v91, v27);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v31);
  v33 = &v87 - v32;
  v34 = _s11RowTextViewVMa();
  v35 = *(*(v34 - 1) + 64);
  __chkstk_darwin(v34, v36);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_54A4(&qword_638F8, &qword_4C950);
  v39 = *(*(v92 - 8) + 64);
  v41 = __chkstk_darwin(v92, v40);
  v98 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41, v43);
  v93 = &v87 - v45;
  __chkstk_darwin(v44, v46);
  v97 = &v87 - v47;
  v48 = *a1;
  swift_getKeyPath();
  v49 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v115 = v48;
  v94 = sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  v95 = v49;
  sub_475C4();

  swift_beginAccess();
  v50 = *(*(v48 + 200) + 16);
  sub_482D4();
  v51 = sub_482E4();

  v52 = *(a1 + 3);
  v53 = *(a1 + 7);
  v117 = *(a1 + 5);
  v118[0] = v53;
  *(v118 + 10) = *(a1 + 66);
  v115 = *(a1 + 1);
  v116 = v52;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48194();
  v54 = v34[6];

  sub_2B054(&v38[v54]);
  v55 = &v38[v34[7]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v38[v34[8]];
  if (qword_61CB8 != -1)
  {
    swift_once();
  }

  v57 = unk_64180;
  v120[0] = xmmword_64170;
  v120[1] = unk_64180;
  v59 = xmmword_64190;
  v58 = *&qword_641A0;
  v120[2] = xmmword_64190;
  v120[3] = *&qword_641A0;
  *v56 = xmmword_64170;
  *(v56 + 1) = v57;
  *(v56 + 2) = v59;
  *(v56 + 3) = v58;
  v60 = &v38[v34[13]];
  *&v113[0] = 0;
  sub_321CC(v120, &v115);
  sub_48114();
  v61 = *(&v115 + 1);
  *v60 = v115;
  *(v60 + 1) = v61;
  v62 = v118[4];
  *(v38 + 24) = v118[5];
  v63 = v119[0];
  *(v38 + 40) = v118[6];
  *(v38 + 56) = v63;
  *(v38 + 66) = *(v119 + 10);
  *v38 = v48;
  *(v38 + 8) = v62;
  v38[v34[9]] = v96 & 1;
  *&v38[v34[10]] = v104;
  *&v38[v34[11]] = a5;
  v64 = v34[12];
  v104 = v51;
  *&v38[v64] = v51;
  sub_2B054(v33);
  v65 = v91;
  (*(v25 + 104))(v30, enum case for LayoutDirection.leftToRight(_:), v91);
  LOBYTE(v60) = sub_479F4();
  v66 = *(v25 + 8);
  v66(v30, v65);
  v66(v33, v65);
  if (v60)
  {
    sub_482B4();
  }

  else
  {
    sub_482C4();
  }

  v67 = v97;
  sub_47A94();
  v68 = v93;
  sub_32284(v38, v93, _s11RowTextViewVMa);
  v69 = (v68 + *(v92 + 36));
  v70 = v118[2];
  v69[4] = v118[1];
  v69[5] = v70;
  v69[6] = v118[3];
  v71 = v116;
  *v69 = v115;
  v69[1] = v71;
  v72 = v118[0];
  v69[2] = v117;
  v69[3] = v72;
  sub_E940(v68, v67, &qword_638F8, &qword_4C950);
  swift_getKeyPath();
  *&v113[0] = v48;
  sub_475C4();

  if (*(v48 + 98) == 1 && (swift_getKeyPath(), *&v113[0] = v48, sub_475C4(), , *(v48 + 97) != 1))
  {
    v81 = v99;
    (*(v100 + 56))(v99, 1, 1, v101);
  }

  else
  {
    sub_2FAC0(v113);
    v73 = *(a1 + *(_s18PollOptionCellViewVMa() + 40) + 136);
    sub_482A4();
    sub_47904();
    v107 = v113[2];
    v108 = v113[3];
    LOBYTE(v109) = v114;
    v105 = v113[0];
    v106 = v113[1];
    v74 = v88;
    sub_2FD28(v88);
    v75 = v89;
    sub_6128(v74, v89, &qword_638E8, &qword_4C940);
    v76 = v110;
    v77 = v90;
    *(v90 + 4) = v109;
    *(v77 + 80) = v76;
    *(v77 + 96) = v111;
    *(v77 + 112) = v112;
    v78 = v106;
    *v77 = v105;
    *(v77 + 16) = v78;
    v79 = v108;
    *(v77 + 32) = v107;
    *(v77 + 48) = v79;
    v80 = sub_54A4(&qword_63900, &qword_4C988);
    sub_6128(v75, v77 + *(v80 + 48), &qword_638E8, &qword_4C940);
    sub_60C8(v74, &qword_638E8, &qword_4C940);
    sub_60C8(v75, &qword_638E8, &qword_4C940);
    v81 = v99;
    sub_E940(v77, v99, &qword_638E0, &qword_4C938);
    (*(v100 + 56))(v81, 0, 1, v101);
  }

  v82 = v98;
  sub_6128(v67, v98, &qword_638F8, &qword_4C950);
  v83 = v102;
  sub_6128(v81, v102, &qword_638F0, &qword_4C948);
  v84 = v103;
  sub_6128(v82, v103, &qword_638F8, &qword_4C950);
  v85 = sub_54A4(&qword_63908, &qword_4C990);
  sub_6128(v83, v84 + *(v85 + 48), &qword_638F0, &qword_4C948);

  sub_60C8(v81, &qword_638F0, &qword_4C948);
  sub_60C8(v67, &qword_638F8, &qword_4C950);
  sub_60C8(v83, &qword_638F0, &qword_4C948);
  return sub_60C8(v82, &qword_638F8, &qword_4C950);
}

__n128 sub_2FAC0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_47A04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  sub_2B054(&v18 - v11);
  (*(v4 + 104))(v9, enum case for LayoutDirection.leftToRight(_:), v3);
  v13 = sub_479F4();
  v14 = *(v4 + 8);
  v14(v9, v3);
  v14(v12, v3);
  if (v13)
  {
    LOBYTE(v30) = 1;
    v29 = 0;
    v18 = 0;
    v19 = 1;
    v25 = 0;
  }

  else
  {
    v15 = *(v1 + *(_s18PollOptionCellViewVMa() + 40) + 128);
    sub_482A4();
    sub_47904();
    v28 = 1;
    v27 = v31;
    v26 = v33;
    v29 = 1;
    v18 = 0;
    v19 = 1;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = 1;
  }

  sub_54A4(&qword_63928, &qword_4C9B0);
  sub_322EC();
  sub_47CC4();
  v16 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v16;
  *(a1 + 64) = v39;
  result = v36;
  *a1 = v35;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2FD28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = _s15AvatarStackViewVMa();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_54A4(&qword_63910, &qword_4C998);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56, v9);
  v57 = &v52[-v10];
  v11 = sub_54A4(&qword_63918, &qword_4C9A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v58 = &v52[-v14];
  v15 = *(v1 + 3);
  v16 = *(v1 + 7);
  v70 = *(v1 + 5);
  *v71 = v16;
  *&v71[10] = *(v1 + 66);
  v68 = *(v1 + 1);
  v69 = v15;
  v55 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v17 = v67[3];
  v54 = v67[2];

  sub_E8EC(v67);
  v18 = *v1;

  v53 = sub_2E4FC();
  v19 = sub_3055C();
  swift_getKeyPath();
  *&v68 = v18;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  v20 = *(v18 + 156);
  KeyPath = swift_getKeyPath();
  v22 = v54;
  *v7 = 0;
  v7[1] = v22;
  v7[2] = v17;
  v23 = v3[6];
  type metadata accessor for PollViewModel();
  sub_48214();
  *(v7 + v3[7]) = v53 & 1;
  *(v7 + v3[8]) = v19;
  *(v7 + v3[9]) = v20;
  v24 = (v7 + v3[10]);
  if (qword_61CC8 != -1)
  {
    swift_once();
  }

  v25 = unk_64200;
  v70 = xmmword_641F0;
  *v71 = unk_64200;
  v26 = unk_64210;
  *&v71[16] = unk_64210;
  v28 = xmmword_641D0;
  v27 = *&qword_641E0;
  v68 = xmmword_641D0;
  v69 = *&qword_641E0;
  v24[2] = xmmword_641F0;
  v24[3] = v25;
  v24[4] = v26;
  *v24 = v28;
  v24[1] = v27;
  v29 = v7 + v3[11];
  *v29 = KeyPath;
  v29[8] = 0;
  sub_54A4(&qword_63920, &qword_4C9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4C610;
  sub_32228(&v68, v65);
  v31 = sub_47E64();
  *(inited + 32) = v31;
  v32 = sub_47E74();
  *(inited + 33) = v32;
  v33 = sub_47E94();
  sub_47E94();
  if (sub_47E94() != v31)
  {
    v33 = sub_47E94();
  }

  sub_47E94();
  if (sub_47E94() != v32)
  {
    v33 = sub_47E94();
  }

  v34 = *(v2 + *(_s18PollOptionCellViewVMa() + 40) + 8);
  sub_47834();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v57;
  sub_32284(v7, v57, _s15AvatarStackViewVMa);
  v44 = &v43[*(v56 + 36)];
  *v44 = v33;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  v45 = v43;
  v46 = v58;
  sub_E940(v45, v58, &qword_63910, &qword_4C998);
  v47 = *(v2 + 3);
  v48 = *(v2 + 7);
  v65[2] = *(v2 + 5);
  v66[0] = v48;
  *(v66 + 10) = *(v2 + 66);
  v65[0] = *(v2 + 1);
  v65[1] = v47;
  sub_48164();
  v63[0] = v60;
  v63[1] = v61;
  v64[0] = v62[0];
  *(v64 + 10) = *(v62 + 10);
  sub_E8EC(v63);
  if (BYTE9(v64[1]))
  {
    v49 = 0.0;
  }

  else
  {
    v49 = 1.0;
  }

  v50 = v59;
  sub_E940(v46, v59, &qword_63918, &qword_4C9A0);
  result = sub_54A4(&qword_638E8, &qword_4C940);
  *(v50 + *(result + 36)) = v49;
  return result;
}

uint64_t sub_3021C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ViewModelPollVote();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5 - 8, v8);
  v33 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = (v29 - v12);
  result = sub_30FAC();
  if (result)
  {
    v29[1] = result;
    v30 = v2;
    v15 = *v2;
    swift_getKeyPath();
    v35 = v15;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    swift_beginAccess();
    v16 = *(v15 + 72);
    v17 = *(v16 + 16);

    if (v17)
    {
      v18 = 0;
      v19 = _swiftEmptyArrayStorage;
      v31 = a1;
      v32 = a2;
      while (v18 < *(v16 + 16))
      {
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v21 = *(v6 + 72);
        sub_31EE4(v16 + v20 + v21 * v18, v13, type metadata accessor for ViewModelPollVote);
        v22 = v13[1];
        if (v22 && (*v13 == a1 ? (v23 = v22 == a2) : (v23 = 0), v23 || (sub_48874() & 1) != 0))
        {
          sub_32284(v13, v33, type metadata accessor for ViewModelPollVote);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21FD8(0, v19[2] + 1, 1);
            v19 = v34;
          }

          v26 = v19[2];
          v25 = v19[3];
          if (v26 >= v25 >> 1)
          {
            sub_21FD8(v25 > 1, v26 + 1, 1);
            v19 = v34;
          }

          v19[2] = v26 + 1;
          result = sub_32284(v33, v19 + v20 + v26 * v21, type metadata accessor for ViewModelPollVote);
          a1 = v31;
          a2 = v32;
        }

        else
        {
          result = sub_6C50(v13);
        }

        if (v17 == ++v18)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
LABEL_20:

      v27 = v19[2];

      result = _s18PollOptionCellViewVMa();
      v28 = *(v30 + *(result + 40) + 96);
    }
  }

  return result;
}

uint64_t sub_3055C()
{
  v1 = v0;
  v71 = sub_47884();
  v69 = *(v71 - 8);
  v2 = *(v69 + 64);
  v4 = __chkstk_darwin(v71, v3);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v65 = &v60 - v7;
  v70 = sub_48304();
  v68 = *(v70 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v70, v9);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_48254();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_48294();
  v16 = *(v73 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v73, v18);
  v72 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v62 = &v60 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v60 - v25;
  v64 = sub_54A4(&qword_638D0, &qword_4C8E0);
  v27 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64, v28);
  v30 = &v60 - v29;
  v74 = sub_2B464();
  v31 = *v0;
  v32 = *(*v0 + 152);
  swift_getKeyPath();
  if (v32 != 1)
  {
    v75 = v31;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    if (*(v31 + 98) == 1)
    {
      v43 = (v1 + *(_s18PollOptionCellViewVMa() + 40) + 104);
LABEL_39:
      v56 = *v43;

      goto LABEL_40;
    }

    v45 = sub_2E4FC();
    v46 = sub_2B464();
    if (v45)
    {
      if ((v46 & 1) == 0)
      {
LABEL_23:
        if (qword_61D48 != -1)
        {
          swift_once();
        }

        v43 = &qword_643E0;
        goto LABEL_39;
      }

LABEL_14:
      if (qword_61D60 != -1)
      {
        swift_once();
      }

      v43 = &qword_643F8;
      goto LABEL_39;
    }

LABEL_36:
    if (qword_61D28 != -1)
    {
      swift_once();
    }

    v43 = &qword_643C0;
    goto LABEL_39;
  }

  v61 = v16;
  v75 = v31;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v31 + 98) == 1)
  {
    swift_getKeyPath();
    v75 = v31;
    sub_475C4();

    if (*(v31 + 97) == 1)
    {
      if (v74)
      {
        sub_48244();
        sub_48264();
        (*(v63 + 8))(v15, v11);
        v33 = v65;
        sub_2B25C(v65);
        v34 = v69;
        v35 = v66;
        v36 = v71;
        (*(v69 + 104))(v66, enum case for ColorScheme.dark(_:), v71);
        v37 = sub_47874();
        v38 = *(v34 + 8);
        v38(v35, v36);
        v38(v33, v36);
        v40 = v67;
        v39 = v68;
        v41 = &enum case for BlendMode.plusLighter(_:);
        if ((v37 & 1) == 0)
        {
          v41 = &enum case for BlendMode.plusDarker(_:);
        }

        v42 = v70;
        (*(v68 + 104))(v67, *v41, v70);
        (*(v61 + 32))(v30, v26, v73);
        (*(v39 + 32))(&v30[*(v64 + 36)], v40, v42);
        sub_EAF0(&qword_638D8, &qword_638D0, &qword_4C8E0);
      }

      else
      {
        v75 = *(v1 + *(_s18PollOptionCellViewVMa() + 40) + 104);
      }

      return sub_47914();
    }
  }

  swift_getKeyPath();
  v75 = v31;
  sub_475C4();

  if (*(v31 + 98) == 1)
  {
    v44 = sub_48074();
LABEL_40:
    v75 = v44;
    return sub_47914();
  }

  v47 = sub_2E4FC();
  v48 = v47;
  if ((v74 & 1) == 0)
  {
    v50 = *(v31 + 152);
    v51 = sub_2B464();
    if (v48)
    {
      if ((v51 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    if (v50)
    {
      if (qword_61D30 != -1)
      {
        swift_once();
      }

      v43 = &qword_643C8;
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if ((v47 & 1) != 0 || (sub_2B464() & 1) == 0)
  {
    v52 = sub_2E4FC();
    v53 = *(v31 + 152);
    v54 = sub_2B464();
    if (v52)
    {
      if (v54)
      {
        if (qword_61D60 != -1)
        {
          swift_once();
        }

        v55 = &qword_643F8;
      }

      else
      {
        if (qword_61D48 != -1)
        {
          swift_once();
        }

        v55 = &qword_643E0;
      }
    }

    else if (v53)
    {
      if (qword_61D30 != -1)
      {
        swift_once();
      }

      v55 = &qword_643C8;
    }

    else
    {
      if (qword_61D28 != -1)
      {
        swift_once();
      }

      v55 = &qword_643C0;
    }

    v58 = *v55;

    swift_getKeyPath();
    v75 = v31;
    sub_475C4();

    v59 = *(v31 + 156);
    sub_48284();
  }

  else
  {
    swift_getKeyPath();
    v75 = v31;
    sub_475C4();

    v49 = *(v31 + 156);
    sub_48274();
  }

  return sub_47914();
}

uint64_t sub_30EA8(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 7);
  v14 = *(a1 + 5);
  v15[0] = v3;
  *(v15 + 10) = *(a1 + 66);
  v12 = *(a1 + 1);
  v13 = v2;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v16[0] = v9;
  v16[1] = v10;
  *v17 = v11[0];
  *&v17[10] = *(v11 + 10);
  result = sub_E8EC(v16);
  if ((v17[25] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 3);
    v7 = *(a1 + 7);
    v14 = *(a1 + 5);
    v15[0] = v7;
    *(v15 + 10) = *(a1 + 66);
    v12 = *(a1 + 1);
    v13 = v6;
    sub_48164();
    v8 = v10;

    sub_E8EC(&v9);
    sub_1F554(v8, *(&v8 + 1));
  }

  return result;
}

uint64_t sub_30FAC()
{
  v1 = type metadata accessor for ViewModelPollVote();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1 - 8, v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = (&v34 - v9);
  v11 = *v0;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v49 = v11;
  v39 = sub_31810(&qword_62300, type metadata accessor for PollViewModel);
  v40 = v12;
  sub_475C4();

  v13 = v11[6];
  v38 = *(v13 + 16);
  if (v38)
  {
    v37 = v13 + 32;

    result = swift_beginAccess();
    v15 = 0;
    v16 = 0;
    v45 = v7;
    v35 = v13;
    v36 = v11;
    while (v16 < *(v13 + 16))
    {
      v43 = v16;
      v44 = v15;
      v19 = (v37 + 48 * v16);
      v20 = v19[1];
      v47 = *v19;
      v21 = v19[3];
      v22 = v19[4];
      swift_getKeyPath();
      v48 = v11;
      v42 = v21;

      v41 = v22;

      sub_475C4();

      v23 = v11[9];
      v24 = *(v23 + 16);

      if (v24)
      {
        v25 = 0;
        v17 = _swiftEmptyArrayStorage;
        v46 = v20;
        while (v25 < *(v23 + 16))
        {
          v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v27 = *(v2 + 72);
          sub_31EE4(v23 + v26 + v27 * v25, v10, type metadata accessor for ViewModelPollVote);
          v28 = v10[1];
          if (v28 && (*v10 == v47 ? (v29 = v28 == v20) : (v29 = 0), v29 || (sub_48874() & 1) != 0))
          {
            sub_32284(v10, v7, type metadata accessor for ViewModelPollVote);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v48 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21FD8(0, v17[2] + 1, 1);
              v17 = v48;
            }

            v32 = v17[2];
            v31 = v17[3];
            if (v32 >= v31 >> 1)
            {
              sub_21FD8(v31 > 1, v32 + 1, 1);
              v17 = v48;
            }

            v17[2] = v32 + 1;
            v33 = v17 + v26 + v32 * v27;
            v7 = v45;
            result = sub_32284(v45, v33, type metadata accessor for ViewModelPollVote);
            v20 = v46;
          }

          else
          {
            result = sub_6C50(v10);
          }

          if (v24 == ++v25)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      v17 = _swiftEmptyArrayStorage;
LABEL_4:
      v16 = v43 + 1;

      v18 = v17[2];

      v15 = v44;
      if (v44 <= v18)
      {
        v15 = v18;
      }

      v13 = v35;
      v11 = v36;
      if (v16 == v38)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_31390()
{
  result = qword_63738;
  if (!qword_63738)
  {
    sub_A36C(&qword_636F0, &qword_4C698);
    sub_31448();
    sub_EAF0(&qword_62488, &qword_62490, &qword_4AF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63738);
  }

  return result;
}

unint64_t sub_31448()
{
  result = qword_63740;
  if (!qword_63740)
  {
    sub_A36C(&qword_63730, &unk_4C700);
    sub_31500();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63740);
  }

  return result;
}

unint64_t sub_31500()
{
  result = qword_63748;
  if (!qword_63748)
  {
    sub_A36C(&qword_63720, &qword_4C6F0);
    sub_EAF0(&qword_63750, &qword_63758, &qword_4C710);
    sub_EAF0(&qword_63760, &qword_63728, &qword_4C6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63748);
  }

  return result;
}

uint64_t sub_315F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_636F8, &qword_4C6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_31664()
{
  result = qword_63768;
  if (!qword_63768)
  {
    sub_A36C(&qword_63700, &qword_4C6A8);
    sub_3171C();
    sub_EAF0(&qword_63788, &qword_63790, &qword_4C770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63768);
  }

  return result;
}

unint64_t sub_3171C()
{
  result = qword_63770;
  if (!qword_63770)
  {
    sub_A36C(&qword_636F8, &qword_4C6A0);
    sub_A36C(&qword_636F0, &qword_4C698);
    sub_31390();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63770);
  }

  return result;
}

uint64_t sub_31810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_31858(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_3189C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3189C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_318B4()
{
  result = qword_637D8;
  if (!qword_637D8)
  {
    sub_A36C(&qword_637B8, &qword_4C7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_637D8);
  }

  return result;
}

unint64_t sub_31914()
{
  result = qword_63800;
  if (!qword_63800)
  {
    sub_A36C(&qword_637F0, &qword_4C810);
    sub_A36C(&qword_63808, &qword_4C820);
    sub_319DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63800);
  }

  return result;
}

unint64_t sub_319DC()
{
  result = qword_63810;
  if (!qword_63810)
  {
    sub_A36C(&qword_63808, &qword_4C820);
    sub_31A94();
    sub_EAF0(&qword_638B0, &qword_638B8, &qword_4C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63810);
  }

  return result;
}

unint64_t sub_31A94()
{
  result = qword_63818;
  if (!qword_63818)
  {
    sub_A36C(&qword_63820, &qword_4C828);
    sub_31B4C();
    sub_EAF0(&qword_638A0, &qword_638A8, &qword_4C868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63818);
  }

  return result;
}

unint64_t sub_31B4C()
{
  result = qword_63828;
  if (!qword_63828)
  {
    sub_A36C(&qword_63830, &qword_4C830);
    sub_31BD8();
    sub_31E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63828);
  }

  return result;
}

unint64_t sub_31BD8()
{
  result = qword_63838;
  if (!qword_63838)
  {
    sub_A36C(&qword_63840, &qword_4C838);
    sub_31C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63838);
  }

  return result;
}

unint64_t sub_31C64()
{
  result = qword_63848;
  if (!qword_63848)
  {
    sub_A36C(&qword_63850, &qword_4C840);
    sub_31CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63848);
  }

  return result;
}

unint64_t sub_31CF0()
{
  result = qword_63858;
  if (!qword_63858)
  {
    sub_A36C(&qword_63860, &qword_4C848);
    sub_31D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63858);
  }

  return result;
}

unint64_t sub_31D7C()
{
  result = qword_63868;
  if (!qword_63868)
  {
    sub_A36C(&qword_63870, &qword_4C850);
    sub_EAF0(&qword_63878, &qword_63880, &qword_4C858);
    sub_EAF0(&qword_63888, &qword_63890, &qword_4C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63868);
  }

  return result;
}

unint64_t sub_31E60()
{
  result = qword_63898;
  if (!qword_63898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63898);
  }

  return result;
}

uint64_t sub_31EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_31F4C()
{
  v1 = _s18PollOptionCellViewVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = *(v0 + v3 + 72);

  v13 = v1[6];
  sub_54A4(&qword_62500, &qword_4B000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_47A04();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[7];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_47884();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  sub_D60C(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v19 = v5 + v1[10];
  v20 = *(v19 + 104);

  v21 = *(v19 + 112);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_32154()
{
  v1 = *(_s18PollOptionCellViewVMa() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_30EA8(v2);
}

uint64_t sub_32284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_322EC()
{
  result = qword_63930;
  if (!qword_63930)
  {
    sub_A36C(&qword_63928, &qword_4C9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63930);
  }

  return result;
}

uint64_t sub_323EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_62230, "v9");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_324BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_62230, "v9");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s15AvatarStackViewVMa()
{
  result = qword_639A0;
  if (!qword_639A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_325B8()
{
  sub_32680();
  if (v0 <= 0x3F)
  {
    sub_118BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_32680()
{
  if (!qword_622A0)
  {
    type metadata accessor for PollViewModel();
    v0 = sub_48234();
    if (!v1)
    {
      atomic_store(v0, &qword_622A0);
    }
  }
}

uint64_t sub_326F4()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(_s15AvatarStackViewVMa() + 44);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_48634();
    v9 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_3284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = _s15AvatarStackViewVMa();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39, v5);
  v6 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_54A4(&qword_639F8, &qword_4CA58);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v39 - v11;
  v42 = sub_54A4(&qword_63A00, &qword_4CA60);
  v13 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42, v14);
  v41 = &v39 - v15;
  v40 = sub_54A4(&qword_63A08, &qword_4CA68);
  v16 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40, v17);
  v19 = &v39 - v18;
  v20 = sub_32D98();
  v21 = *(v20 + 2);
  if (v21 >= 4)
  {
    v22 = v21 - 4;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_36F78((v20 + 32), v22, (2 * v21) | 1);

  *&v45 = v23;
  swift_getKeyPath();
  sub_37A80(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s15AvatarStackViewVMa);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = swift_allocObject();
  sub_37B50(v6, v25 + v24, _s15AvatarStackViewVMa);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_372C0;
  *(v26 + 24) = v25;
  sub_54A4(&qword_63A10, &qword_4CA98);
  sub_54A4(&qword_63A18, &qword_4CAA0);
  sub_EAF0(&qword_63A20, &qword_63A10, &qword_4CA98);
  sub_373CC();
  v27 = v39;
  sub_481E4();
  v28 = *(a1 + v27[10] + 8);
  sub_482A4();
  sub_47904();
  v29 = &v12[*(v8 + 44)];
  v30 = v46;
  *v29 = v45;
  *(v29 + 1) = v30;
  *(v29 + 2) = v47;
  LOBYTE(v28) = sub_33E28();
  v31 = v27[6];
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v32 = *(v44 + 152);

  v33 = sub_326F4();
  if (v28)
  {
    if (v32)
    {
      if (qword_61D58 != -1)
      {
        swift_once();
      }

      v34 = &qword_643F0;
    }

    else
    {
      if (qword_61D50 != -1)
      {
        swift_once();
      }

      v34 = &qword_643E8;
    }
  }

  else if (v33)
  {
    if (qword_61D68 != -1)
    {
      swift_once();
    }

    v34 = &qword_64400;
  }

  else
  {
    if (qword_61D38 != -1)
    {
      swift_once();
    }

    v34 = &qword_643D0;
  }

  v35 = *v34;

  v36 = v41;
  sub_E940(v12, v41, &qword_639F8, &qword_4CA58);
  *(v36 + *(v42 + 36)) = v35;
  v37 = *(a1 + v27[8]);
  sub_E940(v36, v19, &qword_63A00, &qword_4CA60);
  *&v19[*(v40 + 36)] = v37;
  sub_E940(v19, v43, &qword_63A08, &qword_4CA68);
}

char *sub_32D98()
{
  v1 = sub_54A4(&qword_630B0, &unk_4C190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v35 - v4;
  v39 = type metadata accessor for ViewModelPollVote();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_344C8();
  v12 = v11[2];
  if (!v12)
  {

    v15 = _swiftEmptyArrayStorage;
    if (sub_33E28())
    {
      return v15;
    }

    goto LABEL_23;
  }

  v13 = *(v6 + 80);
  v35 = v11;
  v14 = v11 + ((v13 + 32) & ~v13);
  v37 = *(v6 + 72);
  v15 = _swiftEmptyArrayStorage;
  v36 = (v6 + 56);
  v38 = v0;
  do
  {
    sub_37A80(v14, v10, type metadata accessor for ViewModelPollVote);
    sub_37A80(v10, v5, type metadata accessor for ViewModelPollVote);
    (*v36)(v5, 0, 1, v39);
    v16 = sub_34120(v5);
    sub_60C8(v5, &qword_630B0, &unk_4C190);
    v18 = *(v10 + 3);
    if (v16)
    {
      if (v18)
      {
        v19 = *(v10 + 2);
        v20 = *(v10 + 3);
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_111F8(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v21 = *(v15 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v15 = sub_111F8((v21 > 1), v22 + 1, 1, v15);
      }
    }

    else
    {
      if (v18)
      {
        v19 = *(v10 + 2);
        v20 = *(v10 + 3);
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_111F8(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v24 = *(v15 + 3);
      v23 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v15 = sub_111F8((v24 > 1), v22 + 1, 1, v15);
      }

      v16 = 0;
    }

    sub_6C50(v10);
    *(v15 + 2) = v23;
    v17 = &v15[24 * v22];
    *(v17 + 4) = v19;
    *(v17 + 5) = v20;
    *(v17 + 6) = v16;
    v14 += v37;
    --v12;
  }

  while (v12);

  if ((sub_33E28() & 1) == 0)
  {
LABEL_23:
    v25 = *(_s15AvatarStackViewVMa() + 24);
    sub_54A4(&qword_62230, "v9");
    sub_481F4();
    v26 = v40;
    swift_getKeyPath();
    v40 = v26;
    sub_37AF8(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    v28 = *(v26 + 80);
    v27 = *(v26 + 88);

    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_111F8(0, *(v15 + 2) + 1, 1, v15);
    }

    v32 = *(v15 + 2);
    v31 = *(v15 + 3);
    if (v32 >= v31 >> 1)
    {
      v15 = sub_111F8((v31 > 1), v32 + 1, 1, v15);
    }

    *(v15 + 2) = v32 + 1;
    v33 = &v15[24 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v30;
    *(v33 + 6) = 1;
  }

  return v15;
}

uint64_t sub_331E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v27[0] = a3;
  v27[1] = a5;
  v8 = sub_54A4(&qword_63A90, &qword_4CAD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = v27 - v11;
  v13 = sub_54A4(&qword_63AE0, &qword_4CB48);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13, v15);
  v17 = v27 - v16;
  v18 = sub_54A4(&qword_63A38, &qword_4CAA8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = v27 - v21;
  if (a4 == 1)
  {
    sub_33444(a1, v27 - v21);
    v23 = &qword_63A38;
    v24 = &qword_4CAA8;
    sub_6128(v22, v17, &qword_63A38, &qword_4CAA8);
    swift_storeEnumTagMultiPayload();
    sub_37458();
    sub_376B0();
    sub_47CC4();
    v25 = v22;
  }

  else
  {

    sub_337BC(a1, a2, v27[0], a4, v12);
    v23 = &qword_63A90;
    v24 = &qword_4CAD0;
    sub_6128(v12, v17, &qword_63A90, &qword_4CAD0);
    swift_storeEnumTagMultiPayload();
    sub_37458();
    sub_376B0();
    sub_47CC4();
    sub_13444(a4);
    v25 = v12;
  }

  return sub_60C8(v25, v23, v24);
}

uint64_t sub_33444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s15AvatarStackViewVMa();
  v7 = v6[6];
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v8 = *&v49[0];
  v9 = *(v2 + v6[7]);
  sub_481F4();
  v10 = *(*&v49[0] + 152);

  v11 = *(v2 + v6[9]);
  KeyPath = swift_getKeyPath();
  v13 = _s11EmptyCircleVMa();
  *(a2 + *(v13 + 36)) = KeyPath;
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v14 = swift_getKeyPath();
  *a2 = v8;
  if (qword_61CC8 != -1)
  {
    v47 = v14;
    swift_once();
    v14 = v47;
  }

  v15 = xmmword_641F0;
  v16 = unk_64200;
  v49[2] = xmmword_641F0;
  v49[3] = unk_64200;
  v17 = unk_64210;
  v49[4] = unk_64210;
  v18 = xmmword_641D0;
  v49[0] = xmmword_641D0;
  v49[1] = *&qword_641E0;
  *(a2 + 24) = *&qword_641E0;
  *(a2 + 40) = v15;
  *(a2 + 56) = v16;
  *(a2 + 72) = v17;
  *(a2 + 8) = v18;
  *(a2 + 88) = v9;
  *(a2 + 89) = v10;
  *(a2 + 92) = v11;
  v19 = a2 + *(v13 + 40);
  *v19 = v14;
  *(v19 + 8) = 0;
  sub_32228(v49, v48);
  v20 = sub_48084();
  v21 = *(v3 + v6[10] + 40);
  sub_478A4();
  v22 = v48[0];
  v23 = v48[2];
  v24 = v48[3];
  v25 = v48[4];
  v26 = sub_482A4();
  v28 = v27;
  v29 = a2 + *(sub_54A4(&qword_63A58, &qword_4CAB8) + 36);
  v30 = *(sub_54A4(&qword_63AE8, &qword_4CBB0) + 36);
  v31 = enum case for BlendMode.destinationOut(_:);
  v32 = sub_48304();
  v33 = v48[1];
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = v22;
  *(v29 + 8) = v33;
  *(v29 + 16) = v23;
  *(v29 + 24) = v24;
  *(v29 + 32) = v25;
  *(v29 + 40) = v20;
  *(v29 + 48) = 256;
  *(v29 + 50) = v50;
  *(v29 + 54) = v51;
  *(v29 + 56) = v26;
  *(v29 + 64) = v28;
  v34 = sub_482A4();
  v36 = v35;
  v37 = (v29 + *(sub_54A4(&qword_63A70, &qword_4CAC0) + 36));
  *v37 = v34;
  v37[1] = v36;
  *(a2 + *(sub_54A4(&qword_63A48, &qword_4CAB0) + 36)) = a1;
  sub_48484(*(v3 + 1));
  v38 = *v3;
  v39 = sub_48314();
  v40 = sub_47D44();
  sub_48334();
  v42 = v41;
  v44 = v43;
  result = sub_54A4(&qword_63A38, &qword_4CAA8);
  v46 = a2 + *(result + 36);
  *v46 = 0x5F7974706D45;
  *(v46 + 8) = 0xE600000000000000;
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  *(v46 + 32) = v42;
  *(v46 + 40) = v44;
  *(v46 + 48) = 1;
  return result;
}

uint64_t sub_337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v90._countAndFlagsBits = a2;
  v90._object = a3;
  v82 = a1;
  v91 = a5;
  v8 = sub_47A64();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v87 = &v74 - v14;
  v80 = sub_54A4(&qword_63AC0, &qword_4CAE8);
  v15 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80, v16);
  v18 = &v74 - v17;
  v81 = sub_54A4(&qword_63AB0, &qword_4CAE0);
  v19 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81, v20);
  v84 = &v74 - v21;
  v83 = sub_54A4(&qword_63AA0, &qword_4CAD8);
  v22 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83, v23);
  v85 = &v74 - v24;
  v25 = sub_33E28();
  v26 = _s15AvatarStackViewVMa();
  v27 = *(v26 + 24);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v79 = *(v96 + 152);

  v28 = sub_326F4();
  if (qword_61CC8 != -1)
  {
    v73 = v28;
    swift_once();
    v28 = v73;
  }

  v95[2] = xmmword_641F0;
  v95[3] = unk_64200;
  v95[4] = unk_64210;
  v95[0] = xmmword_641D0;
  v95[1] = *&qword_641E0;
  v98 = xmmword_641F0;
  v99 = unk_64200;
  v100 = unk_64210;
  v77 = v25 & 1;
  v78 = v28 & 1;
  v96 = xmmword_641D0;
  v97 = *&qword_641E0;
  sub_32228(v95, v94);

  v29 = sub_48084();
  v75 = v6 + *(v26 + 40);
  v76 = v29;
  v30 = *(v75 + 5);
  v31 = 0;
  sub_478A4();
  v32 = v94[0];
  v33 = v94[2];
  v34 = v94[3];
  v35 = v94[4];
  v36 = sub_482A4();
  v38 = v37;
  v39 = &v18[*(sub_54A4(&qword_63AD0, &qword_4CAF0) + 36)];
  v40 = *(sub_54A4(&qword_63AE8, &qword_4CBB0) + 36);
  v41 = enum case for BlendMode.destinationOut(_:);
  v42 = sub_48304();
  v43 = v94[1];
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  *v39 = v32;
  *(v39 + 1) = v43;
  *(v39 + 2) = v33;
  *(v39 + 3) = v34;
  v44 = v6;
  *(v39 + 4) = v35;
  *(v39 + 5) = v76;
  *(v39 + 24) = 256;
  *(v39 + 50) = v101;
  *(v39 + 27) = v102;
  *(v39 + 7) = v36;
  *(v39 + 8) = v38;
  v45 = sub_482A4();
  v47 = v46;
  v48 = &v39[*(sub_54A4(&qword_63A70, &qword_4CAC0) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = v100;
  *(v18 + 3) = v99;
  *(v18 + 4) = v49;
  v50 = v98;
  *(v18 + 1) = v97;
  *(v18 + 2) = v50;
  *v18 = v96;
  *(v18 + 10) = a4;
  v18[88] = v77;
  LOBYTE(v48) = v78;
  v18[89] = v79;
  v18[90] = v48;
  v51 = v82;
  *&v18[*(v80 + 36)] = v82;
  v52 = *(sub_32D98() + 2);

  if (v52 >= 4 && !v51)
  {
    v31 = *(v75 + 6);
  }

  if (a4)
  {
    v53 = 0xE600000000000000;
  }

  else
  {
    v53 = 0xEB00000000726174;
  }

  if (a4)
  {
    v54 = 0x726174617641;
  }

  else
  {
    v54 = 0x6176417974706D45;
  }

  v55 = v84;
  sub_E940(v18, v84, &qword_63AC0, &qword_4CAE8);
  v56 = (v55 + *(v81 + 36));
  *v56 = v31;
  v56[1] = 0;
  sub_48334();
  v57 = v87;
  sub_47A74();
  v59 = v88;
  v58 = v89;
  (*(v88 + 16))(v86, v57, v89);
  sub_37AF8(&qword_63AF0, &type metadata accessor for ScaleTransition);
  v60 = sub_47954();
  (*(v59 + 8))(v57, v58);
  v61 = v85;
  sub_E940(v55, v85, &qword_63AB0, &qword_4CAE0);
  *(v61 + *(v83 + 36)) = v60;
  v92 = v54;
  v93 = v53;
  v103._countAndFlagsBits = 95;
  v103._object = 0xE100000000000000;
  sub_48484(v103);
  sub_48484(v90);
  v62 = v92;
  v63 = v93;
  v64 = *v44;
  v65 = sub_48314();
  LODWORD(v58) = sub_47D44();
  sub_48334();
  v67 = v66;
  v69 = v68;
  v70 = v91;
  sub_E940(v61, v91, &qword_63AA0, &qword_4CAD8);
  result = sub_54A4(&qword_63A90, &qword_4CAD0);
  v72 = v70 + *(result + 36);
  *v72 = v62;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v58;
  *(v72 + 32) = v67;
  *(v72 + 40) = v69;
  *(v72 + 48) = 1;
  return result;
}

uint64_t sub_33E28()
{
  v1 = type metadata accessor for ViewModelPollVote();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(_s15AvatarStackViewVMa() + 24);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v8 = v25;
  swift_getKeyPath();
  v25 = v8;
  sub_37AF8(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v9 = *(v8 + 72);

  v10 = *(v0 + 8);
  v23 = *(v0 + 16);
  sub_481F4();
  v11 = v24;
  swift_getKeyPath();
  v24 = v11;
  sub_475C4();

  v13 = *(v11 + 80);
  v12 = *(v11 + 88);

  if (!v12)
  {
    goto LABEL_19;
  }

  v15 = *(v9 + 16);
  if (!v15)
  {
LABEL_18:

LABEL_19:

    return 0;
  }

  v16 = 0;
  v17 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (v16 < *(v9 + 16))
  {
    sub_37A80(v17 + *(v2 + 72) * v16, v6, type metadata accessor for ViewModelPollVote);
    v18 = v6[3];
    if (v18 && (v6[2] == v13 ? (v19 = v18 == v12) : (v19 = 0), (v19 || (sub_48874() & 1) != 0) && (v20 = v6[1]) != 0))
    {
      if (*v6 == v10 && v20 == v23)
      {
        sub_6C50(v6);
LABEL_22:

        return 1;
      }

      v21 = sub_48874();
      result = sub_6C50(v6);
      if (v21)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_6C50(v6);
    }

    if (v15 == ++v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_34120(uint64_t a1)
{
  v2 = sub_54A4(&qword_630B0, &unk_4C190);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for ViewModelPollVote();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6128(a1, v6, &qword_630B0, &unk_4C190);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_60C8(v6, &qword_630B0, &unk_4C190);
  }

  else
  {
    sub_37B50(v6, v12, type metadata accessor for ViewModelPollVote);
    v13 = *(v12 + 3);
    if (v13)
    {
      v33 = v12;
      v14 = *(v12 + 2);
      v15 = *(_s15AvatarStackViewVMa() + 24);
      sub_54A4(&qword_62230, "v9");
      sub_481F4();
      v16 = v36;
      swift_getKeyPath();
      v36 = v16;
      sub_37AF8(&qword_62300, type metadata accessor for PollViewModel);
      sub_475C4();

      v17 = *(v16 + 104);

      if (v17 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_487E4())
      {
        v19 = 0;
        v34 = v17 & 0xFFFFFFFFFFFFFF8;
        v35 = v17 & 0xC000000000000001;
        while (1)
        {
          if (v35)
          {
            v20 = sub_487A4();
          }

          else
          {
            if (v19 >= *(v34 + 16))
            {
              goto LABEL_23;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = [v20 participantHandle];
          v24 = sub_48414();
          v26 = v25;

          if (v24 == v14 && v13 == v26)
          {

LABEL_21:

            v30 = [v21 avatarImage];
            v31 = sub_480D4();

            sub_6C50(v33);
            return v31;
          }

          v28 = sub_48874();

          if (v28)
          {
            goto LABEL_21;
          }

          ++v19;
          if (v22 == i)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

LABEL_25:

      v29 = v33;
    }

    else
    {
      v29 = v12;
    }

    sub_6C50(v29);
  }

  return 0;
}

void *sub_344C8()
{
  v1 = v0;
  v2 = type metadata accessor for ViewModelPollVote();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2 - 8, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = (&v28 - v10);
  v12 = *(_s15AvatarStackViewVMa() + 24);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v13 = v32;
  swift_getKeyPath();
  v32 = v13;
  sub_37AF8(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v14 = *(v13 + 72);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *(v1 + 8);
    v18 = *(v1 + 16);
    v30 = v17;
    v19 = _swiftEmptyArrayStorage;
    v28 = v18;
    v29 = v8;
    while (v16 < *(v14 + 16))
    {
      v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v21 = *(v3 + 72);
      sub_37A80(v14 + v20 + v21 * v16, v11, type metadata accessor for ViewModelPollVote);
      v22 = v11[1];
      if (v22 && (*v11 == v30 ? (v23 = v22 == v18) : (v23 = 0), v23 || (sub_48874() & 1) != 0))
      {
        sub_37B50(v11, v8, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v19[2] + 1, 1);
          v19 = v31;
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          sub_21FD8(v25 > 1, v26 + 1, 1);
          v19 = v31;
        }

        v19[2] = v26 + 1;
        v8 = v29;
        sub_37B50(v29, v19 + v20 + v26 * v21, type metadata accessor for ViewModelPollVote);
        v18 = v28;
      }

      else
      {
        sub_6C50(v11);
      }

      if (v15 == ++v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_18:

    v31 = v19;

    sub_34BAC(&v31);

    return v31;
  }

  return result;
}

uint64_t sub_3480C(uint64_t *a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_47564();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v25 = type metadata accessor for ViewModelPollVote();
  v6 = *(v25 + 24);
  v7 = sub_54A4(&qword_62138, &qword_4AC00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v24 - v10;
  sub_6128(v26 + v6, &v24 - v10, &qword_62138, &qword_4AC00);
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    v13 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47504();
    v14 = v12(v11, 1, v2);
    if (v14 != 1)
    {
      v14 = sub_60C8(v11, &qword_62138, &qword_4AC00);
    }
  }

  else
  {
    v13 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = (*(v3 + 32))(v13, v11, v2);
  }

  v26 = &v24;
  v16 = __chkstk_darwin(v14, v15);
  v17 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v25 + 24);
  __chkstk_darwin(v16, v19);
  sub_6128(v27 + v20, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_62138, &qword_4AC00);
  if (v12(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v2) == 1)
  {
    sub_47504();
    if (v12(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v2) != 1)
    {
      sub_60C8(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_62138, &qword_4AC00);
    }
  }

  else
  {
    (*(v3 + 32))(v17, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  }

  v21 = sub_47534();
  v22 = *(v3 + 8);
  v22(v17, v2);
  v22(v13, v2);
  return v21 & 1;
}

uint64_t sub_34B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -(*(v2 + *(a1 + 40)) * *(v2 + *(a1 + 40) + 16));
  *a2 = sub_47C14();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = sub_54A4(&qword_639F0, &qword_4CA50);
  return sub_3284C(v2, a2 + *(v5 + 44));
}

Swift::Int sub_34BAC(void **a1)
{
  v2 = *(type metadata accessor for ViewModelPollVote() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_36F64(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_34C54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_34C54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_48844(v2);
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
        type metadata accessor for ViewModelPollVote();
        v6 = sub_48574();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ViewModelPollVote() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_352E0(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_34D80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_34D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = type metadata accessor for ViewModelPollVote();
  v8 = *(*(v79 - 8) + 64);
  v10 = __chkstk_darwin(v79, v9);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v60 - v14;
  result = __chkstk_darwin(v13, v16);
  v20 = &v60 - v19;
  v62 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v67 = -v22;
    v68 = v21;
    v24 = a1 - a3;
    v61 = v22;
    v25 = v21 + v22 * a3;
    v70 = &v60 - v19;
    v71 = v15;
LABEL_5:
    v65 = v23;
    v66 = a3;
    v63 = v25;
    v64 = v24;
    v26 = v24;
    while (1)
    {
      v77 = v26;
      v78 = v25;
      sub_37A80(v25, v20, type metadata accessor for ViewModelPollVote);
      v76 = v23;
      sub_37A80(v23, v15, type metadata accessor for ViewModelPollVote);
      v27 = sub_47564();
      v75 = &v60;
      v80 = *(v27 - 8);
      v28 = *(v80 + 64);
      __chkstk_darwin(v27, v29);
      v30 = *(v79 + 24);
      v31 = sub_54A4(&qword_62138, &qword_4AC00);
      v73 = &v60;
      v32 = *(*(v31 - 8) + 64);
      __chkstk_darwin(v31 - 8, v33);
      v35 = &v60 - v34;
      v36 = v80;
      sub_6128(&v20[v30], &v60 - v34, &qword_62138, &qword_4AC00);
      v37 = *(v36 + 48);
      v38 = v37(v35, 1, v27);
      v74 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v38 == 1)
      {
        sub_47504();
        v39 = v37(v35, 1, v27);
        v41 = v27;
        if (v39 != 1)
        {
          v39 = sub_60C8(v35, &qword_62138, &qword_4AC00);
        }
      }

      else
      {
        v39 = (*(v36 + 32))(&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v27);
        v41 = v27;
      }

      v73 = &v60;
      v42 = __chkstk_darwin(v39, v40);
      v43 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v72 = &v60;
      v44 = *(v79 + 24);
      __chkstk_darwin(v42, v45);
      v46 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v71;
      sub_6128(&v71[v47], v46, &qword_62138, &qword_4AC00);
      v48 = v37(v46, 1, v41);
      v50 = v77;
      v49 = v78;
      if (v48 == 1)
      {
        sub_47504();
        v51 = v37(v46, 1, v41);
        v52 = v80;
        v53 = v41;
        if (v51 != 1)
        {
          sub_60C8(v46, &qword_62138, &qword_4AC00);
        }
      }

      else
      {
        v52 = v80;
        (*(v80 + 32))(v43, v46, v41);
        v53 = v41;
      }

      v54 = v74;
      v55 = sub_47534();
      v56 = *(v52 + 8);
      v56(v43, v53);
      v56(v54, v53);
      sub_6C50(v15);
      v20 = v70;
      result = sub_6C50(v70);
      v57 = v76;
      if ((v55 & 1) == 0)
      {
LABEL_4:
        a3 = v66 + 1;
        v23 = v65 + v61;
        v24 = v64 - 1;
        v25 = v63 + v61;
        if (v66 + 1 == v62)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v68)
      {
        break;
      }

      v58 = v69;
      sub_37B50(v49, v69, type metadata accessor for ViewModelPollVote);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_37B50(v58, v57, type metadata accessor for ViewModelPollVote);
      v23 = v57 + v67;
      v25 = v49 + v67;
      v59 = __CFADD__(v50, 1);
      v26 = v50 + 1;
      if (v59)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_352E0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v168 = a1;
  v8 = type metadata accessor for ViewModelPollVote();
  v178 = *(v8 - 8);
  v9 = *(v178 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v172 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v185 = &v164 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v186 = &v164 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v193 = &v164 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v182 = &v164 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v181 = &v164 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v167 = &v164 - v30;
  result = __chkstk_darwin(v29, v31);
  v179 = a3;
  v34 = *(a3 + 8);
  if (v34 < 1)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_111:
    a3 = *v168;
    if (!*v168)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_145:
      result = sub_36E6C(v36);
      v36 = result;
    }

    v195 = v36;
    v160 = *(v36 + 2);
    if (v160 >= 2)
    {
      while (*v179)
      {
        v161 = *&v36[16 * v160];
        v162 = *&v36[16 * v160 + 24];
        sub_362B8(*v179 + *(v178 + 72) * v161, *v179 + *(v178 + 72) * *&v36[16 * v160 + 16], *v179 + *(v178 + 72) * v162, a3);
        if (v5)
        {
        }

        if (v162 < v161)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_36E6C(v36);
        }

        if (v160 - 2 >= *(v36 + 2))
        {
          goto LABEL_139;
        }

        v163 = &v36[16 * v160];
        *v163 = v161;
        *(v163 + 1) = v162;
        v195 = v36;
        result = sub_36DE0(v160 - 1);
        v36 = v195;
        v160 = *(v195 + 2);
        if (v160 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v166 = (&v164 - v33);
  v165 = a4;
  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v194 = v8;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    v169 = v35;
    if (v35 + 1 < v34)
    {
      v180 = v34;
      v39 = v35;
      v40 = *v179;
      v41 = *(v178 + 72);
      v42 = *v179 + v41 * v38;
      v43 = v166;
      sub_37A80(v42, v166, type metadata accessor for ViewModelPollVote);
      a3 = v167;
      sub_37A80(v40 + v41 * v39, v167, type metadata accessor for ViewModelPollVote);
      LODWORD(v177) = sub_3480C(v43, a3);
      if (!v5)
      {
        sub_6C50(a3);
        sub_6C50(v43);
        v44 = (v39 + 2);
        result = v40 + v41 * (v39 + 2);
        v183 = v41;
        v175 = v36;
        v176 = 0;
        while (1)
        {
          v49 = v180;
          if (v180 == v44)
          {
            break;
          }

          v190 = result;
          v191 = v44;
          sub_37A80(result, v181, type metadata accessor for ViewModelPollVote);
          v192 = v42;
          sub_37A80(v42, v182, type metadata accessor for ViewModelPollVote);
          v50 = sub_47564();
          v189 = &v164;
          v51 = *(v50 - 8);
          v52 = *(v51 + 64);
          __chkstk_darwin(v50, v53);
          v54 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = *(v8 + 24);
          v56 = sub_54A4(&qword_62138, &qword_4AC00);
          v187 = &v164;
          v57 = *(*(v56 - 8) + 64);
          __chkstk_darwin(v56 - 8, v58);
          v60 = &v164 - v59;
          sub_6128(v181 + v55, &v164 - v59, &qword_62138, &qword_4AC00);
          v61 = *(v51 + 48);
          v62 = v61(v60, 1, v50);
          v188 = v51;
          if (v62 == 1)
          {
            sub_47504();
            v63 = v61(v60, 1, v50);
            if (v63 != 1)
            {
              v63 = sub_60C8(v60, &qword_62138, &qword_4AC00);
            }
          }

          else
          {
            v63 = (*(v51 + 32))(&v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v50);
          }

          v187 = &v164;
          v65 = __chkstk_darwin(v63, v64);
          v66 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
          v184 = &v164;
          v67 = *(v194 + 24);
          __chkstk_darwin(v65, v68);
          v69 = &v164 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_6128(v182 + v70, v69, &qword_62138, &qword_4AC00);
          v71 = v61(v69, 1, v50);
          v72 = v192;
          if (v71 == 1)
          {
            sub_47504();
            v73 = v61(&v164 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v50);
            v36 = v175;
            v5 = v176;
            v45 = v188;
            if (v73 != 1)
            {
              sub_60C8(v69, &qword_62138, &qword_4AC00);
            }
          }

          else
          {
            v45 = v188;
            (*(v188 + 32))(v66, &v164 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v50);
            v36 = v175;
            v5 = v176;
          }

          v46 = sub_47534();
          v47 = *(v45 + 8);
          a3 = v45 + 8;
          v47(v66, v50);
          v47(v54, v50);
          sub_6C50(v182);
          sub_6C50(v181);
          v48 = v177 ^ v46;
          v44 = (v191 + 1);
          v41 = v183;
          result = v190 + v183;
          v42 = v72 + v183;
          v8 = v194;
          if (v48)
          {
            v49 = v191;
            break;
          }
        }

        v37 = v169;
        if (v177)
        {
          if (v49 < v169)
          {
            goto LABEL_144;
          }

          if (v169 < v49)
          {
            v74 = v41 * (v49 - 1);
            v75 = v49 * v41;
            v180 = v49;
            v76 = v169;
            v77 = v169 * v41;
            do
            {
              if (v76 != --v49)
              {
                v78 = *v179;
                if (!*v179)
                {
                  goto LABEL_148;
                }

                a3 = v78 + v77;
                sub_37B50(v78 + v77, v172, type metadata accessor for ViewModelPollVote);
                if (v77 < v74 || a3 >= v78 + v75)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v77 != v74)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_37B50(v172, v78 + v74, type metadata accessor for ViewModelPollVote);
                v41 = v183;
              }

              ++v76;
              v74 -= v41;
              v75 -= v41;
              v77 += v41;
            }

            while (v76 < v49);
            v8 = v194;
            v37 = v169;
            v49 = v180;
          }
        }

        goto LABEL_33;
      }

      sub_6C50(a3);
      sub_6C50(v43);
    }

    v49 = v35 + 1;
LABEL_33:
    v79 = v179[1];
    if (v49 >= v79)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v49, v37))
    {
      goto LABEL_141;
    }

    if (v49 - v37 >= v165)
    {
LABEL_41:
      v35 = v49;
      if (v49 < v37)
      {
        goto LABEL_140;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v37, v165))
    {
      goto LABEL_142;
    }

    if (v37 + v165 < v79)
    {
      v79 = v37 + v165;
    }

    if (v79 < v37)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v171 = v79;
    if (v49 == v79)
    {
      goto LABEL_41;
    }

    v175 = v36;
    v176 = v5;
    v126 = *v179;
    v127 = *(v178 + 72);
    v128 = *v179 + v127 * (v49 - 1);
    v183 = -v127;
    v184 = v126;
    v129 = (v37 - v49);
    v170 = v127;
    a3 = v126 + v49 * v127;
    v130 = v186;
LABEL_94:
    v180 = v49;
    v173 = a3;
    v174 = v129;
    v131 = v129;
    v177 = v128;
LABEL_95:
    v188 = a3;
    v189 = v131;
    v132 = v193;
    sub_37A80(a3, v193, type metadata accessor for ViewModelPollVote);
    v187 = v128;
    sub_37A80(v128, v130, type metadata accessor for ViewModelPollVote);
    v133 = sub_47564();
    v192 = &v164;
    v190 = *(v133 - 8);
    v134 = *(v190 + 64);
    __chkstk_darwin(v133, v135);
    v136 = *(v8 + 24);
    v137 = sub_54A4(&qword_62138, &qword_4AC00);
    v191 = &v164;
    v138 = *(*(v137 - 8) + 64);
    __chkstk_darwin(v137 - 8, v139);
    v141 = &v164 - v140;
    v142 = v190;
    sub_6128(v132 + v136, &v164 - v140, &qword_62138, &qword_4AC00);
    v143 = *(v142 + 48);
    if (v143(v141, 1, v133) == 1)
    {
      sub_47504();
      v144 = v143(v141, 1, v133);
      v146 = &v164 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v144 != 1)
      {
        v144 = sub_60C8(v141, &qword_62138, &qword_4AC00);
      }
    }

    else
    {
      v144 = (*(v142 + 32))(&v164 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0), v141, v133);
      v146 = &v164 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    v147 = __chkstk_darwin(v144, v145);
    v148 = &v164 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    v191 = &v164;
    v149 = *(v194 + 24);
    __chkstk_darwin(v147, v150);
    v151 = &v164 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
    v130 = v186;
    sub_6128(&v186[v152], v151, &qword_62138, &qword_4AC00);
    if (v143(v151, 1, v133) == 1)
    {
      sub_47504();
      if (v143(v151, 1, v133) != 1)
      {
        sub_60C8(v151, &qword_62138, &qword_4AC00);
      }
    }

    else
    {
      (*(v142 + 32))(v148, v151, v133);
    }

    v153 = sub_47534();
    v154 = *(v142 + 8);
    v154(v148, v133);
    v154(v146, v133);
    sub_6C50(v130);
    result = sub_6C50(v193);
    if (v153)
    {
      break;
    }

    v8 = v194;
LABEL_93:
    v49 = v180 + 1;
    v128 = v177 + v170;
    v129 = (v174 - 1);
    a3 = v173 + v170;
    if (v180 + 1 != v171)
    {
      goto LABEL_94;
    }

    v36 = v175;
    v5 = v176;
    v35 = v171;
    if (v171 < v169)
    {
      goto LABEL_140;
    }

LABEL_42:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_110F4(0, *(v36 + 2) + 1, 1, v36);
      v36 = result;
    }

    v81 = *(v36 + 2);
    v80 = *(v36 + 3);
    v82 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      result = sub_110F4((v80 > 1), v81 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 2) = v82;
    v83 = &v36[16 * v81];
    *(v83 + 4) = v169;
    *(v83 + 5) = v35;
    a3 = *v168;
    if (!*v168)
    {
      goto LABEL_150;
    }

    if (v81)
    {
      while (2)
      {
        v84 = v82 - 1;
        if (v82 >= 4)
        {
          v89 = &v36[16 * v82 + 32];
          v90 = *(v89 - 64);
          v91 = *(v89 - 56);
          v95 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          if (v95)
          {
            goto LABEL_127;
          }

          v94 = *(v89 - 48);
          v93 = *(v89 - 40);
          v95 = __OFSUB__(v93, v94);
          v87 = v93 - v94;
          v88 = v95;
          if (v95)
          {
            goto LABEL_128;
          }

          v96 = &v36[16 * v82];
          v98 = *v96;
          v97 = *(v96 + 1);
          v95 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v95)
          {
            goto LABEL_130;
          }

          v95 = __OFADD__(v87, v99);
          v100 = v87 + v99;
          if (v95)
          {
            goto LABEL_133;
          }

          if (v100 >= v92)
          {
            v118 = &v36[16 * v84 + 32];
            v120 = *v118;
            v119 = *(v118 + 1);
            v95 = __OFSUB__(v119, v120);
            v121 = v119 - v120;
            if (v95)
            {
              goto LABEL_137;
            }

            if (v87 < v121)
            {
              v84 = v82 - 2;
            }
          }

          else
          {
LABEL_61:
            if (v88)
            {
              goto LABEL_129;
            }

            v101 = &v36[16 * v82];
            v103 = *v101;
            v102 = *(v101 + 1);
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v104;
            if (v104)
            {
              goto LABEL_132;
            }

            v107 = &v36[16 * v84 + 32];
            v109 = *v107;
            v108 = *(v107 + 1);
            v95 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v95)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v105, v110))
            {
              goto LABEL_136;
            }

            if (v105 + v110 < v87)
            {
              goto LABEL_75;
            }

            if (v87 < v110)
            {
              v84 = v82 - 2;
            }
          }
        }

        else
        {
          if (v82 == 3)
          {
            v85 = *(v36 + 4);
            v86 = *(v36 + 5);
            v95 = __OFSUB__(v86, v85);
            v87 = v86 - v85;
            v88 = v95;
            goto LABEL_61;
          }

          v111 = &v36[16 * v82];
          v113 = *v111;
          v112 = *(v111 + 1);
          v95 = __OFSUB__(v112, v113);
          v105 = v112 - v113;
          v106 = v95;
LABEL_75:
          if (v106)
          {
            goto LABEL_131;
          }

          v114 = &v36[16 * v84];
          v116 = *(v114 + 4);
          v115 = *(v114 + 5);
          v95 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v95)
          {
            goto LABEL_134;
          }

          if (v117 < v105)
          {
            break;
          }
        }

        v122 = v84 - 1;
        if (v84 - 1 >= v82)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v179)
        {
          goto LABEL_147;
        }

        v123 = *&v36[16 * v122 + 32];
        v124 = *&v36[16 * v84 + 40];
        sub_362B8(*v179 + *(v178 + 72) * v123, *v179 + *(v178 + 72) * *&v36[16 * v84 + 32], *v179 + *(v178 + 72) * v124, a3);
        if (v5)
        {
        }

        if (v124 < v123)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_36E6C(v36);
        }

        if (v122 >= *(v36 + 2))
        {
          goto LABEL_126;
        }

        v125 = &v36[16 * v122];
        *(v125 + 4) = v123;
        *(v125 + 5) = v124;
        v195 = v36;
        result = sub_36DE0(v84);
        v36 = v195;
        v82 = *(v195 + 2);
        if (v82 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v34 = v179[1];
    if (v35 >= v34)
    {
      goto LABEL_111;
    }
  }

  v155 = v189;
  if (v184)
  {
    v156 = v188;
    v157 = v185;
    sub_37B50(v188, v185, type metadata accessor for ViewModelPollVote);
    v158 = v187;
    v8 = v194;
    swift_arrayInitWithTakeFrontToBack();
    sub_37B50(v157, v158, type metadata accessor for ViewModelPollVote);
    v128 = v158 + v183;
    a3 = v156 + v183;
    v159 = __CFADD__(v155, 1);
    v131 = (v155 + 1);
    if (v159)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_362B8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v103 = a3;
  v112 = type metadata accessor for ViewModelPollVote();
  v7 = *(*(v112 - 8) + 64);
  v9 = __chkstk_darwin(v112, v8);
  v110 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v106 = (&v95 - v13);
  v15 = __chkstk_darwin(v12, v14);
  v111 = &v95 - v16;
  result = __chkstk_darwin(v15, v17);
  v20 = &v95 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_78;
  }

  v23 = &v103[-a2];
  if (&v103[-a2] == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_79;
  }

  v24 = (a2 - a1) / v22;
  v115 = a1;
  v114 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v26;
    if (v26 >= 1)
    {
      v58 = -v22;
      v59 = (a4 + v26);
      v107 = a4;
      v108 = a1;
      v60 = v103;
      v111 = v58;
      while (2)
      {
        while (1)
        {
          v96 = v57;
          v61 = a2;
          v62 = a2 + v58;
          v109 = v62;
          v98 = v61;
          while (1)
          {
            if (v61 <= a1)
            {
              v115 = v61;
              v113 = v96;
              goto LABEL_76;
            }

            v104 = v60;
            v105 = v59;
            v97 = v57;
            v99 = &v59[v58];
            sub_37A80(&v59[v58], v106, type metadata accessor for ViewModelPollVote);
            sub_37A80(v62, v110, type metadata accessor for ViewModelPollVote);
            v63 = sub_47564();
            v103 = &v95;
            v64 = *(v63 - 8);
            v65 = *(v64 + 64);
            __chkstk_darwin(v63, v66);
            v67 = *(v112 + 24);
            v68 = sub_54A4(&qword_62138, &qword_4AC00);
            v100 = &v95;
            v69 = *(*(v68 - 8) + 64);
            __chkstk_darwin(v68 - 8, v70);
            v72 = &v95 - v71;
            sub_6128(v106 + v67, &v95 - v71, &qword_62138, &qword_4AC00);
            v73 = *(v64 + 48);
            v74 = v73(v72, 1, v63);
            v101 = v64;
            v102 = &v95 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (v74 == 1)
            {
              sub_47504();
              v75 = v73(v72, 1, v63);
              if (v75 != 1)
              {
                v75 = sub_60C8(v72, &qword_62138, &qword_4AC00);
              }
            }

            else
            {
              v75 = (*(v64 + 32))(&v95 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v72, v63);
            }

            v77 = __chkstk_darwin(v75, v76);
            v78 = &v95 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
            v79 = *(v112 + 24);
            __chkstk_darwin(v77, v80);
            v81 = &v95 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_6128(v110 + v82, v81, &qword_62138, &qword_4AC00);
            v83 = v73(v81, 1, v63);
            v100 = &v95;
            if (v83 == 1)
            {
              sub_47504();
              v84 = v73(v81, 1, v63);
              a1 = v108;
              v85 = v101;
              v86 = v63;
              if (v84 != 1)
              {
                sub_60C8(v81, &qword_62138, &qword_4AC00);
              }
            }

            else
            {
              v85 = v101;
              (*(v101 + 32))(v78, v81, v63);
              a1 = v108;
              v86 = v63;
            }

            v87 = v104;
            v60 = &v104[v111];
            v88 = v102;
            v89 = sub_47534();
            v90 = *(v85 + 8);
            v90(v78, v86);
            v90(v88, v86);
            sub_6C50(v110);
            sub_6C50(v106);
            if (v89)
            {
              break;
            }

            v91 = v99;
            v57 = v99;
            v92 = v107;
            if (v87 < v105 || v60 >= v105)
            {
              swift_arrayInitWithTakeFrontToBack();
              v58 = v111;
              v62 = v109;
            }

            else
            {
              v93 = v87 == v105;
              v58 = v111;
              v62 = v109;
              if (!v93)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v57;
            v61 = v98;
            if (v91 <= v92)
            {
              a2 = v98;
              goto LABEL_75;
            }
          }

          v94 = v107;
          v59 = v105;
          if (v87 < v98 || v60 >= v98)
          {
            break;
          }

          v93 = v87 == v98;
          v57 = v97;
          v58 = v111;
          a2 = v109;
          if (!v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v59 <= v94)
          {
            goto LABEL_75;
          }
        }

        a2 = v109;
        swift_arrayInitWithTakeFrontToBack();
        v57 = v97;
        v58 = v111;
        if (v59 > v94)
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    v115 = a2;
    v113 = v57;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v102 = (a4 + v25);
    v113 = a4 + v25;
    if (v25 >= 1 && a2 < v103)
    {
      v100 = v20;
      v101 = v22;
      do
      {
        v108 = a1;
        v109 = a2;
        sub_37A80(a2, v20, type metadata accessor for ViewModelPollVote);
        v107 = a4;
        sub_37A80(a4, v111, type metadata accessor for ViewModelPollVote);
        v28 = sub_47564();
        v106 = &v95;
        v110 = *(v28 - 8);
        v29 = *(v110 + 64);
        __chkstk_darwin(v28, v30);
        v31 = *(v112 + 24);
        v32 = sub_54A4(&qword_62138, &qword_4AC00);
        v104 = &v95;
        v33 = *(*(v32 - 8) + 64);
        __chkstk_darwin(v32 - 8, v34);
        v36 = &v95 - v35;
        v37 = v110;
        sub_6128(&v20[v31], &v95 - v35, &qword_62138, &qword_4AC00);
        v38 = *(v37 + 48);
        v39 = v38(v36, 1, v28);
        v105 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v39 == 1)
        {
          sub_47504();
          v40 = v38(v36, 1, v28);
          v42 = v28;
          if (v40 != 1)
          {
            v40 = sub_60C8(v36, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          v40 = (*(v37 + 32))(&v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v28);
          v42 = v28;
        }

        v43 = __chkstk_darwin(v40, v41);
        v44 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = *(v112 + 24);
        __chkstk_darwin(v43, v46);
        v47 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_6128(v111 + v48, v47, &qword_62138, &qword_4AC00);
        if (v38(v47, 1, v42) == 1)
        {
          sub_47504();
          v49 = v38(v47, 1, v42);
          a2 = v109;
          v50 = v110;
          v51 = v42;
          v52 = v105;
          if (v49 != 1)
          {
            sub_60C8(v47, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          v50 = v110;
          (*(v110 + 32))(&v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v42);
          a2 = v109;
          v51 = v42;
          v52 = v105;
        }

        v53 = sub_47534();
        v54 = *(v50 + 8);
        v54(v44, v51);
        v54(v52, v51);
        sub_6C50(v111);
        v20 = v100;
        sub_6C50(v100);
        if (v53)
        {
          v55 = v101;
          a4 = v107;
          v56 = v108;
          if (v108 < a2 || v108 >= a2 + v101)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v108 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v55;
        }

        else
        {
          v56 = v108;
          v55 = v101;
          a4 = v107 + v101;
          if (v108 < v107 || v108 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v108 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v114 = a4;
        }

        a1 = v56 + v55;
        v115 = a1;
      }

      while (a4 < v102 && a2 < v103);
    }
  }

LABEL_76:
  sub_36E80(&v115, &v114, &v113);
  return 1;
}

uint64_t sub_36DE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_36E6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_36E80(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ViewModelPollVote();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_36F78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = _swiftEmptyArrayStorage;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = (result + 24 * a2 + 8);
    v10 = &_swiftEmptyArrayStorage[4];
    v28 = v3 - a2;
    v29 = (a3 >> 1) - a2;
    while (1)
    {
      if (v8 == v7)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_34;
      }

      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = v9[1];
      if (v6)
      {
        v14 = *v9;

        result = sub_37B40(v13);
        v15 = __OFSUB__(v6--, 1);
        if (v15)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      v16 = v4[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v30 = *(v9 - 1);
      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      sub_54A4(&qword_63AF8, &qword_4CBB8);
      v19 = swift_allocObject();
      v20 = j__malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 1;
      }

      v22 = v21 >> 5;
      v19[2] = v18;
      v19[3] = 2 * v22;
      v23 = v4[3] >> 1;
      v10 = &v19[4 * v23 + 4];
      v24 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v23;
      if (!v4[2])
      {

        sub_37B40(v13);
        goto LABEL_27;
      }

      if (v19 < v4 || v19 + 4 >= &v4[4 * v23 + 4])
      {

        sub_37B40(v13);
      }

      else
      {

        sub_37B40(v13);
        if (v19 == v4)
        {
          goto LABEL_26;
        }
      }

      memmove(v19 + 4, v4 + 4, 32 * v23);
LABEL_26:
      v4[2] = 0;
LABEL_27:

      v4 = v19;
      v8 = v28;
      v5 = v29;
      v12 = v30;
      v15 = __OFSUB__(v24, 1);
      v6 = v24 - 1;
      if (v15)
      {
        goto LABEL_35;
      }

LABEL_28:
      *v10 = v7;
      v10[1] = v12;
      v10[2] = v11;
      v10[3] = v13;
      v10 += 4;
      ++v7;
      v9 += 3;
      if (v5 == v7)
      {
        goto LABEL_29;
      }
    }
  }

  v6 = 0;
LABEL_29:
  v25 = v4[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v15 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v15)
    {
      goto LABEL_37;
    }

    v4[2] = v27;
  }

  return v4;
}

uint64_t sub_37194()
{
  v1 = (_s15AvatarStackViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = v1[8];
  v7 = sub_54A4(&qword_62230, "v9");
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10]);

  v9 = *(v0 + v3 + v1[12] + 72);

  sub_EB40(*(v0 + v3 + v1[13]), *(v0 + v3 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_372C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(*(_s15AvatarStackViewVMa() - 8) + 80);

  return sub_331E4(a1, a2, a3, a4, a5);
}

uint64_t sub_37360()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37398(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

unint64_t sub_373CC()
{
  result = qword_63A28;
  if (!qword_63A28)
  {
    sub_A36C(&qword_63A18, &qword_4CAA0);
    sub_37458();
    sub_376B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A28);
  }

  return result;
}

unint64_t sub_37458()
{
  result = qword_63A30;
  if (!qword_63A30)
  {
    sub_A36C(&qword_63A38, &qword_4CAA8);
    sub_37510();
    sub_EAF0(&qword_63A78, &qword_63A80, &qword_4CAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A30);
  }

  return result;
}

unint64_t sub_37510()
{
  result = qword_63A40;
  if (!qword_63A40)
  {
    sub_A36C(&qword_63A48, &qword_4CAB0);
    sub_375C8();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A40);
  }

  return result;
}

unint64_t sub_375C8()
{
  result = qword_63A50;
  if (!qword_63A50)
  {
    sub_A36C(&qword_63A58, &qword_4CAB8);
    sub_37AF8(&qword_63A60, _s11EmptyCircleVMa);
    sub_EAF0(&qword_63A68, &qword_63A70, &qword_4CAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A50);
  }

  return result;
}

unint64_t sub_376B0()
{
  result = qword_63A88;
  if (!qword_63A88)
  {
    sub_A36C(&qword_63A90, &qword_4CAD0);
    sub_37768();
    sub_EAF0(&qword_63A78, &qword_63A80, &qword_4CAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A88);
  }

  return result;
}

unint64_t sub_37768()
{
  result = qword_63A98;
  if (!qword_63A98)
  {
    sub_A36C(&qword_63AA0, &qword_4CAD8);
    sub_37820();
    sub_EAF0(&qword_638B0, &qword_638B8, &qword_4C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A98);
  }

  return result;
}

unint64_t sub_37820()
{
  result = qword_63AA8;
  if (!qword_63AA8)
  {
    sub_A36C(&qword_63AB0, &qword_4CAE0);
    sub_378AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AA8);
  }

  return result;
}

unint64_t sub_378AC()
{
  result = qword_63AB8;
  if (!qword_63AB8)
  {
    sub_A36C(&qword_63AC0, &qword_4CAE8);
    sub_37964();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AB8);
  }

  return result;
}

unint64_t sub_37964()
{
  result = qword_63AC8;
  if (!qword_63AC8)
  {
    sub_A36C(&qword_63AD0, &qword_4CAF0);
    sub_37A1C();
    sub_EAF0(&qword_63A68, &qword_63A70, &qword_4CAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AC8);
  }

  return result;
}

unint64_t sub_37A1C()
{
  result = qword_63AD8;
  if (!qword_63AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AD8);
  }

  return result;
}

uint64_t sub_37A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_37AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_37B40(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_37B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_37BC4()
{
  result = qword_63B00;
  if (!qword_63B00)
  {
    sub_A36C(&qword_63B08, &qword_4CBE8);
    sub_EAF0(&qword_63B10, &qword_63B18, &unk_4CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63B00);
  }

  return result;
}

uint64_t sub_37C7C()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64380);
  sub_5ED4(v0, qword_64380);
  sub_477E4();
  return sub_47804();
}

id sub_37CF0()
{
  sub_54A4(&qword_63C10, &qword_4CF60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4CC00;
  v1 = NSAdaptiveImageGlyphAttributeName;
  *(v0 + 32) = NSAdaptiveImageGlyphAttributeName;
  v2 = qword_61D08;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_643A0;
  *(v0 + 40) = qword_643A0;
  v5 = qword_61D10;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_643A8;
  *(v0 + 48) = qword_643A8;
  v8 = qword_61D18;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_643B0;
  *(v0 + 56) = qword_643B0;
  v11 = qword_61D20;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_643B8;
  *(v0 + 64) = qword_643B8;
  qword_64398 = v0;

  return v13;
}

void sub_37E64(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ([a1 ck_containsIMTextEffect])
  {
    if (qword_61CF8 != -1)
    {
      swift_once();
    }

    v4 = sub_47814();
    sub_5ED4(v4, qword_64380);
    v5 = sub_477F4();
    v6 = sub_48624();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Setting a poll option string that contains display attributes; did you mean to do this?", v7, 2u);
    }
  }

  if (qword_61D00 != -1)
  {
    swift_once();
  }

  type metadata accessor for Key(0);
  v8 = sub_48534();
  v9 = [v3 __ck_attributedStringByRemovingAllAttributesExcept:v8];

  if (!v9)
  {
    v10 = [v3 string];
    if (!v10)
    {
      sub_48414();
      v10 = sub_483D4();
    }

    v9 = [objc_allocWithZone(NSAttributedString) initWithString:v10];

    v3 = v10;
  }

  v11 = *(v2 + 16);
  *(v2 + 16) = v9;
}

void sub_38050()
{
  v1 = IMTextStyleAttributeNameFromStyle();
  if (v1)
  {
    v2 = v1;
    if ([v0 objectForKey:v2])
    {
      sub_48734();
      swift_unknownObjectRelease();
      sub_383D8(v4);
      [v0 removeObjectForKey:v2];
    }

    else
    {
      memset(v4, 0, sizeof(v4));
      sub_383D8(v4);
      v3 = sub_485F4();
      [v0 setObject:v3 forKey:v2];
    }
  }
}

uint64_t sub_38128()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_381E4()
{
  sub_48794(37);

  v1 = *(v0 + 16);
  v2 = [v1 description];
  v3 = sub_48414();
  v5 = v4;

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_48484(v7);

  return 0xD000000000000023;
}

uint64_t sub_382F4(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_544C();
  v2 = sub_48374();
  v3 = [v2 mutableCopy];
  if (v3)
  {
    v4 = v3;
    sub_38050();
    sub_48384();
  }

  return a1;
}

uint64_t sub_383D8(uint64_t a1)
{
  v2 = sub_54A4(&qword_62128, &qword_4AA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_38440()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643C0 = result;
  return result;
}

uint64_t sub_384DC()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643C8 = result;
  return result;
}

uint64_t sub_38578()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643D0 = result;
  return result;
}

uint64_t sub_38614()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643D8 = result;
  return result;
}

uint64_t sub_386B0()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643E0 = result;
  return result;
}

uint64_t sub_3874C()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643E8 = result;
  return result;
}

uint64_t sub_387E8()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643F0 = result;
  return result;
}

uint64_t sub_38884()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643F8 = result;
  return result;
}

uint64_t sub_38920()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64400 = result;
  return result;
}

uint64_t sub_389BC()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64408 = result;
  return result;
}

uint64_t sub_38A58()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64410 = result;
  return result;
}

uint64_t sub_38AF4(char a1)
{
  v2 = type metadata accessor for BlendedColor();
  v3 = *(*(v2 - 1) + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v20 - v9;
  if (a1)
  {
    if (qword_61D30 != -1)
    {
      swift_once();
    }

    v11 = &qword_643C8;
  }

  else
  {
    if (qword_61D28 != -1)
    {
      swift_once();
    }

    v11 = &qword_643C0;
  }

  v12 = *v11;

  v13 = v2[6];
  v14 = enum case for BlendMode.normal(_:);
  v15 = sub_48304();
  v16 = *(v15 - 8);
  (*(v16 + 104))(&v10[v13], v14, v15);
  (*(v16 + 56))(&v10[v13], 0, 1, v15);
  sub_38FB4(&v10[v13], &v10[v2[5]]);
  v17 = v2[7];
  *&v10[v17] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v10 = v12;
  sub_3902C(v10, v7);
  sub_39090();
  v18 = sub_47914();
  sub_390E8(v10);
  return v18;
}

uint64_t sub_38D20(char a1, char a2, char a3)
{
  v6 = type metadata accessor for BlendedColor();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = (&v27 - v14);
  if (a3)
  {
    if (a1)
    {
      if (qword_61D60 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v16 = sub_48064();
    }

    v28 = v16;
    return sub_47914();
  }

  if ((a1 & 1) == 0)
  {
    v28 = sub_38AF4(a2 & 1);
    return sub_47914();
  }

  if (qword_61D48 != -1)
  {
    v26 = v13;
    swift_once();
    v13 = v26;
  }

  v17 = qword_643E0;
  v18 = *(v13 + 24);
  v19 = enum case for BlendMode.normal(_:);
  v20 = v13;
  v21 = sub_48304();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v15 + v18, v19, v21);
  (*(v22 + 56))(v15 + v18, 0, 1, v21);
  sub_38FB4(v15 + v18, v15 + *(v20 + 20));
  v23 = *(v20 + 28);
  *(v15 + v23) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v15 = v17;
  sub_3902C(v15, v11);
  sub_39090();

  v24 = sub_47914();
  sub_390E8(v15);
  return v24;
}

uint64_t sub_38FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62928, &qword_4B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlendedColor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_39090()
{
  result = qword_63C18;
  if (!qword_63C18)
  {
    type metadata accessor for BlendedColor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63C18);
  }

  return result;
}

uint64_t sub_390E8(uint64_t a1)
{
  v2 = type metadata accessor for BlendedColor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39144(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v36 = a1;
  v37 = a2;
  v5 = *(a3 + 16);
  v40 = sub_473E4();
  v6 = *(*(v40 - 8) + 64);
  result = __chkstk_darwin(v40, v7);
  v39 = v10;
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  if (v5)
  {
    v12 = 0;
    v29 = (v9 + 8);
    v33 = (v9 + 32);
    v34 = v9 + 16;
    v38 = _swiftEmptyArrayStorage;
    v28 = v4;
    while (v12 < *(v4 + 16))
    {
      v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v17 = *(v9 + 72);
      v18 = v9;
      (*(v9 + 16))(v11, v4 + v16 + v17 * v12, v40);
      v19 = v36(v11);
      if (v3)
      {
        (*v29)(v11, v40);

        goto LABEL_15;
      }

      if (v19)
      {
        v31 = &v27;
        v32 = &v27;
        __chkstk_darwin(v19, v20);
        v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *v33;
        v30(v22, v11, v40);
        v23 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_220CC(0, v23[2] + 1, 1);
          v23 = v41;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_220CC(v25 > 1, v26 + 1, 1);
          v23 = v41;
        }

        v23[2] = v26 + 1;
        v38 = v23;
        v13 = (v30)(v23 + v16 + v26 * v17, v22, v40);
        v4 = v28;
      }

      else
      {
        v13 = (*v29)(v11, v40);
      }

      ++v12;
      result = __chkstk_darwin(v13, v14);
      v11 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = v18;
      if (v35 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_15:

    return v38;
  }

  return result;
}

uint64_t sub_39454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_54A4(&qword_62B80, &qword_4BC40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_3DB20(a3, v28 - v12);
  v14 = sub_485E4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_60C8(v13, &qword_62B80, &qword_4BC40);
  }

  else
  {
    sub_485D4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_48594();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_48444() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_60C8(a3, &qword_62B80, &qword_4BC40);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_60C8(a3, &qword_62B80, &qword_4BC40);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_39744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_54A4(&qword_62B80, &qword_4BC40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_3DB20(a3, v28 - v12);
  v14 = sub_485E4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_60C8(v13, &qword_62B80, &qword_4BC40);
  }

  else
  {
    sub_485D4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_48594();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_48444() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      sub_54A4(&qword_63D40, &qword_4CD40);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_60C8(a3, &qword_62B80, &qword_4BC40);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_60C8(a3, &qword_62B80, &qword_4BC40);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_54A4(&qword_63D40, &qword_4CD40);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

id sub_39A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v98 = a4;
  v97 = a3;
  v6 = sub_474F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v10 = sub_54A4(&qword_63D30, &qword_4CD10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = v88 - v13;
  sub_54A4(&qword_63D50, &qword_4CD58);
  sub_47704();
  v96 = v8;
  v92 = a2;
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    sub_60C8(v14, &qword_63D30, &qword_4CD10);
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v15 = sub_47814();
    sub_5ED4(v15, qword_64418);
    v16 = sub_477F4();
    v17 = sub_48624();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Could not create poll URL", v18, 2u);
    }

    return 0;
  }

  else
  {
    v94 = v7;
    v95 = v6;
    v20 = (*(v7 + 32))(v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v6);
    v90 = v88;
    __chkstk_darwin(v20, v21);
    v23 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54A4(&qword_626C8, &qword_4B2B0);
    v24 = *(sub_473E4() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_4C610;
    v27 = qword_4CF00[v98];
    sub_473B4();

    v28 = a1;
    v29 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *(sub_476B4() + 16);

    v99[0] = v30;
    sub_48854();
    sub_473B4();

    v93 = v23;
    sub_474E4();

    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v31 = sub_47814();
    v32 = sub_5ED4(v31, qword_64418);
    v33 = sub_476F4();
    v89 = v88;
    v34 = *(v33 - 8);
    v35 = *(v34 + 64);
    __chkstk_darwin(v33, v36);
    v38 = v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v38, v28, v33);
    v39 = sub_477F4();
    v40 = sub_48604();
    v41 = os_log_type_enabled(v39, v40);
    v91 = v29;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v99[0] = v43;
      *v42 = 136315138;
      sub_476B4();
      sub_47674();
      v44 = sub_48554();
      v88[1] = v32;
      v45 = v44;
      v47 = v46;

      (*(v34 + 8))(v38, v33);
      v48 = sub_3DD80(v45, v47, v99);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_0, v39, v40, "pollDef: %s", v42, 0xCu);
      sub_6020(v43);
    }

    else
    {

      v49 = (*(v34 + 8))(v38, v33);
    }

    __chkstk_darwin(v49, v50);
    v52 = v88 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v94;
    v54 = v95;
    (*(v94 + 16))(v52, v93, v95);
    v55 = sub_477F4();
    v56 = sub_48604();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v89 = v88;
      v58 = v57;
      v59 = swift_slowAlloc();
      v99[0] = v59;
      *v58 = 136315138;
      v60 = sub_474B4();
      v62 = v61;
      v96 = *(v53 + 8);
      v96(v52, v54);
      v63 = sub_3DD80(v60, v62, v99);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_0, v55, v56, "Created Poll Data: %s", v58, 0xCu);
      sub_6020(v59);
    }

    else
    {

      v96 = *(v53 + 8);
      v96(v52, v54);
    }

    v64 = v98;
    v65 = sub_477F4();
    v66 = sub_48604();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v99[0] = v68;
      *v67 = 136315138;
      v69 = 0xE700000000000000;
      v70 = 0x6E776F6E6B6E55;
      v71 = 0xE900000000000075;
      v72 = 0x6E654D20646E6553;
      if (v64 != 2)
      {
        v72 = 0xD000000000000013;
        v71 = 0x8000000000049B50;
      }

      if (v64)
      {
        v70 = 0x6C5020736C6C6F50;
        v69 = 0xEC0000006E696775;
      }

      if (v64 <= 1u)
      {
        v73 = v70;
      }

      else
      {
        v73 = v72;
      }

      if (v64 <= 1u)
      {
        v74 = v69;
      }

      else
      {
        v74 = v71;
      }

      v75 = sub_3DD80(v73, v74, v99);

      *(v67 + 4) = v75;
      _os_log_impl(&dword_0, v65, v66, "Source of message: %s", v67, 0xCu);
      sub_6020(v68);
    }

    v76 = [objc_allocWithZone(MSMessage) initWithSession:v92];
    if (qword_61CD0 != -1)
    {
      swift_once();
    }

    sub_47494();
    v77 = sub_483D4();

    [v76 setSummaryText:v77];

    v78 = v93;
    v79 = sub_474C4();
    [v76 setURL:v79];

    [v76 setRequiresValidation:1];
    v80 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    sub_47494();
    v81 = sub_483D4();

    [v80 setCaption:v81];

    v82 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v80];
    [v82 setLiveEditableInEntryView:v97 & 1];
    sub_54A4(&qword_626A0, &qword_4B288);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_4A9C0;
    *(v83 + 32) = sub_48414();
    *(v83 + 40) = v84;
    v85 = sub_48534();

    [v82 setRequiredCapabilities:v85];

    [v82 setSendAlternateLayoutAsText:1];
    [v76 setLayout:v82];

    v86 = v95;
    v87 = v96;
    v96(v78, v95);
    v87(v91, v86);
    return v76;
  }
}

uint64_t sub_3A614(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_474F4();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = &v158[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a3 URL];
  if (!v12)
  {
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v25 = sub_47814();
    sub_5ED4(v25, qword_64418);
    v26 = sub_477F4();
    v27 = sub_48624();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "URL not present in message", v28, 2u);
    }

    sub_3F0F0();
    swift_allocError();
    return swift_willThrow();
  }

  v177 = v3;
  v178 = v9;
  v175 = a2;
  v176 = a3;
  v174 = a1;
  v13 = v12;
  sub_474D4();

  v14 = sub_47434();
  v180 = v158;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v158[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_54A4(&qword_63D68, &qword_4CD68);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v158[-v23];
  sub_47414();
  if ((*(v15 + 48))(v24, 1, v14) == 1)
  {
    sub_60C8(v24, &qword_63D68, &qword_4CD68);
  }

  else
  {
    (*(v15 + 32))(v19, v24, v14);
    v30 = sub_473F4();
    if (v30)
    {
      v31 = v30;
      v172 = v19;
      v173 = v8;
      v170 = v15;
      v171 = v14;
      v167 = v11;
      v169 = v7;
      v32 = sub_473E4();
      v166 = v158;
      v8 = *(v32 - 8);
      v33 = *(v8 + 64);
      v35 = __chkstk_darwin(v32, v34);
      v165 = &v158[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v168 = v158;
      v186 = v36;
      v38 = __chkstk_darwin(v35, v37);
      v164 = &v158[-v39];
      v182 = *(v31 + 16);
      if (!v182)
      {
LABEL_19:

        v49 = v170;
        v48 = v171;
        if (qword_61D80 != -1)
        {
LABEL_81:
          swift_once();
        }

        v50 = sub_47814();
        sub_5ED4(v50, qword_64418);
        v51 = sub_477F4();
        v52 = sub_48624();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v173;
        if (v53)
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_0, v51, v52, "Missing message source", v55, 2u);
        }

        sub_3F0F0();
        swift_allocError();
        swift_willThrow();
        (*(v49 + 8))(v172, v48);
        return (*(v54 + 8))(v167, v169);
      }

      v11 = 0;
      v183 = (v8 + 8);
      v184 = v8 + 16;
      v185 = v32;
      while (1)
      {
        if (v11 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        v7 = v158;
        v40 = v31;
        v181 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v41 = *(v8 + 72);
        __chkstk_darwin(v38, v31 + v181 + v41 * v11);
        v43 = &v158[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v44 = *(v8 + 16);
        v44(v43);
        if (sub_473C4() == 6517363 && v45 == 0xE300000000000000)
        {
          break;
        }

        v47 = sub_48874();

        if (v47)
        {
          goto LABEL_29;
        }

        ++v11;
        v38 = (*v183)(v43, v185);
        v31 = v40;
        if (v182 == v11)
        {
          goto LABEL_19;
        }
      }

LABEL_29:
      v60 = *(v8 + 32);
      v61 = v164;
      v62 = v185;
      v60(v164, v43, v185);
      v164 = (v8 + 32);
      v163 = v60;
      v60(v165, v61, v62);
      v63 = sub_473D4();
      v66 = v170;
      v65 = v171;
      v67 = v173;
      if (v64)
      {
        v68 = v63;
        v69 = v64;

        v162 = v68;
        v70 = sub_3FFC8(v68, v69);
        if (v70 != 4)
        {
          v159 = v70;
          if (qword_61D80 != -1)
          {
            swift_once();
          }

          v75 = sub_47814();
          v76 = sub_5ED4(v75, qword_64418);

          v168 = v76;
          v77 = sub_477F4();
          v78 = sub_48604();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            LODWORD(v161) = v78;
            v80 = v79;
            v81 = swift_slowAlloc();
            v187 = v81;
            *v80 = 136315138;
            v82 = sub_3DD80(v162, v69, &v187);

            *(v80 + 4) = v82;
            _os_log_impl(&dword_0, v77, v161, "query value: %s", v80, 0xCu);
            sub_6020(v81);
          }

          else
          {
          }

          v49 = v185;
          v83 = v40;
          __chkstk_darwin(v84, v85);
          *&v158[-16] = v165;

          v86 = v179;
          v179 = sub_39144(sub_40014, &v158[-32], v40);
          v160 = v86;
          v162 = v158;
          v88 = __chkstk_darwin(v179, v87);
          v161 = &v158[-((v90 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v48 = 0;
          v91 = v40 + v181;
          while (1)
          {
            if (v48 >= *(v83 + 16))
            {
              __break(1u);
              goto LABEL_81;
            }

            __chkstk_darwin(v88, v89);
            v93 = &v158[-((v92 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (v44)(v93, v91, v49);
            if (sub_473C4() == 99 && v94 == 0xE100000000000000)
            {

              goto LABEL_53;
            }

            v96 = sub_48874();

            if (v96)
            {
              break;
            }

            ++v48;
            v97 = *v183;
            v49 = v185;
            v88 = (*v183)(v93, v185);
            v91 += v41;
            v83 = v40;
            if (v182 == v48)
            {

              v100 = v163;
              goto LABEL_57;
            }
          }

          v49 = v185;
LABEL_53:

          v101 = v161;
          v100 = v163;
          v163(v161, v93, v49);
          v102 = sub_473D4();
          if (v103)
          {
            v104 = sub_3CA54(v102, v103);
            v106 = v105;
            v97 = *v183;
            v98 = (*v183)(v101, v49);
            if ((v106 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v97 = *v183;
            v98 = (*v183)(v101, v49);
          }

LABEL_57:
          __chkstk_darwin(v98, v99);
          v108 = &v158[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
          sub_473B4();
          v109 = v179;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_10DE0(0, v109[2] + 1, 1, v109);
          }

          v111 = v109[2];
          v110 = v109[3];
          if (v111 >= v110 >> 1)
          {
            v109 = sub_10DE0(v110 > 1, v111 + 1, 1, v109);
          }

          v109[2] = v111 + 1;
          v179 = v109;
          v100(v109 + v181 + v111 * v41, v108, v49);
          v104 = 0;
LABEL_62:
          v112 = sub_477F4();
          v113 = sub_48604();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 134217984;
            *(v114 + 4) = v104;
            _os_log_impl(&dword_0, v112, v113, "Option count: %ld", v114, 0xCu);
          }

          v115 = sub_47404();
          __chkstk_darwin(v115, v116);
          v118 = &v158[-((v117 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v119 = sub_54A4(&qword_63D30, &qword_4CD10);
          v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v119 - 8, v121);
          v123 = &v158[-v122];
          sub_47424();
          v124 = v173;
          v125 = v169;
          if ((*(v173 + 48))(v123, 1, v169) == 1)
          {
            sub_60C8(v123, &qword_63D30, &qword_4CD10);
            v126 = sub_477F4();
            v127 = sub_48624();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              *v128 = 0;
              _os_log_impl(&dword_0, v126, v127, "URL badly formed in message", v128, 2u);
            }

            sub_3F0F0();
            swift_allocError();
            swift_willThrow();
            (*(v170 + 8))(v172, v171);
            (*(v173 + 8))(v167, v169);
            return v97(v165, v185);
          }

          (*(v124 + 32))(v118, v123, v125);
          v129 = sub_476F4();
          v186 = v158;
          v130 = *(v129 - 8);
          v131 = *(v130 + 64);
          __chkstk_darwin(v129, v132);
          v134 = &v158[-((v133 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v135 = sub_54A4(&qword_63D70, &qword_4CD70);
          v136 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v135 - 8, v137);
          v139 = &v158[-v138];
          sub_54A4(&qword_63D50, &qword_4CD58);
          v140 = v160;
          sub_47714();
          if (v140)
          {

            (*(v130 + 56))(v139, 1, 1, v129);
LABEL_71:
            sub_60C8(v139, &qword_63D70, &qword_4CD70);
            v141 = sub_477F4();
            v142 = sub_48624();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 0;
              _os_log_impl(&dword_0, v141, v142, "Could not decode poll definition from URL", v143, 2u);
            }

            sub_3F0F0();
            swift_allocError();
            swift_willThrow();
            v144 = *(v173 + 8);
            v145 = v169;
            v144(v118, v169);
            (*(v170 + 8))(v172, v171);
            v144(v167, v145);
            return v97(v165, v185);
          }

          v184 = 0;
          if ((*(v130 + 48))(v139, 1, v129) == 1)
          {
            goto LABEL_71;
          }

          v146 = *(v130 + 32);
          v181 = v130 + 32;
          v179 = v146;
          (v146)(v134, v139, v129);
          v147 = sub_476A4();
          v182 = v158;
          v178 = *(v147 - 8);
          v148 = *(v178 + 64);
          __chkstk_darwin(v147, v149);
          v151 = &v158[-((v150 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v152 = v184;
          sub_3CDD0(v176, v151);
          if (v152)
          {
            (*(v130 + 8))(v134, v129);
            v153 = *(v173 + 8);
            v154 = v169;
            v153(v118, v169);
            (*(v170 + 8))(v172, v171);
            v153(v167, v154);
            return v97(v165, v185);
          }

          v184 = v147;
          v155 = *(v173 + 8);
          v156 = v118;
          v157 = v169;
          v155(v156, v169);
          (*(v170 + 8))(v172, v171);
          v155(v167, v157);
          (v179)(v174, v134, v129);
          (*(v178 + 32))(v175, v151, v184);
          v97(v165, v185);
          return v159;
        }
      }

      if (qword_61D80 != -1)
      {
        swift_once();
      }

      v71 = sub_47814();
      sub_5ED4(v71, qword_64418);
      v72 = sub_477F4();
      v73 = sub_48624();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "Incorrect source parameter type", v74, 2u);
      }

      sub_3F0F0();
      swift_allocError();
      swift_willThrow();
      (*(v66 + 8))(v172, v65);
      (*(v67 + 8))(v167, v169);
      return (*v183)(v165, v185);
    }

    (*(v15 + 8))(v19, v14);
  }

  if (qword_61D80 != -1)
  {
LABEL_79:
    swift_once();
  }

  v56 = sub_47814();
  sub_5ED4(v56, qword_64418);
  v57 = sub_477F4();
  v58 = sub_48624();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v57, v58, "No components", v59, 2u);
  }

  sub_3F0F0();
  swift_allocError();
  swift_willThrow();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_3BB14()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64418);
  sub_5ED4(v0, qword_64418);
  return sub_47804();
}

void sub_3BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_39A48(a1, a2, 1, a3);
  if (v5)
  {
    v13 = v5;
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v6 = sub_47814();
    sub_5ED4(v6, qword_64418);
    v7 = sub_477F4();
    v8 = sub_48604();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Updating poll in entry view", v9, 2u);
    }

    v10 = *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    v11 = v13;
    if (v10)
    {
      v12 = v10;
      [v12 insertMessage:v13 completionHandler:0];

      v11 = v13;
    }
  }
}

void sub_3BCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_54A4(&qword_62B80, &qword_4BC40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v40 - v9;
  v11 = sub_474F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_54A4(&qword_63D30, &qword_4CD10);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v40 - v20;
  sub_54A4(&qword_63D38, &qword_4CD18);
  sub_47704();
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    sub_60C8(v21, &qword_63D30, &qword_4CD10);
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v22 = sub_47814();
    sub_5ED4(v22, qword_64418);
    v23 = sub_477F4();
    v24 = sub_48624();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Could not create votes URL", v25, 2u);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v21, v11);
    v26 = sub_47564();
    v41 = a3;
    v42 = &v40;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    __chkstk_darwin(v26, v29);
    v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47554();
    v32 = objc_allocWithZone(_MSMessageCustomAcknowledgement);
    v33 = sub_47514();
    v34 = [v32 initWithSession:v41 isFromMe:1 time:v33];

    (*(v27 + 8))(v31, v26);
    v35 = sub_474C4();
    [v34 setURL:v35];

    [v34 setIsFromMe:1];
    v36 = sub_485E4();
    (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
    sub_485B4();

    v37 = v34;
    v38 = sub_485A4();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = v4;
    v39[5] = v37;
    sub_39744(0, 0, v10, &unk_4CD28, v39);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_3C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_485B4();
  v5[21] = sub_485A4();
  v7 = sub_48594();
  v5[22] = v7;
  v5[23] = v6;

  return _swift_task_switch(sub_3C258, v7, v6);
}

uint64_t sub_3C258()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[20];
    v0[2] = v0;
    v0[3] = sub_3C3D8;
    v3 = swift_continuation_init();
    v0[17] = sub_54A4(&qword_63D48, &qword_4CD50);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_3C60C;
    v0[13] = &unk_5EF20;
    v0[14] = v3;
    [v1 sendCustomAcknowledgement:v2 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v4 = v0[21];
    v5 = v0[18];

    *v5 = 1;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_3C3D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_3C578;
  }

  else
  {
    v6 = sub_3C508;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_3C508()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];

  *v3 = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_3C578()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[18];

  swift_willThrow();

  *v4 = 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_3C60C(uint64_t a1, void *a2)
{
  v3 = sub_6190((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_54A4(&qword_62BB0, &qword_4BCA0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_3C6B8()
{
  v1 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_definitionCodableHelper;
  v2 = sub_54A4(&qword_63D50, &qword_4CD58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_pollResponseCodableHelper;
  v4 = sub_54A4(&qword_63D38, &qword_4CD18);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for PollNetworking()
{
  result = qword_63C58;
  if (!qword_63C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3C810()
{
  sub_3C8E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_3C99C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_3C8E4()
{
  if (!qword_63C68)
  {
    sub_476F4();
    sub_400F0(&qword_62B88, &type metadata accessor for PollDefinition);
    sub_400F0(&qword_62B90, &type metadata accessor for PollDefinition);
    v0 = sub_47734();
    if (!v1)
    {
      atomic_store(v0, &qword_63C68);
    }
  }
}

void sub_3C99C()
{
  if (!qword_63C70)
  {
    sub_476A4();
    sub_400F0(&qword_62B98, &type metadata accessor for PollResponse);
    sub_400F0(&qword_62BA0, &type metadata accessor for PollResponse);
    v0 = sub_47734();
    if (!v1)
    {
      atomic_store(v0, &qword_63C70);
    }
  }
}

uint64_t sub_3CA54(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_487C4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_3E328(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_3CD54()
{
  sub_473E4();
  sub_400F0(&qword_63D88, &type metadata accessor for URLQueryItem);
  return (sub_483C4() & 1) == 0;
}

uint64_t sub_3CDD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v113 = _swiftEmptyArrayStorage;
  v4 = [a1 customAcknowledgements];
  if (!v4)
  {
    return sub_47684();
  }

  v5 = v4;
  sub_40034();
  v6 = sub_48544();

  if (v6 >> 62)
  {
LABEL_40:
    v7 = sub_487E4();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v70 = _swiftEmptyArrayStorage;
  if (!v7)
  {
LABEL_36:

    return sub_47684();
  }

  v8 = 0;
  v74 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_pollResponseCodableHelper;
  v77 = v6 & 0xC000000000000001;
  v76 = v6 & 0xFFFFFFFFFFFFFF8;
  v73 = v6 + 32;
  v75 = v6;
  v72 = v7;
  while (1)
  {
    if (v77)
    {
      v9 = sub_487A4();
    }

    else
    {
      if (v8 >= *(v76 + 16))
      {
        goto LABEL_39;
      }

      v9 = *(v73 + 8 * v8);
    }

    v89 = v9;
    v10 = __OFADD__(v8, 1);
    v11 = v8 + 1;
    if (v10)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v84 = v11;
    v12 = sub_474F4();
    v87 = *(v12 - 8);
    v13 = *(v87 + 64);
    __chkstk_darwin(v12, v14);
    v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = [v89 URL];
    sub_474D4();

    v18 = sub_476A4();
    v85 = &v69;
    v19 = *(v18 - 8);
    v20 = *(v19 + 64);
    __chkstk_darwin(v18, v21);
    v88 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = sub_54A4(&qword_63D80, &qword_4CD78);
    v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v23 - 8, v25);
    v27 = &v69 - v26;
    sub_54A4(&qword_63D38, &qword_4CD18);
    v86 = v16;
    sub_47714();
    if (v3)
    {

      (*(v19 + 56))(v27, 1, 1, v18);
      goto LABEL_30;
    }

    if ((*(v19 + 48))(v27, 1, v18) == 1)
    {
      break;
    }

    v82 = v19;
    v28 = *(v19 + 32);
    v83 = v18;
    v28(v88, v27, v18);
    v29 = sub_47694();
    v30 = *(v29 + 16);
    if (v30)
    {
      v79 = v12;
      v80 = &v69;
      v81 = 0;
      v112 = _swiftEmptyArrayStorage;
      sub_22074(0, v30, 0);
      v31 = v112;
      v32 = sub_47784();
      v33 = *(v32 - 8);
      v34 = *(v33 + 16);
      v33 += 16;
      v97 = v34;
      v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
      v78 = v29;
      v95 = v35;
      v96 = v33;
      v36 = v29 + v35;
      v37 = *(v33 + 48);
      v93 = *(v33 + 56);
      v94 = v37;
      v92 = (v33 - 8);
      v91 = (v33 + 16);
      v98 = v32;
      do
      {
        v110 = v31;
        v111 = v30;
        v108 = &v69;
        v38 = __chkstk_darwin(v32, v36);
        v107 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        v106 = &v69;
        __chkstk_darwin(v38, v40);
        v42 = &v69 - v41;
        v109 = v43;
        v97(&v69 - v41);
        v44 = sub_47774();
        v104 = v45;
        v105 = v44;
        v46 = sub_47754();
        v101 = v47;
        v102 = v46;
        v48 = sub_54A4(&qword_62138, &qword_4AC00);
        v103 = &v69;
        v49 = *(*(v48 - 8) + 64);
        v51 = __chkstk_darwin(v48 - 8, v50);
        v52 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
        v100 = &v69;
        __chkstk_darwin(v51, v53);
        sub_47744();
        v54 = sub_47564();
        v55 = *(v54 - 8);
        v99 = *(v55 + 48);
        if (v99(&v69 - v52, 1, v54) == 1)
        {
          v56 = [v89 time];
          v90 = &v69;
          if (__chkstk_darwin(v56, v57))
          {
            sub_47544();

            v58 = 0;
          }

          else
          {
            v58 = 1;
          }

          (*(v55 + 56))(&v69 - v52, v58, 1, v54);
          sub_40080(&v69 - v52, &v69 - v52);
          if (v99(&v69 - v52, 1, v54) != 1)
          {
            sub_60C8(&v69 - v52, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          (*(v55 + 32))(&v69 - v52, &v69 - v52, v54);
          (*(v55 + 56))(&v69 - v52, 0, 1, v54);
        }

        v59 = v107;
        sub_47764();
        v60 = v98;
        (*v92)(v42, v98);
        v31 = v110;
        v112 = v110;
        v62 = v110[2];
        v61 = v110[3];
        if (v62 >= v61 >> 1)
        {
          sub_22074(v61 > 1, v62 + 1, 1);
          v31 = v112;
        }

        v31[2] = v62 + 1;
        v63 = v93;
        v32 = (*v91)(v31 + v95 + v62 * v93, v59, v60);
        v36 = v109 + v63;
        v30 = v111 - 1;
      }

      while (v111 != 1);

      v3 = v81;
      v12 = v79;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    sub_21E74(v31);

    (*(v82 + 8))(v88, v83);
    (*(v87 + 8))(v86, v12);
    v8 = v84;
    v6 = v75;
    if (v84 == v72)
    {
      v70 = v113;
      goto LABEL_36;
    }
  }

LABEL_30:
  sub_60C8(v27, &qword_63D80, &qword_4CD78);
  if (qword_61D80 != -1)
  {
    swift_once();
  }

  v64 = sub_47814();
  sub_5ED4(v64, qword_64418);
  v65 = sub_477F4();
  v66 = sub_48624();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "Could not parse data from poll votes", v67, 2u);
  }

  sub_3F0F0();
  swift_allocError();
  swift_willThrow();

  return (*(v87 + 8))(v86, v12);
}

Swift::Int sub_3D84C()
{
  v1 = *v0;
  sub_488D4();
  v2 = qword_4CF00[v1];
  sub_48464();

  return sub_48904();
}

uint64_t sub_3D8A8()
{
  v1 = qword_4CF00[*v0];
  sub_48464();
}

Swift::Int sub_3D8E8()
{
  v1 = *v0;
  sub_488D4();
  v2 = qword_4CF00[v1];
  sub_48464();

  return sub_48904();
}

uint64_t sub_3D940@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3FFC8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_3D98C()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x6E654D20646E6553;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C5020736C6C6F50;
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

uint64_t sub_3DA18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3DA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C43C;

  return sub_3C1BC(a1, v4, v5, v7, v6);
}

uint64_t sub_3DB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62B80, &qword_4BC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DB90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3DC88;

  return v7(a1);
}

uint64_t sub_3DC88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3DD80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3DE4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_606C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6020(v11);
  return v7;
}

unint64_t sub_3DE4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3DF58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_487C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_3DF58(uint64_t a1, unint64_t a2)
{
  v4 = sub_3DFA4(a1, a2);
  sub_3E0D4(&off_5DF78);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3DFA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3E1C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_487C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_48494();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3E1C0(v10, 0);
        result = sub_48784();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3E0D4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_3E234(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3E1C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_54A4(&qword_63D58, &qword_4CD60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3E234(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_54A4(&qword_63D58, &qword_4CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unsigned __int8 *sub_3E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_484F4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E8B4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_487C4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_3E8B4()
{
  v0 = sub_48504();
  v4 = sub_3E934(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_3E934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_48454();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_486F4();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_3E1C0(v9, 0);
  v12 = sub_3EA8C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_48454();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_487C4();
LABEL_4:

  return sub_48454();
}

unint64_t sub_3EA8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_3ECAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_484C4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_487C4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_3ECAC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_484A4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_3ECAC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_484D4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_484B4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_3ED28(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_3EE1C;

  return v6(v2 + 32);
}

uint64_t sub_3EE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_3EF30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C7CC;

  return sub_3ED28(a1, v5);
}

uint64_t sub_3EFE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3F020(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C43C;

  return sub_3ED28(a1, v5);
}

unint64_t sub_3F0F0()
{
  result = qword_63D60;
  if (!qword_63D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63D60);
  }

  return result;
}

uint64_t sub_3F144(void *a1)
{
  v3 = sub_474F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 URL];
  if (!v9)
  {
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v22 = sub_47814();
    sub_5ED4(v22, qword_64418);
    v23 = sub_477F4();
    v24 = sub_48624();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "URL not present in message", v25, 2u);
    }

    sub_3F0F0();
    swift_allocError();
    swift_willThrow();
    return v24;
  }

  v132 = v1;
  v10 = v9;
  sub_474D4();

  v11 = sub_47434();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_54A4(&qword_63D68, &qword_4CD68);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v117 - v20;
  sub_47414();
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    sub_60C8(v21, &qword_63D68, &qword_4CD68);
    goto LABEL_25;
  }

  (*(v12 + 32))(v16, v21, v11);
  v26 = sub_473F4();
  if (!v26)
  {
    (*(v12 + 8))(v16, v11);
LABEL_25:
    if (qword_61D80 == -1)
    {
LABEL_26:
      v50 = sub_47814();
      sub_5ED4(v50, qword_64418);
      v51 = sub_477F4();
      v24 = sub_48624();
      if (os_log_type_enabled(v51, v24))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v51, v24, "No components", v52, 2u);
      }

      sub_3F0F0();
      swift_allocError();
      swift_willThrow();
      (*(v4 + 8))(v8, v3);
      return v24;
    }

LABEL_115:
    swift_once();
    goto LABEL_26;
  }

  v27 = v26;
  v130 = v3;
  v131 = v16;
  v125 = v11;
  v126 = v12;
  v127 = &v117;
  v128 = v8;
  v129 = v4;
  v28 = sub_473E4();
  v124 = &v117;
  v134 = *(v28 - 8);
  v29 = *(v134 + 64);
  v31 = __chkstk_darwin(v28, v30);
  v139 = v32;
  v122 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = *(v27 + 16);
  if (!v135)
  {
LABEL_19:

    v41 = v128;
    v42 = v131;
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v43 = sub_47814();
    sub_5ED4(v43, qword_64418);
    v44 = sub_477F4();
    v24 = sub_48624();
    v45 = os_log_type_enabled(v44, v24);
    v47 = v129;
    v46 = v130;
    v48 = v126;
    if (v45)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v44, v24, "Missing poll count", v49, 2u);
      v42 = v131;
    }

    sub_3F0F0();
    swift_allocError();
    swift_willThrow();
    (*(v48 + 8))(v42, v125);
    (*(v47 + 8))(v41, v46);
    return v24;
  }

  v33 = 0;
  v123 = v134 + 8;
  v136 = (v134 + 8);
  v137 = v134 + 16;
  v138 = v28;
  while (1)
  {
    if (v33 >= *(v27 + 16))
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v8 = ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v34 = v27;
    v3 = *(v134 + 72);
    __chkstk_darwin(v31, &v8[v27 + v3 * v33]);
    v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = *(v37 + 16);
    v38(v36);
    if (sub_473C4() == 99 && v39 == 0xE100000000000000)
    {
      break;
    }

    v4 = sub_48874();

    if (v4)
    {
      goto LABEL_31;
    }

    ++v33;
    v31 = (*v136)(v36, v138);
    v27 = v34;
    if (v135 == v33)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  v54 = *(v134 + 32);
  v55 = v122;
  v4 = v138;
  v134 += 32;
  v119 = v54;
  v54(v122, v36, v138);
  if (qword_61D80 != -1)
  {
    swift_once();
  }

  v56 = sub_47814();
  v57 = sub_5ED4(v56, qword_64418);
  v121 = &v117;
  __chkstk_darwin(v57, v58);
  v60 = &v117 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v38)(v60, v55, v4);
  v61 = sub_477F4();
  v62 = sub_48604();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v120 = v63;
    v133 = swift_slowAlloc();
    v140[0] = v133;
    *v63 = 136315138;
    sub_400F0(&qword_63D90, &type metadata accessor for URLQueryItem);
    v118 = v61;
    v64 = sub_48854();
    v66 = v65;
    v67 = *v136;
    (*v136)(v60, v138);
    v68 = sub_3DD80(v64, v66, v140);
    v4 = v138;

    v69 = v120;
    *(v120 + 4) = v68;
    v70 = v67;
    v71 = v118;
    _os_log_impl(&dword_0, v118, v62, "Query item: %s", v69, 0xCu);
    sub_6020(v133);
  }

  else
  {

    v74 = v60;
    v70 = *v136;
    v72 = (*v136)(v74, v4);
  }

  v120 = &v117;
  v75 = __chkstk_darwin(v72, v73);
  v121 = &v117 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = 0;
  v8 += v34;
  v123 = v123 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v133 = v70;
  while (1)
  {
    if (v78 >= *(v34 + 16))
    {
      goto LABEL_114;
    }

    __chkstk_darwin(v75, v76);
    v80 = &v117 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v38)(v80, v8, v4);
    if (sub_473C4() == 99 && v81 == 0xE100000000000000)
    {

      goto LABEL_47;
    }

    v83 = sub_48874();

    if (v83)
    {
      break;
    }

    ++v78;
    v4 = v138;
    v84 = v133;
    v75 = (v133)(v80, v138);
    v8 += v3;
    if (v135 == v78)
    {

      v24 = 0;
      v86 = v129;
      v85 = v130;
      v87 = v128;
      v88 = v126;
LABEL_119:
      (v84)(v122, v4);
      (*(v88 + 8))(v131, v125);
      (*(v86 + 8))(v87, v85);
      return v24;
    }
  }

  v4 = v138;
LABEL_47:

  v89 = v121;
  v119(v121, v80, v4);
  result = sub_473D4();
  v86 = v129;
  v85 = v130;
  v87 = v128;
  v88 = v126;
  if (!v90)
  {
    v98 = v89;
LABEL_112:
    v84 = v133;
    (v133)(v98, v4);
    v24 = 0;
    goto LABEL_119;
  }

  v91 = HIBYTE(v90) & 0xF;
  v92 = result & 0xFFFFFFFFFFFFLL;
  if ((v90 & 0x2000000000000000) != 0)
  {
    v93 = HIBYTE(v90) & 0xF;
  }

  else
  {
    v93 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v93)
  {

    goto LABEL_111;
  }

  if ((v90 & 0x1000000000000000) != 0)
  {
    v24 = sub_3E328(result, v90, 10);
    v115 = v114;

    if (v115)
    {
      goto LABEL_111;
    }

    goto LABEL_118;
  }

  if ((v90 & 0x2000000000000000) != 0)
  {
    v140[0] = result;
    v140[1] = v90 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v91)
      {
        goto LABEL_124;
      }

      v92 = v91 - 1;
      if (v91 != 1)
      {
        v24 = 0;
        v105 = v140 + 1;
        while (1)
        {
          v106 = *v105 - 48;
          if (v106 > 9)
          {
            break;
          }

          v107 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v107 + v106;
          if (__OFADD__(v107, v106))
          {
            break;
          }

          ++v105;
          if (!--v92)
          {
            goto LABEL_110;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v91)
      {
        goto LABEL_122;
      }

      v92 = v91 - 1;
      if (v91 != 1)
      {
        v24 = 0;
        v99 = v140 + 1;
        while (1)
        {
          v100 = *v99 - 48;
          if (v100 > 9)
          {
            break;
          }

          v101 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v101 - v100;
          if (__OFSUB__(v101, v100))
          {
            break;
          }

          ++v99;
          if (!--v92)
          {
            goto LABEL_110;
          }
        }
      }
    }

    else if (v91)
    {
      v24 = 0;
      v110 = v140;
      while (1)
      {
        v111 = *v110 - 48;
        if (v111 > 9)
        {
          break;
        }

        v112 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v112 + v111;
        if (__OFADD__(v112, v111))
        {
          break;
        }

        v110 = (v110 + 1);
        if (!--v91)
        {
          goto LABEL_108;
        }
      }
    }

LABEL_109:
    v24 = 0;
    LOBYTE(v92) = 1;
    goto LABEL_110;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v90 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_487C4();
    v92 = v116;
  }

  v94 = *result;
  if (v94 == 43)
  {
    if (v92 < 1)
    {
      goto LABEL_123;
    }

    if (!--v92)
    {
      goto LABEL_109;
    }

    v24 = 0;
    if (!result)
    {
      goto LABEL_108;
    }

    v102 = (result + 1);
    while (1)
    {
      v103 = *v102 - 48;
      if (v103 > 9)
      {
        goto LABEL_109;
      }

      v104 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_109;
      }

      v24 = v104 + v103;
      if (__OFADD__(v104, v103))
      {
        goto LABEL_109;
      }

      ++v102;
      if (!--v92)
      {
        goto LABEL_110;
      }
    }
  }

  if (v94 != 45)
  {
    if (!v92)
    {
      goto LABEL_109;
    }

    v24 = 0;
    if (!result)
    {
      goto LABEL_108;
    }

    while (1)
    {
      v108 = *result - 48;
      if (v108 > 9)
      {
        goto LABEL_109;
      }

      v109 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_109;
      }

      v24 = v109 + v108;
      if (__OFADD__(v109, v108))
      {
        goto LABEL_109;
      }

      ++result;
      if (!--v92)
      {
        goto LABEL_110;
      }
    }
  }

  if (v92 >= 1)
  {
    if (!--v92)
    {
      goto LABEL_109;
    }

    v24 = 0;
    if (result)
    {
      v95 = (result + 1);
      while (1)
      {
        v96 = *v95 - 48;
        if (v96 > 9)
        {
          goto LABEL_109;
        }

        v97 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          goto LABEL_109;
        }

        v24 = v97 - v96;
        if (__OFSUB__(v97, v96))
        {
          goto LABEL_109;
        }

        ++v95;
        if (!--v92)
        {
          goto LABEL_110;
        }
      }
    }

LABEL_108:
    LOBYTE(v92) = 0;
LABEL_110:
    v141 = v92;
    v113 = v92;

    if (v113)
    {
LABEL_111:
      v98 = v121;
      v4 = v138;
      goto LABEL_112;
    }

LABEL_118:
    v4 = v138;
    v84 = v133;
    (v133)(v121, v138);
    goto LABEL_119;
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t sub_3FFC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_5DFA0;
  v6._object = a2;
  v4 = sub_48834(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_40034()
{
  result = qword_63D78;
  if (!qword_63D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_63D78);
  }

  return result;
}

uint64_t sub_40080(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62138, &qword_4AC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_400F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_40138(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C7CC;

  return sub_3DB90(a1, v5);
}

uint64_t getEnumTagSinglePayload for PollSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PollSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_40370()
{
  result = qword_63D98;
  if (!qword_63D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63D98);
  }

  return result;
}

unint64_t sub_403C8()
{
  result = qword_63DA0;
  if (!qword_63DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63DA0);
  }

  return result;
}

id sub_40428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:*(a1 + 16)];
  v6 = [v5 length];
  sub_4060C(*(v3 + 16), *(v3 + 32));
  if (a2 || (a2 = *(v3 + 24)) != 0)
  {
    [v5 addAttribute:NSForegroundColorAttributeName value:a2 range:{0, v6}];
  }

  if (qword_61D08 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643A0 range:{0, v6}];
  if (qword_61D10 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643A8 range:{0, v6}];
  if (qword_61D18 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643B0 range:{0, v6}];
  if (qword_61D20 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643B8 range:{0, v6}];

  return v5;
}

id sub_4060C(uint64_t a1, char a2)
{
  [v2 addAttribute:NSFontAttributeName value:a1 range:{0, objc_msgSend(v2, "length")}];
  v38 = v2;
  v39 = 1;
  v40 = a1;
  v41 = a2;
  result = IMTextStyleAttributeNameFromStyle();
  if (!result)
  {
    goto LABEL_3;
  }

  v7 = result;
  v8 = [v2 length];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_43288;
  *(v9 + 24) = &v37;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_4383C;
  *(v10 + 24) = v9;
  v46 = sub_43838;
  v47 = v10;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_41E80;
  v45 = &unk_5F3D8;
  v11 = _Block_copy(&aBlock);

  [v2 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    v12 = a2 & 1;
    __chkstk_darwin(result, v6);
    v33 = v2;
    v34 = 2;
    v35 = a1;
    v36 = a2 & 1;
    v13 = IMTextStyleAttributeNameFromStyle();
    if (v13)
    {
      v15 = v13;
      v16 = [v2 length];
      v17 = swift_allocObject();
      *(v17 + 16) = sub_43834;
      *(v17 + 24) = v32;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_4383C;
      *(v18 + 24) = v17;
      v46 = sub_43838;
      v47 = v18;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_41E80;
      v45 = &unk_5F360;
      v19 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v19}];

      _Block_release(v19);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }
    }

    __chkstk_darwin(v13, v14);
    v33 = v2;
    v34 = 4;
    v35 = a1;
    v36 = v12;
    v20 = IMTextStyleAttributeNameFromStyle();
    if (v20)
    {
      v22 = v20;
      v23 = [v2 length];
      v24 = swift_allocObject();
      *(v24 + 16) = sub_43834;
      *(v24 + 24) = v32;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_4383C;
      *(v25 + 24) = v24;
      v46 = sub_43838;
      v47 = v25;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_41E80;
      v45 = &unk_5F2E8;
      v26 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v26}];

      _Block_release(v26);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
      }
    }

    __chkstk_darwin(v20, v21);
    v33 = v2;
    v34 = 8;
    v35 = a1;
    v36 = v12;
    result = IMTextStyleAttributeNameFromStyle();
    if (result)
    {
      v27 = result;
      v28 = [v2 length];
      v29 = swift_allocObject();
      *(v29 + 16) = sub_43834;
      *(v29 + 24) = v32;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_432C0;
      *(v30 + 24) = v29;
      v46 = sub_43838;
      v47 = v30;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_41E80;
      v45 = &unk_5F270;
      v31 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v27 inRange:0 options:v28 usingBlock:{0, v31}];

      _Block_release(v31);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_40CFC(void *a1)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  sub_40F54(*(v1 + 32), *(v1 + 16));
  sub_54A4(&qword_63C10, &qword_4CF60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_4CC00;
  v5 = NSAdaptiveImageGlyphAttributeName;
  *(v4 + 32) = NSAdaptiveImageGlyphAttributeName;
  v6 = qword_61D08;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_643A0;
  *(v4 + 40) = qword_643A0;
  v9 = qword_61D10;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_643A8;
  *(v4 + 48) = qword_643A8;
  v12 = qword_61D18;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_643B0;
  *(v4 + 56) = qword_643B0;
  v15 = qword_61D20;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_643B8;
  *(v4 + 64) = qword_643B8;
  type metadata accessor for Key(0);
  v18 = v17;
  v19 = sub_48534();

  v20 = [v3 __ck_attributedStringByRemovingAllAttributesExcept:v19];

  if (!v20)
  {
    v21 = [a1 string];
    if (!v21)
    {
      sub_48414();
      v21 = sub_483D4();
    }

    v20 = [objc_allocWithZone(NSAttributedString) initWithString:v21];

    v3 = v21;
  }

  return v20;
}

void sub_40F54(char a1, void *a2)
{
  v4 = [v2 length];
  *v44 = 0;
  v43 = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v44;
  *(v5 + 40) = &v44[1];
  *(v5 + 48) = &v43;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_424C0;
  *(v6 + 24) = v5;
  v41 = sub_424F0;
  v42 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F108;
  v7 = _Block_copy(&aBlock);
  v8 = v2;

  [v8 enumerateAttribute:NSFontAttributeName inRange:0 options:v4 usingBlock:{0, v7}];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_42530;
  *(v10 + 24) = v9;
  v41 = sub_43838;
  v42 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F180;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v12 enumerateAttribute:NSUnderlineStyleAttributeName inRange:0 options:v4 usingBlock:{0, v11}];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_425B4;
  *(v14 + 24) = v13;
  v41 = sub_43838;
  v42 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F1F8;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v16 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v4 usingBlock:{0, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = v44[1];
  v34 = v44[0];
  v35 = v43;
  v19 = [a2 fontDescriptor];
  v20 = [v19 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_432C8(&qword_61ED0, type metadata accessor for AttributeName);
  v21 = sub_48394();

  v22 = [a2 fontDescriptor];
  v23 = [v22 symbolicTraits];

  if (v18 == 1)
  {
    if (*(v21 + 16))
    {
      v24 = sub_6244(UIFontDescriptorTraitsAttribute);
      if (v25)
      {
        sub_606C(*(v21 + 56) + 32 * v24, &aBlock);
        sub_54A4(&qword_63E70, &qword_4CF68);
        if (swift_dynamicCast())
        {
          v40 = &type metadata for CGFloat;
          *&aBlock = UIFontWeightBold;
          sub_54EC(&aBlock, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_4302C(v37, UIFontWeightTrait, isUniquelyReferenced_nonNull_native, sub_6244, &qword_63E78, &unk_4CF70, type metadata accessor for TraitKey);
        }
      }
    }
  }

  else if (v34)
  {
    v23 &= ~2u;
  }

  if (v35)
  {
    v27 = v23 & 0xFFFFFFFE;
  }

  else
  {
    v27 = v23;
  }

  v28 = objc_allocWithZone(UIFontDescriptor);
  v29 = sub_48374();

  v30 = [v28 initWithFontAttributes:v29];

  v31 = [v30 fontDescriptorWithSymbolicTraits:v27];
  if (v31)
  {
    [a2 pointSize];
    v33 = [objc_opt_self() fontWithDescriptor:v31 size:v32];
  }

  else
  {
    v33 = a2;
  }

  [v16 removeAttribute:NSFontAttributeName range:{0, v4}];
  [v16 addAttribute:NSFontAttributeName value:v33 range:{0, v4}];
  [v16 removeAttribute:NSUnderlineStyleAttributeName range:{0, v4}];
  [v16 removeAttribute:NSStrikethroughStyleAttributeName range:{0, v4}];
}

uint64_t sub_416E4()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_41748(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v12 = [v5 attributesAtIndex:a2 longestEffectiveRange:0 inRange:{a2, a3}];
  type metadata accessor for Key(0);
  sub_432C8(&qword_61EE0, type metadata accessor for Key);
  v13 = sub_48394();

  if (!*(v13 + 16) || (v14 = sub_6244(NSFontAttributeName), (v15 & 1) == 0))
  {

LABEL_9:
    v16 = a4;
    if (a1 > 3)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 == 1)
    {
      v44 = [v16 fontDescriptor];
      v26 = [v44 fontAttributes];
      type metadata accessor for AttributeName(0);
      sub_432C8(&qword_61ED0, type metadata accessor for AttributeName);
      v27 = sub_48394();

      v28 = &UIFontWeightBold;
      if (a5)
      {
        v28 = &UIFontWeightHeavy;
      }

      v29 = *v28;
      v45 = a5;
      if (*(v27 + 16) && (v30 = sub_6244(UIFontDescriptorTraitsAttribute), (v31 & 1) != 0) && (sub_606C(*(v27 + 56) + 32 * v30, &v47), sub_54A4(&qword_63E70, &qword_4CF68), (swift_dynamicCast() & 1) != 0))
      {
        v48 = &type metadata for CGFloat;
        *&v47 = v29;
        sub_54EC(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_4302C(v46, UIFontWeightTrait, isUniquelyReferenced_nonNull_native, sub_6244, &qword_63E78, &unk_4CF70, type metadata accessor for TraitKey);
      }

      else
      {
        sub_54A4(&qword_63E90, &qword_4CF80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_4A9C0;
        *(inited + 32) = UIFontWeightTrait;
        *(inited + 40) = v29;
        v34 = UIFontWeightTrait;
        v35 = sub_5D80(inited);
        swift_setDeallocating();
        sub_60C8(inited + 32, &qword_63E98, &qword_4CF88);
        v48 = sub_54A4(&qword_63EA0, &qword_4CF90);
        *&v47 = v35;
        sub_54EC(&v47, v46);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_4302C(v46, UIFontDescriptorTraitsAttribute, v36, sub_6244, &qword_63EA8, &qword_4CF98, type metadata accessor for AttributeName);
      }

      v37 = objc_allocWithZone(UIFontDescriptor);
      v38 = sub_48374();
      v39 = [v37 initWithFontAttributes:v38];

      if ((v45 & 1) == 0)
      {
        v40 = [v39 ck_fontDescriptorBySettingBoldEnabled:1];

        v39 = v40;
      }

      v41 = v39;
      [v16 pointSize];
      v43 = [objc_opt_self() fontWithDescriptor:v41 size:v42];

      v23 = v43;
      [v6 addAttribute:NSFontAttributeName value:v23 range:{a2, a3}];

      goto LABEL_25;
    }

    if (a1 == 2)
    {
      v18 = [v16 fontDescriptor];
      v19 = [v18 ck_fontDescriptorByAddingSymbolicTrait:1];

      v20 = v19;
      [v16 pointSize];
      v22 = [objc_opt_self() fontWithDescriptor:v20 size:v21];

      v23 = v22;
      [v6 addAttribute:NSFontAttributeName value:v23 range:{a2, a3}];

      v16 = v20;
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  sub_606C(*(v13 + 56) + 32 * v14, &v47);

  sub_61D4(0, &qword_63E88, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = v46[0];
  if (a1 <= 3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 == 4)
  {
    v17 = &NSUnderlineStyleAttributeName;
    goto LABEL_14;
  }

  if (a1 == 8)
  {
    v17 = &NSStrikethroughStyleAttributeName;
LABEL_14:
    v24 = *v17;
    v25 = sub_485F4();
    [v6 addAttribute:v24 value:v25 range:{a2, a3}];
    v23 = v16;
    v16 = v25;
    goto LABEL_25;
  }

LABEL_26:
}

void sub_41DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  sub_43218(a1, v9);
  if (v10)
  {
    sub_61D4(0, &qword_63E80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      if ([v8 integerValue] == &dword_0 + 1)
      {
        a5(a2, a3);
      }
    }
  }

  else
  {
    sub_60C8(v9, &qword_62128, &qword_4AA80);
  }
}

uint64_t sub_41E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_54EC(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_60C8(v14, &qword_62128, &qword_4AA80);
}

void sub_41F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, BOOL *a7, _BYTE *a8, _BYTE *a9)
{
  sub_43218(a1, v24);
  if (!v25)
  {
    sub_60C8(v24, &qword_62128, &qword_4AA80);
    return;
  }

  sub_61D4(0, &qword_63E88, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v15 = [v23 fontDescriptor];
  v16 = v15;
  if ((a5 & 1) == 0)
  {
    v18 = [v15 symbolicTraits];

    if ((v18 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (qword_61D08 != -1)
    {
      swift_once();
    }

    v19 = qword_643A0;
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    [a6 addAttribute:v19 value:v20 range:{a2, a3}];

    *a7 = (a5 & 1) == 0;
    *a8 = a5 & 1;
    goto LABEL_11;
  }

  v17 = sub_422C4();

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ([v23 ck_hasItalicTrait])
  {
    if (qword_61D10 != -1)
    {
      swift_once();
    }

    v21 = qword_643A8;
    v22 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    [a6 addAttribute:v21 value:v22 range:{a2, a3}];

    *a9 = 1;
  }

  else
  {
  }
}

void sub_4217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t *a7)
{
  sub_43218(a1, v15);
  if (v16)
  {
    sub_61D4(0, &qword_63E80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      if ([v14 integerValue] == &dword_0 + 1)
      {
        if (*a6 != -1)
        {
          swift_once();
        }

        v12 = *a7;
        v13 = [objc_allocWithZone(NSNumber) initWithInteger:1];
        [a5 addAttribute:v12 value:v13 range:{a2, a3}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_60C8(v15, &qword_62128, &qword_4AA80);
  }
}

BOOL sub_422C4()
{
  v1 = [v0 fontAttributes];
  type metadata accessor for AttributeName(0);
  sub_432C8(&qword_61ED0, type metadata accessor for AttributeName);
  v2 = sub_48394();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_6244(UIFontDescriptorTraitsAttribute);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_606C(*(v2 + 56) + 32 * v3, v11);

  sub_54A4(&qword_63E70, &qword_4CF68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!v10[2] || (v5 = sub_6244(UIFontWeightTrait), (v6 & 1) == 0))
  {
LABEL_8:

    return 0;
  }

  sub_606C(v10[7] + 32 * v5, v11);

  sub_61D4(0, &qword_63E80, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    [v10 floatValue];
    v8 = v7;

    return UIFontWeightHeavy == v8;
  }

  return 0;
}