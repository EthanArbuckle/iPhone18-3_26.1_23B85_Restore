char *sub_16E8()
{
  v1 = v0;
  v2 = OBJC_IVAR___MessagesViewController_sessionViewModel;
  sub_18944();
  *&v0[v2] = sub_188F4();
  v3 = OBJC_IVAR___MessagesViewController_handlerManager;
  v4 = sub_187C4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v0[v3] = sub_187B4();
  v7 = OBJC_IVAR___MessagesViewController_contactsManager;
  *&v1[v7] = [objc_allocWithZone(SMContactsManager) init];
  v8 = OBJC_IVAR___MessagesViewController_transactionID;
  v9 = sub_18604();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = OBJC_IVAR___MessagesViewController_messageURL;
  v11 = sub_18554();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  *&v1[OBJC_IVAR___MessagesViewController_safetyCacheViewModel] = 0;
  v12 = OBJC_IVAR___MessagesViewController_userType;
  v13 = sub_18B04();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  *&v1[OBJC_IVAR___MessagesViewController_cancellables] = &_swiftEmptySetSingleton;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for MessagesViewController();
  v14 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v15 = OBJC_IVAR___MessagesViewController_handlerManager;
  v16 = *&v14[OBJC_IVAR___MessagesViewController_handlerManager];
  *(swift_allocObject() + 16) = v14;
  v17 = v14;

  sub_18794();

  v18 = *&v14[v15];
  *(swift_allocObject() + 16) = v17;
  v19 = v17;

  sub_18774();

  v20 = *&v14[v15];
  *(swift_allocObject() + 16) = v19;
  v21 = v19;

  sub_18784();

  v22 = *&v14[v15];
  *(swift_allocObject() + 16) = v21;
  v23 = v21;

  sub_187A4();

  v24 = *&v14[v15];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_18764();

  return v23;
}

uint64_t sub_1A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B0C;

  return sub_4ABC(a1);
}

uint64_t sub_1B0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C70()
{
  v1 = sub_18A74();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  v3 = __chkstk_darwin(v1);
  v73 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v75 = v65 - v6;
  __chkstk_darwin(v5);
  v74 = v65 - v7;
  v72 = sub_18B04();
  v70 = *(v72 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v72);
  v71 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_11BB4(&qword_24768, &qword_196F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v68 = v65 - v12;
  v13 = sub_18604();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v69 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18B54();
  v78 = *(v16 - 1);
  v79 = v16;
  v17 = *(v78 + 64);
  __chkstk_darwin(v16);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18854();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v65 - v26;
  v28 = *(v0 + OBJC_IVAR___MessagesViewController_sessionViewModel);
  v30 = v29;
  sub_18914();
  v31 = *(v21 + 16);
  v80 = v27;
  v31(v25, v27, v30);
  v32 = (*(v21 + 88))(v25, v30);
  v33 = v32;
  v34 = enum case for SessionViewModel.InitiatorViewType.unknown(_:);
  if (v32 == enum case for SessionViewModel.InitiatorViewType.unknown(_:))
  {
    sub_18B24();
    v35 = v0;
    v36 = sub_18B44();
    v37 = sub_18E14();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81 = v76;
      *v38 = 136315394;
      v39 = v35;
      v66 = v33;
      v40 = v39;
      v41 = [v39 description];
      v42 = v34;
      v43 = sub_18C74();
      v77 = v30;
      v45 = v44;

      v46 = v43;
      v34 = v42;
      v47 = sub_10320(v46, v45, &v81);

      *(v38 + 4) = v47;
      v33 = v66;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10320(0xD000000000000029, 0x800000000001B1A0, &v81);
      _os_log_impl(&dword_0, v36, v37, "%s, %s: Cannot display unknown view type!", v38, 0x16u);
      swift_arrayDestroy();

      (*(v78 + 8))(v19, v79);
      (*(v21 + 8))(v80, v77);
      return v33 != v34;
    }

    (*(v78 + 8))(v19, v79);
LABEL_14:
    (*(v21 + 8))(v80, v30);
    return v33 != v34;
  }

  if (v32 == enum case for SessionViewModel.InitiatorViewType.stagedMessage(_:))
  {
    sub_6158();
    goto LABEL_14;
  }

  if (v32 == enum case for SessionViewModel.InitiatorViewType.sessionDetails(_:))
  {
    v66 = v32;
    v48 = OBJC_IVAR___MessagesViewController_safetyCacheViewModel;
    v49 = *(v0 + OBJC_IVAR___MessagesViewController_safetyCacheViewModel);
    if (v49)
    {
      goto LABEL_18;
    }

    v50 = v68;
    sub_18844();
    v51 = v67;
    v79 = *(v67 + 48);
    if (v79(v50, 1, v13) == 1)
    {
      sub_185F4();
      if (v79(v50, 1, v13) != 1)
      {
        sub_16218(v50, &qword_24768, &qword_196F0);
      }
    }

    else
    {
      (*(v51 + 32))(v69, v50, v13);
    }

    (*(v70 + 104))(v71, enum case for UserType.initiator(_:), v72);
    v53 = objc_allocWithZone(sub_186D4());
    v54 = sub_186C4();
    v55 = *(v0 + v48);
    *(v0 + v48) = v54;

    v49 = *(v0 + v48);
    if (v49)
    {
LABEL_18:
      v65[1] = v0;
      v56 = *(v0 + OBJC_IVAR___MessagesViewController_handlerManager);
      v79 = v49;

      v57 = v74;
      sub_18A64();
      v59 = v75;
      v58 = v76;
      v60 = *(v76 + 16);
      v61 = v77;
      v60(v75, v57, v77);
      v60(v73, v59, v61);
      sub_13E74(&qword_24770, &type metadata accessor for InitiatorSessionDetailsView);
      v81 = sub_18B84();
      v62 = objc_allocWithZone(sub_11BB4(&qword_24778, &unk_196F8));
      v63 = sub_18B64();
      sub_470C(v63);

      v64 = *(v58 + 8);
      v64(v59, v61);
      v64(v57, v61);
    }

    (*(v21 + 8))(v80, v30);
    v33 = v66;
    return v33 != v34;
  }

  if (v32 == enum case for SessionViewModel.InitiatorViewType.onboarding(_:))
  {
    (*&stru_108.segname[(swift_isaMask & *v0) + 8])();
    goto LABEL_14;
  }

  result = sub_18FB4();
  __break(1u);
  return result;
}

void sub_25DC(uint64_t a1)
{
  v2 = sub_18624();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_18C54();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18B54();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  v10 = __chkstk_darwin(v8);
  v99 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v93[0] = v93 - v13;
  __chkstk_darwin(v12);
  v15 = (v93 - v14);
  v16 = sub_18684();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[1] = sub_18644();
  v97 = v21;
  v100 = sub_18654();
  v98 = v22;
  sub_18674();
  v23 = sub_18C64();

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v23 style:1 handler:0];

  sub_18694();
  v26 = (*(v17 + 88))(v20, v16);
  if (v26 == enum case for SendValidity.Case.initiatorIneligible(_:))
  {
    sub_18BF4();
    sub_16278(0, &qword_24888, SMSafetyMonitorManager_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_18614();
    sub_18CA4();
    v29 = sub_18664();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v34 = sub_18C64();

      aBlock[4] = sub_15988;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_32D0;
      aBlock[3] = &unk_20E28;
      v35 = _Block_copy(aBlock);

      v36 = [v24 actionWithTitle:v34 style:0 handler:v35];
      _Block_release(v35);
    }

    else
    {

      v36 = 0;
    }

    goto LABEL_17;
  }

  v36 = 0;
  if (v26 == enum case for SendValidity.Case.noReceiver(_:))
  {
LABEL_17:
    v37 = v25;
    v38 = v98;
    goto LABEL_18;
  }

  v37 = v25;
  v38 = v98;
  if (v26 == enum case for SendValidity.Case.receiverIneligible(_:) || v26 == enum case for SendValidity.Case.groupChat(_:) || v26 == enum case for SendValidity.Case.missingConfig(_:) || v26 == enum case for SendValidity.Case.notReady(_:) || v26 == enum case for SendValidity.Case.differentReceiver(_:) || v26 == enum case for SendValidity.Case.sessionAlreadyActive(_:) || v26 == enum case for SendValidity.Case.invalidETA(_:))
  {
LABEL_18:
    v49 = sub_18C64();

    v50 = sub_18C64();
    v51 = [objc_opt_self() alertControllerWithTitle:v49 message:v50 preferredStyle:1];

    [v51 addAction:v37];
    if (v36)
    {
      [v51 addAction:v36];
    }

    v52 = [objc_opt_self() sharedApplication];
    v53 = [v52 connectedScenes];

    sub_16278(0, &qword_24870, UIScene_ptr);
    sub_158E8();
    v54 = sub_18DE4();

    v25 = sub_3558(v54);

    if (v25)
    {
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      v56 = v55;
      if (v55)
      {
        v57 = [v55 windows];
        sub_16278(0, &qword_24880, UIWindow_ptr);
        v58 = sub_18D74();

        if (v58 >> 62)
        {
          v59 = sub_18F84();
          if (v59)
          {
LABEL_24:
            v60 = __OFSUB__(v59, 1);
            v61 = v59 - 1;
            if (v60)
            {
              __break(1u);
            }

            else if ((v58 & 0xC000000000000001) == 0)
            {
              if ((v61 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v61 < *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
              {
                v62 = *(v58 + 8 * v61 + 32);
                goto LABEL_29;
              }

              __break(1u);
              return;
            }

            v62 = sub_18F54();
LABEL_29:
            v63 = v62;

            v7 = [v63 rootViewController];

            if (v7)
            {
              v98 = v51;
              a1 = v93[0];
              sub_18B24();
              v64 = v94;

              v15 = sub_18B44();
              v65 = sub_18DF4();

              if (os_log_type_enabled(v15, v65))
              {
                v66 = swift_slowAlloc();
                LODWORD(v97) = v65;
                v67 = v66;
                v99 = swift_slowAlloc();
                aBlock[0] = v99;
                *v67 = 136315650;
                v68 = v64;
                v69 = v36;
                v70 = [v68 description];
                v71 = sub_18C74();
                v94 = v15;
                v72 = v71;
                v74 = v73;

                v36 = v69;
                v75 = sub_10320(v72, v74, aBlock);

                *(v67 + 4) = v75;
                *(v67 + 12) = 2080;
                *(v67 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
                *(v67 + 22) = 2080;
                v76 = sub_10320(v100, v38, aBlock);

                *(v67 + 24) = v76;
                v77 = v94;
                _os_log_impl(&dword_0, v94, v97, "%s, %s: Presenting failure alert, %s", v67, 0x20u);
                swift_arrayDestroy();

                (*(v95 + 8))(v93[0], v96);
LABEL_38:
                v78 = v98;
                [v7 presentViewController:v98 animated:1 completion:0];

                return;
              }

LABEL_37:

              (*(v95 + 8))(a1, v96);
              goto LABEL_38;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v59 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
          if (v59)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v56 = 0;
    }

LABEL_41:
    v79 = v99;
    sub_18B24();
    v80 = v94;

    v81 = sub_18B44();
    v82 = sub_18E14();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v97 = v36;
      v84 = v83;
      v85 = swift_slowAlloc();
      v98 = v51;
      aBlock[0] = v85;
      *v84 = 136315650;
      v86 = v80;
      v87 = [v86 description];
      v88 = sub_18C74();
      v94 = v37;
      v90 = v89;

      v91 = sub_10320(v88, v90, aBlock);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
      *(v84 + 22) = 2080;
      v92 = sub_10320(v100, v38, aBlock);

      *(v84 + 24) = v92;
      _os_log_impl(&dword_0, v81, v82, "%s, %s: Unable to show failure alert, %s", v84, 0x20u);
      swift_arrayDestroy();

      (*(v95 + 8))(v99, v96);
    }

    else
    {

      (*(v95 + 8))(v79, v96);
    }

    return;
  }

  if (v26 != enum case for SendValidity.Case.valid(_:))
  {
    v36 = 0;
    if (v26 != enum case for SendValidity.Case.generalError(_:) && v26 != enum case for SendValidity.Case.groupReceiverIneligible(_:))
    {
      sub_18FB4();
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  sub_18B24();
  v39 = v94;
  v40 = sub_18B44();
  v41 = sub_18E14();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v42 = 136315394;
    v43 = v39;
    v44 = [v43 description];
    v45 = sub_18C74();
    v47 = v46;

    v48 = sub_10320(v45, v47, aBlock);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
    _os_log_impl(&dword_0, v40, v41, "%s, %s: Failure alert not shown because this is a valid message", v42, 0x16u);
    swift_arrayDestroy();
  }

  (*(v95 + 8))(v15, v96);
}

void sub_32D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_3338()
{
  v0 = sub_11BB4(&qword_247B8, &qword_19748);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_18554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18544();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_16218(v3, &qword_247B8, &qword_19748);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v12 = v10;
    sub_18524(v11);
    v14 = v13;
    sub_11BFC(&_swiftEmptyArrayStorage);
    isa = sub_18BC4().super.isa;

    [v12 openSensitiveURL:v14 withOptions:isa];
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_3558(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_18EE4();
    v5 = v4;
    v6 = sub_18F34();
    v8 = v7;
    v9 = sub_18EF4();
    sub_159A0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_159A0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_18ED4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1151C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_159A0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_3674(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_372C;

  return sub_11D2C(a1, a2);
}

uint64_t sub_372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_18DB4();
  v5[7] = sub_18DA4();
  v7 = sub_18D94();

  return _swift_task_switch(sub_3A84, v7, v6);
}

uint64_t sub_3A84()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 32);
    sub_18C74();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 72) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 16);
  v9 = v7;
  v10 = v6;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_3B80;
  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return sub_11D2C(v14, v13);
}

uint64_t sub_3B80(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (a3)
  {

    v13 = sub_18C64();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v6 + 64);
  (v14)[2](v14, a1 & 1, v13);

  _Block_release(v14);

  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_3D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[9] = sub_18DB4();
  v6[10] = sub_18DA4();
  v7 = swift_task_alloc();
  v6[11] = v7;
  *v7 = v6;
  v7[1] = sub_3E0C;

  return sub_13EBC();
}

uint64_t sub_3E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 48) = a4;
  v6[4] = a2;
  v6[5] = a3;
  v6[2] = v4;
  v6[3] = a1;
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v13 = *v4;
  v6[12] = a1;

  v11 = sub_18D94();

  return _swift_task_switch(sub_3F5C, v11, v10);
}

uint64_t sub_3F5C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  if (v1)
  {
    v3 = *(v0 + 96);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v3;
    v7(v3, v5, v4, v8 & 1);
  }

  else
  {
    v10 = *(v0 + 64);
    (*(v0 + 56))(0, 0, 0, 0);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_11BB4(&qword_24780, &qword_19710);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_161B0(a3, v27 - v11, &qword_24780, &qword_19710);
  v13 = sub_18DD4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_16218(v12, &qword_24780, &qword_19710);
  }

  else
  {
    sub_18DC4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_18D94();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_18CC4() + 32;
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

      sub_16218(a3, &qword_24780, &qword_19710);

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

  sub_16218(a3, &qword_24780, &qword_19710);
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

void sub_44B4(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3 = sub_18C64();
  }

  v7 = a3;
  (*(a5 + 16))(a5, a1);
}

uint64_t sub_4530(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_11BB4(&qword_247B8, &qword_19748);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *sub_158A4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v14 = swift_allocError();
    *v15 = a3;
    v16 = a3;

    return _swift_continuation_throwingResumeWithError(v13, v14);
  }

  else
  {
    if (a2)
    {
      sub_18534();
      v17 = sub_18554();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v18 = sub_18554();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    }

    sub_16084(v10, v12);
    sub_16084(v12, *(*(v13 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_470C(void *a1)
{
  v3 = sub_18B94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18BB4();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16278(0, &qword_24900, OS_dispatch_queue_ptr);
  v12 = sub_18E44();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_16300;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_49D8;
  aBlock[3] = &unk_21030;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = a1;

  sub_18BA4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_13E74(&qword_24908, &type metadata accessor for DispatchWorkItemFlags);
  sub_11BB4(&qword_24910, &unk_198B0);
  sub_163C8();
  sub_18EC4();
  sub_18E54();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_49D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_4A1C()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = objc_allocWithZone(sub_18AB4());
  v1 = sub_18AA4();
  sub_470C(v1);
}

uint64_t sub_4ABC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_184B4();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = *(*(sub_11BB4(&qword_24850, &qword_197E0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = *(*(sub_11BB4(&qword_247B8, &qword_19748) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = sub_18554();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v11 = sub_18B54();
  v2[29] = v11;
  v12 = *(v11 - 8);
  v2[30] = v12;
  v13 = *(v12 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v14 = sub_18504();
  v2[35] = v14;
  v15 = *(v14 - 8);
  v2[36] = v15;
  v16 = *(v15 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_18DB4();
  v2[40] = sub_18DA4();
  v18 = sub_18D94();
  v2[41] = v18;
  v2[42] = v17;

  return _swift_task_switch(sub_4D7C, v18, v17);
}

uint64_t sub_4D7C()
{
  v181 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = [v6 outputToURLComponents];
  sub_184D4();

  sub_18B24();
  (*(v4 + 16))(v1, v2, v3);
  v9 = v7;
  v10 = v6;
  v11 = sub_18B44();
  v12 = sub_18E34();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 272);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  if (v13)
  {
    v175 = *(v0 + 272);
    v20 = *(v0 + 152);
    loga = v11;
    v156 = *(v0 + 144);
    v170 = *(v0 + 232);
    v21 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *v21 = 136315906;
    v22 = v20;
    v159 = v12;
    v23 = [v22 description];
    v24 = v14;
    v25 = sub_18C74();
    v27 = v26;

    v28 = sub_10320(v25, v27, &v180);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v180);
    *(v21 + 22) = 2112;
    *(v21 + 24) = v156;
    *v154 = v156;
    *(v21 + 32) = 2080;
    sub_13E74(&qword_24860, &type metadata accessor for URLComponents);
    v29 = v156;
    v30 = sub_18FA4();
    v32 = v31;
    v33 = *(v15 + 8);
    v33(v24, v16);
    v34 = sub_10320(v30, v32, &v180);
    v35 = v33;

    *(v21 + 34) = v34;
    _os_log_impl(&dword_0, loga, v159, "%s, %s: smSessionStartMessage: %@ urlComponents: %s", v21, 0x2Au);
    sub_16218(v154, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v36 = *(v18 + 8);
    v36(v175, v170);
  }

  else
  {

    v35 = *(v15 + 8);
    v35(v14, v16);
    v36 = *(v18 + 8);
    v36(v17, v19);
  }

  *(v0 + 344) = v35;
  v37 = [*(v0 + 152) activeConversation];
  *(v0 + 352) = v37;
  if (!v37)
  {
    v66 = *(v0 + 320);
    v67 = *(v0 + 248);
    v68 = *(v0 + 152);

    sub_18B24();
    v69 = v68;
    v70 = sub_18B44();
    v71 = sub_18E24();

    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 312);
    v74 = *(v0 + 280);
    v75 = *(v0 + 240);
    v76 = *(v0 + 248);
    v167 = *(v0 + 232);
    if (v72)
    {
      logb = *(v0 + 312);
      v77 = *(v0 + 152);
      v161 = *(v0 + 288);
      v78 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *v78 = 136315394;
      v158 = v76;
      v79 = v77;
      v80 = [v79 description];
      v155 = v74;
      v81 = sub_18C74();
      v177 = v35;
      v83 = v82;

      v84 = sub_10320(v81, v83, &v180);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v180);
      _os_log_impl(&dword_0, v70, v71, "%s, %s: no active conversation ⇒ failed to send message", v78, 0x16u);
      swift_arrayDestroy();

      v36(v158, v167);
      v177(logb, v155);
    }

    else
    {

      v36(v76, v167);
      v35(v73, v74);
    }

LABEL_15:
    v98 = *(v0 + 304);
    v97 = *(v0 + 312);
    v99 = *(v0 + 296);
    v101 = *(v0 + 264);
    v100 = *(v0 + 272);
    v103 = *(v0 + 248);
    v102 = *(v0 + 256);
    v104 = *(v0 + 224);
    v106 = *(v0 + 192);
    v105 = *(v0 + 200);
    v172 = *(v0 + 184);
    v178 = *(v0 + 176);

    v107 = *(v0 + 8);

    return v107();
  }

  v38 = v37;
  v176 = v35;
  v39 = *(v0 + 312);
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v42 = *(v0 + 200);
  sub_184F4();
  if ((*(v40 + 48))(v42, 1, v41) == 1)
  {
    v43 = *(v0 + 320);
    v44 = *(v0 + 256);
    v45 = *(v0 + 200);
    v46 = *(v0 + 152);

    sub_16218(v45, &qword_247B8, &qword_19748);
    sub_18B24();
    v47 = v46;
    v48 = sub_18B44();
    v49 = sub_18E24();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 312);
    v52 = *(v0 + 280);
    v53 = *(v0 + 288);
    v54 = *(v0 + 256);
    v55 = *(v0 + 240);
    log = *(v0 + 232);
    if (v50)
    {
      v160 = *(v0 + 312);
      v56 = *(v0 + 152);
      v171 = v36;
      v57 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *v57 = 136315394;
      v157 = v52;
      v58 = v56;
      v59 = [v58 description];
      v153 = v54;
      v60 = sub_18C74();
      v62 = v61;

      v63 = sub_10320(v60, v62, &v180);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v180);
      swift_arrayDestroy();

      v171(v153, log);
      v64 = v157;
      v65 = v160;
    }

    else
    {

      v36(v54, log);
      v65 = v51;
      v64 = v52;
    }

    v176(v65, v64);
    goto LABEL_15;
  }

  v86 = *(v0 + 280);
  v85 = *(v0 + 288);
  v87 = *(v0 + 192);
  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  v88 = [objc_allocWithZone(MSSession) init];
  v89 = [objc_allocWithZone(MSMessage) initWithSession:v88];
  *(v0 + 360) = v89;

  v90 = v89;
  v91 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  *(v0 + 368) = v91;
  v92 = [v89 summaryText];
  [v91 setCaption:v92];

  v93 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v91];
  [v90 setLayout:v93];

  sub_18524(v94);
  v96 = v95;
  [v90 setURL:v95];

  sub_184E4();
  if ((*(v85 + 48))(v87, 1, v86) == 1)
  {
    sub_16218(*(v0 + 192), &qword_24850, &qword_197E0);
  }

  else
  {
    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 192), *(v0 + 280));
    v109 = sub_184C4();
    if (v109)
    {
      v110 = v109;
      v162 = v90;
      v168 = v38;
      v173 = v36;
      v111 = *(v109 + 16);
      if (v111)
      {
        v112 = 0;
        v113 = 0x547972616D6D7573;
        v114 = *(v0 + 168);
        v115 = (v114 + 8);
        while (1)
        {
          if (v112 >= *(v110 + 16))
          {
            __break(1u);
            return _swift_continuation_await(v109);
          }

          (*(v114 + 16))(*(v0 + 176), v110 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v112, *(v0 + 160));
          if (sub_18494() == v113 && v116 == 0xEB00000000747865)
          {
            break;
          }

          v118 = v113;
          v119 = sub_18FC4();

          if (v119)
          {
            goto LABEL_32;
          }

          ++v112;
          v109 = (*v115)(*(v0 + 176), *(v0 + 160));
          v113 = v118;
          if (v111 == v112)
          {
            goto LABEL_28;
          }
        }

LABEL_32:
        v123 = *(v0 + 288);
        v124 = *(v0 + 296);
        v125 = *(v0 + 280);
        v126 = *(v0 + 176);
        v127 = *(v0 + 184);
        v129 = *(v0 + 160);
        v128 = *(v0 + 168);

        (*(v128 + 32))(v127, v126, v129);
        sub_184A4();
        v131 = v130;
        (*v115)(v127, v129);
        v176(v124, v125);
        if (!v131)
        {
          goto LABEL_34;
        }

        v122 = sub_18C64();
      }

      else
      {
LABEL_28:
        v120 = *(v0 + 288) + 8;
        v176(*(v0 + 296), *(v0 + 280));

LABEL_34:
        v122 = 0;
      }

      v38 = v168;
      v36 = v173;
      v90 = v162;
      goto LABEL_36;
    }

    v121 = *(v0 + 288) + 8;
    v176(*(v0 + 296), *(v0 + 280));
  }

  v122 = 0;
LABEL_36:
  v132 = *(v0 + 264);
  v133 = *(v0 + 152);
  [v90 setSummaryText:v122];

  [v90 setRequiresValidation:1];
  sub_18B24();
  v134 = v133;
  v135 = v90;
  v136 = sub_18B44();
  v137 = sub_18E34();

  v138 = os_log_type_enabled(v136, v137);
  v139 = *(v0 + 264);
  v140 = *(v0 + 232);
  v141 = *(v0 + 240);
  if (v138)
  {
    v179 = *(v0 + 264);
    v142 = *(v0 + 152);
    v143 = swift_slowAlloc();
    v169 = v38;
    v144 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *v143 = 136315906;
    logc = v140;
    v145 = v142;
    v146 = [v145 description];
    v174 = v36;
    v147 = sub_18C74();
    v149 = v148;

    v150 = sub_10320(v147, v149, &v180);

    *(v143 + 4) = v150;
    *(v143 + 12) = 2080;
    *(v143 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v180);
    *(v143 + 22) = 2112;
    *(v143 + 24) = v135;
    *v144 = v135;
    *(v143 + 32) = 2112;
    v151 = [v135 session];
    *(v143 + 34) = v151;
    v144[1] = v151;
    _os_log_impl(&dword_0, v136, v137, "%s, %s: sending %@ with session %@", v143, 0x2Au);
    sub_11BB4(&qword_24788, &qword_19728);
    swift_arrayDestroy();
    v38 = v169;

    swift_arrayDestroy();

    v174(v179, logc);
  }

  else
  {

    v36(v139, v140);
  }

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_5CB4;
  v152 = swift_continuation_init();
  *(v0 + 136) = sub_11BB4(&qword_24858, &qword_197E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_60AC;
  *(v0 + 104) = &unk_20DD8;
  *(v0 + 112) = v152;
  [v38 sendMessage:v135 completionHandler:v0 + 80];
  v109 = v0 + 16;

  return _swift_continuation_await(v109);
}

uint64_t sub_5CB4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 336);
  v5 = *(v1 + 328);
  if (v3)
  {
    v6 = sub_5F40;
  }

  else
  {
    v6 = sub_5DE4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_5DE4()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v23 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 208);

  (*(v8 + 8))(v7, v9);
  v23(v3, v5);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 296);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  v17 = *(v0 + 224);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v22 = *(v0 + 184);
  v24 = *(v0 + 176);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_5F40()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[39];
  v5 = v0[40];
  v15 = v0[43];
  v16 = v0[38];
  v7 = v0[36];
  v14 = v0[35];
  v17 = v0[37];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v21 = v0[31];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[23];
  v25 = v0[22];

  swift_willThrow();

  (*(v8 + 8))(v9, v10);
  v15(v6, v14);

  v11 = v0[1];
  v12 = v0[47];

  return v11();
}

uint64_t sub_60AC(uint64_t a1, void *a2)
{
  v3 = sub_158A4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

void sub_6158()
{
  v1 = v0;
  v2 = sub_18B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = [v1 activeConversation];
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[OBJC_IVAR___MessagesViewController_sessionViewModel];
    isa = SessionViewModel.startSessionMSMessage()().super.isa;
    [v11 insertMessage:isa completionHandler:0];
    sub_18B24();
    v14 = v1;
    v15 = isa;
    v16 = sub_18B44();
    v17 = sub_18E34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = v17;
      v19 = v18;
      v20 = swift_slowAlloc();
      v46 = v2;
      v43 = v20;
      v45 = swift_slowAlloc();
      v48 = v45;
      *v19 = 136315650;
      v21 = v14;
      v47 = v3;
      v22 = v21;
      v23 = [v21 description];
      v24 = v15;
      v25 = sub_18C74();
      v27 = v26;

      v28 = v25;
      v15 = v24;
      v29 = sub_10320(v28, v27, &v48);

      *(v19 + 4) = v29;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_10320(0xD000000000000015, 0x800000000001B850, &v48);
      *(v19 + 22) = 2112;
      v30 = [(objc_class *)v24 session];
      *(v19 + 24) = v30;
      v31 = v43;
      *v43 = v30;
      sub_16218(v31, &qword_24788, &qword_19728);

      swift_arrayDestroy();

      (*(v47 + 8))(v9, v46);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    [v14 dismiss];
  }

  else
  {
    sub_18B24();
    v32 = v1;
    v33 = sub_18B44();
    v34 = sub_18E24();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v35 = 136315650;
      v36 = v32;
      v47 = v3;
      v37 = v36;
      v38 = [v36 description];
      v39 = sub_18C74();
      v41 = v40;

      v42 = sub_10320(v39, v41, &v48);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_10320(0xD000000000000015, 0x800000000001B850, &v48);
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_10320(0xD000000000000015, 0x800000000001B850, &v48);
      _os_log_impl(&dword_0, v33, v34, "%s, %s: No active conversation in %s.", v35, 0x20u);
      swift_arrayDestroy();

      (*(v47 + 8))(v7, v2);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }
}

void sub_664C(uint64_t a1)
{
  v2 = sub_18B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18B24();
    v9 = v8;
    swift_errorRetain();
    v10 = sub_18B44();
    v11 = sub_18E34();

    if (os_log_type_enabled(v10, v11))
    {
      v35 = v11;
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v12 = 136315906;
      v36 = v9;
      v13 = v9;
      v14 = [v13 description];
      v15 = sub_18C74();
      v17 = v16;

      v18 = sub_10320(v15, v17, &v37);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10320(0xD000000000000019, 0x800000000001B870, &v37);
      *(v12 + 22) = 2080;
      v19 = sub_186E4();
      v21 = sub_10320(v19, v20, &v37);

      *(v12 + 24) = v21;
      *(v12 + 32) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v22 = sub_18FD4();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_10320(v22, v24, &v37);

      *(v12 + 34) = v25;
      _os_log_impl(&dword_0, v10, v35, "%s, %s: buttonTitle: %s, End session error: %s", v12, 0x2Au);
      swift_arrayDestroy();

      (*(v3 + 8))(v6, v2);
      v9 = v36;
      if (!a1)
      {
        goto LABEL_12;
      }
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      if (!a1)
      {
LABEL_12:

        return;
      }
    }

    v26 = objc_opt_self();
    swift_errorRetain();
    v27 = [v26 standardUserDefaults];
    sub_18724();
    v28 = sub_18C64();

    v29 = [v27 BOOLForKey:v28];

    if (v29)
    {
      sub_186F4();
      v30 = sub_18C64();

      swift_getErrorValue();
      sub_18FD4();
      v31 = sub_18C64();

      sub_186E4();
      v32 = sub_18C64();

      [v9 _presentAlertWithTitle:v30 message:v31 buttonTitle:v32 completion:0];
    }

    else
    {
    }

    goto LABEL_12;
  }
}

uint64_t sub_6A6C()
{
  v1 = sub_18B54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v6 = v0;
  v7 = sub_18B44();
  v8 = sub_18E34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136315394;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_18C74();
    v20 = v1;
    v14 = v13;

    v15 = sub_10320(v12, v14, &v22);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10320(0xD00000000000001DLL, 0x800000000001B510, &v22);
    _os_log_impl(&dword_0, v7, v8, "%s, %s: User requested safe to trigger prompt, dismissing", v9, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v20);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v16 = *&v6[OBJC_IVAR___MessagesViewController_sessionViewModel];
  *(swift_allocObject() + 16) = v6;
  v17 = v6;
  sub_188D4();
}

void sub_6CF0(uint64_t a1, void *a2)
{
  v4 = sub_18B54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_18B24();
    swift_errorRetain();
    v9 = a2;
    v10 = sub_18B44();
    v11 = sub_18E14();

    v12 = os_log_type_enabled(v10, v11);
    v32 = v9;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v13 = 136315650;
      v14 = v9;
      HIDWORD(v30) = v11;
      v15 = v14;
      v16 = [v14 description];
      v17 = sub_18C74();
      v19 = v18;

      v20 = sub_10320(v17, v19, &v33);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10320(0xD00000000000001DLL, 0x800000000001B510, &v33);
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v21 = sub_18FD4();
      v23 = sub_10320(v21, v22, &v33);

      *(v13 + 24) = v23;
      _os_log_impl(&dword_0, v10, BYTE4(v30), "%s, %s: Continue session error, %s", v13, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
    v24 = [objc_opt_self() standardUserDefaults];
    sub_18724();
    v25 = sub_18C64();

    v26 = [v24 BOOLForKey:v25];

    if (v26)
    {
      sub_18714();
      v27 = sub_18C64();

      swift_getErrorValue();
      sub_18FD4();
      v28 = sub_18C64();

      sub_186E4();
      v29 = sub_18C64();

      [v32 _presentAlertWithTitle:v27 message:v28 buttonTitle:v29 completion:0];
    }

    else
    {
    }
  }
}

unint64_t *sub_707C(uint64_t a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v8 = v1;

  v9 = sub_18B44();
  v10 = sub_18E34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v11 = 136315650;
    v12 = v8;
    v13 = [v12 description];
    v14 = sub_18C74();
    v36 = v3;
    v16 = v15;

    v17 = sub_10320(v14, v16, &v38);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10320(0xD000000000000017, 0x800000000001B4F0, &v38);
    *(v11 + 22) = 2080;
    v18 = sub_18D84();
    v20 = sub_10320(v18, v19, &v38);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_0, v9, v10, "%s, %s: Recepient address before canonicalization, %s", v11, 0x20u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v36);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v21 = *(a1 + 16);
  v22 = &_swiftEmptyArrayStorage;
  if (v21)
  {
    v38 = &_swiftEmptyArrayStorage;
    sub_109F8(0, v21, 0);
    v22 = v38;
    v23 = objc_opt_self();
    v24 = (a1 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      v27 = sub_18C64();
      v28 = [v23 canonicalIDSAddressForAddress:v27];

      if (v28)
      {
        v25 = sub_18C74();
        v30 = v29;

        v26 = v30;
      }

      v38 = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_109F8((v31 > 1), v32 + 1, 1);
        v22 = v38;
      }

      v22[2] = v32 + 1;
      v33 = &v22[2 * v32];
      v33[4] = v25;
      v33[5] = v26;
      v24 += 2;
      --v21;
    }

    while (v21);
  }

  return v22;
}

id sub_73EC(void *a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B34();
  v8 = v1;
  v9 = sub_18B44();
  v10 = sub_18DF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *v11 = 136315394;
    v12 = v8;
    v13 = a1;
    v14 = [v12 description];
    v15 = sub_18C74();
    v57 = v4;
    v58 = v3;
    v16 = v15;
    v18 = v17;

    a1 = v13;
    v19 = sub_10320(v16, v18, &v60);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10320(0xD000000000000020, 0x800000000001B680, &v60);
    _os_log_impl(&dword_0, v9, v10, "%s, %s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v57 + 8))(v7, v58);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_A910();
  [v8 addChildViewController:a1];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = result;
  result = [v8 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v21 setFrame:{v24, v26, v28, v30}];
  result = [v8 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = result;
  [v31 addSubview:result];

  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_11BB4(&qword_248A8, &qword_19858);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_196C0;
  result = [a1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = result;
  v36 = [result leftAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  v38 = [result leftAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v34 + 32) = v39;
  result = [a1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = result;
  v41 = [result rightAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v42 = result;
  v43 = [result rightAnchor];

  v44 = [v41 constraintEqualToAnchor:v43];
  *(v34 + 40) = v44;
  result = [a1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = result;
  v46 = [result topAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v47 = result;
  v48 = [result topAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v34 + 48) = v49;
  result = [a1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v50 = result;
  v51 = [result bottomAnchor];

  result = [v8 view];
  if (result)
  {
    v52 = result;
    v53 = objc_opt_self();
    v54 = [v52 bottomAnchor];

    v55 = [v51 constraintEqualToAnchor:v54];
    *(v34 + 56) = v55;
    sub_16278(0, &qword_248B0, NSLayoutConstraint_ptr);
    isa = sub_18D64().super.isa;

    [v53 activateConstraints:isa];

    [a1 didMoveToParentViewController:v8];
    return [v8 requestResize];
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_7AA4(char *a1)
{
  v116 = a1;
  v2 = sub_18554();
  v114 = *(v2 - 8);
  v115 = v2;
  v3 = *(v114 + 64);
  v4 = __chkstk_darwin(v2);
  v109 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v112 = &v107 - v6;
  v7 = sub_18B54();
  v8 = *(v7 - 8);
  v117 = v7;
  v118 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v110 = (&v107 - v14);
  v15 = __chkstk_darwin(v13);
  v113 = &v107 - v16;
  __chkstk_darwin(v15);
  v111 = &v107 - v17;
  v18 = sub_11BB4(&qword_24798, &qword_19738);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v107 - v20;
  v22 = sub_18B04();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  v25 = __chkstk_darwin(v22);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v107 - v28;
  v30 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v31 = v1 + v30;
  v32 = v22;
  v33 = v23;
  sub_161B0(v31, v21, &qword_24798, &qword_19738);
  if ((*(v23 + 6))(v21, 1, v32) != 1)
  {
    (*(v23 + 4))(v29, v21, v32);
    v45 = v116;
    v46 = sub_A114(v116);
    if (v46)
    {
      v47 = v46;
      sub_73EC(v46);
      (*(v23 + 2))(v27, v29, v32);
      v48 = (*(v23 + 11))(v27, v32);
      if (v48 == enum case for UserType.initiator(_:))
      {
        v49 = v111;
        sub_18B24();
        v51 = v114;
        v50 = v115;
        (*(v114 + 16))(v112, v45, v115);
        v52 = v1;
        v53 = sub_18B44();
        v54 = sub_18E34();

        LODWORD(v110) = v54;
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v116 = v29;
          v56 = v55;
          v57 = swift_slowAlloc();
          v113 = v32;
          v109 = v57;
          v119 = v57;
          *v56 = 136315650;
          v58 = v52;
          v108 = v53;
          v59 = v58;
          v60 = [v58 description];
          v61 = v50;
          v62 = sub_18C74();
          v63 = v51;
          v65 = v64;

          v66 = sub_10320(v62, v65, &v119);

          *(v56 + 4) = v66;
          *(v56 + 12) = 2080;
          *(v56 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v119);
          *(v56 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL);
          v67 = v112;
          v68 = sub_18FA4();
          v70 = v69;
          (*(v63 + 8))(v67, v61);
          v71 = sub_10320(v68, v70, &v119);

          *(v56 + 24) = v71;
          v72 = v108;
          _os_log_impl(&dword_0, v108, v110, "%s, %s: Presenting transcript for url: %s", v56, 0x20u);
          swift_arrayDestroy();

          (*(v118 + 8))(v111, v117);
          return v33[1](v116, v113);
        }

        (*(v51 + 8))(v112, v50);
        (*(v118 + 8))(v49, v117);
      }

      else
      {
        v86 = v114;
        v85 = v115;
        if (v48 != enum case for UserType.receiver(_:))
        {
          result = sub_18FB4();
          __break(1u);
          return result;
        }

        sub_18B14();
        v87 = v109;
        (*(v86 + 16))(v109, v45, v85);
        v88 = v1;
        v89 = sub_18B44();
        v90 = v86;
        v91 = sub_18E34();

        if (os_log_type_enabled(v89, v91))
        {
          v92 = swift_slowAlloc();
          v116 = v29;
          v93 = v92;
          v111 = swift_slowAlloc();
          v112 = v33;
          v119 = v111;
          *v93 = 136315650;
          v94 = v88;
          v110 = v89;
          v95 = v94;
          v96 = [v94 description];
          v97 = v85;
          v98 = sub_18C74();
          LODWORD(v108) = v91;
          v100 = v99;

          v101 = sub_10320(v98, v100, &v119);

          *(v93 + 4) = v101;
          *(v93 + 12) = 2080;
          *(v93 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v119);
          *(v93 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL);
          v102 = sub_18FA4();
          v104 = v103;
          (*(v90 + 8))(v87, v97);
          v105 = sub_10320(v102, v104, &v119);

          *(v93 + 24) = v105;
          v106 = v110;
          _os_log_impl(&dword_0, v110, v108, "%s, %s: Presenting transcript for url: %s", v93, 0x20u);
          swift_arrayDestroy();

          (*(v118 + 8))(v113, v117);
          return (*(v112 + 1))(v116, v32);
        }

        (*(v90 + 8))(v87, v85);
        (*(v118 + 8))(v113, v117);
      }
    }

    else
    {
      v73 = v110;
      sub_18B14();
      v74 = v1;
      v75 = sub_18B44();
      v76 = sub_18E14();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v116 = v29;
        v78 = v77;
        v119 = swift_slowAlloc();
        *v78 = 136315394;
        v79 = v74;
        v80 = [v79 description];
        v81 = sub_18C74();
        v113 = v32;
        v83 = v82;

        v84 = sub_10320(v81, v83, &v119);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v119);
        _os_log_impl(&dword_0, v75, v76, "%s, %s: Unable to present transcript VC because of invalid url", v78, 0x16u);
        swift_arrayDestroy();

        (*(v118 + 8))(v73, v117);
        return v33[1](v116, v113);
      }

      (*(v118 + 8))(v73, v117);
    }

    return v33[1](v29, v32);
  }

  sub_16218(v21, &qword_24798, &qword_19738);
  sub_18B14();
  v34 = v1;
  v35 = sub_18B44();
  v36 = sub_18E14();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v37 = 136315394;
    v38 = v34;
    v39 = [v38 description];
    v40 = sub_18C74();
    v42 = v41;

    v43 = sub_10320(v40, v42, &v119);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v119);
    _os_log_impl(&dword_0, v35, v36, "%s, %s: userType is not initialized", v37, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v118 + 8))(v12, v117);
}

uint64_t sub_8674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a1;
  v244 = a2;
  v230 = sub_187F4();
  v229 = *(v230 - 1);
  v3 = *(v229 + 8);
  __chkstk_darwin(v230);
  v231 = v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18554();
  v241 = *(v5 - 8);
  v242 = v5;
  v6 = v241[8];
  v7 = __chkstk_darwin(v5);
  v235 = v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v224 = v215 - v10;
  __chkstk_darwin(v9);
  v221 = v215 - v11;
  v12 = sub_18B54();
  v245 = *(v12 - 8);
  v246 = v12;
  v13 = *(v245 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v236 = v215 - v18;
  v19 = __chkstk_darwin(v17);
  v227 = v215 - v20;
  v21 = __chkstk_darwin(v19);
  v240 = v215 - v22;
  v23 = __chkstk_darwin(v21);
  v228 = v215 - v24;
  __chkstk_darwin(v23);
  v223 = v215 - v25;
  v239 = sub_11BB4(&qword_24790, &qword_19730);
  v26 = *(*(v239 - 8) + 64);
  v27 = __chkstk_darwin(v239);
  v222 = v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v233 = v215 - v29;
  v30 = sub_11BB4(&qword_24798, &qword_19738);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v220 = v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v225 = v215 - v35;
  v36 = __chkstk_darwin(v34);
  v232 = v215 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = v215 - v39;
  __chkstk_darwin(v38);
  v42 = v215 - v41;
  v43 = sub_18B04();
  v44 = *(v43 - 8);
  v45 = *(v44 + 8);
  v46 = __chkstk_darwin(v43);
  v234 = v215 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = v215 - v48;
  v50 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v237 = v50;
  sub_161B0(&v2[v50], v42, &qword_24798, &qword_19738);
  v238 = *(v44 + 6);
  if (v238(v42, 1, v43) == 1)
  {
    sub_16218(v42, &qword_24798, &qword_19738);
    sub_18B14();
    v51 = v2;
    v52 = sub_18B44();
    v53 = sub_18E14();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = v51;
      v56 = [v55 description];
      v57 = sub_18C74();
      v59 = v58;

      v60 = sub_10320(v57, v59, &v247);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
      _os_log_impl(&dword_0, v52, v53, "%s, %s: Expected userType, found nil", v54, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v245 + 8))(v16, v246);
    goto LABEL_5;
  }

  v226 = v2;
  v63 = v44 + 32;
  v219 = *(v44 + 4);
  v219(v49, v42, v43);
  v64 = objc_opt_self();
  sub_18524(v65);
  v67 = v66;
  v68 = [v64 createMessageFromURL:v66];

  v69 = v43;
  if (v68)
  {
    v231 = v44 + 48;
    v235 = v49;
    v236 = v44;
    v70 = v226;
    v71 = *&v226[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
    if (!v71)
    {
      v106 = v227;
      sub_18B14();
      v107 = v70;
      v108 = sub_18B44();
      v109 = sub_18E14();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        *v110 = 136315394;
        v111 = v107;
        v112 = v68;
        v113 = [v111 description];
        v114 = v69;
        v115 = sub_18C74();
        v117 = v116;

        v118 = sub_10320(v115, v117, &v247);

        *(v110 + 4) = v118;
        *(v110 + 12) = 2080;
        *(v110 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
        _os_log_impl(&dword_0, v108, v109, "%s, %s: Expected safetyCacheViewModel, found nil", v110, 0x16u);
        swift_arrayDestroy();

        (*(v245 + 8))(v227, v246);
        result = (*(v236 + 1))(v235, v114);
      }

      else
      {

        (*(v245 + 8))(v106, v246);
        result = (*(v236 + 1))(v235, v69);
      }

LABEL_5:
      v62 = v244;
      *(v244 + 32) = 0;
      *v62 = 0u;
      v62[1] = 0u;
      return result;
    }

    v72 = v236;
    v73 = *(v236 + 13);
    v229 = v236 + 104;
    v217 = v73;
    v73(v40, enum case for UserType.receiver(_:), v69);
    v74 = *(v72 + 7);
    v227 = v72 + 56;
    v216 = v74;
    v74(v40, 0, 1, v69);
    v75 = *(v239 + 48);
    v76 = v233;
    sub_161B0(&v70[v237], v233, &qword_24798, &qword_19738);
    sub_161B0(v40, v76 + v75, &qword_24798, &qword_19738);
    v77 = v238;
    v78 = v238(v76, 1, v69);
    v215[1] = v63;
    v218 = v68;
    v230 = v71;
    if (v78 == 1)
    {
      v79 = v71;
      sub_16218(v40, &qword_24798, &qword_19738);
      if (v77(v76 + v75, 1, v69) == 1)
      {
        sub_16218(v76, &qword_24798, &qword_19738);
        v80 = v242;
        v81 = v243;
        goto LABEL_24;
      }
    }

    else
    {
      sub_161B0(v76, v232, &qword_24798, &qword_19738);
      if (v77(v76 + v75, 1, v69) != 1)
      {
        v146 = (v76 + v75);
        v147 = v234;
        v219(v234, v146, v69);
        sub_13E74(&qword_247A8, &type metadata accessor for UserType);
        v148 = v71;
        v149 = v232;
        v150 = sub_18BE4();
        v151 = v69;
        v152 = *(v236 + 1);
        v152(v147, v151);
        sub_16218(v40, &qword_24798, &qword_19738);
        v152(v149, v151);
        v69 = v151;
        v70 = v226;
        sub_16218(v76, &qword_24798, &qword_19738);
        v80 = v242;
        v81 = v243;
        if (v150)
        {
LABEL_24:
          v120 = v223;
          sub_18B14();
          v121 = v241;
          v122 = v221;
          (v241[2])(v221, v81, v80);
          v153 = v70;
          v124 = sub_18B44();
          v154 = sub_18E34();

          if (os_log_type_enabled(v124, v154))
          {
            v155 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            v247 = v243;
            *v155 = 136315650;
            v156 = v153;
            v157 = [v156 description];
            v158 = v69;
            v159 = sub_18C74();
            v161 = v160;

            v162 = v159;
            v69 = v158;
            v163 = sub_10320(v162, v161, &v247);
            v70 = v226;

            *(v155 + 4) = v163;
            *(v155 + 12) = 2080;
            *(v155 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
            *(v155 + 22) = 2080;
            sub_13E74(&qword_24838, &type metadata accessor for URL);
            v164 = v242;
            v165 = sub_18FA4();
            v167 = v166;
            (v121[1])(v122, v164);
            v168 = sub_10320(v165, v167, &v247);

            *(v155 + 24) = v168;
            _os_log_impl(&dword_0, v124, v154, "%s, %s: Creating transcript view model with url, %s", v155, 0x20u);
            swift_arrayDestroy();

            v140 = *(v245 + 8);
            v140(v223, v246);
            goto LABEL_27;
          }

LABEL_26:

          (v121[1])(v122, v80);
          v140 = *(v245 + 8);
          v140(v120, v246);
LABEL_27:
          v169 = sub_D3D8();
          (*(v236 + 2))(v234, v235, v69);
          v170 = *&v70[OBJC_IVAR___MessagesViewController_handlerManager];
          v171 = *&v70[OBJC_IVAR___MessagesViewController_sessionViewModel];
          v172 = sub_18964();
          v173 = *(v172 + 48);
          v174 = *(v172 + 52);
          swift_allocObject();
          v175 = v69;
          v176 = v230;
          v177 = v218;
          v178 = v169;

          v243 = v178;
          v179 = sub_18954();
          [v70 _balloonMaskEdgeInsets];
          v181 = v180;
          v183 = v182;
          v185 = v184;
          v187 = v186;
          v188 = v240;
          sub_18B24();
          v189 = v70;
          v190 = sub_18B44();
          v191 = sub_18E04();

          if (!os_log_type_enabled(v190, v191))
          {

            v140(v188, v246);
LABEL_37:
            v210 = sub_187E4();
            v211 = v244;
            *(v244 + 24) = v210;
            v211[4] = sub_13E74(&qword_24840, &type metadata accessor for TranscriptView);
            sub_157AC(v211);
            sub_187D4();

            return (*(v236 + 1))(v235, v175);
          }

          LODWORD(v230) = v191;
          v232 = v179;
          v233 = v177;
          v241 = v176;
          v242 = v140;
          v192 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v247 = v228;
          *v192 = 136316674;
          v193 = v189;
          v194 = [v193 description];
          v195 = sub_18C74();
          v197 = v196;

          v198 = sub_10320(v195, v197, &v247);

          *(v192 + 4) = v198;
          *(v192 + 12) = 2080;
          *(v192 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
          *(v192 + 22) = 2080;
          v199 = v225;
          v217(v225, enum case for UserType.initiator(_:), v175);
          v216(v199, 0, 1, v175);
          v200 = *(v239 + 48);
          v201 = &v70[v237];
          v202 = v222;
          sub_161B0(v201, v222, &qword_24798, &qword_19738);
          sub_161B0(v199, v202 + v200, &qword_24798, &qword_19738);
          v203 = v238;
          if (v238(v202, 1, v175) == 1)
          {
            sub_16218(v199, &qword_24798, &qword_19738);
            v204 = v203(v202 + v200, 1, v175);
            v176 = v241;
            v205 = v242;
            if (v204 == 1)
            {
              sub_16218(v202, &qword_24798, &qword_19738);
              v206 = 0x7265646E6573;
              v207 = 0xE600000000000000;
LABEL_36:
              v209 = sub_10320(v206, v207, &v247);

              *(v192 + 24) = v209;
              *(v192 + 32) = 2048;
              *(v192 + 34) = v183;
              *(v192 + 42) = 2048;
              *(v192 + 44) = v187;
              *(v192 + 52) = 2048;
              *(v192 + 54) = v181;
              *(v192 + 62) = 2048;
              *(v192 + 64) = v185;
              _os_log_impl(&dword_0, v190, v230, "%s, %s: %s insets %f, %f, %f, %f", v192, 0x48u);
              swift_arrayDestroy();

              v205(v240, v246);
              v177 = v233;
              goto LABEL_37;
            }
          }

          else
          {
            v208 = v220;
            sub_161B0(v202, v220, &qword_24798, &qword_19738);
            if (v203(v202 + v200, 1, v175) != 1)
            {
              v212 = v234;
              v219(v234, (v202 + v200), v175);
              sub_13E74(&qword_247A8, &type metadata accessor for UserType);
              LODWORD(v239) = sub_18BE4();
              v213 = v208;
              v214 = *(v236 + 1);
              v214(v212, v175);
              sub_16218(v225, &qword_24798, &qword_19738);
              v214(v213, v175);
              sub_16218(v202, &qword_24798, &qword_19738);
              v176 = v241;
              v205 = v242;
              if (v239)
              {
                v206 = 0x7265646E6573;
                v207 = 0xE600000000000000;
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            sub_16218(v225, &qword_24798, &qword_19738);
            (*(v236 + 1))(v208, v175);
            v176 = v241;
            v205 = v242;
          }

          sub_16218(v202, &qword_24790, &qword_19730);
LABEL_35:
          v207 = 0xE800000000000000;
          v206 = 0x7265766965636572;
          goto LABEL_36;
        }

LABEL_18:
        v120 = v228;
        sub_18B24();
        v121 = v241;
        v122 = v224;
        (v241[2])(v224, v81, v80);
        v123 = v70;
        v124 = sub_18B44();
        v125 = sub_18E34();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          v247 = v243;
          *v126 = 136315650;
          v127 = v123;
          v128 = [v127 description];
          v129 = v69;
          v130 = sub_18C74();
          v132 = v131;

          v133 = v130;
          v69 = v129;
          v134 = sub_10320(v133, v132, &v247);
          v70 = v226;

          *(v126 + 4) = v134;
          *(v126 + 12) = 2080;
          *(v126 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
          *(v126 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL);
          v135 = v242;
          v136 = sub_18FA4();
          v138 = v137;
          (v121[1])(v122, v135);
          v139 = sub_10320(v136, v138, &v247);

          *(v126 + 24) = v139;
          _os_log_impl(&dword_0, v124, v125, "%s, %s: Creating transcript view model with url, %s", v126, 0x20u);
          swift_arrayDestroy();

          v140 = *(v245 + 8);
          v140(v228, v246);
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v119 = v71;
      sub_16218(v40, &qword_24798, &qword_19738);
      (*(v236 + 1))(v232, v69);
    }

    sub_16218(v76, &qword_24790, &qword_19730);
    v80 = v242;
    v81 = v243;
    goto LABEL_18;
  }

  v240 = v43;
  v82 = v236;
  sub_18B14();
  v83 = v241;
  v84 = v242;
  v85 = v235;
  (v241[2])(v235, v243, v242);
  v86 = v226;
  v87 = sub_18B44();
  v88 = sub_18E14();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    v247 = v243;
    *v89 = 136315650;
    v90 = v86;
    LODWORD(v239) = v88;
    v91 = v90;
    v92 = [v90 description];
    v93 = v44;
    v94 = sub_18C74();
    v96 = v95;

    v97 = v94;
    v44 = v93;
    v98 = sub_10320(v97, v96, &v247);

    *(v89 + 4) = v98;
    *(v89 + 12) = 2080;
    *(v89 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v247);
    *(v89 + 22) = 2080;
    sub_13E74(&qword_24838, &type metadata accessor for URL);
    v99 = v235;
    v100 = sub_18FA4();
    v102 = v101;
    (v83[1])(v99, v84);
    v103 = sub_10320(v100, v102, &v247);
    v104 = v49;
    v105 = v103;

    *(v89 + 24) = v105;
    v49 = v104;
    _os_log_impl(&dword_0, v87, v239, "%s, %s: url is not valid for Zelkova message, %s", v89, 0x20u);
    swift_arrayDestroy();

    (*(v245 + 8))(v236, v246);
  }

  else
  {

    (v83[1])(v85, v84);
    (*(v245 + 8))(v82, v246);
  }

  v141 = v231;
  v142 = v240;
  (*(v44 + 2))(v231, v49, v240);
  (*(v229 + 13))(v141, enum case for CheckInViewState.unknown(_:), v230);
  v143 = sub_18744();
  v144 = v49;
  v145 = v244;
  *(v244 + 24) = v143;
  v145[4] = sub_13E74(&qword_24830, &type metadata accessor for CheckInView);
  sub_157AC(v145);
  sub_18734();
  return (*(v44 + 1))(v144, v142);
}

id sub_A114(void *a1)
{
  v3 = sub_18B54();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  v5 = __chkstk_darwin(v3);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v61 - v7;
  v8 = sub_11BB4(&qword_24808, &qword_197B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v61 - v10;
  v12 = sub_18744();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  v14 = __chkstk_darwin(v12);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  v18 = sub_11BB4(&qword_24810, &qword_197B8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v61 - v20;
  v22 = sub_187E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v61 - v28;
  sub_8674(a1, &v67);
  if (v68)
  {
    sub_156E4(&v67, v69);
    sub_156FC(v69, &v67);
    sub_11BB4(&qword_24820, &qword_197C8);
    v30 = swift_dynamicCast();
    v31 = *(v23 + 56);
    if (v30)
    {
      v31(v21, 0, 1, v22);
      (*(v23 + 32))(v29, v21, v22);
      (*(v23 + 16))(v27, v29, v22);
      v32 = objc_allocWithZone(sub_18A94());
      v33 = sub_18A84();
      (*(v23 + 8))(v29, v22);
    }

    else
    {
      v31(v21, 1, 1, v22);
      sub_16218(v21, &qword_24810, &qword_197B8);
      sub_156FC(v69, &v67);
      v45 = swift_dynamicCast();
      v46 = v63;
      v47 = *(v63 + 56);
      if (v45)
      {
        v47(v11, 0, 1, v12);
        (*(v46 + 32))(v17, v11, v12);
        (*(v46 + 16))(v61, v17, v12);
        v48 = objc_allocWithZone(sub_11BB4(&qword_24828, &qword_197D0));
        v33 = sub_18B64();
        (*(v46 + 8))(v17, v12);
      }

      else
      {
        v47(v11, 1, 1, v12);
        sub_16218(v11, &qword_24808, &qword_197B0);
        v49 = v62;
        sub_18B24();
        v50 = v1;
        v51 = sub_18B44();
        v52 = sub_18E14();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *&v67 = swift_slowAlloc();
          *v53 = 136315394;
          v54 = v50;
          v55 = [v54 description];
          v56 = sub_18C74();
          v58 = v57;

          v59 = sub_10320(v56, v58, &v67);

          *(v53 + 4) = v59;
          *(v53 + 12) = 2080;
          *(v53 + 14) = sub_10320(0xD00000000000001ELL, 0x800000000001B4B0, &v67);
          _os_log_impl(&dword_0, v51, v52, "%s, %s: Invalid transcript view", v53, 0x16u);
          swift_arrayDestroy();
        }

        (*(v65 + 8))(v49, v66);
        v33 = [objc_allocWithZone(UIViewController) init];
      }
    }

    sub_15760(v69);
  }

  else
  {
    sub_16218(&v67, &qword_24818, &qword_197C0);
    v34 = v64;
    sub_18B24();
    v35 = v1;
    v36 = sub_18B44();
    v37 = sub_18E14();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v38 = 136315394;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_18C74();
      v43 = v42;

      v44 = sub_10320(v41, v43, v69);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10320(0xD00000000000001ELL, 0x800000000001B4B0, v69);
      _os_log_impl(&dword_0, v36, v37, "%s, %s: Unexpected nil transcript view", v38, 0x16u);
      swift_arrayDestroy();
    }

    (*(v65 + 8))(v34, v66);
    return 0;
  }

  return v33;
}

id sub_A910()
{
  v1 = [v0 childViewControllers];
  sub_16278(0, &qword_248A0, UIViewController_ptr);
  v2 = sub_18D74();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_18F84();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_18F54();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_AA8C(void *a1)
{
  v2 = v1;
  v276 = sub_184B4();
  v272 = *(v276 - 8);
  v4 = *(v272 + 64);
  v5 = __chkstk_darwin(v276);
  v260 = &v254 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v275 = &v254 - v7;
  v8 = sub_11BB4(&qword_24850, &qword_197E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v266 = &v254 - v10;
  v11 = sub_18554();
  v291 = *(v11 - 8);
  v12 = *(v291 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v269 = &v254 - v17;
  v268 = v18;
  __chkstk_darwin(v16);
  v273 = &v254 - v19;
  v20 = sub_11BB4(&qword_24798, &qword_19738);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v285 = &v254 - v22;
  v287 = sub_18604();
  v282 = *(v287 - 8);
  v23 = *(v282 + 64);
  v24 = __chkstk_darwin(v287);
  v274 = &v254 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v279 = &v254 - v27;
  __chkstk_darwin(v26);
  v286 = &v254 - v28;
  v29 = sub_18B04();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  v32 = __chkstk_darwin(v29);
  v288 = &v254 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v290 = &v254 - v34;
  v35 = sub_11BB4(&qword_247B8, &qword_19748);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v265 = &v254 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v264 = &v254 - v40;
  v41 = __chkstk_darwin(v39);
  v280 = (&v254 - v42);
  __chkstk_darwin(v41);
  v278 = &v254 - v43;
  v44 = sub_18B54();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v271 = &v254 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v270 = &v254 - v50;
  v51 = __chkstk_darwin(v49);
  v263 = &v254 - v52;
  v53 = __chkstk_darwin(v51);
  v262 = &v254 - v54;
  v55 = __chkstk_darwin(v53);
  v261 = &v254 - v56;
  __chkstk_darwin(v55);
  v58 = &v254 - v57;
  sub_18B24();
  v59 = v2;
  v60 = a1;
  v284 = v58;
  v61 = sub_18B44();
  LODWORD(v58) = sub_18E34();

  LODWORD(v277) = v58;
  v62 = os_log_type_enabled(v61, v58);
  v292 = v59;
  v281 = v11;
  v267 = v15;
  v289 = v29;
  v283 = v45;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v258 = v61;
    v64 = v63;
    v257 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v294[0] = v259;
    *v64 = 136315650;
    v65 = v59;
    v66 = [v65 description];
    v67 = sub_18C74();
    v69 = v68;

    v70 = v283;
    v71 = v291;
    v72 = v30;
    v73 = sub_10320(v67, v69, v294);

    *(v64 + 4) = v73;
    v29 = v289;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
    *(v64 + 22) = 2112;
    v74 = [v60 selectedMessage];
    *(v64 + 24) = v74;
    v75 = v257;
    *v257 = v74;
    v76 = v258;
    _os_log_impl(&dword_0, v258, v277, "%s, %s: conversation.selectedMessage, %@", v64, 0x20u);
    sub_16218(v75, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v77 = *(v70 + 8);
    v77(v284, v44);
  }

  else
  {
    v72 = v30;

    v77 = *(v45 + 8);
    v77(v284, v44);
    v71 = v291;
  }

  v78 = [v60 selectedMessage];
  if (!v78)
  {
    v85 = v285;
    (*(v72 + 13))(v285, enum case for UserType.initiator(_:), v29);
    (*(v72 + 7))(v85, 0, 1, v29);
    v86 = OBJC_IVAR___MessagesViewController_userType;
    v87 = v292;
    swift_beginAccess();
    sub_16148(v85, &v87[v86], &qword_24798, &qword_19738);
    swift_endAccess();
    return;
  }

  v79 = v78;
  v80 = [v78 URL];
  v277 = v77;
  v81 = v72;
  v256 = v44;
  if (v80)
  {
    v82 = v278;
    v83 = v80;
    sub_18534();

    v84 = 0;
  }

  else
  {
    v84 = 1;
    v82 = v278;
  }

  v88 = v281;
  (*(v71 + 56))(v82, v84, 1, v281);
  v89 = OBJC_IVAR___MessagesViewController_messageURL;
  v90 = v292;
  swift_beginAccess();
  sub_16148(v82, &v90[v89], &qword_247B8, &qword_19748);
  swift_endAccess();
  v278 = v79;
  v91 = [v79 senderParticipantIdentifier];
  v92 = v286;
  sub_185E4();

  v259 = v60;
  v93 = [v60 localParticipantIdentifier];
  v94 = v279;
  sub_185E4();

  LOBYTE(v93) = sub_185D4();
  v95 = *(v282 + 8);
  v96 = v94;
  v97 = v287;
  (v95)(v96, v287);
  v258 = v95;
  (v95)(v92, v97);
  v98 = &enum case for UserType.receiver(_:);
  if (v93)
  {
    v98 = &enum case for UserType.initiator(_:);
  }

  v99 = *v98;
  v100 = v290;
  v279 = *(v81 + 13);
  (v279)(v290, v99, v29);
  v101 = v88;
  v102 = v29;
  v103 = v285;
  v257 = *(v81 + 2);
  v257(v285, v100, v102);
  v284 = v81;
  (*(v81 + 7))(v103, 0, 1, v102);
  v104 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  sub_16148(v103, &v90[v104], &qword_24798, &qword_19738);
  swift_endAccess();
  v255 = v89;
  v105 = v280;
  v106 = v291;
  sub_161B0(&v90[v89], v280, &qword_247B8, &qword_19748);
  v107 = (v106 + 48);
  v285 = *(v106 + 48);
  if ((v285)(v105, 1, v88) == 1)
  {
    sub_16218(v105, &qword_247B8, &qword_19748);
LABEL_16:
    v122 = v292;
    goto LABEL_17;
  }

  v108 = v106;
  v109 = *(v106 + 32);
  v110 = v273;
  v280 = v109;
  (v109)(v273, v105, v88);
  v111 = objc_opt_self();
  sub_18524(v112);
  v114 = v113;
  v115 = [v111 sessionIDFromURL:v113];

  if (!v115)
  {
    (*(v108 + 8))(v110, v88);
    goto LABEL_16;
  }

  v116 = v274;
  sub_185E4();

  (*(v282 + 16))(v286, v116, v287);
  v257(v288, v290, v289);
  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = v269;
  (*(v108 + 16))(v269, v110, v101);
  v119 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = v117;
  (v280)(v120 + v119, v118, v101);
  objc_allocWithZone(sub_186D4());

  v121 = sub_186C4();
  (v258)(v274, v287);
  v122 = v292;
  (*(v291 + 8))(v110, v101);

  v123 = *&v122[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
  *&v122[OBJC_IVAR___MessagesViewController_safetyCacheViewModel] = v121;

LABEL_17:
  v125 = v288;
  v124 = v289;
  v126 = v278;
  (v279)(v288, enum case for UserType.initiator(_:), v289);
  v127 = v290;
  v128 = sub_18AF4();
  v129 = v284 + 8;
  v130 = *(v284 + 1);
  v130(v125, v124);
  if ((v128 & 1) == 0 || ![v126 isPending])
  {
    v130(v127, v124);

    return;
  }

  v288 = v107;
  v131 = v259;
  v132 = [v259 recipientAddresses];
  v133 = sub_18D74();

  v134 = *(v133 + 16);

  v284 = v129;
  v286 = v130;
  if (v134 < 2)
  {
    v142 = v263;
    sub_18B24();
    v143 = v122;
    v144 = sub_18B44();
    v145 = sub_18E34();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v294[0] = swift_slowAlloc();
      *v146 = 136315394;
      v147 = v143;
      v148 = [v147 description];
      v149 = sub_18C74();
      v151 = v150;

      v122 = v292;
      v152 = sub_10320(v149, v151, v294);
      v126 = v278;

      *(v146 + 4) = v152;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
      v153 = "%s, %s: Do not populate groupID for non-group chats";
LABEL_34:
      _os_log_impl(&dword_0, v144, v145, v153, v146, 0x16u);
      swift_arrayDestroy();
      v131 = v259;
    }

LABEL_35:

    v161 = v142;
LABEL_36:
    v141 = v277;
    v277(v161, v256);
    v287 = 0;
    v140 = 0;
    goto LABEL_37;
  }

  if (![v131 respondsToSelector:sub_18634()])
  {
    v142 = v262;
    sub_18B24();
    v154 = v122;
    v144 = sub_18B44();
    v145 = sub_18E34();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v294[0] = swift_slowAlloc();
      *v146 = 136315394;
      v155 = v154;
      v156 = [v155 description];
      v157 = sub_18C74();
      v159 = v158;

      v122 = v292;
      v160 = sub_10320(v157, v159, v294);
      v126 = v278;

      *(v146 + 4) = v160;
      *(v146 + 12) = 2080;
      *(v146 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
      v153 = "%s, %s: MSConversation does not respond to groupID";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v135 = [v131 performSelector:sub_18634()];
  v136 = v131;
  if (!v135)
  {
    v231 = v131;
    v232 = v261;
    sub_18B24();
    v233 = v122;
    v234 = sub_18B44();
    v235 = sub_18E34();

    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      v294[0] = swift_slowAlloc();
      *v236 = 136315394;
      v237 = v233;
      v238 = [v237 description];
      v239 = sub_18C74();
      v241 = v240;

      v122 = v292;
      v242 = sub_10320(v239, v241, v294);
      v126 = v278;

      *(v236 + 4) = v242;
      *(v236 + 12) = 2080;
      *(v236 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
      _os_log_impl(&dword_0, v234, v235, "%s, %s: MSConversation groupID is nil", v236, 0x16u);
      swift_arrayDestroy();
      v131 = v259;

      v161 = v261;
    }

    else
    {

      v161 = v232;
    }

    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  v293 = v135;
  v137 = v131;
  v138 = swift_dynamicCast();
  v139 = v294[0];
  if (!v138)
  {
    v139 = 0;
  }

  v287 = v139;
  if (v138)
  {
    v140 = v294[1];
  }

  else
  {
    v140 = 0;
  }

  v141 = v277;
LABEL_37:
  v162 = [v131 recipientAddresses];
  v163 = v131;
  v164 = sub_18D74();

  sub_707C(v164);

  v165 = v270;
  sub_18B24();

  v166 = v122;
  v167 = v163;

  v168 = sub_18B44();
  v169 = sub_18E34();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    LODWORD(v280) = v169;
    v171 = v170;
    v282 = swift_slowAlloc();
    v294[0] = v282;
    *v171 = 136316418;
    v172 = v166;
    v173 = [v172 description];
    v174 = sub_18C74();
    v176 = v175;

    v177 = sub_10320(v174, v176, v294);

    *(v171 + 4) = v177;
    *(v171 + 12) = 2080;
    *(v171 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
    *(v171 + 22) = 2080;
    *(v171 + 24) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
    *(v171 + 32) = 2080;
    v178 = sub_18D84();
    v180 = sub_10320(v178, v179, v294);

    *(v171 + 34) = v180;
    *(v171 + 42) = 2080;
    v181 = [v167 conversationIdentifier];
    v182 = sub_18C74();
    v184 = v183;

    v185 = sub_10320(v182, v184, v294);
    v126 = v278;

    *(v171 + 44) = v185;
    *(v171 + 52) = 2080;
    v186 = v281;
    if (v140)
    {
      v187 = v287;
    }

    else
    {
      v187 = 7104878;
    }

    if (v140)
    {
      v188 = v140;
    }

    else
    {
      v188 = 0xE300000000000000;
    }

    v189 = sub_10320(v187, v188, v294);

    *(v171 + 54) = v189;
    _os_log_impl(&dword_0, v168, v280, "%s, %s: Setting recipient handles and conversation identifier in %s: Recipient Addresses - %s, Conversation Identifier - %s, Group ID - %s", v171, 0x3Eu);
    swift_arrayDestroy();

    v190 = v256;
    v277(v270, v256);
    v191 = v271;
  }

  else
  {

    v190 = v256;
    v141(v165, v256);
    v191 = v271;
    v186 = v281;
  }

  v192 = *&v166[OBJC_IVAR___MessagesViewController_sessionViewModel];
  sub_18874();
  v287 = v192;
  sub_18904();
  sub_18B24();
  v193 = v166;
  v194 = sub_18B44();
  v195 = sub_18E34();

  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v294[0] = swift_slowAlloc();
    *v196 = 136315650;
    v197 = v193;
    v198 = [v197 description];
    v199 = sub_18C74();
    v201 = v200;

    v202 = sub_10320(v199, v201, v294);

    *(v196 + 4) = v202;
    *(v196 + 12) = 2080;
    *(v196 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v294);
    *(v196 + 22) = 2080;
    v203 = v255;
    v204 = v264;
    sub_161B0(&v292[v255], v264, &qword_247B8, &qword_19748);
    if ((v285)(v204, 1, v186))
    {
      v205 = 7104878;
      sub_16218(v204, &qword_247B8, &qword_19748);
      v206 = 0xE300000000000000;
    }

    else
    {
      v208 = v291;
      v209 = v269;
      (*(v291 + 16))(v269, v204, v186);
      sub_16218(v204, &qword_247B8, &qword_19748);
      v205 = sub_18514();
      v206 = v210;
      (*(v208 + 8))(v209, v186);
    }

    v207 = v265;
    v211 = v256;
    v212 = sub_10320(v205, v206, v294);

    *(v196 + 24) = v212;
    _os_log_impl(&dword_0, v194, v195, "%s, %s: Processing initiator message URL, %s", v196, 0x20u);
    swift_arrayDestroy();

    v277(v271, v211);
    v126 = v278;
  }

  else
  {

    v277(v191, v190);
    v207 = v265;
    v203 = v255;
  }

  sub_161B0(&v292[v203], v207, &qword_247B8, &qword_19748);
  v213 = (v285)(v207, 1, v186);
  v214 = v291;
  v215 = v267;
  v216 = v266;
  if (v213 == 1)
  {
    (v286)(v290, v289);

    sub_16218(v207, &qword_247B8, &qword_19748);
  }

  else
  {
    (*(v291 + 32))(v267, v207, v186);
    sub_184E4();
    v217 = sub_18504();
    v218 = *(v217 - 8);
    if ((*(v218 + 48))(v216, 1, v217) == 1)
    {

      (*(v214 + 8))(v215, v186);
      (v286)(v290, v289);
      sub_16218(v216, &qword_24850, &qword_197E0);
    }

    else
    {
      v219 = sub_184C4();
      (*(v218 + 8))(v216, v217);
      if (v219)
      {
        v220 = *(v219 + 16);
        if (v220)
        {
          v221 = 0;
          v222 = (v272 + 8);
          while (1)
          {
            if (v221 >= *(v219 + 16))
            {
              __break(1u);
              return;
            }

            v223 = v219 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v221;
            v224 = *(v272 + 16);
            v224(v275, v223, v276);
            v225 = sub_18494();
            v227 = v226;
            if (v225 == sub_18754() && v227 == v228)
            {
              v229 = 1;
            }

            else
            {
              v229 = sub_18FC4();
            }

            v230 = *v222;
            (*v222)(v275, v276);
            if (v229)
            {
              break;
            }

            if (v220 == ++v221)
            {
              goto LABEL_66;
            }
          }

          v243 = v260;
          v244 = v223;
          v245 = v276;
          v224(v260, v244, v276);

          v246 = sub_184A4();
          v248 = v247;
          v230(v243, v245);
          if (!v248)
          {
            goto LABEL_67;
          }

          sub_CC48(v246, v248);
          v249 = v281;
          v250 = v291;
          v251 = v267;
          v252 = v278;
          if ((v253 & 1) == 0)
          {
            sub_188B4();
          }

          (*(v250 + 8))(v251, v249);
          (v286)(v290, v289);
        }

        else
        {
LABEL_66:

LABEL_67:

          (*(v291 + 8))(v267, v281);
          (v286)(v290, v289);
        }
      }

      else
      {

        (*(v291 + 8))(v215, v186);
        (v286)(v290, v289);
      }
    }
  }
}

void sub_C804(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_11BB4(&qword_24790, &qword_19730);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = sub_11BB4(&qword_24798, &qword_19738);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v27 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v27[0] = v7;
    v27[1] = a2;
    [Strong requestResize];
    v21 = OBJC_IVAR___MessagesViewController_userType;
    swift_beginAccess();
    (*(v4 + 104))(v18, enum case for UserType.receiver(_:), v3);
    (*(v4 + 56))(v18, 0, 1, v3);
    v22 = *(v8 + 48);
    sub_161B0(v20 + v21, v11, &qword_24798, &qword_19738);
    sub_161B0(v18, &v11[v22], &qword_24798, &qword_19738);
    v23 = *(v4 + 48);
    if (v23(v11, 1, v3) == 1)
    {
      sub_16218(v18, &qword_24798, &qword_19738);
      if (v23(&v11[v22], 1, v3) == 1)
      {
        sub_16218(v11, &qword_24798, &qword_19738);
LABEL_9:
        sub_CF48();
        goto LABEL_10;
      }
    }

    else
    {
      sub_161B0(v11, v16, &qword_24798, &qword_19738);
      if (v23(&v11[v22], 1, v3) != 1)
      {
        v24 = v27[0];
        (*(v4 + 32))(v27[0], &v11[v22], v3);
        sub_13E74(&qword_247A8, &type metadata accessor for UserType);
        v25 = sub_18BE4();
        v26 = *(v4 + 8);
        v26(v24, v3);
        sub_16218(v18, &qword_24798, &qword_19738);
        v26(v16, v3);
        sub_16218(v11, &qword_24798, &qword_19738);
        if (v25)
        {
          goto LABEL_9;
        }

LABEL_10:

        return;
      }

      sub_16218(v18, &qword_24798, &qword_19738);
      (*(v4 + 8))(v16, v3);
    }

    sub_16218(v11, &qword_24790, &qword_19730);
    goto LABEL_10;
  }
}

uint64_t sub_CC48(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_18F64();
        v3 = v21;
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
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
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
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
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
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10B24(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_CF48()
{
  v1 = v0;
  v2 = sub_18B54();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_11BB4(&qword_24800, &qword_197A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_18A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = objc_opt_self();
  sub_18524(v19);
  v21 = v20;
  [v18 messageTypeFromURL:v20];

  v22 = *&v1[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
  if (v22)
  {
    v23 = v1;
    v24 = v22;
    sub_186B4();

    v1 = v23;
  }

  sub_18A44();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_16218(v9, &qword_24800, &qword_197A8);
    sub_18B14();
    v25 = v1;
    v26 = sub_18B44();
    v27 = sub_18E34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = v25;
      v30 = [v29 description];
      v31 = sub_18C74();
      v33 = v32;

      v34 = sub_10320(v31, v33, &v42);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10320(0xD00000000000002DLL, 0x800000000001B480, &v42);
      _os_log_impl(&dword_0, v26, v27, "#CriticalAlertOnboarding: Skipping onboarding %s: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v40 + 8))(v5, v41);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v36 = objc_allocWithZone(sub_18AD4());
    v37 = sub_18AC4();
    v38 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v37];
    [v38 setModalPresentationStyle:-2];
    [v38 setModalInPresentation:1];
    sub_470C(v38);

    return (*(v11 + 8))(v17, v10);
  }
}

id sub_D3D8()
{
  v1 = v0;
  v2 = sub_18B54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = [objc_allocWithZone(CNContact) init];
  v14 = [v1 activeConversation];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 selectedMessage];
    if (v16)
    {

      v17 = [v15 selectedMessage];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 senderAddress];

        if (v19)
        {
          v20 = [*&v1[OBJC_IVAR___MessagesViewController_contactsManager] contactWith:v19];

          return v20;
        }
      }

      sub_18B14();
      v33 = v1;
      v34 = sub_18B44();
      v35 = sub_18E14();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v61 = v58;
        *v36 = 136315394;
        v37 = v33;
        v38 = [v37 description];
        v59 = v2;
        v39 = v13;
        v40 = v38;
        v41 = sub_18C74();
        v60 = v3;
        v43 = v42;

        v13 = v39;
        v44 = sub_10320(v41, v43, &v61);

        *(v36 + 4) = v44;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v61);
        _os_log_impl(&dword_0, v34, v35, "%s, %s: handle is not available", v36, 0x16u);
        swift_arrayDestroy();

        (*(v60 + 8))(v12, v59);
      }

      else
      {

        (*(v3 + 8))(v12, v2);
      }
    }

    else
    {
      sub_18B14();
      v45 = v1;
      v46 = sub_18B44();
      v47 = sub_18E14();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v61 = v58;
        *v48 = 136315394;
        v49 = v45;
        v50 = [v49 description];
        v51 = sub_18C74();
        v59 = v2;
        v60 = v3;
        v52 = v13;
        v53 = v51;
        v55 = v54;

        v56 = v53;
        v13 = v52;
        v57 = sub_10320(v56, v55, &v61);

        *(v48 + 4) = v57;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v61);
        _os_log_impl(&dword_0, v46, v47, "%s, %s: no selected message for setting up message sender contact", v48, 0x16u);
        swift_arrayDestroy();

        (*(v60 + 8))(v10, v59);
      }

      else
      {

        (*(v3 + 8))(v10, v2);
      }
    }
  }

  else
  {
    v60 = v3;
    sub_18B14();
    v22 = v1;
    v23 = sub_18B44();
    v24 = sub_18E14();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = v22;
      v27 = [v26 description];
      v28 = sub_18C74();
      v59 = v2;
      v29 = v13;
      v31 = v30;

      v32 = sub_10320(v28, v31, &v61);
      v13 = v29;

      *(v25 + 4) = v32;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v61);
      _os_log_impl(&dword_0, v23, v24, "%s, %s: no active conversation", v25, 0x16u);
      swift_arrayDestroy();

      (*(v60 + 8))(v7, v59);
    }

    else
    {

      (*(v60 + 8))(v7, v2);
    }
  }

  return v13;
}

id sub_DA44(void *a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v8 = v1;
  v9 = a1;
  v10 = sub_18B44();
  v11 = sub_18E34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v4;
    v13 = v12;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v13 = 136315650;
    v14 = v8;
    v15 = [v14 description];
    v27 = v3;
    v16 = v15;
    v17 = sub_18C74();
    v19 = v18;

    v20 = sub_10320(v17, v19, &v29);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10320(0xD000000000000017, 0x800000000001B1D0, &v29);
    *(v13 + 22) = 2112;
    *(v13 + 24) = v9;
    v21 = v25;
    *v25 = v9;
    v22 = v9;
    _os_log_impl(&dword_0, v10, v11, "%s, %s: conversation, %@", v13, 0x20u);
    sub_16218(v21, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    (*(v28 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_AA8C(v9);
  return [v8 setNeedsSizeMatchBeforeSnapshotSwap];
}

void sub_DD70(void *a1)
{
  v2 = sub_18554();
  v119 = *(v2 - 8);
  v120 = v2;
  v3 = *(v119 + 64);
  __chkstk_darwin(v2);
  v118 = v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A34();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18B54();
  v122 = *(v9 - 8);
  v123 = v9;
  v10 = *(v122 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v112 - v15;
  v17 = __chkstk_darwin(v14);
  v117 = v112 - v18;
  v19 = __chkstk_darwin(v17);
  v116 = v112 - v20;
  __chkstk_darwin(v19);
  v115 = v112 - v21;
  v22 = sub_18B04();
  v121 = *(v22 - 8);
  v23 = *(v121 + 64);
  __chkstk_darwin(v22);
  v25 = v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_11BB4(&qword_24790, &qword_19730);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = v112 - v28;
  v30 = sub_11BB4(&qword_24798, &qword_19738);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v112 - v35;
  v37 = [a1 selectedMessage];
  if (!v37)
  {
    sub_18B24();
    v45 = v124;
    v46 = sub_18B44();
    v47 = sub_18E14();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = v45;
      v50 = [v49 description];
      v51 = sub_18C74();
      v53 = v52;

      v54 = sub_10320(v51, v53, v126);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, v126);
      _os_log_impl(&dword_0, v46, v47, "%s, %s: empty message in conversation", v48, 0x16u);
      swift_arrayDestroy();
    }

    v55 = *(v122 + 8);
    v56 = v13;
    goto LABEL_27;
  }

  v38 = v37;
  if ([v124 presentationStyle] != &dword_0 + 2)
  {
    sub_18B24();
    v57 = v124;
    v58 = sub_18B44();
    v59 = sub_18DF4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v60 = 136315394;
      v61 = v57;
      v62 = [v61 description];
      v63 = sub_18C74();
      v64 = v38;
      v66 = v65;

      v67 = sub_10320(v63, v66, v126);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, v126);
      v68 = "%s, %s: presentation style is not transcript";
LABEL_24:
      _os_log_impl(&dword_0, v58, v59, v68, v60, 0x16u);
      swift_arrayDestroy();

LABEL_26:
      v55 = *(v122 + 8);
      v56 = v16;
LABEL_27:
      v55(v56, v123);
      return;
    }

LABEL_25:

    goto LABEL_26;
  }

  v112[1] = v8;
  v113 = v25;
  v114 = v38;
  v39 = OBJC_IVAR___MessagesViewController_userType;
  v40 = v124;
  swift_beginAccess();
  v41 = v121;
  (*(v121 + 104))(v36, enum case for UserType.initiator(_:), v22);
  (*(v41 + 56))(v36, 0, 1, v22);
  v42 = *(v26 + 48);
  sub_161B0(v40 + v39, v29, &qword_24798, &qword_19738);
  sub_161B0(v36, &v29[v42], &qword_24798, &qword_19738);
  v43 = *(v41 + 48);
  if (v43(v29, 1, v22) == 1)
  {
    sub_16218(v36, &qword_24798, &qword_19738);
    v44 = v43(&v29[v42], 1, v22);
    v38 = v114;
    if (v44 == 1)
    {
      sub_16218(v29, &qword_24798, &qword_19738);
      goto LABEL_15;
    }

LABEL_13:
    sub_16218(v29, &qword_24790, &qword_19730);
    goto LABEL_20;
  }

  sub_161B0(v29, v34, &qword_24798, &qword_19738);
  if (v43(&v29[v42], 1, v22) == 1)
  {
    sub_16218(v36, &qword_24798, &qword_19738);
    (*(v121 + 8))(v34, v22);
    v38 = v114;
    goto LABEL_13;
  }

  v69 = v121;
  v70 = v113;
  (*(v121 + 32))(v113, &v29[v42], v22);
  sub_13E74(&qword_247A8, &type metadata accessor for UserType);
  v71 = sub_18BE4();
  v72 = *(v69 + 8);
  v72(v70, v22);
  sub_16218(v36, &qword_24798, &qword_19738);
  v72(v34, v22);
  sub_16218(v29, &qword_24798, &qword_19738);
  v38 = v114;
  if ((v71 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (![v38 isPending])
  {
LABEL_20:
    v98 = [v38 URL];
    if (v98)
    {
      v99 = v118;
      v100 = v98;
      sub_18534();

      sub_7AA4(v99);
      (*(v119 + 8))(v99, v120);
      return;
    }

    v16 = v117;
    sub_18B14();
    v101 = v124;
    v58 = sub_18B44();
    v59 = sub_18E14();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v60 = 136315394;
      v102 = v101;
      v103 = [v102 description];
      v104 = sub_18C74();
      v64 = v38;
      v106 = v105;

      v107 = sub_10320(v104, v106, &v125);

      *(v60 + 4) = v107;
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v125);
      v68 = "%s, %s: Message url is missing";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v73 = v115;
  sub_18B24();
  v74 = v124;
  v75 = sub_18B44();
  v76 = sub_18E34();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v77 = 136315394;
    v78 = v74;
    v79 = [v78 description];
    v80 = sub_18C74();
    v82 = v81;

    v83 = sub_10320(v80, v82, &v125);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v125);
    _os_log_impl(&dword_0, v75, v76, "%s, %s: calling sessionViewModel.initializeIfNeeded", v77, 0x16u);
    swift_arrayDestroy();
  }

  v84 = *(v122 + 8);
  v84(v73, v123);
  v85 = *(v74 + OBJC_IVAR___MessagesViewController_sessionViewModel);
  sub_18894(1);
  v86 = v116;
  sub_18B24();
  v87 = v74;
  v88 = sub_18B44();
  v89 = sub_18E34();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v124 = v84;
    v125 = v91;
    *v90 = 136315394;
    v92 = v87;
    v93 = [v92 description];
    v94 = sub_18C74();
    v96 = v95;

    v97 = sub_10320(v94, v96, &v125);

    *(v90 + 4) = v97;
    *(v90 + 12) = 2080;
    *(v90 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v125);
    _os_log_impl(&dword_0, v88, v89, "%s, %s: message.isPending, calling presentConfigurationViewController", v90, 0x16u);
    swift_arrayDestroy();

    v124(v116, v123);
  }

  else
  {

    v84(v86, v123);
  }

  v108 = v114;
  sub_188E4();
  v109 = *&v87[OBJC_IVAR___MessagesViewController_handlerManager];

  sub_18B74();
  sub_18A24();
  v110 = objc_allocWithZone(sub_11BB4(&qword_247A0, &qword_19740));
  v111 = sub_18B64();
  sub_73EC(v111);
}

uint64_t sub_EBB8(void *a1)
{
  v103 = a1;
  v2 = sub_11BB4(&qword_24798, &qword_19738);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v101 = &v92[-v4];
  v5 = sub_18B04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v97 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v92[-v10];
  v12 = sub_18B54();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v100 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v98 = &v92[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v92[-v20];
  __chkstk_darwin(v19);
  v23 = &v92[-v22];
  sub_18B24();
  v24 = v1;
  v25 = sub_18B44();
  v26 = sub_18E34();

  v27 = os_log_type_enabled(v25, v26);
  v102 = v13;
  v96 = v21;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v94 = v25;
    v29 = v28;
    v95 = swift_slowAlloc();
    v105[0] = v95;
    *v29 = 136315394;
    v30 = v24;
    v31 = v6;
    v32 = v5;
    v33 = v12;
    v34 = [v30 description];
    v35 = sub_18C74();
    v99 = v11;
    v36 = v35;
    v93 = v26;
    v38 = v37;

    v13 = v102;
    v12 = v33;
    v5 = v32;
    v6 = v31;
    v39 = sub_10320(v36, v38, v105);

    *(v29 + 4) = v39;
    v11 = v99;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, v105);
    v40 = v94;
    _os_log_impl(&dword_0, v94, v93, "%s, %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = *(v13 + 8);
  v41(v23, v12);
  sub_A910();
  v42 = [v103 selectedMessage];
  v43 = v24;
  if (!v42)
  {
    v61 = v100;
    sub_18B24();
    v62 = v24;
    v63 = sub_18B44();
    v64 = sub_18E14();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v65 = 136315394;
      v66 = v62;
      v67 = [v66 description];
      v68 = sub_18C74();
      v70 = v69;

      v71 = sub_10320(v68, v70, v105);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, v105);
      _os_log_impl(&dword_0, v63, v64, "%s, %s: empty message in conversation", v65, 0x16u);
      swift_arrayDestroy();

      v60 = v100;
    }

    else
    {

      v60 = v61;
    }

    goto LABEL_17;
  }

  v44 = v42;
  v45 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v46 = &v24[v45];
  v47 = v101;
  sub_161B0(v46, v101, &qword_24798, &qword_19738);
  if ((*(v6 + 48))(v47, 1, v5) == 1)
  {
    sub_16218(v47, &qword_24798, &qword_19738);
    v48 = v98;
    sub_18B24();
    v49 = v24;
    v50 = sub_18B44();
    v51 = sub_18E14();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v52 = 136315394;
      v53 = v49;
      v54 = [v53 description];
      v55 = sub_18C74();
      v101 = v12;
      v57 = v56;

      v58 = sub_10320(v55, v57, &v104);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, &v104);
      _os_log_impl(&dword_0, v50, v51, "%s, %s: userType is not initialized", v52, 0x16u);
      swift_arrayDestroy();

      v59 = v101;
      v60 = v98;
      return (v41)(v60, v59);
    }

    v60 = v48;
LABEL_17:
    v59 = v12;
    return (v41)(v60, v59);
  }

  (*(v6 + 32))(v11, v47, v5);
  v72 = v97;
  (*(v6 + 104))(v97, enum case for UserType.initiator(_:), v5);
  v73 = sub_18AF4();
  v75 = *(v6 + 8);
  v74 = (v6 + 8);
  v103 = v75;
  (v75)(v72, v5);
  if ((v73 & 1) != 0 && [v44 isPending])
  {
    v76 = *&v43[OBJC_IVAR___MessagesViewController_sessionViewModel];
    sub_18884();

    v77 = v11;
    v78 = v5;
  }

  else
  {
    v99 = v11;
    v100 = v5;
    v79 = v96;
    sub_18B24();
    v80 = v43;
    v81 = sub_18B44();
    v82 = sub_18DF4();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v104 = v97;
      *v83 = 136315394;
      v84 = v80;
      v85 = [v84 description];
      v86 = sub_18C74();
      v98 = v74;
      v87 = v86;
      v101 = v12;
      v89 = v88;

      v90 = sub_10320(v87, v89, &v104);

      *(v83 + 4) = v90;
      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, &v104);
      _os_log_impl(&dword_0, v81, v82, "%s, %s: no message pending, nothing to do", v83, 0x16u);
      swift_arrayDestroy();

      v41(v79, v101);
      return (v103)(v99, v100);
    }

    v41(v79, v12);
    v77 = v99;
    v78 = v100;
  }

  return (v103)(v77, v78);
}

void sub_F690(double a1, double a2)
{
  v3 = v2;
  v6 = sub_18B54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 subviews];

  sub_16278(0, &qword_247B0, UIView_ptr);
  v14 = sub_18D74();

  if (v14 >> 62)
  {
    if (sub_18F84())
    {
      goto LABEL_4;
    }
  }

  else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_4:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_18F54();
      goto LABEL_7;
    }

    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      v15 = *(v14 + 32);
LABEL_7:
      v16 = v15;

      [v16 sizeThatFits:{a1, a2}];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_18B24();
  v17 = v3;
  v18 = sub_18B44();
  v19 = sub_18E14();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 2080;
    v23 = v17;
    *(v20 + 14) = sub_10320(0xD000000000000017, 0x800000000001B230, &v25);
    _os_log_impl(&dword_0, v18, v19, "%@,%s,no subviews to calculate size", v20, 0x16u);
    sub_16218(v21, &qword_24788, &qword_19728);

    sub_15760(v22);
  }

  (*(v7 + 8))(v10, v6);
}

id sub_FA58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_FB6C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_164AC;

  return v7();
}

uint64_t sub_FC54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B0C;

  return v8();
}

uint64_t sub_FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_11BB4(&qword_24780, &qword_19710);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_161B0(a3, v25 - v11, &qword_24780, &qword_19710);
  v13 = sub_18DD4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_16218(v12, &qword_24780, &qword_19710);
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

  sub_18DC4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_18D94();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_18CC4() + 32;
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

    sub_16218(a3, &qword_24780, &qword_19710);

    return v23;
  }

LABEL_8:
  sub_16218(a3, &qword_24780, &qword_19710);
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

uint64_t sub_10038(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_164B0;

  return v7(a1);
}

uint64_t sub_10130(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10228;

  return v7(a1);
}

uint64_t sub_10228()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_103EC(v11, 0, 0, 1, a1, a2);
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
    sub_1582C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_15760(v11);
  return v7;
}

unint64_t sub_103EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_104F8(a5, a6);
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
    result = sub_18F64();
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

char *sub_104F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10544(a1, a2);
  sub_10674(&off_20C00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10544(uint64_t a1, unint64_t a2)
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

  v6 = sub_10760(v5, 0);
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

  result = sub_18F64();
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
        v10 = sub_18CF4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10760(v10, 0);
        result = sub_18F44();
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

uint64_t sub_10674(uint64_t result)
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

  result = sub_107D4(result, v12, 1, v3);
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

void *sub_10760(uint64_t a1, uint64_t a2)
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

  sub_11BB4(&qword_248B8, &qword_19860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_107D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_11BB4(&qword_248B8, &qword_19860);
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

unint64_t sub_108C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_18FE4();
  sub_18CE4();
  v6 = sub_18FF4();

  return sub_10940(a1, a2, v6);
}

unint64_t sub_10940(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18FC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_109F8(char *a1, int64_t a2, char a3)
{
  result = sub_10A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_11BB4(&qword_24848, &qword_197D8);
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

unsigned __int8 *sub_10B24(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_18D44();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_110A8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_18F64();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_110A8()
{
  v0 = sub_18D54();
  v4 = sub_11128(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_11128(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18CD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_18EB4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10760(v9, 0);
  v12 = sub_11280(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_18CD4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_18F64();
LABEL_4:

  return sub_18CD4();
}

unint64_t sub_11280(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_114A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18D24();
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
          result = sub_18F64();
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

    result = sub_114A0(v12, a6, a7);
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

    result = sub_18D04();
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

uint64_t sub_114A0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18D34();
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
    v5 = sub_18D14();
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

void sub_1151C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_18F24();
      sub_16278(0, &qword_24870, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_16278(0, &qword_24870, UIScene_ptr);
    if (sub_18F04() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_18F14();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_18E74(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_18E84();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
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

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_11740()
{
  v1 = v0;
  v2 = OBJC_IVAR___MessagesViewController_sessionViewModel;
  sub_18944();
  *(v0 + v2) = sub_188F4();
  v3 = OBJC_IVAR___MessagesViewController_handlerManager;
  v4 = sub_187C4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + v3) = sub_187B4();
  v7 = OBJC_IVAR___MessagesViewController_contactsManager;
  *(v1 + v7) = [objc_allocWithZone(SMContactsManager) init];
  v8 = OBJC_IVAR___MessagesViewController_transactionID;
  v9 = sub_18604();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR___MessagesViewController_messageURL;
  v11 = sub_18554();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR___MessagesViewController_safetyCacheViewModel) = 0;
  v12 = OBJC_IVAR___MessagesViewController_userType;
  v13 = sub_18B04();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR___MessagesViewController_cancellables) = &_swiftEmptySetSingleton;
  sub_18F74();
  __break(1u);
}

uint64_t type metadata accessor for MessagesViewController()
{
  result = qword_249E8;
  if (!qword_249E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1195C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11994(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B0C;

  return sub_1A74(a1);
}

id sub_11A54()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR___MessagesViewController_sessionViewModel];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_18814();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_11B24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_11B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong requestResize];
  }
}

uint64_t sub_11BB4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_11BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_11BB4(&qword_24890, &qword_197F8);
    v3 = sub_18F94();
    v4 = a1 + 32;

    while (1)
    {
      sub_161B0(v4, &v13, &qword_24898, &qword_19800);
      v5 = v13;
      v6 = v14;
      result = sub_108C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_15990(&v15, (v3[7] + 32 * result));
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

uint64_t sub_11D2C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_18934();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_11BB4(&qword_248E0, &qword_198A0);
  v3[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = sub_186A4();
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v12 = sub_18554();
  v3[22] = v12;
  v13 = *(v12 - 8);
  v3[23] = v13;
  v14 = *(v13 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v15 = sub_11BB4(&qword_24768, &qword_196F0);
  v3[26] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v17 = sub_18604();
  v3[30] = v17;
  v18 = *(v17 - 8);
  v3[31] = v18;
  v19 = *(v18 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v20 = sub_11BB4(&qword_247B8, &qword_19748);
  v3[36] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v22 = sub_18B54();
  v3[41] = v22;
  v23 = *(v22 - 8);
  v3[42] = v23;
  v24 = *(v23 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_18DB4();
  v3[48] = sub_18DA4();
  v26 = sub_18D94();
  v3[49] = v26;
  v3[50] = v25;

  return _swift_task_switch(sub_120F0, v26, v25);
}

uint64_t sub_120F0()
{
  v102 = v0;
  v1 = v0[47];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_18B24();
  v5 = v4;
  v6 = v2;
  v7 = v3;
  v8 = sub_18B44();
  v9 = sub_18E34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[12];
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v12 = 136316162;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_18C74();
    v18 = v17;

    v19 = sub_10320(v16, v18, &v101);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10320(0xD000000000000039, 0x800000000001B810, &v101);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v11;
    *v13 = v11;
    *(v12 + 32) = 2080;
    v20 = [v11 URL];
    if (v20)
    {
      v21 = v0[40];
      v22 = v20;
      sub_18534();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v95 = v0[47];
    v29 = v0[41];
    v28 = v0[42];
    v30 = v0[36];
    v31 = v0[11];
    (*(v0[23] + 56))(v0[40], v23, 1, v0[22]);
    v32 = sub_18CB4();
    v34 = sub_10320(v32, v33, &v101);

    *(v12 + 34) = v34;
    *(v12 + 42) = 2112;
    *(v12 + 44) = v31;
    v13[1] = v31;
    v35 = v31;
    _os_log_impl(&dword_0, v8, v9, "%s, %s: message: %@ url: %s conversation: %@", v12, 0x34u);
    sub_11BB4(&qword_24788, &qword_19728);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v27 = *(v28 + 8);
    v27(v95, v29);
  }

  else
  {
    v24 = v0[47];
    v25 = v0[41];
    v26 = v0[42];

    v27 = *(v26 + 8);
    v27(v24, v25);
  }

  v0[51] = 0x800000000001B810;
  v0[52] = v27;
  v36 = v0[12];
  v37 = objc_opt_self();
  v0[53] = v37;
  v38 = &MessagesViewController__metaData;
  v39 = [v37 sharedApplication];
  v40 = sub_18C64();
  v41 = [v39 beginBackgroundTaskWithName:v40 expirationHandler:0];
  v0[54] = v41;

  v0[55] = *(v36 + OBJC_IVAR___MessagesViewController_sessionViewModel);
  if (sub_188A4())
  {
    v42 = v0[48];
    v43 = v0[46];
    v44 = v0[12];

    sub_18B24();
    v45 = v44;
    v46 = sub_18B44();
    v47 = sub_18E34();

    v98 = v47;
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[46];
    v50 = v0[41];
    v51 = v0[42];
    if (v48)
    {
      v96 = v0[46];
      v52 = v0[12];
      v53 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v53 = 136315394;
      v54 = v52;
      v93 = v50;
      v55 = [v54 description];
      v56 = sub_18C74();
      v58 = v57;

      v59 = sub_10320(v56, v58, &v101);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_10320(0xD000000000000039, 0x800000000001B810, &v101);
      _os_log_impl(&dword_0, v46, v98, "%s, %s: Unable to send - session is still initializing", v53, 0x16u);
      swift_arrayDestroy();

      v38 = &MessagesViewController__metaData;

      v61 = v93;
      v60 = v96;
    }

    else
    {

      v60 = v49;
      v61 = v50;
    }

    v27(v60, v61);
    v72 = [v37 v38[11].base_prots];
    [v72 endBackgroundTask:v41];

    v74 = v0[46];
    v73 = v0[47];
    v76 = v0[44];
    v75 = v0[45];
    v77 = v0[43];
    v79 = v0[39];
    v78 = v0[40];
    v81 = v0[37];
    v80 = v0[38];
    v82 = v0[35];
    v85 = v0[34];
    v86 = v0[33];
    v87 = v0[32];
    v88 = v0[29];
    v89 = v0[28];
    v90 = v0[27];
    v91 = v0[25];
    v92 = v0[24];
    v94 = v0[21];
    v97 = v0[18];
    v99 = v0[16];
    v100 = v0[15];

    v83 = v0[1];

    return v83(0, 0, 0);
  }

  else
  {
    v62 = v0[35];
    v63 = v0[30];
    v64 = v0[31];
    v65 = v0[29];
    v66 = v0[12];
    sub_185F4();
    v67 = *(v64 + 16);
    v0[56] = v67;
    v0[57] = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v67(v65, v62, v63);
    v68 = *(v64 + 56);
    v0[58] = v68;
    v0[59] = (v64 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v68(v65, 0, 1, v63);
    v69 = OBJC_IVAR___MessagesViewController_transactionID;
    v0[60] = OBJC_IVAR___MessagesViewController_transactionID;
    swift_beginAccess();
    sub_16148(v65, v66 + v69, &qword_24768, &qword_196F0);
    swift_endAccess();
    v70 = async function pointer to SessionViewModel.startSession(needsSendMessage:)[1];
    v71 = swift_task_alloc();
    v0[61] = v71;
    *v71 = v0;
    v71[1] = sub_128BC;

    return SessionViewModel.startSession(needsSendMessage:)(0);
  }
}

uint64_t sub_128BC()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_13ADC;
  }

  else
  {
    v7 = sub_129F8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_129F8()
{
  v237 = v0;
  v1 = v0[55];
  v2 = v0[48];

  v3.super.isa = SessionViewModel.startSessionMSMessage()().super.isa;
  v4 = [(objc_class *)v3.super.isa URL];
  if (v4)
  {
    v5 = v0[25];
    v6 = v4;
    sub_18534();

    v7 = [(objc_class *)v3.super.isa layout];
    if (v7)
    {
      v8 = v7;
      v9 = [(objc_class *)v3.super.isa summaryText];
      if (v9)
      {
        v10 = v9;
        isa = v3.super.isa;
        v223 = v0[59];
        logb = v0[60];
        v210 = v0[57];
        v215 = v0[58];
        v201 = v0[35];
        v204 = v0[56];
        v12 = v0[30];
        v11 = v0[31];
        v13 = v0[28];
        v14 = v0[25];
        v15 = v0[23];
        v195 = v0[22];
        v198 = v0[18];
        v207 = v0[17];
        v219 = v0[12];
        v16 = v0[10];
        sub_18524(v219);
        v18 = v17;
        [v16 setURL:v17];

        [v16 setLayout:v8];
        [v16 setSummaryText:v10];

        (*(v15 + 8))(v14, v195);
        v204(v13, v201, v12);
        v215(v13, 0, 1, v12);
        v19 = *(v207 + 48);
        sub_161B0(v13, v198, &qword_24768, &qword_196F0);
        sub_161B0(logb + v219, v198 + v19, &qword_24768, &qword_196F0);
        v20 = *(v11 + 48);
        v21 = v20(v198, 1, v12);
        v22 = v0[30];
        if (v21 == 1)
        {
          sub_16218(v0[28], &qword_24768, &qword_196F0);
          if (v20(v198 + v19, 1, v22) == 1)
          {
            sub_16218(v0[18], &qword_24768, &qword_196F0);
LABEL_33:
            v143 = v0[56];
            v142 = v0[57];
            v144 = v0[43];
            v145 = v0[35];
            v146 = v0[32];
            v147 = v0[30];
            v148 = v0[12];
            v149 = v0[10];
            sub_18B24();
            v143(v146, v145, v147);
            v150 = v149;
            v151 = v148;
            v152 = sub_18B44();
            v153 = sub_18E34();

            if (os_log_type_enabled(v152, v153))
            {
              v222 = v153;
              v213 = v0[51];
              v155 = v0[31];
              v154 = v0[32];
              v227 = v0[30];
              v156 = v0[12];
              v157 = v0[10];
              v158 = swift_slowAlloc();
              loga = swift_slowAlloc();
              v236 = swift_slowAlloc();
              *v158 = 136316162;
              v159 = v156;
              v160 = [v159 description];
              v161 = sub_18C74();
              v163 = v162;

              v164 = sub_10320(v161, v163, &v236);

              *(v158 + 4) = v164;
              *(v158 + 12) = 2080;
              *(v158 + 14) = sub_10320(0xD000000000000039, v213, &v236);
              *(v158 + 22) = 2080;
              sub_13E74(&qword_248F0, &type metadata accessor for UUID);
              v165 = sub_18FA4();
              v167 = v166;
              v214 = *(v155 + 8);
              v214(v154, v227);
              v168 = sub_10320(v165, v167, &v236);

              *(v158 + 24) = v168;
              *(v158 + 32) = 2112;
              *(v158 + 34) = v157;
              loga->isa = v157;
              *(v158 + 42) = 2080;
              v169 = [(objc_class *)v157 URL];
              if (v169)
              {
                v170 = v0[37];
                v171 = v169;
                sub_18534();

                v172 = 0;
              }

              else
              {
                v172 = 1;
              }

              v209 = v0[52];
              v183 = v0[42];
              v182 = v0[43];
              v184 = v0[41];
              v185 = v0[36];
              v186 = v0[35];
              v187 = v0[30];
              (*(v0[23] + 56))(v0[37], v172, 1, v0[22]);
              v188 = sub_18CB4();
              v190 = sub_10320(v188, v189, &v236);

              *(v158 + 44) = v190;
              _os_log_impl(&dword_0, v152, v222, "%s, %s: transactionID: %s, message, %@, message url, %s", v158, 0x34u);
              sub_16218(loga, &qword_24788, &qword_19728);

              swift_arrayDestroy();

              v209(v182, v184);
              v214(v186, v187);
            }

            else
            {
              v173 = v0[52];
              v175 = v0[42];
              v174 = v0[43];
              v176 = v0[41];
              v177 = v0[35];
              v179 = v0[31];
              v178 = v0[32];
              v180 = v0[30];

              v181 = *(v179 + 8);
              v181(v178, v180);
              v173(v174, v176);
              v181(v177, v180);
            }

            v72 = v0[53];
            v71 = v0[54];
            v235 = 1;
            goto LABEL_22;
          }
        }

        else
        {
          sub_161B0(v0[18], v0[27], &qword_24768, &qword_196F0);
          if (v20(v198 + v19, 1, v22) != 1)
          {
            v134 = v0[34];
            v135 = v0[30];
            v136 = v0[31];
            v138 = v0[27];
            v137 = v0[28];
            v139 = v0[18];
            (*(v136 + 32))(v134, v198 + v19, v135);
            sub_13E74(&qword_248F8, &type metadata accessor for UUID);
            v140 = sub_18BE4();
            v141 = *(v136 + 8);
            v141(v134, v135);
            sub_16218(v137, &qword_24768, &qword_196F0);
            v141(v138, v135);
            sub_16218(v139, &qword_24768, &qword_196F0);
            if (v140)
            {
              goto LABEL_33;
            }

LABEL_28:
            v97 = v0[56];
            v96 = v0[57];
            v98 = v0[44];
            v99 = v0[35];
            v100 = v0[33];
            v101 = v0[30];
            v102 = v0[12];
            sub_18B24();
            v97(v100, v99, v101);
            v103 = v102;
            v104 = sub_18B44();
            v105 = sub_18E14();

            if (os_log_type_enabled(v104, v105))
            {
              v221 = v0[44];
              v212 = v0[42];
              v218 = v0[41];
              v226 = v0[35];
              logd = v0[52];
              v106 = v0[33];
              v107 = v0[30];
              v197 = v0[31];
              v200 = v0[29];
              v203 = v0[26];
              v206 = v0[60];
              v108 = v0[12];
              v192 = v0[51];
              v194 = v108;
              v109 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              *v109 = 136315906;
              v110 = v108;
              v111 = [v110 description];
              v112 = sub_18C74();
              v114 = v113;

              v115 = sub_10320(v112, v114, &v236);

              *(v109 + 4) = v115;
              *(v109 + 12) = 2080;
              *(v109 + 14) = sub_10320(0xD000000000000039, v192, &v236);
              *(v109 + 22) = 2080;
              sub_13E74(&qword_248F0, &type metadata accessor for UUID);
              LOBYTE(v192) = v105;
              v116 = sub_18FA4();
              v118 = v117;
              v119 = *(v197 + 8);
              v119(v106, v107);
              v120 = v119;
              v121 = sub_10320(v116, v118, &v236);

              *(v109 + 24) = v121;
              *(v109 + 32) = 2080;
              sub_161B0(v194 + v206, v200, &qword_24768, &qword_196F0);
              v122 = sub_18CB4();
              v124 = sub_10320(v122, v123, &v236);

              *(v109 + 34) = v124;
              _os_log_impl(&dword_0, v104, v192, "%s, %s: failed to match transactionID %s against %s", v109, 0x2Au);
              swift_arrayDestroy();

              (logd)(v221, v218);
              v120(v226, v107);
            }

            else
            {
              v125 = v0[52];
              v126 = v0[44];
              v127 = v0[41];
              v128 = v0[42];
              v129 = v0[35];
              v130 = v0[33];
              v131 = v0[30];
              v132 = v0[31];

              v133 = *(v132 + 8);
              v133(v130, v131);
              v125(v126, v127);
              v133(v129, v131);
            }

            v235 = 0;
            v72 = v0[53];
            v71 = v0[54];
            goto LABEL_22;
          }

          v93 = v0[30];
          v94 = v0[31];
          v95 = v0[27];
          sub_16218(v0[28], &qword_24768, &qword_196F0);
          (*(v94 + 8))(v95, v93);
        }

        sub_16218(v0[18], &qword_248E0, &qword_198A0);
        goto LABEL_28;
      }

      (*(v0[23] + 8))(v0[25], v0[22]);
    }

    else
    {
      (*(v0[23] + 8))(v0[25], v0[22]);
    }
  }

  v23 = v0[45];
  sub_18B24();
  v24 = v3.super.isa;
  v25 = sub_18B44();
  v26 = sub_18E14();

  v234 = v24;
  if (os_log_type_enabled(v25, v26))
  {
    v224 = v26;
    log = v25;
    v27 = v0[51];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *v28 = 136316162;
    *(v28 + 4) = sub_10320(0xD000000000000039, v27, &v236);
    *(v28 + 12) = 2080;
    v30 = [(objc_class *)v24 description];
    v31 = sub_18C74();
    v33 = v32;

    v34 = sub_10320(v31, v33, &v236);

    *(v28 + 14) = v34;
    *(v28 + 22) = 2112;
    v35 = [(objc_class *)v24 layout];
    *(v28 + 24) = v35;
    v216 = v29;
    *v29 = v35;
    *(v28 + 32) = 2080;
    v36 = [(objc_class *)v24 URL];
    if (v36)
    {
      v37 = v0[38];
      v38 = v36;
      sub_18534();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v45 = v0[38];
    v44 = v0[39];
    v47 = v0[22];
    v46 = v0[23];
    (*(v46 + 56))(v45, v39, 1, v47);
    sub_16084(v45, v44);
    v48 = (*(v46 + 48))(v44, 1, v47);
    v49 = v0[39];
    if (v48)
    {
      sub_16218(v0[39], &qword_247B8, &qword_19748);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v52 = v0[23];
      v53 = v0[24];
      v54 = v0[22];
      (*(v52 + 16))(v53, v0[39], v54);
      sub_16218(v49, &qword_247B8, &qword_19748);
      v50 = sub_18514();
      v51 = v55;
      (*(v52 + 8))(v53, v54);
    }

    v0[5] = v50;
    v0[6] = v51;
    sub_11BB4(&qword_248E8, &qword_198A8);
    v56 = sub_18CB4();
    v58 = sub_10320(v56, v57, &v236);

    *(v28 + 34) = v58;
    *(v28 + 42) = 2080;
    v59 = [(objc_class *)v24 summaryText];
    if (v59)
    {
      v60 = v59;
      v61 = sub_18C74();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = v0[52];
    v65 = v0[45];
    v67 = v0[41];
    v66 = v0[42];
    v0[7] = v61;
    v0[8] = v63;
    v68 = sub_18CB4();
    v70 = sub_10320(v68, v69, &v236);

    *(v28 + 44) = v70;
    _os_log_impl(&dword_0, log, v224, "%s, message: %s, message layout: %@, message url: %s, summary text: %s", v28, 0x34u);
    sub_16218(v216, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v64(v65, v67);
  }

  else
  {
    v40 = v0[52];
    v41 = v0[45];
    v42 = v0[41];
    v43 = v0[42];

    v40(v41, v42);
  }

  v72 = v0[53];
  v71 = v0[54];
  v73 = v0[35];
  v74 = v0[30];
  v75 = v0[31];
  v76 = v0[20];
  v77 = v0[21];
  v78 = v0[19];
  v79 = v0[12];
  (*(v76 + 104))(v77, enum case for SendValidity.notReady(_:), v78);
  sub_25DC(v77);

  (*(v76 + 8))(v77, v78);
  (*(v75 + 8))(v73, v74);
  v235 = 0;
LABEL_22:
  v80 = [v72 sharedApplication];
  [v80 endBackgroundTask:v71];

  v82 = v0[46];
  v81 = v0[47];
  v84 = v0[44];
  v83 = v0[45];
  v85 = v0[43];
  v87 = v0[39];
  v86 = v0[40];
  v88 = v0[37];
  v89 = v0[38];
  v90 = v0[35];
  v191 = v0[34];
  v193 = v0[33];
  v196 = v0[32];
  v199 = v0[29];
  v202 = v0[28];
  v205 = v0[27];
  v208 = v0[25];
  v211 = v0[24];
  v217 = v0[21];
  v220 = v0[18];
  v225 = v0[16];
  logc = v0[15];

  v91 = v0[1];

  return v91(v235, 0, 0);
}

uint64_t sub_13ADC()
{
  v1 = v0[62];
  v2 = v0[48];
  v3 = v0[16];
  v4 = v0[13];

  v0[9] = v1;
  swift_errorRetain();
  sub_11BB4(&qword_24868, &qword_197F0);
  v5 = swift_dynamicCast();
  v6 = v0[62];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[35];
  v10 = v0[31];
  v50 = v0[30];
  v11 = v0[20];
  v12 = v0[21];
  v13 = v0[19];
  if (v5)
  {
    v44 = v0[35];
    v46 = v0[53];
    v15 = v0[15];
    v14 = v0[16];
    v48 = v0[54];
    v16 = v0[13];
    v17 = v0[14];
    v42 = v0[12];

    (*(v17 + 32))(v15, v14, v16);
    sub_18924();
    sub_25DC(v12);
    (*(v11 + 8))(v12, v13);
    v18 = v16;
    v7 = v48;
    (*(v17 + 8))(v15, v18);
    v8 = v46;
    (*(v10 + 8))(v44, v50);
    v19 = v0[9];
  }

  else
  {
    v20 = v0[12];
    v21 = v0[9];

    (*(v11 + 104))(v12, enum case for SendValidity.notReady(_:), v13);
    sub_25DC(v12);

    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v9, v50);
  }

  v22 = [v8 sharedApplication];
  [v22 endBackgroundTask:v7];

  v24 = v0[46];
  v23 = v0[47];
  v26 = v0[44];
  v25 = v0[45];
  v27 = v0[43];
  v29 = v0[39];
  v28 = v0[40];
  v31 = v0[37];
  v30 = v0[38];
  v32 = v0[35];
  v35 = v0[34];
  v36 = v0[33];
  v37 = v0[32];
  v38 = v0[29];
  v39 = v0[28];
  v40 = v0[27];
  v41 = v0[25];
  v43 = v0[24];
  v45 = v0[21];
  v47 = v0[18];
  v49 = v0[16];
  v51 = v0[15];

  v33 = v0[1];

  return v33(0, 0, 0);
}

void sub_13E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_6158();
  }
}

uint64_t sub_13E74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13EBC()
{
  v1 = sub_18B54();
  v0[22] = v1;
  v2 = *(v1 - 8);
  v0[23] = v2;
  v3 = *(v2 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v4 = *(*(sub_18624() - 8) + 64) + 15;
  v0[26] = swift_task_alloc();
  v5 = *(*(sub_18C54() - 8) + 64) + 15;
  v0[27] = swift_task_alloc();
  v6 = sub_184B4();
  v0[28] = v6;
  v7 = *(v6 - 8);
  v0[29] = v7;
  v8 = *(v7 + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v9 = *(*(sub_11BB4(&qword_24850, &qword_197E0) - 8) + 64) + 15;
  v0[32] = swift_task_alloc();
  v10 = sub_18504();
  v0[33] = v10;
  v11 = *(v10 - 8);
  v0[34] = v11;
  v12 = *(v11 + 64) + 15;
  v0[35] = swift_task_alloc();
  v13 = *(*(sub_11BB4(&qword_247B8, &qword_19748) - 8) + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v14 = sub_18554();
  v0[38] = v14;
  v15 = *(v14 - 8);
  v0[39] = v15;
  v16 = *(v15 + 64) + 15;
  v0[40] = swift_task_alloc();
  sub_18DB4();
  v0[41] = sub_18DA4();
  v18 = sub_18D94();
  v0[42] = v18;
  v0[43] = v17;

  return _swift_task_switch(sub_141AC, v18, v17);
}

uint64_t sub_141AC()
{
  v1 = v0[36];
  v2 = [objc_opt_self() defaultManager];
  v0[44] = v2;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_142EC;
  v3 = swift_continuation_init();
  v0[17] = sub_11BB4(&qword_248C0, &qword_19888);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4530;
  v0[13] = &unk_20FE0;
  v0[14] = v3;
  [v2 fetchQuickReplySuggestionURLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_142EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);
  if (v3)
  {
    v6 = sub_14D40;
  }

  else
  {
    v6 = sub_1441C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1441C()
{
  v92 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);

  sub_16084(v6, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 296);
    v8 = &qword_247B8;
    v9 = &qword_19748;
LABEL_5:
    sub_16218(v7, v8, v9);
    v14 = *(v0 + 192);
    sub_18B24();
    v15 = sub_18B44();
    v16 = sub_18E14();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 176);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v91[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, v91);
      sub_15760(v22);
    }

    (*(v19 + 8))(v18, v20);
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v89 = 0;
    goto LABEL_27;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
  sub_184E4();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = *(v0 + 256);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v8 = &qword_24850;
    v9 = &qword_197E0;
    v7 = v13;
    goto LABEL_5;
  }

  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v23 = &MessagesViewController__metaData;
  v24 = [objc_allocWithZone(MSSession) init];
  v25 = [objc_allocWithZone(MSMessage) initWithSession:v24];

  result = sub_184C4();
  v27 = result;
  if (result)
  {
    v90 = v25;
    v28 = *(result + 16);
    if (v28)
    {
      v29 = 0;
      v30 = *(v0 + 232);
      v31 = (v30 + 8);
      while (1)
      {
        if (v29 >= *(v27 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v30 + 16))(*(v0 + 240), v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, *(v0 + 224));
        if (sub_18494() == 0xD00000000000001DLL && 0x800000000001B720 == v32)
        {
          break;
        }

        v34 = sub_18FC4();

        if (v34)
        {
          goto LABEL_21;
        }

        ++v29;
        result = (*v31)(*(v0 + 240), *(v0 + 224));
        if (v28 == v29)
        {
          goto LABEL_18;
        }
      }

LABEL_21:

      v36 = *(v0 + 248);
      v37 = *(v0 + 224);
      (*(*(v0 + 232) + 32))(v36, *(v0 + 240), v37);
      v27 = sub_184A4();
      v39 = v38;
      (*v31)(v36, v37);
      v23 = &MessagesViewController__metaData;
      if (v39)
      {
        v40 = *(v0 + 208);
        v41 = *(v0 + 216);

        sub_18BF4();
        sub_16278(0, &qword_24888, SMSafetyMonitorManager_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        sub_18614();
        LOWORD(v78) = 2;
        sub_18C94();
        sub_11BB4(&qword_248D0, &qword_19898);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_196D0;
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = sub_160F4();
        *(v44 + 32) = v27;
        *(v44 + 40) = v39;
        sub_18C84();

        v45 = sub_18C64();
        v35 = v39;

        v25 = v90;
        [v90 setSummaryText:{v45, "Start message destination bounded session with customised summary text, 1st argument is destination address i.e 13425 Poway Rd, Poway", 133, v78}];
      }

      else
      {
        v35 = 0;
        v25 = v90;
      }
    }

    else
    {
LABEL_18:

      v27 = 0;
      v35 = 0;
      v23 = &MessagesViewController__metaData;
    }
  }

  else
  {
    v35 = 0;
  }

  v46 = *(v0 + 320);
  v47 = *(v0 + 200);
  v48 = [objc_allocWithZone(MSMessageTemplateLayout) *&v23[7].flags];
  v49 = [v25 summaryText];
  [v48 setCaption:v49];

  v50 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v48];
  [v25 setLayout:v50];

  sub_18524(v51);
  v53 = v52;
  [v25 setURL:v52];

  [v25 setRequiresValidation:1];
  v89 = [objc_opt_self() hasUserCompletedOnboarding] ^ 1;
  sub_18B24();

  v54 = v25;
  v55 = sub_18B44();
  v56 = sub_18E34();
  v88 = v54;

  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 312);
  v59 = *(v0 + 320);
  v60 = *(v0 + 272);
  v83 = *(v0 + 280);
  v84 = *(v0 + 304);
  v81 = *(v0 + 200);
  v82 = *(v0 + 264);
  v61 = *(v0 + 184);
  v80 = *(v0 + 176);
  v86 = v27;
  v87 = v35;
  if (v57)
  {
    v79 = *(v0 + 320);
    v62 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v62 = 136315394;
    *(v62 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, v91);
    *(v62 + 12) = 2080;
    *(v0 + 144) = v88;
    *(v0 + 152) = v27;
    *(v0 + 160) = v35;
    *(v0 + 168) = v89;
    v63 = v88;

    sub_11BB4(&qword_248C8, &qword_19890);
    v64 = sub_18CB4();
    v66 = sub_10320(v64, v65, v91);

    *(v62 + 14) = v66;
    _os_log_impl(&dword_0, v55, v56, "%s: %s", v62, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v81, v80);
    (*(v60 + 8))(v83, v82);
    (*(v58 + 8))(v79, v84);
  }

  else
  {

    (*(v61 + 8))(v81, v80);
    (*(v60 + 8))(v83, v82);
    (*(v58 + 8))(v59, v84);
  }

LABEL_27:
  v67 = *(v0 + 320);
  v68 = *(v0 + 288);
  v69 = *(v0 + 296);
  v70 = *(v0 + 280);
  v72 = *(v0 + 248);
  v71 = *(v0 + 256);
  v73 = *(v0 + 240);
  v75 = *(v0 + 208);
  v74 = *(v0 + 216);
  v76 = *(v0 + 200);
  v85 = *(v0 + 192);

  v77 = *(v0 + 8);

  return v77(v88, v86, v87, v89);
}

uint64_t sub_14D40()
{
  v30 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];

  swift_willThrow();

  (*(v5 + 56))(v6, 1, 1, v4);
  sub_16218(v0[37], &qword_247B8, &qword_19748);
  v7 = v0[24];
  sub_18B24();
  v8 = sub_18B44();
  v9 = sub_18E14();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, &v29);
    sub_15760(v15);
  }

  (*(v12 + 8))(v11, v13);
  v16 = v0[40];
  v17 = v0[36];
  v18 = v0[37];
  v19 = v0[35];
  v21 = v0[31];
  v20 = v0[32];
  v22 = v0[30];
  v24 = v0[26];
  v23 = v0[27];
  v25 = v0[25];
  v28 = v0[24];

  v26 = v0[1];

  return v26(0, 0, 0, 0);
}

void sub_14F94()
{
  v1 = sub_18B54();
  v44 = *(v1 - 8);
  v2 = v44[8];
  __chkstk_darwin(v1);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_11BB4(&qword_24798, &qword_19738);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_18604();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_18B04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v0 activeConversation];
  if (v21)
  {
    v43 = v0;
    v44 = v21;
    v22 = [v21 selectedMessage];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 senderParticipantIdentifier];
      sub_185E4();

      v25 = [v44 localParticipantIdentifier];
      sub_185E4();

      LOBYTE(v25) = sub_185D4();
      v26 = *(v9 + 8);
      v26(v13, v8);
      v26(v15, v8);
      v27 = &enum case for UserType.initiator(_:);
      if ((v25 & 1) == 0)
      {
        v27 = &enum case for UserType.receiver(_:);
      }

      (*(v17 + 104))(v20, *v27, v16);
      (*(v17 + 32))(v7, v20, v16);
      (*(v17 + 56))(v7, 0, 1, v16);
      v28 = OBJC_IVAR___MessagesViewController_userType;
      v29 = v43;
      swift_beginAccess();
      sub_16148(v7, &v29[v28], &qword_24798, &qword_19738);
      swift_endAccess();
    }

    else
    {
      v41 = v44;
    }
  }

  else
  {
    v42 = v1;
    v30 = v43;
    sub_18B24();
    v31 = v0;
    v32 = sub_18B44();
    v33 = sub_18E24();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v34 = 136315650;
      v35 = v31;
      v36 = [v35 description];
      v37 = sub_18C74();
      v39 = v38;

      v40 = sub_10320(v37, v39, v45);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_10320(0xD000000000000012, 0x800000000001B660, v45);
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_10320(0xD000000000000012, 0x800000000001B660, v45);
      _os_log_impl(&dword_0, v32, v33, "%s, %s: No active conversation in %s.", v34, 0x20u);
      swift_arrayDestroy();
    }

    (v44[1])(v30, v42);
  }
}

void sub_15504()
{
  sub_15690(319, &qword_247E8, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_15690(319, &qword_247F0, &type metadata accessor for URL);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_15690(319, &qword_247F8, &type metadata accessor for UserType);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_15690(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_156E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_156FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_15760(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_157AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1582C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_158A4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_158E8()
{
  result = qword_24878;
  if (!qword_24878)
  {
    sub_16278(255, &qword_24870, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24878);
  }

  return result;
}

uint64_t sub_15950()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_15988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_3338();
}

_OWORD *sub_15990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_159A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_159AC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15A04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_164AC;

  return sub_39E4(v2, v3, v4, v5, v6);
}

uint64_t sub_15AD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_164AC;

  return sub_FB6C(v2, v3, v5);
}

uint64_t sub_15B90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_15BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_164AC;

  return sub_FC54(a1, v4, v5, v7);
}

uint64_t sub_15C9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_15CD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_164AC;

  return sub_10038(a1, v5);
}

uint64_t sub_15D8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15DCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15E0C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B0C;

  return sub_3D64(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_15EA4()
{
  v1 = sub_18554();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_15F68()
{
  v1 = *(sub_18554() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_C804(v2, v3);
}

uint64_t sub_15FCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_164AC;

  return sub_10130(a1, v5);
}

uint64_t sub_16084(uint64_t a1, uint64_t a2)
{
  v4 = sub_11BB4(&qword_247B8, &qword_19748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_160F4()
{
  result = qword_248D8;
  if (!qword_248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248D8);
  }

  return result;
}

uint64_t sub_16148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_11BB4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_161B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_11BB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_16218(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_11BB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_16278(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_162C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_16300()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [v2 parentViewController];
  if (v3)
  {
    v4 = v3;
    [v3 presentViewController:v1 animated:1 completion:0];
  }

  else
  {

    [v2 presentViewController:v1 animated:1 completion:0];
  }
}

uint64_t sub_163B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_163C8()
{
  result = qword_24918;
  if (!qword_24918)
  {
    sub_1642C(&qword_24910, &unk_198B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24918);
  }

  return result;
}

uint64_t sub_1642C(uint64_t *a1, uint64_t *a2)
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

id SMMessage.init(message:)(void *a1)
{
  v2 = sub_11BB4(&qword_247B8, &qword_19748);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_18554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_8:
    sub_16738(v8);
    return 0;
  }

  v14 = [a1 URL];
  if (v14)
  {
    v15 = v14;
    sub_18534();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_16084(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    goto LABEL_8;
  }

  (*(v10 + 32))(v13, v8, v9);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18524(v18);
  v20 = v19;
  v21 = [v17 initWithURL:v19];

  v22 = v21;
  (*(v10 + 8))(v13, v9);
  if (v22)
  {

    return v22;
  }

  return 0;
}

uint64_t sub_16738(uint64_t a1)
{
  v2 = sub_11BB4(&qword_247B8, &qword_19748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

MSMessage __swiftcall SessionViewModel.startSessionMSMessage()()
{
  v0 = (*(*(sub_11BB4(&qword_247B8, &qword_19748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = v74 - v1;
  v3 = *(*(sub_18624() - 8) + 64);
  (__chkstk_darwin)();
  v74[3] = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_18C54() - 8) + 64);
  (__chkstk_darwin)();
  v74[2] = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_18C34() - 8) + 64);
  (__chkstk_darwin)();
  v74[1] = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18604();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (__chkstk_darwin)();
  v13 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(sub_11BB4(&qword_24768, &qword_196F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v16 = v74 - v15;
  v17 = *(*(sub_11BB4(&qword_24850, &qword_197E0) - 8) + 64);
  v18 = (__chkstk_darwin)();
  v77 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v74 - v20;
  v22 = sub_18804();
  v23 = v22;
  v75 = v2;
  if (v22)
  {
    v24 = [v22 outputToURLComponents];
    sub_184D4();

    v25 = sub_18504();
    (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
  }

  else
  {
    v26 = sub_18504();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  }

  v79 = v21;
  v78 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  if (v23)
  {
    v27 = [v23 sessionID];
    sub_185E4();

    (*(v10 + 56))(v16, 0, 1, v9);
    sub_16218(v16, &qword_24768, &qword_196F0);
    v28 = [v23 sessionID];
    sub_185E4();

    v29 = objc_allocWithZone(MSSession);
    isa = sub_185C4().super.isa;
    (*(v10 + 8))(v13, v9);
    v31 = [v29 initWithIdentifier:isa];

    if (v31)
    {
      v32 = v31;
      v76 = v32;
      goto LABEL_9;
    }
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
    sub_16218(v16, &qword_24768, &qword_196F0);
  }

  v32 = [objc_allocWithZone(MSSession) init];
  v76 = 0;
LABEL_9:
  v33 = v75;
  v34 = v77;
  v35 = [objc_allocWithZone(MSMessage) initWithSession:v32];

  if (v23)
  {
    v36 = [v23 summaryText];
    sub_18C74();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  sub_18824();
  v39 = sub_18994();

  if (v39 == 2 && (v40 = sub_188C4(), (v41 & 1) == 0) && v40 == 4)
  {
    v42 = sub_18864();
    if (v42)
    {
      v43 = v42;
      v44 = [v42 _shortAddress];

      if (v44)
      {

        v45 = sub_18C74();
        v47 = v46;

        sub_18C24();
        v80._countAndFlagsBits = 0x49A0C26B63656843;
        v80._object = 0xAB00000000203A6ELL;
        sub_18C14(v80);
        v81._countAndFlagsBits = v45;
        v81._object = v47;
        sub_18C04(v81);

        v82._countAndFlagsBits = 0;
        v82._object = 0xE000000000000000;
        sub_18C14(v82);
        sub_18C44();
        sub_183A8();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v49 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        sub_18614();
LABEL_22:
        sub_18C94();
        v38 = v59;
      }
    }
  }

  else
  {
    sub_18824();
    v50 = sub_18994();

    if (v50 == 3)
    {
      v51 = sub_18864();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 _shortAddress];

        if (v53)
        {

          v54 = sub_18C74();
          v56 = v55;

          sub_18C24();
          v83._object = 0x800000000001B910;
          v83._countAndFlagsBits = 0x1000000000000019;
          sub_18C14(v83);
          v84._countAndFlagsBits = v54;
          v84._object = v56;
          sub_18C04(v84);

          v85._countAndFlagsBits = 0;
          v85._object = 0xE000000000000000;
          sub_18C14(v85);
          sub_18C44();
          sub_183A8();
          v57 = swift_getObjCClassFromMetadata();
          v58 = [objc_opt_self() bundleForClass:v57];
          sub_18614();
          goto LABEL_22;
        }
      }
    }
  }

  v60 = v79;
  sub_18338(v79, v34);
  v61 = sub_18504();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v34, 1, v61) == 1)
  {
    sub_16218(v34, &qword_24850, &qword_197E0);
    v63 = sub_18554();
    (*(*(v63 - 8) + 56))(v33, 1, 1, v63);
    v64 = 0;
  }

  else
  {
    sub_184F4();
    (*(v62 + 8))(v34, v61);
    v65 = sub_18554();
    v66 = *(v65 - 8);
    v64 = 0;
    if ((*(v66 + 48))(v33, 1, v65) != 1)
    {
      sub_18524(v67);
      v64 = v68;
      (*(v66 + 8))(v33, v65);
    }
  }

  [v35 setURL:v64];

  if (v38)
  {

    v69 = sub_18C64();

    [v35 setSummaryText:v69];

    v70 = sub_18C64();
  }

  else
  {
    [v35 setSummaryText:0];
    v70 = 0;
  }

  v71 = v78;
  [v78 setCaption:v70];

  v72 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v71];
  [v35 setLayout:v72];

  [v35 setRequiresValidation:1];
  sub_16218(v60, &qword_24850, &qword_197E0);
  return v35;
}

uint64_t UserSessionConfiguration.update(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_18AE4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_18B54();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_185B4();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v12 = *(*(sub_11BB4(&qword_24768, &qword_196F0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_173D4, 0, 0);
}

uint64_t sub_173D4()
{
  if ([*(v0 + 24) sessionType])
  {
    [*(v0 + 24) sessionType];
  }

  else
  {
    v1 = *(v0 + 32);
    sub_18994();
  }

  v2 = *(v0 + 32);
  sub_189A4();
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1749C;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_17E64(v5, v4);
}

uint64_t sub_1749C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1759C, 0, 0);
}

uint64_t sub_1759C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18984();
  [v4 destinationType];
  sub_189D4();
  v5 = [v4 sessionID];
  sub_185E4();

  v6 = sub_18604();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_18A04();
  v7 = sub_18974();
  *(v0 + 160) = v7;
  if (v7)
  {
    v8 = v7;
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = [*(v0 + 24) estimatedEndTime];
    sub_185A4();

    sub_18584();
    LOBYTE(v13) = sub_18594();
    v14 = *(v12 + 8);
    v14(v10, v11);
    v14(v9, v11);
    if (v13)
    {
      v15 = *(v0 + 96);
      sub_18B24();
      v16 = sub_18B44();
      v17 = sub_18E14();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "UserSessionConfiguration, needs ETA: YES", v18, 2u);
      }

      v19 = *(v0 + 96);
      v20 = *(v0 + 64);
      v21 = *(v0 + 72);
      v23 = *(v0 + 48);
      v22 = *(v0 + 56);
      v24 = *(v0 + 32);
      v25 = *(v0 + 40);

      v26 = *(v21 + 8);
      *(v0 + 168) = v26;
      v26(v19, v20);
      (*(v23 + 104))(v22, enum case for ETAType.automobile(_:), v25);
      sub_189E4();
      v27 = async function pointer to MKMapItem.estimatedETA(for:)[1];
      v28 = swift_task_alloc();
      *(v0 + 176) = v28;
      *v28 = v0;
      v28[1] = sub_17964;

      return MKMapItem.estimatedETA(for:)(1);
    }
  }

  v29 = *(v0 + 88);
  sub_18B24();
  v30 = sub_18B44();
  v31 = sub_18E14();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 88);
  v34 = *(v0 + 64);
  v35 = *(v0 + 72);
  if (v32)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v30, v31, "UserSessionConfiguration, needs ETA: NO", v36, 2u);
  }

  (*(v35 + 8))(v33, v34);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(v0 + 120);
  v41 = *(v0 + 88);
  v40 = *(v0 + 96);
  v42 = *(v0 + 80);
  v43 = *(v0 + 56);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_17964(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v8 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = sub_17B6C;
  }

  else
  {
    *(v4 + 192) = a1;
    v6 = sub_17A88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_17A88()
{
  v1 = v0[24];
  v2 = v0[4];
  sub_189C4();
  sub_189B4();
  if (v3)
  {
    sub_18704();
  }

  v4 = v0[20];
  v5 = v0[4];
  sub_189F4();

  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_17B6C()
{
  v34 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  sub_18B24();

  swift_errorRetain();
  v4 = sub_18B44();
  v5 = sub_18E14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v31 = *(v0 + 80);
    v32 = *(v0 + 168);
    v28 = *(v0 + 160);
    v29 = *(v0 + 72);
    v30 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v8 = 136315650;
    *(v0 + 16) = v7;
    sub_18A14();

    v10 = sub_18CB4();
    v12 = sub_10320(v10, v11, &v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10320(0x7728657461647075, 0xED0000293A687469, &v33);
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v13;
    *v9 = v13;
    _os_log_impl(&dword_0, v4, v5, "%s, %s: error: %@", v8, 0x20u);
    sub_16218(v9, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v32(v31, v30);
  }

  else
  {
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);

    v15(v16, v18);
  }

  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 120);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_17E64(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_17E84, 0, 0);
}

uint64_t sub_17E84()
{
  v1 = [*(v0 + 152) destinationMapItem];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18574();
    v5 = v4;

    *(v0 + 168) = v3;
    *(v0 + 176) = v5;
    v6 = objc_opt_self();
    isa = sub_18564().super.isa;
    *(v0 + 184) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_18054;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_11BB4(&qword_24920, &unk_198D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18268;
    *(v0 + 104) = &unk_21058;
    *(v0 + 112) = v8;
    [v6 _mapItemFromHandle:isa completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 160);
    if (sub_18994() == 2)
    {
      v10 = *(v0 + 160);
      v11 = sub_18974();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 8);

    return v12(v11);
  }
}

uint64_t sub_18054()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_181D4;
  }

  else
  {
    v3 = sub_18164;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_18164()
{
  v1 = v0[23];
  sub_1840C(v0[21], v0[22]);
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_181D4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  swift_willThrow();
  sub_1840C(v4, v3);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_18268(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_158A4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_18338(uint64_t a1, uint64_t a2)
{
  v4 = sub_11BB4(&qword_24850, &qword_197E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_183A8()
{
  result = qword_24888;
  if (!qword_24888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_24888);
  }

  return result;
}

uint64_t sub_1840C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}