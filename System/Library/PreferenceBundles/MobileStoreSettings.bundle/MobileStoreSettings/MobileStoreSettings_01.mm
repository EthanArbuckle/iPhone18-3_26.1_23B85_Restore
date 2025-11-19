uint64_t sub_1DD74@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_39B68();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB4(&qword_529E8, &qword_3D580);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v38 = v36 - v8;
  v9 = v1 + *(type metadata accessor for AppStoreSettingsView() + 24);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v13 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (!v42)
  {
    goto LABEL_3;
  }

  v14 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((v42 & 1) == 0)
  {
    v36[1] = v36;
    __chkstk_darwin(v15);
    v36[0] = &v36[-4];
    v37 = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_35A30(v5);
    *&v42 = sub_3A708();
    *(&v42 + 1) = v19;
    sub_6144();
    v20 = sub_3A2E8();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v43 = v20;
    v44 = v22;
    v45 = v24 & 1;
    v46 = v26;
    sub_241BC(v37, &v42);
    sub_3CB4(&unk_529F0, &qword_3D5D0);
    sub_3CB4(&qword_521E8, &qword_3C560);
    sub_6254(&unk_52A00, &unk_529F0, &qword_3D5D0);
    sub_AB14();
    v27 = v38;
    sub_3A548();
    v28 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    v29 = v42;
    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = (v29 & 1) == 0;
    v32 = v40;
    v33 = (v27 + *(v40 + 36));
    *v33 = KeyPath;
    v33[1] = sub_2ABB0;
    v33[2] = v31;
    v34 = v41;
    sub_8750(v27, v41, &qword_529E8, &qword_3D580);
    v18 = v32;
    v17 = v34;
    v16 = 0;
  }

  else
  {
LABEL_3:
    v16 = 1;
    v18 = v40;
    v17 = v41;
  }

  return (*(v39 + 56))(v17, v16, 1, v18);
}

uint64_t sub_1E26C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_39B68();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v33 = &v33 - v8;
  v9 = &v1[*(type metadata accessor for AppStoreSettingsView() + 24)];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v13 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v37 == 1 && (v14 = sub_39F88(), swift_getKeyPath(), swift_getKeyPath(), sub_39EE8(), , , v14, (v37 & 1) == 0))
  {
    __chkstk_darwin(v15);
    *(&v33 - 2) = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_366D4(v5);
    v37 = sub_3A708();
    v38 = v20;
    sub_6144();
    v21 = sub_3A2E8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v37 = v21;
    v38 = v23;
    v39 = v25 & 1;
    v40 = v27;
    sub_3CB4(&qword_528F8, &qword_3D220);
    sub_6254(&qword_52900, &qword_528F8, &qword_3D220);
    v28 = v33;
    sub_3A558();
    v19 = v34;
    v29 = v36;
    v30 = v28;
    v31 = v35;
    (*(v34 + 32))(v36, v30, v35);
    v18 = v31;
    v17 = v29;
    v16 = 0;
  }

  else
  {
    v16 = 1;
    v18 = v35;
    v17 = v36;
    v19 = v34;
  }

  return (*(v19 + 56))(v17, v16, 1, v18);
}

uint64_t sub_1E66C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = (v1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v16 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v29 == 1)
  {
    v28[1] = v28;
    __chkstk_darwin(v17);
    v28[-2] = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_36D24(v6);
    v29 = sub_3A708();
    v30 = v18;
    sub_6144();
    v19 = sub_3A2E8();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29 = v19;
    v30 = v21;
    v31 = v23 & 1;
    v32 = v25;
    sub_3CB4(&qword_528F8, &qword_3D220);
    sub_6254(&qword_52900, &qword_528F8, &qword_3D220);
    sub_3A558();
    (*(v8 + 32))(a1, v11, v7);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  return (*(v8 + 56))(a1, v26, 1, v7);
}

uint64_t sub_1E9EC@<X0>(char *a1@<X8>)
{
  v63 = a1;
  v61 = sub_3CB4(&qword_52910, &qword_3D230);
  v59 = *(v61 - 8);
  v2 = *(v59 + 64);
  __chkstk_darwin(v61);
  v56 = &v55 - v3;
  v4 = sub_3CB4(&qword_52918, &qword_3D238);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v55 - v8;
  v9 = sub_39B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_3CB4(&qword_52920, &qword_3D240);
  v13 = *(v58 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v58);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v55 - v17;
  v18 = v1;
  v65 = v1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3769C(v12);
  v66 = sub_3A708();
  v67 = v19;
  sub_6144();
  v20 = sub_3A2E8();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v66 = v20;
  v67 = v22;
  v68 = v24 & 1;
  v69 = v26;
  sub_3CB4(&qword_52928, &qword_3D248);
  sub_6254(&qword_52930, &qword_52928, &qword_3D248);
  sub_3A538();
  v27 = (v1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v31 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v66 == 1)
  {
    v55 = &v55;
    __chkstk_darwin(v32);
    *(&v55 - 2) = v18;
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_37D18(v12);
    v66 = sub_3A708();
    v67 = v33;
    v34 = sub_3A2E8();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v66 = v34;
    v67 = v36;
    v68 = v38 & 1;
    v69 = v40;
    sub_3CB4(&qword_52940, &qword_3D2A0);
    sub_297CC();
    v41 = v56;
    sub_3A558();
    v42 = v59;
    v43 = v60;
    v44 = v61;
    (*(v59 + 32))(v60, v41, v61);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v43 = v60;
    v44 = v61;
    v42 = v59;
  }

  (*(v42 + 56))(v43, v45, 1, v44);
  v46 = v13[2];
  v48 = v57;
  v47 = v58;
  v49 = v64;
  v46(v57, v64, v58);
  v50 = v62;
  sub_1A5AC(v43, v62, &qword_52918, &qword_3D238);
  v51 = v63;
  v46(v63, v48, v47);
  v52 = sub_3CB4(&qword_52938, &qword_3D298);
  sub_1A5AC(v50, &v51[*(v52 + 48)], &qword_52918, &qword_3D238);
  sub_1A614(v43, &qword_52918, &qword_3D238);
  v53 = v13[1];
  v53(v49, v47);
  sub_1A614(v50, &qword_52918, &qword_3D238);
  return (v53)(v48, v47);
}

uint64_t sub_1F090(uint64_t a1)
{
  v2 = sub_3A268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for AppStoreSettingsView();
  v8 = a1 + *(v7 + 48);
  v9 = sub_39E78();
  v10 = sub_3A878();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Attempting to get current hosting controller", v11, 2u);
  }

  v12 = a1 + *(v7 + 20);
  v13 = sub_28F60(&qword_525F8, &qword_3CFC8, &type metadata accessor for WithCurrentHostingControllerAction, v6);
  __chkstk_darwin(v13);
  *(&v15 - 2) = a1;
  sub_3A258();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1F2C4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsView();
  v28 = *(v4 - 1);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v29 = v6;
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = v4[12];
  v8 = a1;
  v9 = sub_39E78();
  v10 = sub_3A878();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = a1;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "Got hosting controller: %@", v11, 0xCu);
    sub_1A614(v12, &qword_524F8, &qword_3C930);
  }

  v14 = (a2 + v4[11]);
  v15 = *v14;
  v16 = v14[1];
  v33 = *v14;
  v34 = v16;
  v31 = a1;
  v17 = v8;
  sub_3CB4(&unk_52800, qword_3D1A0);
  sub_3A468();
  v18 = a2 + v4[10];
  v19 = *(v18 + 8);
  v33 = *v18;
  v34 = v19;
  v35 = *(v18 + 16);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  if (v32)
  {

    v33 = v15;
    v34 = v16;
    sub_3A458();
    if (v31)
    {

      v20 = sub_39E78();
      v21 = sub_3A878();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "Finishing AuthKit surrogate auth from onAppear", v22, 2u);
      }

      v23 = v30;
      sub_296EC(a2, v30, type metadata accessor for AppStoreSettingsView);
      v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v25 = swift_allocObject();
      sub_28818(v23, v25 + v24);
      sub_1F650(sub_294FC, v25);
    }
  }
}

void sub_1F650(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v6 = type metadata accessor for AppStoreSettingsView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  aBlock = *(v2 + *(__chkstk_darwin(v6) + 44));
  sub_3CB4(&unk_52800, qword_3D1A0);
  sub_3A458();
  if (v96)
  {
    v90 = v96;
    v82 = v7;
    v83 = v8;
    v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = (v2 + *(v6 + 40));
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    *&aBlock = *v9;
    *(&aBlock + 1) = v10;
    v88 = v12;
    v92 = v12;
    v93 = v13;
    v14 = sub_3CB4(&qword_52778, &qword_3D170);
    sub_3A4E8();
    v15 = v97;
    if (v97)
    {
      v85 = v13;
      v86 = v10;
      v16 = v96;
      v17 = *(v6 + 48);

      v89 = v17;
      v18 = sub_39E78();
      v19 = sub_3A878();

      v20 = os_log_type_enabled(v18, v19);
      v87 = v14;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = v11;
        v23 = a1;
        v24 = a2;
        v25 = swift_slowAlloc();
        *&aBlock = v25;
        *v21 = 136315138;
        *(v21 + 4) = sub_36FC(v16, v15, &aBlock);
        _os_log_impl(&dword_0, v18, v19, "Creating AuthKit surrogate context with ID: %s", v21, 0xCu);
        sub_44BC(v25);
        a2 = v24;
        a1 = v23;
        v11 = v22;
      }

      v26 = objc_allocWithZone(AKAppleIDAuthenticationUISurrogateContext);
      v27 = sub_3A6D8();

      v28 = [v26 initWithSurrogateID:v27];

      if (v28)
      {
        v29 = v28;
        v30 = sub_39E78();
        v31 = sub_3A878();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v11;
          v34 = a1;
          v35 = a2;
          v36 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v36 = v28;
          v37 = v29;
          _os_log_impl(&dword_0, v30, v31, "Created AuthKit surrogate context: %@", v32, 0xCu);
          sub_1A614(v36, &qword_524F8, &qword_3C930);
          a2 = v35;
          a1 = v34;
          v11 = v33;
        }

        v81 = v29;
        v38 = v90;
        [v29 setPresentingViewController:v90];
        v39 = v38;
        v40 = sub_39E78();
        v41 = sub_3A878();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          *(v42 + 4) = v39;
          *v43 = v38;
          v44 = v39;
          _os_log_impl(&dword_0, v40, v41, "Set view controller on context: %@", v42, 0xCu);
          sub_1A614(v43, &qword_524F8, &qword_3C930);
        }

        v45 = sub_39E78();
        v46 = sub_3A878();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "Creating AuthKit controller", v47, 2u);
        }

        v48 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
        v49 = sub_39E78();
        if (v48)
        {
          v50 = sub_3A878();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_0, v49, v50, "Created AuthKit controller", v51, 2u);
          }

          v90 = v39;

          v52 = sub_39E78();
          v53 = sub_3A878();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_0, v52, v53, "About to authenticate using surrogate context", v54, 2u);
          }

          v55 = v84;
          sub_296EC(v3, v84, type metadata accessor for AppStoreSettingsView);
          v56 = (*(v82 + 80) + 16) & ~*(v82 + 80);
          v57 = (v83 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
          v58 = swift_allocObject();
          sub_28818(v55, v58 + v56);
          v59 = (v58 + v57);
          *v59 = a1;
          v59[1] = a2;
          v94 = sub_2942C;
          v95 = v58;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v92 = sub_27DB0;
          v93 = &unk_4E2D8;
          v60 = _Block_copy(&aBlock);
          v61 = v81;

          [v48 authenticateWithContext:v61 completion:v60];
          _Block_release(v60);

          v62 = sub_39E78();
          v63 = sub_3A878();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_0, v62, v63, "Started authentication using surrogate context", v64, 2u);
          }

          *&aBlock = v11;
          *(&aBlock + 1) = v86;
          v92 = v88;
          v93 = v85;
          v96 = 0;
          v97 = 0;

          sub_3A4F8();

          return;
        }

        v78 = sub_3A898();
        if (os_log_type_enabled(v49, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_0, v49, v78, "Could not create AuthKit controller", v79, 2u);
        }

        *&aBlock = v11;
        *(&aBlock + 1) = v86;
        v92 = v88;
        v93 = v85;
        v96 = 0;
        v97 = 0;
        v80 = sub_3A4F8();
        (a1)(v80);

        v77 = v81;
LABEL_30:

        return;
      }

      v74 = sub_39E78();
      v75 = sub_3A898();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "Could not create AuthKit context", v76, 2u);
      }

      *&aBlock = v11;
      *(&aBlock + 1) = v86;
      v92 = v88;
      v93 = v85;
      v96 = 0;
      v97 = 0;
      v73 = sub_3A4F8();
    }

    else
    {
      v69 = v2 + *(v6 + 48);
      v70 = sub_39E78();
      v71 = sub_3A888();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v70, v71, "Can’t present AuthKit UI because no context ID is available", v72, 2u);
      }
    }

    (a1)(v73);
    v77 = v90;
    goto LABEL_30;
  }

  v65 = v2 + *(v6 + 48);
  v66 = sub_39E78();
  v67 = sub_3A888();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "Can’t present AuthKit UI because no view controller is available", v68, 2u);
  }

  a1();
}

uint64_t sub_20050(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreSettingsView();
  v30 = *(v2 - 1);
  v3 = *(v30 + 64);
  v4 = __chkstk_darwin(v2);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  sub_3A7F8();
  v7 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v2[12];
  sub_296EC(a1, v6, type metadata accessor for AppStoreSettingsView);
  v9 = sub_39E78();
  v10 = sub_3A878();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v7;
    v12 = v11;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v12 = 136315138;
    v13 = &v6[v2[10]];
    v14 = *(v13 + 1);
    *&v35 = *v13;
    *(&v35 + 1) = v14;
    v36 = *(v13 + 1);
    sub_3CB4(&qword_52778, &qword_3D170);
    sub_3A4E8();
    if (v34)
    {
      v15 = v33;
    }

    else
    {
      v15 = 0x296C6C756E28;
    }

    if (v34)
    {
      v16 = v34;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    sub_29754(v6, type metadata accessor for AppStoreSettingsView);
    v17 = sub_36FC(v15, v16, &v32);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Got new AuthKit context ID: %s", v12, 0xCu);
    sub_44BC(v28);
  }

  else
  {

    sub_29754(v6, type metadata accessor for AppStoreSettingsView);
  }

  v18 = a1 + v2[10];
  v19 = *(v18 + 8);
  *&v35 = *v18;
  *(&v35 + 1) = v19;
  v36 = *(v18 + 16);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  if (v34)
  {

    v35 = *(a1 + v2[11]);
    sub_3CB4(&unk_52800, qword_3D1A0);
    sub_3A458();
    if (v33)
    {

      v20 = sub_39E78();
      v21 = sub_3A878();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "Finishing AuthKit surrogate auth from onChange", v22, 2u);
      }

      v23 = v31;
      sub_296EC(a1, v31, type metadata accessor for AppStoreSettingsView);
      v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v25 = swift_allocObject();
      sub_28818(v23, v25 + v24);
      sub_1F650(sub_29160, v25);
    }
  }
}

void sub_204B0(uint64_t a1, const char *a2)
{
  v3 = a1 + *(type metadata accessor for AppStoreSettingsView() + 48);
  oslog = sub_39E78();
  v4 = sub_3A878();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, oslog, v4, a2, v5, 2u);
  }
}

uint64_t sub_2056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_39F68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v8, enum case for ScenePhase.active(_:), v4);
  v9 = sub_39F58();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = (a3 + *(type metadata accessor for AppStoreSettingsView() + 32));
    v11 = *v10;
    v12 = *(v10 + 1);
    v14[16] = v11;
    v15 = v12;
    v14[15] = 0;
    sub_3CB4(&unk_527F0, &qword_3D198);
    sub_3A468();
  }
}

double sub_20728@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  sub_3A078();
  v6 = (a2 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  sub_39F88();
  sub_39EA8();
  sub_3CB4(&qword_527B8, &qword_3D180);
  sub_3CB4(&qword_527E0, &qword_3D190);
  sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
  sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
  sub_3A1A8();

  result = *&v11;
  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_20944@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for AppStoreSettingsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_296EC(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_28818(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_28F48;
  a2[1] = v8;
  return result;
}

uint64_t sub_20AB8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_3CB4(&unk_527F0, &qword_3D198);
  return sub_3A468();
}

uint64_t sub_20B28()
{
  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isAppInstallationAllowed];
    v4 = [v2 isAutomaticAppDownloadsAllowed];
    v5 = v4;
    v6 = v3 & v4;
    v7 = v0 + *(type metadata accessor for AppStoreSettingsView() + 48);
    v8 = sub_39E78();
    v9 = sub_3A8A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109632;
      *(v10 + 4) = v6;
      *(v10 + 8) = 1024;
      *(v10 + 10) = v3;
      *(v10 + 14) = 1024;
      *(v10 + 16) = v5 & 1;
      _os_log_impl(&dword_0, v8, v9, "Auto Downloads Allowed: %{BOOL}d - isAppInstallationAllowed: %{BOOL}d, isAutomaticAppDownloadsAllowed: %{BOOL}d", v10, 0x14u);
    }
  }

  else
  {
    v11 = v0 + *(type metadata accessor for AppStoreSettingsView() + 48);
    v2 = sub_39E78();
    v12 = sub_3A888();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v2, v12, "Failed to get MCProfileConnection for auto downloads", v13, 2u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t sub_20CD0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v7 = sub_3CB4(&qword_52A70, &qword_3D6C8);
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  __chkstk_darwin(v7);
  v79 = &v75[-v9];
  v80 = sub_3CB4(&qword_52A78, &qword_3D6D0);
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v82 = &v75[-v11];
  v83 = sub_3CB4(&qword_52A80, &qword_3D6D8);
  v78 = *(v83 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v83);
  v77 = &v75[-v13];
  v14 = sub_3CB4(&qword_52A88, &qword_3D6E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v81 = &v75[-v17];
  v18 = sub_3CB4(&qword_52A90, &qword_3D6E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v90 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v75[-v22];
  v24 = sub_3CB4(&qword_52A98, &qword_3D6F0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v88 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v89 = &v75[-v29];
  v30 = __chkstk_darwin(v28);
  v92 = &v75[-v31];
  __chkstk_darwin(v30);
  v95 = &v75[-v32];
  sub_3A7F8();
  v87 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v93 = v23;
  v94 = v7;
  if (a1)
  {
    v76 = a3;
    v84 = v15;
    v85 = v14;
    v33 = (a2 + *(type metadata accessor for AppStoreSettingsView() + 24));
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v33 + 16);
    type metadata accessor for AppStoreSettingsViewModel();
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
    v37 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v98 == 1)
    {
      v97 = 0;
      v38 = sub_3A518();
    }

    else
    {
      v40 = sub_39F98();
      swift_getKeyPath();
      sub_3A008();
    }

    __chkstk_darwin(v38);
    *&v75[-16] = a2;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720);
    v41 = v95;
    sub_3A4D8();
    v7 = v94;
    v86 = *(v96 + 56);
    v86(v41, 0, 1, v94);
    v23 = v93;
    v15 = v84;
    v14 = v85;
    if (v76)
    {
      goto LABEL_10;
    }

LABEL_7:
    v39 = 1;
    goto LABEL_19;
  }

  v86 = *(v96 + 56);
  v86(v95, 1, 1, v7);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v42 = [objc_opt_self() isAutomaticUpdateAuthorizationEnabled];
  if (v42)
  {
    __chkstk_darwin(v42);
    *&v75[-16] = a2;
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_3CB4(&qword_52AC8, &qword_3D758);
    sub_6254(&unk_52AD0, &qword_52AC8, &qword_3D758);
    sub_8A10();
    v43 = v77;
    sub_39FC8();
    v44 = v78;
    v45 = v83;
    (*(v78 + 16))(v82, v43, v83);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52AB8, &qword_52A80, &qword_3D6D8);
    sub_6254(&qword_52AC0, &qword_52A70, &qword_3D6C8);
    v46 = v81;
    sub_3A1A8();
    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v84 = v15;
    v85 = v14;
    v47 = a2;
    v48 = (a2 + *(type metadata accessor for AppStoreSettingsView() + 24));
    v49 = *v48;
    v50 = v48[1];
    v51 = *(v48 + 16);
    type metadata accessor for AppStoreSettingsViewModel();
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
    v52 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v98 == 1)
    {
      v97 = 0;
      v53 = sub_3A518();
    }

    else
    {
      v54 = sub_39F98();
      swift_getKeyPath();
      sub_3A008();
    }

    __chkstk_darwin(v53);
    *&v75[-16] = v47;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    a2 = v47;
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720);
    v55 = v79;
    sub_3A4D8();
    v56 = v96;
    (*(v96 + 16))(v82, v55, v7);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52AB8, &qword_52A80, &qword_3D6D8);
    sub_6254(&qword_52AC0, &qword_52A70, &qword_3D6C8);
    v46 = v81;
    sub_3A1A8();
    (*(v56 + 8))(v55, v7);
    v23 = v93;
    v15 = v84;
    v14 = v85;
  }

  sub_8750(v46, v23, &qword_52A88, &qword_3D6E0);
  v39 = 0;
LABEL_19:
  v57 = 1;
  (*(v15 + 56))(v23, v39, 1, v14);
  v58 = (a2 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v58 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v62 = a2;
  v63 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((v98 & 1) == 0)
  {
    v64 = sub_39F98();
    swift_getKeyPath();
    sub_3A008();

    __chkstk_darwin(v65);
    *&v75[-16] = v62;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720);
    sub_3A4D8();
    v57 = 0;
  }

  v66 = v92;
  v86(v92, v57, 1, v94);
  v67 = v95;
  v68 = v89;
  sub_1A5AC(v95, v89, &qword_52A98, &qword_3D6F0);
  v69 = v93;
  v70 = v90;
  sub_1A5AC(v93, v90, &qword_52A90, &qword_3D6E8);
  v71 = v88;
  sub_1A5AC(v66, v88, &qword_52A98, &qword_3D6F0);
  v72 = v91;
  sub_1A5AC(v68, v91, &qword_52A98, &qword_3D6F0);
  v73 = sub_3CB4(&qword_52AB0, &qword_3D728);
  sub_1A5AC(v70, v72 + *(v73 + 48), &qword_52A90, &qword_3D6E8);
  sub_1A5AC(v71, v72 + *(v73 + 64), &qword_52A98, &qword_3D6F0);
  sub_1A614(v66, &qword_52A98, &qword_3D6F0);
  sub_1A614(v69, &qword_52A90, &qword_3D6E8);
  sub_1A614(v67, &qword_52A98, &qword_3D6F0);
  sub_1A614(v71, &qword_52A98, &qword_3D6F0);
  sub_1A614(v70, &qword_52A90, &qword_3D6E8);
  sub_1A614(v68, &qword_52A98, &qword_3D6F0);
}

uint64_t sub_21B68@<X0>(uint64_t a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_3A188();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_3CB4(&qword_52B00, &qword_3D7A0);
  v3 = *(v2 + 44);
  __chkstk_darwin(v2);
  sub_3CB4(&qword_52B08, qword_3D7A8);
  sub_6254(&unk_52B10, &qword_52B08, qword_3D7A8);
  sub_39F48();
}

uint64_t sub_21D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v69 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_34418(v6);
  v72 = sub_3A708();
  v73 = v7;
  v67 = sub_6144();
  v8 = sub_3A2E8();
  v10 = v9;
  v12 = v11;
  v68 = v13;
  v14 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = type metadata accessor for AppStoreSettingsViewModel();
  v19 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v63 = v16;
  v64 = v15;
  v62 = v17;
  v60 = v19;
  v61 = v18;
  v20 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v72 == 1)
  {
    v21 = sub_3A3F8();
  }

  else
  {
    v22 = [objc_opt_self() labelColor];
    v21 = sub_3A3E8();
  }

  v72 = v21;
  v23 = sub_3A2C8();
  v25 = v24;
  v27 = v26;
  sub_AC60(v8, v10, v12 & 1);

  sub_3A298();
  v28 = sub_3A2D8();
  v65 = v29;
  v66 = v28;
  v59 = v30;
  v68 = v31;

  sub_AC60(v23, v25, v27 & 1);

  sub_34740(v6);
  v72 = sub_3A708();
  v73 = v32;
  v33 = sub_3A2E8();
  v35 = v34;
  v37 = v36;
  v38 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v72 == 1)
  {
    v39 = sub_3A3F8();
  }

  else
  {
    v39 = sub_3A418();
  }

  v72 = v39;
  v40 = sub_3A2C8();
  v42 = v41;
  v44 = v43;
  sub_AC60(v33, v35, v37 & 1);

  sub_3A2A8();
  v45 = sub_3A2D8();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  sub_AC60(v40, v42, v44 & 1);

  v52 = v59 & 1;
  v70 = v59 & 1;
  LOBYTE(v72) = v59 & 1;
  v71 = v49 & 1;
  v54 = v65;
  v53 = v66;
  v55 = v58;
  *v58 = v66;
  v55[1] = v54;
  *(v55 + 16) = v52;
  v55[3] = v68;
  v55[4] = v45;
  v55[5] = v47;
  *(v55 + 48) = v49 & 1;
  v55[7] = v51;
  sub_3CA4(v53, v54, v52);

  sub_3CA4(v45, v47, v49 & 1);

  sub_AC60(v45, v47, v49 & 1);

  sub_AC60(v53, v54, v70);
}

uint64_t sub_221F0@<X0>(uint64_t a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_3A188();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_3CB4(&qword_52AE0, &qword_3D788);
  v3 = *(v2 + 44);
  __chkstk_darwin(v2);
  sub_3CB4(&qword_52AE8, &qword_3D790);
  sub_6254(&qword_52AF0, &qword_52AE8, &qword_3D790);
  sub_39F48();
}

uint64_t sub_223A8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v69 = a3;
  v74 = a4;
  v6 = sub_39B68();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v75 = sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  v64[0] = v9;
  v113 = sub_3A708();
  v114 = v11;
  v68 = sub_6144();
  v12 = sub_3A2E8();
  v14 = v13;
  v16 = v15;
  v73 = v17;
  v18 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = type metadata accessor for AppStoreSettingsViewModel();
  v23 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v66 = v20;
  v67 = v19;
  v65 = v21;
  v64[1] = v23;
  v64[2] = v22;
  v24 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v113 == 1)
  {
    sub_3A3F8();
    v25 = sub_3A408();
  }

  else
  {
    v26 = [objc_opt_self() labelColor];
    v25 = sub_3A3E8();
  }

  v113 = v25;
  v27 = sub_3A2C8();
  v29 = v28;
  v31 = v30;
  sub_AC60(v12, v14, v16 & 1);

  sub_3A298();
  v32 = sub_3A2D8();
  v71 = v33;
  v72 = v32;
  v35 = v34;
  v73 = v36;

  sub_AC60(v27, v29, v31 & 1);

  sub_3A568();
  v37 = sub_3A038();
  v70 = v35 & 1;
  v135 = v35 & 1;
  v69(v37);
  v113 = sub_3A708();
  v114 = v38;
  v39 = sub_3A2E8();
  v41 = v40;
  v43 = v42;
  v44 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v113 == 1)
  {
    sub_3A3F8();
    v45 = sub_3A408();
  }

  else
  {
    v45 = sub_3A418();
  }

  v113 = v45;
  v46 = sub_3A2C8();
  v48 = v47;
  v50 = v49;
  sub_AC60(v39, v41, v43 & 1);

  sub_3A2A8();
  v51 = sub_3A2D8();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_AC60(v46, v48, v50 & 1);

  sub_3A568();
  sub_3A038();
  v58 = v55 & 1;
  v126 = v55 & 1;
  v60 = v71;
  v59 = v72;
  *&v84 = v72;
  *(&v84 + 1) = v71;
  v61 = v70;
  LOBYTE(v85) = v70;
  *(&v85 + 1) = *v134;
  DWORD1(v85) = *&v134[3];
  v62 = v73;
  *(&v85 + 1) = v73;
  v90 = v131;
  v91 = v132;
  v92 = v133;
  v86 = v127;
  v87 = v128;
  v88 = v129;
  v89 = v130;
  v76[6] = v131;
  v76[7] = v132;
  v76[2] = v127;
  v76[3] = v128;
  v76[4] = v129;
  v76[5] = v130;
  v76[0] = v84;
  v76[1] = v85;
  *&v93 = v51;
  *(&v93 + 1) = v53;
  LOBYTE(v94) = v58;
  *(&v94 + 1) = *v125;
  DWORD1(v94) = *&v125[3];
  *(&v94 + 1) = v57;
  v99 = v81;
  v100 = v82;
  v101 = v83;
  v95 = v77;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v76[12] = v78;
  v76[13] = v79;
  v76[10] = v94;
  v76[11] = v77;
  v76[14] = v80;
  v76[15] = v81;
  v76[16] = v82;
  v76[17] = v83;
  v76[8] = v133;
  v76[9] = v93;
  memcpy(v74, v76, 0x120uLL);
  v102[0] = v51;
  v102[1] = v53;
  v103 = v58;
  *v104 = *v125;
  *&v104[3] = *&v125[3];
  v105 = v57;
  v110 = v81;
  v111 = v82;
  v112 = v83;
  v106 = v77;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  sub_1A5AC(&v84, &v113, &qword_52AF8, &qword_3D798);
  sub_1A5AC(&v93, &v113, &qword_52AF8, &qword_3D798);
  sub_1A614(v102, &qword_52AF8, &qword_3D798);
  v113 = v59;
  v114 = v60;
  v115 = v61;
  *v116 = *v134;
  *&v116[3] = *&v134[3];
  v117 = v62;
  v122 = v131;
  v123 = v132;
  v124 = v133;
  v118 = v127;
  v119 = v128;
  v120 = v129;
  v121 = v130;
  sub_1A614(&v113, &qword_52AF8, &qword_3D798);
}

uint64_t sub_22AD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v12 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (LOBYTE(v23[0]) == 1)
  {
    sub_353E0(v7);
    v23[0] = sub_3A708();
    v23[1] = v13;
    sub_6144();
    v14 = sub_3A2E8();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v22 = v18 & 1;
  }

  else
  {

    v14 = 0;
    v16 = 0;
    v22 = 0;
    v20 = 0;
  }

  *a2 = v14;
  a2[1] = v16;
  a2[2] = v22;
  a2[3] = v20;
  return result;
}

uint64_t sub_22CE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = sub_3CB4(&qword_52A20, &qword_3D668);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = __chkstk_darwin(v3);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v39 - v7;
  v8 = sub_3CB4(&qword_528F8, &qword_3D220);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  sub_3A7F8();
  v41 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v18 = sub_39F98();
  swift_getKeyPath();
  sub_3A008();

  __chkstk_darwin(v51);
  *(&v39 - 2) = a1;
  v49 = v13;
  v19 = sub_3A4D8();
  v40 = &v39;
  __chkstk_darwin(v19);
  *(&v39 - 2) = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_3A078();
  v22 = v21;
  v23 = sub_39F88();
  v24 = sub_39EA8();

  v51 = v20;
  v52 = v22;
  v53 = v24;
  v54 = v23;
  sub_3CB4(&qword_52A28, &qword_3D698);
  sub_3CB4(&qword_527B8, &qword_3D180);
  sub_6254(&qword_52A30, &qword_52A28, &qword_3D698);
  sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
  v25 = v50;
  sub_39FC8();
  v26 = v42;
  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v44;
  v28(v42, v49, v44);
  v30 = v47;
  v40 = *(v47 + 16);
  v31 = v45;
  v32 = v25;
  v33 = v48;
  (v40)(v45, v32, v48);
  v34 = v46;
  v28(v46, v26, v29);
  v35 = sub_3CB4(&qword_52A38, &qword_3D6A0);
  (v40)(&v34[*(v35 + 48)], v31, v33);
  v36 = *(v30 + 8);
  v36(v50, v33);
  v37 = *(v27 + 8);
  v37(v49, v29);
  v36(v31, v33);
  v37(v26, v29);
}

uint64_t sub_23290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v29 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_35708(v7);
  v30 = sub_3A708();
  v31 = v8;
  sub_6144();
  v9 = sub_3A2E8();
  v11 = v10;
  v13 = v12;
  v14 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v18 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v30 == 1)
  {
    v19 = [objc_opt_self() labelColor];
    v20 = sub_3A3E8();
  }

  else
  {
    sub_3A3F8();
    v20 = sub_3A408();
  }

  v30 = v20;
  v21 = sub_3A2C8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_AC60(v9, v11, v13 & 1);

  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  return result;
}

double sub_2353C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_3A168();
  v18 = 1;
  sub_236B8(a1, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_1A5AC(&v19, &v10, &qword_52A40, &qword_3D6A8);
  sub_1A614(v25, &qword_52A40, &qword_3D6A8);

  *&v17[87] = v24;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  *&v17[7] = v19;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  result = *v17;
  v8 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v8;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 112) = *&v17[95];
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_236B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v49 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_33114(v6);
  *&v53 = sub_3A708();
  *(&v53 + 1) = v7;
  sub_6144();
  v8 = sub_3A2E8();
  v10 = v9;
  v12 = v11;
  v13 = *(type metadata accessor for AppStoreSettingsView() + 24);
  v43 = a1;
  v14 = (a1 + v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = type metadata accessor for AppStoreSettingsViewModel();
  v19 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v46 = v16;
  v45 = v17;
  v44 = v18;
  v42 = v19;
  v20 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v53 == 1)
  {
    v21 = [objc_opt_self() labelColor];
    v22 = sub_3A3E8();
  }

  else
  {
    v22 = sub_3A3F8();
  }

  *&v53 = v22;
  v23 = sub_3A2C8();
  v47 = v24;
  v48 = v23;
  HIDWORD(v40) = v25;
  v50 = v26;
  sub_AC60(v8, v10, v12 & 1);

  sub_23B04(v43, &v53);
  v27 = v53;
  v29 = v54;
  v28 = v55;
  v30 = v56;
  v31 = v57;
  v32 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v53 == 1)
  {
    v33 = sub_3A418();
  }

  else
  {
    v33 = sub_3A3F8();
  }

  v46 = v33;
  v34 = BYTE4(v40) & 1;
  LOBYTE(v53) = BYTE4(v40) & 1;
  v52 = 1;
  v51 = v31;
  v35 = v31;
  v37 = v47;
  v36 = v48;
  v38 = v41;
  *v41 = v48;
  v38[1] = v37;
  *(v38 + 16) = v34;
  v38[3] = v50;
  v38[4] = 0;
  *(v38 + 40) = 1;
  *(v38 + 3) = v27;
  v38[8] = v29;
  v38[9] = v28;
  *(v38 + 80) = v30;
  *(v38 + 81) = v35;
  v38[11] = v33;
  sub_3CA4(v36, v37, v34);

  sub_2A680(v27, *(&v27 + 1), v29, v28, v30, v35, sub_2A434, sub_2A63C);

  sub_2A680(v27, *(&v27 + 1), v29, v28, v30, v35, sub_2A518, sub_2A698);

  sub_AC60(v36, v37, v34);
}

uint64_t sub_23B04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_39D48();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v45 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v15 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v16 = (*(v47 + 88))(v10, v48);
  if (v16 == enum case for CellularSettings.Prompt.always(_:))
  {
    sub_32708(v6);
    *&v52 = sub_3A708();
    *(&v52 + 1) = v17;
    sub_6144();
    v18 = sub_3A2E8();
    v20 = v19;
    *&v49 = v18;
    *(&v49 + 1) = v19;
    v22 = v21 & 1;
    *&v50 = v21 & 1;
    *(&v50 + 1) = v23;
    LOBYTE(v51) = 0;
    sub_3CA4(v18, v19, v21 & 1);

    sub_3A1A8();
    v49 = v52;
    v50 = v53;
    LOBYTE(v51) = v54;
    HIBYTE(v51) = 1;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
  }

  else
  {
    if (v16 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v24 = sub_39F88();
      sub_129A0();
      v26 = v25;
      v28 = v27;

      sub_32368(v26, v28, v6);

      *&v52 = sub_3A708();
      *(&v52 + 1) = v29;
      sub_6144();
      v30 = sub_3A2E8();
      v18 = v30;
      v20 = v31;
      v22 = v32 & 1;
      *&v49 = v30;
      *(&v49 + 1) = v31;
      *&v50 = v32 & 1;
      *(&v50 + 1) = v33;
      LOBYTE(v51) = 1;
    }

    else
    {
      if (v16 != enum case for CellularSettings.Prompt.never(_:))
      {
        v49 = 0u;
        v50 = 0u;
        LOBYTE(v51) = 1;
        sub_3A1A8();
        v49 = v52;
        v50 = v53;
        LOBYTE(v51) = v54;
        HIBYTE(v51) = 1;
        sub_3CB4(&qword_528F0, &qword_3C568);
        sub_3CB4(&qword_521F8, &qword_3C570);
        sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
        sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
        sub_3A1A8();
        v43 = v53;
        v44 = v52;
        v40 = v54;
        v41 = v55;
        (*(v47 + 8))(v10, v48);

        v39 = v43;
        v38 = v44;
        goto LABEL_11;
      }

      sub_32348(v6);
      *&v52 = sub_3A708();
      *(&v52 + 1) = v34;
      sub_6144();
      v30 = sub_3A2E8();
      v18 = v30;
      v20 = v31;
      *&v49 = v30;
      *(&v49 + 1) = v31;
      v22 = v35 & 1;
      *&v50 = v35 & 1;
      *(&v50 + 1) = v36;
      LOBYTE(v51) = 0;
    }

    sub_3CA4(v30, v31, v22);

    sub_3A1A8();
    v49 = v52;
    v50 = v53;
    v51 = v54;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
  }

  sub_3A1A8();
  sub_AC60(v18, v20, v22);

  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
LABEL_11:
  v42 = v46;
  *v46 = v38;
  v42[1] = v39;
  *(v42 + 32) = v40;
  *(v42 + 33) = v41;
  return result;
}

uint64_t sub_241BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_39D48();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v45 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v15 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v16 = (*(v47 + 88))(v10, v48);
  if (v16 == enum case for CellularSettings.Prompt.always(_:))
  {
    sub_32724(v6);
    *&v52 = sub_3A708();
    *(&v52 + 1) = v17;
    sub_6144();
    v18 = sub_3A2E8();
    v20 = v18;
    v21 = v19;
    *&v49 = v18;
    *(&v49 + 1) = v19;
    v23 = v22 & 1;
    *&v50 = v22 & 1;
    *(&v50 + 1) = v24;
    LOBYTE(v51) = 0;
LABEL_7:
    sub_3CA4(v18, v19, v23);

    sub_3A1A8();
    v49 = v52;
    v50 = v53;
    v51 = v54;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    goto LABEL_8;
  }

  if (v16 == enum case for CellularSettings.Prompt.overLimit(_:))
  {
    v25 = sub_39F88();
    sub_129A0();
    v27 = v26;
    v29 = v28;

    sub_32A4C(v27, v29, v6);

    *&v52 = sub_3A708();
    *(&v52 + 1) = v30;
    sub_6144();
    v18 = sub_3A2E8();
    v20 = v18;
    v21 = v19;
    v23 = v31 & 1;
    *&v49 = v18;
    *(&v49 + 1) = v19;
    *&v50 = v31 & 1;
    *(&v50 + 1) = v32;
    LOBYTE(v51) = 1;
    goto LABEL_7;
  }

  if (v16 != enum case for CellularSettings.Prompt.never(_:))
  {
    v49 = 0u;
    v50 = 0u;
    LOBYTE(v51) = 1;
    sub_3A1A8();
    v49 = v52;
    v50 = v53;
    LOBYTE(v51) = v54;
    HIBYTE(v51) = 1;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    sub_3A1A8();
    v43 = v53;
    v44 = v52;
    v36 = v54;
    v37 = v55;
    (*(v47 + 8))(v10, v48);

    v35 = v43;
    v34 = v44;
    goto LABEL_9;
  }

  sub_32DE8(v6);
  *&v52 = sub_3A708();
  *(&v52 + 1) = v39;
  sub_6144();
  v20 = sub_3A2E8();
  v21 = v40;
  *&v49 = v20;
  *(&v49 + 1) = v40;
  v23 = v41 & 1;
  *&v50 = v41 & 1;
  *(&v50 + 1) = v42;
  LOBYTE(v51) = 0;
  sub_3CA4(v20, v40, v41 & 1);

  sub_3A1A8();
  v49 = v52;
  v50 = v53;
  LOBYTE(v51) = v54;
  HIBYTE(v51) = 1;
  sub_3CB4(&qword_528F0, &qword_3C568);
  sub_3CB4(&qword_521F8, &qword_3C570);
  sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
  sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
LABEL_8:
  sub_3A1A8();
  sub_AC60(v20, v21, v23);

  v34 = v52;
  v35 = v53;
  v36 = v54;
  v37 = v55;
LABEL_9:
  v38 = v46;
  *v46 = v34;
  v38[1] = v35;
  *(v38 + 32) = v36;
  *(v38 + 33) = v37;
  return result;
}

uint64_t sub_24874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_3A7F8();
  v20[2] = sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v20[1] = v20;
  __chkstk_darwin(isCurrentExecutor);
  v20[0] = v19;
  v19[2] = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v4 = sub_3A078();
  v6 = v5;
  v7 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = sub_39F88();
  v12 = sub_39EA8();

  v22 = v4;
  v23 = v6;
  v24 = v12;
  v25 = v11;
  sub_3CB4(&qword_529B0, &qword_3D510);
  sub_3CB4(&qword_527E0, &qword_3D190);
  sub_29F70();
  sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
  v13 = v21;
  sub_39FC8();
  v14 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  LOBYTE(v11) = v22;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;

  result = sub_3CB4(&qword_528A8, &qword_3D1F8);
  v18 = (v13 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_2ABB0;
  v18[2] = v16;
  return result;
}

double sub_24BC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppStoreSettingsView();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_3A168();
  v25 = 1;
  sub_24E20(a1, &v18);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v26 = v18;
  v27 = v19;
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v32[5] = v23;
  v32[0] = v18;
  v32[1] = v19;
  sub_1A5AC(&v26, &v17, &qword_529D0, &qword_3D520);
  sub_1A614(v32, &qword_529D0, &qword_3D520);
  *&v24[39] = v28;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = v25;
  sub_296EC(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v8 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v9 = swift_allocObject();
  sub_28818(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  v10 = *&v24[32];
  *(a2 + 65) = *&v24[48];
  v11 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v11;
  result = *v24;
  v13 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v13;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  v14 = *&v24[95];
  *(a2 + 49) = v10;
  *(a2 + 112) = v14;
  *(a2 + 120) = sub_2A27C;
  *(a2 + 128) = v9;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

uint64_t sub_24E20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v50 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_32020(v6);
  v54 = sub_3A708();
  v55 = v7;
  sub_6144();
  v8 = sub_3A2E8();
  v10 = v9;
  v12 = v11;
  v13 = *(type metadata accessor for AppStoreSettingsView() + 24);
  v46 = a1;
  v14 = (a1 + v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = type metadata accessor for AppStoreSettingsViewModel();
  v19 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v49 = v16;
  v48 = v17;
  v47 = v18;
  v43 = v19;
  v20 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v54 == 1)
  {
    v21 = sub_3A3F8();
  }

  else
  {
    v22 = [objc_opt_self() labelColor];
    v21 = sub_3A3E8();
  }

  v54 = v21;
  v23 = sub_3A2C8();
  v44 = v24;
  v45 = v23;
  HIDWORD(v41) = v25;
  v51 = v26;
  sub_AC60(v8, v10, v12 & 1);

  sub_2521C(v46, &v54);
  v27 = v54;
  v28 = v55;
  v30 = v56;
  v29 = v57;
  v31 = v58;
  v32 = v59;
  v33 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v54 == 1)
  {
    v34 = sub_3A3F8();
  }

  else
  {
    v34 = sub_3A418();
  }

  v49 = v34;
  v35 = BYTE4(v41) & 1;
  LOBYTE(v54) = BYTE4(v41) & 1;
  v53 = 1;
  v52 = v32;
  v36 = v32;
  v38 = v44;
  v37 = v45;
  v39 = v42;
  *v42 = v45;
  v39[1] = v38;
  *(v39 + 16) = v35;
  v39[3] = v51;
  v39[4] = 0;
  *(v39 + 40) = 1;
  v39[6] = v27;
  v39[7] = v28;
  v39[8] = v30;
  v39[9] = v29;
  *(v39 + 40) = v31;
  *(v39 + 82) = v36;
  v39[11] = v34;
  sub_3CA4(v37, v38, v35);

  sub_2A38C(v27, v28, v30, v29, v31, v36);

  sub_2A470(v27, v28, v30, v29, v31, v36);

  sub_AC60(v37, v38, v35);
}

id sub_2521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[0] = a2;
  v3 = sub_39B68();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v43 - v8;
  sub_3A7F8();
  v43[1] = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v14 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v48)
  {
    sub_319CC(v9);
    *&v48 = sub_3A708();
    *(&v48 + 1) = v15;
    sub_6144();
    *&v44 = sub_3A2E8();
    *(&v44 + 1) = v16;
    *&v45 = v17 & 1;
    *(&v45 + 1) = v18;
    v46 = 0;
    v47 = 1;
LABEL_19:
    sub_3CB4(&qword_529D8, &qword_3D578);
    sub_2A55C();
    sub_3A1A8();

    v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v43[0];
    *v43[0] = v48;
    *(v42 + 16) = v39;
    *(v42 + 32) = v40;
    *(v42 + 34) = v41;
    return result;
  }

  v19 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (!v48)
  {
    sub_31054(v9);
    *&v48 = sub_3A708();
    *(&v48 + 1) = v23;
    sub_6144();
    v24 = sub_3A2E8();
    v26 = v24;
    v27 = v25;
    *&v44 = v24;
    *(&v44 + 1) = v25;
    v29 = v28 & 1;
    *&v45 = v28 & 1;
    *(&v45 + 1) = v30;
    LOBYTE(v46) = 0;
LABEL_14:
    sub_3CA4(v24, v25, v29);

    sub_3A1A8();
    v44 = v48;
    v45 = v49;
    v46 = v50;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_3A1A8();
    sub_AC60(v26, v27, v29);

    goto LABEL_15;
  }

  if (v48 != 1)
  {
    sub_319CC(v9);
    *&v48 = sub_3A708();
    *(&v48 + 1) = v31;
    sub_6144();
    *&v44 = sub_3A2E8();
    *(&v44 + 1) = v33;
    *&v45 = v32 & 1;
    *(&v45 + 1) = v34;
    v46 = 256;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_3A1A8();
LABEL_15:
    if (HIBYTE(v50))
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    v44 = v48;
    v45 = v49;
    v46 = v38 | v50;
    v47 = 0;
    goto LABEL_19;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v21 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_3137C(v7);
    }

    else
    {
      sub_316A4(v7);
    }

    *&v48 = sub_3A708();
    *(&v48 + 1) = v35;
    sub_6144();
    v24 = sub_3A2E8();
    v26 = v24;
    v27 = v25;
    v29 = v36 & 1;
    *&v44 = v24;
    *(&v44 + 1) = v25;
    *&v45 = v36 & 1;
    *(&v45 + 1) = v37;
    LOBYTE(v46) = 1;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_25760(uint64_t a1)
{
  v2 = sub_3CB4(&unk_524C0, &qword_3C850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v10 = sub_39F88();
  v11 = sub_3A818();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = v10;
  v13 = sub_3A7E8();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_DD34(0, 0, v5, &unk_3D528, v14);
}

uint64_t sub_2596C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v3 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_39B68();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v9 = __chkstk_darwin(v7);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  sub_3A7F8();
  v38 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v17 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v45 == 1)
  {
    sub_33A8C(v12);
    *&v45 = sub_3A708();
    *(&v45 + 1) = v18;
    sub_6144();
    v40 = sub_3A2E8();
    v41 = v19;
    v42 = v20 & 1;
    v43 = v21;
    v44 = 0;
    sub_3A1A8();
LABEL_8:

    v26 = v45;
    v28 = v46;
    v27 = v47;
    goto LABEL_9;
  }

  v22 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v24 = v36;
  v23 = v37;
  if ((*(v36 + 48))(v6, 1, v37) != 1)
  {
    v29 = v35;
    (*(v24 + 32))(v35, v6, v23);
    (*(v24 + 16))(v12, v29, v23);
    *&v45 = sub_3A708();
    *(&v45 + 1) = v30;
    sub_6144();
    v40 = sub_3A2E8();
    v41 = v31;
    v42 = v32 & 1;
    v43 = v33;
    v44 = 1;
    sub_3A1A8();
    (*(v24 + 8))(v29, v23);
    goto LABEL_8;
  }

  sub_1A614(v6, &qword_524A8, &qword_3C7E0);

  v26 = 0uLL;
  v27 = -1;
  v28 = 0uLL;
LABEL_9:
  v34 = v39;
  *v39 = v26;
  v34[1] = v28;
  *(v34 + 32) = v27;
  return result;
}

void sub_25DBC(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v6 = sub_39F88();
  sub_13924();
}

uint64_t sub_25F04(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v6 = sub_39F98();
  swift_getKeyPath();
  sub_3A008();

  sub_3A4D8();
}

uint64_t sub_260BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v2 = sub_3CB4(&qword_52980, &qword_3D300);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v34 - v6;
  v7 = type metadata accessor for AppStoreSettingsView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  sub_3A7F8();
  v36 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v34;
  sub_296EC(v34, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_28818(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_3A498();
  v21 = v18 + *(v7 + 24);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v25 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v39 == 1)
  {
    sub_3A498();
    v26 = v35;
    (*(v11 + 32))(v35, v15, v10);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v35;
  }

  (*(v11 + 56))(v26, v27, 1, v10);
  v28 = *(v11 + 16);
  v28(v15, v17, v10);
  v29 = v38;
  sub_1A5AC(v26, v38, &qword_52980, &qword_3D300);
  v30 = v37;
  v28(v37, v15, v10);
  v31 = sub_3CB4(&qword_52988, &unk_3D350);
  sub_1A5AC(v29, &v30[*(v31 + 48)], &qword_52980, &qword_3D300);
  sub_1A614(v26, &qword_52980, &qword_3D300);
  v32 = *(v11 + 8);
  v32(v17, v10);
  sub_1A614(v29, &qword_52980, &qword_3D300);
  v32(v15, v10);
}

uint64_t sub_265E0(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 36));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

id sub_266DC()
{
  v0 = sub_3CB4(&qword_52710, &qword_3D120);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_39BF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = [objc_opt_self() ams_sharedAccountStore];
  v10 = [v9 ams_activeiTunesAccount];

  if (!v10)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_11:
    sub_1A614(&v22, &qword_52990, qword_3C2D0);
    goto LABEL_12;
  }

  if ([v10 ams_accountFlagValueForAccountFlag:AMSAccountFlagPersonalization])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v11 = v20;
    goto LABEL_13;
  }

LABEL_12:
  v11 = 0;
LABEL_13:
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_3AA38(51);
  v24._object = 0x800000000003E870;
  v24._countAndFlagsBits = 0xD000000000000031;
  sub_3A748(v24);
  if (v11)
  {
    v12._countAndFlagsBits = 1702195828;
  }

  else
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v12._object = v13;
  sub_3A748(v12);

  sub_39BD8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

    sub_1A614(v3, &qword_52710, &qword_3D120);
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;

    sub_39BB8(v16);
    v18 = v17;
    sub_29D78(&_swiftEmptyArrayStorage);
    isa = sub_3A638().super.isa;

    [v15 openSensitiveURL:v18 withOptions:isa];

    (*(v5 + 8))(v8, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B04@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_39B68();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  sub_3A708();
  sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_26C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for AppStoreSettingsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_39B68();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  sub_3A7F8();
  v41 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_376C0(v9);
  v43 = sub_3A708();
  v44 = v14;
  sub_296EC(a1, v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_28818(v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_6144();
  sub_3A4B8();
  v37 = sub_3A178();
  v36 = v17;
  v18 = a1 + *(v3 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);
  v46 = v19;
  v47 = v20;
  v38 = sub_3CB4(&unk_527F0, &qword_3D198);
  v21 = sub_3A478();
  v33 = v32;
  v32[1] = v45;
  __chkstk_darwin(v21);
  v35 = a1;
  sub_3CB4(&qword_52958, &qword_3D2B0);
  v34 = v3;
  sub_6254(&qword_52960, &qword_52950, &qword_3D2A8);
  sub_6254(&qword_52968, &qword_52958, &qword_3D2B0);
  v22 = v40;
  v23 = v42;
  sub_3A378();

  (*(v39 + 8))(v13, v22);
  v24 = v35 + *(v34 + 32);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v43) = v25;
  v44 = v26;
  sub_3A458();
  v27 = v46;
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;

  result = sub_3CB4(&qword_52940, &qword_3D2A0);
  v31 = (v23 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = sub_29A38;
  v31[2] = v29;
  return result;
}

uint64_t sub_27118(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for AppStoreSettingsView() + 28));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

uint64_t sub_271F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v44 = a2;
  v2 = type metadata accessor for AppStoreSettingsView();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_3CB4(&qword_52970, &qword_3D2E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_39B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v42 = &v37 - v18;
  v19 = __chkstk_darwin(v17);
  v41 = &v37 - v20;
  __chkstk_darwin(v19);
  v38 = &v37 - v21;
  sub_3A7F8();
  v40 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_376C0(v11);
  v45 = sub_3A708();
  v46 = v22;
  sub_39F18();
  v23 = sub_39F38();
  v24 = *(*(v23 - 8) + 56);
  v24(v7, 0, 1, v23);
  sub_296EC(v39, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_28818(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_6144();
  v27 = v38;
  sub_3A4A8();
  sub_379EC(v11);
  v45 = sub_3A708();
  v46 = v28;
  sub_39F28();
  v24(v7, 0, 1, v23);
  v29 = v41;
  sub_3A4A8();
  v30 = v13[2];
  v31 = v42;
  v30(v42, v27, v12);
  v32 = v43;
  v30(v43, v29, v12);
  v33 = v44;
  v30(v44, v31, v12);
  v34 = sub_3CB4(&qword_52978, &qword_3D2F0);
  v30(&v33[*(v34 + 48)], v32, v12);
  v35 = v13[1];
  v35(v29, v12);
  v35(v27, v12);
  v35(v32, v12);
  v35(v31, v12);
}

uint64_t sub_276E4(uint64_t a1)
{
  v2 = sub_3CB4(&unk_524C0, &qword_3C850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for AppStoreSettingsView();
  v7 = (a1 + *(v6 + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for AppStoreSettingsViewModel();
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
  v11 = sub_39F88();
  v12 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  swift_beginAccess();
  sub_1A5AC(v11 + v12, &v22, &qword_52538, &qword_3CC00);
  if (v23)
  {
    sub_1A748(&v22, v24);
    sub_1AF88();

    sub_44BC(v24);
  }

  else
  {
    sub_1A614(&v22, &qword_52538, &qword_3CC00);
    v13 = sub_3A818();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = v11;
    v15 = sub_3A7E8();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_DD34(0, 0, v5, &unk_3D2F8, v16);
  }

  v17 = (a1 + *(v6 + 32));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v24[0]) = v18;
  v24[1] = v19;
  LOBYTE(v22) = 1;
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

uint64_t sub_279BC()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_27A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!a2)
  {
    if (a1)
    {
      sub_3CB4(&qword_52870, &qword_3D1C0);
      isa = sub_3A638().super.isa;
      v12 = [(objc_class *)isa ak_redactedCopy];

      sub_3A648();
      LODWORD(v12) = *(type metadata accessor for AppStoreSettingsView() + 48);

      v6 = sub_39E78();
      v13 = sub_3A878();

      if (!os_log_type_enabled(v6, v13))
      {

        goto LABEL_12;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      v16 = sub_3A658();
      v18 = v17;

      v19 = sub_36FC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v6, v13, "Got auth results: %s", v14, 0xCu);
      sub_44BC(v15);
    }

    else
    {
      v21 = a3 + *(type metadata accessor for AppStoreSettingsView() + 48);
      v6 = sub_39E78();
      v22 = sub_3A888();
      if (!os_log_type_enabled(v6, v22))
      {
        goto LABEL_12;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v6, v22, "Attempted surrogate auth but got neither results nor error", v23, 2u);
    }

    goto LABEL_12;
  }

  v5 = *(type metadata accessor for AppStoreSettingsView() + 48);
  swift_errorRetain();
  v6 = sub_39E78();
  v7 = sub_3A888();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Failed to authenticate using surrogate context: %@", v8, 0xCu);
    sub_1A614(v9, &qword_524F8, &qword_3C930);

LABEL_12:

    return a4(v20);
  }

  return a4(v20);
}

uint64_t sub_27DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_3CB4(&qword_52870, &qword_3D1C0);
    v4 = sub_3A648();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_27E84(uint64_t a1)
{
  v2 = sub_39F68();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_3A098();
}

uint64_t type metadata accessor for AppStoreSettingsView()
{
  result = qword_52670;
  if (!qword_52670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreSettingsRoute(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreSettingsRoute(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_28130(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3CB4(&qword_52610, "\n;");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_39E98();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_282D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_3CB4(&qword_52610, "\n;");
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_39E98();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_28464()
{
  sub_285F8(319, &qword_52680, &type metadata accessor for ScenePhase);
  if (v0 <= 0x3F)
  {
    sub_285F8(319, &qword_52688, &type metadata accessor for WithCurrentHostingControllerAction);
    if (v1 <= 0x3F)
    {
      sub_2864C();
      if (v2 <= 0x3F)
      {
        sub_286E0();
        if (v3 <= 0x3F)
        {
          sub_28730(319, &unk_526A8, &qword_51DC0, &qword_3DA50, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_28730(319, &unk_526B8, &unk_52600, &unk_3CFD0, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_39E98();
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

void sub_285F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_39F78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2864C()
{
  if (!qword_52690)
  {
    type metadata accessor for AppStoreSettingsViewModel();
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel);
    v0 = sub_39FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_52690);
    }
  }
}

void sub_286E0()
{
  if (!qword_526A0)
  {
    v0 = sub_3A488();
    if (!v1)
    {
      atomic_store(v0, &qword_526A0);
    }
  }
}

void sub_28730(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_4348(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_28798()
{
  result = qword_52708;
  if (!qword_52708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52708);
  }

  return result;
}

uint64_t sub_28818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_288AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppStoreSettingsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_28920()
{
  result = qword_52780;
  if (!qword_52780)
  {
    sub_4348(&qword_52730, &qword_3D140);
    sub_4348(&qword_52728, &qword_3D138);
    sub_4348(&qword_52720, &qword_3D130);
    sub_4348(&qword_52718, &qword_3D128);
    sub_6254(&qword_52768, &qword_52718, &qword_3D128);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6144();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52780);
  }

  return result;
}

unint64_t sub_28AB0()
{
  result = qword_52788;
  if (!qword_52788)
  {
    sub_4348(&qword_51DC0, &qword_3DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52788);
  }

  return result;
}

uint64_t sub_28B54(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2056C(a1, a2, v6);
}

uint64_t sub_28BD4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_28C1C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppStoreSettingsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20728(a1, v6, a2);
}

unint64_t sub_28C9C()
{
  result = qword_527A8;
  if (!qword_527A8)
  {
    sub_4348(&qword_52798, &qword_3D178);
    sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
    sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527A8);
  }

  return result;
}

uint64_t sub_28D80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    a4();
    sub_6254(&qword_527C8, &qword_527D0, &qword_3D188);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_28E30()
{
  result = qword_527C0;
  if (!qword_527C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527C0);
  }

  return result;
}

unint64_t sub_28E84()
{
  result = qword_527E8;
  if (!qword_527E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527E8);
  }

  return result;
}

uint64_t sub_28ED8@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20944(v4, a1);
}

uint64_t sub_28F60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_3A128();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3CB4(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_1A5AC(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_3A898();
    v22 = sub_3A288();
    sub_39E68();

    sub_3A118();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_291D0()
{
  v1 = type metadata accessor for AppStoreSettingsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_39F68();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_3A268();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_8380(*&v5[v1[6]], *&v5[v1[6] + 8], v5[v1[6] + 16]);
  v12 = *&v5[v1[7] + 8];

  v13 = *&v5[v1[8] + 8];

  v14 = *&v5[v1[9] + 8];

  v15 = &v5[v1[10]];
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = *(v15 + 3);

  v19 = &v5[v1[11]];

  v20 = *(v19 + 1);

  v21 = v1[12];
  v22 = sub_39E98();
  (*(*(v22 - 8) + 8))(&v5[v21], v22);
  v23 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_2942C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSettingsView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_27A4C(a1, a2, v2 + v6, v8);
}

uint64_t sub_294DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29510()
{
  result = qword_528B8;
  if (!qword_528B8)
  {
    sub_4348(&qword_528A8, &qword_3D1F8);
    sub_6254(&qword_528C0, &qword_528C8, &qword_3D208);
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_528B8);
  }

  return result;
}

unint64_t sub_295F4()
{
  result = qword_528E0;
  if (!qword_528E0)
  {
    sub_4348(&qword_528B0, &qword_3D200);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_528E0);
  }

  return result;
}

uint64_t sub_296EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_297CC()
{
  result = qword_52948;
  if (!qword_52948)
  {
    sub_4348(&qword_52940, &qword_3D2A0);
    sub_4348(&qword_52950, &qword_3D2A8);
    sub_4348(&qword_52958, &qword_3D2B0);
    sub_6254(&qword_52960, &qword_52950, &qword_3D2A8);
    sub_6254(&qword_52968, &qword_52958, &qword_3D2B0);
    swift_getOpaqueTypeConformance2();
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52948);
  }

  return result;
}

uint64_t sub_29974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3A0F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_299A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3A0F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_41F0;

  return sub_16D04(a1, v4, v5, v6);
}

unint64_t sub_29B1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_3AB48();
  sub_3A738();
  v6 = sub_3AB58();

  return sub_29BD8(a1, a2, v6);
}

unint64_t sub_29B94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3A9F8(*(v2 + 40));

  return sub_29C90(a1, v4);
}

unint64_t sub_29BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_3AB28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29C90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2AAC0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_3AA08();
      sub_2AB1C(v8);
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

unint64_t sub_29D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB4(&qword_52998, &qword_3D360);
    v3 = sub_3AAF8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A5AC(v4, &v13, &unk_529A0, &qword_3D368);
      v5 = v13;
      v6 = v14;
      result = sub_29B1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EA8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_29EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_29F70()
{
  result = qword_529B8;
  if (!qword_529B8)
  {
    sub_4348(&qword_529B0, &qword_3D510);
    sub_6254(&qword_529C0, &qword_529C8, &qword_3D518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_529B8);
  }

  return result;
}

uint64_t sub_2A038()
{
  v1 = type metadata accessor for AppStoreSettingsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_39F68();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_3A268();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  sub_8380(*&v5[v1[6]], *&v5[v1[6] + 8], v5[v1[6] + 16]);
  v11 = *&v5[v1[7] + 8];

  v12 = *&v5[v1[8] + 8];

  v13 = *&v5[v1[9] + 8];

  v14 = &v5[v1[10]];
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *(v14 + 3);

  v18 = &v5[v1[11]];

  v19 = *(v18 + 1);

  v20 = v1[12];
  v21 = sub_39E98();
  (*(*(v21 - 8) + 8))(&v5[v20], v21);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2A298()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_13C58(a1, v4, v5, v6);
}

uint64_t sub_2A38C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_3CA4(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A3E0(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_2A3E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_3CA4(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A434(a1, a2, a3);
  }
}

uint64_t sub_2A434(uint64_t a1, uint64_t a2, char a3)
{
  sub_3CA4(a1, a2, a3 & 1);
}

uint64_t sub_2A470(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_AC60(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A4C4(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_2A4C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_AC60(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A518(a1, a2, a3);
  }
}

uint64_t sub_2A518(uint64_t a1, uint64_t a2, char a3)
{
  sub_AC60(a1, a2, a3 & 1);
}

unint64_t sub_2A55C()
{
  result = qword_529E0;
  if (!qword_529E0)
  {
    sub_4348(&qword_529D8, &qword_3D578);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_529E0);
  }

  return result;
}

uint64_t sub_2A63C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_3CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5 & 1;
  if (a6)
  {
    return a8(a1, a2, a3, a4, v8);
  }

  else
  {
    return a7(a1, a2, a3, a4, v8);
  }
}

uint64_t sub_2A698(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_AC60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2A894()
{
  sub_4348(&qword_52750, &qword_3D160);
  sub_4348(&qword_52748, &qword_3D158);
  sub_4348(&qword_52740, &qword_3D150);
  sub_4348(&qword_52798, &qword_3D178);
  sub_4348(&qword_52738, &qword_3D148);
  sub_39F68();
  sub_4348(&qword_52730, &qword_3D140);
  sub_4348(&qword_51DC0, &qword_3DA50);
  sub_28920();
  sub_28AB0();
  swift_getOpaqueTypeConformance2();
  sub_28BD4(&qword_52790, &type metadata accessor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_4468();
  sub_28C9C();
  swift_getOpaqueTypeConformance2();
  sub_C484();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2ABB4()
{
  v1 = v0;
  v17 = 0u;
  v18 = 0u;
  if ([v0 hasValidGetter])
  {
    if ([v0 performGetter])
    {
      sub_3A938();
      swift_unknownObjectRelease();
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
    }

    else
    {
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  sub_2C0B8(&v17, &v14);
  v2 = *(&v15 + 1);
  sub_1A614(&v14, &qword_52990, qword_3C2D0);
  if (!v2 || [v1 cellType] == &dword_8 + 1)
  {
    goto LABEL_25;
  }

  if ([v1 cellType] != &dword_0 + 2 && objc_msgSend(v1, "cellType") != &dword_4)
  {
    v3 = [v1 titleDictionary];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v3 = [v1 shortTitleDictionary];
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v4 = v3;
  v5 = sub_3A648();

LABEL_14:
  sub_2C0B8(&v17, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v14 = v11;
        v15 = v12;
        v16 = v13;
        if (v5)
        {
          if (*(v5 + 16) && (v6 = sub_29B94(&v14), (v7 & 1) != 0))
          {
            sub_4508(*(v5 + 56) + 32 * v6, &v11);
            sub_2AB1C(&v14);
            sub_1A614(&v17, &qword_52990, qword_3C2D0);
          }

          else
          {

            sub_2AB1C(&v14);
            sub_1A614(&v17, &qword_52990, qword_3C2D0);
            v11 = 0u;
            v12 = 0u;
          }

          v17 = v11;
          v18 = v12;
        }

        else
        {
          sub_2AB1C(&v14);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {

    sub_1A614(v10, &qword_52990, qword_3C2D0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_1A614(&v11, &qword_52B48, &unk_3D850);
LABEL_25:
  sub_2C0B8(&v17, &v14);
  v8 = *(&v15 + 1);
  sub_1A614(&v14, &qword_52990, qword_3C2D0);
  if (!v8)
  {
    if ([v1 propertyForKey:PSValueKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
    }

    else
    {
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  v14 = v17;
  v15 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_1A614(&v14, &qword_52990, qword_3C2D0);
  }

  return 0;
}

uint64_t sub_2AF9C()
{
  if ([v0 propertyForKey:PSCellClassKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_3CB4(&qword_52B38, &qword_3D848);
    if (swift_dynamicCast())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = NSStringFromClass(ObjCClassFromMetadata);
      v3 = sub_3A6F8();
      v5 = v4;

      v6 = [v0 identifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_3A6F8();
        v10 = v9;

        if (v8 == 0x4143494649544F4ELL && v10 == 0xED0000534E4F4954)
        {

LABEL_15:

          v11 = 1;
          return v11 & 1;
        }

        v12 = sub_3AB28();

        if (v12)
        {
          goto LABEL_15;
        }
      }

      if (v3 != 0xD00000000000002BLL || 0x800000000003E8B0 != v5)
      {
        v11 = sub_3AB28();

        return v11 & 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1A614(v16, &qword_52990, qword_3C2D0);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2B1A8()
{
  if ([v0 propertyForKey:PSCellClassKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_3CB4(&qword_52B38, &qword_3D848);
    if (swift_dynamicCast())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = NSStringFromClass(ObjCClassFromMetadata);
      v3 = sub_3A6F8();

      return v3;
    }
  }

  else
  {
    sub_1A614(v7, &qword_52990, qword_3C2D0);
  }

  return 0;
}

void sub_2B2B8()
{
  v1 = [v0 identifier];
  if (!v1)
  {
LABEL_7:
    v8 = sub_2B1A8();
    if (!v9)
    {
      return;
    }

    if (v8 != 0xD00000000000002BLL || v9 != 0x800000000003E8B0)
    {
      v18 = sub_3AB28();

      if ((v18 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_3A6F8();
  v5 = v4;

  if (v3 != 0x4143494649544F4ELL || v5 != 0xED0000534E4F4954)
  {
    v7 = sub_3AB28();

    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:

LABEL_11:
  v10 = sub_2B4D4();
  if (v10)
  {
    v19 = v10;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11 && (v12 = v11, [v11 refreshCellContentsWithSpecifier:v0], (v13 = objc_msgSend(v12, "detailTextLabel")) != 0) && (v14 = v13, v15 = objc_msgSend(v13, "text"), v14, v15))
    {
      sub_3A6F8();

      v16 = sub_3A6D8();

      [v0 setProperty:v16 forKey:PSValueKey];

      v17 = v16;
    }

    else
    {
      v17 = v19;
    }
  }
}

id sub_2B4D4()
{
  result = [objc_opt_self() cellClassForSpecifier:v0];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_1AF40(0, &qword_52B28, UITableViewCell_ptr);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1AF40(0, &qword_52B30, PSTableCell_ptr);
      if ([(objc_class *)ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v3 = swift_getObjCClassFromMetadata();
          v4 = [v3 cellStyle];
          v5 = [v3 reuseIdentifierForSpecifier:v0];
          if (v5)
          {
            v6 = v5;
            sub_3A6F8();

            v7 = v0;
            v8 = sub_3A6D8();
          }

          else
          {
            v9 = v0;
            v8 = 0;
          }

          v10 = [objc_allocWithZone(v3) initWithStyle:v4 reuseIdentifier:v8 specifier:v0];

          return v10;
        }
      }

      else
      {
        return [objc_allocWithZone(ObjCClassFromMetadata) initWithStyle:1 reuseIdentifier:0];
      }
    }
  }

  return result;
}

uint64_t sub_2B668()
{
  if ([v0 cellType] == &dword_4 + 2 && objc_msgSend(v0, "hasValidGetter") && objc_msgSend(v0, "hasValidSetter"))
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_3A7F8();

    v2 = sub_3A7E8();
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = &protocol witness table for MainActor;
    v3[4] = v1;

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = sub_3A7E8();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = &protocol witness table for MainActor;
    v6[4] = v4;

    sub_3A508();
  }

  else
  {
    sub_3A518();
  }

  return v8;
}

void sub_2B818(unsigned __int8 *a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_12:
    sub_1A614(&v14, &qword_52990, qword_3C2D0);
LABEL_13:
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_3A6D8();
      v9 = [v7 propertyForKey:v8];

      if (v9)
      {
        sub_3A938();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        if (swift_dynamicCast())
        {

          goto LABEL_23;
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    sub_1A614(&v14, &qword_52990, qword_3C2D0);
    goto LABEL_22;
  }

  v3 = Strong;
  v4 = [Strong performGetter];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  sub_1AF40(0, &qword_52B40, NSObject_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = v12;
    sub_3A6E8();
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v10 = [v11 BOOLValue];

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
LABEL_24:
  *a1 = v10;
}

uint64_t sub_2BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_3AB48();
  sub_3A738();
  v7 = sub_3AB58();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_3AB28() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_2BCE8(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_allocWithZone(NSNumber) initWithBool:v1];
    [v3 performSetterWithValue:v4];
  }

  v5 = [objc_opt_self() defaultCenter];
  if (qword_51C10 != -1)
  {
    swift_once();
  }

  v6 = qword_53C28;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  [v5 postNotificationName:v6 object:v7];
}

NSString sub_2BE80()
{
  result = sub_3A6D8();
  qword_53C28 = result;
  return result;
}

void PSSpecifier.objectWillChange.getter()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_51C10 != -1)
  {
    swift_once();
  }

  sub_3A8F8();
}

unint64_t sub_2BF6C()
{
  result = qword_52B20;
  if (!qword_52B20)
  {
    sub_3A8E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B20);
  }

  return result;
}

uint64_t sub_2BFD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
  result = sub_3AA48();
  *a1 = result;
  return result;
}

uint64_t sub_2C024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2C060(unsigned __int8 *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_2B818(a1);
}

uint64_t sub_2C06C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_2C0AC(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_2BCE8(a1);
}

uint64_t sub_2C0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52990, qword_3C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_2C12C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2C140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2C188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v34 = sub_3CB4(&qword_52B78, &qword_3D908);
  v29 = *(v34 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v34);
  v9 = &v28 - v8;
  v31 = sub_3CB4(&qword_52B98, &qword_3D920);
  v10 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v12 = &v28 - v11;
  v33 = sub_3CB4(&qword_52B68, &qword_3D900);
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v33);
  v16 = &v28 - v15;
  v17 = sub_3CB4(&qword_52B50, &qword_3D8F8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v28 - v19;
  sub_3A7F8();
  v32 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_2AF9C();
  v30 = &v28;
  v22 = __chkstk_darwin(v21);
  *(&v28 - 4) = a1;
  *(&v28 - 3) = a2;
  *(&v28 - 2) = a3;
  v23 = __chkstk_darwin(v22);
  *(&v28 - 4) = a1;
  *(&v28 - 3) = a2;
  *(&v28 - 2) = a3;
  if (v23)
  {
    sub_3CB4(&qword_52BA0, &qword_3D928);
    sub_3CB4(&qword_52BA8, &unk_3D930);
    sub_6254(&qword_52BB0, &qword_52BA0, &qword_3D928);
    sub_2DBA4();
    sub_3A438();
    v24 = v33;
    (*(v13 + 16))(v12, v16, v33);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900);
    sub_2D9DC();
    sub_3A1A8();
    (*(v13 + 8))(v16, v24);
  }

  else
  {
    sub_3CB4(&qword_52B88, &unk_3D910);
    sub_3CB4(&qword_52020, &qword_3C280);
    sub_6254(&qword_52B80, &qword_52B88, &unk_3D910);
    sub_7EE4();
    sub_39FB8();
    v25 = v29;
    v26 = v34;
    (*(v29 + 16))(v12, v9, v34);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900);
    sub_2D9DC();
    sub_3A1A8();
    (*(v25 + 8))(v9, v26);
  }

  sub_2DB04(v20, v35);
}

uint64_t sub_2C764@<X0>(uint64_t a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = sub_3A188();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_3CB4(&qword_52C08, &qword_3D958);
  v3 = *(v2 + 44);
  __chkstk_darwin(v2);
  sub_3CB4(&qword_52C10, &qword_3D960);
  sub_6254(&qword_52C18, &qword_52C10, &qword_3D960);
  sub_39F48();
}

uint64_t sub_2C924@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_3A6F8();
    v8 = v7;

    v41 = v6;
    v42 = v8;
    sub_6144();
    v9 = sub_3A2E8();
    v34 = v10;
    v35 = v9;
    v33 = v11;
    v13 = v12 & 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v13 = 0;
    v33 = 0;
  }

  v32 = sub_3A298();
  KeyPath = swift_getKeyPath();
  v15 = sub_2ABB4();
  if (v16)
  {
    v41 = v15;
    v42 = v16;
    sub_6144();
    v17 = sub_3A2E8();
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v21 = 0;
  }

  v24 = sub_3A418();
  v25 = swift_getKeyPath();
  v26 = sub_3A2A8();
  v27 = swift_getKeyPath();
  *&v37 = v17;
  *(&v37 + 1) = v19;
  *&v38 = v23;
  *(&v38 + 1) = v21;
  *&v39 = v25;
  *(&v39 + 1) = v24;
  *&v40 = v27;
  *(&v40 + 1) = v26;
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v13;
  *(a2 + 24) = v33;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v32;
  v28 = v37;
  v29 = v38;
  v30 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v30;
  *(a2 + 48) = v28;
  *(a2 + 64) = v29;
  v41 = v17;
  v42 = v19;
  v43 = v23;
  v44 = v21;
  v45 = v25;
  v46 = v24;
  v47 = v27;
  v48 = v26;
  sub_2DEA0(v35, v34, v13, v33);

  sub_1A5AC(&v37, v36, &qword_52C20, &qword_3D9C8);
  sub_1A614(&v41, &qword_52C20, &qword_3D9C8);
  sub_2DEE4(v35, v34, v13, v33);
}

uint64_t sub_2CBAC@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v4 = sub_3CB4(&qword_52BE8, &unk_3DB20);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v34 = sub_3CB4(&qword_52BF0, &qword_3D950);
  v8 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v10 = &v31 - v9;
  v11 = sub_3CB4(&qword_52BF8, &unk_3DB30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v31 - v13);
  v35 = sub_3CB4(&qword_52BD8, &unk_3D940);
  v15 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v17 = &v31 - v16;
  if ([a1 propertyForKey:PSIconImageKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_1A614(&v40, &qword_52990, qword_3C2D0);
LABEL_8:
    if ([a1 propertyForKey:PSIconUTTypeIdentifierKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast())
      {
        v21 = objc_allocWithZone(ISIcon);
        v22 = sub_3A6D8();

        [v21 initWithType:v22];

        v23 = v32;
        sub_39CE8();
        v24 = v33;
        (*(v33 + 16))(v14, v7, v4);
        swift_storeEnumTagMultiPayload();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
        sub_3A1A8();
        sub_1A5AC(v17, v10, &qword_52BD8, &unk_3D940);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        v19 = v36;
        sub_3A1A8();
        sub_1A614(v17, &qword_52BD8, &unk_3D940);
        (*(v24 + 8))(v7, v4);
        v20 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1A614(&v40, &qword_52990, qword_3C2D0);
    }

    if ([a1 propertyForKey:PSLazyIconAppID])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v19 = v36;
    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = objc_allocWithZone(ISIcon);
        v26 = sub_3A6D8();

        [v25 initWithBundleIdentifier:v26];

        v27 = v32;
        sub_39CE8();
        v28 = v33;
        (*(v33 + 16))(v10, v7, v4);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
        sub_3A1A8();
        (*(v28 + 8))(v7, v4);
        v20 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1A614(&v40, &qword_52990, qword_3C2D0);
    }

    v20 = 1;
    goto LABEL_23;
  }

  sub_2DD98();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = v37;
  *v14 = sub_3A428();
  swift_storeEnumTagMultiPayload();
  sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);

  sub_3A1A8();
  sub_1A5AC(v17, v10, &qword_52BD8, &unk_3D940);
  swift_storeEnumTagMultiPayload();
  sub_2DCE0();
  v19 = v36;
  sub_3A1A8();

  sub_1A614(v17, &qword_52BD8, &unk_3D940);
  v20 = 0;
LABEL_23:
  v29 = sub_3CB4(&qword_52BC8, &unk_3DB10);
  return (*(*(v29 - 8) + 56))(v19, v20, 1, v29);
}

uint64_t sub_2D2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2ABB4();
  if (v2)
  {
    sub_6144();
    v3 = sub_3A2E8();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v11 = v7 & 1;
  }

  else
  {

    v3 = 0;
    v5 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t sub_2D3F8()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52BA8, &unk_3D930);
  sub_7EE4();
  sub_2DBA4();
  sub_3A438();
}

uint64_t sub_2D574@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_3A6F8();

    sub_6144();
    v6 = sub_3A2E8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = v10 & 1;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_2D694@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2CBAC(a1, a2, a3);
}

uint64_t sub_2D75C()
{
  v1 = sub_39CD8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_39CB8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v8 = *v0;
  v7 = *(v0 + 1);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = v7;
  sub_39CC8();
  sub_39CA8();

  sub_3CB4(&qword_52B50, &qword_3D8F8);
  sub_2D924();
  sub_2DA94();
  return sub_39FC8();
}

unint64_t sub_2D924()
{
  result = qword_52B58;
  if (!qword_52B58)
  {
    sub_4348(&qword_52B50, &qword_3D8F8);
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900);
    sub_2D9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B58);
  }

  return result;
}

unint64_t sub_2D9DC()
{
  result = qword_52B70;
  if (!qword_52B70)
  {
    sub_4348(&qword_52B78, &qword_3D908);
    sub_6254(&qword_52B80, &qword_52B88, &unk_3D910);
    sub_7EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B70);
  }

  return result;
}

unint64_t sub_2DA94()
{
  result = qword_52B90;
  if (!qword_52B90)
  {
    sub_39CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B90);
  }

  return result;
}

uint64_t sub_2DAEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2D2F8(a1);
}

uint64_t sub_2DAF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2D3F8();
}

uint64_t sub_2DB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52B50, &qword_3D8F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DB74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2C764(a1);
}

unint64_t sub_2DBA4()
{
  result = qword_52BB8;
  if (!qword_52BB8)
  {
    sub_4348(&qword_52BA8, &unk_3D930);
    sub_2DC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BB8);
  }

  return result;
}

unint64_t sub_2DC28()
{
  result = qword_52BC0;
  if (!qword_52BC0)
  {
    sub_4348(&qword_52BC8, &unk_3DB10);
    sub_2DCE0();
    sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BC0);
  }

  return result;
}

unint64_t sub_2DCE0()
{
  result = qword_52BD0;
  if (!qword_52BD0)
  {
    sub_4348(&qword_52BD8, &unk_3D940);
    sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BD0);
  }

  return result;
}

unint64_t sub_2DD98()
{
  result = qword_52C00;
  if (!qword_52C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52C00);
  }

  return result;
}

uint64_t sub_2DDE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_2C924(*(v1 + 24), a1);
}

uint64_t sub_2DDF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3A0D8();
  *a1 = result;
  return result;
}

uint64_t sub_2DE1C(uint64_t *a1)
{
  v1 = *a1;

  return sub_3A0E8();
}

uint64_t sub_2DE48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3A0A8();
  *a1 = result;
  return result;
}

uint64_t sub_2DE74(uint64_t *a1)
{
  v1 = *a1;

  return sub_3A0B8();
}

uint64_t sub_2DEA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_3CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2DEE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_AC60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2DF28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_2D574(*(v1 + 24), a1);
}

void sub_2E0FC()
{
  v1 = v0;
  v2 = type metadata accessor for AppStoreSettingsView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_39B68();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppStoreSettingsController();
  v47.receiver = v1;
  v47.super_class = v10;
  objc_msgSendSuper2(&v47, "viewDidLoad");
  sub_33DC4(v9);
  sub_3A708();
  v11 = sub_3A6D8();

  [v1 setTitle:v11];

  v46[0] = 0;
  v46[1] = 0;
  sub_3CB4(&qword_51DC0, &qword_3DA50);
  sub_3A518();
  sub_1B238(v46[2], v46[3], v46[4], v46[5], v5);
  v12 = objc_allocWithZone(sub_3CB4(&qword_52C60, &qword_3DA58));
  v13 = sub_3A198();
  [v1 addChildViewController:v13];
  [v13 willMoveToParentViewController:v1];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v13 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v15 addSubview:v16];

  [v13 didMoveToParentViewController:v1];
  v18 = [v13 view];

  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_3CB4(&qword_52318, &unk_3DA60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_3DA20;
  v20 = [v13 view];

  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = [v20 topAnchor];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v19 + 32) = v25;
  v26 = [v13 view];

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = [v26 bottomAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v19 + 40) = v31;
  v32 = [v13 view];

  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = [v32 leadingAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v19 + 48) = v37;
  v38 = [v13 view];

  if (!v38)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v41 trailingAnchor];

    v44 = [v39 constraintEqualToAnchor:v43];
    *(v19 + 56) = v44;
    sub_2E794();
    isa = sub_3A768().super.isa;

    [v42 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_2E73C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2E794()
{
  result = qword_52C68;
  if (!qword_52C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52C68);
  }

  return result;
}

uint64_t sub_2E80C()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52BA8, &unk_3D930);
  sub_7EE4();
  sub_2DBA4();
  sub_3A438();
}

uint64_t sub_2E988@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_3A6F8();

    sub_6144();
    v6 = sub_3A2E8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = v10 & 1;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_2EAA8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2EB6C(a1, a2, a3);
}

uint64_t sub_2EB6C@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = sub_3CB4(&qword_52BE8, &unk_3DB20);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v35 = sub_3CB4(&qword_52BF0, &qword_3D950);
  v9 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v11 = &v32 - v10;
  v12 = sub_3CB4(&qword_52BF8, &unk_3DB30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v32 - v14);
  v36 = sub_3CB4(&qword_52BD8, &unk_3D940);
  v16 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v18 = &v32 - v17;
  v19 = [a1 propertyForKey:PSIconImageKey];
  v37 = a3;
  if (v19)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    sub_1A614(&v41, &qword_52990, qword_3C2D0);
LABEL_8:
    if ([a1 propertyForKey:PSIconUTTypeIdentifierKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      if (swift_dynamicCast())
      {
        v23 = objc_allocWithZone(ISIcon);
        v24 = sub_3A6D8();

        [v23 initWithType:v24];

        v25 = v33;
        sub_39CE8();
        v26 = v34;
        (*(v34 + 16))(v15, v8, v5);
        swift_storeEnumTagMultiPayload();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
        sub_3A1A8();
        sub_2F38C(v18, v11);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        v21 = v37;
        sub_3A1A8();
        sub_1A614(v18, &qword_52BD8, &unk_3D940);
LABEL_21:
        (*(v26 + 8))(v8, v5);
        v22 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1A614(&v41, &qword_52990, qword_3C2D0);
    }

    if ([a1 propertyForKey:PSLazyIconAppID])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      if (swift_dynamicCast())
      {
        v27 = objc_allocWithZone(ISIcon);
        v28 = sub_3A6D8();

        [v27 initWithBundleIdentifier:v28];

        v29 = v33;
        sub_39CE8();
        v26 = v34;
        (*(v34 + 16))(v11, v8, v5);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);
        v21 = v37;
        sub_3A1A8();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1A614(&v41, &qword_52990, qword_3C2D0);
    }

    v22 = 1;
    v21 = v37;
    goto LABEL_24;
  }

  sub_2DD98();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v20 = v38;
  *v15 = sub_3A428();
  swift_storeEnumTagMultiPayload();
  sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20);

  sub_3A1A8();
  sub_2F38C(v18, v11);
  swift_storeEnumTagMultiPayload();
  sub_2DCE0();
  v21 = v37;
  sub_3A1A8();

  sub_1A614(v18, &qword_52BD8, &unk_3D940);
  v22 = 0;
LABEL_24:
  v30 = sub_3CB4(&qword_52BC8, &unk_3DB10);
  return (*(*(v30 - 8) + 56))(v21, v22, 1, v30);
}

uint64_t sub_2F280()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  sub_2B668();
  sub_3CB4(&qword_52B88, &unk_3D910);
  sub_6254(&qword_52B80, &qword_52B88, &unk_3D910);
  return sub_3A4D8();
}

uint64_t sub_2F368()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2E80C();
}

uint64_t sub_2F374@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_2E988(*(v1 + 24), a1);
}

uint64_t sub_2F38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52BD8, &unk_3D940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2F440()
{
  v1 = sub_2FD9C();
  v2 = [v1 specifiers];

  if (v2)
  {
    v3 = sub_3A778();

    v4 = sub_2FEB8(v3);

    if (v4)
    {
      v12 = &_swiftEmptyArrayStorage;
      v13 = &_swiftEmptyArrayStorage;
      if (v4 >> 62)
      {
        goto LABEL_25;
      }

      v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
        while (1)
        {
          v11 = v0;
          while (1)
          {
            if (__OFSUB__(v5--, 1))
            {
              goto LABEL_19;
            }

            if ((v4 & 0xC000000000000001) == 0)
            {
              break;
            }

            v7 = sub_3AA58();
LABEL_13:
            v8 = v7;
            if ([v7 cellType])
            {
              [v8 loadValuesAndTitlesFromDataSource];
              sub_2B2B8();
              if (v12 >> 62 && sub_3AAE8() < 0)
              {
                __break(1u);
LABEL_19:
                __break(1u);
LABEL_20:

                v9 = v13;
                v0 = v11;
                goto LABEL_21;
              }

              v0 = &v12;
              sub_30E54(0, 0, v8);

              if (!v5)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v0 = &v13;
              sub_3084C(0, 0, v8, v12);
              v12 = &_swiftEmptyArrayStorage;
              if (!v5)
              {
                goto LABEL_20;
              }
            }
          }

          if ((v5 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v5 = sub_3AAE8();
          if (!v5)
          {
            goto LABEL_26;
          }
        }

        if (v5 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 32 + 8 * v5);
        goto LABEL_13;
      }

LABEL_26:

      v9 = &_swiftEmptyArrayStorage;
LABEL_21:

      sub_2F908(v9);
      v10 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections);
      *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections) = v9;
    }
  }
}

uint64_t sub_2F638(uint64_t a1, uint64_t a2)
{
  sub_3A7E8();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_30598();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_3AA38(66);
    v8._object = 0x800000000003EB30;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    sub_3A748(v8);
    v9._countAndFlagsBits = sub_3AB68();
    sub_3A748(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    sub_3A748(v10);
    result = sub_3AAD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2F7D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_3A968();
    v9 = v8;
    v10 = sub_3A9E8();
    v12 = v11;
    v13 = sub_3A988();
    sub_30628(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_30628(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_3A958();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_30AF4(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_30628(v7, v9, v6 != 0);
  return v17;
}

void sub_2F908(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (*(*(v1 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections) + 16) == *(a1 + 16))
  {
    v27 = ObjectType;
    v28 = v1;

    v4 = sub_2FCBC();
    if (v4)
    {
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v7;
      while (1)
      {
        if (![v8 isEqualToSpecifier:{v10, v27, v28}])
        {
LABEL_37:

          sub_30F40();
          sub_39EB8();
          sub_39EC8();

          return;
        }

        v15 = v9 >> 62 ? sub_3AAE8() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        v31 = v11 >> 62;
        if (v11 >> 62)
        {
          if (v15 != sub_3AAE8())
          {
            goto LABEL_37;
          }
        }

        else if (v15 != *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v29 = v10;
        v16 = v9 >> 62 ? sub_3AAE8() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));

        v17 = v11;

        if (v16)
        {
          break;
        }

LABEL_8:

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v8 = sub_2FCBC();
        v9 = v12;
        v10 = v13;
        v11 = v14;
        if (!v8)
        {
          goto LABEL_38;
        }
      }

      v18 = v9 & 0xFFFFFFFFFFFFFF8;
      v30 = v9 & 0xC000000000000001;
      v19 = 4;
      while (1)
      {
        v20 = v19 - 4;
        if (v30)
        {
          v21 = v9;
          v22 = sub_3AA58();
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_41;
          }

          v21 = v9;
          v22 = *(v9 + 8 * v19);
        }

        v23 = v22;
        v24 = v19 - 3;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v31)
        {
          if (v20 == sub_3AAE8())
          {
LABEL_7:

            goto LABEL_8;
          }
        }

        else if (v20 == *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_7;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v25 = sub_3AA58();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v25 = *(v17 + 8 * v19);
        }

        v26 = v25;
        if (([v23 isEqualToSpecifier:v25] & 1) == 0)
        {

          sub_30F40();
          sub_39EB8();
          sub_39EC8();

          return;
        }

        ++v19;
        v9 = v21;
        if (v24 == v16)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
LABEL_38:
    }
  }

  else
  {
    sub_30F40();
    sub_39EB8();
    sub_39EC8();
  }
}

void *sub_2FCBC()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 16 * v2;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v0 + 8) = v2 + 1;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = *(v7 + 16);
    if (v8 == v9)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v8 < v9)
    {
      v10 = v7 + 16 * v8;
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      *(v0 + 24) = v8 + 1;
      v13 = v5;
      v14 = v5;

      v15 = v12;

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2FD9C()
{
  v1 = OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp;
  v2 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp);
LABEL_5:
    v10 = v2;
    return v3;
  }

  v4 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_applicationBundleIdentifier);
  v5 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_applicationBundleIdentifier + 8);
  v6 = objc_allocWithZone(PSSystemPolicyForApp);
  v7 = sub_3A6D8();
  v8 = [v6 initWithBundleIdentifier:v7];

  if (v8)
  {
    [v8 setDelegate:v0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
    goto LABEL_5;
  }

  result = sub_3AAD8();
  __break(1u);
  return result;
}

void *sub_2FEB8(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_3AAA8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_4508(i, v6);
    sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_3AA88();
    v4 = v7[2];
    sub_3AAB8();
    sub_3AAC8();
    sub_3AA98();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_30050()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3010C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_39EB8();
  *a1 = result;
  return result;
}

uint64_t sub_3014C()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F440();
}

void sub_30270(uint64_t a1, char a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_1AF40(0, &qword_52D20, UIScene_ptr);
  sub_305C0();
  v6 = sub_3A838();

  v7 = sub_2F7D4(v6, &qword_52D20, UIScene_ptr);

  if (!v7)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
LABEL_9:

    return;
  }

  v9 = [v8 keyWindow];

  if (v9 && (v7 = [v9 rootViewController], v9, v7))
  {
    if (a1)
    {
      [v7 presentViewController:a1 animated:a2 & 1 completion:0];
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_304D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_3051C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_30598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_305C0()
{
  result = qword_52D28;
  if (!qword_52D28)
  {
    sub_1AF40(255, &qword_52D20, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52D28);
  }

  return result;
}

uint64_t sub_30628(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

char *sub_30634(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&unk_52D30, &qword_3DC10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_30740(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&qword_52D48, &qword_3DC18);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_3084C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_30634(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  sub_309C8(a1, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_30928(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_3AAE8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_3AA68();
  *v1 = result;
  return result;
}

void sub_309C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *v5;
  v11 = (v10 + 32 + 16 * a1);
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_21;
  }

  a1 = &v11[2 * a3];
  v16 = (v10 + 32 + 16 * a2);
  if (a1 != v16 || a1 >= v16 + 16 * v15)
  {
    a1 = memmove(a1, v16, 16 * v15);
  }

  v18 = *(v10 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
    a1 = a4;
    *v11 = a4;
    v11[1] = a5;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v20 = a1;

    __break(1u);
    return;
  }
}

void sub_30AF4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_3A9C8();
      sub_1AF40(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1AF40(0, a5, a6);
    if (sub_3A998() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_3A9A8();
    swift_dynamicCast();
    v6 = v18;
    v11 = sub_3A908(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = sub_3A918();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

char *sub_30D28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_3AAE8();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_3AAE8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_30E54(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_3AAE8();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_3AAE8();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_30928(result);

  return sub_30D28(v6, v5, 1, v3);
}

unint64_t sub_30F40()
{
  result = qword_51FB8;
  if (!qword_51FB8)
  {
    type metadata accessor for AppStoreSystemPolicyViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51FB8);
  }

  return result;
}

unint64_t sub_30F94(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_31054@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3137C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_316A4@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_319CC@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_31CF8@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32020@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32368@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v26 = a3;
  v3 = sub_39C18();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_3CB4(&qword_52710, &qword_3D120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_39B98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_39B58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_3A6C8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_3A6A8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_3A698();
  v27._countAndFlagsBits = 0x58585F5245444E55;
  v27._object = 0xED00005F424D5F58;
  sub_3A688(v27);
  sub_3A678(v25);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_3A688(v28);
  sub_3A6B8();
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.isDirectory(_:), v9);
  v23 = sub_39BF8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_39BE8();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v14);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32724@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32A4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v26 = a3;
  v3 = sub_39C18();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_3CB4(&qword_52710, &qword_3D120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_39B98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_39B58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_3A6C8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_3A6A8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_3A698();
  v27._object = 0x800000000003EF50;
  v27._countAndFlagsBits = 0xD000000000000019;
  sub_3A688(v27);
  sub_3A678(v25);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_3A688(v28);
  sub_3A6B8();
  (*(v10 + 104))(v13, enum case for URL.DirectoryHint.isDirectory(_:), v9);
  v23 = sub_39BF8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_39BE8();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v14);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32DE8@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33114@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3343C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33764@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33A8C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33DC4@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_340F0@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34418@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34740@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34A68@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34D90@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_350B8@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_353E0@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35708@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35A30@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35D5C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_36084@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_363AC@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_366D4@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_369FC@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_36D24@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3704C@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37374@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_376C0@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37A00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v22[2] = a2;
  v2 = sub_39C18();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_3CB4(&qword_52710, &qword_3D120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_39B98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_39B58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3A6C8();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_3A668();
  (*(v9 + 104))(v12, enum case for URL.DirectoryHint.isDirectory(_:), v8);
  v20 = sub_39BF8();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_39BE8();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v13);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37D18@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = sub_39C18();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_3CB4(&qword_52710, &qword_3D120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_39B58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A6C8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_3A668();
  (*(v8 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v19 = sub_39BF8();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_39BE8();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v12);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_38048(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_53BE8 == -1)
  {
    if (qword_53BF0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_39AB8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_53BF0)
    {
      return _availability_version_check();
    }
  }

  if (qword_53BE0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_39AD0();
    a3 = v10;
    a4 = v9;
    v8 = dword_53BD0 < v11;
    if (dword_53BD0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_53BD4 > a3)
      {
        return 1;
      }

      if (dword_53BD4 >= a3)
      {
        return dword_53BD8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_53BD0 < a2;
  if (dword_53BD0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_381DC(uint64_t result)
{
  v1 = qword_53BF0;
  if (qword_53BF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_53BF0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_53BD0, &dword_53BD4, &dword_53BD8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_38688(id *a1)
{
  if (!a1[17])
  {
    v2 = [[NSMutableDictionary alloc] initWithCapacity:7];
    v3 = a1[17];
    a1[17] = v2;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [LSApplicationRecord enumeratorWithOptions:0];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([ASDUpdatesService isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:v9])
          {
            v10 = [v9 bundleIdentifier];
            v11 = [v9 localizedName];
            v12 = v11;
            if (v10)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              [a1[17] setObject:v11 forKeyedSubscript:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v14 = [a1 specifiers];
  [a1 setSpecifiers:?];
}

char *sub_388B4(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR___PSListController__specifiers];
    *&result[OBJC_IVAR___PSListController__specifiers] = 0;

    if (a2)
    {
      v5 = *(v3 + 19);
      *(v3 + 19) = 0;
    }

    sub_38688(v3);
    result = [*(v3 + 17) count];
    if (result)
    {

      return [v3 reloadSpecifiers];
    }
  }

  return result;
}

void sub_38B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136))
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_38C50;
    v4[3] = &unk_4E710;
    v4[4] = v1;
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    [v3 enumerateObjectsUsingBlock:v4];
    sub_388B4(*(a1 + 32), 1);
  }
}

void sub_38C50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [*(*(a1 + 32) + 136) setObject:v7 forKeyedSubscript:v6];
}

char *sub_38E84(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) count];
  if (result)
  {
    v10 = [*(*(a1 + 32) + 136) count];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          [*(*(a1 + 32) + 136) setObject:0 forKeyedSubscript:v7];
          v8 = *(*(a1 + 32) + 152);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_3906C;
          v12[3] = &unk_4E760;
          v12[4] = v7;
          v9 = [v8 indexOfObjectPassingTest:v12];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(*(a1 + 32) + 152) removeObjectAtIndex:v9];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    result = [*(*(a1 + 32) + 136) count];
    if (v10 != result)
    {
      return sub_388B4(*(a1 + 32), 0);
    }
  }

  return result;
}

id sub_3906C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_39490(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(PSSpecifier);
  *&v7[OBJC_IVAR___PSSpecifier_cellType] = 6;
  [v7 setIdentifier:v6];
  [v7 setName:v5];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v7 setObject:v6 forKeyedSubscript:PSLazyIconAppID];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconDontUnload];
  [v7 setTarget:*(a1 + 32)];
  *&v7[OBJC_IVAR___PSSpecifier_getter] = "_automaticUpdatesEnabledForAppSpecifier:";
  *&v7[OBJC_IVAR___PSSpecifier_setter] = "_setAutomaticUpdatesEnabled:forAppSpecifier:";
  [*(*(a1 + 32) + 152) addObject:?];
}

int64_t sub_395D0(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_39724(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = objc_opt_new();
    [v3 hideApplicationBadgeForPendingUpdates];
    if (a2)
    {
      [v3 reloadFromServerInBackgroundWithCompletionBlock:&stru_4E830];
    }
  }
}

char *sub_399F0(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  *(*(a1 + 32) + 161) = [v2 isLowPowerModeEnabled];

  v3 = *(a1 + 32);

  return sub_388B4(v3, 0);
}