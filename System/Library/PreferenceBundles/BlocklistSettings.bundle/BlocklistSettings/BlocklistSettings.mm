id _voicemailCheckQueue()
{
  if (qword_19298 != -1)
  {
    sub_E728();
  }

  v1 = qword_19290;

  return v1;
}

void sub_2034(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mobilephone.PHVoicemailUtilities.voicemailCheck", v3);
  v2 = qword_19290;
  qword_19290 = v1;
}

uint64_t PHHasEnhancedVoicemailAsync(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id PHDefaultLog()
{
  if (qword_192A8 != -1)
  {
    sub_E73C();
  }

  v1 = qword_192A0;

  return v1;
}

void sub_211C(id a1)
{
  qword_192A0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_192B8 != -1)
  {
    sub_E750();
  }

  v1 = qword_192B0;

  return v1;
}

void sub_21A4(id a1)
{
  qword_192B0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_192C8[0] != -1)
  {
    sub_E764();
  }

  v1 = qword_192C0;

  return v1;
}

void sub_222C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_192C0;
  qword_192C0 = v1;
}

void sub_2BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2C84;
  v6[3] = &unk_149A8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_2C84(uint64_t a1)
{
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*(a1 + 40) view];
  [v2 addSubview:*(a1 + 32)];

  v18 = [*(a1 + 32) leadingAnchor];
  v19 = [*(a1 + 40) view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [*(a1 + 32) trailingAnchor];
  v15 = [*(a1 + 40) view];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v3;
  v4 = [*(a1 + 32) topAnchor];
  v5 = [*(a1 + 40) view];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v20[2] = v7;
  v8 = [*(a1 + 32) bottomAnchor];
  v9 = [*(a1 + 40) view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

void sub_31E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [v3 businessID];
      v6 = 1;
      if (!v5)
      {
LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 != 1)
      {
        v18 = 0;
        v5 = 0;
        goto LABEL_23;
      }

      v5 = [v3 email];
      v6 = 3;
      if (!v5)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v19 = [v3 phoneNumber];
    v20 = [v19 unformattedInternationalRepresentation];
    v21 = v20;
    if (v20)
    {
      v5 = v20;
    }

    else
    {
      v26 = [v3 phoneNumber];
      v5 = [v26 digits];
    }

    v6 = 2;
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v7 = [TUContactsDataProviderFetchRequest alloc];
  v8 = [[TUHandle alloc] initWithType:v6 value:v5];
  v9 = [v7 initWithHandle:v8];

  v10 = [*(a1 + 32) contactsDataProvider];
  v11 = [v10 executeFetchRequest:v9];

  v12 = [v11 contacts];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [v11 contactLabel];

    v15 = [v11 localizedName];
    v16 = v15;
    if (v14)
    {
      v17 = [v11 contactLabel];
      v18 = [NSString stringWithFormat:@"%@ (%@)", v16, v17];
    }

    else
    {
      v18 = [NSString stringWithFormat:@"%@ (%@)", v15, v5];
    }
  }

  else
  {
    v18 = [v11 localizedName];
  }

  if (v18)
  {
    v22 = [PSSpecifier preferenceSpecifierNamed:v18 target:*(a1 + 32) set:0 get:0 detail:0 cell:1 edit:0];
    [v22 setButtonAction:"_ruleTapped:"];
    [v22 setUserInfo:v3];
    v23 = [NSNumber numberWithBool:1];
    [v22 setProperty:v23 forKey:PSEnabledKey];

    [*(a1 + 40) addObject:v22];
    if ([v3 type] == 2)
    {
      objc_initWeak(&location, *(a1 + 32));
      v24 = [*(a1 + 32) brandManager];
      v25 = [v3 businessID];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_35A0;
      v27[3] = &unk_14A20;
      v28 = v22;
      objc_copyWeak(&v29, &location);
      [v24 brandWithURI:v25 completion:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

LABEL_23:
}

void sub_357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35A0(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_366C;
  block[3] = &unk_149F8;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
}

void sub_366C(id *a1)
{
  v2 = [a1[4] name];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [a1[4] name];
    [a1[5] setName:v4];

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained reloadSpecifier:a1[5]];
  }
}

void sub_3C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3D14;
  v5[3] = &unk_14A70;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_3D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v5 = WeakRetained;
    v3 = [BSBrand makeBrandPlacecardForBrand:?];
    v4 = [v5 navigationController];
    [v4 pushViewController:v3 animated:1];

    WeakRetained = v5;
  }
}

uint64_t sub_4CCC()
{
  v0 = sub_EAB0();
  sub_D38C(v0, qword_19038);
  sub_D300(v0, qword_19038);
  return sub_EAA0();
}

uint64_t sub_4D50()
{
  v1[2] = v0;
  v2 = *(*(sub_E870() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_EBF0();
  v1[4] = sub_EBE0();
  v4 = sub_EBD0();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_4E14, v4, v3);
}

uint64_t sub_4E14()
{
  v1 = *(v0 + 16);
  sub_E9C0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = async function pointer to BlocklistViewModel.__allocating_init(presentContactPicker:)[1];
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_4EF8;

  return BlocklistViewModel.__allocating_init(presentContactPicker:)(sub_DD34, v2);
}

uint64_t sub_4EF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return _swift_task_switch(sub_5020, v5, v4);
}

uint64_t sub_5020()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  [v4 setBlocklistViewModel:v1];

  sub_E860();
  v5 = objc_allocWithZone(sub_D2B8(&qword_19148, &unk_10F50));
  v6 = sub_EAC0();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_5264(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_EBF0();
  v2[4] = sub_EBE0();
  v4 = sub_EBD0();

  return _swift_task_switch(sub_52FC, v4, v3);
}

uint64_t sub_52FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_53AC;
  v6 = v0[3];

  return sub_4D50();
}

uint64_t sub_53AC(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v8 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_54F8()
{
  v1 = (*(*(sub_D2B8(&qword_190D8, &qword_10E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = v9 - v2;
  if ([v0 blocklistViewModel])
  {
    sub_ED20();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    return sub_D718(v12, &qword_190E8, &qword_10EB0);
  }

  sub_E9C0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v9[1];
    v6 = sub_EC10();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_EBF0();

    v7 = sub_EBE0();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_5908(0, 0, v3, &unk_10EF8, v8);
  }

  return result;
}

uint64_t sub_56BC()
{
  v0[2] = sub_EBF0();
  v0[3] = sub_EBE0();
  v1 = async function pointer to BlocklistViewModel.refreshBlocklistEntries()[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_576C;

  return BlocklistViewModel.refreshBlocklistEntries()();
}

uint64_t sub_576C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_EBD0();

  return _swift_task_switch(sub_58A8, v5, v4);
}

uint64_t sub_58A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_D2B8(&qword_190D8, &qword_10E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_D508(a3, v26 - v10, &qword_190D8, &qword_10E80);
  v12 = sub_EC10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_D718(v11, &qword_190D8, &qword_10E80);
  }

  else
  {
    sub_EC00();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_EBD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_EB60() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_D718(a3, &qword_190D8, &qword_10E80);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_D718(a3, &qword_190D8, &qword_10E80);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_5C50()
{
  if ([v0 blocklistViewModel])
  {
    sub_ED20();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (!*(&v3 + 1))
  {
    return sub_D718(v4, &qword_190E8, &qword_10EB0);
  }

  sub_E9C0();
  result = swift_dynamicCast();
  if (result)
  {
    sub_E980();
  }

  return result;
}

void sub_5D74()
{
  v1 = v0;
  v2 = sub_ECD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_ECA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  (__chkstk_darwin)();
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_ED00();
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  v14 = (__chkstk_darwin)();
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v71 - v17;
  sub_E8C0();
  v18 = sub_E890();
  sub_E880();

  v19 = [v1 createNewAutocompleteSearchController];
  [v1 setAutocompleteSearchController:v19];

  v80 = [v1 autocompleteSearchController];
  if (!v80)
  {
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v75 = v20;
    [v20 setDelegate:v1];
    v77 = v1;
    v21 = v78;
    sub_ECE0();
    (*(v8 + 104))(v11, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v7);
    sub_ECB0();
    v22 = objc_opt_self();
    v23 = [v22 systemRedColor];
    sub_ECC0();
    (*(v3 + 104))(v6, enum case for UIButton.Configuration.Size.large(_:), v2);
    sub_EC90();
    v24 = objc_opt_self();
    v25 = sub_EB30();
    v73 = v24;
    v26 = [v24 localizedStringForKey:v25];

    sub_EB40();
    sub_ECF0();
    sub_DD44(0, &qword_19130, UIButton_ptr);
    v27 = *(v79 + 16);
    v74 = v12;
    v27(v16, v21, v12);
    v28 = sub_ED10();
    [v28 addTarget:v77 action:"handleContactPickerBlockButtonTapped" forControlEvents:64];
    v29 = v28;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [objc_allocWithZone(UIView) init];
    v31 = [v22 clearColor];
    [v30 setBackgroundColor:v31];

    v76 = v29;
    [v30 addSubview:v29];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = v75;
    [v75 setFooterView:v30];
    sub_D2B8(&qword_190B8, &qword_10E70);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10E20;
    v34 = [v30 leadingAnchor];
    v80 = v80;
    v35 = [v32 view];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 leadingAnchor];

      v38 = [v34 constraintEqualToAnchor:v37];
      *(v33 + 32) = v38;
      v39 = [v30 trailingAnchor];
      v40 = v32;
      v41 = [v32 view];
      if (v41)
      {
        v42 = v41;
        v72 = objc_opt_self();
        v43 = [v42 trailingAnchor];

        v44 = [v39 constraintEqualToAnchor:v43];
        *(v33 + 40) = v44;
        v45 = v76;
        v46 = [v76 leadingAnchor];
        v47 = [v30 leadingAnchor];
        v48 = [v46 constraintEqualToAnchor:v47 constant:25.0];

        *(v33 + 48) = v48;
        v49 = [v45 trailingAnchor];
        v50 = [v30 trailingAnchor];
        v51 = [v49 constraintEqualToAnchor:v50 constant:-25.0];

        *(v33 + 56) = v51;
        v52 = [v45 bottomAnchor];
        v53 = [v30 bottomAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:-25.0];

        *(v33 + 64) = v54;
        v55 = [v30 topAnchor];
        v56 = [v45 topAnchor];

        v57 = [v55 constraintEqualToAnchor:v56 constant:-25.0];
        *(v33 + 72) = v57;
        sub_DD44(0, &qword_19138, NSLayoutConstraint_ptr);
        isa = sub_EB90().super.isa;

        [v72 activateConstraints:isa];

        sub_DD44(0, &qword_19140, UIBarButtonItem_ptr);
        v82.value.super.super.isa = 0;
        v82.is_nil = 0;
        v59.super.super.isa = sub_EC50(UIBarButtonSystemItemCancel, v82, v83).super.super.isa;
        [(objc_class *)v59.super.super.isa setAction:"handleContactPickerCancelled"];
        v60 = v77;
        [(objc_class *)v59.super.super.isa setTarget:v77];
        v61 = [v40 navigationItem];
        [v61 setLeftBarButtonItem:v59.super.super.isa];

        v62 = [v40 navigationItem];
        v63 = sub_EB30();
        v64 = [v73 localizedStringForKey:v63];

        if (!v64)
        {
          sub_EB40();
          v64 = sub_EB30();
        }

        [v62 setTitle:v64];

        v65 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v40];
        v66 = v80;

        [v65 setDefinesPresentationContext:0];
        v67 = [v60 navigationController];
        v68 = v74;
        if (v67)
        {
          v69 = v67;
          [v67 presentViewController:v65 animated:1 completion:0];

          (*(v79 + 8))(v78, v68);
        }

        else
        {
          (*(v79 + 8))(v78, v74);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v70 = v80;
}

id sub_67B4()
{
  v1 = v0;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v2 = sub_EAB0();
  sub_D300(v2, qword_19038);
  v3 = sub_EA90();
  v4 = sub_EC40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "handleContactPickerCancelled", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_68FC()
{
  v1 = v0;
  v2 = sub_D2B8(&qword_190D8, &qword_10E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v6 = sub_EAB0();
  sub_D300(v6, qword_19038);
  v7 = sub_EA90();
  v8 = sub_EC40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "handleContactPickerBlockButtonTapped", v9, 2u);
  }

  v20 = [v1 autocompleteSearchController];
  if (v20)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      sub_E900();
      v12 = sub_E8F0();
      v13 = sub_EC10();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      sub_EBF0();
      v14 = v20;
      v15 = v1;

      v16 = sub_EBE0();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v11;
      v17[5] = v15;
      v17[6] = v12;
      sub_5908(0, 0, v5, &unk_10E90, v17);

      [v15 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v18 = v20;
    }
  }
}

uint64_t sub_6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = sub_EA20();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = sub_EA60();
  v6[26] = v10;
  v11 = *(v10 - 8);
  v6[27] = v11;
  v12 = *(v11 + 64) + 15;
  v6[28] = swift_task_alloc();
  v13 = sub_EA80();
  v6[29] = v13;
  v14 = *(v13 - 8);
  v6[30] = v14;
  v15 = *(v14 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v16 = sub_EA50();
  v6[33] = v16;
  v17 = *(v16 - 8);
  v6[34] = v17;
  v18 = *(v17 + 64) + 15;
  v6[35] = swift_task_alloc();
  v19 = sub_EA10();
  v6[36] = v19;
  v20 = *(v19 - 8);
  v6[37] = v20;
  v21 = *(v20 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  sub_EBF0();
  v6[43] = sub_EBE0();
  v23 = sub_EBD0();
  v6[44] = v23;
  v6[45] = v22;

  return _swift_task_switch(sub_6E40, v23, v22);
}

uint64_t sub_6E40()
{
  v115 = v0;
  v1 = _swiftEmptyArrayStorage;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v2 = v0 + 144;
  v3 = [*(v0 + 160) recipients];
  sub_DD44(0, &qword_190E0, CNComposeRecipient_ptr);
  v4 = sub_EBA0();
  *(v0 + 368) = v4;

  if (v4 >> 62)
  {
    goto LABEL_81;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  *(v0 + 376) = v5;
  if (v5)
  {
    do
    {
      v6 = 0;
      v7 = (v2 - 128);
      v8 = (v2 - 96);
      *(v0 + 480) = enum case for Handle.Kind.phoneNumber(_:);
      *(v0 + 484) = enum case for Handle.Kind.emailAddress(_:);
      *(v0 + 488) = enum case for SettingsPersonHandle.HandleType.phone(_:);
      *(v0 + 492) = enum case for SettingsPersonHandle.HandleType.email(_:);
      p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
      v108 = (v2 - 96);
      v109 = (v2 - 128);
      v107 = v2;
      while (1)
      {
        *(v0 + 392) = v1;
        *(v0 + 400) = v1;
        *(v0 + 384) = v1;
        v10 = *(v0 + 368);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = sub_ED40();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_84;
          }

          v11 = *(v10 + 8 * v6 + 32);
        }

        v12 = v11;
        *(v0 + 408) = v11;
        *(v0 + 416) = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_80;
        }

        if (p_opt_class_meths[6] != -1)
        {
          swift_once();
        }

        v13 = sub_EAB0();
        *(v0 + 424) = sub_D300(v13, qword_19038);
        v1 = v12;
        v14 = sub_EA90();
        v15 = sub_EC40();

        v111 = v1;
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v114 = v17;
          *v16 = 136315138;
          v18 = v1;
          v19 = [v18 description];
          v20 = sub_EB40();
          v22 = v21;

          v23 = sub_C76C(v20, v22, &v114);

          *(v16 + 4) = v23;
          _os_log_impl(&dword_0, v14, v15, "Requesting to block %s", v16, 0xCu);
          sub_D778(v17);
          v8 = v108;
          v7 = v109;

          v1 = v111;
        }

        if ([*(v0 + 168) blocklistViewModel])
        {
          sub_ED20();
          swift_unknownObjectRelease();
        }

        else
        {
          *v8 = 0u;
          v8[1] = 0u;
        }

        v24 = v8[1];
        *v7 = *v8;
        v7[1] = v24;
        if (!*(v0 + 40))
        {
          v79 = *(v0 + 368);
          v80 = *(v0 + 344);

          sub_D718(v7, &qword_190E8, &qword_10EB0);
LABEL_67:
          swift_bridgeObjectRelease_n();
          goto LABEL_75;
        }

        sub_E9C0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          v81 = *(v0 + 368);
          v82 = *(v0 + 344);

          goto LABEL_67;
        }

        *(v0 + 432) = *(v0 + 152);
        v25 = [v1 contact];
        *(v0 + 440) = v25;
        if (!v25)
        {
          goto LABEL_36;
        }

        v26 = v25;
        if ([v25 hasBeenPersisted])
        {
          break;
        }

LABEL_36:
        v42 = sub_E9A0();
        v43 = v42;
        v44 = *(v42 + 16);
        v45 = v111;
        if (!v44)
        {
LABEL_54:
          v63 = *(v0 + 484);
          v64 = *(v0 + 480);
          v66 = *(v0 + 216);
          v65 = *(v0 + 224);
          v67 = *(v0 + 208);

          if ([v45 kind])
          {
            v68 = v64;
          }

          else
          {
            v68 = v63;
          }

          (*(v66 + 104))(v65, v68, v67);
          v69 = [v45 normalizedAddress];
          if (v69 || (v69 = [v45 address]) != 0)
          {
            v70 = *(v0 + 256);
            v71 = *(v0 + 224);
            v72 = v69;
            sub_EB40();

            sub_EA70();
            v73 = async function pointer to BlockList.add(handle:)[1];
            v74 = swift_task_alloc();
            *(v0 + 464) = v74;
            *v74 = v0;
            v74[1] = sub_865C;
            v75 = *(v0 + 176);
            v69 = *(v0 + 256);
          }

          else
          {
            __break(1u);
          }

          return BlockList.add(handle:)(v69);
        }

        v2 = 0;
        v46 = *(*(v0 + 296) + 80);
        v113 = v42 + ((v46 + 32) & ~v46);
        v110 = v42;
        while (1)
        {
          if (v2 >= *(v43 + 16))
          {
            __break(1u);
            goto LABEL_79;
          }

          v47 = *(v0 + 320);
          v1 = *(v0 + 288);
          v48 = *(v0 + 296);
          (*(v48 + 16))(v47, v113 + *(v48 + 72) * v2, v1);
          v49 = sub_EA00();
          (*(v48 + 8))(v47, v1);
          if (!*(v49 + 16))
          {

            goto LABEL_39;
          }

          (*(*(v0 + 272) + 16))(*(v0 + 280), v49 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

          v50 = sub_EA40();
          v52 = v51;
          v53 = [v45 address];
          if (!v53)
          {
            v62 = *(v0 + 272);
            v61 = *(v0 + 280);
            v1 = *(v0 + 264);

            (*(v62 + 8))(v61, v1);
            goto LABEL_39;
          }

          v54 = v53;
          v55 = sub_EB40();
          v57 = v56;

          v59 = *(v0 + 272);
          v58 = *(v0 + 280);
          v60 = *(v0 + 264);
          if (v50 == v55 && v52 == v57)
          {
            break;
          }

          v1 = sub_EDC0();

          (*(v59 + 8))(v58, v60);
          v43 = v110;
          v45 = v111;
          if (v1)
          {
            goto LABEL_49;
          }

LABEL_39:
          if (v44 == ++v2)
          {
            goto LABEL_54;
          }
        }

        (*(v59 + 8))(v58, v60);
        v45 = v111;
LABEL_49:

LABEL_52:
        v6 = *(v0 + 416);
        v1 = _swiftEmptyArrayStorage;
        v2 = v107;
        v8 = v108;
        v7 = v109;
        p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
        if (v6 == *(v0 + 376))
        {
          v83 = *(v0 + 368);
          goto LABEL_68;
        }
      }

      v27 = sub_E970();
      v28 = v27;
      v2 = *(v27 + 16);
      if (!v2)
      {
LABEL_62:

        v76 = async function pointer to BlockList.add(contact:)[1];
        v77 = swift_task_alloc();
        *(v0 + 448) = v77;
        *v77 = v0;
        v77[1] = sub_7960;
        v78 = *(v0 + 176);

        return BlockList.add(contact:)(v26);
      }

      v29 = 0;
      v30 = *(*(v0 + 296) + 80);
      v112 = v27 + ((v30 + 32) & ~v30);
      while (v29 < *(v28 + 16))
      {
        v31 = *(v0 + 336);
        v32 = *(v0 + 288);
        v33 = *(v0 + 296);
        (*(v33 + 16))(v31, v112 + *(v33 + 72) * v29, v32);
        v34 = sub_E9F0();
        (*(v33 + 8))(v31, v32);
        if (v34)
        {
          v35 = [v34 identifier];

          v36 = sub_EB40();
          v34 = v37;
        }

        else
        {
          v36 = 0;
        }

        v38 = [v26 identifier];
        v1 = sub_EB40();
        v40 = v39;

        if (v34)
        {
          if (v36 == v1 && v34 == v40)
          {

LABEL_51:

            goto LABEL_52;
          }

          v1 = sub_EDC0();

          if (v1)
          {
            goto LABEL_51;
          }
        }

        else
        {
        }

        if (v2 == ++v29)
        {
          goto LABEL_62;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v105 = sub_EDB0();
      *(v0 + 376) = v105;
    }

    while (v105);
  }

LABEL_68:
  v84 = *(v0 + 344);

  if (v1 >> 62)
  {
LABEL_84:
    v85 = sub_EDB0();
  }

  else
  {
    v85 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v85)
  {
    v86 = *(v0 + 168);
    sub_E8C0();
    v87 = sub_E890();
    v88 = sub_AC90(_swiftEmptyArrayStorage);

    v89._rawValue = v88;
    v117.value.super.super.isa = v86;
    sub_E8B0(v89, v117);
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v90 = *(v0 + 168);
    sub_E8C0();
    v91 = sub_E890();
    v92 = sub_AE84(_swiftEmptyArrayStorage);

    v93._rawValue = v92;
    v118.value.super.super.isa = v90;
    sub_E8A0(v93, v118);
  }

  else
  {
  }

LABEL_75:
  v95 = *(v0 + 328);
  v94 = *(v0 + 336);
  v97 = *(v0 + 312);
  v96 = *(v0 + 320);
  v98 = *(v0 + 304);
  v99 = *(v0 + 280);
  v101 = *(v0 + 248);
  v100 = *(v0 + 256);
  v102 = *(v0 + 224);
  v103 = *(v0 + 200);

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_7960()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_95B8;
  }

  else
  {
    v7 = sub_7A9C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_7A9C()
{
  v128 = v0;
  v1 = (v0 + 112);
  v2 = *(v0 + 440);
  sub_EB80();
  if (*(&dword_10 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_84;
  }

LABEL_2:
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 328);
  sub_EBC0();
  v6 = *(v0 + 144);
  v7 = v3;
  sub_E9E0();
  v8 = sub_E960();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_C590(0, v11[2] + 1, 1, v11, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_C590(v13 > 1, v14 + 1, 1, v11, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v10 = v11;
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 440);
  v17 = *(v0 + 408);
  v18 = *(v0 + 328);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v11[2] = v14 + 1;
  (*(v20 + 32))(v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14, v18, v19);
  v8(v1, 0);

  v22 = *(v0 + 416);
  v23 = *(v0 + 384);
  if (v22 == *(v0 + 376))
  {
    goto LABEL_7;
  }

  v122 = v6;
  v121 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v6;
    *(v0 + 400) = v6;
    *(v0 + 384) = v23;
    v34 = *(v0 + 368);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = sub_ED40();
    }

    else
    {
      if (v22 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_89;
      }

      v35 = *(v34 + 8 * v22 + 32);
    }

    v36 = v35;
    *(v0 + 408) = v35;
    *(v0 + 416) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    if (qword_19030 != -1)
    {
      swift_once();
    }

    v37 = sub_EAB0();
    *(v0 + 424) = sub_D300(v37, qword_19038);
    v38 = v36;
    v39 = sub_EA90();
    v40 = sub_EC40();

    v124 = v38;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v127 = v42;
      *v41 = 136315138;
      v43 = v38;
      v1 = [v43 description];
      v44 = sub_EB40();
      v46 = v45;

      v47 = sub_C76C(v44, v46, &v127);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "Requesting to block %s", v41, 0xCu);
      sub_D778(v42);

      v38 = v124;
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v48 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v48;
    if (!*(v0 + 40))
    {
      v105 = *(v0 + 368);
      v106 = *(v0 + 344);

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_77:

      goto LABEL_78;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v107 = *(v0 + 368);
      v108 = *(v0 + 344);

      goto LABEL_77;
    }

    *(v0 + 432) = *(v0 + 152);
    v49 = [v38 contact];
    *(v0 + 440) = v49;
    if (v49)
    {
      v50 = v49;
      if ([v49 hasBeenPersisted])
      {
        v51 = sub_E970();
        v52 = v51;
        v53 = *(v51 + 16);
        if (!v53)
        {
LABEL_72:

          v102 = async function pointer to BlockList.add(contact:)[1];
          v103 = swift_task_alloc();
          *(v0 + 448) = v103;
          *v103 = v0;
          v103[1] = sub_7960;
          v104 = *(v0 + 176);

          return BlockList.add(contact:)(v50);
        }

        v54 = 0;
        v55 = *(*(v0 + 296) + 80);
        v125 = v51 + ((v55 + 32) & ~v55);
        while (v54 < *(v52 + 16))
        {
          v56 = *(v0 + 336);
          v57 = *(v0 + 288);
          v58 = *(v0 + 296);
          (*(v58 + 16))(v56, v125 + *(v58 + 72) * v54, v57);
          v59 = sub_E9F0();
          (*(v58 + 8))(v56, v57);
          if (v59)
          {
            v60 = [v59 identifier];

            v61 = sub_EB40();
            v59 = v62;
          }

          else
          {
            v61 = 0;
          }

          v63 = [v50 identifier];
          v64 = sub_EB40();
          v1 = v65;

          if (v59)
          {
            if (v61 == v64 && v59 == v1)
            {

LABEL_60:

              goto LABEL_61;
            }

            v67 = sub_EDC0();

            if (v67)
            {
              goto LABEL_60;
            }
          }

          else
          {
          }

          if (v53 == ++v54)
          {
            goto LABEL_72;
          }
        }

LABEL_83:
        __break(1u);
LABEL_84:
        sub_EBB0();
        goto LABEL_2;
      }
    }

    v68 = sub_E9A0();
    v69 = v68;
    v70 = *(v68 + 16);
    v71 = v124;
    if (!v70)
    {
LABEL_63:
      v90 = *(v0 + 484);
      v91 = *(v0 + 480);
      v93 = *(v0 + 216);
      v92 = *(v0 + 224);
      v94 = *(v0 + 208);

      if ([v71 kind])
      {
        v95 = v91;
      }

      else
      {
        v95 = v90;
      }

      (*(v93 + 104))(v92, v95, v94);
      v21 = [v71 normalizedAddress];
      if (v21 || (v21 = [v71 address]) != 0)
      {
        v96 = *(v0 + 256);
        v97 = *(v0 + 224);
        v98 = v21;
        sub_EB40();

        sub_EA70();
        v99 = async function pointer to BlockList.add(handle:)[1];
        v100 = swift_task_alloc();
        *(v0 + 464) = v100;
        *v100 = v0;
        v100[1] = sub_865C;
        v101 = *(v0 + 176);
        v21 = *(v0 + 256);

        return BlockList.add(handle:)(v21);
      }

LABEL_89:
      __break(1u);
      return BlockList.add(handle:)(v21);
    }

    v72 = 0;
    v73 = *(*(v0 + 296) + 80);
    v126 = v68 + ((v73 + 32) & ~v73);
    v123 = v68;
    while (1)
    {
      if (v72 >= *(v69 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v74 = *(v0 + 320);
      v1 = *(v0 + 288);
      v75 = *(v0 + 296);
      (*(v75 + 16))(v74, v126 + *(v75 + 72) * v72, v1);
      v76 = sub_EA00();
      (*(v75 + 8))(v74, v1);
      if (!*(v76 + 16))
      {

        goto LABEL_48;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v76 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v77 = sub_EA40();
      v79 = v78;
      v80 = [v71 address];
      if (!v80)
      {
        v89 = *(v0 + 272);
        v88 = *(v0 + 280);
        v1 = *(v0 + 264);

        (*(v89 + 8))(v88, v1);
        goto LABEL_48;
      }

      v81 = v80;
      v82 = sub_EB40();
      v1 = v83;

      v85 = *(v0 + 272);
      v84 = *(v0 + 280);
      v86 = *(v0 + 264);
      if (v77 == v82 && v79 == v1)
      {
        break;
      }

      v87 = sub_EDC0();

      (*(v85 + 8))(v84, v86);
      v69 = v123;
      v71 = v124;
      if (v87)
      {
        goto LABEL_58;
      }

LABEL_48:
      if (v70 == ++v72)
      {
        goto LABEL_63;
      }
    }

    (*(v85 + 8))(v84, v86);
    v71 = v124;
LABEL_58:

LABEL_61:
    v22 = *(v0 + 416);
    v6 = v122;
    v23 = v121;
  }

  while (v22 != *(v0 + 376));
LABEL_7:
  v24 = *(v0 + 368);
  v25 = *(v0 + 344);

  if (!(v6 >> 62))
  {
    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_86:
  if (sub_EDB0())
  {
LABEL_9:
    v26 = *(v0 + 168);
    sub_E8C0();
    v27 = sub_E890();
    v28 = sub_AC90(v6);

    v29._rawValue = v28;
    v130.value.super.super.isa = v26;
    sub_E8B0(v29, v130);
  }

LABEL_10:

  if (*(v23 + 16))
  {
    v30 = *(v0 + 168);
    sub_E8C0();
    v31 = sub_E890();
    v32 = sub_AE84(v23);

    v33._rawValue = v32;
    v131.value.super.super.isa = v30;
    sub_E8A0(v33, v131);

    goto LABEL_79;
  }

LABEL_78:

LABEL_79:
  v110 = *(v0 + 328);
  v109 = *(v0 + 336);
  v112 = *(v0 + 312);
  v111 = *(v0 + 320);
  v113 = *(v0 + 304);
  v114 = *(v0 + 280);
  v116 = *(v0 + 248);
  v115 = *(v0 + 256);
  v117 = *(v0 + 224);
  v118 = *(v0 + 200);

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_865C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = sub_A118;
  }

  else
  {
    v7 = sub_8798;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_8798()
{
  v157 = v0;
  v1 = *(v0 + 384);
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_2:
  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_C590(v4 > 1, v5 + 1, 1, v3, &qword_19100, &qword_10EC8, &type metadata accessor for Handle);
  }

  v6 = *(v0 + 408);
  v7 = *(v0 + 272);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v3[2] = v5 + 1;
  (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v8, v10);
  sub_D2B8(&qword_190F0, &qword_10EB8);
  v11 = *(v7 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10E30;
  v13 = [v6 address];
  if (!v13)
  {
    goto LABEL_97;
  }

  v14 = v13;
  v15 = *(v0 + 408);
  sub_EB40();

  v13 = [v15 normalizedAddress];
  v149 = v3;
  if (!v13)
  {
    v13 = [*(v0 + 408) address];
    if (!v13)
    {
      goto LABEL_98;
    }
  }

  v16 = *(v0 + 408);
  v141 = *(v0 + 492);
  v17 = *(v0 + 488);
  v144 = *(v0 + 304);
  v146 = *(v0 + 432);
  v18 = *(v0 + 296);
  v142 = *(v0 + 312);
  v143 = *(v0 + 288);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 184);
  v22 = v13;
  sub_EB40();

  if ([v16 kind])
  {
    v23 = v17;
  }

  else
  {
    v23 = v141;
  }

  (*(v20 + 104))(v19, v23, v21);
  sub_EA30();
  sub_E9D0();
  (*(v18 + 16))(v144, v142, v143);
  v24 = sub_E990();
  v26 = v25;
  v27 = *v25;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((v28 & 1) == 0)
  {
    v27 = sub_C590(0, v27[2] + 1, 1, v27, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v26 = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  v152 = v24;
  if (v30 >= v29 >> 1)
  {
    v27 = sub_C590(v29 > 1, v30 + 1, 1, v27, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v26 = v27;
  }

  v31 = *(v0 + 432);
  v32 = *(v0 + 408);
  v33 = *(v0 + 304);
  v34 = *(v0 + 312);
  v35 = *(v0 + 288);
  v36 = *(v0 + 296);
  v150 = *(v0 + 256);
  v37 = *(v0 + 240);
  v147 = *(v0 + 232);
  v27[2] = v30 + 1;
  (*(v36 + 32))(v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, v33, v35);
  v152();

  (*(v36 + 8))(v34, v35);
  v13 = (*(v37 + 8))(v150, v147);
  v3 = *(v0 + 392);
  v38 = *(v0 + 400);
  v39 = *(v0 + 416);
  v40 = v149;
  if (v39 == *(v0 + 376))
  {
    goto LABEL_15;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v148 = *(v0 + 400);
  v145 = *(v0 + 392);
  do
  {
    *(v0 + 392) = v3;
    *(v0 + 400) = v38;
    *(v0 + 384) = v40;
    v52 = *(v0 + 368);
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = sub_ED40();
    }

    else
    {
      if (v39 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v53 = *(v52 + 8 * v39 + 32);
    }

    v54 = v53;
    *(v0 + 408) = v53;
    *(v0 + 416) = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v55 = sub_EAB0();
    *(v0 + 424) = sub_D300(v55, qword_19038);
    v56 = v54;
    v57 = sub_EA90();
    v58 = sub_EC40();

    v153 = v56;
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v156 = v60;
      *v59 = 136315138;
      v61 = v56;
      v62 = [v61 description];
      v63 = sub_EB40();
      v3 = v64;

      v65 = sub_C76C(v63, v3, &v156);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_0, v57, v58, "Requesting to block %s", v59, 0xCu);
      sub_D778(v60);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v66 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v66;
    if (!*(v0 + 40))
    {
      v125 = *(v0 + 368);
      v126 = *(v0 + 344);

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_85:

      goto LABEL_86;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v127 = *(v0 + 368);
      v128 = *(v0 + 344);

      goto LABEL_85;
    }

    *(v0 + 432) = *(v0 + 152);
    v67 = [v153 contact];
    *(v0 + 440) = v67;
    if (v67)
    {
      v68 = v67;
      if ([v67 hasBeenPersisted])
      {
        v69 = sub_E970();
        v70 = v69;
        v71 = *(v69 + 16);
        if (!v71)
        {
LABEL_80:

          v122 = async function pointer to BlockList.add(contact:)[1];
          v123 = swift_task_alloc();
          *(v0 + 448) = v123;
          *v123 = v0;
          v123[1] = sub_7960;
          v124 = *(v0 + 176);

          return BlockList.add(contact:)(v68);
        }

        v72 = 0;
        v73 = *(*(v0 + 296) + 80);
        v154 = v69 + ((v73 + 32) & ~v73);
        while (v72 < *(v70 + 16))
        {
          v74 = *(v0 + 336);
          v75 = *(v0 + 288);
          v76 = *(v0 + 296);
          (*(v76 + 16))(v74, v154 + *(v76 + 72) * v72, v75);
          v77 = sub_E9F0();
          (*(v76 + 8))(v74, v75);
          if (v77)
          {
            v78 = [v77 identifier];

            v3 = sub_EB40();
            v77 = v79;
          }

          else
          {
            v3 = 0;
          }

          v80 = [v68 identifier];
          v81 = sub_EB40();
          v83 = v82;

          if (v77)
          {
            if (v3 == v81 && v77 == v83)
            {

LABEL_68:

              goto LABEL_69;
            }

            v85 = sub_EDC0();

            if (v85)
            {
              goto LABEL_68;
            }
          }

          else
          {
          }

          if (v71 == ++v72)
          {
            goto LABEL_80;
          }
        }

LABEL_91:
        __break(1u);
LABEL_92:
        v3 = sub_C590(0, v3[2] + 1, 1, v3, &qword_19100, &qword_10EC8, &type metadata accessor for Handle);
        goto LABEL_2;
      }
    }

    v86 = sub_E9A0();
    v3 = v86;
    v87 = *(v86 + 16);
    v88 = v153;
    if (!v87)
    {
LABEL_71:
      v110 = *(v0 + 484);
      v111 = *(v0 + 480);
      v113 = *(v0 + 216);
      v112 = *(v0 + 224);
      v114 = *(v0 + 208);

      if ([v88 kind])
      {
        v115 = v111;
      }

      else
      {
        v115 = v110;
      }

      (*(v113 + 104))(v112, v115, v114);
      v13 = [v88 normalizedAddress];
      if (v13 || (v13 = [v88 address]) != 0)
      {
        v116 = *(v0 + 256);
        v117 = *(v0 + 224);
        v118 = v13;
        sub_EB40();

        sub_EA70();
        v119 = async function pointer to BlockList.add(handle:)[1];
        v120 = swift_task_alloc();
        *(v0 + 464) = v120;
        *v120 = v0;
        v120[1] = sub_865C;
        v121 = *(v0 + 176);
        v13 = *(v0 + 256);

        return BlockList.add(handle:)(v13);
      }

LABEL_99:
      __break(1u);
      return BlockList.add(handle:)(v13);
    }

    v89 = 0;
    v90 = *(*(v0 + 296) + 80);
    v155 = v86 + ((v90 + 32) & ~v90);
    v151 = v86;
    while (1)
    {
      if (v89 >= v3[2])
      {
        __break(1u);
        goto LABEL_91;
      }

      v91 = *(v0 + 320);
      v92 = *(v0 + 288);
      v93 = *(v0 + 296);
      (*(v93 + 16))(v91, v155 + *(v93 + 72) * v89, v92);
      v94 = sub_EA00();
      (*(v93 + 8))(v91, v92);
      if (!*(v94 + 16))
      {

        goto LABEL_56;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v94 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v95 = sub_EA40();
      v97 = v96;
      v98 = [v88 address];
      if (!v98)
      {
        v108 = *(v0 + 272);
        v107 = *(v0 + 280);
        v109 = *(v0 + 264);

        (*(v108 + 8))(v107, v109);
        goto LABEL_56;
      }

      v99 = v98;
      v100 = sub_EB40();
      v102 = v101;

      v104 = *(v0 + 272);
      v103 = *(v0 + 280);
      v105 = *(v0 + 264);
      if (v95 == v100 && v97 == v102)
      {
        break;
      }

      v106 = sub_EDC0();

      (*(v104 + 8))(v103, v105);
      v3 = v151;
      v88 = v153;
      if (v106)
      {
        goto LABEL_66;
      }

LABEL_56:
      if (v87 == ++v89)
      {
        goto LABEL_71;
      }
    }

    (*(v104 + 8))(v103, v105);
    v88 = v153;
LABEL_66:

LABEL_69:
    v39 = *(v0 + 416);
    v38 = v148;
    v40 = v149;
    v3 = v145;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v39 != *(v0 + 376));
LABEL_15:
  v41 = *(v0 + 368);
  v42 = *(v0 + 344);

  if (!(v38 >> 62))
  {
    if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_94:
  if (sub_EDB0())
  {
LABEL_17:
    v43 = *(v0 + 168);
    sub_E8C0();
    v44 = sub_E890();
    v45 = sub_AC90(v3);

    v46._rawValue = v45;
    v159.value.super.super.isa = v43;
    sub_E8B0(v46, v159);
  }

LABEL_18:

  if (*(v40 + 16))
  {
    v47 = *(v0 + 168);
    sub_E8C0();
    v48 = sub_E890();
    v49 = sub_AE84(v40);

    v50._rawValue = v49;
    v160.value.super.super.isa = v47;
    sub_E8A0(v50, v160);

    goto LABEL_87;
  }

LABEL_86:

LABEL_87:
  v130 = *(v0 + 328);
  v129 = *(v0 + 336);
  v132 = *(v0 + 312);
  v131 = *(v0 + 320);
  v133 = *(v0 + 304);
  v134 = *(v0 + 280);
  v136 = *(v0 + 248);
  v135 = *(v0 + 256);
  v137 = *(v0 + 224);
  v138 = *(v0 + 200);

  v139 = *(v0 + 8);

  return v139();
}

uint64_t sub_95B8()
{
  v128 = v0;
  v1 = *(v0 + 432);

  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = sub_EA90();
  v6 = sub_EC30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 408);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v127 = v10;
    *v9 = 136315138;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_EB40();
    v15 = v14;

    v16 = sub_C76C(v13, v15, &v127);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "Failed to block recipient %s", v9, 0xCu);
    sub_D778(v10);
  }

  else
  {
  }

  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 416);
  v21 = *(v0 + 384);
  if (v20 == *(v0 + 376))
  {
    goto LABEL_5;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v122 = *(v0 + 400);
  v120 = *(v0 + 392);
  v121 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v19;
    *(v0 + 400) = v18;
    *(v0 + 384) = v21;
    v33 = *(v0 + 368);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = sub_ED40();
    }

    else
    {
      if (v20 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_86;
      }

      v34 = *(v33 + 8 * v20 + 32);
    }

    v35 = v34;
    *(v0 + 408) = v34;
    *(v0 + 416) = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_82;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v36 = sub_EAB0();
    *(v0 + 424) = sub_D300(v36, qword_19038);
    v37 = v35;
    v38 = sub_EA90();
    v39 = sub_EC40();

    v124 = v37;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v127 = v41;
      *v40 = 136315138;
      v42 = v37;
      v43 = [v42 description];
      v44 = sub_EB40();
      v19 = v45;

      v46 = sub_C76C(v44, v19, &v127);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_0, v38, v39, "Requesting to block %s", v40, 0xCu);
      sub_D778(v41);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v47 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v47;
    if (!*(v0 + 40))
    {
      v104 = *(v0 + 368);
      v105 = *(v0 + 344);

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_75:

      goto LABEL_76;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v106 = *(v0 + 368);
      v107 = *(v0 + 344);

      goto LABEL_75;
    }

    *(v0 + 432) = *(v0 + 152);
    v48 = [v124 contact];
    *(v0 + 440) = v48;
    if (v48)
    {
      v49 = v48;
      if ([v48 hasBeenPersisted])
      {
        v50 = sub_E970();
        v51 = v50;
        v52 = *(v50 + 16);
        if (!v52)
        {
LABEL_70:

          v101 = async function pointer to BlockList.add(contact:)[1];
          v102 = swift_task_alloc();
          *(v0 + 448) = v102;
          *v102 = v0;
          v102[1] = sub_7960;
          v103 = *(v0 + 176);

          return BlockList.add(contact:)(v49);
        }

        v21 = 0;
        v53 = *(*(v0 + 296) + 80);
        v125 = v50 + ((v53 + 32) & ~v53);
        while (v21 < *(v51 + 16))
        {
          v54 = *(v0 + 336);
          v55 = *(v0 + 288);
          v56 = *(v0 + 296);
          (*(v56 + 16))(v54, v125 + *(v56 + 72) * v21, v55);
          v57 = sub_E9F0();
          (*(v56 + 8))(v54, v55);
          if (v57)
          {
            v58 = [v57 identifier];

            v19 = sub_EB40();
            v57 = v59;
          }

          else
          {
            v19 = 0;
          }

          v60 = [v49 identifier];
          v61 = sub_EB40();
          v63 = v62;

          if (v57)
          {
            if (v19 == v61 && v57 == v63)
            {

LABEL_58:

              goto LABEL_59;
            }

            v65 = sub_EDC0();

            if (v65)
            {
              goto LABEL_58;
            }
          }

          else
          {
          }

          if (v52 == ++v21)
          {
            goto LABEL_70;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }

    v66 = sub_E9A0();
    v19 = v66;
    v67 = *(v66 + 16);
    v68 = v124;
    if (!v67)
    {
LABEL_61:
      v89 = *(v0 + 484);
      v90 = *(v0 + 480);
      v92 = *(v0 + 216);
      v91 = *(v0 + 224);
      v93 = *(v0 + 208);

      if ([v68 kind])
      {
        v94 = v90;
      }

      else
      {
        v94 = v89;
      }

      (*(v92 + 104))(v91, v94, v93);
      v17 = [v68 normalizedAddress];
      if (v17 || (v17 = [v68 address]) != 0)
      {
        v95 = *(v0 + 256);
        v96 = *(v0 + 224);
        v97 = v17;
        sub_EB40();

        sub_EA70();
        v98 = async function pointer to BlockList.add(handle:)[1];
        v99 = swift_task_alloc();
        *(v0 + 464) = v99;
        *v99 = v0;
        v99[1] = sub_865C;
        v100 = *(v0 + 176);
        v17 = *(v0 + 256);

        return BlockList.add(handle:)(v17);
      }

LABEL_86:
      __break(1u);
      return BlockList.add(handle:)(v17);
    }

    v21 = 0;
    v69 = *(*(v0 + 296) + 80);
    v126 = v66 + ((v69 + 32) & ~v69);
    v123 = v66;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v70 = *(v0 + 320);
      v71 = *(v0 + 288);
      v72 = *(v0 + 296);
      (*(v72 + 16))(v70, v126 + *(v72 + 72) * v21, v71);
      v73 = sub_EA00();
      (*(v72 + 8))(v70, v71);
      if (!*(v73 + 16))
      {

        goto LABEL_46;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v73 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v74 = sub_EA40();
      v76 = v75;
      v77 = [v68 address];
      if (!v77)
      {
        v87 = *(v0 + 272);
        v86 = *(v0 + 280);
        v88 = *(v0 + 264);

        (*(v87 + 8))(v86, v88);
        goto LABEL_46;
      }

      v78 = v77;
      v79 = sub_EB40();
      v81 = v80;

      v83 = *(v0 + 272);
      v82 = *(v0 + 280);
      v84 = *(v0 + 264);
      if (v74 == v79 && v76 == v81)
      {
        break;
      }

      v85 = sub_EDC0();

      (*(v83 + 8))(v82, v84);
      v19 = v123;
      v68 = v124;
      if (v85)
      {
        goto LABEL_56;
      }

LABEL_46:
      if (v67 == ++v21)
      {
        goto LABEL_61;
      }
    }

    (*(v83 + 8))(v82, v84);
    v68 = v124;
LABEL_56:

LABEL_59:
    v20 = *(v0 + 416);
    v19 = v120;
    v21 = v121;
    v18 = v122;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v20 != *(v0 + 376));
LABEL_5:
  v22 = *(v0 + 368);
  v23 = *(v0 + 344);

  if (!(v18 >> 62))
  {
    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_83:
  if (sub_EDB0())
  {
LABEL_7:
    v24 = *(v0 + 168);
    sub_E8C0();
    v25 = sub_E890();
    v26 = sub_AC90(v19);

    v27._rawValue = v26;
    v130.value.super.super.isa = v24;
    sub_E8B0(v27, v130);
  }

LABEL_8:

  if (*(v21 + 16))
  {
    v28 = *(v0 + 168);
    sub_E8C0();
    v29 = sub_E890();
    v30 = sub_AE84(v21);

    v31._rawValue = v30;
    v131.value.super.super.isa = v28;
    sub_E8A0(v31, v131);

    goto LABEL_77;
  }

LABEL_76:

LABEL_77:
  v109 = *(v0 + 328);
  v108 = *(v0 + 336);
  v111 = *(v0 + 312);
  v110 = *(v0 + 320);
  v112 = *(v0 + 304);
  v113 = *(v0 + 280);
  v115 = *(v0 + 248);
  v114 = *(v0 + 256);
  v116 = *(v0 + 224);
  v117 = *(v0 + 200);

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_A118()
{
  v131 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 472);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  v8 = sub_EA90();
  v9 = sub_EC30();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 408);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v130 = v13;
    *v12 = 136315138;
    v14 = v11;
    v15 = [v14 description];
    v16 = sub_EB40();
    v18 = v17;

    v19 = sub_C76C(v16, v18, &v130);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "Failed to block recipient %s", v12, 0xCu);
    sub_D778(v13);
  }

  else
  {
  }

  v22 = *(v0 + 392);
  v21 = *(v0 + 400);
  v23 = *(v0 + 416);
  v24 = *(v0 + 384);
  if (v23 == *(v0 + 376))
  {
    goto LABEL_5;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v125 = *(v0 + 400);
  v123 = *(v0 + 392);
  v124 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v22;
    *(v0 + 400) = v21;
    *(v0 + 384) = v24;
    v36 = *(v0 + 368);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = sub_ED40();
    }

    else
    {
      if (v23 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_86;
      }

      v37 = *(v36 + 8 * v23 + 32);
    }

    v38 = v37;
    *(v0 + 408) = v37;
    *(v0 + 416) = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_82;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v39 = sub_EAB0();
    *(v0 + 424) = sub_D300(v39, qword_19038);
    v40 = v38;
    v41 = sub_EA90();
    v42 = sub_EC40();

    v127 = v40;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v130 = v44;
      *v43 = 136315138;
      v45 = v40;
      v46 = [v45 description];
      v47 = sub_EB40();
      v22 = v48;

      v49 = sub_C76C(v47, v22, &v130);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_0, v41, v42, "Requesting to block %s", v43, 0xCu);
      sub_D778(v44);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v50 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v50;
    if (!*(v0 + 40))
    {
      v107 = *(v0 + 368);
      v108 = *(v0 + 344);

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_75:

      goto LABEL_76;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v109 = *(v0 + 368);
      v110 = *(v0 + 344);

      goto LABEL_75;
    }

    *(v0 + 432) = *(v0 + 152);
    v51 = [v127 contact];
    *(v0 + 440) = v51;
    if (v51)
    {
      v52 = v51;
      if ([v51 hasBeenPersisted])
      {
        v53 = sub_E970();
        v54 = v53;
        v55 = *(v53 + 16);
        if (!v55)
        {
LABEL_70:

          v104 = async function pointer to BlockList.add(contact:)[1];
          v105 = swift_task_alloc();
          *(v0 + 448) = v105;
          *v105 = v0;
          v105[1] = sub_7960;
          v106 = *(v0 + 176);

          return BlockList.add(contact:)(v52);
        }

        v24 = 0;
        v56 = *(*(v0 + 296) + 80);
        v128 = v53 + ((v56 + 32) & ~v56);
        while (v24 < *(v54 + 16))
        {
          v57 = *(v0 + 336);
          v58 = *(v0 + 288);
          v59 = *(v0 + 296);
          (*(v59 + 16))(v57, v128 + *(v59 + 72) * v24, v58);
          v60 = sub_E9F0();
          (*(v59 + 8))(v57, v58);
          if (v60)
          {
            v61 = [v60 identifier];

            v22 = sub_EB40();
            v60 = v62;
          }

          else
          {
            v22 = 0;
          }

          v63 = [v52 identifier];
          v64 = sub_EB40();
          v66 = v65;

          if (v60)
          {
            if (v22 == v64 && v60 == v66)
            {

LABEL_58:

              goto LABEL_59;
            }

            v68 = sub_EDC0();

            if (v68)
            {
              goto LABEL_58;
            }
          }

          else
          {
          }

          if (v55 == ++v24)
          {
            goto LABEL_70;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }

    v69 = sub_E9A0();
    v22 = v69;
    v70 = *(v69 + 16);
    v71 = v127;
    if (!v70)
    {
LABEL_61:
      v92 = *(v0 + 484);
      v93 = *(v0 + 480);
      v95 = *(v0 + 216);
      v94 = *(v0 + 224);
      v96 = *(v0 + 208);

      if ([v71 kind])
      {
        v97 = v93;
      }

      else
      {
        v97 = v92;
      }

      (*(v95 + 104))(v94, v97, v96);
      v20 = [v71 normalizedAddress];
      if (v20 || (v20 = [v71 address]) != 0)
      {
        v98 = *(v0 + 256);
        v99 = *(v0 + 224);
        v100 = v20;
        sub_EB40();

        sub_EA70();
        v101 = async function pointer to BlockList.add(handle:)[1];
        v102 = swift_task_alloc();
        *(v0 + 464) = v102;
        *v102 = v0;
        v102[1] = sub_865C;
        v103 = *(v0 + 176);
        v20 = *(v0 + 256);

        return BlockList.add(handle:)(v20);
      }

LABEL_86:
      __break(1u);
      return BlockList.add(handle:)(v20);
    }

    v24 = 0;
    v72 = *(*(v0 + 296) + 80);
    v129 = v69 + ((v72 + 32) & ~v72);
    v126 = v69;
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v73 = *(v0 + 320);
      v74 = *(v0 + 288);
      v75 = *(v0 + 296);
      (*(v75 + 16))(v73, v129 + *(v75 + 72) * v24, v74);
      v76 = sub_EA00();
      (*(v75 + 8))(v73, v74);
      if (!*(v76 + 16))
      {

        goto LABEL_46;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v76 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v77 = sub_EA40();
      v79 = v78;
      v80 = [v71 address];
      if (!v80)
      {
        v90 = *(v0 + 272);
        v89 = *(v0 + 280);
        v91 = *(v0 + 264);

        (*(v90 + 8))(v89, v91);
        goto LABEL_46;
      }

      v81 = v80;
      v82 = sub_EB40();
      v84 = v83;

      v86 = *(v0 + 272);
      v85 = *(v0 + 280);
      v87 = *(v0 + 264);
      if (v77 == v82 && v79 == v84)
      {
        break;
      }

      v88 = sub_EDC0();

      (*(v86 + 8))(v85, v87);
      v22 = v126;
      v71 = v127;
      if (v88)
      {
        goto LABEL_56;
      }

LABEL_46:
      if (v70 == ++v24)
      {
        goto LABEL_61;
      }
    }

    (*(v86 + 8))(v85, v87);
    v71 = v127;
LABEL_56:

LABEL_59:
    v23 = *(v0 + 416);
    v22 = v123;
    v24 = v124;
    v21 = v125;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v23 != *(v0 + 376));
LABEL_5:
  v25 = *(v0 + 368);
  v26 = *(v0 + 344);

  if (!(v21 >> 62))
  {
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_83:
  if (sub_EDB0())
  {
LABEL_7:
    v27 = *(v0 + 168);
    sub_E8C0();
    v28 = sub_E890();
    v29 = sub_AC90(v22);

    v30._rawValue = v29;
    v133.value.super.super.isa = v27;
    sub_E8B0(v30, v133);
  }

LABEL_8:

  if (*(v24 + 16))
  {
    v31 = *(v0 + 168);
    sub_E8C0();
    v32 = sub_E890();
    v33 = sub_AE84(v24);

    v34._rawValue = v33;
    v134.value.super.super.isa = v31;
    sub_E8A0(v34, v134);

    goto LABEL_77;
  }

LABEL_76:

LABEL_77:
  v112 = *(v0 + 328);
  v111 = *(v0 + 336);
  v114 = *(v0 + 312);
  v113 = *(v0 + 320);
  v115 = *(v0 + 304);
  v116 = *(v0 + 280);
  v118 = *(v0 + 248);
  v117 = *(v0 + 256);
  v119 = *(v0 + 224);
  v120 = *(v0 + 200);

  v121 = *(v0 + 8);

  return v121();
}

void *sub_AC90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_EDB0();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_ED80();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          sub_ED40();
          sub_DD44(0, &qword_19120, CNContact_ptr);
          sub_D2B8(&qword_19128, &qword_10EE8);
          swift_dynamicCast();
          sub_ED60();
          v6 = _swiftEmptyArrayStorage[2];
          sub_ED90();
          sub_EDA0();
          sub_ED70();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (a1 + 32);
        sub_DD44(0, &qword_19120, CNContact_ptr);
        do
        {
          v8 = *v7++;
          v9 = v8;
          sub_D2B8(&qword_19128, &qword_10EE8);
          swift_dynamicCast();
          sub_ED60();
          v10 = _swiftEmptyArrayStorage[2];
          sub_ED90();
          sub_EDA0();
          sub_ED70();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_AE84(uint64_t a1)
{
  v2 = sub_EA80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_D2B8(&qword_19110, &qword_10ED8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_CD14(0, v11, 0);
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v22;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_CD14(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      v12[2] = v17 + 1;
      sub_D824(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_B100()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_D2B8(&qword_190B0, &qword_10E68);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v100 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v89 - v6;
  v8 = sub_E820();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  v10 = __chkstk_darwin(v8);
  v99 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v89 - v12;
  v103 = sub_E850();
  v14 = *(v103 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v103);
  v17 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v18 = sub_EAB0();
  sub_D300(v18, qword_19038);
  v19 = sub_EA90();
  v20 = sub_EC40();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "emitBlocklistNavigationEvent", v21, 2u);
  }

  v22 = [v1 specifier];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 target];

    if (v24)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = [v25 parentListController];
        v92 = v1;
        v93 = v7;
        if (v26 && (v27 = v26, v28 = [v26 specifierID], v27, v28))
        {
          v29 = sub_EB40();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        sub_E840();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v96 = objc_opt_self();
        v97 = ObjCClassFromMetadata;
        v33 = [v96 bundleForClass:ObjCClassFromMetadata];
        v34 = [v33 bundleURL];

        sub_E800();
        v35 = objc_allocWithZone(_NSLocalizedStringResource);
        v36 = sub_EB30();
        isa = sub_E830().super.isa;
        sub_E7F0(v38);
        v40 = v39;
        v41 = [v35 initWithKey:v36 table:0 locale:isa bundleURL:v39];

        v42 = *(v101 + 8);
        v42(v13, v102);
        v43 = *(v14 + 8);
        v98 = v14 + 8;
        v95 = v43;
        v43(v17, v103);
        sub_D2B8(&qword_190B8, &qword_10E70);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_10E40;
        *(v44 + 32) = v41;
        v104 = v44;
        if (!v31)
        {

          swift_unknownObjectRelease();
          return;
        }

        v90 = v42;
        v91 = v41;
        if (v29 == 0xD00000000000001ELL && v31 == 0x8000000000010CE0 || (sub_EDC0() & 1) != 0)
        {
          v45 = v41;

          v94 = sub_EB40();
          v47 = v46;
          sub_E840();
          v48 = [v96 bundleForClass:v97];
          v49 = [v48 bundleURL];

          sub_E800();
          v50 = objc_allocWithZone(_NSLocalizedStringResource);
          v51 = v42;
          v52 = sub_EB30();
          v53 = sub_E830().super.isa;
          sub_E7F0(v54);
          v56 = v55;
          [v50 initWithKey:v52 table:0 locale:v53 bundleURL:v55];

          v51(v13, v102);
          v95(v17, v103);
          sub_EB80();
          if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v87 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
            sub_EBB0();
          }

          sub_EBC0();
          v57 = v94;
        }

        else
        {
          if (v29 == 0xD00000000000001BLL && v31 == 0x8000000000010C30)
          {
            v82 = v41;
          }

          else
          {
            v83 = sub_EDC0();
            v84 = v41;

            if ((v83 & 1) == 0)
            {

              swift_unknownObjectRelease();

              return;
            }
          }

          v57 = sub_EB40();
          v47 = v85;
          v86 = TUResolvedPhoneResource();
          sub_EB80();
          if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v88 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
            sub_EBB0();
          }

          sub_EBC0();
        }

        v94 = v57;
        v89[1] = v47;
        v89[2] = v104;
        sub_D2B8(&qword_190C0, &qword_10E78);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_10E50;
        *(v58 + 56) = &type metadata for String;
        v59 = sub_D338();
        *(v58 + 32) = v57;
        *(v58 + 40) = v47;
        *(v58 + 96) = &type metadata for String;
        *(v58 + 104) = v59;
        *(v58 + 64) = v59;
        *(v58 + 72) = 0xD00000000000002CLL;
        *(v58 + 80) = 0x8000000000010C90;

        sub_EB50();
        v60 = v93;
        sub_E810();

        sub_E840();
        v61 = [v96 bundleForClass:v97];
        v62 = [v61 bundleURL];

        sub_E800();
        v63 = objc_allocWithZone(_NSLocalizedStringResource);
        v64 = sub_EB30();
        v65 = sub_E830().super.isa;
        sub_E7F0(v66);
        v68 = v67;
        v69 = [v63 initWithKey:v64 table:0 locale:v65 bundleURL:v67];

        v70 = v102;
        v71 = v90;
        v90(v13, v102);
        v95(v17, v103);
        v72 = v100;
        sub_D508(v60, v100, &qword_190B0, &qword_10E68);
        v73 = v101;
        if ((*(v101 + 48))(v72, 1, v70) == 1)
        {
          sub_D718(v60, &qword_190B0, &qword_10E68);

          swift_unknownObjectRelease();

          v74 = v72;
        }

        else
        {
          v75 = v99;
          (*(v73 + 32))(v99, v72, v70);
          v76 = sub_EB30();

          sub_DD44(0, &qword_190D0, _NSLocalizedStringResource_ptr);
          v77 = v71;
          v78 = sub_EB90().super.isa;

          sub_E7F0(v79);
          v81 = v80;
          [v92 pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v76 title:v69 localizedNavigationComponents:v78 deepLink:v80];

          swift_unknownObjectRelease();
          v77(v75, v70);
          v74 = v60;
        }

        sub_D718(v74, &qword_190B0, &qword_10E68);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_BCE8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_DD9C;

  return v7();
}

uint64_t sub_BDD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_BEB8;

  return v8();
}

uint64_t sub_BEB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_D2B8(&qword_190D8, &qword_10E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_D508(a3, v24 - v10, &qword_190D8, &qword_10E80);
  v12 = sub_EC10();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_D718(v11, &qword_190D8, &qword_10E80);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_EC00();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_EBD0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_EB60() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_D718(a3, &qword_190D8, &qword_10E80);

    return v22;
  }

LABEL_8:
  sub_D718(a3, &qword_190D8, &qword_10E80);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_C2A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_DDA0;

  return v7(a1);
}

uint64_t sub_C3A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C498;

  return v7(a1);
}

uint64_t sub_C498()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_C590(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_D2B8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_C76C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_C838(v11, 0, 0, 1, a1, a2);
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
    sub_D7C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_D778(v11);
  return v7;
}

unint64_t sub_C838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_C944(a5, a6);
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
    result = sub_ED50();
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

void *sub_C944(uint64_t a1, unint64_t a2)
{
  v4 = sub_C990(a1, a2);
  sub_CAC0(&off_14BC8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_C990(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_CBAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_ED50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_EB70();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_CBAC(v10, 0);
        result = sub_ED30();
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

uint64_t sub_CAC0(uint64_t result)
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

  result = sub_CC20(result, v12, 1, v3);
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

void *sub_CBAC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_D2B8(&qword_19108, &qword_10ED0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CC20(char *result, int64_t a2, char a3, char *a4)
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
    sub_D2B8(&qword_19108, &qword_10ED0);
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

size_t sub_CD14(size_t a1, int64_t a2, char a3)
{
  result = sub_CD34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_CD34(size_t result, int64_t a2, char a3, void *a4)
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

  sub_D2B8(&qword_19118, &qword_10EE0);
  v10 = *(sub_D2B8(&qword_19110, &qword_10ED8) - 8);
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
  v15 = *(sub_D2B8(&qword_19110, &qword_10ED8) - 8);
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

id sub_CF24()
{
  v0 = sub_EB30();
  v1 = [v0 stringByRemovingWhitespace];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_EB40();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 contactStore];

  v7 = [v6 contactForDestinationId:v1];
  if ([v1 destinationIdIsEmailAddress])
  {

    v8 = 0;
  }

  else
  {
    v10 = [v1 destinationIdIsPhoneNumber];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = 5;
    }
  }

  v11 = objc_allocWithZone(CNComposeRecipient);
  v12 = sub_EB30();

  v13 = [v11 initWithContact:v7 address:v12 kind:v8];

  return v13;
}

void _sSo33PHBlocklistSettingsListControllerC09BlocklistB0E29didTapTextViewAccessoryButton3for10anchoredToySo020CNAutocompleteSearchD0C_So6UIViewCtF_0()
{
  v1 = v0;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v2 = sub_EAB0();
  sub_D300(v2, qword_19038);
  v3 = sub_EA90();
  v4 = sub_EC40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "handleContactPickerAccessoryButtonTapped", v5, 2u);
  }

  v9 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v9 setAllowsCancel:1];
  [v9 setAllowsEditing:0];
  [v9 setMode:2];
  [v9 setDelegate:v1];
  sub_DD44(0, &unk_19150, NSPredicate_ptr);
  v6 = sub_EC20();
  [v9 setPredicateForEnablingContact:v6];

  [v9 setModalPresentationStyle:6];
  v7 = [v1 autocompleteSearchController];
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_D2B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_D300(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_D338()
{
  result = qword_190C8;
  if (!qword_190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190C8);
  }

  return result;
}

uint64_t *sub_D38C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_D3F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_DD9C;

  return sub_6B9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_D508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_D2B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_D570()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D5A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_DD9C;

  return sub_C3A0(a1, v5);
}

uint64_t sub_D660(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_BEB8;

  return sub_C3A0(a1, v5);
}

uint64_t sub_D718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_D2B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_D778(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_D7C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_D824(uint64_t a1, uint64_t a2)
{
  v4 = sub_D2B8(&qword_19110, &qword_10ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D894()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D8D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_DD9C;

  return sub_56BC();
}

uint64_t sub_D988()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D9C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_DD9C;

  return sub_5264(v2, v3);
}

uint64_t sub_DA78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_DD9C;

  return sub_BCE8(v2, v3, v5);
}

uint64_t sub_DB38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_BEB8;

  return sub_BDD0(a1, v4, v5, v7);
}

uint64_t sub_DC44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_DD9C;

  return sub_C2A8(a1, v5);
}

uint64_t sub_DCFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DD44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_DDDC()
{
  result = qword_19258;
  if (!qword_19258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19258);
  }

  return result;
}

uint64_t sub_DE4C()
{
  v0 = sub_E940();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_DF90();
  sub_E930();
  return sub_E910();
}

uint64_t sub_DED0()
{
  v0 = sub_E920();
  v1 = sub_DF38();

  return SettingsPane.init(makeContent:)(sub_DE4C, 0, v0, v1);
}

unint64_t sub_DF38()
{
  result = qword_19260;
  if (!qword_19260)
  {
    sub_E920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19260);
  }

  return result;
}

unint64_t sub_DF90()
{
  result = qword_19268;
  if (!qword_19268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19268);
  }

  return result;
}

unint64_t sub_DFF0()
{
  result = qword_19270;
  if (!qword_19270)
  {
    sub_E054(&qword_19278, &unk_11010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19270);
  }

  return result;
}

uint64_t sub_E054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t PHBlocklistSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_EB10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_EC60();

  LOBYTE(a1) = sub_EAF0();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t PHBlocklistSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_EB10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_EC80();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_EAE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EC70();
  sub_EAD0();
  v15 = [a2 traitCollection];
  sub_EC60();

  sub_E4B0();
  sub_EB00();
  (*(v4 + 8))(v7, v3);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_E4B0()
{
  result = qword_19280;
  if (!qword_19280)
  {
    sub_EAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19280);
  }

  return result;
}

void sub_E778(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}