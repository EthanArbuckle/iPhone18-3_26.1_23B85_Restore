uint64_t sub_10037BEC4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = sub_1004DA90C();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  sub_100004CB8(a2);
  return a3(v4);
}

uint64_t sub_10037BF30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_1004DA74C();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1004DA43C();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_100004CB8(&qword_100642690);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = sub_100004CB8(&qword_100642698);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = sub_100004CB8(&qword_1006426A0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = sub_100004CB8(&qword_1006426A8);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = sub_100004CB8(&qword_1006426B0);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = sub_100004CB8(&qword_1006426B8);
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v64 - v20;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  v78 = v1;
  sub_10037EDA8(v1, v88);
  sub_100004CB8(&qword_1006426C0);
  sub_10037EDE0();
  sub_1004DBA3C();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = sub_100004CB8(&qword_100640118);
  sub_1004DB9EC();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_10037EFD8;
  v27[2] = v26;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v10, v14, &qword_100642698);
  v28 = &v14[*(v12 + 44)];
  v29 = v86;
  *(v28 + 4) = v85;
  *(v28 + 5) = v29;
  *(v28 + 6) = v87;
  v30 = v82;
  *v28 = v81;
  *(v28 + 1) = v30;
  v31 = v84;
  *(v28 + 2) = v83;
  *(v28 + 3) = v31;
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = sub_1004DB7FC();
  }

  else
  {
    v33 = sub_1004DB87C();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_100047F38(v14, v16, &qword_1006426A0);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (qword_10063DA08 != -1)
  {
    swift_once();
  }

  v38 = *&qword_100642380;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v16, v18, &qword_1006426A8);
  v39 = &v18[*(v69 + 36)];
  v40 = v88[5];
  *(v39 + 4) = v88[4];
  *(v39 + 5) = v40;
  *(v39 + 6) = v88[6];
  v41 = v88[1];
  *v39 = v88[0];
  *(v39 + 1) = v41;
  v42 = v88[3];
  *(v39 + 2) = v88[2];
  *(v39 + 3) = v42;
  sub_10037F0DC(&qword_1006426E0, &qword_1006426B0, &unk_10052F688, sub_10037EFF8);
  sub_1004DB61C();
  sub_10001074C(v18, &qword_1006426B0);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_1004DA88C();
  v47 = v75;
  (*(*(v46 - 8) + 104))(v75 + v44, v45, v46);
  *v47 = v43;
  v47[1] = v43;
  v48 = *(v2 + 56);
  v89 = v48;
  v90 = *(v2 + 64);
  if (v90 == 1)
  {
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_1004DDF8C();
    v49 = sub_1004DAECC();
    sub_1004D953C();

    v50 = v65;
    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10001074C(&v89, &qword_100642710);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  sub_1004DB9EC();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = sub_1004DB8CC();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = sub_1004DB85C();
  }

  else
  {
    v51 = sub_1004DB7FC();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_10037E148(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = sub_1004DBD1C();
  v58 = v57;
  v59 = sub_100004CB8(&qword_100642718);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_100047F38(v54, v61, &qword_100642690);
  v62 = (v61 + *(sub_100004CB8(&qword_100642720) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t sub_10037C83C(uint64_t a1)
{
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  return (*(a1 + 24))(a1);
}

uint64_t sub_10037C8A8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100642728);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = sub_100004CB8(&qword_1006426D8);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  sub_100004CB8(&qword_100640118);
  sub_1004DB9EC();
  if (v24 == 1)
  {
    sub_1004D9ECC();
    v8 = sub_1004DB87C();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    sub_1000108DC(v7, v4, &qword_1006426D8);
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100641F50);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50);
    sub_1004DAADC();
    return sub_10001074C(v7, &qword_1006426D8);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    sub_1002E6780();

    v13 = sub_1004DB34C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1004DBD1C();
    sub_1004DA45C();
    v24 = v17 & 1;
    *v4 = v13;
    *(v4 + 1) = v15;
    v4[16] = v17 & 1;
    *(v4 + 3) = v19;
    v20 = v23[5];
    *(v4 + 6) = v23[4];
    *(v4 + 7) = v20;
    *(v4 + 8) = v23[6];
    v21 = v23[1];
    *(v4 + 2) = v23[0];
    *(v4 + 3) = v21;
    v22 = v23[3];
    *(v4 + 4) = v23[2];
    *(v4 + 5) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100004CB8(&qword_100641F50);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50);
    return sub_1004DAADC();
  }
}

void sub_10037CBCC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_100642380 = *&v2;
}

void sub_10037CC84()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_100642388 = v1 == 6;
}

uint64_t sub_10037CCE8()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_100642388)
  {
    v0 = 140.0;
  }

  qword_100642390 = *&v0;
  return result;
}

uint64_t sub_10037CD60()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_100642388)
  {
    v0 = 16.0;
  }

  qword_100642398 = *&v0;
  return result;
}

uint64_t sub_10037CDC8()
{
  v0 = sub_1004DB0CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10063DA10 != -1)
  {
    swift_once();
  }

  if (byte_100642388 == 1)
  {
    result = sub_1004DAFFC();
    v5 = result;
  }

  else
  {
    sub_1004DB00C();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_1004DB0FC();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_1006423A0 = v5;
  return result;
}

uint64_t sub_10037CF24()
{
  v0 = sub_100004CB8(&qword_100641CB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_10063DA10 != -1)
  {
    swift_once();
  }

  v3 = sub_1004DB02C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1004DB07C();
  result = sub_10001074C(v2, &qword_100641CB0);
  qword_1006423A8 = v4;
  return result;
}

uint64_t sub_10037D060()
{
  if (qword_10063DA10 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_100642388)
  {
    v0 = 9.0;
  }

  qword_1006423B0 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_1004DCC9C();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v33 = v10;
  v31[1] = v11 + 56;
  v32(v9, 1, 1);
  v12 = [v2 artworkInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 responseDictionary];

    if (v14)
    {
      v15 = sub_1004DD21C();

      v16 = sub_10037262C(v15);

      if (v16)
      {
        sub_1004DCC1C();
        sub_10001074C(v9, &unk_100642930);
        sub_100047F38(v6, v9, &unk_100642930);
      }
    }
  }

  v17 = [v2 name];
  v18 = sub_1004DD43C();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1004DD43C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_1000108DC(v9, v6, &unk_100642930);
  v26 = [v2 collaborationAllowed];
  sub_10001074C(v9, &unk_100642930);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = sub_1003729EC(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t sub_10037D390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10037D3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA71C();
  *a1 = result;
  return result;
}

uint64_t sub_10037D454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_1004DCDAC();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100004CB8(&qword_1006423D0);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = sub_100004CB8(&qword_100642790);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = sub_1004D809C();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_100004CB8(&qword_100642798);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_10037F660(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  sub_10037F660(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    sub_10037F660(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = sub_100004CB8(&qword_1006423C8);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      sub_10001074C(v21, &qword_1006423D0);
LABEL_10:
      sub_10001074C(v24, &qword_100642798);
LABEL_11:
      v32 = 0;
      return v32 & 1;
    }

    LODWORD(v64) = v39;
    v41 = v26[v38];
    v42 = *(v67 + 32);
    v42(v69, &v21[v37], v35);
    v42(v68, &v26[v37], v35);
    v43 = *(v34 + 48);
    v44 = v65;
    sub_100047F38(v21, v65, &qword_1006423D0);
    sub_100047F38(v26, v44 + v43, &qword_1006423D0);
    v45 = v62;
    v46 = *(v61 + 48);
    if (v46(v44, 1, v62) == 1)
    {
      v47 = v46(v44 + v43, 1, v45);
      v48 = v67;
      v49 = v68;
      v50 = v69;
      if (v47 == 1)
      {
        sub_10001074C(v44, &qword_1006423D0);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      sub_1000108DC(v44, v60, &qword_1006423D0);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        sub_10037E148(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v51, v53);
        sub_10037E0C8(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10037E0C8(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10001074C(v44, &qword_1006423D0);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = sub_1004D801C();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            sub_10037E0C8(v24, type metadata accessor for Collaboration.Flow);
            v32 = v57 ^ 1;
            return v32 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v52 = *(v48 + 8);
        v52(v49, v35);
        v52(v50, v35);
LABEL_23:
        sub_10037E0C8(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_10037E0C8(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    sub_10001074C(v44, &qword_100642790);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10037E0C8(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  sub_10037F660(v24, v18, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v18, v65);
    goto LABEL_10;
  }

  v29 = v63;
  v28 = v64;
  v30 = v26;
  v31 = v65;
  (*(v64 + 32))(v63, v30, v65);
  v32 = sub_1004DCD2C();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  sub_10037E0C8(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100004CB8(&qword_100641D98);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_1004DF08C() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v25 = v7;
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v16 = *(v26 + 24);
  v17 = *(v11 + 48);
  sub_1000108DC(a1 + v16, v13, &unk_100642930);
  sub_1000108DC(a2 + v16, &v13[v17], &unk_100642930);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_10001074C(v13, &unk_100642930);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_1000108DC(v13, v10, &unk_100642930);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_10001074C(v13, &qword_100641D98);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_1003814E0(&qword_100641DA0, &type metadata accessor for Artwork);
  v23 = sub_1004DD35C();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  sub_10001074C(v13, &unk_100642930);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_10037E074()
{
  result = qword_1006423C0;
  if (!qword_1006423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006423C0);
  }

  return result;
}

uint64_t sub_10037E0C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10037E148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10037E1CC()
{
  sub_10037E240();
  if (v0 <= 0x3F)
  {
    sub_1004DCDAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10037E240()
{
  if (!qword_100642468)
  {
    sub_100008DE4(&qword_1006423D0);
    sub_1004D809C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100642468);
    }
  }
}

uint64_t sub_10037E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&unk_100642930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10037E3A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&unk_100642930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10037E458()
{
  sub_10037E8C0(319, &unk_100642500, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10037E510();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10037E510()
{
  if (!qword_1006416C0)
  {
    sub_1004DCC9C();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006416C0);
    }
  }
}

uint64_t sub_10037E57C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1004DD05C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10037E698(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1004DD05C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10037E79C()
{
  sub_10037E8C0(319, &unk_10063FED8, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      sub_1004DD05C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          sub_1003473D0();
          if (v4 <= 0x3F)
          {
            sub_100338374();
            if (v5 <= 0x3F)
            {
              sub_10037E910();
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

void sub_10037E8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10037E910()
{
  if (!qword_1006425A0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
    v0 = sub_1004D9E0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006425A0);
    }
  }
}

__n128 sub_10037E9F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10037EA18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10037EA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037EAD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10037EB98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10037EC5C()
{
  result = type metadata accessor for InlineProfileEditingView.Context();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10037ED44()
{

  sub_10036E0E0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10037EDE0()
{
  result = qword_1006426C8;
  if (!qword_1006426C8)
  {
    sub_100008DE4(&qword_1006426C0);
    sub_10037EE8C();
    sub_10037F5B0(&qword_100641F48, &qword_100641F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426C8);
  }

  return result;
}

unint64_t sub_10037EE8C()
{
  result = qword_1006426D0;
  if (!qword_1006426D0)
  {
    sub_100008DE4(&qword_1006426D8);
    sub_100042B08(&qword_100641B10, &qword_100641B18);
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426D0);
  }

  return result;
}

uint64_t sub_10037EF70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10037EFF8()
{
  result = qword_1006426E8;
  if (!qword_1006426E8)
  {
    sub_100008DE4(&qword_1006426A8);
    sub_10037F0DC(&qword_1006426F0, &qword_1006426A0, &unk_10052F678, sub_10037F160);
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426E8);
  }

  return result;
}

uint64_t sub_10037F0DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10037F160()
{
  result = qword_1006426F8;
  if (!qword_1006426F8)
  {
    sub_100008DE4(&qword_100642698);
    sub_100042B08(&qword_100642700, &qword_100642708);
    sub_100042B08(&qword_1006420B8, &qword_1006420C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006426F8);
  }

  return result;
}

uint64_t sub_10037F244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA71C();
  *a1 = result;
  return result;
}

uint64_t sub_10037F2AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

double sub_10037F3B0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_10037F3CC()
{
  result = qword_100642828;
  if (!qword_100642828)
  {
    sub_100008DE4(&qword_100642820);
    sub_10037F484();
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642828);
  }

  return result;
}

unint64_t sub_10037F484()
{
  result = qword_100642830;
  if (!qword_100642830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642830);
  }

  return result;
}

unint64_t sub_10037F4D8()
{
  result = qword_100642848;
  if (!qword_100642848)
  {
    sub_100008DE4(&qword_100642840);
    sub_10037F5B0(&qword_100642850, &qword_100642858);
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642848);
  }

  return result;
}

uint64_t sub_10037F5B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10037F620()
{

  return swift_deallocObject();
}

uint64_t sub_10037F660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037F724()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004DCDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100004CB8(&qword_1006423C8) + 48);
    v16 = sub_1004D809C();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10037F6CC();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10037FAB4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_10037AA10(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_10037FBAC()
{
  result = qword_100642870;
  if (!qword_100642870)
  {
    sub_100008DE4(&qword_1006427C0);
    sub_100042B08(&qword_100642878, &qword_1006427C8);
    sub_10037FC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642870);
  }

  return result;
}

unint64_t sub_10037FC64()
{
  result = qword_100642880;
  if (!qword_100642880)
  {
    sub_100008DE4(&qword_100642888);
    sub_10037FD1C();
    sub_100042B08(&qword_1006420B8, &qword_1006420C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642880);
  }

  return result;
}

unint64_t sub_10037FD1C()
{
  result = qword_100642890;
  if (!qword_100642890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642890);
  }

  return result;
}

uint64_t sub_10037FD70()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004DCDAC();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100004CB8(&qword_1006423C8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10037F6CC();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100380104(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100377C98(a1, v4);
}

uint64_t sub_10038017C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_1004DCDAC();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004DCC9C();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100004CB8(&qword_1006423C8) + 48);
    v10 = sub_1004D809C();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1004DD05C();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_10037F6CC();

  return swift_deallocObject();
}

uint64_t sub_100380468(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1003804DC()
{
  result = qword_1006428D8;
  if (!qword_1006428D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006428D8);
  }

  return result;
}

uint64_t sub_100380530()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035B28;

  return sub_100379BF0();
}

uint64_t sub_100380620(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10038064C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_1004DCDAC();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_1004DCC9C();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100004CB8(&qword_1006423C8) + 48);
    v11 = sub_1004D809C();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1004DD05C();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_10037F6CC();

  return swift_deallocObject();
}

uint64_t sub_100380910()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100377E78();
}

uint64_t sub_100380A00()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004DCDAC();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100004CB8(&qword_1006423C8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10037F6CC();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100380D50(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004D809C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_100379DA4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100380EA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004DCDAC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_10037ACC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100380FF4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004DCDAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004DCC9C();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100004CB8(&qword_1006423C8) + 48);
    v16 = sub_1004D809C();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004DD05C();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10037F6CC();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100381344(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004DCDAC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035C88;

  return sub_10037A668(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100381494()
{
  result = qword_1006428E0;
  if (!qword_1006428E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006428E0);
  }

  return result;
}

uint64_t sub_1003814E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100381598()
{
  result = qword_1006428F8;
  if (!qword_1006428F8)
  {
    sub_100008DE4(&qword_100642718);
    sub_100008DE4(&qword_1006426B0);
    sub_10037F0DC(&qword_1006426E0, &qword_1006426B0, &unk_10052F688, sub_10037EFF8);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_100642900, &qword_100642720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006428F8);
  }

  return result;
}

unint64_t sub_100381708()
{
  result = qword_100642918;
  if (!qword_100642918)
  {
    sub_100008DE4(&qword_100642920);
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642918);
  }

  return result;
}

unint64_t sub_1003817C4()
{
  result = qword_100642928;
  if (!qword_100642928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642928);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_10038733C(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000108DC(a1, &v9 - v6, &unk_100642930);
  sub_1000108DC(v7, v4, &unk_100642930);
  sub_1004D9B2C();
  sub_10001074C(a1, &unk_100642930);
  return sub_10001074C(v7, &unk_100642930);
}

uint64_t sub_1003819D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_100381A9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_100381B10(void *a1)
{
  v3 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  sub_1004D9B7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = sub_1004DCC9C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000108DC(v8, v5, &unk_100642930);

    sub_1004D9B7C();

    sub_10001074C(v8, &unk_100642930);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100004CB8(&qword_100642940);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = sub_100004CB8(&qword_100642948);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = sub_100004CB8(&qword_100642950);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = sub_1004DCC9C();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  sub_1000108DC(v17, v14, &unk_100642930);
  v71 = v14;
  sub_1004D9B2C();
  v20 = v17;
  sub_10001074C(v17, &unk_100642930);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_1004D9B2C();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  sub_100004CB8(&qword_10063E4C0);
  v24 = v77;
  sub_1004D9B2C();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = sub_1004DD43C();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    sub_1004D9B7C();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = sub_1004DD21C();

        v37 = sub_10037262C(v36);

        if (v37)
        {
          sub_1004DCC1C();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000108DC(v20, v71, &unk_100642930);

          sub_1004D9B7C();
          sub_10001074C(v20, &unk_100642930);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v39 = v83;
  v38 = v84;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v80;
  v41 = v81;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v73;
    sub_1004D9B6C();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      sub_10001074C(v43, &unk_100642930);
      return v21;
    }

    sub_10001074C(v43, &unk_100642930);
  }

  sub_100004CB8(&qword_100642970);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100511AB0;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  sub_1004DD84C();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  v48 = [objc_allocWithZone(CNContactStore) init];
  sub_100004CB8(&qword_100642978);
  isa = sub_1004DD85C().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    sub_1004D7F4C();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  sub_1004D9B6C();

  v54 = v83;
  v53 = v84;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v56 = [v45 stringFromContact:v50 style:0];
    if (v56)
    {
      v57 = v56;
      v58 = sub_1004DD43C();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      sub_1004D9B7C();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  sub_1004D9B6C();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  sub_10001074C(v43, &unk_100642930);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = sub_1004D810C();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    sub_100010530(v63, v65);
    v67 = sub_1004D80FC().super.isa;
    v68 = [v66 initWithData:v67];

    sub_100010598(v63, v65);
    sub_100381B10(v68);

    sub_100010598(v63, v65);
  }

  else
  {
  }

  return v21;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100382A24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v5 = sub_1004DCC9C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_10001074C(v3, &unk_100642930);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100004CB8(&qword_100642950);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100004CB8(&qword_100642948);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100004CB8(&qword_100642940);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100004CB8(&qword_100642950);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100004CB8(&qword_100642948);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100004CB8(&qword_100642940);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_100382E70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  sub_1003874DC();

  return sub_1004DA13C();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_1004D83FC();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DD3EC();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = sub_100004CB8(&qword_100642988);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = sub_100004CB8(&qword_100642990);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = sub_100004CB8(&qword_100642998);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = sub_100004CB8(&qword_1006429A0);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = sub_100004CB8(&qword_1006429A8);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = sub_100004CB8(&qword_1006429B0);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = sub_1004DA7CC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = sub_100004CB8(&qword_1006429B8);
  sub_100383894(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = sub_1004DB8CC();
  v29 = sub_1004DAF2C();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v12, v16, &qword_100642988);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v16, v20, &qword_100642990);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(sub_1004DA43C() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_1004DA88C();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(sub_100004CB8(&unk_1006429C0) + 36)] = 256;
  sub_100047F38(v20, v40, &qword_100642998);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  v72[1] = v72;
  v88 = v50;
  sub_100004CB8(&qword_1006429D0);
  sub_10038753C();
  v51 = sub_1002E6780();
  sub_100042B08(&qword_100642A08, &qword_1006429D0);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  sub_1004DB57C();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  sub_10001074C(v53, &qword_1006429A0);
  v58 = sub_1004DBD1C();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  sub_100386178(v55, v62);
  v63 = (v62 + *(sub_100004CB8(&qword_100642A10) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  sub_1004DD37C();
  (*(v57 + 16))(v56, v54, v64);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v65 = qword_1006734A0;
  sub_1004D838C();
  v66 = sub_1004DD4AC();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = sub_1004DBA0C();
  v85 = v72;
  __chkstk_darwin(v69);
  sub_100004CB8(&qword_100642A18);
  sub_1003877C0();
  sub_100042B08(&qword_100642A30, &qword_100642A18);
  v70 = v87;
  sub_1004DB65C();

  return sub_10001074C(v70, &qword_1006429B0);
}

uint64_t sub_100383894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = sub_100004CB8(&qword_100642C38);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = sub_100004CB8(&unk_100642C40);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = sub_1004D83FC();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1004DD3EC();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = sub_100004CB8(&qword_100641A00);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = sub_100004CB8(&qword_100642C50);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = sub_100004CB8(&qword_100642C58);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = sub_1004DB8FC();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100004CB8(&unk_100642C60);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = sub_1004DCC0C();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004D934C();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = sub_1004D92BC();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = sub_100004CB8(&qword_100642C78);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = sub_100004CB8(&unk_100642C80);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = sub_100004CB8(&qword_1006427A8);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = sub_100004CB8(&qword_100642C90);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = sub_100004CB8(&qword_100642C98);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    sub_1004DB8DC();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = sub_1004DB94C();

    (*(v67 + 8))(v68, v69);
    sub_1004DBD1C();
    sub_1004D9F5C();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = sub_1004DAF2C();
    sub_1004D9C8C();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v265, v263, &qword_100642CA8);
    sub_100004CB8(&qword_100642CA8);
    sub_100387DD4();
    sub_100387FC0();
    v85 = v241;
    sub_1004DAADC();

    sub_10001074C(&v265, &qword_100642CA8);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  sub_1004D9B6C();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = sub_1004DCC9C();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    sub_10001074C(v88, &qword_100641A60);
    sub_10001074C(v87, &unk_100642930);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(v88, v93 + *(v92 + 20), &qword_100641A60);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  sub_1000108DC(v93, v215, &qword_100642C70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    sub_10001074C(v96, &qword_100642C70);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    sub_10038824C(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  sub_1000108DC(v99, v100, &unk_100642930);
  sub_1004D933C();
  sub_10001074C(v99, &unk_100642930);
  sub_1004D92EC();
  v102 = v218;
  sub_1000108DC(v257, v218, &qword_100642C70);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    sub_10001074C(v102, &qword_100642C70);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = sub_100035430(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      sub_10001074C(v113, &qword_100641A60);
    }

    goto LABEL_17;
  }

  v105 = v219;
  sub_1000108DC(v102 + *(v92 + 20), v219, &qword_100641A60);
  sub_10038824C(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  sub_1004D92CC();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  sub_1004D92FC();
  v119(v117, v104);
  sub_1003386E4();
  v121 = v220;
  sub_1004D92DC();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  sub_10001074C(v257, &qword_100642C70);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  sub_100047F38(v122, v230, &unk_100642C80);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = sub_1004DAF2C();
  sub_1004D9C8C();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  sub_100047F38(v125, v211, &qword_1006427A8);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  sub_100047F38(v134, v231, &qword_100642C90);
  sub_1000108DC(v136, v240, &qword_100642C90);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100642CA8);
  sub_100387DD4();
  sub_100387FC0();
  v85 = v241;
  sub_1004DAADC();
  sub_10001074C(v136, &qword_100642C90);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &static AccessibilityIdentifier.artistFavorite;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v140 = String.trim()();

    v265 = v140;
    sub_1002E6780();
    v141 = sub_1004DB34C();
    v143 = v142;
    v145 = v144;
    v146 = sub_1004DB29C();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    sub_100051E10(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &static AccessibilityIdentifier.artistFavorite;
    swift_storeEnumTagMultiPayload();
    sub_10036D6E0();
    sub_1004DAADC();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    sub_1004DD37C();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v159 = qword_1006734A0;
    sub_1004D838C();
    v160 = sub_1004DD4AC();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    sub_10037F300(v164, &v265);
    sub_1002E6780();
    v167 = v228;
    sub_1004DBA6C();
    v168 = sub_1004DB8AC();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    sub_1000108DC(v167, v170, &qword_100641A00);
    swift_storeEnumTagMultiPayload();
    sub_10036D6E0();
    sub_1004DAADC();
    sub_10001074C(v167, &qword_100641A00);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    sub_1004DD37C();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v176 = v139[148];
    sub_1004D838C();
    v177 = sub_1004DD4AC();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    sub_10037F300(v181, &v265);
    sub_1002E6780();
    v184 = v232;
    sub_1004DBA6C();
    LOBYTE(v180) = sub_1004DAF7C();
    sub_1004D9C8C();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(sub_100004CB8(&qword_100642D20) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(sub_100004CB8(&qword_100642D28) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    sub_100047F38(v184, v196, &qword_100642C38);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  sub_1000108DC(v85, v243, &qword_100642C98);
  v201 = v261;
  v202 = v250;
  sub_1000108DC(v261, v250, &qword_100642C58);
  v203 = v254;
  sub_1000108DC(v196, v254, &unk_100642C40);
  v204 = v255;
  sub_1000108DC(v199, v255, &qword_100642C98);
  v205 = sub_100004CB8(&unk_100642D30);
  sub_1000108DC(v202, v204 + v205[12], &qword_100642C58);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  sub_1000108DC(v203, v204 + v205[20], &unk_100642C40);
  sub_10001074C(v196, &unk_100642C40);
  sub_10001074C(v201, &qword_100642C58);
  sub_10001074C(v200, &qword_100642C98);
  sub_10001074C(v203, &unk_100642C40);
  sub_10001074C(v202, &qword_100642C58);
  return sub_10001074C(v199, &qword_100642C98);
}

uint64_t sub_1003854E8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_100004CB8(&qword_100642C28);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = sub_1004D83FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1004DD3EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = sub_100004CB8(&unk_100641A10);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  sub_1004DD37C();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v26 = qword_1006734A0;
  v27 = qword_1006734A0;
  sub_1004D838C();
  v92 = v27;
  v28 = sub_1004DD4AC();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  sub_10037F300(a1, v102);
  v37 = sub_1002E6780();
  sub_1004DBA6C();
  sub_1004DD37C();
  v98(v93, v14, v32);
  sub_1004D838C();
  v88 = v26;
  v38 = v31;
  v39 = sub_1004DD4AC();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  sub_10037F300(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  sub_1004DBA6C();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == 6)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      sub_1004DD37C();
      v49(v46, v14, v50);
      v53 = v48;
      sub_1004D838C();
      v54 = sub_1004DD4AC();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      sub_10037F300(a1, v102);
      v60 = v89;
      sub_1004DBA6C();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  sub_1004DD37C();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  sub_1004D838C();
  v65 = sub_1004DD4AC();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  sub_10037F300(a1, v102);
  v71 = v89;
  sub_1004DBA6C();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  sub_1000108DC(v101, v85, &qword_100642C28);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = sub_100004CB8(&qword_100642C30);
  v72(&v77[v78[12]], v74, v62);
  sub_1000108DC(v75, &v77[v78[16]], &qword_100642C28);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  sub_10001074C(v101, &qword_100642C28);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  sub_10001074C(v75, &qword_100642C28);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t sub_100385F64()
{
  sub_100004CB8(&unk_100642C10);
  sub_1004DB9FC();
  sub_100004CB8(&qword_100640118);
  return sub_1004DB9FC();
}

uint64_t sub_100385FF0(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  sub_100381B10(0);
  v9 = sub_1004DCC9C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(v7, v4, &unk_100642930);

  sub_1004D9B7C();
  sub_10001074C(v7, &unk_100642930);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t sub_100386178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  sub_1003874DC();
  sub_1004DA14C();
  swift_getKeyPath();
  sub_1004DA15C();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  sub_100004CB8(&unk_100642C10);
  sub_1004DBA0C();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_1004DBD1C();
  sub_1004D9F5C();
  v19 = v25;
  sub_100387CEC(v5, v25);
  v20 = (v19 + *(sub_100004CB8(&qword_100642C20) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_10038824C(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_100386418@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_100386498@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_100004CB8(&unk_100642BE0);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = sub_100004CB8(&unk_100641A10);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = sub_100004CB8(&qword_100642BF0);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = sub_1004D83FC();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004DD3EC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = sub_100004CB8(&qword_100642BF8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  sub_1004D9B6C();

  v82 = v103;
  v81 = v104;
  sub_1004DD37C();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v31 = qword_1006734A0;
  v32 = qword_1006734A0;
  v76 = v18;
  sub_1004D838C();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = sub_1004DD4AC();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_1003874DC();
  sub_1004DA14C();
  swift_getKeyPath();
  sub_1004DA15C();

  v105 = v34;
  v106 = v36;
  v80 = sub_1002E6780();
  sub_1004DBDEC();
  sub_1004DD37C();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  sub_1004D838C();
  v38 = sub_1004DD4AC();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  sub_1004DBA6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = sub_100370B8C;
  v49[2] = v46;
  v50 = v97;
  sub_100047F38(v48, v97, &qword_100642BF0);
  sub_1004DD37C();
  v51 = v78;
  v94(v37, v25, v78);
  sub_1004D838C();
  v52 = sub_1004DD4AC();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  sub_1004D9C6C();
  v56 = sub_1004D9C7C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  sub_10037F300(v58, &v103);
  v62 = v99;
  sub_1004DBA5C();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  sub_1000108DC(v50, v98, &qword_100642BF0);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = sub_100004CB8(&qword_100642C00);
  v72 = v98;
  sub_1000108DC(v98, &v70[*(v71 + 48)], &qword_100642BF0);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  sub_10001074C(v97, &qword_100642BF0);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  sub_10001074C(v72, &qword_100642BF0);
  return (v74)(v96, v66);
}

uint64_t sub_100386FA4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100387024()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_1003870A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_1000108DC(&v7, v6, &qword_100642C08);

  return sub_1004D9B7C();
}

uint64_t sub_100387190()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();
}

uint64_t sub_10038720C(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000108DC(a1, &v9 - v6, &unk_100642930);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000108DC(v7, v4, &unk_100642930);

  sub_1004D9B7C();
  return sub_10001074C(v7, &unk_100642930);
}

uint64_t sub_10038733C@<X0>(uint64_t a1@<X8>)
{
  sub_1004DB9DC();
  sub_1004DB9DC();
  sub_1004DB9DC();
  sub_1004DB9DC();
  type metadata accessor for InlineProfileEditingView.Context();
  sub_1003874DC();
  result = sub_1004DA13C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_100387460(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100381B10(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = qword_100642A60;
  if (!qword_100642A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003874DC()
{
  result = qword_100642980;
  if (!qword_100642980)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642980);
  }

  return result;
}

unint64_t sub_10038753C()
{
  result = qword_1006429D8;
  if (!qword_1006429D8)
  {
    sub_100008DE4(&qword_1006429A0);
    sub_100387650(&qword_1006429E0, &qword_100642998, &unk_10052FBE8, sub_100387620);
    sub_100042B08(&qword_10063F5A8, &unk_1006429C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006429D8);
  }

  return result;
}

uint64_t sub_100387650(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003876D4()
{
  result = qword_1006429F0;
  if (!qword_1006429F0)
  {
    sub_100008DE4(&qword_100642988);
    sub_100042B08(&qword_1006429F8, &qword_100642A00);
    sub_100042B08(&qword_1006421E8, &qword_1006421F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006429F0);
  }

  return result;
}

unint64_t sub_1003877C0()
{
  result = qword_100642A20;
  if (!qword_100642A20)
  {
    sub_100008DE4(&qword_1006429B0);
    sub_100008DE4(&qword_1006429A0);
    sub_100008DE4(&qword_1006429D0);
    sub_10038753C();
    sub_1002E6780();
    sub_100042B08(&qword_100642A08, &qword_1006429D0);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&qword_100642A28, &qword_100642A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642A20);
  }

  return result;
}

uint64_t sub_10038794C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100387994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100387A00()
{
  sub_100236040(319, &qword_100642A70, &unk_100642930);
  if (v0 <= 0x3F)
  {
    sub_100387B3C();
    if (v1 <= 0x3F)
    {
      sub_100236040(319, &unk_100642A80, &qword_10063E4C0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100387B3C()
{
  if (!qword_100642A78)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100642A78);
    }
  }
}

uint64_t sub_100387B8C()
{
  sub_100008DE4(&qword_1006429B0);
  sub_100008DE4(&qword_100642A18);
  sub_1003877C0();
  sub_1002E6780();
  sub_100042B08(&qword_100642A30, &qword_100642A18);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100387C7C()
{

  return swift_deallocObject();
}

uint64_t sub_100387CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100387D9C()
{

  return swift_deallocObject();
}

unint64_t sub_100387DD4()
{
  result = qword_100642CB0;
  if (!qword_100642CB0)
  {
    sub_100008DE4(&qword_100642CA8);
    sub_100387E8C(&qword_100642CB8, &qword_100642CC0, &unk_10052FE58, sub_100387F3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CB0);
  }

  return result;
}

uint64_t sub_100387E8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    a4();
    sub_100042B08(&unk_100642340, &qword_100642CE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100387F3C()
{
  result = qword_100642CC8;
  if (!qword_100642CC8)
  {
    sub_100008DE4(&unk_100642CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CC8);
  }

  return result;
}

unint64_t sub_100387FC0()
{
  result = qword_100642CE8;
  if (!qword_100642CE8)
  {
    sub_100008DE4(&qword_100642C90);
    sub_100387E8C(&qword_100642CF0, &qword_1006427A8, &unk_10052F888, sub_100388078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CE8);
  }

  return result;
}

unint64_t sub_100388078()
{
  result = qword_100642CF8;
  if (!qword_100642CF8)
  {
    sub_100008DE4(&unk_100642C80);
    sub_1003386E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642CF8);
  }

  return result;
}

uint64_t sub_100388190()
{

  return swift_deallocObject();
}

uint64_t sub_10038824C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_100008DE4(&qword_100642D40);
  v33 = a1 + 5;
  v3 = a1[2];
  sub_1004DA32C();
  sub_1004DA32C();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = sub_1004DBA7C();
  v43 = sub_1004DA3FC();
  v44 = swift_getWitnessTable();
  v45 = sub_100388920();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  v26[3] = swift_getWitnessTable();
  v26[0] = sub_1004D9F4C();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = sub_1004DA32C();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = sub_1004DA46C();
  v9 = sub_1004DA32C();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  sub_1004DB68C();
  sub_1004DAEFC();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  sub_1004D9F3C();
  sub_1004DBD1C();
  v19 = sub_1003896F4();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  sub_1004DB6CC();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_100339DC8(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  sub_100339DC8(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t sub_100388920()
{
  result = qword_100642D48;
  if (!qword_100642D48)
  {
    sub_1004DA3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642D48);
  }

  return result;
}

uint64_t sub_100388978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = sub_1004DA3FC();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  v10 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = sub_1004DBA7C();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = sub_100388920();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  sub_100008DE4(&qword_100642D40);
  v51 = a2;
  v17 = sub_1004DA32C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = sub_1004DA32C();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  sub_1004DB75C();
  v27 = sub_100389F10();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  sub_1004DB74C();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  sub_100339DC8(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  sub_1004DBA3C();
  v35 = v72;
  sub_1004DA3EC();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  sub_1004DB3DC();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  sub_100339DC8(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_10039B8E8(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t sub_1003891A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v6 = sub_1004DBB4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_1004DA32C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1004DA92C();
  sub_1004DA79C();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  sub_1004DBB3C();
  WitnessTable = swift_getWitnessTable();
  sub_1004DB4EC();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  sub_100339DC8(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_100339DC8(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_10038947C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_100339DC8(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  sub_100339DC8(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_10039B8E8(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t sub_1003896F4()
{
  result = qword_100642D50[0];
  if (!qword_100642D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100642D50);
  }

  return result;
}

unint64_t sub_100389798()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_100338374();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10038983C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_100389A0C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_100389C70()
{
  sub_1004DA32C();
  sub_100008DE4(&qword_100642D40);
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DBA7C();
  sub_1004DA3FC();
  swift_getWitnessTable();
  sub_100388920();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004D9F4C();
  swift_getWitnessTable();
  sub_1004DA46C();
  sub_1004DA32C();
  sub_1003896F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100389F10()
{
  result = qword_100642DD8;
  if (!qword_100642DD8)
  {
    sub_100008DE4(&qword_100642D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642DD8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DC50);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = qword_100642E98;
  if (!qword_100642E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_1004DB31C();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DA74C();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100642758);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_100004CB8(&qword_100642DE0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  sub_1004DA84C();
  v10 = sub_1004DB32C();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100004CB8(&qword_100642760) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_1004DB28C();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  sub_1004DB06C();
  sub_10038AC60();
  sub_1004DB3AC();
  sub_10001074C(v7, &qword_100642758);
  v24 = sub_1004DB10C();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100004CB8(&qword_100642DF8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    sub_10038ADC8(v31, 0);
    sub_1004DDF8C();
    v32 = sub_1004DAECC();
    sub_1004D953C();

    v33 = v70;
    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10036E0E0(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  sub_1004DB30C();
  sub_10038ADD4();
  v35 = v81;
  sub_1004DB78C();
  (*(v79 + 8))(v34, v80);
  sub_10038AF80(v23);
  v36 = sub_1004DAF5C();
  sub_1004D9C8C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_100004CB8(&qword_100642E10) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = sub_1004DAF3C();
  sub_1004D9C8C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(sub_100004CB8(&qword_100642E18) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = sub_1004DA7CC();
  v90 = 0;
  sub_10038A79C(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  sub_1000108DC(&v91, &v82, &qword_100642E20);
  sub_10001074C(v97, &qword_100642E20);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(sub_100004CB8(&qword_100642E28) + 36);
  v59 = *(sub_100004CB8(&qword_100642E30) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = sub_1004DBDAC();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = sub_1004DBD1C();
  v67 = v66;
  result = sub_100004CB8(&qword_100642E38);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t sub_10038A79C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DA30C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  sub_10032A4CC(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = sub_1004DA2FC();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  sub_100004CB8(&qword_10063F1F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1005126C0;
  if (v9)
  {
    *(v11 + 32) = sub_1004DB84C();
    v12 = sub_1004DB85C();
  }

  else
  {
    *(v11 + 32) = sub_1004DB85C();
    v12 = sub_1004DB84C();
  }

  *(v11 + 40) = v12;
  sub_1004DBCBC();
  sub_1004DBE8C();
  sub_1004DBE9C();
  sub_1004DA12C();
  sub_1004DBD1C();
  sub_1004D9F5C();
  v13 = sub_1004DB84C();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_1000108DC(v20, v22, &qword_10063F6B0);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_10001074C(v22, &qword_10063F6B0);
}

uint64_t sub_10038AA58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA66C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10038AA88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA66C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10038AABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA67C();
  *a1 = result;
  return result;
}

uint64_t sub_10038AB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA57C();
  *a1 = result;
  return result;
}

uint64_t sub_10038ABB4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100642EF8);
  __chkstk_darwin(v2 - 8);
  sub_1000108DC(a1, &v5 - v3, &qword_100642EF8);
  return sub_1004DA6CC();
}

unint64_t sub_10038AC60()
{
  result = qword_100642DE8;
  if (!qword_100642DE8)
  {
    sub_100008DE4(&qword_100642758);
    sub_100042B08(&qword_100642DF0, &qword_100642760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642DE8);
  }

  return result;
}

uint64_t sub_10038AD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA67C();
  *a1 = result;
  return result;
}

uint64_t sub_10038AD70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA57C();
  *a1 = result;
  return result;
}

uint64_t sub_10038ADC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10038ADD4()
{
  result = qword_100642E00;
  if (!qword_100642E00)
  {
    sub_100008DE4(&qword_100642DE0);
    sub_10038AE8C();
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642E00);
  }

  return result;
}

unint64_t sub_10038AE8C()
{
  result = qword_100642E08;
  if (!qword_100642E08)
  {
    sub_100008DE4(&qword_100642DF8);
    sub_100008DE4(&qword_100642758);
    sub_10038AC60();
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642E08);
  }

  return result;
}

uint64_t sub_10038AF80(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100642DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038B018(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_10063FF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10038B0E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_10063FF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10038B198()
{
  sub_10038B22C();
  if (v0 <= 0x3F)
  {
    sub_10038B284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10038B22C()
{
  if (!qword_10063FFB0)
  {
    sub_1004DA30C();
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063FFB0);
    }
  }
}

void sub_10038B284()
{
  if (!qword_100641940)
  {
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100641940);
    }
  }
}

unint64_t sub_10038B2D8()
{
  result = qword_100642ED8;
  if (!qword_100642ED8)
  {
    sub_100008DE4(&qword_100642E28);
    sub_10038B390();
    sub_100042B08(&qword_100642EF0, &qword_100642E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642ED8);
  }

  return result;
}

unint64_t sub_10038B390()
{
  result = qword_100642EE0;
  if (!qword_100642EE0)
  {
    sub_100008DE4(&qword_100642E18);
    sub_10038B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642EE0);
  }

  return result;
}

unint64_t sub_10038B41C()
{
  result = qword_100642EE8;
  if (!qword_100642EE8)
  {
    sub_100008DE4(&qword_100642E10);
    sub_100008DE4(&qword_100642DE0);
    sub_10038ADD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642EE8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_10038B570(&v14, &v13);
  sub_10038B5A8(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_10038B5D8(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_100313320(v4);
    sub_100006F10(0, &qword_100640D40);
    v5.super.isa = sub_1004DD85C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_100006F10(0, &qword_100641C88);
    isa = sub_1004DD85C().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_1004DED5C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_1004DD85C().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_1003E10F0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004DEB2C();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003E10F0((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_100006F5C(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10038B570(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_10038B570(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v10);

  sub_10038B5A8(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_10038B570(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_10038B570(v19, v18);
  sub_10038B570(a1, v18);
  sub_10038B5A8(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_10038B570(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_10038B5A8(v18);
  if (v10)
  {
    sub_10038B5A8(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_10038B570(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_10038B5D8(v14);
    sub_10038B5A8(v19);
    sub_10038B5A8(a1);

    a1 = v17;
  }

  return sub_10038B5A8(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10038B570(v4, (v4 + 16));
  return sub_10038BDF4;
}

void sub_10038BDF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_10038B570((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_10038B5A8((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

id sub_10038BF1C(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_10038B570(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(v15);
  return v9;
}

uint64_t sub_10038C018@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_10038B570(v9, v8);
}

uint64_t sub_10038C084(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_10038C0B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10038B570(v4, (v4 + 16));
  return sub_10038BDF4;
}

uint64_t sub_10038C174@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_10038CB6C();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_10038B570(v10, v9);
}

uint64_t sub_10038C218(uint64_t a1)
{
  sub_100035868(a1, v7);
  sub_100004CB8(&qword_10063E480);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return sub_100008D24(a1);
}

void (*sub_10038C2AC(void *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_10038CB6C();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_10038B570(v4, v4 + 192);
  return sub_10038C398;
}

void sub_10038C398(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100035868((v2 + 16), v2 + 296);
    sub_100035868(v2 + 296, (v2 + 21));
    sub_100004CB8(&qword_10063E480);
    swift_dynamicCast();
    v3 = v2[13];
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    Gradient.View.typedConfiguration.setter(v2 + 4);
    sub_100008D24(v2 + 296);
  }

  else
  {
    sub_100035868((v2 + 16), v2 + 296);
    sub_100004CB8(&qword_10063E480);
    swift_dynamicCast();
    v5 = v2[13];
    v2[8] = v2[12];
    v2[9] = v5;
    v6 = v2[15];
    v2[10] = v2[14];
    v2[11] = v6;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  sub_100008D24((v2 + 16));

  free(v2);
}

id sub_10038C4A4()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10038B570(&v15, v14);
  sub_10038B570(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10038B5D8(v11);

  sub_10038B5A8(&v15);
  sub_10038CAA8(&qword_100642F58);
  return v9;
}

uint64_t sub_10038C5D0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_10038B570(v7, &v6);
}

BOOL sub_10038C610(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100527270;
  v13 = xmmword_100527130;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_100527280;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_10038B570(&v10, &v9);
  sub_10038B5A8(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100527280;
  v13 = xmmword_100527290;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_100527280;
  v16 = xmmword_100527290;

  v5 = kCAGradientLayerAxial;

  sub_10038B570(&v10, &v9);
  sub_10038B5A8(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_10038B570(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DD43C();
  v6 = v5;
  if (v4 == sub_1004DD43C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004DF08C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_10034BADC(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || (sub_10034BAF0(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_10034BB4C(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

unint64_t sub_10038C9B8()
{
  result = qword_100642F10;
  if (!qword_100642F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F10);
  }

  return result;
}

uint64_t sub_10038CA0C(uint64_t a1)
{
  result = sub_10038CAA8(&qword_100642F58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10038CAA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038CAE8(uint64_t a1)
{
  *(a1 + 8) = sub_10038CB18();
  result = sub_10038CB6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10038CB18()
{
  result = qword_100642F90;
  if (!qword_100642F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F90);
  }

  return result;
}

unint64_t sub_10038CB6C()
{
  result = qword_100642F98;
  if (!qword_100642F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642F98);
  }

  return result;
}

uint64_t sub_10038CBD0()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10034B1DC(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10038CC88(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_10034B1DC(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_100047F38(a3, a5 + *(v8 + 20), &qword_100642C70);
  return sub_10038FF04(a4, a5 + *(v8 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

uint64_t static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v73 = a1;
  v79 = a8;
  v67 = *a7;
  v10 = *(a7 + 8);
  v11 = *(a7 + 16);
  v65 = a5;
  v66 = v11;
  v62 = *(a7 + 24);
  v63 = v10;
  v82 = *(a7 + 32);
  v61 = *(a7 + 40);
  v64 = *(a7 + 41);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1004D92BC();
  v68 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004CB8(&unk_100641D80);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin(v18);
  v69 = &v60 - v19;
  v20 = sub_100004CB8(&qword_100642FC8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v74 = sub_100004CB8(&qword_100642FD0);
  __chkstk_darwin(v74);
  v78 = &v60 - v24;
  v77 = sub_100004CB8(&qword_100642FD8);
  v25 = __chkstk_darwin(v77);
  v76 = &v60 - v26;
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14, v25);
  v27 = a6;
  v28 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038FE9C(v27, v28, type metadata accessor for ArtworkImage.Placeholder);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10038FF04(v28, v31 + v29, type metadata accessor for ArtworkImage.Placeholder);
  v32 = (v31 + v30);
  v33 = *(a7 + 16);
  *v32 = *a7;
  v32[1] = v33;
  *(v32 + 26) = *(a7 + 26);
  v34 = v69;
  sub_10032B920(v73, sub_10036DB7C, v31, a7, v17, v69);

  (*(v15 + 8))(v17, v68);
  v35 = v75;
  if (v75)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  (*(v71 + 32))(v23, v34, v72);
  *&v23[*(v21 + 44)] = v36;
  v37 = sub_1004DBD1C();
  v39 = v35;
  if (v35)
  {
    LOBYTE(v90[0]) = v63 & 1;
    LOBYTE(v84) = v62 & 1;
    v83[0] = v61 & 1;
    v40 = v63 & 1;
    v41 = v62 & 1;
    v42 = v61 & 1 | (v64 << 8);
    v43 = v66;
    v35 = v65 & 1;
    v44 = v80;
    v45 = v81;
    v46 = v67;
    v47 = v82;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v47 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  v82 = v47;
  LODWORD(v71) = v42;
  *&v84 = v39;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v35;
  *&v86 = v46;
  *(&v86 + 1) = v40;
  *&v87 = v43;
  *(&v87 + 1) = v41;
  *&v88 = v47;
  WORD4(v88) = v42;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  v72 = v38;
  v73 = v37;
  v48 = v23;
  v49 = v78;
  v50 = v46;
  sub_100047F38(v48, v78, &qword_100642FC8);
  v51 = (v49 + *(v74 + 36));
  v52 = v87;
  v51[2] = v86;
  v51[3] = v52;
  v53 = v89;
  v51[4] = v88;
  v51[5] = v53;
  v54 = v85;
  *v51 = v84;
  v51[1] = v54;
  v90[0] = v39;
  v90[1] = v44;
  v90[2] = v45;
  v90[3] = v35;
  v90[4] = v50;
  v90[5] = v40;
  v90[6] = v43;
  v90[7] = v41;
  v90[8] = v82;
  v91 = v71;
  v92 = v73;
  v93 = v72;

  sub_1000108DC(&v84, v83, &qword_100642FE0);
  sub_10001074C(v90, &qword_100642FE0);
  v55 = sub_1004DBD6C();
  v56 = v76;
  sub_100047F38(v49, v76, &qword_100642FD0);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v39;
  v58 = v81;
  v57[2] = v80;
  v57[3] = v58;
  sub_100047F38(v56, v79, &qword_100642FD8);
}

void sub_10038D3AC(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10038D4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_1004DABAC();
  __chkstk_darwin(v5);
  v6 = sub_1004DBCCC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1004DBCDC();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100004CB8(&qword_1006430D8);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v31 - v14;
  v16 = *a1;
  if (*(a1 + 8))
  {
    v16 = 0.0;
  }

  *v9 = v16;
  (*(v7 + 104))(v9, enum case for GridItem.Size.fixed(_:), v6);
  v36 = *(a2 + 24);
  if (v36)
  {
    v17 = 14;
  }

  else
  {
    v17 = 4;
  }

  Int.seconds.getter(v17);
  sub_1004DBCEC();
  sub_10038D8B0(v12, *(a2 + 16));
  Int.seconds.getter(v17);
  v33 = a2;
  v34 = a1;
  sub_1004DA90C();
  v35 = 0;
  sub_10038FD04(&unk_100640D10, &type metadata accessor for PinnedScrollableViews);
  sub_1004DF33C();
  sub_100004CB8(&qword_1006430E0);
  sub_10038FD4C();
  sub_1004DBDBC();
  sub_1004DAF2C();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1004DAF2C();
  v28 = v32;
  (*(v13 + 32))(v32, v15, v31);
  result = sub_100004CB8(&qword_1006430F8);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_10038D8B0(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1004DBCDC();
      v5 = sub_1004DD8EC();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_1004DBCDC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_10038DA0C(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_10038FE20(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_10038FE20(result, v14);
      sub_10038DD44(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_10038FE20(v6, v14);
      sub_100004CB8(&qword_100643100);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_100042B08(&qword_100643108, &qword_100643100);
      sub_10038FD04(&qword_1006430F0, _s11GridPreviewO8GridViewV8ItemViewVMa);
      sub_10038FD04(&qword_100643110, type metadata accessor for ArtworkImage.GridPreview.Item);
      return sub_1004DBC2C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10038DC00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038FE9C(a1, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v11 = 0x4014000000000000;
  }

  else
  {
    v11 = 0x4000000000000000;
  }

  sub_10038FF04(v10, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v12 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v13 = (a4 + v12[5]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  *(v13 + 26) = *(a2 + 26);
  v15 = a4 + v12[6];
  *v15 = v11;
  *(v15 + 8) = -1;
  *(v15 + 16) = 0;
  v16 = v12[7];
  *(a4 + v16) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBC0);
  return swift_storeEnumTagMultiPayload();
}

void sub_10038DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_24:

      return;
    }

    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v27[1] = a2;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    v16 = v11 - 1;
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v13;
    v31 = v27 - v9;
    v28 = a1;
    while (1)
    {
      sub_10038FE9C(v14, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
      v22 = v18[2];
      if (v22 < a1)
      {
        break;
      }

      if (v12 >= v22)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_10038FE9C(v18 + v13 + v15 * v12, v6, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003E1170(0, v17[2] + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_1003E1170(v25 > 1, v26 + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v17[2] = v26 + 1;
      v13 = v30;
      sub_10038FF04(v6, v17 + v30 + v26 * v15, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10038F268(v18);
      }

      v10 = v31;
      if (v12 >= v18[2])
      {
        goto LABEL_27;
      }

      sub_10038FF6C(v31, v18 + v13 + v15 * v12++);
      a1 = v28;
      if (v12 < v28)
      {
        goto LABEL_8;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      v12 = 0;
LABEL_9:
      --v16;
      v14 += v15;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if ((v23 & 1) == 0)
    {
      sub_1003E1170(0, v22 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      sub_1003E1170(v19 > 1, v20 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v18[2] = v20 + 1;
    v13 = v30;
    v21 = v18 + v30 + v20 * v15;
    v10 = v31;
    sub_10038FF04(v31, v21, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_10038E084@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_1004DA8BC();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100640150);
  v56 = *(v6 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004D92BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  v50 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v19 = (v2 + *(v50 + 20));
  v20 = *(v19 + 26);
  v21 = v19[1];
  v57 = *v19;
  v58[0] = v21;
  *(v58 + 10) = v20;
  (*(v13 + 104))(v15, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  sub_10038FE9C(v2 + v18, v11, type metadata accessor for ArtworkImage.Placeholder);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_10038FF04(v11, v24 + v22, type metadata accessor for ArtworkImage.Placeholder);
  v25 = (v24 + v23);
  v26 = v58[0];
  *v25 = v57;
  v25[1] = v26;
  *(v25 + 26) = *(v58 + 10);
  v27 = v2 + v17;
  v28 = v52;
  sub_10032B920(v27, sub_1003722DC, v24, &v57, v15, v52);

  (*(v13 + 8))(v15, v12);
  v29 = v50;
  v30 = v2;
  sub_10032A8D4(v5);
  v31 = v51;
  sub_10032F6D0(v51);
  (*(v53 + 8))(v5, v54);
  v32 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = (v28 + *(sub_100004CB8(&qword_100641D48) + 36));
  v34 = v28;
  v35 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v33 + v35) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = swift_allocObject();
  sub_100047F38(v31, v37 + v36, &qword_100640150);
  *v33 = sub_100337008;
  v33[1] = v37;
  v38 = (v30 + *(v29 + 24));
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v42 = v34 + *(sub_100004CB8(&qword_1006431E8) + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  *(v42 + 16) = v41;
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v43 = static Border.artwork;
  v44 = qword_100673898;
  v45 = byte_1006738A0;
  v46 = v34 + *(sub_100004CB8(&qword_1006431F0) + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  *(v46 + 16) = v45;
  *(v46 + 24) = v39;
  *(v46 + 32) = v40;
  *(v46 + 40) = v41;

  sub_1004D9F9C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004DBE7C();
  sub_1004D9F8C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004DBE7C();
  sub_1004D9F8C();
  sub_1004DBD3C();
  sub_1004D9FBC();

  sub_1004D9F7C();

  v47 = sub_1004D9FAC();

  result = sub_100004CB8(&qword_1006431F8);
  *(v34 + *(result + 36)) = v47;
  return result;
}

double sub_10038E73C@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_10038D3AC(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_1004DB8CC();
  v7 = sub_1004DBD0C();
  v9 = v8;
  v10 = a1 + *(sub_100004CB8(&qword_1006430C0) + 36);
  sub_10038D4EC(v15, v17, v10);
  v11 = (v10 + *(sub_100004CB8(&qword_1006430C8) + 36));
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_1004DBD1C();
  sub_1004D9F5C();
  v12 = (a1 + *(sub_100004CB8(&qword_1006430D0) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

size_t sub_10038E87C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_10063DF68);
  v10 = *(sub_100004CB8(&qword_10063DF60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_10063DF60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10038EA6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F4F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10038EB7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10038EC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10038ED84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10038EE90(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100643118);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10038F068(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10038F15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100643120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100004CB8(&unk_100641C70);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_1000108DC(a1 + v14, v13, &qword_100642C70);
  sub_1000108DC(a2 + v14, &v13[v15], &qword_100642C70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10001074C(v13, &qword_100642C70);
LABEL_12:
      v17 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v22 + 24), a2 + *(v22 + 24));
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_1000108DC(v13, v10, &qword_100642C70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_10038FFD4(v10);
LABEL_9:
    sub_10001074C(v13, &unk_100641C70);
    goto LABEL_10;
  }

  v18 = v21;
  sub_10038FF04(&v13[v15], v21, type metadata accessor for ArtworkImage.ViewModel);
  v19 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v10, v18);
  sub_10038FFD4(v18);
  sub_10038FFD4(v10);
  sub_10001074C(v13, &qword_100642C70);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_10038F5AC()
{
  result = qword_100642FE8;
  if (!qword_100642FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642FE8);
  }

  return result;
}

unint64_t sub_10038F604()
{
  result = qword_100642FF0;
  if (!qword_100642FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642FF0);
  }

  return result;
}

uint64_t sub_10038F68C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100642C70);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10038F7D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_100642C70);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10038F900()
{
  sub_10039038C(319, &qword_1006403F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10038F9D8()
{
  result = qword_100643090;
  if (!qword_100643090)
  {
    sub_100008DE4(&qword_100642FD8);
    sub_10038FA90();
    sub_100042B08(&qword_1006430B0, &qword_1006430B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643090);
  }

  return result;
}

unint64_t sub_10038FA90()
{
  result = qword_100643098;
  if (!qword_100643098)
  {
    sub_100008DE4(&qword_100642FD0);
    sub_10038FB48();
    sub_100042B08(&qword_1006430A8, &qword_100642FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643098);
  }

  return result;
}

unint64_t sub_10038FB48()
{
  result = qword_1006430A0;
  if (!qword_1006430A0)
  {
    sub_100008DE4(&qword_100642FC8);
    sub_100008DE4(&qword_1006406E8);
    sub_100338428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006430A0);
  }

  return result;
}

__n128 sub_10038FC10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10038FC34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_10038FC7C(uint64_t result, int a2, int a3)
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
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038FD04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10038FD4C()
{
  result = qword_1006430E8;
  if (!qword_1006430E8)
  {
    sub_100008DE4(&qword_1006430E0);
    sub_10038FD04(&qword_1006430F0, _s11GridPreviewO8GridViewV8ItemViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006430E8);
  }

  return result;
}

uint64_t sub_10038FE58()
{

  return swift_deallocObject();
}

uint64_t sub_10038FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038FF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038FF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038FFD4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100390044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100004CB8(&qword_1006404F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100390190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = sub_100004CB8(&qword_1006404F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1003902C0()
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v0 <= 0x3F)
  {
    sub_10039038C(319, &unk_100640568, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10039038C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100390434(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003904B8()
{
  result = qword_1006431D8;
  if (!qword_1006431D8)
  {
    sub_100008DE4(&qword_1006430C0);
    sub_100042B08(&qword_1006431E0, &qword_1006430C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006431D8);
  }

  return result;
}

uint64_t sub_100390594()
{
  v1 = *(sub_100004CB8(&qword_100640150) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      sub_100008D24(v0 + v2);
    }

    if (*(v3 + 64))
    {
      sub_100008D24(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004DBDAC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_10039073C()
{
  result = qword_100643200;
  if (!qword_100643200)
  {
    sub_100008DE4(&qword_1006431F8);
    sub_1003907F4();
    sub_100042B08(&qword_100643218, &qword_100643220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643200);
  }

  return result;
}

unint64_t sub_1003907F4()
{
  result = qword_100643208;
  if (!qword_100643208)
  {
    sub_100008DE4(&qword_1006431F0);
    sub_100390880();
    sub_100312488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643208);
  }

  return result;
}

unint64_t sub_100390880()
{
  result = qword_100643210;
  if (!qword_100643210)
  {
    sub_100008DE4(&qword_1006431E8);
    sub_10036F388();
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643210);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return sub_10001087C(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_10039162C();
      v11 = sub_1004DD87C();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = sub_1004DED5C();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_1004DEB2C();
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_10039162C()
{
  result = qword_100644F50;
  if (!qword_100644F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100644F50);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t sub_100391958@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_100397AD4(v1 + v3, v5);
  if (v6 != 1)
  {
    return sub_10006A8BC(v5, a1);
  }

  sub_10001074C(v5, &qword_1006435F8);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_100512780;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  sub_1000699E8(a1, v5);
  swift_beginAccess();
  sub_100397B44(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_100006F10(0, &qword_1006432A0);
  v11 = v7;
  v12 = v9;
  v13 = sub_1004DE5FC();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  sub_100004CB8(&qword_100643290);
  sub_1004DBB5C();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_100391D34(v3, a2, a1);
    a1[v17] = 1;
    sub_100391958(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_100395A90, v19);

    sub_10007DC74(v22);
  }
}

id sub_100391D34(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v5 = sub_1004D8B8C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004DD0FC();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100643638);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_1004DD12C();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v58 = sub_1004D951C();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImagePicker(0);
  v22 = *(v21 + 24);
  v57 = a1;
  v23 = a1 + v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  v61 = v24;
  v62 = v25;
  v63 = v23;
  sub_100004CB8(&qword_1006432B8);
  sub_1004DBB5C();
  if (v60 <= 1u)
  {
    if (!v60)
    {
      v26 = [objc_allocWithZone(UIImagePickerController) init];
      [v26 setSourceType:1];
      sub_100004CB8(&qword_100643640);
      sub_1004DAEBC();
      v27 = v61;
      [v26 setDelegate:v61];

      [v26 setAllowsEditing:1];
      sub_100004CB8(&qword_1006432D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100511DA0;
      sub_1004D950C();
      v29 = sub_1004D94EC();
      v31 = v30;
      (*(v18 + 8))(v20, v58);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      isa = sub_1004DD85C().super.isa;

      [v26 setMediaTypes:isa];

      v33._rawValue = *(v57 + *(v21 + 36));
      if (v33._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v33);
      }

      return v26;
    }

    result = [a3 view];
    if (result)
    {
      v40 = result;
      v41 = [objc_opt_self() clearColor];
      [v40 setBackgroundColor:v41];

      v42 = [objc_opt_self() sharedPhotoLibrary];
      sub_1004DD0EC();
      sub_1004DD09C();
      v43 = sub_1004DD0AC();
      (*(*(v43 - 8) + 56))(v11, 0, 1, v43);
      sub_1004DD11C();
      (*(v53 + 104))(v8, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v54);
      sub_1004DD10C();
      sub_100006F10(0, &qword_100643650);
      v45 = v55;
      v44 = v56;
      (*(v55 + 16))(v14, v17, v56);
      v46 = sub_1004DE31C();
      sub_100004CB8(&qword_100643640);
      sub_1004DAEBC();
      sub_100396D84(&qword_100643658, type metadata accessor for ImagePicker.Coordinator);
      sub_1004DE32C();
      v26 = v46;
      v47 = [v26 presentationController];
      if (v47)
      {
        v48 = v47;
        sub_1004DAEBC();
        v49 = v61;
        [v48 setDelegate:v61];
      }

      (*(v45 + 8))(v17, v44);
      return v26;
    }

    goto LABEL_16;
  }

  if (v60 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    sub_100004CB8(&qword_100643648);
    *(swift_allocObject() + 16) = xmmword_100511DA0;
    sub_1004D950C();
    v37 = objc_allocWithZone(UIDocumentPickerViewController);
    v38 = sub_1004DD85C().super.isa;

    v26 = [v37 initForOpeningContentTypes:v38 asCopy:1];

    sub_100004CB8(&qword_100643640);
    sub_1004DAEBC();
    v39 = v61;
    [v26 setDelegate:v61];

    [v26 _setAutomaticallyDismissesAfterCompletion:0];
    return v26;
  }

  result = [a3 view];
  if (result)
  {
    v50 = result;
    v51 = [objc_opt_self() clearColor];
    [v50 setBackgroundColor:v51];

    sub_1004D8B6C();
    v26 = sub_1004D8B5C();
    sub_100004CB8(&qword_100643640);
    sub_1004DAEBC();
    sub_1004D8B4C();
    sub_1004D8B7C();
    sub_1004D8B3C();
    return v26;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004DD21C();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_1004DEA4C();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_100006F5C(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_100028F3C(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_1004DF16C();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_1003969B4();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_100010678(v37, v6[6] + 40 * v20);
        sub_100006F5C(v34, (v6[7] + 32 * v28));
        sub_1000105EC(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_10039617C(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_100028F3C(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        sub_100008D24(v12);
        sub_100006F5C(v34, v12);
        sub_1000105EC(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_1004DD1FC().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v12 = sub_100056E30(UIImagePickerControllerEditedImage);
  if (v13)
  {
    sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v12, &v56);
    sub_100006F5C(&v56, &v58);
    goto LABEL_9;
  }

  v14 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v56 = 0u;
  v57 = 0u;
  if (v14 && (v15 = sub_100056E30(UIImagePickerControllerOriginalImage), (v16 & 1) != 0))
  {
    sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v15, &v58);
    if (*(&v57 + 1))
    {
      sub_10001074C(&v56, &qword_100644FB0);
    }
  }

  else
  {
LABEL_8:
    v58 = 0u;
    v59 = 0u;
  }

LABEL_9:
  if (!*(&v59 + 1))
  {
    sub_10001074C(&v58, &qword_100644FB0);
LABEL_16:
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_1004DEAAC(61);
    v61._countAndFlagsBits = 0xD00000000000002ALL;
    v61._object = 0x80000001004F7310;
    sub_1004DD5FC(v61);
    type metadata accessor for InfoKey(0);
    sub_100396D84(&qword_10063DEF0, type metadata accessor for InfoKey);
    v62._countAndFlagsBits = sub_1004DD22C();
    sub_1004DD5FC(v62);

    v63._object = 0x80000001004F7340;
    v63._countAndFlagsBits = 0xD000000000000011;
    sub_1004DD5FC(v63);
    v29 = *(&v58 + 1);
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v58;
      sub_100396B58();
      v32 = swift_allocError();
      *v33 = v31;
      v33[1] = v29;

      v30(v32, 1);
      sub_10000DE74(v30);
    }

    else
    {
    }

    return;
  }

  sub_100006F10(0, &qword_1006432B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v56;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v34 = v56;
LABEL_20:
    v27 = 0uLL;
    v26 = 1;
    v28 = 0uLL;
    goto LABEL_21;
  }

  v18 = v56;
  v19 = sub_100056E30(UIImagePickerControllerCropRect);
  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10000904C(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v19, &v58);
  sub_100006F10(0, &qword_1006432C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v56;
  [v56 CGRectValue];
  v52 = v22;
  v53 = v23;
  v51 = v24;
  v54 = v25;

  *&v28 = v51;
  *&v27 = v52;
  v26 = 0;
  *(&v27 + 1) = v53;
  *(&v28 + 1) = v54;
LABEL_21:
  v58 = v27;
  v59 = v28;
  v60 = v26;
  v35 = UIImage.centerCropIfNeeded(imageRect:)(&v58);

  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {

    v36(v35, 0);
    sub_10000DE74(v36);
  }

  v37 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100387CEC(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v11);
  v38 = &v11[*(v6 + 24)];
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v38) = v38[16];
  *&v56 = v39;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v38;
  sub_100004CB8(&qword_1006432B8);
  sub_1004DBB5C();
  v41 = v55;
  sub_100396BAC(v11);
  if ((v41 - 1) > 2)
  {
    sub_100387CEC(v3 + v37, v8);
    v48 = &v8[*(v6 + 32)];
    v49 = *v48;
    v50 = *(v48 + 1);
    LOBYTE(v48) = v48[16];
    *&v56 = v49;
    *(&v56 + 1) = v50;
    LOBYTE(v57) = v48;
    v55 = 0;
    sub_100004CB8(&qword_100643290);
    sub_1004DBB6C();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v42 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 presentingViewController];

    if (v44)
    {
      sub_100387CEC(v3 + v37, v8);
      v45 = &v8[*(v6 + 32)];
      v46 = *v45;
      v47 = *(v45 + 1);
      LOBYTE(v45) = v45[16];
      *&v56 = v46;
      *(&v56 + 1) = v47;
      LOBYTE(v57) = v45;
      v55 = 0;
      sub_100004CB8(&qword_100643290);
      sub_1004DBB6C();
      [v44 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_100396BAC(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_1004D868C() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        sub_100004CB8(&qword_1006432D0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100511DA0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_1004DD85C().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  sub_100004CB8(&qword_1006432B8);
  sub_1004DBB5C();
  v21 = HIBYTE(v25);
  sub_100396BAC(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100387CEC(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    sub_100004CB8(&qword_100643290);
    sub_1004DBB6C();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DD0DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1004D951C();
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v16 = *(v9 + 80);
    v17 = v2;
    isa = _.super.super.super.isa;
    v30 = v13;
    v18 = (v16 + 32) & ~v16;
    v31 = v12;
    v19 = sub_1004DD0BC();
    sub_1004D950C();
    (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v18, v8);
    v20 = swift_allocObject();
    v21 = isa;
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v9 + 32))(v20 + v18, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v22 = v17;
    v23 = v21;
    v24 = sub_1004DDFBC();

    (*(v30 + 8))(v15, v31);
  }

  else
  {
    sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v25 = &v7[*(v5 + 32)];
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v25) = v25[16];
    v33 = v26;
    v34 = v27;
    v35 = v25;
    v32 = 0;
    sub_100004CB8(&qword_100643290);
    sub_1004DBB6C();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v7);
  }
}

uint64_t sub_100393558(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v11 = sub_1004DD0DC();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_1004DDA8C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_1004DDA4C();
  v18 = a1;
  v19 = a2;
  sub_100027F64(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = sub_1004DDA3C();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], v29, v28);
  sub_100302950(0, 0, v16, &unk_1005308F8, v25);
}

uint64_t sub_1003937AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_1004DDA4C();
  v8[9] = sub_1004DDA3C();
  v10 = sub_1004DD9BC();

  return _swift_task_switch(sub_100393854, v10, v9);
}

uint64_t sub_100393854()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_100010530(v3, v2);
    sub_100010530(v3, v2);
    isa = sub_1004D80FC().super.isa;
    v6 = [v4 initWithData:isa];

    sub_100010584(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_1004DD0CC();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004D810C();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = sub_1004D80FC().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          sub_100010584(v30, v29);
        }

        else
        {
          sub_100010584(*(v0 + 24), *(v0 + 32));
        }

        sub_100010598(v13, v15);
      }

      else
      {
        sub_100010584(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_100010584(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_1004DEAAC(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  sub_100004CB8(&qword_100643628);
  v48._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v48);

  v33 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v33)
  {
    sub_100396B58();
    v34 = swift_allocError();
    *v35 = 0xD00000000000002FLL;
    v35[1] = 0x80000001004F7640;

    v33(v34, 1);
    sub_10000DE74(v33);
  }

  else
  {
  }

  v36 = *(v0 + 56);
  v37 = sub_100394AE8();
  [v36 presentViewController:v37 animated:1 completion:0];

  v38 = sub_1004DD0CC();
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    v42 = *(v0 + 56);
    sub_100004CB8(&qword_1006432D0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100511DA0;
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;
    v44 = sub_1004DD85C().super.isa;

    [v42 deselectAssetsWithIdentifiers:v44];
  }

LABEL_17:
  v45 = *(v0 + 8);

  return v45();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_1004D803C();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_1004DD3FC();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_1004D810C();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = sub_1004D80FC().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          sub_100010598(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_100010598(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1004DEAAC(59);
  v49._countAndFlagsBits = 0xD000000000000025;
  v49._object = 0x80000001004F7360;
  sub_1004DD5FC(v49);
  v50._countAndFlagsBits = sub_1004DD88C();
  sub_1004DD5FC(v50);

  v51._object = 0x80000001004F7390;
  v51._countAndFlagsBits = 0xD000000000000014;
  sub_1004DD5FC(v51);
  v35 = v47;
  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {
    v37 = v46;
    sub_100396B58();
    v38 = swift_allocError();
    *v39 = v37;
    v39[1] = v35;

    v36(v38, 1);
    sub_10000DE74(v36);
  }

  else
  {
  }

  sub_100387CEC(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v40 = &v8[*(v6 + 32)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  v46 = v41;
  v47 = v42;
  v48 = v40;
  v45 = 0;
  sub_100004CB8(&qword_100643290);
  sub_1004DBB6C();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_100396BAC(v8);
}

void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_1004D7FDC(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v32 = v11;
    v12 = sub_1004D810C();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_1004D80FC().super.isa;
    v20 = [v18 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v20)
    {
      [v20 setDelegate:v2];
      [v20 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v21);
      }

      sub_100010598(v12, v14);
      [a1 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      sub_100010598(v12, v14);
    }

    v27 = v32;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1004DEAAC(52);
    v38._object = 0x80000001004F73B0;
    v38._countAndFlagsBits = 0xD000000000000031;
    sub_1004DD5FC(v38);
    sub_1004D809C();
    sub_100396D84(&qword_1006432D8, &type metadata accessor for URL);
    v39._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v39);

    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    sub_1004DD5FC(v40);
    v22 = v35;
    v23 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v23)
    {
      v24 = v34;
      sub_100396B58();
      v25 = swift_allocError();
      *v26 = v24;
      v26[1] = v22;

      v23(v25, 1);
      sub_10000DE74(v23);
    }

    else
    {
    }

    sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v28 = &v6[*(v4 + 32)];
    v29 = *v28;
    v30 = *(v28 + 1);
    LOBYTE(v28) = v28[16];
    v34 = v29;
    v35 = v30;
    v36 = v28;
    v33 = 0;
    sub_100004CB8(&qword_100643290);
    sub_1004DBB6C();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100387CEC(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
  v7 = &v6[*(v4 + 40)];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v7) = v7[16];
  v12 = v8;
  v13 = v9;
  v14 = v7;
  v11[7] = 0;
  sub_100004CB8(&qword_100643290);
  sub_1004DBB6C();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_100396BAC(v6);
}

void sub_1003948F0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100387CEC(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v9 = &v8[*(v6 + 40)];
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v14[7] = 0;
  v12 = a3;
  v13 = a1;
  sub_100004CB8(&qword_100643290);
  sub_1004DBB6C();
  [v12 dismissViewControllerAnimated:1 completion:0];
  sub_100396BAC(v8);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  sub_100004CB8(&qword_100643290);
  sub_1004DBB6C();
}

id sub_100394AE8()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_100394B48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100394B48()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  sub_1004DD37C();
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v9 = qword_1006734A0;
  v10 = qword_1006734A0;
  sub_1004D838C();
  v11 = v10;
  v20[2] = v9;
  v20[0] = sub_1004DD4AC();
  v12 = *(v2 + 8);
  v12(v7, v1);
  sub_1004DD37C();
  v8(v4, v7, v1);
  sub_1004D838C();
  sub_1004DD4AC();
  v20[1] = v2 + 16;
  v12(v7, v1);
  v13 = sub_1004DD3FC();
  v20[0] = v8;
  v14 = v13;

  v15 = sub_1004DD3FC();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  sub_1004DD37C();
  (v20[0])(v4, v7, v1);
  sub_1004D838C();
  sub_1004DD4AC();
  v12(v7, v1);
  v17 = sub_1004DD3FC();

  v18 = [objc_opt_self() actionWithTitle:v17 style:1 handler:0];

  [v16 addAction:v18];
  return v16;
}

id sub_100394F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100387CEC(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ImagePicker.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_100387CEC(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v5;
  v14.super_class = v4;
  v8 = objc_msgSendSuper2(&v14, "init");
  sub_100396BAC(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100387CEC(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_100396F7C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v11 = sub_100396FE0;
  v11[1] = v10;
  sub_10000DE74(v12);
  return v8;
}

uint64_t sub_1003951CC(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1004D966C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = Logger.playlistCovers.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = sub_1004D964C();
    v12 = sub_1004DDF7C();
    sub_10001066C(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v28 = v14;
      *v13 = 136446210;
      v30 = a1;
      swift_errorRetain();
      sub_100004CB8(&qword_100643610);
      v15 = sub_1004DD4DC();
      v17 = sub_1002E5CC4(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "ImagePicker failed with error: %{public}s", v13, 0xCu);
      sub_100008D24(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = type metadata accessor for ImagePicker(0);
    v20 = (a3 + v19[5]);
    v21 = *v20;
    v22 = *(v20 + 2);
    v28 = v21;
    v29 = v22;
    v30 = a1;
    v23 = a1;
    sub_100004CB8(&qword_100643618);
    result = sub_1004DBB6C();
    v24 = *(a3 + v19[7]);
    if (v24)
    {
      v25 = (a3 + v19[6]);
      v26 = *v25;
      v27 = v25[1];
      LOBYTE(v25) = *(v25 + 16);
      *&v28 = v26;
      *(&v28 + 1) = v27;
      LOBYTE(v29) = v25;
      sub_100004CB8(&qword_1006432B8);
      sub_1004DBB5C();
      return v24(v30);
    }
  }

  return result;
}

char *sub_10039547C@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_1003954A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100395538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003955CC()
{
  sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker);
  sub_1004DADFC();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);

  return v3;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1004DD3FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1003959AC()
{
  v0 = sub_1002F17D8(&off_1005EB9A0);
  sub_100004CB8(&qword_100643660);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_100395A50()
{

  return swift_deallocObject();
}

void sub_100395A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

uint64_t static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100395B34(unsigned __int8 *a1)
{
  sub_1004DF26C();
  PlaylistCovers.Cover.Representation.hash(into:)();
  v2 = sub_1004DF2BC();

  return sub_100395C60(a1, v2);
}

unint64_t sub_100395BA0(char a1)
{
  sub_1004DF26C();
  sub_1004DD55C();

  v2 = sub_1004DF2BC();

  return sub_100395D44(a1, v2);
}

unint64_t sub_100395C60(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 56 * v4;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *v7;
      v15 = *(v7 + 48);
      v14[1] = v9;
      v14[2] = v8;
      v14[0] = v10;
      sub_100245220(v14, v13);
      v11 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v14, a1);
      sub_10024527C(v14);
      if (v11)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100395D44(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1004DF08C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}