uint64_t sub_827730(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_81802C(a1, a3);
}

uint64_t sub_8278B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BCE0);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - v9;
  v10 = sub_AB8E20();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v14 = sub_AB8CC0();
  (*(v11 + 8))(v13, v10);
  if (v14 == 2 || (v14 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v15 = sub_AB8B60(), v15 == 2) || (v15 & 1) != 0)
  {
    v16 = 1;
    v17 = v34;
  }

  else
  {
    v19 = v32;
    sub_AB5670();
    v20 = sub_AB5680();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = v33;
    sub_83290C(a1, v33, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v23 = swift_allocObject();
    sub_832978(v21, v23 + v22, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v24 = v30;
    sub_AB7680();
    v25 = sub_AB7460();
    KeyPath = swift_getKeyPath();
    v27 = (v24 + *(v7 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v34;
    sub_36B0C(v24, v34, &qword_E1AB00);
    v17 = v28;
    v16 = 0;
  }

  return (*(v8 + 56))(v17, v16, 1, v7);
}

uint64_t sub_827CD8(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = sub_AB8B70();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_15F84(v11, v8, &unk_E1A980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908);
  sub_AB7650();
  sub_12E1C(v11, &unk_E1A980);
  v15 = (a1 + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v18 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = sub_AB4BA0();
  v20 = sub_AB9F50();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "[Management] Remove swipe action triggered", v21, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_827FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_AB91E0();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v10 = qword_E73660;
  sub_AB3550();
  v11 = sub_AB9320();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_8281D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7410();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_AB91E0();
  v49 = *(v10 + 16);
  v49(v12, v15, v9);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v16 = qword_E73660;
  v17 = qword_E73660;
  v48[3] = v16;
  v18 = v17;
  sub_AB3550();
  v19 = v18;
  v20 = sub_AB9320();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v48[1] = v10 + 8;
  v63 = v20;
  v64 = v22;
  v48[2] = sub_7ABE60();
  v24 = sub_AB6F20();
  v54 = v25;
  v55 = v24;
  v52 = v26;
  v53 = v27;
  sub_AB91E0();
  v28 = v49;
  v49(v12, v15, v9);
  sub_AB3550();
  v48[0] = v10 + 16;
  v29 = sub_AB9320();
  v31 = v30;
  v23(v15, v9);
  v63 = v29;
  v64 = v31;
  v32 = sub_AB6F20();
  v50 = v33;
  v51 = v32;
  v48[4] = v34 & 1;
  v48[5] = v35;
  sub_AB91E0();
  v28(v12, v15, v9);
  sub_AB3550();
  v36 = sub_AB9320();
  v38 = v37;
  v23(v15, v9);
  v63 = v36;
  v64 = v38;
  v39 = sub_AB6F20();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_83290C(v58, v59, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_832978(v44, v46 + v45, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_AB73E0();
  sub_36B74(v39, v41, v43 & 1);

  sub_AB73F0();
  return sub_AB73D0();
}

uint64_t sub_82877C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908);
  sub_AB7640();
  sub_817784(v2);
  return sub_12E1C(v2, &unk_E1A980);
}

uint64_t sub_828858()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v8 = qword_E73660;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_828A5C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_AB5790();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  v6 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC50);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC58);
  __chkstk_darwin(v52);
  v53 = &v52 - v17;
  sub_83290C(v1, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_832978(&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC68);
  sub_8331D4();
  sub_AB7690();
  sub_AB7A30();
  sub_AB5E90();
  (*(v10 + 32))(v16, v12, v9);
  v20 = &v16[*(v14 + 44)];
  v21 = v64;
  *(v20 + 4) = v63;
  *(v20 + 5) = v21;
  *(v20 + 6) = v65;
  v22 = v60;
  *v20 = v59;
  *(v20 + 1) = v22;
  v23 = v62;
  *(v20 + 2) = v61;
  *(v20 + 3) = v23;
  if (sub_82981C())
  {
    if (qword_E16AE0 != -1)
    {
      swift_once();
    }

    v24 = qword_E1A098;
  }

  else
  {
    v25 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_AB7510();
  }

  KeyPath = swift_getKeyPath();
  v27 = v53;
  sub_36B0C(v16, v53, &qword_E1AC50);
  v28 = (v27 + *(v52 + 36));
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = v54;
  sub_829974(v54);
  v31 = v55;
  v30 = v56;
  (*(v2 + 104))(v55, enum case for ColorScheme.light(_:), v56);
  v32 = sub_AB5780();
  v33 = *(v2 + 8);
  v33(v31, v30);
  v33(v29, v30);
  v34 = objc_opt_self();
  v35 = &selRef_systemBackgroundColor;
  if ((v32 & 1) == 0)
  {
    v35 = &selRef_secondarySystemBackgroundColor;
  }

  v36 = [v34 *v35];
  v37 = sub_AB7510();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACB8);
  v39 = v57;
  v40 = (v57 + *(v38 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC0);
  v42 = v40 + *(v41 + 52);
  v43 = *(sub_AB5E60() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_AB63A0();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *v40 = v37;
  *(v40 + *(v41 + 56)) = 256;
  return sub_36B0C(v27, v39, &qword_E1AC58);
}

__n128 sub_829074@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC90);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC80);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *v7 = sub_AB6440();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  sub_82926C(a1, &v7[*(v5 + 52)]);
  if (*a1)
  {
    v12 = 2.5;
  }

  else
  {
    v12 = 0.0;
  }

  sub_36B0C(v7, v11, &qword_E1AC90);
  v13 = &v11[*(v9 + 44)];
  *v13 = 0;
  *(v13 + 1) = v12;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v11, a2, &qword_E1AC80);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC68) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_82926C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8);
  __chkstk_darwin(v50);
  v4 = v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACD0);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACD8);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[1] = *a1;
  v13 = sub_AB7530();
  v14 = sub_AB6B90();
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = KeyPath;
  v58 = v14;
  sub_AB6C10();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACE0);
  v17 = sub_8333E0();
  sub_AB6F80();

  if (qword_E16AF0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v50, qword_E1A0B8);
  sub_15F84(v18, v4, &qword_E1ACC8);
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_E1AD00, &qword_E1ACC8);
  v55 = v12;
  v19 = v49;
  sub_AB70A0();
  sub_12E1C(v4, &qword_E1ACC8);
  (*(v48 + 8))(v7, v19);
  v56 = sub_828858();
  v57 = v20;
  sub_7ABE60();
  v21 = sub_AB6F20();
  v23 = v22;
  v25 = v24;
  if (qword_E16AA8 != -1)
  {
    swift_once();
  }

  v26 = sub_AB6E80();
  v28 = v27;
  v30 = v29;

  sub_36B74(v21, v23, v25 & 1);

  if (qword_E16AB0 != -1)
  {
    swift_once();
  }

  v31 = sub_AB6E00();
  v33 = v32;
  v35 = v34;
  v50 = v36;
  sub_36B74(v26, v28, v30 & 1);

  v37 = v51;
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v55, v53);
  v41 = v54;
  *v54 = 0;
  *(v41 + 8) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD08);
  v39(v41 + v42[12], v37, v40);
  v43 = v41 + v42[16];
  *v43 = v31;
  *(v43 + 1) = v33;
  v35 &= 1u;
  v43[16] = v35;
  *(v43 + 3) = v50;
  v44 = v41 + v42[20];
  *v44 = 0x4020000000000000;
  v44[8] = 0;
  sub_AFF30(v31, v33, v35);
  v45 = *(v38 + 8);

  v45(v55, v40);
  sub_36B74(v31, v33, v35);

  return (v45)(v37, v40);
}

uint64_t sub_82981C()
{
  v1 = sub_AB6240();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_AB9F40();
    v7 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    sub_83315C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_829974@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_15F84(v1 + *(v10 + 24), v9, &qword_E1AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_AB5790();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_829B80()
{
  sub_AB7A80();
  sub_AB5B00();
}

uint64_t sub_829C0C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v16 = sub_AB7530();
  sub_AB6B70();
  v6 = sub_AB6BA0();

  KeyPath = swift_getKeyPath();
  v8 = sub_AB74B0();
  v9 = swift_getKeyPath();
  if (qword_E16AC8 != -1)
  {
    swift_once();
  }

  sub_AB7A30();
  sub_AB5970();
  if (a1)
  {
    v10 = sub_AB7460();
  }

  else
  {
    v10 = sub_AB74A0();
  }

  v11 = v10;
  v12 = sub_AB6AA0();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_E16AF0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_E1A0B8);
  sub_15F84(v13, v5, &qword_E1ACC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B400);
  sub_836E18();
  sub_36A00(&qword_E1AD00, &qword_E1ACC8);
  sub_AB70A0();
  sub_12E1C(v5, &qword_E1ACC8);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_12E1C(v21, &qword_E1B400);
}

uint64_t sub_829EF0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_AB6690();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B3F0);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B3F8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B400);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACC8);
  v15 = sub_836E18();
  v16 = sub_36A00(&qword_E1AD00, &qword_E1ACC8);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_AB7690();
  sub_AB6680();
  sub_36A00(&qword_E1B450, &qword_E1B3F0);
  sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_AB6FB0();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B458) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B460);
  sub_AB5EB0();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v0);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_AB64F0();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)()
{
  v0 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_AB64F0();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_82A690(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_82A538(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_82A690(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_82A5F0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_82A690(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_82A690(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == &dword_4 + 2)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == &dword_4 + 2)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == &dword_4 + 2 && (a3 & 1) == 0)
  {
    if (qword_E169D0 != -1)
    {
      swift_once();
    }

    v14 = *&qword_E739C8 + *&qword_E739C8;
    if (v11 + *&qword_E739C8 + *&qword_E739C8 > *&a2)
    {
      v11 = *&a2 - (*&qword_E739C8 + *&qword_E739C8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_82A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832FCC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82A924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832FCC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82A988()
{
  sub_832FCC();
  sub_AB6970();
  __break(1u);
}

char *sub_82A9B0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v9;
  v19 = *(v0 + 32);
  sub_832F40(v0, v17);
  sub_AB91E0();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v11 = qword_E73660;
  sub_AB3550();
  v12 = v11;
  v16[1] = sub_AB9320();
  v13 = *(v3 + 8);
  v13(v8, v2);
  sub_AB91E0();
  v10(v5, v8, v2);
  sub_AB3550();
  sub_AB9320();
  v13(v8, v2);
  v14 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v18);
}

uint64_t sub_82ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832F78();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832F78();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82AD7C()
{
  sub_832F78();
  sub_AB6970();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_36B0C(a3, a4 + *(v6 + 20), &unk_E1BA30);
}

uint64_t sub_82AE08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  sub_15F84(v1 + *(v10 + 20), v9, &qword_E1A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_36B0C(v9, a1, &qword_E17058);
  }

  sub_AB9F40();
  v12 = sub_AB6A40();
  sub_AB4A90();

  sub_AB6230();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A228);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = sub_AB62E0();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A230);
  sub_82B190(v0, &v3[*(v4 + 44)]);
  sub_36A00(&qword_E1A238, &qword_E1A228);
  sub_AB6F40();
  return sub_12E1C(v3, &qword_E1A228);
}

uint64_t sub_82B190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_AB6790();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240);
  __chkstk_darwin(v53);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD90);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD98);
  __chkstk_darwin(v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = sub_AB62E0();
  *(v16 + 1) = 0x4018000000000000;
  v16[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADA0);
  sub_82B874(a1, &v16[*(v25 + 44)]);
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  v26 = unk_E73A10;
  v27 = byte_E73A18;
  if (byte_E73A18)
  {
    v28 = *&static Corner.medium;
  }

  else
  {
    v28 = *&static Corner.medium + -3.0;
  }

  sub_36B0C(v16, v21, &qword_E1AD90);
  v29 = &v21[*(v17 + 36)];
  *v29 = v28;
  *(v29 + 1) = v26;
  v29[16] = v27;
  *(v29 + 3) = 0x4008000000000000;
  *(v29 + 4) = 0;
  *(v29 + 20) = 257;
  sub_36B0C(v21, v24, &qword_E1AD98);
  v30 = v58;
  sub_82AE08(v58);
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v55);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = *(v53 + 48);
  sub_15F84(v30, v6, &qword_E17058);
  sub_15F84(v11, &v6[v33], &qword_E17058);
  v34 = *(v32 + 48);
  v35 = v34(v6, 1, v31);
  v53 = v24;
  if (v35 != 1)
  {
    v50 = v11;
    v38 = v52;
    sub_15F84(v6, v52, &qword_E17058);
    v39 = v31;
    if (v34(&v6[v33], 1, v31) != 1)
    {
      v40 = &v6[v33];
      v41 = v51;
      (*(v32 + 32))(v51, v40, v31);
      sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass);
      v42 = v38;
      v36 = sub_AB91C0();
      v43 = *(v32 + 8);
      v43(v41, v39);
      sub_12E1C(v50, &qword_E17058);
      sub_12E1C(v58, &qword_E17058);
      v43(v42, v39);
      v37 = v53;
      sub_12E1C(v6, &qword_E17058);
      goto LABEL_13;
    }

    sub_12E1C(v50, &qword_E17058);
    sub_12E1C(v58, &qword_E17058);
    (*(v32 + 8))(v38, v31);
    goto LABEL_11;
  }

  sub_12E1C(v11, &qword_E17058);
  sub_12E1C(v58, &qword_E17058);
  if (v34(&v6[v33], 1, v31) != 1)
  {
LABEL_11:
    sub_12E1C(v6, &unk_E1A240);
    v36 = 0;
    v37 = v53;
    goto LABEL_13;
  }

  sub_12E1C(v6, &qword_E17058);
  v36 = 1;
  v37 = v53;
LABEL_13:
  v44 = v56;
  sub_15F84(v37, v56, &qword_E1AD98);
  v45 = v37;
  v46 = v57;
  sub_15F84(v44, v57, &qword_E1AD98);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADA8) + 48);
  *v47 = 0;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = (v36 & 1) == 0;
  sub_12E1C(v45, &qword_E1AD98);
  return sub_12E1C(v44, &qword_E1AD98);
}

uint64_t sub_82B874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0);
  __chkstk_darwin(v3 - 8);
  v70 = &v55[-v4];
  v5 = sub_AB6CD0();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v67 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_AB6ED0();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB8) - 8;
  __chkstk_darwin(v68);
  v69 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v55[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADC0);
  __chkstk_darwin(v15 - 8);
  v66 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  sub_82AE08(v14);
  v20 = sub_833ABC(v14);
  sub_12E1C(v14, &qword_E17058);
  *v19 = sub_AB62E0();
  v19[1] = v20;
  *(v19 + 16) = 0;
  v65 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADC8);
  v62 = a1;
  sub_82BFA4(a1);
  v74 = sub_82D358();
  v75 = v21;
  sub_7ABE60();
  v58 = sub_AB6F20();
  v57 = v22;
  v59 = v23;
  v74 = v58;
  v75 = v22;
  v56 = v24 & 1;
  v76 = v24 & 1;
  v77 = v23;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_AB7530();

  v25 = sub_AB6F30();
  v27 = v26;
  v29 = v28;
  v30 = sub_AB6E50();
  v32 = v31;
  v34 = v33;
  sub_36B74(v25, v27, v29 & 1);

  v35 = v61;
  sub_AB6EC0();
  sub_36B74(v30, v32, v34 & 1);

  v36 = v60;
  sub_AB6FA0();
  (*(v63 + 8))(v35, v64);
  sub_36B74(v58, v57, v56);

  KeyPath = swift_getKeyPath();
  v38 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADD0) + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  v39 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADD8) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADE0) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = sub_AB7580();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v67;
  PlaylistCurators.View.fontTextStyle.getter(v67);
  v44 = sub_AB6BC0();
  v45 = v70;
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v46 = sub_AB6C30();
  sub_12E1C(v45, &qword_E1ADB0);
  (*(v71 + 8))(v43, v72);
  v47 = swift_getKeyPath();
  v48 = (v36 + *(v68 + 44));
  *v48 = v47;
  v48[1] = v46;
  v50 = v65;
  v49 = v66;
  sub_15F84(v65, v66, &qword_E1ADC0);
  v51 = v69;
  sub_15F84(v36, v69, &qword_E1ADB8);
  v52 = v73;
  sub_15F84(v49, v73, &qword_E1ADC0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADE8);
  sub_15F84(v51, v52 + *(v53 + 48), &qword_E1ADB8);
  sub_12E1C(v36, &qword_E1ADB8);
  sub_12E1C(v50, &qword_E1ADC0);
  sub_12E1C(v51, &qword_E1ADB8);
  return sub_12E1C(v49, &qword_E1ADC0);
}

uint64_t sub_82BFA4(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCurators.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_7A4BB0(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_8B85A8(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_83290C(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_832978(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_83407C;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF8);
  sub_36A00(&qword_E1AE00, &qword_E1ADF0);
  sub_8341A8();
  return sub_AB78B0();
}

uint64_t sub_82C230@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_82C298(a2, a4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF8);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_82C298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v125 = a2;
  v2 = sub_AB89C0();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB4820();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v127 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v95 - v7;
  __chkstk_darwin(v8);
  v121 = &v95 - v9;
  __chkstk_darwin(v10);
  v119 = &v95 - v11;
  v12 = sub_AB4780();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v130 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v95 - v26;
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v30 - 8);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v98 = &v95 - v33;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AE80);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v95 - v37;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE48);
  __chkstk_darwin(v104);
  v111 = &v95 - v38;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE38);
  __chkstk_darwin(v108);
  v109 = &v95 - v39;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE28);
  __chkstk_darwin(v107);
  v115 = &v95 - v40;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE18);
  __chkstk_darwin(v112);
  v113 = &v95 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v42 - 8);
  v44 = &v95 - v43;
  sub_82AE08(&v95 - v43);
  v45 = sub_8344FC(v44);
  sub_12E1C(v44, &qword_E17058);
  v46 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_15F84(v122 + *(v46 + 20), v29, &unk_E1BA30);
  sub_AB8940();
  v47 = *(v129 + 56);
  v122 = v2;
  v97 = v129 + 56;
  v96 = v47;
  v47(v22, 0, 1, v2);
  v48 = sub_AB8A60();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v29, 1, v48) == 1)
  {
    sub_12E1C(v22, &qword_E1AB60);
    sub_12E1C(v29, &unk_E1BA30);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
  }

  else
  {
    (*(v49 + 32))(v36, v29, v48);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(v22, &v36[*(v50 + 20)], &qword_E1AB60);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80);
  v52 = v126;
  (*(*(v51 - 8) + 56))(v126, 8, 11, v51);
  v100 = v45;
  v138 = 0;
  v136 = 0;
  v134 = 1;
  v53 = *(v128 + 104);
  v120 = v12;
  v53(v130, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  v54 = v101;
  sub_83290C(v52, v101, type metadata accessor for ArtworkImage.Placeholder);
  v55 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_832978(v54, v57 + v55, type metadata accessor for ArtworkImage.Placeholder);
  v58 = v57 + v56;
  *v58 = v45;
  *(v58 + 8) = v138;
  *(v58 + 9) = *v137;
  *(v58 + 12) = *&v137[3];
  *(v58 + 16) = v45;
  *(v58 + 24) = v136;
  *(v58 + 25) = *v135;
  *(v58 + 28) = *&v135[3];
  *(v58 + 32) = 0;
  *(v58 + 40) = v134;
  *(v58 + 41) = 1;
  v59 = v98;
  sub_15F84(v36, v98, &qword_E1BD70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v60 = *(*(v50 - 8) + 48);
  v61 = v36;
  if (v60(v59, 1, v50) == 1)
  {
    sub_12E1C(v59, &qword_E1BD70);
    v62 = 1;
    v63 = v102;
  }

  else
  {
    v63 = v102;
    (*(v49 + 16))(v102, v59, v48);
    sub_832E5C(v59, type metadata accessor for ArtworkImage.ViewModel);
    v62 = 0;
  }

  (*(v49 + 56))(v63, v62, 1, v48);
  sub_15F84(v63, v106, &unk_E1BA30);
  v64 = v119;
  sub_AB47E0();
  sub_12E1C(v63, &unk_E1BA30);
  sub_AB47B0();
  v106 = v61;
  v65 = v103;
  sub_15F84(v61, v103, &qword_E1BD70);
  v66 = v60(v65, 1, v50);
  v67 = v120;
  if (v66 == 1)
  {
    sub_12E1C(v65, &qword_E1BD70);
    v68 = v105;
    v69 = v122;
    v96(v105, 1, 1, v122);
    v70 = v129;
    v71 = v118;
  }

  else
  {
    v68 = v105;
    sub_15F84(v65 + *(v50 + 20), v105, &qword_E1AB60);
    sub_832E5C(v65, type metadata accessor for ArtworkImage.ViewModel);
    v70 = v129;
    v69 = v122;
    v72 = (*(v129 + 48))(v68, 1, v122);
    v71 = v118;
    if (v72 != 1)
    {
      (*(v70 + 32))(v118, v68, v69);
      goto LABEL_15;
    }
  }

  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v73 = __swift_project_value_buffer(v69, static Artwork.CropStyle.fallback);
  (*(v70 + 16))(v71, v73, v69);
  if ((*(v70 + 48))(v68, 1, v69) != 1)
  {
    sub_12E1C(v68, &qword_E1AB60);
  }

LABEL_15:
  v74 = v117;
  v75 = v127;
  sub_AB4790();
  (*(v70 + 8))(v71, v69);
  v76 = v124;
  v77 = *(v123 + 8);
  v77(v75, v124);
  v78 = v121;
  sub_AB47C0();
  v77(v74, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E197E8);
  sub_7FD7E8();
  v79 = v110;
  sub_AB47A0();

  v77(v78, v76);
  v77(v64, v76);
  (*(v128 + 8))(v130, v67);
  sub_832E5C(v126, type metadata accessor for ArtworkImage.Placeholder);
  sub_12E1C(v106, &qword_E1BD70);
  v80 = v111;
  v81 = &v111[*(v104 + 36)];
  v82 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v81 + v82) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8);
  swift_storeEnumTagMultiPayload();
  *v81 = sub_82DBBC;
  v81[1] = 0;
  (*(v114 + 32))(v80, v79, v116);
  sub_AB7A30();
  sub_AB5970();
  v83 = v109;
  sub_36B0C(v80, v109, &qword_E1AE48);
  v84 = (v83 + *(v108 + 36));
  v85 = v132;
  *v84 = v131;
  v84[1] = v85;
  v84[2] = v133;
  v86 = v115;
  sub_36B0C(v83, v115, &qword_E1AE38);
  v87 = v86 + *(v107 + 36);
  *v87 = 0;
  *(v87 + 8) = 0;
  *(v87 + 16) = 2;
  if (qword_E16B00 != -1)
  {
    swift_once();
  }

  v88 = qword_E1A0D8;
  v89 = qword_E1A0E0;
  v90 = byte_E1A0E8;
  v91 = v86;
  v92 = v113;
  sub_36B0C(v91, v113, &qword_E1AE28);
  v93 = v92 + *(v112 + 36);
  *v93 = v88;
  *(v93 + 8) = v89;
  *(v93 + 16) = v90;
  *(v93 + 24) = 0;
  *(v93 + 32) = 0;
  *(v93 + 40) = 2;
  sub_36B0C(v92, v125, &qword_E1AE18);
}

uint64_t sub_82D358()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_AB9230();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  __chkstk_darwin(v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v0 + 16);
  if (v14)
  {
    sub_83290C(*v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v15 = v14 - 1;
    if (v15)
    {
      sub_AB9220();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      sub_AB9210(v20);
      sub_AB9200(*v13);
      v21._countAndFlagsBits = 2106912;
      v21._object = 0xE300000000000000;
      sub_AB9210(v21);
      v19[1] = v15;
      sub_AB91F0();
      v22._countAndFlagsBits = 0x7328726568744F20;
      v22._object = 0xE900000000000029;
      sub_AB9210(v22);
      sub_AB9240();
      (*(v3 + 16))(v5, v8, v2);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v17 = qword_E73660;
      sub_AB3550();
      countAndFlagsBits = sub_AB9320();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      countAndFlagsBits = v13->_countAndFlagsBits;
    }

    sub_832E5C(v13, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_AB6790();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_82AE08(&v27 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_15F84(v15, v7, &qword_E17058);
  sub_15F84(v12, &v7[v16], &qword_E17058);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_12E1C(v12, &qword_E17058);
    sub_12E1C(v15, &qword_E17058);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_12E1C(v7, &qword_E17058);
LABEL_9:
      v18 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_15F84(v7, v29, &qword_E17058);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_12E1C(v12, &qword_E17058);
    sub_12E1C(v15, &qword_E17058);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_12E1C(v7, &unk_E1A240);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = sub_AB91C0();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_12E1C(v12, &qword_E17058);
  sub_12E1C(v15, &qword_E17058);
  v23(v21, v1);
  sub_12E1C(v7, &qword_E17058);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v24 = *v18;
  v25 = sub_AB6CD0();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_82DBBC(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = sub_AB7510();
  return sub_160B4(v4, a1 + 40, &qword_E1AE90);
}

uint64_t sub_82DC3C()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_82DD04;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_119878;
  v4[3] = &block_descriptor_223;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_E1A0D0 = v2;
  return result;
}

id sub_82DD04(void *a1)
{
  if ([a1 userInterfaceIdiom] == &dword_4 + 2)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == &dword_0 + 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_82DDA4()
{
  if (qword_E16AF8 != -1)
  {
    swift_once();
  }

  v0 = qword_E1A0D0;
  result = sub_AB7420();
  qword_E1A0D8 = result;
  qword_E1A0E0 = 0x3FF0000000000000;
  byte_E1A0E8 = 1;
  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_AB6500();
  *v5 = a1;

  return v4(v7, 0);
}

void (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_82DF78;
}

void sub_82DF78(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_AB6500();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v1);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_AB64F0();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_AB64F0();
}

id sub_82E284(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_82E5A0()
{
  type metadata accessor for ClearBackground.Controller();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_82E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832EEC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832EEC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82E6A4()
{
  sub_832EEC();
  sub_AB6970();
  __break(1u);
}

uint64_t sub_82E6CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_82E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB8B70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_AB90D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator);
      v19 = sub_AB91C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_82E9EC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_82F29C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_82E9EC()
{
  v1 = v0;
  v2 = sub_AB8B70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30);
  v6 = *v0;
  v7 = sub_ABAD20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_82EC24()
{
  v1 = v0;
  v32 = sub_AB8B70();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30);
  v6 = sub_ABAD30();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_82EF40()
{
  v1 = v0;
  v35 = sub_AB8B70();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void sub_82F29C(int64_t a1)
{
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_ABABD0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
        v23 = sub_AB90D0();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_82F5A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_AB90D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator);
      v21 = sub_AB91C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_82F884(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_82F884(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_82EF40();
  }

  else
  {
    if (v12 > v11)
    {
      sub_82E9EC();
      goto LABEL_12;
    }

    sub_82EC24();
  }

  v13 = *v3;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator);
  v14 = sub_AB90D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator);
      v22 = sub_AB91C0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_82FB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B308);
  __chkstk_darwin(v2 - 8);
  sub_15F84(a1, &v5 - v3, &qword_E1B308);
  return sub_AB60F0();
}

uint64_t sub_82FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_AB8A60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE98);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = sub_ABB3C0(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v17 = *(v11 + 48);
    sub_15F84(a1 + v16, v13, &unk_E1BA30);
    sub_15F84(a2 + v16, &v13[v17], &unk_E1BA30);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_12E1C(v13, &unk_E1BA30);
        return 1;
      }
    }

    else
    {
      sub_15F84(v13, v10, &unk_E1BA30);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_830C28(&qword_E1AEA0, &type metadata accessor for Artwork);
        v20 = sub_AB91C0();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_12E1C(v13, &unk_E1BA30);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_12E1C(v13, &qword_E1AE98);
    return 0;
  }

  return result;
}

uint64_t sub_830010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v68 = sub_AB8E20();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v8;
  __chkstk_darwin(v9);
  v61 = &v56 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A120);
  v13 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A108);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F0);
  sub_AB54D0();
  v21 = *(v17 + 32);
  v21(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_AB54D0();
  v21(v3 + v22, v19, v16);
  v23 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v71[0] = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F8);
  sub_AB54D0();
  (*(v13 + 32))(v3 + v23, v15, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v71[0]) = 0;
  sub_AB54D0();
  v25 = *(v59 + 32);
  v26 = v60;
  v25(v3 + v24, v12, v60);
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v71[0]) = 0;
  sub_AB54D0();
  v25(v3 + v27, v12, v26);
  v28 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v71);
  sub_70C54(v71);
  v70 = BYTE1(v71[0]);
  sub_AB54D0();
  v25(v3 + v28, v12, v26);
  v29 = v63;
  v30 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v59 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v64;
  v32 = v67;
  v33 = *(v67 + 16);
  v34 = v61;
  v35 = v68;
  v33(v61, v29, v68);
  swift_beginAccess();
  v60 = v33;
  v33(v62, v34, v35);

  v36 = v35;
  sub_AB54D0();
  v37 = *(v32 + 8);
  v38 = v34;
  v64 = v32 + 8;
  v62 = v37;
  v37(v34, v36);
  swift_endAccess();
  v39 = v58;
  v40 = v29;
  sub_AB8BF0();
  v41 = sub_AB8BE0();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v39, 1, v41) == 1)
  {
    sub_12E1C(v39, &qword_E1AD38);
    v43 = 0;
  }

  else
  {
    v43 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v42 + 8))(v39, v41);
  }

  swift_beginAccess();
  v69 = v43 & 1;
  sub_AB54D0();
  swift_endAccess();
  v44 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v45 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v46 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v47 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, sub_836650, v46);
  *(v3 + v59) = v47;

  v48 = sub_AB9990();
  v49 = v66;
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v50 = v68;
  (v60)(v34, v40, v68);
  v51 = v67;
  v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (*(v51 + 32))(v54 + v52, v38, v50);
  *(v54 + v53) = v3;

  sub_7C7F60(0, 0, v49, &unk_B30190, v54);

  v62(v40, v50);
  return v3;
}

unint64_t sub_830A08()
{
  result = qword_E1A1D8;
  if (!qword_E1A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1D0);
    sub_36A00(&qword_E1A1E0, &qword_E1A1E8);
    sub_36A00(&qword_E1A1F0, &qword_E1A1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1A1D8);
  }

  return result;
}

void sub_830B40(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_824040(a1, a2);
}

uint64_t sub_830C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_830CC8(uint64_t a1)
{
  result = sub_830C28(&qword_E1A260, type metadata accessor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_830D38()
{
  sub_832178(319, &qword_E1A2A0, &qword_E1A0F0, &unk_B2EEF0, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_832178(319, &qword_E1A2A8, &qword_E1A0F8, &unk_B2EEF8, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_8324E4(319, &qword_E1A2B0, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_832548(319, &qword_E1A2B8, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_832178(319, qword_E1A2C0, &qword_E1BD70, &unk_B285C0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_830FB8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_83115C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_8312EC()
{
  sub_8314AC();
  if (v0 <= 0x3F)
  {
    sub_8324E4(319, &qword_E1A698, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_8324E4(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_8324E4(319, &qword_E1A6A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_832178(319, qword_E1A6B0, &qword_E1A1A0, &unk_B2EFD0, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_832548(319, &unk_E18FD8, &type metadata accessor for State);
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

void sub_8314AC()
{
  if (!qword_E1A690)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_830C28(&qword_E1A1A8, type metadata accessor for Collaboration.Management.Model);
    v0 = sub_AB5B80();
    if (!v1)
    {
      atomic_store(v0, &qword_E1A690);
    }
  }
}

uint64_t sub_8315AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_83167C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_83172C()
{
  sub_8324E4(319, &qword_E1A7C0, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_8317EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A7F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_8318BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A7F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_83196C()
{
  sub_832178(319, &unk_E1A860, &qword_E17058, &unk_B2F0D0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_831AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1B0);
  sub_36A00(&unk_E1A210, &qword_E1A1B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_831B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A228);
  sub_36A00(&qword_E1A238, &qword_E1A228);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_831BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_831DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_AB8B70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_831FEC()
{
  sub_AB8B70();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v1 <= 0x3F)
    {
      sub_832548(319, &unk_E18FD8, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_832178(319, &qword_E1A978, &unk_E1A980, &unk_B2B800, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_8324E4(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_8324E4(319, &qword_E1A6A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void sub_832178(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_1(uint64_t a1)
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

uint64_t sub_83224C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_83231C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8323EC()
{
  sub_7FD734();
  if (v0 <= 0x3F)
  {
    sub_8324E4(319, &qword_E1AA38, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_832548(319, &qword_E1AA40, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8324E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_832548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_8325BC()
{
  result = qword_E1AA78;
  if (!qword_E1AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA78);
  }

  return result;
}

unint64_t sub_832614()
{
  result = qword_E1AA80;
  if (!qword_E1AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA80);
  }

  return result;
}

unint64_t sub_83266C()
{
  result = qword_E1AA88;
  if (!qword_E1AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA88);
  }

  return result;
}

unint64_t sub_8326C4()
{
  result = qword_E1AA90;
  if (!qword_E1AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA90);
  }

  return result;
}

unint64_t sub_83273C()
{
  result = qword_E1AAC8;
  if (!qword_E1AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AA98);
    sub_36A00(&qword_E1AAD0, &qword_E1AAD8);
    sub_36A00(&qword_E1AAE0, &qword_E1AAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AAC8);
  }

  return result;
}

unint64_t sub_832820()
{
  result = qword_E1BE00;
  if (!qword_E1BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AB00);
    sub_36A00(&qword_E1AB08, &unk_E1AB10);
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BE00);
  }

  return result;
}

uint64_t sub_83290C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_832978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_AB5C70();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5A90();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_832DA4()
{
  result = qword_E1AC08;
  if (!qword_E1AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AB48);
    sub_36A00(&qword_E1AC10, &qword_E1AC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC08);
  }

  return result;
}

uint64_t sub_832E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_832EBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20E8F8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_832ED4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20E934(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_832EEC()
{
  result = qword_E1AC30;
  if (!qword_E1AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC30);
  }

  return result;
}

unint64_t sub_832F78()
{
  result = qword_E1AC38;
  if (!qword_E1AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC38);
  }

  return result;
}

unint64_t sub_832FCC()
{
  result = qword_E1AC40;
  if (!qword_E1AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC40);
  }

  return result;
}

uint64_t sub_833020()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5790();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_83315C(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_83315C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_8331D4()
{
  result = qword_E1AC70;
  if (!qword_E1AC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC68);
    sub_833260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC70);
  }

  return result;
}

unint64_t sub_833260()
{
  result = qword_E1AC78;
  if (!qword_E1AC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC80);
    sub_8332EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC78);
  }

  return result;
}

unint64_t sub_8332EC()
{
  result = qword_E1AC88;
  if (!qword_E1AC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC90);
    sub_36A00(&qword_E1AC98, &qword_E1ACA0);
    sub_36A00(&qword_E1ACA8, &qword_E1ACB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC88);
  }

  return result;
}

unint64_t sub_8333E0()
{
  result = qword_E1ACE8;
  if (!qword_E1ACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACE0);
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1ACE8);
  }

  return result;
}

uint64_t sub_833498()
{
  v1 = sub_AB8B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_833564(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_818300(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_833670(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_818A14(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_189Tm()
{
  v1 = sub_AB8B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_833834(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_817AC8(a1, v6, v7, v8, v1 + v5);
}

double sub_833ABC(uint64_t a1)
{
  v2 = sub_AB6790();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_15F84(a1, v9, &qword_E17058);
  sub_15F84(v16, &v9[v17], &qword_E17058);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_12E1C(v16, &qword_E17058);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_12E1C(v9, &qword_E17058);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_15F84(v9, v12, &qword_E17058);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_12E1C(v16, &qword_E17058);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_12E1C(v9, &unk_E1A240);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_AB91C0();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_12E1C(v16, &qword_E17058);
  v21(v12, v2);
  sub_12E1C(v9, &qword_E17058);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_833F00()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB6790();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_83407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_82C230(a1, a2, v7, a3);
}

uint64_t sub_834108()
{

  return swift_deallocObject();
}

uint64_t sub_834140(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE78);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_8341A8()
{
  result = qword_E1AE08;
  if (!qword_E1AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ADF8);
    sub_834260();
    sub_36A00(&qword_E1AE68, &qword_E1AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE08);
  }

  return result;
}

unint64_t sub_834260()
{
  result = qword_E1AE10;
  if (!qword_E1AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE18);
    sub_8342EC();
    sub_7D7A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE10);
  }

  return result;
}

unint64_t sub_8342EC()
{
  result = qword_E1AE20;
  if (!qword_E1AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE28);
    sub_834378();
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE20);
  }

  return result;
}

unint64_t sub_834378()
{
  result = qword_E1AE30;
  if (!qword_E1AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE38);
    sub_834404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE30);
  }

  return result;
}

unint64_t sub_834404()
{
  result = qword_E1AE40;
  if (!qword_E1AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8);
    sub_7FD7E8();
    swift_getOpaqueTypeConformance2();
    sub_830C28(&unk_E1AE50, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE40);
  }

  return result;
}

double sub_8344FC(uint64_t a1)
{
  v2 = sub_AB6790();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_15F84(a1, v9, &qword_E17058);
  sub_15F84(v16, &v9[v17], &qword_E17058);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_12E1C(v16, &qword_E17058);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_12E1C(v9, &qword_E17058);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_15F84(v9, v12, &qword_E17058);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_12E1C(v16, &qword_E17058);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_12E1C(v9, &unk_E1A240);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_AB91C0();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_12E1C(v16, &qword_E17058);
  v21(v12, v2);
  sub_12E1C(v9, &qword_E17058);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t block_copy_helper_223(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8348FC@<X0>(void *a1@<X8>)
{
  result = sub_AB6120();
  *a1 = v3;
  return result;
}

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5A00();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB5C70();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_AB5A90();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_834BF4()
{
  result = qword_E1AF38;
  if (!qword_E1AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF28);
    sub_36A00(&qword_E1AF40, &qword_E1AF48);
    sub_36A00(&qword_E1AF50, &qword_E1AF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF38);
  }

  return result;
}

uint64_t sub_834CD8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_834D54()
{
  result = qword_E1AF68;
  if (!qword_E1AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF70);
    sub_834E0C();
    sub_36A00(&qword_E1AF88, &qword_E1AF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF68);
  }

  return result;
}

unint64_t sub_834E0C()
{
  result = qword_E1AF78;
  if (!qword_E1AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF80);
    sub_83266C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF78);
  }

  return result;
}

unint64_t sub_834E98()
{
  result = qword_E1AF98;
  if (!qword_E1AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF20);
    sub_36A00(&qword_E1AFA0, &qword_E1AFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF98);
  }

  return result;
}

unint64_t sub_834F48()
{
  result = qword_E1AFB0;
  if (!qword_E1AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF30);
    sub_834BF4();
    sub_834CD8(&qword_E1AF60, &qword_E1AF30, &unk_B2FDF8, sub_834D54);
    swift_getOpaqueTypeConformance2();
    sub_834E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AFB0);
  }

  return result;
}

unint64_t sub_8350A8()
{
  result = qword_E1B000;
  if (!qword_E1B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AFF8);
    sub_830C28(&qword_E1AFF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B000);
  }

  return result;
}

unint64_t sub_835190()
{
  result = qword_E1B040;
  if (!qword_E1B040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B038);
    sub_835248();
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B040);
  }

  return result;
}

unint64_t sub_835248()
{
  result = qword_E1B048;
  if (!qword_E1B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B048);
  }

  return result;
}

uint64_t sub_8352FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_816C0C(a1, v4, v5, v6);
}

uint64_t sub_8353B8@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_823084(a1);
}

uint64_t objectdestroy_277Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB5A00();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_AB5C70();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_AB5A90();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_835694(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_82310C(a1, v4, v5, v6);
}

uint64_t sub_835710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_816810(a1, v4, v5, v6, v7);
}

uint64_t sub_8357D4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_8213D4(a1);
}

uint64_t sub_835844(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_7F0850(a1, a2, v2 + v6, v7);
}

uint64_t sub_835910(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_821268(a1, v4);
}

unint64_t sub_835990()
{
  result = qword_E1B150;
  if (!qword_E1B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B120);
    sub_835A48();
    sub_36A00(&qword_E1B168, &qword_E1B140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B150);
  }

  return result;
}

unint64_t sub_835A48()
{
  result = qword_E1B158;
  if (!qword_E1B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B160);
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B158);
  }

  return result;
}

uint64_t sub_835B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_81716C(a1, v4, v5, v6);
}

uint64_t sub_835C08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_8204F8(a1);
}

unint64_t sub_835C78()
{
  result = qword_E1B1A8;
  if (!qword_E1B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B190);
    sub_830C28(&qword_E1B1B0, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B1A8);
  }

  return result;
}

unint64_t sub_835D8C()
{
  result = qword_E1B200;
  if (!qword_E1B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1D8);
    sub_835E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B200);
  }

  return result;
}

unint64_t sub_835E18()
{
  result = qword_E1B208;
  if (!qword_E1B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1F8);
    sub_835ED0();
    sub_36A00(&qword_E1AF50, &qword_E1AF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B208);
  }

  return result;
}

unint64_t sub_835ED0()
{
  result = qword_E1B210;
  if (!qword_E1B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1F0);
    sub_36A00(&qword_E1B218, &qword_E1B220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B210);
  }

  return result;
}

uint64_t sub_836050(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_8360CC()
{
  result = qword_E1B290;
  if (!qword_E1B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B238);
    sub_36A00(&qword_E1AB08, &unk_E1AB10);
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B290);
  }

  return result;
}

unint64_t sub_8361B0()
{
  result = qword_E1B2C0;
  if (!qword_E1B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B240);
    sub_836268();
    sub_36A00(&qword_E1B2F8, &qword_E1B2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2C0);
  }

  return result;
}

unint64_t sub_836268()
{
  result = qword_E1B2C8;
  if (!qword_E1B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2B0);
    sub_836320();
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2C8);
  }

  return result;
}

unint64_t sub_836320()
{
  result = qword_E1B2D0;
  if (!qword_E1B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2A8);
    sub_8363AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2D0);
  }

  return result;
}

unint64_t sub_8363AC()
{
  result = qword_E1B2D8;
  if (!qword_E1B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2A0);
    sub_836438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2D8);
  }

  return result;
}

unint64_t sub_836438()
{
  result = qword_E1B2E0;
  if (!qword_E1B2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B238);
    sub_8360CC();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2E0);
  }

  return result;
}

uint64_t objectdestroy_269Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_836618()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_836658()
{
  v1 = sub_AB8E20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_836730(uint64_t a1)
{
  v4 = *(sub_AB8E20() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_8114E4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_836850@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_AB8590();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_836898()
{
  result = qword_E1B350;
  if (!qword_E1B350)
  {
    sub_13C80(255, &qword_E1B340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B350);
  }

  return result;
}

unint64_t sub_836950()
{
  result = qword_E1B3A8;
  if (!qword_E1B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AA98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAC0);
    sub_83273C();
    sub_834CD8(&unk_E1AAF0, &qword_E1AAC0, &unk_B2F798, sub_832820);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_830C28(&qword_E1B3B8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3A8);
  }

  return result;
}

unint64_t sub_836B2C()
{
  result = qword_E1B3C0;
  if (!qword_E1B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACB8);
    sub_836BE4();
    sub_36A00(&qword_E1B3E0, &qword_E1ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3C0);
  }

  return result;
}

unint64_t sub_836BE4()
{
  result = qword_E1B3C8;
  if (!qword_E1B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC58);
    sub_836C9C();
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3C8);
  }

  return result;
}

unint64_t sub_836C9C()
{
  result = qword_E1B3D0;
  if (!qword_E1B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC50);
    sub_36A00(&qword_E1B3D8, &qword_E1AC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3D0);
  }

  return result;
}

unint64_t sub_836D74()
{
  result = qword_E1B3E8;
  if (!qword_E1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3E8);
  }

  return result;
}

uint64_t sub_836DC8()
{

  return swift_deallocObject();
}

unint64_t sub_836E18()
{
  result = qword_E1B408;
  if (!qword_E1B408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B400);
    sub_836ED0();
    sub_36A00(&unk_E1B440, &qword_E1BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B408);
  }

  return result;
}

unint64_t sub_836ED0()
{
  result = qword_E1B410;
  if (!qword_E1B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B418);
    sub_836F88();
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B410);
  }

  return result;
}

unint64_t sub_836F88()
{
  result = qword_E1B420;
  if (!qword_E1B420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B428);
    sub_837014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B420);
  }

  return result;
}

unint64_t sub_837014()
{
  result = qword_E1B430;
  if (!qword_E1B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B438);
    sub_8333E0();
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B430);
  }

  return result;
}

unint64_t sub_837164()
{
  result = qword_E1B468;
  if (!qword_E1B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B3F0);
    sub_AB6690();
    sub_36A00(&qword_E1B450, &qword_E1B3F0);
    sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1B470, &qword_E1B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B468);
  }

  return result;
}

unint64_t sub_837374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9E8);
    v2 = sub_ABB0C0();
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
        sub_9ACA0(*(a1 + 48) + 40 * v12, v33);
        sub_808B0(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_9ACA0(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_12E1C(v30, &qword_E1B888);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_808B0(v31 + 8, v23);
        sub_12E1C(v30, &qword_E1B888);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_2EBF88(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_9AD68(&v24, v2[7] + 40 * v10);
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
      sub_12E1C(&v24, &qword_E1B9F0);
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

unint64_t sub_8376A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B880);
    v2 = sub_ABB0C0();
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
        sub_9ACA0(*(a1 + 48) + 40 * v12, v27);
        sub_808B0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_9ACA0(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_808B0(v25 + 8, v20);
        sub_12E1C(v24, &qword_E1B888);
        v21 = v18;
        sub_9ACFC(v20, v22);
        v13 = v21;
        sub_9ACFC(v22, v23);
        sub_9ACFC(v23, &v21);
        result = sub_2EBF88(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_9ACFC(&v21, v10);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_9ACFC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_12E1C(v24, &qword_E1B888);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_AB8A60();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_837A60(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_837A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_837A60(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = sub_AB8B70();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_844588(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      sub_AB91E0();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v20 = qword_E73660;
      sub_AB3550();
      sub_AB9320();
      (*(v7 + 8))(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4B8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_AF4EC0;
      v22 = sub_AB8B10();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_842FD0();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = sub_AB9270();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      sub_AB91E0();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v29 = qword_E73660;
      sub_AB3550();
      v27 = sub_AB9320();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    sub_AB91E0();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v30 = qword_E73660;
    sub_AB3550();
    v27 = sub_AB9320();
    (*(v7 + 8))(v12, v6);
    v31 = sub_AB31C0();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    sub_12E1C(v15, &qword_E1B4D0);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v84 = hasProfileEdit;
  v2 = sub_AB9230();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v83 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v79 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = sub_AB35C0();
  __chkstk_darwin(v15 - 8);
  v86 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_AB9250();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_844588(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_AB91E0();
      v25 = v85;
      v26 = v88;
      (*(v85 + 16))(v87, v20, v88);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v27 = qword_E73660;
      sub_AB3550();
      v28 = sub_AB9320();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      sub_843024(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v85;
      v40 = (v85 + 16);
      v41 = v20;
      v42 = v87;
      v43 = v88;
      sub_AB91E0();
      (*v40)(v42, v41, v43);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v46 = qword_E73660;
      sub_AB3550();
      v28 = sub_AB9320();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v81 = v32;
  v82 = v34;
  sub_36B0C(v34, v14, &qword_E1B4D0);
  v80 = v14;
  sub_15F84(v14, v11, &qword_E1B4D0);
  if ((*(v83 + 48))(v11, 1, v3) == 1)
  {
    v36 = v85;
    v37 = (v85 + 16);
    v38 = v20;
    sub_AB91E0();
    v48 = v88;
    (*v37)(v87, v38, v88);
    v49 = v80;
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v50 = qword_E73660;
    sub_AB3550();
    v28 = sub_AB9320();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    sub_12E1C(v49, &qword_E1B4D0);
    v52 = sub_AB31C0();
    (*(*(v52 - 8) + 8))(v82 + v81, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    sub_8430A4(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v84)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v82;
    if (object)
    {
      sub_AB9220();
      v89._countAndFlagsBits = 0x100000000000002ELL;
      v89._object = 0x8000000000B760A0;
      sub_AB9210(v89);
      sub_AB9200(*v8);
      v90._countAndFlagsBits = 4204576;
      v90._object = 0xE300000000000000;
      sub_AB9210(v90);
      v91._countAndFlagsBits = countAndFlagsBits;
      v91._object = object;
      sub_AB9200(v91);
      v92._countAndFlagsBits = 0xD000000000000031;
      v92._object = 0x8000000000B760D0;
      sub_AB9210(v92);
LABEL_26:
      sub_AB9240();
      v64 = v85;
      v65 = v88;
      (*(v85 + 16))(v87, v44, v88);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v66 = qword_E73660;
      sub_AB3550();
      v28 = sub_AB9320();
      v30 = v67;
      (*(v64 + 8))(v44, v65);
LABEL_32:
      sub_12E1C(v80, &qword_E1B4D0);
      sub_843024(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v75 = sub_AB31C0();
      (*(*(v75 - 8) + 8))(v61 + v81, v75);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  sub_8430A4(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v84)
  {
    v62 = v5[1]._countAndFlagsBits;
    v63 = v5[1]._object;
    v61 = v82;
    if (v63)
    {
      sub_AB9220();
      v93._countAndFlagsBits = 0x100000000000002ALL;
      v93._object = 0x8000000000B75FB0;
      sub_AB9210(v93);
      sub_AB9200(*v5);
      v94._countAndFlagsBits = 4204576;
      v94._object = 0xE300000000000000;
      sub_AB9210(v94);
      v95._countAndFlagsBits = v62;
      v95._object = v63;
      sub_AB9200(v95);
      v96._countAndFlagsBits = 0xD000000000000048;
      v96._object = 0x8000000000B75FE0;
      sub_AB9210(v96);
      goto LABEL_26;
    }

LABEL_29:
    sub_AB91E0();
    v68 = v85;
    v69 = v88;
    (*(v85 + 16))(v87, v44, v88);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v70 = qword_E73660;
    sub_AB3550();
    sub_AB9320();
    (*(v68 + 8))(v44, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4B8);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_AF4EC0;
    v72 = v45->_countAndFlagsBits;
    v73 = v45->_object;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_842FD0();
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;

    v28 = sub_AB9270();
    v30 = v74;

    goto LABEL_32;
  }

LABEL_19:
  sub_AB91E0();
  v53 = v85;
  v54 = v88;
  (*(v85 + 16))(v87, v44, v88);
  v55 = v82;
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v56 = qword_E73660;
  sub_AB3550();
  v28 = sub_AB9320();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  sub_12E1C(v80, &qword_E1B4D0);
  sub_843024(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = sub_AB31C0();
  (*(*(v58 - 8) + 8))(v55 + v81, v58);
LABEL_33:
  v76 = v28;
  v77 = v30;
  result._object = v77;
  result._countAndFlagsBits = v76;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_844588(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_843024(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_AB91E0();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v16 = qword_E73660;
      sub_AB3550();
      v14 = sub_AB9320();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    sub_AB91E0();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v17 = qword_E73660;
    sub_AB3550();
    v14 = sub_AB9320();
    (*(v4 + 8))(v9, v3);
    v18 = sub_AB31C0();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    sub_12E1C(v12, &qword_E1B4D0);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_AB7630();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_AB7630();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_84011C;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_8430A4(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_AB8E20();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_AB6440();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4E0);
  return sub_83948C(v1, a1 + *(v3 + 44));
}

uint64_t sub_83948C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A0);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = sub_AB89C0();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = sub_AB4820();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = sub_AB4780();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A8);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD90);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = sub_AB8B70();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = sub_AB31C0();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8B0);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8B8);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8C0);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8C8);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8D0);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = sub_AB35C0();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_AB9250();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8D8);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8E0);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8E8);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8F0);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8F8);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B900);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B908);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B910);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B918);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  sub_844588(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_843024(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (qword_E16B30 != -1)
    {
      swift_once();
    }

    v92 = qword_E1B4A8;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B920);
    v94 = sub_8442F4();
    sub_AB7240();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    sub_AB71C0();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B938);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = sub_7ABE60();
  v98 = sub_AB6F20();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (qword_E16B28 != -1)
  {
    swift_once();
  }

  v105 = qword_E1B4A0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B940);
  sub_844400();
  v107 = v481;
  sub_AB7240();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  sub_12E1C(v544, &qword_E1B940);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = sub_AB6AB0();
  v111 = v477;
  sub_844588(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_843024(v111, type metadata accessor for Collaboration.Flow);
  sub_AB5690();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  sub_36B0C(v107, v479, &qword_E1B900);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  sub_36B0C(v120, v488, &qword_E1B908);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = sub_AB6F20();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = sub_AB74E0();
  v131 = swift_getKeyPath();
  v471 = sub_AB6AB0();
  sub_AB5690();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = sub_AB6AC0();
  if (qword_E16B20 != -1)
  {
    swift_once();
  }

  v473 = v131;
  sub_AB5690();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
      v149 = sub_AB5800();
      v150 = _s4FlowO18ProfileEditingViewVMa(0);
      v151 = v397;
      sub_844588(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = sub_AB6AC0();
      sub_AB5690();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      sub_36B0C(v151, v490, &qword_E1B8F0);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
  sub_AB5800();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  sub_844588(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
      sub_AB7660();
      v200 = v403;
      sub_AB7790();
      v201 = sub_AB6AA0();
      sub_AB5690();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9B0) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = sub_AB6AA0();
      *(v200 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9B8) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(sub_AB5E60() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = sub_AB63A0();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0) + 36)] = 256;
      sub_AB7A30();
      sub_AB5E90();
      v221 = v404;
      sub_36B0C(v200, v404, &qword_E1B8D8);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      sub_36B0C(v221, v447, &qword_E1B8E0);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      sub_AB7640();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      sub_AB91E0();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v239 = qword_E73660;
      sub_AB3550();
      v240 = sub_AB9320();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = sub_AB6F20();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      sub_AB7A40();
      sub_AB5E90();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = sub_AB6760();
      v248 = sub_AB6CB0();
      v249 = swift_getKeyPath();
      v250 = sub_AB6A90();
      sub_AB5690();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = sub_AB6AB0();
      if (qword_E16B38 != -1)
      {
        swift_once();
      }

      sub_AB5690();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = sub_AB6AC0();
      sub_AB5690();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      sub_844588(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      sub_8430A4(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      sub_AB7630();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = sub_84502C;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = sub_846708;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = sub_AB7660();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B988);
      v491 = sub_844B8C();
      v287 = v438;
      sub_AB7260();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      sub_12E1C(&v513, &qword_E1B988);
      v288 = v420;
      sub_15F84(v447, v420, &qword_E1B8E0);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      sub_15F84(v288, v422, &qword_E1B8E0);
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9C0);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      sub_15F84(v493, v499, &qword_E1B9C8);
      sub_15F84(v498, v499, &qword_E1B9C8);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      sub_12E1C(v499, &qword_E1B9C8);
      sub_12E1C(v288, &qword_E1B8E0);
      sub_15F84(v291, v441, &qword_E1B8C8);
      swift_storeEnumTagMultiPayload();
      sub_36A00(&qword_E1B978, &qword_E1B8C8);
      v295 = v442;
      sub_AB6610();
      sub_15F84(v295, v459, &qword_E1B8C0);
      swift_storeEnumTagMultiPayload();
      sub_844AD4();
      sub_36A00(&qword_E1B998, &qword_E1B8A0);
      sub_AB6610();
      sub_12E1C(v493, &qword_E1B9C8);
      sub_12E1C(v295, &qword_E1B8C0);
      sub_12E1C(v291, &qword_E1B8C8);
      (v470)(v438, v449);
      sub_12E1C(v447, &qword_E1B8E0);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    sub_826678(v445);
    v166 = sub_AB8B10();
    v168 = v167;
    if (qword_E16B18 != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    sub_15F84(v165, v407, &qword_E1BD70);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      sub_12E1C(v170, &qword_E1BD70);
      v175 = sub_AB8A60();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = sub_AB8A60();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      sub_843024(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    sub_15F84(v174, v410, &unk_E1BA30);
    sub_AB47E0();
    sub_12E1C(v174, &unk_E1BA30);
    sub_AB47B0();
    v231 = v408;
    sub_15F84(v445, v408, &qword_E1BD70);
    if ((v464)(v231, 1, v171) == 1)
    {
      sub_12E1C(v231, &qword_E1BD70);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      sub_15F84(v231 + *(v171 + 20), v399, &qword_E1AB60);
      sub_843024(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        sub_AB4790();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        sub_AB47C0();
        v298(v234, v297);
        sub_7FDAA4();
        v300 = v414;
        sub_AB47A0();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        sub_12E1C(v445, &qword_E1BD70);
        sub_AB7A30();
        sub_AB5970();
        v301 = (v300 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD80) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = sub_AB6AB0();
        sub_AB5690();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        sub_36B0C(v300, v411, &qword_E1B8A8);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        sub_36B0C(v311, v455, &qword_E1BD90);
        v313 = v451;
        sub_AB91E0();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (qword_E16870 != -1)
        {
          swift_once();
        }

        v317 = qword_E73660;
        v318 = qword_E73660;
        v463 = v317;
        v319 = v318;
        sub_AB3550();
        v320 = v319;
        v321 = sub_AB9320();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        sub_844588(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        sub_8430A4(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        sub_AB7630();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = sub_AB6AB0();
        v338 = v448;
        v339 = v337;
        sub_AB5690();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = sub_8445FC;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        sub_AB91E0();
        v345 = v452;
        (v464)(v338, v344, v452);
        sub_AB3550();
        v465 = sub_AB9320();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        sub_844588(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        sub_8430A4(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        sub_AB7630();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = sub_AB6AB0();
        sub_AB5690();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = sub_844994;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        sub_15F84(v455, v423, &qword_E1BD90);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        sub_15F84(v358, v424, &qword_E1BD90);
        v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B960);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        sub_15F84(&v521, v499, &qword_E1B968);
        sub_15F84(&v529, v499, &qword_E1B968);
        sub_15F84(v492, v499, &qword_E1B968);
        sub_15F84(v493, v499, &qword_E1B968);
        sub_12E1C(v498, &qword_E1B968);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        sub_12E1C(v499, &qword_E1B968);
        sub_12E1C(v358, &qword_E1BD90);
        sub_15F84(v359, v459, &qword_E1B8A0);
        swift_storeEnumTagMultiPayload();
        sub_844AD4();
        sub_36A00(&qword_E1B998, &qword_E1B8A0);
        sub_AB6610();
        sub_12E1C(&v529, &qword_E1B968);
        sub_12E1C(&v521, &qword_E1B968);
        sub_12E1C(v359, &qword_E1B8A0);
        sub_12E1C(v455, &qword_E1BD90);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (qword_E16A58 != -1)
    {
      swift_once();
    }

    v236 = __swift_project_value_buffer(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      sub_12E1C(v232, &qword_E1AB60);
    }

    goto LABEL_38;
  }

  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  sub_844588(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  sub_8430A4(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  sub_AB7630();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = sub_844FE0;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = sub_846708;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  sub_15F84(v499, v498, &qword_E1B988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B988);
  sub_36A00(&qword_E1B978, &qword_E1B8C8);
  sub_844B8C();
  v196 = v442;
  sub_AB6610();
  sub_15F84(v196, v459, &qword_E1B8C0);
  swift_storeEnumTagMultiPayload();
  sub_844AD4();
  sub_36A00(&qword_E1B998, &qword_E1B8A0);
  sub_AB6610();
  sub_12E1C(v499, &qword_E1B988);
  sub_12E1C(v196, &qword_E1B8C0);
  (*(v430 + 8))(v429, v431);
  sub_12E1C(v464, &qword_E1B4D0);
LABEL_42:
  v378 = v482;
  sub_15F84(v486, v482, &qword_E1B918);
  v379 = v484;
  sub_15F84(v488, v484, &qword_E1B908);
  sub_15F84(v490, v483, &qword_E1B8F8);
  sub_15F84(v489, v485, &qword_E1B8E8);
  v380 = v378;
  v381 = v461;
  sub_15F84(v380, v461, &qword_E1B918);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9A0);
  sub_15F84(v379, v381 + v382[12], &qword_E1B908);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  sub_15F84(v483, v381 + v382[20], &qword_E1B8F8);
  v394 = v485;
  sub_15F84(v485, v381 + v382[24], &qword_E1B8E8);
  sub_15F84(v498, v499, &qword_E1B9A8);
  sub_12E1C(v489, &qword_E1B8E8);
  sub_12E1C(v490, &qword_E1B8F8);
  sub_12E1C(v488, &qword_E1B908);
  sub_12E1C(v486, &qword_E1B918);
  sub_12E1C(v394, &qword_E1B8E8);
  sub_12E1C(v393, &qword_E1B8F8);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  sub_12E1C(v499, &qword_E1B9A8);
  sub_12E1C(v484, &qword_E1B908);
  return sub_12E1C(v482, &qword_E1B918);
}

uint64_t sub_83CAFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_AB91E0();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v10 = qword_E73660;
  sub_AB3550();
  v11 = sub_AB9320();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_83CD0C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_AB9990();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_844588(a2, v6, type metadata accessor for Collaboration.Flow.View);
  sub_AB9940();
  v11 = sub_AB9930();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  sub_7C7F60(0, 0, v9, &unk_B309E0, v13);
}

uint64_t sub_83CEEC()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_750124;

  return sub_83CF9C(0);
}

uint64_t sub_83CF9C(char a1)
{
  v2[10] = v1;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0);
  v2[12] = swift_task_alloc();
  v4 = sub_AB8E20();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_AB9940();
  v2[17] = sub_AB9930();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_83D174;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_83D534;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_83D174()
{
  *(*v1 + 152) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_83DF74;
  }

  else
  {
    v4 = sub_83D2CC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_83D2CC()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_AB5800();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_83DAA0;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
    sub_AB7640();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_83DCE4;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_83D534(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_AB98B0();

  return _swift_task_switch(sub_83D678, v3, v2);
}

uint64_t sub_83D678()
{
  if (*(v0 + 35) == 1)
  {

    sub_845404();
    v1 = swift_allocError();
    *v2 = xmmword_B28380;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
        sub_AB7650();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_845548(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_12E1C(v19, &qword_E1B9D0);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
    v11 = sub_AB5800();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_83DAA0;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
    sub_AB7640();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_83DCE4;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_83DAA0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_AB98B0();
    v4 = v3;
    v5 = sub_83E124;
  }

  else
  {

    v2 = sub_AB98B0();
    v4 = v6;
    v5 = sub_83DBF0;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_83DBF0()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_83DCE4;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_83DCE4()
{
  *(*v1 + 208) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_83E2E0;
  }

  else
  {
    v4 = sub_83DE3C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_83DE3C()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_12E1C(v5, &qword_E1B9D0);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_83DF74()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E124()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E2E0()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7410();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9250();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_AB91E0();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v16 = qword_E73660;
  v17 = qword_E73660;
  v66 = v16;
  v18 = v17;
  sub_AB3550();
  v19 = v18;
  v20 = sub_AB9320();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = sub_7ABE60();
  v24 = sub_AB6F20();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  sub_AB91E0();
  v28 = v52;
  v52(v12, v15, v9);
  sub_AB3550();
  v29 = sub_AB9320();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = sub_AB6F20();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  sub_AB91E0();
  v28(v12, v15, v9);
  sub_AB3550();
  v36 = sub_AB9320();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = sub_AB6F20();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  sub_844588(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  sub_8430A4(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_AB7400();
  sub_36B74(v39, v41, v43 & 1);

  sub_844588(v68, v44, v66);
  v47 = swift_allocObject();
  sub_8430A4(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_AB73F0();

  return sub_AB73D0();
}

uint64_t sub_83EA84(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_844588(a1, v5, type metadata accessor for Collaboration.Flow.View);
  sub_AB9940();
  v10 = sub_AB9930();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_7C7F60(0, 0, v8, &unk_B309C0, v12);
}

uint64_t sub_83EC64()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_74FF38;

  return sub_83CF9C(1);
}

uint64_t sub_83ED14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_845404();
  v6 = swift_allocError();
  *v7 = xmmword_B28380;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_12E1C(v4, &qword_E1B9D0);
}

uint64_t sub_83EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83EEEC, v7, v6);
}

uint64_t sub_83EEEC()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_AB5800();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_83F114;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_83F2E4;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_83F114()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_83F51C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_83F230;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_83F230()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_83F2E4;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_83F2E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_83F600;
  }

  else
  {
    v5 = sub_83F420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_83F420()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_AB8E20();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_12E1C(v2, &qword_E1B9D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F51C()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F600()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83F7B0, v7, v6);
}

uint64_t sub_83F7B0()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_83F86C;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_83F86C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_83F9A8;
  }

  else
  {
    v5 = sub_846704;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_83F9A8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_AB9990();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_844588(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB9940();
  v20 = sub_AB9930();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_7C7F60(0, 0, v18, v26, v23);
}

uint64_t sub_83FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83FE0C, v7, v6);
}

uint64_t sub_83FE0C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_83FEC8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_83FEC8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_846700;
  }

  else
  {
    v5 = sub_846704;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_8463BC();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_AB3050();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_84011C()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_840180@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B308);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_AB7530();
  sub_AB6470();
  v5 = sub_AB6480();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_AB7560();

  sub_12E1C(v4, &qword_E1B308);
  v7 = sub_AB7430();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_8402BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v139 = a1;
  v2 = sub_AB6C70();
  v134 = *(v2 - 8);
  v135 = v2;
  __chkstk_darwin(v2);
  v133 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB9250();
  v132 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v116 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B838);
  __chkstk_darwin(v119);
  v14 = &v116 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B840);
  __chkstk_darwin(v120);
  v123 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B848);
  v130 = *(v16 - 8);
  v131 = v16;
  __chkstk_darwin(v16);
  v121 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v116 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B850);
  __chkstk_darwin(v23 - 8);
  v137 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v116 - v26;
  v28 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v129 = v20;
  swift_storeEnumTagMultiPayload();
  v128 = v28;
  LOBYTE(v28) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v139 + v28, v22);
  sub_843024(v22, type metadata accessor for Collaboration.Flow);
  v136 = v27;
  v126 = v6;
  v127 = v7;
  v124 = v9;
  v125 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v131;
  }

  else
  {
    sub_AB91E0();
    v31 = v132;
    (*(v132 + 16))(v9, v12, v7);
    v32 = v31;
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v33 = qword_E73660;
    sub_AB3550();
    v34 = sub_AB9320();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v162 = v34;
    *(&v162 + 1) = v36;
    sub_7ABE60();
    v37 = sub_AB6F20();
    v117 = v38;
    v118 = v39;
    v41 = v40;
    v42 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B858) + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = sub_AB6E60();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v117;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v118;
    v48 = sub_AB6CB0();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B868) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = sub_AB74E0();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v119 + 36)];
    *v53 = v52;
    v53[1] = v51;
    sub_AB7A40();
    sub_AB5E90();
    v54 = v123;
    sub_36B0C(v14, v123, &qword_E1B838);
    v55 = (v54 + *(v120 + 36));
    v56 = v176;
    v55[4] = v175;
    v55[5] = v56;
    v55[6] = v177;
    v57 = v172;
    *v55 = v171;
    v55[1] = v57;
    v58 = v174;
    v55[2] = v173;
    v55[3] = v58;
    LOBYTE(v51) = sub_AB6A90();
    sub_AB5690();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v121;
    sub_36B0C(v54, v121, &qword_E1B840);
    v30 = v131;
    v68 = v67 + *(v131 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v122;
    sub_36B0C(v69, v122, &qword_E1B848);
    v27 = v136;
    sub_36B0C(v70, v136, &qword_E1B848);
    v29 = 0;
  }

  v72 = v134;
  v71 = v135;
  v73 = v133;
  (*(v130 + 56))(v27, v29, 1, v30);
  v74 = v139;

  sub_84C208(&v178);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v74 + v128, v22);
  sub_843024(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    sub_2E2464(&v162);
  }

  else
  {
    v75 = v125;
    sub_AB91E0();
    v76 = v132;
    v77 = v127;
    (*(v132 + 16))(v124, v75, v127);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v78 = qword_E73660;
    sub_AB3550();
    v79 = sub_AB9320();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v162 = v79;
    *(&v162 + 1) = v81;
    sub_7ABE60();
    v139 = sub_AB6F20();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v162) = v85 & 1;
    sub_AB6CB0();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = sub_AB6CA0();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = sub_AB74E0();
    v92 = swift_getKeyPath();
    v93 = sub_AB6A90();
    sub_AB5690();
    LOBYTE(v162) = 0;
    *&v153 = v139;
    *(&v153 + 1) = v83;
    LOBYTE(v154) = v79;
    *(&v154 + 1) = v87;
    LOWORD(v155) = 256;
    *(&v155 + 1) = v88;
    LOBYTE(v156) = 1;
    *(&v156 + 1) = v90;
    *&v157 = v89;
    *(&v157 + 1) = v92;
    *&v158 = v91;
    BYTE8(v158) = v93;
    *&v159 = v94;
    *(&v159 + 1) = v95;
    *&v160 = v96;
    *(&v160 + 1) = v97;
    v161 = 0;
    UIScreen.Dimensions.size.getter(v94);
    v168 = v159;
    v169 = v160;
    v170 = v161;
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v162 = v153;
    v163 = v154;
    v27 = v136;
  }

  v98 = v137;
  sub_15F84(v27, v137, &qword_E1B850);
  v146 = v168;
  v147 = v169;
  v148 = v170;
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v140 = v162;
  v141 = v163;
  v99 = v138;
  sub_15F84(v98, v138, &qword_E1B850);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B870);
  v101 = (v99 + *(v100 + 48));
  v102 = v182;
  v103 = v181;
  v149[3] = v181;
  v149[4] = v182;
  v104 = v179;
  v105 = v178;
  v149[1] = v179;
  v149[2] = v180;
  v149[0] = v178;
  v101[2] = v180;
  v101[3] = v103;
  v101[4] = v102;
  *v101 = v105;
  v101[1] = v104;
  v106 = *(v100 + 64);
  v107 = v147;
  v150[6] = v146;
  v150[7] = v147;
  v109 = v144;
  v108 = v145;
  v150[4] = v144;
  v150[5] = v145;
  v110 = v142;
  v111 = v143;
  v150[2] = v142;
  v150[3] = v143;
  v113 = v140;
  v112 = v141;
  v150[0] = v140;
  v150[1] = v141;
  v114 = v99 + v106;
  *(v114 + 96) = v146;
  *(v114 + 112) = v107;
  v151 = v148;
  *(v114 + 128) = v148;
  *(v114 + 32) = v110;
  *(v114 + 48) = v111;
  *(v114 + 64) = v109;
  *(v114 + 80) = v108;
  *v114 = v113;
  *(v114 + 16) = v112;
  sub_844244(v149, &v153);
  sub_15F84(v150, &v153, &qword_E1B878);
  sub_12E1C(v27, &qword_E1B850);
  v159 = v146;
  v160 = v147;
  v161 = v148;
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v153 = v140;
  v154 = v141;
  sub_12E1C(&v153, &qword_E1B878);
  v152[2] = v180;
  v152[3] = v181;
  v152[4] = v182;
  v152[0] = v178;
  v152[1] = v179;
  sub_8442A0(v152);
  return sub_12E1C(v98, &qword_E1B850);
}

uint64_t sub_840F38@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = sub_AB6440();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(v4);
}

uint64_t sub_840FA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_AB6240();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_AB5E60();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B790);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B798);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7A0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7A8);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7B0);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7B8);
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
  sub_843D04(v1, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7C0);
  sub_843D3C();
  sub_AB7690();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_439564;
  v27[2] = v26;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v10, v14, &qword_E1B798);
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
    v33 = sub_AB7430();
  }

  else
  {
    v33 = sub_AB74B0();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_36B0C(v14, v16, &qword_E1B7A0);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (qword_E16B08 != -1)
  {
    swift_once();
  }

  v38 = *&qword_E1B480;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v16, v18, &qword_E1B7A8);
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
  sub_844020(&qword_E1B7E0, &qword_E1B7B0, &unk_B30678, sub_843F3C);
  sub_AB7240();
  sub_12E1C(v18, &qword_E1B7B0);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_AB63A0();
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

    sub_AB9F40();
    v49 = sub_AB6A40();
    sub_AB4A90();

    v50 = v65;
    sub_AB6230();
    swift_getAtKeyPath();
    sub_12E1C(&v89, &qword_E1B810);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  sub_AB7640();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = sub_AB7510();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = sub_AB7490();
  }

  else
  {
    v51 = sub_AB7430();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_8430A4(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = sub_AB7A30();
  v58 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B818);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_36B0C(v54, v61, &qword_E1B790);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B820) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t sub_8418B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  return (*(a1 + 24))(a1);
}

uint64_t sub_84191C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B828);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7D8);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  if (v24 == 1)
  {
    sub_AB58D0();
    v8 = sub_AB74B0();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    sub_15F84(v7, v4, &qword_E1B7D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B050);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050);
    sub_AB6610();
    return sub_12E1C(v7, &qword_E1B7D8);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    sub_7ABE60();

    v13 = sub_AB6F20();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_AB7A30();
    sub_AB5E90();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B050);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050);
    return sub_AB6610();
  }
}

void sub_841C40()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == &dword_4 + 2)
  {
    v2 = 44.0;
  }

  qword_E1B480 = *&v2;
}

void sub_841CF8()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_E1B488 = v1 == &dword_4 + 2;
}

uint64_t sub_841D5C()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_E1B488)
  {
    v0 = 140.0;
  }

  qword_E1B490 = *&v0;
  return result;
}

uint64_t sub_841DD4()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_E1B488)
  {
    v0 = 16.0;
  }

  qword_E1B498 = *&v0;
  return result;
}

uint64_t sub_841E3C()
{
  v0 = sub_AB6C70();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E16B10 != -1)
  {
    swift_once();
  }

  if (byte_E1B488 == 1)
  {
    result = sub_AB6B70();
    v5 = result;
  }

  else
  {
    sub_AB6B90();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_AB6CA0();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_E1B4A0 = v5;
  return result;
}

uint64_t sub_841F98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_E16B10 != -1)
  {
    swift_once();
  }

  v3 = sub_AB6BC0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_AB6C20();
  result = sub_12E1C(v2, &qword_E1ADB0);
  qword_E1B4A8 = v4;
  return result;
}

uint64_t sub_8420D4()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_E1B488)
  {
    v0 = 9.0;
  }

  qword_E1B4B0 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_AB8A60();
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
      v15 = sub_AB8FF0();

      v16 = sub_8376A0(v15);

      if (v16)
      {
        sub_AB89D0();
        sub_12E1C(v9, &unk_E1BA30);
        sub_36B0C(v6, v9, &unk_E1BA30);
      }
    }
  }

  v17 = [v2 name];
  v18 = sub_AB92A0();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = sub_AB92A0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_15F84(v9, v6, &unk_E1BA30);
  v26 = [v2 collaborationAllowed];
  sub_12E1C(v9, &unk_E1BA30);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = sub_837A60(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_AB8B70();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D0);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B890);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = sub_AB31C0();
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
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B898);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_844588(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  sub_844588(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    sub_844588(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      sub_12E1C(v21, &qword_E1B4D0);
LABEL_10:
      sub_12E1C(v24, &qword_E1B898);
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
    sub_36B0C(v21, v65, &qword_E1B4D0);
    sub_36B0C(v26, v44 + v43, &qword_E1B4D0);
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
        sub_12E1C(v44, &qword_E1B4D0);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      sub_15F84(v44, v60, &qword_E1B4D0);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        sub_8430A4(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v51, v53);
        sub_843024(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_843024(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_12E1C(v44, &qword_E1B4D0);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = sub_AB3140();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            sub_843024(v24, type metadata accessor for Collaboration.Flow);
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
        sub_843024(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_843024(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    sub_12E1C(v44, &qword_E1B890);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_843024(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  sub_844588(v24, v18, type metadata accessor for Collaboration.Flow);
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
  v32 = sub_AB8AF0();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  sub_843024(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_AB8A60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE98);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_ABB3C0() & 1) == 0)
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
  sub_15F84(a1 + v16, v13, &unk_E1BA30);
  sub_15F84(a2 + v16, &v13[v17], &unk_E1BA30);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_12E1C(v13, &unk_E1BA30);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_15F84(v13, v10, &unk_E1BA30);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_12E1C(v13, &qword_E1AE98);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_846408(&qword_E1AEA0, &type metadata accessor for Artwork);
  v23 = sub_AB91C0();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  sub_12E1C(v13, &unk_E1BA30);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_842FD0()
{
  result = qword_E1B4C0;
  if (!qword_E1B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B4C0);
  }

  return result;
}

uint64_t sub_843024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8430A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_843128()
{
  sub_84319C();
  if (v0 <= 0x3F)
  {
    sub_AB8B70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_84319C()
{
  if (!qword_E1B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B4D0);
    sub_AB31C0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_E1B568);
    }
  }
}

uint64_t sub_843234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_843304(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8433B4()
{
  sub_84381C(319, &unk_E1B600, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_84346C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_84346C()
{
  if (!qword_E1A7C0)
  {
    sub_AB8A60();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E1A7C0);
    }
  }
}

uint64_t sub_8434D8(uint64_t a1, uint64_t a2, int *a3)
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

  v10 = sub_AB8E20();
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

uint64_t sub_8435F4(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    result = sub_AB8E20();
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

void sub_8436F8()
{
  sub_84381C(319, &unk_E18FD8, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      sub_AB8E20();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          sub_80C664();
          if (v4 <= 0x3F)
          {
            sub_7FD734();
            if (v5 <= 0x3F)
            {
              sub_84386C();
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

void sub_84381C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_84386C()
{
  if (!qword_E1B6A0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context);
    v0 = sub_AB5810();
    if (!v1)
    {
      atomic_store(v0, &qword_E1B6A0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_843974(uint64_t a1, int a2)
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

uint64_t sub_8439BC(uint64_t result, int a2, int a3)
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

uint64_t sub_843A34(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_843AF4(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_843BB8()
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

uint64_t sub_843CA0()
{

  sub_83315C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_843D3C()
{
  result = qword_E1B7C8;
  if (!qword_E1B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7C0);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7C8);
  }

  return result;
}

unint64_t sub_843DE8()
{
  result = qword_E1B7D0;
  if (!qword_E1B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7D8);
    sub_36A00(&qword_E1AC10, &qword_E1AC18);
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7D0);
  }

  return result;
}

uint64_t sub_843ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_843F3C()
{
  result = qword_E1B7E8;
  if (!qword_E1B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7A8);
    sub_844020(&qword_E1B7F0, &qword_E1B7A0, &unk_B30668, sub_8440A4);
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7E8);
  }

  return result;
}

uint64_t sub_844020(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8440A4()
{
  result = qword_E1B7F8;
  if (!qword_E1B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B798);
    sub_36A00(&qword_E1B800, &qword_E1B808);
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7F8);
  }

  return result;
}

uint64_t sub_844188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_8441F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

unint64_t sub_8442F4()
{
  result = qword_E1B928;
  if (!qword_E1B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B920);
    sub_8443AC();
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B928);
  }

  return result;
}

unint64_t sub_8443AC()
{
  result = qword_E1B930;
  if (!qword_E1B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B930);
  }

  return result;
}

unint64_t sub_844400()
{
  result = qword_E1B948;
  if (!qword_E1B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B940);
    sub_8444D8(&qword_E1B950, &qword_E1B958);
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B948);
  }

  return result;
}

uint64_t sub_8444D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_844548()
{

  return swift_deallocObject();
}

uint64_t sub_844588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB8B70();
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
      v12 = sub_AB8A60();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_8445F4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_8449DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_83FA84(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_844AD4()
{
  result = qword_E1B970;
  if (!qword_E1B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B8C0);
    sub_36A00(&qword_E1B978, &qword_E1B8C8);
    sub_844B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B970);
  }

  return result;
}

unint64_t sub_844B8C()
{
  result = qword_E1B980;
  if (!qword_E1B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B988);
    sub_844C44();
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B980);
  }

  return result;
}

unint64_t sub_844C44()
{
  result = qword_E1B990;
  if (!qword_E1B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B990);
  }

  return result;
}

uint64_t sub_844C98()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_AB8B70();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_8445F4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_84502C(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_83CD0C(a1, v4);
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_AB8B70();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_AB8A60();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_AB8E20();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_8445F4();

  return swift_deallocObject();
}

uint64_t sub_845390(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_845404()
{
  result = qword_E1B9D8;
  if (!qword_E1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B9D8);
  }

  return result;
}

uint64_t sub_845458()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  return sub_83EC64();
}

uint64_t sub_845548(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm_0()
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
    v12 = sub_AB8B70();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_AB8A60();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    v11 = sub_AB31C0();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_AB8E20();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_8445F4();

  return swift_deallocObject();
}

uint64_t sub_845838()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_83CEEC();
}

uint64_t sub_845928()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_AB8B70();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_8445F4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_845C78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB31C0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83EE18(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_845DCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB8B70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83FD38(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_111Tm_0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB8B70();
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
      v12 = sub_AB8A60();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8) + 48);
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_8445F4();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_84626C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB8B70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83F6DC(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_8463BC()
{
  result = qword_E1B9E0;
  if (!qword_E1B9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1B9E0);
  }

  return result;
}

uint64_t sub_846408(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_846464()
{
  result = qword_E1B9F8;
  if (!qword_E1B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7B0);
    sub_844020(&qword_E1B7E0, &qword_E1B7B0, &unk_B30678, sub_843F3C);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E1BA00, &qword_E1B820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B9F8);
  }

  return result;
}

unint64_t sub_8465D4()
{
  result = qword_E1BA18;
  if (!qword_E1BA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BA20);
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA18);
  }

  return result;
}

unint64_t sub_846690()
{
  result = qword_E1BA28;
  if (!qword_E1BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA28);
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
  sub_84C208(v4);
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
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_15F84(a1, &v9 - v6, &unk_E1BA30);
  sub_15F84(v7, v4, &unk_E1BA30);
  sub_AB54D0();
  sub_12E1C(a1, &unk_E1BA30);
  return sub_12E1C(v7, &unk_E1BA30);
}

uint64_t sub_8468A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_846968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

void sub_8469DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = sub_AB8A60();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_15F84(v8, v5, &unk_E1BA30);

    sub_AB5520();

    sub_12E1C(v8, &unk_E1BA30);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = sub_AB8A60();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  sub_15F84(v17, v14, &unk_E1BA30);
  v71 = v14;
  sub_AB54D0();
  v20 = v17;
  sub_12E1C(v17, &unk_E1BA30);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_AB54D0();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0);
  v24 = v77;
  sub_AB54D0();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = sub_AB92A0();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    sub_AB5520();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = sub_AB8FF0();

        v37 = sub_8376A0(v36);

        if (v37)
        {
          sub_AB89D0();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_15F84(v20, v71, &unk_E1BA30);

          sub_AB5520();
          sub_12E1C(v20, &unk_E1BA30);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

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
    sub_AB5510();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      sub_12E1C(v43, &unk_E1BA30);
      return v21;
    }

    sub_12E1C(v43, &unk_E1BA30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_AF82B0;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  sub_AB9730();
  if (*(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v82 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v48 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA78);
  isa = sub_AB9740().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    sub_AB3050();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  sub_AB5510();

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
      v58 = sub_AB92A0();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      sub_AB5520();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  sub_AB5510();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  sub_12E1C(v43, &unk_E1BA30);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = sub_AB3260();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    sub_90090(v63, v65);
    v67 = sub_AB3250().super.isa;
    v68 = [v66 initWithData:v67];

    sub_466B8(v63, v65);
    sub_8469DC(v68);

    sub_466B8(v63, v65);
  }

  else
  {
  }

  return v21;
}