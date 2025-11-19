uint64_t sub_1748()
{
  v0 = sub_E5D4();
  sub_E214(v0, qword_18628);
  sub_1BD8(v0, qword_18628);
  return sub_E5C4();
}

id variable initialization expression of FindMyMessagesAppViewController.viewModel()
{
  v0 = *(*(sub_E634() - 8) + 64);
  (__chkstk_darwin)();
  v1 = sub_E434();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_E524();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_E514();

  sub_E424();
  (*(v2 + 16))(v6, v8, v1);
  v13 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v14 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    (*(v2 + 8))(v8, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id FindMyMessagesAppViewController.__deallocating_deinit()
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E704();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0x74696E696564, 0xE600000000000000, &v11);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  sub_1D9C();
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v12.receiver = v2;
  v12.super_class = MyMessagesAppViewController;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1BD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C84()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"sceneWillEnterForegroundWithNotification:" name:UISceneWillEnterForegroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"sceneDidEnterBackgroundWithNotification:" name:UISceneDidEnterBackgroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"sceneDidDisconnectWithNotification:" name:UISceneDidDisconnectNotification object:0];
}

void sub_1D9C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:UISceneWillEnterForegroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:UISceneDidEnterBackgroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:UISceneDidDisconnectNotification object:0];
}

void sub_1EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v58[3])
  {
    sub_E1B0(v58, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v32 = sub_E5D4();
    sub_1BD8(v32, qword_18628);
    (*(v5 + 16))(v8, a1, v4);
    v33 = v2;
    v34 = sub_E5B4();
    v35 = sub_E714();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      v58[0] = v57[0];
      *v36 = 138412802;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2080;
      v38 = v33;
      *(v36 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v58);
      *(v36 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification);
      v39 = sub_E7A4();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = sub_C740(v39, v41, v58);

      *(v36 + 24) = v42;
      _os_log_impl(&dword_0, v34, v35, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v36, 0x20u);
      sub_E1B0(v37, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return;
  }

  v9 = v57[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v10 = sub_E5D4();
  sub_1BD8(v10, qword_18628);
  v11 = v2;
  v12 = sub_E5B4();
  v13 = sub_E724();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v58);
    _os_log_impl(&dword_0, v12, v13, "FindMyMessagesAppViewController: %@ - %s", v14, 0x16u);
    sub_E1B0(v15, &qword_184B0, &qword_EE68);

    sub_C80C(v16);
  }

  v18 = [v11 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (!v20 || (v21 = [v20 windowScene], v20, !v21))
    {
      v43 = v11;
      v44 = sub_E5B4();
      v45 = sub_E724();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58[0] = v48;
        *v46 = 138412546;
        *(v46 + 4) = v43;
        *v47 = v43;
        *(v46 + 12) = 2080;
        v49 = v43;
        *(v46 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v58);
        _os_log_impl(&dword_0, v44, v45, "MessagesAppViewController: %@ - %s - Can't find view scene", v46, 0x16u);
        sub_E1B0(v47, &qword_184B0, &qword_EE68);

        sub_C80C(v48);
      }

      goto LABEL_27;
    }

    v22 = [v9 session];
    v23 = [v22 role];

    v24 = sub_E644();
    v25 = sub_E654();
    v27 = v26;
    v28 = sub_E654();
    v30 = v29;

    if (v25 == v28 && v27 == v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v31 & 1) == 0)
    {
      v50 = v11;
      v44 = sub_E5B4();
      v51 = sub_E724();

      if (os_log_type_enabled(v44, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58[0] = v54;
        *v52 = 138412546;
        *(v52 + 4) = v50;
        *v53 = v50;
        *(v52 + 12) = 2080;
        v55 = v50;
        *(v52 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v58);
        _os_log_impl(&dword_0, v44, v51, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v52, 0x16u);
        sub_E1B0(v53, &qword_184B0, &qword_EE68);

        sub_C80C(v54);
      }

LABEL_27:
      return;
    }

    v56 = *&v11[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
    sub_E4A4();
  }

  else
  {
    __break(1u);
  }
}

void sub_2778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v58[3])
  {
    sub_E1B0(v58, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v32 = sub_E5D4();
    sub_1BD8(v32, qword_18628);
    (*(v5 + 16))(v8, a1, v4);
    v33 = v2;
    v34 = sub_E5B4();
    v35 = sub_E714();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      v58[0] = v57[0];
      *v36 = 138412802;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2080;
      v38 = v33;
      *(v36 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v58);
      *(v36 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification);
      v39 = sub_E7A4();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = sub_C740(v39, v41, v58);

      *(v36 + 24) = v42;
      _os_log_impl(&dword_0, v34, v35, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v36, 0x20u);
      sub_E1B0(v37, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return;
  }

  v9 = v57[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v10 = sub_E5D4();
  sub_1BD8(v10, qword_18628);
  v11 = v2;
  v12 = sub_E5B4();
  v13 = sub_E724();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v58);
    _os_log_impl(&dword_0, v12, v13, "FindMyMessagesAppViewController: %@ - %s", v14, 0x16u);
    sub_E1B0(v15, &qword_184B0, &qword_EE68);

    sub_C80C(v16);
  }

  v18 = [v11 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (!v20 || (v21 = [v20 windowScene], v20, !v21))
    {
      v43 = v11;
      v44 = sub_E5B4();
      v45 = sub_E724();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58[0] = v48;
        *v46 = 138412546;
        *(v46 + 4) = v43;
        *v47 = v43;
        *(v46 + 12) = 2080;
        v49 = v43;
        *(v46 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v58);
        _os_log_impl(&dword_0, v44, v45, "MessagesAppViewController: %@ - %s - Can't find view scene", v46, 0x16u);
        sub_E1B0(v47, &qword_184B0, &qword_EE68);

        sub_C80C(v48);
      }

      goto LABEL_27;
    }

    v22 = [v9 session];
    v23 = [v22 role];

    v24 = sub_E644();
    v25 = sub_E654();
    v27 = v26;
    v28 = sub_E654();
    v30 = v29;

    if (v25 == v28 && v27 == v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v31 & 1) == 0)
    {
      v50 = v11;
      v44 = sub_E5B4();
      v51 = sub_E724();

      if (os_log_type_enabled(v44, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58[0] = v54;
        *v52 = 138412546;
        *(v52 + 4) = v50;
        *v53 = v50;
        *(v52 + 12) = 2080;
        v55 = v50;
        *(v52 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v58);
        _os_log_impl(&dword_0, v44, v51, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v52, 0x16u);
        sub_E1B0(v53, &qword_184B0, &qword_EE68);

        sub_C80C(v54);
      }

LABEL_27:
      return;
    }

    v56 = *&v11[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
    sub_E484();
  }

  else
  {
    __break(1u);
  }
}

void sub_3030(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v58[3])
  {
    sub_E1B0(v58, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v32 = sub_E5D4();
    sub_1BD8(v32, qword_18628);
    (*(v5 + 16))(v8, a1, v4);
    v33 = v2;
    v34 = sub_E5B4();
    v35 = sub_E714();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      v58[0] = v57[0];
      *v36 = 138412802;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2080;
      v38 = v33;
      *(v36 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v58);
      *(v36 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification);
      v39 = sub_E7A4();
      v41 = v40;
      (*(v5 + 8))(v8, v4);
      v42 = sub_C740(v39, v41, v58);

      *(v36 + 24) = v42;
      _os_log_impl(&dword_0, v34, v35, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v36, 0x20u);
      sub_E1B0(v37, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return;
  }

  v9 = v57[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v10 = sub_E5D4();
  sub_1BD8(v10, qword_18628);
  v11 = v2;
  v12 = sub_E5B4();
  v13 = sub_E724();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v58);
    _os_log_impl(&dword_0, v12, v13, "FindMyMessagesAppViewController: %@ - %s", v14, 0x16u);
    sub_E1B0(v15, &qword_184B0, &qword_EE68);

    sub_C80C(v16);
  }

  v18 = [v11 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (!v20 || (v21 = [v20 windowScene], v20, !v21))
    {
      v43 = v11;
      v44 = sub_E5B4();
      v45 = sub_E724();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58[0] = v48;
        *v46 = 138412546;
        *(v46 + 4) = v43;
        *v47 = v43;
        *(v46 + 12) = 2080;
        v49 = v43;
        *(v46 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v58);
        _os_log_impl(&dword_0, v44, v45, "MessagesAppViewController: %@ - %s - Can't find view scene", v46, 0x16u);
        sub_E1B0(v47, &qword_184B0, &qword_EE68);

        sub_C80C(v48);
      }

      goto LABEL_27;
    }

    v22 = [v9 session];
    v23 = [v22 role];

    v24 = sub_E644();
    v25 = sub_E654();
    v27 = v26;
    v28 = sub_E654();
    v30 = v29;

    if (v25 == v28 && v27 == v30)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v31 & 1) == 0)
    {
      v50 = v11;
      v44 = sub_E5B4();
      v51 = sub_E724();

      if (os_log_type_enabled(v44, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58[0] = v54;
        *v52 = 138412546;
        *(v52 + 4) = v50;
        *v53 = v50;
        *(v52 + 12) = 2080;
        v55 = v50;
        *(v52 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v58);
        _os_log_impl(&dword_0, v44, v51, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v52, 0x16u);
        sub_E1B0(v53, &qword_184B0, &qword_EE68);

        sub_C80C(v54);
      }

LABEL_27:
      return;
    }

    v56 = *&v11[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
    sub_E474();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_38E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_E374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E354();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall FindMyMessagesAppViewController.willBecomeActive(with:)(MSConversation with)
{
  v3 = sub_E584();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v21.receiver = v1;
  v21.super_class = MyMessagesAppViewController;
  objc_msgSendSuper2(&v21, "willBecomeActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v9 = sub_E5D4();
  sub_1BD8(v9, qword_18628);
  v10 = v1;
  v11 = sub_E5B4();
  v12 = sub_E724();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v4;
    v20 = v15;
    v16 = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v17 = v10;
    *(v13 + 14) = sub_C740(0xD000000000000017, 0x800000000000FE10, &v20);
    _os_log_impl(&dword_0, v11, v12, "FindMyMessagesAppViewController: %@ - %s", v13, 0x16u);
    sub_E1B0(v14, &qword_184B0, &qword_EE68);

    sub_C80C(v16);
    v4 = v19;
  }

  sub_72CC(with.super.isa, [v10 presentationStyle], v7);
  v18 = *&v10[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
  sub_E494();
  (*(v4 + 8))(v7, v3);
}

id FindMyMessagesAppViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v15, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_E5B4();
  v6 = sub_E704();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000038, 0x800000000000FE30, &v14);
    *(v7 + 22) = 2080;
    [a1 preferredContentSize];
    type metadata accessor for CGSize(0);
    v10 = sub_E664();
    v12 = sub_C740(v10, v11, &v14);

    *(v7 + 24) = v12;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s - Request Resize - %s", v7, 0x20u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }

  return [v4 requestResize];
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didBecomeActive(with:)(MSConversation with)
{
  v3 = sub_19DC(&qword_184C0, &qword_EE70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v23.receiver = v1;
  v23.super_class = MyMessagesAppViewController;
  objc_msgSendSuper2(&v23, "didBecomeActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v8 = sub_E5D4();
  sub_1BD8(v8, qword_18628);
  v9 = v1;
  v10 = sub_E5B4();
  v11 = sub_E724();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_C740(0xD000000000000016, 0x800000000000FE70, &v22);
    _os_log_impl(&dword_0, v10, v11, "FindMyMessagesAppViewController: %@ - %s", v12, 0x16u);
    sub_E1B0(v13, &qword_184B0, &qword_EE68);

    sub_C80C(v14);
  }

  if ([v9 presentationStyle] == &dword_0 + 2)
  {
    v16 = *&v9[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController];
    [v9 _balloonMaskEdgeInsets];
    [v16 setAdditionalSafeAreaInsets:?];
  }

  v17 = sub_E6F4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_E6D4();
  v18 = v9;
  v19 = sub_E6C4();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  sub_4658(0, 0, v6, &unk_EE80, v20);
}

uint64_t sub_4288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_E784();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_E6D4();
  v4[6] = sub_E6C4();
  v9 = sub_E6B4();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_437C, v9, v8);
}

uint64_t sub_437C()
{
  v1 = *(v0 + 40);
  sub_E7E4();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_4448;
  v3 = *(v0 + 40);

  return sub_BBE0(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_4448()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_E2F8;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_45DC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_45DC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  [v3 setReadyForDisplay];

  v4 = v0[1];

  return v4();
}

uint64_t sub_4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19DC(&qword_184C0, &qword_EE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_DF50(a3, v27 - v11);
  v13 = sub_E6F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_E1B0(v12, &qword_184C0, &qword_EE70);
  }

  else
  {
    sub_E6E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_E6B4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_E674() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_E1B0(a3, &qword_184C0, &qword_EE70);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_E1B0(a3, &qword_184C0, &qword_EE70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Bool __swiftcall FindMyMessagesAppViewController.displaysAfterAppearance()()
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E704();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0xD000000000000019, 0x800000000000FE90, &v10);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  return 0;
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didResignActive(with:)(MSConversation with)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v13, "didResignActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000016, 0x800000000000FEB0, &v12);
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  v11 = *&v4[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
  sub_E474();
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didReceive(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didReceiveMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD00000000000001BLL, 0x800000000000FED0, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didStartSending(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didStartSendingMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD000000000000020, 0x800000000000FEF0, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didCancelSending(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didCancelSendingMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD000000000000021, 0x800000000000FF20, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

void FindMyMessagesAppViewController.willTransition(to:)(uint64_t a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v16, "willTransitionToPresentationStyle:", a1);
  v4 = *&v1[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
  sub_E464();
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v11 = v6;
    *(v9 + 14) = sub_C740(0xD000000000000013, 0x800000000000FF50, &v15);
    *(v9 + 22) = 2080;
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    v12 = sub_E664();
    v14 = sub_C740(v12, v13, &v15);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s presentationStyle: %s", v9, 0x20u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }
}

void FindMyMessagesAppViewController.didTransition(to:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didTransitionToPresentationStyle:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000012, 0x800000000000FF70, &v13);
    *(v7 + 22) = 2080;
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    v10 = sub_E664();
    v12 = sub_C740(v10, v11, &v13);

    *(v7 + 24) = v12;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s presentationStyle: %s", v7, 0x20u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }
}

double FindMyMessagesAppViewController.contentSizeThatFits(_:)(double a1)
{
  if ([v1 presentationStyle] == &dword_0 + 2)
  {
    [v1 _balloonMaskEdgeInsets];
    v4 = v3;
    v6 = v5;
    [*&v1[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController] preferredContentSize];
    return v6 + v4 + v7;
  }

  return a1;
}

id FindMyMessagesAppViewController.navigationItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) navigationItem];

  return v1;
}

UIScrollView_optional __swiftcall FindMyMessagesAppViewController.contentScrollView(for:)(NSDirectionalRectEdge a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) contentScrollViewForEdge:a1];

  v3 = v2;
  result.value.super.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewDidLoad()()
{
  v50.receiver = v0;
  v50.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E724();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0x4C64694477656976, 0xED0000292864616FLL, &v49);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  v9 = *&v2[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [v2 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v9 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v13 addSubview:v14];

  sub_19DC(&qword_184D0, &qword_EE88);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_EE50;
  v17 = [v9 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v2 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v16 + 32) = v23;
  v24 = [v9 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v2 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v16 + 40) = v30;
  v31 = [v9 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v2 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v16 + 48) = v37;
  v38 = [v9 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v2 view];
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 trailingAnchor];

    v45 = [v40 constraintEqualToAnchor:v44];
    *(v16 + 56) = v45;
    sub_DC18(0, &qword_184D8, NSLayoutConstraint_ptr);
    isa = sub_E694().super.isa;

    [v43 activateConstraints:isa];

    [v2 addChildViewController:v9];
    v47 = v2;
    [v9 didMoveToParentViewController:v47];
    v48 = *&v47[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
    sub_E4F4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4D4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4E4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4C4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E444();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4B4();

    sub_1C84();
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_633C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_E6D4();
  v2[7] = sub_E6C4();
  v4 = sub_E6B4();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_63D4, v4, v3);
}

uint64_t sub_63D4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_64CC;
    v4 = v0[5];

    return sub_8610(v4);
  }

  else
  {
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_64CC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_660C, v5, v4);
}

uint64_t sub_660C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6670(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 88) = a1;
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  sub_E6D4();
  *(v7 + 96) = sub_E6C4();
  v9 = sub_E6B4();
  *(v7 + 104) = v9;
  *(v7 + 112) = v8;

  return _swift_task_switch(sub_6714, v9, v8);
}

uint64_t sub_6714()
{
  v1 = *(v0 + 11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 15) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 16) = v3;
    *v3 = v0;
    v3[1] = sub_6810;
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];

    return sub_9B6C(v8, v9, v6, v7, v4, v5);
  }

  else
  {
    v11 = *(v0 + 12);

    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_6810()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_6950, v5, v4);
}

uint64_t sub_6950()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_69B4(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_E6D4();
  v1[7] = sub_E6C4();
  v3 = sub_E6B4();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_6A50, v3, v2);
}

uint64_t sub_6A50()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v0[11] = sub_E6C4();
    v5 = sub_E6B4();

    return _swift_task_switch(sub_6B40, v5, v4);
  }

  else
  {
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_6B40()
{
  v2 = v0[10];
  v1 = v0[11];

  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = v0[8];
  v4 = v0[9];

  return _swift_task_switch(sub_E2FC, v3, v4);
}

void sub_6BC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_6C24()
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v0 = sub_E5D4();
  sub_1BD8(v0, qword_18628);

  v1 = sub_E5B4();
  v2 = sub_E724();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v3 + 4) = Strong;
    *v4 = Strong;
    _os_log_impl(&dword_0, v1, v2, "MessagesAppViewController: %@ - setTintColorDidInvalidate", v3, 0xCu);
    sub_E1B0(v4, &qword_184B0, &qword_EE68);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 invalidateMessageTintColor];
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000012, 0x800000000000FF90, &v12);
    _os_log_impl(&dword_0, v5, v6, "MessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  v11 = *&v4[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
  sub_E4A4();
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000014, 0x800000000000FFB0, &v12);
    _os_log_impl(&dword_0, v5, v6, "MessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  v11 = *&v4[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel];
  sub_E484();
}

uint64_t sub_72CC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a2;
  v5 = sub_19DC(&qword_18560, &qword_F048);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v141 = &v122 - v7;
  v8 = sub_19DC(&qword_18568, &qword_F050);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v131 = &v122 - v10;
  v11 = sub_E544();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_E554();
  v127 = *(v128 - 8);
  v14 = *(v127 + 64);
  __chkstk_darwin(v128);
  v129 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19DC(&qword_18570, &qword_F058);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v134 = &v122 - v18;
  v19 = sub_E414();
  v144 = *(v19 - 8);
  v145 = v19;
  v20 = *(v144 + 64);
  __chkstk_darwin(v19);
  v143 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_E564();
  v139 = *(v22 - 8);
  v140 = v22;
  v23 = *(v139 + 64);
  v24 = __chkstk_darwin(v22);
  v138 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v146 = &v122 - v26;
  v148 = sub_E5A4();
  v27 = *(v148 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v148);
  v126 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v132 = &v122 - v32;
  __chkstk_darwin(v31);
  v34 = &v122 - v33;
  v137 = sub_E344();
  v136 = *(v137 - 8);
  v35 = *(v136 + 64);
  __chkstk_darwin(v137);
  v147 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [a1 recipientAddresses];
  v38 = sub_E6A4();

  v39 = *(v38 + 16);
  v142 = a3;
  if (v39)
  {
    v133 = a1;
    *&v152 = &_swiftEmptyArrayStorage;
    sub_D0A8(0, v39, 0);
    v40 = v152;
    v41 = (v38 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;

      sub_E594();
      *&v152 = v40;
      v45 = *(v40 + 16);
      v44 = *(v40 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_D0A8(v44 > 1, v45 + 1, 1);
        v40 = v152;
      }

      *(v40 + 16) = v45 + 1;
      (*(v27 + 32))(v40 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v45, v34, v148);
      v41 += 2;
      --v39;
    }

    while (v39);

    a1 = v133;
  }

  else
  {
  }

  v46 = [a1 senderAddress];
  sub_E654();

  sub_E334();
  if (([a1 respondsToSelector:sub_E3A4()] & 1) == 0)
  {
    v49 = 1;
    goto LABEL_23;
  }

  v47 = sub_E644();
  v48 = [a1 valueForKey:v47];

  if (v48)
  {
    sub_E744();
    swift_unknownObjectRelease();
  }

  else
  {
    v150 = 0u;
    v151 = 0u;
  }

  v152 = v150;
  v153 = v151;
  if (!*(&v151 + 1))
  {
    sub_E1B0(&v152, &qword_18530, &qword_EFD8);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v49 = 1;
    goto LABEL_18;
  }

  v49 = v149;
LABEL_18:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v50 = sub_E5D4();
  sub_1BD8(v50, qword_18628);
  v51 = sub_E5B4();
  v52 = sub_E724();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v152 = v54;
    *v53 = 136315394;
    *(v53 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
    *(v53 + 12) = 1024;
    *(v53 + 14) = v49;
    _os_log_impl(&dword_0, v51, v52, "FindMyMessagesAppViewController: %s - isiMessage: %{BOOL}d", v53, 0x12u);
    sub_C80C(v54);
  }

LABEL_23:
  if (![a1 respondsToSelector:sub_E3A4()])
  {
    v57 = a1;
    v58 = 0;
    goto LABEL_38;
  }

  v55 = sub_E644();
  v56 = [a1 valueForKey:v55];

  if (v56)
  {
    sub_E744();
    swift_unknownObjectRelease();
  }

  else
  {
    v150 = 0u;
    v151 = 0u;
  }

  v152 = v150;
  v153 = v151;
  if (!*(&v151 + 1))
  {
    sub_E1B0(&v152, &qword_18530, &qword_EFD8);
    goto LABEL_32;
  }

  if (!swift_dynamicCast())
  {
LABEL_32:
    v58 = 0;
    goto LABEL_33;
  }

  v58 = v149;
LABEL_33:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v59 = sub_E5D4();
  sub_1BD8(v59, qword_18628);
  v60 = sub_E5B4();
  v61 = sub_E724();
  v57 = a1;
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v152 = v63;
    *v62 = 136315394;
    *(v62 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
    *(v62 + 12) = 1024;
    *(v62 + 14) = v58;
    _os_log_impl(&dword_0, v60, v61, "FindMyMessagesAppViewController: %s - isBusiness: %{BOOL}d", v62, 0x12u);
    sub_C80C(v63);
  }

LABEL_38:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v64 = v49 ^ 1 | v58;
  v65 = sub_E5D4();
  sub_1BD8(v65, qword_18628);
  v66 = sub_E5B4();
  v67 = sub_E724();
  v68 = os_log_type_enabled(v66, v67);
  LODWORD(v133) = v49 ^ 1 | v58;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v152 = v70;
    *v69 = 136315394;
    *(v69 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
    *(v69 + 12) = 1024;
    *(v69 + 14) = v64 & 1;
    _os_log_impl(&dword_0, v66, v67, "FindMyMessagesAppViewController: %s - disableFindMyFeatures: %{BOOL}d", v69, 0x12u);
    sub_C80C(v70);
  }

  v72 = v144;
  v71 = v145;
  v73 = v143;
  v74 = v134;
  if (v135 < 2)
  {
    v75 = &enum case for CompositeAppViewState.app(_:);
    goto LABEL_72;
  }

  if (v135 == 2)
  {
    v76 = [v57 selectedMessage];
    if (v76)
    {
      v77 = v76;
      sub_E3E4();
      if ((*(v72 + 48))(v74, 1, v71) == 1)
      {
        sub_E1B0(v74, &qword_18570, &qword_F058);
        v78 = sub_E5B4();
        v79 = sub_E714();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&v152 = v81;
          *v80 = 136315138;
          *(v80 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
          _os_log_impl(&dword_0, v78, v79, "FindMyMessagesAppViewController: %s - No message payload while in transcript", v80, 0xCu);
          sub_C80C(v81);
        }
      }

      else
      {
        (*(v72 + 32))(v73, v74, v71);
        v92 = [v77 senderAddress];
        if (v92)
        {
          v93 = v92;
          sub_E654();

          v94 = [v57 recipientAddresses];
          v95 = sub_E6A4();

          v96 = [v57 conversationIdentifier];
          v135 = sub_E654();
          v134 = v97;

          v125 = sub_E3D4();
          v124 = v98;
          sub_E594();
          v99 = *(v95 + 16);
          if (v99)
          {
            v123 = v77;
            *&v152 = &_swiftEmptyArrayStorage;
            sub_D0A8(0, v99, 0);
            v100 = v152;
            v122 = v95;
            v101 = (v95 + 40);
            v102 = v126;
            do
            {
              v103 = *(v101 - 1);
              v104 = *v101;

              sub_E594();
              *&v152 = v100;
              v106 = *(v100 + 16);
              v105 = *(v100 + 24);
              if (v106 >= v105 >> 1)
              {
                sub_D0A8(v105 > 1, v106 + 1, 1);
                v100 = v152;
              }

              *(v100 + 16) = v106 + 1;
              (*(v27 + 32))(v100 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v106, v102, v148);
              v101 += 2;
              --v99;
            }

            while (v99);

            v77 = v123;
          }

          else
          {
          }

          v112 = [v77 isFromMe];
          v113 = &enum case for CompositeAppViewState.TranscriptInfo.Direction.outgoing(_:);
          if (!v112)
          {
            v113 = &enum case for CompositeAppViewState.TranscriptInfo.Direction.incoming(_:);
          }

          (*(v127 + 104))(v129, *v113, v128);
          [v77 isPending];
          v114 = v143;
          sub_E3F4();
          sub_E404();
          sub_E3C4();
          sub_D2A0();
          sub_E534();

          (*(v144 + 8))(v114, v145);
          v75 = &enum case for CompositeAppViewState.transcript(_:);
          goto LABEL_72;
        }

        v107 = sub_E5B4();
        v108 = sub_E714();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = v73;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *&v152 = v111;
          *v110 = 136315138;
          *(v110 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
          _os_log_impl(&dword_0, v107, v108, "MessagesAppViewController: %s - No sender address", v110, 0xCu);
          sub_C80C(v111);

          (*(v72 + 8))(v109, v71);
        }

        else
        {

          (*(v72 + 8))(v73, v71);
        }
      }
    }

    else
    {
      v88 = sub_E5B4();
      v89 = sub_E714();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v152 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
        _os_log_impl(&dword_0, v88, v89, "FindMyMessagesAppViewController: %s - No selected message while in transcript", v90, 0xCu);
        sub_C80C(v91);
      }
    }

    v75 = &enum case for CompositeAppViewState.loading(_:);
LABEL_72:
    v85 = v141;
    goto LABEL_73;
  }

  v82 = sub_E5B4();
  v83 = sub_E714();
  v84 = os_log_type_enabled(v82, v83);
  v85 = v141;
  if (v84)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v152 = v87;
    *v86 = 136315138;
    *(v86 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v152);
    _os_log_impl(&dword_0, v82, v83, "FindMyMessagesAppViewController: %s - Unknown presentation style", v86, 0xCu);
    sub_C80C(v87);
  }

  v75 = &enum case for CompositeAppViewState.loading(_:);
LABEL_73:
  v116 = v139;
  v115 = v140;
  v117 = v146;
  (*(v139 + 104))(v146, *v75, v140);
  v118 = v136;
  v119 = v147;
  v120 = v137;
  (*(v136 + 16))(v85, v147, v137);
  (*(v118 + 56))(v85, 0, 1, v120);
  (*(v116 + 16))(v138, v117, v115);
  sub_E574();
  (*(v116 + 8))(v117, v115);
  return (*(v118 + 8))(v119, v120);
}

uint64_t sub_8610(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_E394();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = sub_E544();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = sub_E414();
  v2[42] = v9;
  v10 = *(v9 - 8);
  v2[43] = v10;
  v11 = *(v10 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_E6D4();
  v2[46] = sub_E6C4();
  v13 = sub_E6B4();
  v2[47] = v13;
  v2[48] = v12;

  return _swift_task_switch(sub_87C8, v13, v12);
}

uint64_t sub_87C8()
{
  v47 = v0;
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 272);
  v5 = sub_E5D4();
  *(v0 + 392) = sub_1BD8(v5, qword_18628);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_E5B4();
  v8 = sub_E724();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  if (v9)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 352);
    v13 = *(v0 + 336);
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v46);
    *(v14 + 12) = 2080;
    v6(v12, v10, v13);
    v15 = sub_E664();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_C740(v15, v17, &v46);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %s payload: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 336);
    v20 = *(v0 + 344);

    (*(v20 + 8))(v10, v19);
  }

  v21 = [*(v0 + 280) activeConversation];
  *(v0 + 400) = v21;
  if (v21)
  {
    v22 = v21;
    v24 = *(v0 + 320);
    v23 = *(v0 + 328);
    v25 = *(v0 + 312);
    v26 = *(v0 + 272);
    sub_E3F4();
    v27 = (*(v24 + 88))(v23, v25);
    v28 = *(v0 + 320);
    v29 = *(v0 + 328);
    v30 = *(v0 + 312);
    if (v27 == enum case for CompositeAppViewState.TranscriptInfo.Kind.share(_:))
    {
      (*(v28 + 96))(*(v0 + 328), v30);
      if (*v29 == 3)
      {
        v31 = *(*(v0 + 280) + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
        v32 = *(&async function pointer to dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation() + 1);
        v45 = (&async function pointer to dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation() + async function pointer to dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation());
        v33 = swift_task_alloc();
        *(v0 + 408) = v33;
        *v33 = v0;
        v33[1] = sub_8C98;
        v34 = *(v0 + 304);

        return v45(v34);
      }
    }

    else
    {
      (*(v28 + 8))(*(v0 + 328), v30);
    }

    v42 = *(v0 + 272);
    isa = sub_E3B4().super.isa;
    *(v0 + 448) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_94E8;
    v44 = swift_continuation_init();
    *(v0 + 200) = sub_19DC(&qword_18518, &qword_EFC0);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_9AC0;
    *(v0 + 168) = &unk_148B0;
    *(v0 + 176) = v44;
    [v22 insertMessage:isa completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v36 = *(v0 + 368);

    v38 = *(v0 + 352);
    v37 = *(v0 + 360);
    v39 = *(v0 + 328);
    v40 = *(v0 + 304);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_8C98()
{
  v2 = *(*v1 + 408);
  v3 = *v1;
  v3[52] = v0;

  if (v0)
  {
    v4 = v3[47];
    v5 = v3[48];

    return _swift_task_switch(sub_96CC, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[53] = v6;
    *v6 = v3;
    v6[1] = sub_8E04;
    v7 = v3[38];

    return sub_D548(v7);
  }
}

uint64_t sub_8E04(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_8F04, 0, 0);
}

uint64_t sub_8F04()
{
  v1 = v0[54];
  v2 = v0[50];
  v0[10] = v0;
  v0[11] = sub_9028;
  v3 = swift_continuation_init();
  v0[33] = sub_19DC(&qword_18518, &qword_EFC0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_9AC0;
  v0[29] = &unk_148D8;
  v0[30] = v3;
  [v2 insertRichLink:v1 completionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_9028()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_9264;
  }

  else
  {
    v3 = sub_9138;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9138()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return _swift_task_switch(sub_919C, v1, v2);
}

uint64_t sub_919C()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_9264()
{
  v1 = v0[54];
  v2 = v0[55];
  swift_willThrow();

  v3 = v0[47];
  v4 = v0[48];

  return _swift_task_switch(sub_92D4, v3, v4);
}

uint64_t sub_92D4()
{
  v21 = v0;
  v1 = *(v0 + 368);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 440);
  v6 = *(v0 + 392);
  swift_errorRetain();
  v7 = sub_E5B4();
  v8 = sub_E714();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v20);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }

  v13 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v15 = *(v0 + 352);
  v14 = *(v0 + 360);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_94E8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 456) = v3;
  v4 = *(v1 + 384);
  v5 = *(v1 + 376);
  if (v3)
  {
    v6 = sub_98C0;
  }

  else
  {
    v6 = sub_9618;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_9618()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_96CC()
{
  v18 = v0;
  v1 = *(v0 + 368);

  v2 = *(v0 + 416);
  v3 = *(v0 + 392);
  swift_errorRetain();
  v4 = sub_E5B4();
  v5 = sub_E714();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v17);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v4, v5, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v6, 0x16u);
    sub_E1B0(v7, &qword_184B0, &qword_EE68);

    sub_C80C(v8);
  }

  v10 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v13 = *(v0 + 328);
  v14 = *(v0 + 304);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_98C0()
{
  v20 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = *(v0 + 368);

  swift_willThrow();

  v4 = *(v0 + 456);
  v5 = *(v0 + 392);
  swift_errorRetain();
  v6 = sub_E5B4();
  v7 = sub_E714();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v19);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v6, v7, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v8, 0x16u);
    sub_E1B0(v9, &qword_184B0, &qword_EE68);

    sub_C80C(v10);
  }

  v12 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v14 = *(v0 + 352);
  v13 = *(v0 + 360);
  v15 = *(v0 + 328);
  v16 = *(v0 + 304);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_9AC0(uint64_t a1, void *a2)
{
  v3 = sub_DBD4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_19DC(&qword_18520, &qword_EFC8);
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

uint64_t sub_9B6C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 208) = v6;
  *(v7 + 192) = a5;
  *(v7 + 200) = a6;
  *(v7 + 176) = a3;
  *(v7 + 184) = a4;
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
  v8 = sub_E394();
  *(v7 + 216) = v8;
  v9 = *(v8 - 8);
  *(v7 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  sub_E6D4();
  *(v7 + 240) = sub_E6C4();
  v12 = sub_E6B4();
  *(v7 + 248) = v12;
  *(v7 + 256) = v11;

  return _swift_task_switch(sub_9C6C, v12, v11);
}

uint64_t sub_9C6C()
{
  v26 = v0;
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  *(v0 + 264) = sub_1BD8(v1, qword_18628);
  v2 = sub_E5B4();
  v3 = sub_E724();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v6 = 136315395;
    *(v6 + 4) = sub_C740(0xD000000000000028, 0x8000000000010180, v25);
    *(v6 + 12) = 2081;
    *(v0 + 144) = v5;
    *(v0 + 152) = v4;
    type metadata accessor for CLLocationCoordinate2D(0);
    v7 = sub_E664();
    v9 = sub_C740(v7, v8, v25);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "FindMyMessagesAppViewController: %s payload: %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = [*(v0 + 208) activeConversation];
  *(v0 + 272) = v10;
  if (v10)
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(*(v0 + 208) + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
    sub_E454();
    v23 = swift_task_alloc();
    *(v0 + 280) = v23;
    *v23 = v0;
    v23[1] = sub_A078;
    v24 = *(v0 + 232);

    return sub_D548(v24);
  }

  else
  {
    v19 = *(v0 + 240);

    v20 = *(v0 + 232);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_A078(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_A178, 0, 0);
}

uint64_t sub_A178()
{
  v1 = v0[36];
  v2 = v0[34];
  v0[2] = v0;
  v0[3] = sub_A29C;
  v3 = swift_continuation_init();
  v0[17] = sub_19DC(&qword_18518, &qword_EFC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9AC0;
  v0[13] = &unk_14860;
  v0[14] = v3;
  [v2 insertRichLink:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_A29C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_A4C0;
  }

  else
  {
    v3 = sub_A3AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_A3AC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_A410, v1, v2);
}

uint64_t sub_A410()
{
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];

  [v6 dismiss];

  (*(v5 + 8))(v3, v4);
  v7 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t sub_A4C0()
{
  v1 = v0[36];
  v2 = v0[37];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[32];

  return _swift_task_switch(sub_A530, v3, v4);
}

uint64_t sub_A530()
{
  v18 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  swift_errorRetain();
  v7 = sub_E5B4();
  v8 = sub_E714();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_C740(0xD000000000000028, 0x8000000000010180, &v17);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }

  v13 = *(v0 + 272);
  [*(v0 + 208) dismiss];

  v14 = *(v0 + 232);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t FindMyMessagesAppViewController._validateMessage(forSending:conversation:associatedText:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_E6D4();
  v2[4] = sub_E6C4();
  v4 = sub_E6B4();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_A7B8, v4, v3);
}

uint64_t sub_A7B8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
  v2 = *(&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + 1);
  v6 = (&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_A870;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_A870(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 56);
  v10 = *v3;
  *(v5 + 80) = a1;
  *(v5 + 64) = a2;
  *(v5 + 72) = a3;

  v7 = *(v4 + 48);
  v8 = *(v4 + 40);

  return _swift_task_switch(sub_A99C, v8, v7);
}

uint64_t sub_A99C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  return v2(v5, v3, v4);
}

uint64_t sub_ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v5[9] = sub_E6D4();
  v5[10] = sub_E6C4();
  v7 = sub_E6B4();

  return _swift_task_switch(sub_AC48, v7, v6);
}

uint64_t sub_AC48()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  v0[11] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v0[12] = sub_E6C4();
  v9 = sub_E6B4();
  v0[13] = v9;
  v0[14] = v8;

  return _swift_task_switch(sub_ACFC, v9, v8);
}

uint64_t sub_ACFC()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
  v2 = *(&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + 1);
  v6 = (&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_ADB4;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_ADB4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[4] = a2;
  v5[5] = a3;
  *(v5 + 24) = a1;
  v5[2] = v3;
  v6 = v4[15];
  v10 = *v3;
  v5[16] = a3;

  v7 = v4[14];
  v8 = v4[13];

  return _swift_task_switch(sub_AEE0, v8, v7);
}

uint64_t sub_AEE0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + 128);
  if (v1)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 128);

    v1 = sub_E644();
  }

  v8 = *(v0 + 88);
  (v8)[2](v8, *(v0 + 24), v1);

  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

id FindMyMessagesAppViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_E644();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FindMyMessagesAppViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30[1] = a1;
  v5 = sub_E634();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_E434();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  v15 = sub_E524();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_E514();

  sub_E424();
  (*(v8 + 16))(v12, v14, v7);
  v19 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v20 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v20 view];
  if (result)
  {
    v22 = result;
    v23 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v24 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v25 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor:v25];

    (*(v8 + 8))(v14, v7);
    *&v4[v23] = v18;
    *&v4[v24] = v20;
    if (v31)
    {
      v26 = sub_E644();
    }

    else
    {
      v26 = 0;
    }

    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v33.receiver = v4;
    v33.super_class = MyMessagesAppViewController;
    v28 = v32;
    v29 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", v26, v32);

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FindMyMessagesAppViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id FindMyMessagesAppViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_E634();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_E434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_E524();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_E514();

  sub_E424();
  (*(v6 + 16))(v10, v12, v5);
  v17 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v18 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v18 view];
  if (result)
  {
    v20 = result;
    v21 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v22 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v23 = [objc_opt_self() clearColor];
    [v20 setBackgroundColor:v23];

    (*(v6 + 8))(v12, v5);
    *&v2[v21] = v16;
    *&v2[v22] = v18;
    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v29.receiver = v2;
    v29.super_class = MyMessagesAppViewController;
    v25 = v28;
    v26 = objc_msgSendSuper2(&v29, "initWithCoder:", v28);

    if (v26)
    {
    }

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FindMyMessagesAppViewController.__allocating_init(shouldBeSheetPresentationControllerDelegate:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id FindMyMessagesAppViewController.init(shouldBeSheetPresentationControllerDelegate:)(int a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_E634();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_E434();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v25[-v11];
  v13 = sub_E524();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_E514();

  sub_E424();
  (*(v6 + 16))(v10, v12, v5);
  v17 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v18 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v18 view];
  if (result)
  {
    v20 = result;
    v21 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v22 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v23 = [objc_opt_self() clearColor];
    [v20 setBackgroundColor:v23];

    (*(v6 + 8))(v12, v5);
    *&v2[v21] = v16;
    *&v2[v22] = v18;
    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v27.receiver = v2;
    v27.super_class = MyMessagesAppViewController;
    return objc_msgSendSuper2(&v27, "initWithShouldBeSheetPresentationControllerDelegate:", v26 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B8FC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_DBD4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_19DC(&qword_18520, &qword_EFC8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_B9D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_B9F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_BAE8;

  return v7(a1);
}

uint64_t sub_BAE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_E774();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_BCE0, 0, 0);
}

uint64_t sub_BCE0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_E784();
  v7 = sub_E168(&qword_18550, &type metadata accessor for ContinuousClock);
  sub_E7C4();
  sub_E168(&qword_18558, &type metadata accessor for ContinuousClock.Instant);
  sub_E794();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_BE70;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_BE70()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_C02C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_C02C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_C098(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_E2E8;

  return v7();
}

uint64_t sub_C180(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_C268;

  return v8();
}

uint64_t sub_C268()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19DC(&qword_184C0, &qword_EE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_DF50(a3, v25 - v11);
  v13 = sub_E6F4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_E1B0(v12, &qword_184C0, &qword_EE70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_E6E4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_E6B4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_E674() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_E1B0(a3, &qword_184C0, &qword_EE70);

    return v23;
  }

LABEL_8:
  sub_E1B0(a3, &qword_184C0, &qword_EE70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_C648(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2EC;

  return v7(a1);
}

uint64_t sub_C740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_CBCC(v11, 0, 0, 1, a1, a2);
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
    sub_DB10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_C80C(v11);
  return v7;
}

uint64_t sub_C80C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_C86C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C268;

  return sub_4288(a1, v4, v5, v6);
}

uint64_t sub_C974()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C9AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_C268;

  return sub_633C(a1, v1);
}

uint64_t sub_CA44(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_E2E8;

  return sub_6670(v6, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_CB1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_E2E8;

  return sub_69B4(v0);
}

__n128 sub_CBBC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_CBCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_CCD8(a5, a6);
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
    result = sub_E764();
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

char *sub_CCD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_CD24(a1, a2);
  sub_CE54(&off_14748);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_CD24(uint64_t a1, unint64_t a2)
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

  v6 = sub_CF40(v5, 0);
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

  result = sub_E764();
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
        v10 = sub_E684();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_CF40(v10, 0);
        result = sub_E754();
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

uint64_t sub_CE54(uint64_t result)
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

  result = sub_CFB4(result, v12, 1, v3);
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

void *sub_CF40(uint64_t a1, uint64_t a2)
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

  sub_19DC(&qword_18580, &qword_F068);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CFB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_19DC(&qword_18580, &qword_F068);
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

size_t sub_D0A8(size_t a1, int64_t a2, char a3)
{
  result = sub_D0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_D0C8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_19DC(&qword_18578, &qword_F060);
  v10 = *(sub_E5A4() - 8);
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
  v15 = *(sub_E5A4() - 8);
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

uint64_t sub_D2A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_E654();
    v4 = v3;

    if (v2 == 0xD000000000000013 && 0x8000000000010370 == v4)
    {
      v8 = 1;
    }

    else
    {
      v6 = sub_E7B4();
      if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEF74616843692E65)
      {
        v17 = 1;
        goto LABEL_24;
      }

      v8 = v6;
    }

    v15 = sub_E7B4();
    if (v2 != 0xD000000000000012 || 0x8000000000010390 != v4)
    {
      v17 = v8 | v15;
LABEL_24:
      v18 = sub_E7B4();

      v14 = v17 | v18;
      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v9 = sub_E5D4();
    sub_1BD8(v9, qword_18628);
    v10 = sub_E5B4();
    v11 = sub_E714();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_C740(0xD00000000000001FLL, 0x8000000000010350, &v20);
      _os_log_impl(&dword_0, v10, v11, "FindMyMessagesAppViewController: %s - No Bundle Identifier", v12, 0xCu);
      sub_C80C(v13);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_D568()
{
  v1 = v0[19];
  v2 = objc_allocWithZone(MSRichLink);
  sub_E384(v3);
  v5 = v4;
  v0[20] = [v2 initWithURL:v4];

  v6 = [objc_allocWithZone(LPMetadataProvider) init];
  v0[21] = v6;
  sub_E384(v7);
  v9 = v8;
  v0[22] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_D6F0;
  v10 = swift_continuation_init();
  v0[17] = sub_19DC(&qword_18528, &qword_EFD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_B8FC;
  v0[13] = &unk_14888;
  v0[14] = v10;
  [v6 startFetchingMetadataForURL:v9 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_D6F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_D890;
  }

  else
  {
    v3 = sub_D800;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_D800()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 168);
  [*(v0 + 160) set_linkMetadata:v2];

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4(v5);
}

uint64_t sub_D890()
{
  v23 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_willThrow();

  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = sub_E5D4();
  sub_1BD8(v4, qword_18628);
  swift_errorRetain();
  v5 = sub_E5B4();
  v6 = sub_E714();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_C740(0xD000000000000014, 0x8000000000010200, &v22);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %s failed to insert metadata with error: %@", v8, 0x16u);
    sub_E1B0(v9, &qword_184B0, &qword_EE68);

    sub_C80C(v10);
  }

  v12 = *(v0 + 184);
  v13 = *(v0 + 152);
  v14 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_E384(v15);
  v17 = v16;
  [v14 setOriginalURL:v16];

  v18 = *(v0 + 168);
  [*(v0 + 160) set_linkMetadata:v14];

  v19 = *(v0 + 8);
  v20 = *(v0 + 160);

  return v19(v20);
}

uint64_t sub_DB10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_DB88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_DBD4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_DC18(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_DC60()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_DCB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_E2E8;

  return sub_ABA8(v2, v3, v4, v5, v6);
}

uint64_t sub_DD84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_E2E8;

  return sub_C098(v2, v3, v5);
}

uint64_t sub_DE44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_E2E8;

  return sub_C180(a1, v4, v5, v7);
}

uint64_t sub_DF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_19DC(&qword_184C0, &qword_EE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DFC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DFF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E2E8;

  return sub_C648(a1, v5);
}

uint64_t sub_E0B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E2E8;

  return sub_B9F0(a1, v5);
}

uint64_t sub_E168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E1B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_19DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_E214(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_E278(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E298(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}