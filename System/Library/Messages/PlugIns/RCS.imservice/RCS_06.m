id RCSServiceSession.shouldSendReadReceipts(forChat:style:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v59 = &v58 - v17;
  v60 = a1;
  v18 = sub_F07BC();
  v19 = [v4 chatForChatIdentifier:v18 style:a3 updatingAccount:1];

  if (v19)
  {
    v20 = v9;
    v21 = v19;
    v22 = [v21 chatIdentifier];
    v23 = [v4 _callerIDForChatWithChatIdentifier:v22 chatStyle:objc_msgSend(v21 foundChat:{"style"), v21}];

    v58 = v8;
    if (v23)
    {
      v24 = [v21 lastAddressedLocalHandle];
      v25 = [v21 lastAddressedSIMID];
      v26 = [v4 _sendingDecisionForMessageItem:0 callerID:v23 lastAddressedLocalHandle:v24 lastAddressedSIMID:v25];

      v27 = v21;
      if ((v26 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (!SimDetailsFromTelephony)
    {
LABEL_12:
      v39 = sub_F07BC();
      v61.receiver = v4;
      v61.super_class = RCSServiceSession;
      v40 = objc_msgSendSuper2(&v61, "shouldSendReadReceiptsForChat:style:", v39, a3);

      return v40;
    }

    v36 = v20;
    v37 = [v4 subscriptionContextForChat:v21];
    if (!v37)
    {
      v44 = Logger.rcs.unsafeMutableAddressor();
      v45 = v58;
      (*(v20 + 16))(v15, v44, v58);

      v46 = sub_F06AC();
      v47 = sub_F0CCC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v36;
        v50 = swift_slowAlloc();
        v62 = v50;
        *v48 = 136315138;
        *(v48 + 4) = sub_3E850(v60, a2, &v62);
        _os_log_impl(&dword_0, v46, v47, "Not sending read receipt in chat %s as we can't find the subscription context", v48, 0xCu);
        sub_1EDC(v50);

        (*(v49 + 8))(v15, v45);
      }

      else
      {

        (*(v36 + 8))(v15, v45);
      }

      return 0;
    }

    v27 = v37;
    v38 = sub_403DC(v37);
    v8 = v58;
    if (v38)
    {
LABEL_11:

      goto LABEL_12;
    }

    v51 = Logger.rcs.unsafeMutableAddressor();
    v52 = v59;
    (*(v20 + 16))(v59, v51, v8);

    v53 = sub_F06AC();
    v54 = sub_F0CCC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v8;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_3E850(v60, a2, &v62);
      _os_log_impl(&dword_0, v53, v54, "Not sending read receipt in chat %s due to carrier policy", v56, 0xCu);
      sub_1EDC(v57);

      (*(v20 + 8))(v52, v55);
      return 0;
    }

    v42 = *(v20 + 8);
    v43 = v52;
    goto LABEL_14;
  }

  v28 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v28, v8);

  v29 = sub_F06AC();
  v30 = sub_F0CCC();

  if (!os_log_type_enabled(v29, v30))
  {

    v42 = *(v9 + 8);
    v43 = v12;
LABEL_14:
    v42(v43, v8);
    return 0;
  }

  v31 = v8;
  v32 = swift_slowAlloc();
  v33 = v9;
  v34 = swift_slowAlloc();
  v62 = v34;
  *v32 = 136315138;
  *(v32 + 4) = sub_3E850(v60, a2, &v62);
  _os_log_impl(&dword_0, v29, v30, "Not sending read receipt in chat %s as we can't find the chat", v32, 0xCu);
  sub_1EDC(v34);

  (*(v33 + 8))(v12, v31);
  return 0;
}

void RCSServiceSession.sendReadReceipt(forMessage:toChatID:identifier:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_F07BC();
    if (a5)
    {
LABEL_3:
      v9 = sub_F07BC();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  [v5 sendReadReceiptForMessage:a1 toChatID:v8 identifier:? style:? reflectOnly:?];
}

void sub_8D2EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v72[-v10];
  sub_8DF58(a2);
  if ((v12 & 1) == 0)
  {
    return;
  }

  sub_55CFC(a2, a1);
  v14 = v13;
  if (v15)
  {
    v16 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v11, v16, v6);
    v17 = v7;
    v18 = a1;
    v19 = a2;
    v20 = sub_F06AC();
    v21 = sub_F0CEC();
    if (!os_log_type_enabled(v20, v21))
    {

      (*(v17 + 8))(v11, v6);
      return;
    }

    v73 = v17;
    v74 = v14;
    v22 = swift_slowAlloc();
    *&v76 = swift_slowAlloc();
    *v22 = 136315650;
    v23 = [v18 guid];

    if (v23)
    {
      v24 = sub_F07EC();
      v26 = v25;

      v27 = sub_3E850(v24, v26, &v76);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v18 = [v19 chatIdentifier];

      if (v18)
      {
        v28 = sub_F07EC();
        v30 = v29;

        v31 = sub_3E850(v28, v30, &v76);

        *(v22 + 14) = v31;
        *(v22 + 22) = 1026;
        *(v22 + 24) = v74;
        _os_log_impl(&dword_0, v20, v21, "Couldn't resolve context for sending read receipt for %s to chat %s: %{public}u", v22, 0x1Cu);
        swift_arrayDestroy();

        (*(v73 + 8))(v11, v6);
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);

    __break(1u);

    __break(1u);
    __break(1u);
    goto LABEL_32;
  }

  sub_39908(a2);
  v33 = v32;
  v34 = [a2 style];
  if (v34 == 43)
  {
    v35 = [a1 sender];
    if (!v35)
    {
      v55 = [objc_opt_self() sharedInstance];
      if (!v55)
      {
LABEL_34:
        __break(1u);
        return;
      }

      v56 = v55;
      strcpy(&v76, "message GUID ");
      HIWORD(v76) = -4864;
      v57 = [a1 guid];
      if (v57)
      {
        v58 = v57;
        v59 = sub_F07EC();
        v61 = v60;
      }

      else
      {
        v59 = 0x3E6C696E3CLL;
        v61 = 0xE500000000000000;
      }

      v87._countAndFlagsBits = v59;
      v87._object = v61;
      sub_F08CC(v87);

      v69 = v76;
      v70 = sub_F0FBC();
      LOBYTE(v76) = 3;
      *(&v76 + 1) = v70;
      v77 = v71;
      v78 = v69;
      v79 = 0;
      v80 = 0;
      sub_94528(&v76);

LABEL_27:

      sub_3FA88(v14, 0);
      return;
    }

    v36 = v35;
    v37 = sub_F07EC();
    v39 = v38;

    v40._countAndFlagsBits = v37;
    v40._object = v39;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v75, v40, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v41)
    {
      v42 = [objc_opt_self() sharedInstance];
      if (!v42)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v43 = v42;

      strcpy(&v76, "message GUID ");
      HIWORD(v76) = -4864;
      v44 = [a1 guid];
      if (v44)
      {
        v45 = v44;
        v46 = sub_F07EC();
        v48 = v47;
      }

      else
      {
        v46 = 0x3E6C696E3CLL;
        v48 = 0xE500000000000000;
      }

      v86._countAndFlagsBits = v46;
      v86._object = v48;
      sub_F08CC(v86);

      v66 = v76;
      v67 = sub_F0FBC();
      LOBYTE(v76) = 3;
      *(&v76 + 1) = v67;
      v77 = v68;
      v78 = v66;
      v79 = v41;
      v80 = 0;
      swift_errorRetain();
      sub_94528(&v76);

      goto LABEL_27;
    }

    v62 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v62);
    *&v72[-16] = v14;
    RCSHandle.canonicalizedHandle(for:)(j___s7CoreRCS17RCSPersistentMenuC4menuSo012IMPersistentD0CSgvg, &v76);
    sub_3CAB8(&v75);
    v63 = CTLazuliDestination.init(handle:countryCode:)(&v76, variable initialization expression of RCSHandle.alternateHandle);
    v81[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v81[4] = &protocol witness table for IMDChat;
    v81[0] = a2;
    sub_85608(v81, v82);
    v64 = a2;
    v49 = v63;
    v50 = sub_9232C(v82);
    sub_39BC4(v81);
    v65 = v50;
  }

  else
  {
    v49 = v33;
    v50 = 0;
  }

  v51 = sub_AC78C(a1);
  v52 = [a1 encrypted];
  v82[0] = 2;
  v82[1] = v51;
  v82[2] = v49;
  v83 = v52;
  v84 = v50;
  sub_A0894(v14, v82);
  v53 = [a1 guid];
  if (!v53)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = v53;
  [v3 didSendMessageReadReceiptForMessageID:v53];

  sub_3FA88(v14, 0);
}

void sub_8DF58(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37[0] = v37 - v8;
  v9 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = v37 - v12;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v14 = sub_3C96C(v9, qword_127CE8);
  v15 = v10[2];
  v15(v13, v14, v9);
  sub_F044C();
  v16 = v10[1];
  v16(v13, v9);
  if (v40 == 1)
  {
    if ([a1 style] == 45)
    {
      goto LABEL_8;
    }

    if (qword_127A00 != -1)
    {
      swift_once();
    }

    v17 = sub_3C96C(v9, qword_127BF8);
    v15(v13, v17, v9);
    sub_F044C();
    v16(v13, v9);
    if (v39 == 1)
    {
LABEL_8:
      v18 = [a1 chatIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = [a1 style];
        [v37[1] shouldSendReadReceiptsForChat:v19 style:v20];

        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v25 = Logger.rcs.unsafeMutableAddressor();
    v26 = v37[0];
    (*(v3 + 16))(v37[0], v25, v2);
    v27 = a1;
    v28 = sub_F06AC();
    v29 = sub_F0CEC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = [v27 guid];

      if (!v32)
      {
LABEL_19:
        __break(1u);
        return;
      }

      v33 = sub_F07EC();
      v35 = v34;

      v36 = sub_3E850(v33, v35, &v38);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "Not sending read receipt to group chat %s", v30, 0xCu);
      sub_1EDC(v31);
    }

    else
    {
    }

    (*(v3 + 8))(v26, v2);
    return;
  }

  v21 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v21, v2);
  v22 = sub_F06AC();
  v23 = sub_F0CCC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Not sending read disposition notification due to override", v24, 2u);
  }

  (*(v3 + 8))(v6, v2);
}

id sub_8E448(void *a1)
{
  v3 = [a1 shouldAttemptLocalRCS];
  if (!v3)
  {
    v6 = [a1 chatIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = [v1 chatForChatIdentifier:v6 style:{objc_msgSend(a1, "chatStyle")}];

      if (v8)
      {
        v9 = v8;
        v10 = [v9 chatIdentifier];
        v11 = [v1 _callerIDForChatWithChatIdentifier:v10 chatStyle:objc_msgSend(v9 foundChat:{"style"), v9}];

        if (v11)
        {
          v12 = [v9 lastAddressedLocalHandle];
          v13 = [v9 lastAddressedSIMID];
          v14 = [v1 _sendingDecisionForMessageItem:0 callerID:v11 lastAddressedLocalHandle:v12 lastAddressedSIMID:v13];

          if ((v14 & 2) != 0)
          {

            SimDetailsFromTelephony = 0;
LABEL_11:
            v4 = sub_F0A5C();
            [a1 setShouldAttemptLocalRCS:v4];
            goto LABEL_12;
          }
        }

        else
        {
        }

        SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

        goto LABEL_11;
      }
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();
    goto LABEL_11;
  }

  v4 = v3;
  SimDetailsFromTelephony = [v3 BOOLValue];
LABEL_12:

  return SimDetailsFromTelephony;
}

uint64_t sub_8E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_F06CC();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_F0AEC();
  v8[15] = sub_F0ADC();
  v13 = sub_F0A6C();
  v8[16] = v13;
  v8[17] = v12;

  return _swift_task_switch(sub_8E794, v13, v12);
}

void sub_8E794()
{
  v1 = *(*(v0[4] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[8];
    v0[2] = v0[5];
    v0[3] = v2;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_8E87C;
    v4 = v0[6];
    v5 = v0[7];

    RCSGroupController.renameGroup(chat:to:subscriptionContext:)((v0 + 2), v4, v5, (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_8E87C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_8EC00;
  }

  else
  {
    v7 = sub_8E9B4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_8E9B4()
{
  v32 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[5];

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v7, v3);

  v8 = v6;
  v9 = sub_F06AC();
  v10 = sub_F0CCC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v11)
  {
    v29 = v0[11];
    v30 = v0[14];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    v28 = v10;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v19 = v17;
    *(v18 + 12) = 2080;
    if (v15)
    {
      v21 = v5;
    }

    else
    {
      v16 = 0x3E6C696E3CLL;
      v21 = 0xE500000000000000;
    }

    v22 = v17;

    v23 = sub_3E850(v16, v21, &v31);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_0, v9, v28, "Updated group name for %@ to %s", v18, 0x16u);
    sub_372B0(v19, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v20);

    (*(v13 + 8))(v30, v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v25 = v0[13];
  v24 = v0[14];

  v26 = v0[1];

  return v26();
}

void sub_8EC00()
{
  v46 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);

  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    log = v9;
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = [v11 chatIdentifier];
    v14 = *(v0 + 160);
    if (!v13)
    {
LABEL_16:
      v39 = *(v0 + 40);

      __break(1u);
      return;
    }

    v15 = v13;
    v40 = *(v0 + 96);
    v41 = *(v0 + 88);
    v42 = *(v0 + 104);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v18 = *(v0 + 40);

    v19 = sub_F07EC();
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v45);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    if (v17)
    {
      v23 = v16;
    }

    else
    {
      v23 = 0x3E6C696E3CLL;
    }

    if (v17)
    {
      v24 = v5;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = sub_3E850(v23, v24, &v45);

    *(v12 + 14) = v25;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v26;
    *v43 = v26;
    _os_log_impl(&dword_0, log, v10, "Failed to update group name for %s to %s: %@", v12, 0x20u);
    sub_372B0(v43, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v27 = *(v0 + 160);
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    (*(v28 + 8))(v29, v30);
  }

  if (!*(v0 + 80))
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 120);
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);

  v35 = sub_F07BC();
  [v34 markItemFailedWithGUID:v35 errorCode:4];

  v37 = *(v0 + 104);
  v36 = *(v0 + 112);

  v38 = *(v0 + 8);

  v38();
}

void RCSServiceSession.updateDisplayName(_:fromDisplayName:fromID:forChatID:identifier:style:messageID:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v136 = a5;
  v130 = a4;
  v126 = a3;
  v137 = a2;
  v135 = a1;
  v17 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v121 - v19;
  v125 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v124 = *(v125 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v121 - v22;
  v129 = sub_F06CC();
  v128 = *(v129 - 8);
  v23 = *(v128 + 64);
  __chkstk_darwin(v129);
  v25 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v121 - v27;
  __chkstk_darwin(v29);
  v122 = &v121 - v30;
  v132 = a9;
  v134 = a10;
  v31 = sub_F07BC();
  v140 = v13;
  v32 = [v13 chatForChatIdentifier:v31 style:a11 updatingAccount:1];

  v133 = a8;
  v131 = a7;
  if (!v32)
  {
    v33 = [objc_opt_self() sharedInstance];
    v34 = sub_F07BC();
    v32 = [v33 existingChatWithGUID:v34];

    if (!v32)
    {
      v67 = Logger.rcs.unsafeMutableAddressor();
      v68 = v128;
      v69 = v129;
      (*(v128 + 16))(v25, v67, v129);
      v70 = sub_F06AC();
      v71 = sub_F0CEC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v70, v71, "Received request to update display name but could not find a chat", v72, 2u);
      }

      (*(v68 + 8))(v25, v69);
      return;
    }
  }

  v127 = a11;
  v121 = v20;
  v139 = a13;
  v138 = a12;
  v35 = a6;

  v36 = v32;
  v37 = [v36 chatIdentifier];
  v38 = [v36 style];
  v39 = v140;
  v40 = [v140 _callerIDForChatWithChatIdentifier:v37 chatStyle:v38 foundChat:v36];

  if (!v40)
  {
    v43 = v39;

LABEL_7:
    v46 = v35;
    if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v45 = 0;
      goto LABEL_15;
    }

    if (v35)
    {
      v47 = [objc_opt_self() sharedInstance];
      v48 = [v47 ctSubscriptionInfo];

      v49 = v129;
      if (!v48 || (v50 = sub_F07BC(), v45 = [v48 __im_subscriptionContextForPhoneNumber:v50], v48, v50, !v45))
      {

        v51 = Logger.rcs.unsafeMutableAddressor();
        v52 = v128;
        v53 = v122;
        (*(v128 + 16))(v122, v51, v49);

        v54 = sub_F06AC();
        v55 = sub_F0CEC();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v145 = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_3E850(v136, v46, &v145);
          _os_log_impl(&dword_0, v54, v55, "Couldn't find a subscription for phone number %s, failing display name change", v56, 0xCu);
          sub_1EDC(v57);
        }

        (*(v52 + 8))(v53, v49);
        v58 = sub_F07BC();
        [v43 markItemFailedWithGUID:v58 errorCode:4];

        return;
      }

      goto LABEL_40;
    }

    v81 = [v43 subscriptionContextForChat:v36];
    v82 = v129;
    if (v81)
    {
      v45 = v81;
      if (sub_8326C(v81))
      {
LABEL_40:
        v83 = [v45 phoneNumber];
        if (v83)
        {
          v84 = v83;
          v85 = sub_F07EC();
          v87 = v86;

          v88 = sub_53E04(_swiftEmptyArrayStorage);
          v89._countAndFlagsBits = 7103860;
          v89._object = 0xE300000000000000;
          v90._countAndFlagsBits = v85;
          v90._object = v87;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v144, v89, v90, v88, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          __chkstk_darwin(v91);
          RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v145);
          sub_3CAB8(&v144);
          v92 = v147;
          v136 = v146;

          sub_3CAB8(&v145);

          v46 = v92;
        }

        goto LABEL_15;
      }
    }

    v113 = Logger.rcs.unsafeMutableAddressor();
    (*(v128 + 16))(v28, v113, v82);
    v114 = v36;
    v115 = sub_F06AC();
    v116 = sub_F0CEC();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      *(v117 + 4) = v114;
      *v118 = v32;
      v119 = v114;
      _os_log_impl(&dword_0, v115, v116, "Couldn't find a subscription for chat %@, failing display name change", v117, 0xCu);
      sub_372B0(v118, &qword_127AF0, &qword_F28E0);
    }

    (*(v128 + 8))(v28, v82);
    v120 = sub_F07BC();
    [v43 markItemFailedWithGUID:v120 errorCode:4];

    return;
  }

  v41 = [v36 lastAddressedLocalHandle];
  v42 = [v36 lastAddressedSIMID];
  v43 = v39;
  v44 = [v39 _sendingDecisionForMessageItem:0 callerID:v40 lastAddressedLocalHandle:v41 lastAddressedSIMID:v42];

  if ((v44 & 2) == 0)
  {
    goto LABEL_7;
  }

  v45 = 0;
  v46 = v35;
LABEL_15:
  v59 = v137;
  if ([v36 style] == 45)
  {

    if (v59)
    {
      v60 = sub_F07BC();
    }

    else
    {
      v60 = 0;
    }

    if (v130)
    {
      v73 = sub_F07BC();
      if (v46)
      {
LABEL_27:
        v74 = sub_F07BC();
LABEL_37:
        v79 = sub_F07BC();
        v78 = sub_F07BC();
        v80 = sub_F07BC();
        v141.receiver = v140;
        v141.super_class = RCSServiceSession;
        objc_msgSendSuper2(&v141, "updateDisplayName:fromDisplayName:fromID:forChatID:identifier:style:messageID:", v60, v73, v74, v79, v78, v127, v80);

LABEL_45:
        return;
      }
    }

    else
    {
      v73 = 0;
      if (v46)
      {
        goto LABEL_27;
      }
    }

    v74 = 0;
    goto LABEL_37;
  }

  v61 = v36;
  v62 = [v61 chatIdentifier];
  v63 = [v43 _callerIDForChatWithChatIdentifier:v62 chatStyle:objc_msgSend(v61 foundChat:{"style"), v61}];

  if (v63)
  {
    v64 = [v61 lastAddressedLocalHandle];
    v65 = [v61 lastAddressedSIMID];
    v66 = [v43 _sendingDecisionForMessageItem:0 callerID:v63 lastAddressedLocalHandle:v64 lastAddressedSIMID:v65];

    if ((v66 & 2) != 0)
    {

      goto LABEL_32;
    }
  }

  else
  {
  }

  SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

  if ((SimDetailsFromTelephony & 1) == 0)
  {
LABEL_32:
    if (v59)
    {
      v77 = sub_F07BC();
      if (v46)
      {
LABEL_34:
        v78 = sub_F07BC();
LABEL_44:
        v80 = sub_F07BC();
        [v43 relayDisplayNameChange:v77 forChat:v61 fromID:v78 messageID:v80 didOccurLocally:0];

        goto LABEL_45;
      }
    }

    else
    {
      v77 = 0;
      if (v46)
      {
        goto LABEL_34;
      }
    }

    v78 = 0;
    goto LABEL_44;
  }

  if (v59)
  {
    v76 = sub_F07BC();
  }

  else
  {
    v76 = 0;
  }

  if (v130)
  {
    v93 = sub_F07BC();
  }

  else
  {
    v93 = 0;
  }

  v137 = v45;
  if (v46)
  {
    v94 = sub_F07BC();
  }

  else
  {
    v94 = 0;
  }

  v95 = sub_F07BC();
  v96 = sub_F07BC();
  v97 = sub_F07BC();
  v143.receiver = v43;
  v143.super_class = RCSServiceSession;
  objc_msgSendSuper2(&v143, "updateDisplayName:fromDisplayName:fromID:forChatID:identifier:style:messageID:", v76, v93, v94, v95, v96, v127, v97);

  if (qword_127A88 != -1)
  {
    swift_once();
  }

  v98 = v125;
  v99 = sub_3C96C(v125, qword_127D90);
  v100 = v124;
  v101 = v123;
  (*(v124 + 16))(v123, v99, v98);
  sub_F044C();
  (*(v100 + 8))(v101, v98);
  if (v142)
  {
    v102 = sub_F07BC();
    [v43 markItemFailedWithGUID:v102 errorCode:4];
  }

  else
  {
    v103 = sub_F0B1C();
    v104 = v121;
    (*(*(v103 - 8) + 56))(v121, 1, 1, v103);
    sub_F0AEC();
    v105 = v137;
    v106 = v137;
    v107 = v139;

    v108 = v61;
    v109 = v43;

    v110 = sub_F0ADC();
    v111 = swift_allocObject();
    v111[2] = v110;
    v111[3] = &protocol witness table for MainActor;
    v111[4] = v109;
    v111[5] = v108;
    v111[6] = v135;
    v111[7] = v59;
    v112 = v138;
    v111[8] = v105;
    v111[9] = v112;
    v111[10] = v107;
    sub_3CC0C(0, 0, v104, &unk_F3C08, v111);
  }
}

void RCSServiceSession.sendGroupPhotoUpdate(_:toChatID:identifier:style:account:isPhotoRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  v22 = a7;
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  if (qword_127A78 != -1)
  {
    swift_once();
  }

  v16 = sub_3C96C(v11, qword_127D60);
  (*(v12 + 16))(v15, v16, v11);
  sub_F044C();
  (*(v12 + 8))(v15, v11);
  if ((v24 & 1) == 0)
  {
    if (a2)
    {
      v17 = sub_F07BC();
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_F07BC();
    v19 = sub_F07BC();
    v20 = sub_F07BC();
    v23.receiver = v21[1];
    v23.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v23, "sendGroupPhotoUpdate:toChatID:identifier:style:account:isPhotoRefresh:", v17, v18, v19, v22, v20, a10 & 1);
  }
}

void RCSServiceSession.groupID(for:)(void *a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 chatIdentifier];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v1 chatForChatIdentifier:v9 style:objc_msgSend(a1 updatingAccount:{"style"), 1}];

  if (!v11)
  {
    v34.receiver = v1;
    v34.super_class = RCSServiceSession;
    v26 = objc_msgSendSuper2(&v34, "groupIDForChat:", a1);
    sub_F07EC();

    return;
  }

  v12 = [objc_opt_self() sharedFeatureFlags];
  v13 = [v12 isMissingMessagesEnabled];

  if (!v13)
  {
    v14 = [v11 originalGroupID];
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = [v11 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (v14)
  {
LABEL_10:
    v27 = v14;
    sub_F07EC();

    return;
  }

  v15 = v1;
  v16 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v8, v16, v3);
  v17 = v11;
  v18 = sub_F06AC();
  v19 = sub_F0CEC();
  if (!os_log_type_enabled(v18, v19))
  {

    (*(v4 + 8))(v8, v3);
    goto LABEL_12;
  }

  v20 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v32 = v30;
  *v20 = 136315138;
  v21 = [v17 chatIdentifier];

  v31 = v15;
  if (v21)
  {
    v22 = sub_F07EC();
    v24 = v23;

    v25 = sub_3E850(v22, v24, &v32);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "Could not find latest RCS conversation ID for chat %s!", v20, 0xCu);
    sub_1EDC(v30);

    (*(v4 + 8))(v8, v3);
    v15 = v31;
LABEL_12:
    v33.receiver = v15;
    v33.super_class = RCSServiceSession;
    v28 = objc_msgSendSuper2(&v33, "groupIDForChat:", v17);
    sub_F07EC();

    return;
  }

LABEL_15:
  __break(1u);
}

void RCSServiceSession.allowed(toSendMessage:to:)(void *a1, void *a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v96 = &v90 - v8;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v90 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v90 - v19;
  if ([a1 isFinished])
  {
    goto LABEL_2;
  }

  v90 = v6;
  v91 = v5;
  v92 = v16;
  v93 = a2;
  v94 = v10;
  v95 = v9;
  v21 = a2;
  v22 = [v21 chatIdentifier];
  v23 = [v2 _callerIDForChatWithChatIdentifier:v22 chatStyle:objc_msgSend(v21 foundChat:{"style"), v21}];

  if (v23)
  {
    v24 = [v21 lastAddressedLocalHandle];
    v25 = v13;
    v26 = [v21 lastAddressedSIMID];
    v27 = [v2 _sendingDecisionForMessageItem:0 callerID:v23 lastAddressedLocalHandle:v24 lastAddressedSIMID:v26];

    v13 = v25;
    if ((v27 & 2) != 0 || !IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_10;
    }
  }

  v28 = [v2 subscriptionContextForChat:v21];
  if (!v28 || (v29 = v28, v30 = sub_4019C(v28, [v21 style]), v29, (v30 & 1) == 0))
  {
    v34 = Logger.rcs.unsafeMutableAddressor();
    v36 = v94;
    v35 = v95;
    (*(v94 + 16))(v20, v34, v95);
    v37 = a1;
    v38 = sub_F06AC();
    v39 = sub_F0CCC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v100[0] = v41;
      *v40 = 136315138;
      v42 = [v37 guid];

      if (!v42)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v43 = sub_F07EC();
      v45 = v44;

      v46 = sub_3E850(v43, v45, v100);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_0, v38, v39, "Not sending typing indicator message %s due to carrier policy", v40, 0xCu);
      sub_1EDC(v41);
    }

    else
    {
    }

    v88 = *(v36 + 8);
    v89 = v20;
    goto LABEL_39;
  }

LABEL_10:
  if ([v21 style] != 43)
  {
    goto LABEL_27;
  }

  v31 = [objc_opt_self() sharedInstanceForBagType:1];
  v32 = sub_F07BC();
  v33 = [v31 objectForKey:v32];

  if (v33)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v48 = v91;
  v47 = v92;
  v100[0] = v98;
  v100[1] = v99;
  if (!*(&v99 + 1))
  {
    sub_372B0(v100, &unk_127FB0, &qword_F2F40);
    goto LABEL_21;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v50 = 0;
    goto LABEL_22;
  }

  v49 = v97;
  v50 = [v97 BOOLValue];

LABEL_22:
  v51 = [objc_opt_self() sharedFeatureFlags];
  v52 = [v51 isGroupTypingIndicatorsEnabled];

  if (!v52)
  {
    goto LABEL_33;
  }

  v53 = v2;
  if (qword_127A08 != -1)
  {
    swift_once();
  }

  v54 = sub_3C96C(v48, qword_127C10);
  v55 = v90;
  v56 = v96;
  (*(v90 + 16))(v96, v54, v48);
  sub_F044C();
  (*(v55 + 8))(v56, v48);
  if (((LOBYTE(v100[0]) | v50) & 1) == 0)
  {
LABEL_33:
    v75 = v31;
    v76 = Logger.rcs.unsafeMutableAddressor();
    v77 = v94;
    v35 = v95;
    (*(v94 + 16))(v47, v76, v95);
    v78 = a1;
    v79 = sub_F06AC();
    v80 = sub_F0CCC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v100[0] = v82;
      *v81 = 136315138;
      v83 = [v78 guid];

      if (!v83)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v84 = sub_F07EC();
      v86 = v85;

      v87 = sub_3E850(v84, v86, v100);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_0, v79, v80, "Not sending typing indicator message %s as it is for a group chat and sending group typing indicators is disabled.", v81, 0xCu);
      sub_1EDC(v82);

      v88 = *(v77 + 8);
      v89 = v92;
    }

    else
    {

      v88 = *(v77 + 8);
      v89 = v47;
    }

LABEL_39:
    v88(v89, v35);
    return;
  }

  v2 = v53;

LABEL_27:
  v57 = [v21 isChatBot];
  v58 = v94;
  v59 = v95;
  a2 = v93;
  if (!v57)
  {
LABEL_2:
    v101.receiver = v2;
    v101.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v101, "allowedToSendMessage:toChat:", a1, a2);
    return;
  }

  v60 = [objc_opt_self() sharedInstance];
  if (!v60)
  {
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  v62 = [v60 isRBMEnabled];

  a2 = v93;
  if (v62)
  {
    goto LABEL_2;
  }

  v63 = Logger.rcs.unsafeMutableAddressor();
  (*(v58 + 16))(v13, v63, v59);
  v64 = a1;
  v65 = sub_F06AC();
  v66 = sub_F0CCC();
  if (!os_log_type_enabled(v65, v66))
  {

    (*(v58 + 8))(v13, v59);
    return;
  }

  v67 = v13;
  v68 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  *&v100[0] = v69;
  *v68 = 136315138;
  v70 = [v64 guid];

  if (v70)
  {
    v71 = sub_F07EC();
    v73 = v72;

    v74 = sub_3E850(v71, v73, v100);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_0, v65, v66, "Not sending typing indicator message %s as RBM is disabled in Settings", v68, 0xCu);
    sub_1EDC(v69);

    (*(v58 + 8))(v67, v59);
    return;
  }

LABEL_44:
  __break(1u);
}

uint64_t RCSServiceSession._enqueue(_:withTimeout:)(uint64_t result, uint64_t a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR___RCSServiceSession_state);
  v5 = *(v4 + 136);
  if (v5)
  {
    v8 = result;
    v9 = *(*v5 + 144);
    v10 = *(v4 + 136);

    v9(v8, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_9400C;
    v5[3] = &unk_11EE50;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

uint64_t RCSServiceSession.allowedToOverwriteOriginalGroupID(for:)(void *a1)
{
  v2 = a1;
  v3 = [v2 chatIdentifier];
  v4 = [v1 _callerIDForChatWithChatIdentifier:v3 chatStyle:objc_msgSend(v2 foundChat:{"style"), v2}];

  if (!v4)
  {

    if (IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 1;
    return v14 & 1;
  }

  v5 = [v2 lastAddressedLocalHandle];
  v6 = [v2 lastAddressedSIMID];
  v7 = [v1 _sendingDecisionForMessageItem:0 callerID:v4 lastAddressedLocalHandle:v5 lastAddressedSIMID:v6];

  if ((v7 & 2) != 0 || !IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    goto LABEL_7;
  }

LABEL_4:
  *(&v17 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v18 = &protocol witness table for IMDChat;
  *&v16 = v2;
  v8 = v2;
  v9 = IMDChatRCSGroupIdentity.isValid.getter();
  if (v9)
  {
    v10 = swift_allocObject();
    v11 = v17;
    *(v10 + 16) = v16;
    *(v10 + 32) = v11;
    *(v10 + 48) = v18;
    v12 = &protocol witness table for IMDChatRCSGroupIdentity;
    v13 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v16);
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v14 = v9 ^ 1;
  v19[3] = v13;
  v19[4] = v12;
  v19[0] = v10;
  sub_372B0(v19, &qword_127B08, &qword_F29A0);
  return v14 & 1;
}

uint64_t RCSServiceSession.wait(forChatRelayReadiness:with:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v8 = *(*(v7 - 8) + 64);
  *&v9 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v11 = &v24 - v10;
  if ([a1 style] == 43)
  {
    v12 = a1;
    v13 = [v12 chatIdentifier];
    v14 = [v3 _callerIDForChatWithChatIdentifier:v13 chatStyle:objc_msgSend(v12 foundChat:{"style"), v12}];

    if (v14)
    {
      v15 = [v12 lastAddressedLocalHandle];
      v16 = [v12 lastAddressedSIMID];
      v17 = [v3 _sendingDecisionForMessageItem:0 callerID:v14 lastAddressedLocalHandle:v15 lastAddressedSIMID:v16];

      if ((v17 & 2) == 0 && IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
LABEL_5:
        sub_F0AFC();
        v18 = sub_F0B1C();
        (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
        sub_F0AEC();
        v19 = v12;
        v20 = v3;

        v21 = sub_F0ADC();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v20;
        v22[5] = v19;
        v22[6] = a2;
        v22[7] = a3;
        sub_3CC0C(0, 0, v11, &unk_F3C18, v22);
      }
    }
  }

  return a2();
}

uint64_t sub_918E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_F06CC();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  sub_F0AEC();
  v7[16] = sub_F0ADC();
  v12 = sub_F0A6C();
  v7[17] = v12;
  v7[18] = v11;

  return _swift_task_switch(sub_919D8, v12, v11);
}

void sub_919D8()
{
  v1 = *(*(v0[9] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[19] = v1;
  if (v1)
  {
    v0[7] = v0[10];
    v0[8] = 0;

    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_91AC0;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 2), (v0 + 7), (v0 + 8));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_91AC0()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v10 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    v4 = v2[19];

    v5 = v2[17];
    v6 = v2[18];
    v7 = sub_91C68;
  }

  else
  {
    v8 = v2[19];
    sub_1EDC(v2 + 2);

    v5 = v2[17];
    v6 = v2[18];
    v7 = sub_91BF0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_91BF0()
{
  v1 = *(v0 + 128);

  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  (*(v0 + 88))(v2);

  v5 = *(v0 + 8);

  return v5();
}

void sub_91C68()
{
  v39 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v3, v7, v4);
  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v12 = 136315394;
    v14 = [v11 guid];
    v15 = *(v0 + 168);
    if (!v14)
    {
      v33 = *(v0 + 80);
      v34 = *(v0 + 168);

      __break(1u);
      return;
    }

    v16 = v14;
    v17 = *(v0 + 112);
    v35 = *(v0 + 104);
    v36 = *(v0 + 120);
    v18 = *(v0 + 80);

    v19 = sub_F07EC();
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v38);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v23;
    *v13 = v23;
    _os_log_impl(&dword_0, v9, v10, "Failed to ensure chat %s is ready RCS before relaying - relay may not work correctly: %@", v12, 0x16u);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v37);

    v24 = (*(v17 + 8))(v36, v35);
  }

  else
  {
    v25 = *(v0 + 168);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);

    v24 = (*(v27 + 8))(v26, v28);
  }

  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  (*(v0 + 88))(v24);

  v32 = *(v0 + 8);

  v32();
}

void RCSServiceSession._reportTelephonyJunk(for:chat:)(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v9 = a2;
  [v2 sendLazuliSpamReport:a1 isBot:objc_msgSend(v9 spamType:{"isChatBot"), 0}];
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 anySessionForServiceName:IMServiceNameSMS];

  if (v6)
  {
    v7 = [a1 guid];
    if (v7)
    {
      v8 = v7;
      [v6 sendReportJunkMessageGUID:v7 shouldRelay:0];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
}

uint64_t sub_92210()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_37C54;

  return sub_8A9B4(v2, v3, v4, v5, v6);
}

void sub_922F4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_9232C(uint64_t a1)
{
  v2 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-v5];
  v7 = [objc_allocWithZone(CTLazuliGroupChatUri) init];
  IMDChatRCSGroupIdentity.uri.getter();
  if (v8)
  {
    v9 = sub_F07BC();

    [v7 setFocus:v9];
  }

  if (qword_127A70 != -1)
  {
    swift_once();
  }

  v10 = sub_3C96C(v2, qword_127D48);
  (*(v3 + 16))(v6, v10, v2);
  sub_F044C();
  (*(v3 + 8))(v6, v2);
  if (v15[15] != 1)
  {
    sub_39BC4(a1);
    goto LABEL_9;
  }

  IMDChatRCSGroupIdentity.conversationID.getter();
  v12 = v11;
  sub_39BC4(a1);
  if (!v12)
  {
LABEL_9:
    v13 = sub_F07BC();
    goto LABEL_10;
  }

  v13 = sub_F07BC();

LABEL_10:
  [v7 setConversationID:v13];

  return v7;
}

void sub_92540(void *a1, uint64_t a2, void *a3, unsigned int a4, double a5)
{
  v110 = a4;
  v9 = 1954047348;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v111 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v104 - v16;
  v18 = type metadata accessor for RCSMessage(0);
  sub_5F2EC(a2 + *(v18 + 32), v17);
  v19 = type metadata accessor for RCSMessage.Content(0);
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
  {
    sub_372B0(v17, &unk_127FA0, &qword_F34C0);
LABEL_3:
    v20 = 0xE400000000000000;
    goto LABEL_4;
  }

  v29 = RCSMessage.Content.type.getter();
  sub_93F40(v17, type metadata accessor for RCSMessage.Content);
  switch(v29)
  {
    case 0:
      goto LABEL_3;
    case 4:
      v20 = 0xEF726F7461636964;
      v9 = 0x6E49676E69707974;
      break;
    case 1:
      v20 = 0xEA0000000000746ELL;
      v9 = 0x656D686361747461;
      break;
    default:
      v20 = 0xE500000000000000;
      v9 = 0x726568746FLL;
      break;
  }

LABEL_4:
  v21 = [a1 bodyData];
  v112 = v11;
  if (!v21)
  {
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v22 = v21;
  v23 = sub_F025C();
  v25 = v24;

  v26 = v25;
  v27 = v25 >> 62;
  if ((v25 >> 62) <= 1)
  {
    if (!v27)
    {
      sub_5F048(v23, v25);
      v28 = BYTE6(v25);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v27 != 2)
  {
    sub_5F048(v23, v25);
    goto LABEL_19;
  }

  v31 = *(v23 + 16);
  v30 = *(v23 + 24);
  sub_5F048(v23, v26);
  v28 = v30 - v31;
  if (!__OFSUB__(v30, v31))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_16:
  sub_5F048(v23, v26);
  if (__OFSUB__(HIDWORD(v23), v23))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return;
  }

  v28 = HIDWORD(v23) - v23;
LABEL_20:
  v32 = [a1 payloadData];
  if (!v32)
  {
LABEL_31:
    v39 = 0;
    goto LABEL_32;
  }

  v33 = v32;
  v34 = sub_F025C();
  v36 = v35;

  v37 = v36;
  v38 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v38)
    {
      sub_5F048(v34, v36);
      v39 = BYTE6(v36);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (v38 != 2)
  {
    sub_5F048(v34, v36);
    goto LABEL_31;
  }

  v41 = *(v34 + 16);
  v40 = *(v34 + 24);
  sub_5F048(v34, v37);
  v39 = v40 - v41;
  if (!__OFSUB__(v40, v41))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_28:
  sub_5F048(v34, v37);
  LODWORD(v39) = HIDWORD(v34) - v34;
  if (__OFSUB__(HIDWORD(v34), v34))
  {
    goto LABEL_87;
  }

  v39 = v39;
LABEL_32:
  v42 = v28 + v39;
  if (__OFADD__(v28, v39))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ([a3 isChatBot])
  {
    v116 = 0xE700000000000000;
    v107 = 0x746F6274616863;
  }

  else
  {
    v43 = [a3 style];
    v44 = 0x70756F7267;
    if (v43 == 45)
    {
      v44 = 0x7564697669646E69;
    }

    v107 = v44;
    v45 = 0xEA00000000006C61;
    if (v43 != 45)
    {
      v45 = 0xE500000000000000;
    }

    v116 = v45;
  }

  v46 = [a3 properties];
  v113 = v20;
  if (!v46)
  {
    goto LABEL_51;
  }

  v47 = v46;
  v48 = sub_F076C();

  v118 = sub_F07EC();
  v119 = v49;
  sub_F0F3C();
  if (!*(v48 + 16) || (v50 = sub_51FA8(v120), (v51 & 1) == 0))
  {

    sub_54F34(v120);
    goto LABEL_51;
  }

  sub_3FE38(*(v48 + 56) + 32 * v50, v121);
  sub_54F34(v120);

  sub_54F88(v121, v120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v115 = [a3 style];
    v114 = 0xE300000000000000;
    v106 = 5456722;
    goto LABEL_52;
  }

  v52 = v118;
  v115 = [a3 style];
  v53 = 0x726279485F534352;
  if ((v52 & 1) == 0)
  {
    v53 = 5456722;
  }

  v106 = v53;
  v54 = 0xE300000000000000;
  if (v52)
  {
    v54 = 0xEA00000000006469;
  }

  v114 = v54;
LABEL_52:
  v55 = [a1 fileTransferGUIDs];
  v109 = v9;
  v108 = v10;
  if (v55)
  {
    v105 = a1;
    v56 = v55;
    v57 = sub_F09FC();

    v58 = 0;
    v59 = *(v57 + 16);
    v60 = v57 + 40;
    v104 = v57 + 40;
LABEL_54:
    v117 = v42;
    v61 = (v60 + 16 * v58);
    while (1)
    {
      if (v59 == v58)
      {
        goto LABEL_62;
      }

      if (v58 >= *(v57 + 16))
      {
        break;
      }

      v63 = *(v61 - 1);
      v62 = *v61;
      v64 = objc_opt_self();

      v65 = [v64 sharedInstance];
      if (!v65)
      {
        goto LABEL_88;
      }

      v66 = v65;
      ++v58;
      v61 += 2;
      v67 = sub_F07BC();

      v68 = [v66 transferForGUID:v67];

      if (v68)
      {
        v69 = [v68 totalBytes];

        v42 = &v69[v117];
        v60 = v104;
        if (!__CFADD__(v117, v69))
        {
          goto LABEL_54;
        }

        __break(1u);
LABEL_62:

        v10 = v108;
        a1 = v105;
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

  v117 = v42;
LABEL_64:
  v70 = Logger.rcs.unsafeMutableAddressor();
  v72 = v111;
  v71 = v112;
  (*(v112 + 16))(v111, v70, v10);

  v73 = v113;

  v74 = a1;

  v75 = sub_F06AC();
  v76 = sub_F0CCC();

  LODWORD(v105) = v76;
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v120[0] = v104;
    *v77 = 136316674;
    *(v77 + 4) = sub_3E850(v109, v73, v120);
    *(v77 + 12) = 2048;
    *(v77 + 14) = v117;
    *(v77 + 22) = 2080;
    v78 = [v74 originalServiceName];
    if (v78)
    {
      v79 = v78;
      v80 = sub_F07EC();
      v82 = v81;
    }

    else
    {
      v80 = 7104878;
      v82 = 0xE300000000000000;
    }

    v83 = v105;
    v84 = sub_3E850(v80, v82, v120);

    *(v77 + 24) = v84;
    *(v77 + 32) = 2080;
    *(v77 + 34) = sub_3E850(v107, v116, v120);
    *(v77 + 42) = 2080;
    if (v115 == 45)
    {
      v85 = 7104878;
    }

    else
    {
      v85 = v106;
    }

    if (v115 == 45)
    {
      v86 = 0xE300000000000000;
    }

    else
    {
      v86 = v114;
    }

    v87 = sub_3E850(v85, v86, v120);

    *(v77 + 44) = v87;
    *(v77 + 52) = 2048;
    *(v77 + 54) = a5;
    *(v77 + 62) = 1024;
    *(v77 + 64) = v110;
    _os_log_impl(&dword_0, v75, v83, "Sending RCS send message metric with subtype %s, messageSize %llu, originalServiceName %s, receiverType %s, receiverGroupType %s, duration %f, error %u", v77, 0x44u);
    swift_arrayDestroy();

    (*(v112 + 8))(v111, v108);
  }

  else
  {

    (*(v71 + 8))(v72, v10);
  }

  v88 = objc_opt_self();
  v89 = [v88 sharedInstance];
  if (!v89)
  {
    goto LABEL_89;
  }

  v90 = v89;
  v91 = sub_F07BC();
  v112 = sub_F07BC();

  v92 = [v74 originalServiceName];
  v93 = sub_F0BEC();
  v94 = sub_F07BC();

  if (v115 == 45)
  {
    v95 = 0;
  }

  else
  {
    v95 = sub_F07BC();
  }

  v96 = v110;
  v97 = v110 == 0;
  v98 = [v74 handle];
  v99 = [v88 stringForFZErrorType:v96];
  LOBYTE(v103) = v97;
  v100 = v91;
  v101 = v91;
  v102 = v112;
  [v90 trackSentMessageEventOfType:v101 subtype:v112 originalServiceName:v92 messageSize:v117 sendDuration:v93 receiverType:v94 receiverGroupType:v95 wasSuccessful:v103 sourceHandle:0 destinationHandle:v98 error:v99];
}

void sub_93078(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, char a5)
{
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = sub_F07BC();
  v17 = [v5 chatForChatIdentifier:v16 style:a4 updatingAccount:1];

  if (v17)
  {
    v18 = [v5 relayController];
    v19 = v17;
    [v18 sendReadReceiptForMessage:a1 toChat:v19 reflectOnly:a5 & 1];

    v36 = v19;
    v20 = [v36 chatIdentifier];
    v21 = [v36 style];
    v22 = [v5 _callerIDForChatWithChatIdentifier:v20 chatStyle:v21 foundChat:v36];

    if (v22)
    {
      v23 = [v36 lastAddressedLocalHandle];
      v24 = [v36 lastAddressedSIMID];
      v25 = [v5 _sendingDecisionForMessageItem:a1 callerID:v22 lastAddressedLocalHandle:v23 lastAddressedSIMID:v24];

      if ((v25 & 2) != 0)
      {

        goto LABEL_13;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (SimDetailsFromTelephony)
    {
      if (a1)
      {
        sub_8D2EC(a1, v36);
        v32 = v36;
LABEL_16:

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_13:
    if (a1)
    {
      v33 = [a1 guid];
      if (v33)
      {
        v35 = v33;
        [v5 didSendMessageReadReceiptForMessageID:?];

        v32 = v35;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v26, v11);

  v27 = sub_F06AC();
  v28 = sub_F0CFC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_3E850(a2, a3, &v37);
    _os_log_impl(&dword_0, v27, v28, "Received request to send read receipt to chat %s but could not find chat", v29, 0xCu);
    sub_1EDC(v30);
  }

  (*(v12 + 8))(v15, v11);
}

BOOL _sSo17RCSServiceSessionC3RCSE12chatCanMerge13withSuperChatSbSo7IMDChatC_tF_0(void *a1)
{
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = a1;
  v2 = a1;
  v3 = IMDChatRCSGroupIdentity.isValid.getter();
  if (v3)
  {
    v4 = swift_allocObject();
    v5 = v10;
    *(v4 + 16) = v9;
    *(v4 + 32) = v5;
    *(v4 + 48) = v11;
    v6 = &protocol witness table for IMDChatRCSGroupIdentity;
    v7 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v7 = 0;
    v6 = 0;
    v4 = 0;
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[3] = v7;
  v12[4] = v6;
  v12[0] = v4;
  sub_372B0(v12, &qword_127B08, &qword_F29A0);
  return (v3 & 1) == 0;
}

uint64_t sub_9354C(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_38B0C;

  return sub_8E680(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_93640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_38B0C;

  return sub_918E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_93714(void *a1, void *a2, void (**a3)(void))
{
  v6 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  if ([a1 style] == 43)
  {
    v11 = a1;
    v12 = [v11 chatIdentifier];
    v13 = [a2 _callerIDForChatWithChatIdentifier:v12 chatStyle:objc_msgSend(v11 foundChat:{"style"), v11}];

    if (v13)
    {
      v14 = [v11 lastAddressedLocalHandle];
      v15 = [v11 lastAddressedSIMID];
      v16 = [a2 _sendingDecisionForMessageItem:0 callerID:v13 lastAddressedLocalHandle:v14 lastAddressedSIMID:v15];

      if ((v16 & 2) == 0 && IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
LABEL_5:
        sub_F0AFC();
        v17 = sub_F0B1C();
        (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
        sub_F0AEC();
        v18 = v11;
        v19 = a2;

        v20 = sub_F0ADC();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = &protocol witness table for MainActor;
        v21[4] = v19;
        v21[5] = v18;
        v21[6] = sub_93FA0;
        v21[7] = v10;
        sub_3CC0C(0, 0, v9, &unk_F3D28, v21);
      }
    }
  }

  a3[2](a3);
}

uint64_t _sSo17RCSServiceSessionC3RCSE24_messageUpgradesWhenSent18fromCurrentServiceSbSo13IMMessageItemC_tF_0(void *a1)
{
  v1 = [a1 service];
  if (!v1)
  {
    sub_F07EC();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_F07EC();
  v5 = v4;

  v6 = sub_F07EC();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_F122C();
  }

LABEL_11:

  return v9 & 1;
}

uint64_t sub_93B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_93B6C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_F030C() - 8);
  v10 = (*(v9 + 80) + v8 + 17) & ~*(v9 + 80);
  v20 = v1[3];
  v21 = v1[2];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = v1 + v8;
  v16 = *(v1 + v8);
  v15 = *(v14 + 1);
  v17 = v14[16];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_37C54;

  return sub_886C0(a1, v21, v20, v11, v1 + v5, v12, v13, v16);
}

uint64_t sub_93D20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_38B0C;

  return sub_8A3FC(v2, v3, v4, v5, v6);
}

uint64_t sub_93DDC(int a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_38B0C;

  return sub_8A548(a1, v1);
}

uint64_t sub_93E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_93ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_93F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_93FB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_94014(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7370756F7247;
    }

    else
    {
      v4 = 0x6E6F6870656C6554;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000079;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000000000FDCD0;
  }

  else if (a1 == 3)
  {
    v4 = 0x6E6967617373654DLL;
    v5 = 0xE900000000000067;
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x79636176697250;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7370756F7247;
    }

    else
    {
      v9 = 0x6E6F6870656C6554;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000079;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v6 = 0x6E6967617373654DLL;
    if (a2 != 3)
    {
      v6 = 0x79636176697250;
      v2 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000000000FDCD0;
    }

    else
    {
      v8 = v2;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v5 != v8)
  {
LABEL_33:
    v10 = sub_F122C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_941B4()
{
  v1 = *v0;
  sub_F12FC();
  sub_F089C();

  return sub_F132C();
}

uint64_t sub_9429C()
{
  *v0;
  *v0;
  *v0;
  sub_F089C();
}

Swift::Int sub_94370()
{
  v1 = *v0;
  sub_F12FC();
  sub_F089C();

  return sub_F132C();
}

uint64_t sub_94454@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_96F4C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_94484(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x6E6F6870656C6554;
  v6 = 0x80000000000FDCD0;
  v7 = 0xD000000000000016;
  v8 = 0x6E6967617373654DLL;
  if (v3 != 3)
  {
    v8 = 0x79636176697250;
    v2 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v2;
  }

  if (*v1)
  {
    v5 = 0x7370756F7247;
    v4 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_94528(unsigned __int8 *a1)
{
  v2 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v66 - v4;
  v6 = sub_388C8(&qword_128A60, &qword_F3D38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v66 - v8;
  v10 = sub_F043C();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  v12 = __chkstk_darwin(v10);
  v69 = v13;
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v66 - v14;
  v15 = sub_F06CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Logger.rcs.unsafeMutableAddressor();
  (*(v16 + 16))(v19, v20, v15);
  sub_96908(a1, v77);
  v21 = sub_F06AC();
  v22 = sub_F0CEC();
  sub_96940(a1);
  v68 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v71 = v5;
  if (v23)
  {
    v67 = v9;
    v24 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77[0] = v66;
    *v24 = 136446978;
    v25 = 0xE900000000000079;
    v26 = *a1;
    v27 = 0xD000000000000016;
    v28 = 0x80000000000FDCD0;
    v29 = 0x6E6967617373654DLL;
    v30 = 0xE700000000000000;
    if (v26 == 3)
    {
      v30 = 0xE900000000000067;
    }

    else
    {
      v29 = 0x79636176697250;
    }

    if (v26 != 2)
    {
      v27 = v29;
      v28 = v30;
    }

    v31 = 0x7370756F7247;
    if (*a1)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v31 = 0x6E6F6870656C6554;
    }

    if (*a1 <= 1u)
    {
      v32 = v31;
    }

    else
    {
      v32 = v27;
    }

    if (*a1 <= 1u)
    {
      v33 = v25;
    }

    else
    {
      v33 = v28;
    }

    v34 = 0x3E6C696E3CLL;
    v35 = sub_3E850(v32, v33, v77);

    *(v24 + 4) = v35;
    *(v24 + 12) = 2082;
    if (*(a1 + 2))
    {
      v36 = *(a1 + 1);
      v37 = *(a1 + 2);
    }

    else
    {
      v37 = 0xE500000000000000;
      v36 = 0x3E6C696E3CLL;
    }

    v38 = sub_3E850(v36, v37, v77);

    *(v24 + 14) = v38;
    *(v24 + 22) = 2080;
    if (*(a1 + 4))
    {
      v39 = *(a1 + 3);
      v40 = *(a1 + 4);
    }

    else
    {
      v40 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    v41 = sub_3E850(v39, v40, v77);

    *(v24 + 24) = v41;
    *(v24 + 32) = 2080;
    if (*(a1 + 5))
    {
      v76 = *(a1 + 5);
      swift_errorRetain();
      sub_388C8(&qword_127B88, &qword_F3680);
      v34 = sub_F083C();
      v43 = v42;
    }

    else
    {
      v43 = 0xE500000000000000;
    }

    v44 = sub_3E850(v34, v43, v77);

    *(v24 + 34) = v44;
    _os_log_impl(&dword_0, v21, v68, "[ABC] Severe bug detected with type %{public}s context %{public}s fullContext %s error %s", v24, 0x2Au);
    swift_arrayDestroy();

    (*(v16 + 8))(v19, v15);
    v9 = v67;
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  *a1;
  v46 = v74;
  v45 = v75;
  v47 = sub_F07BC();

  if (*(a1 + 5))
  {
    v48 = sub_F014C();
  }

  else
  {
    v48 = 0;
  }

  v49 = sub_F07BC();
  if (*(a1 + 2))
  {
    v50 = *(a1 + 1);
    v51 = *(a1 + 2);
LABEL_34:

    v54 = sub_F07BC();

    goto LABEL_35;
  }

  if (*(a1 + 4))
  {
    v52 = *(a1 + 3);
    v53 = *(a1 + 4);

    goto LABEL_34;
  }

  v54 = 0;
LABEL_35:
  [v72 forceAutoBugCaptureWithSubType:v47 errorPayload:v48 type:v49 context:{v54, v66}];

  sub_9546C(v9);
  if ((*(v46 + 48))(v9, 1, v45) == 1)
  {
    return sub_372B0(v9, &qword_128A60, &qword_F3D38);
  }

  v56 = *(v46 + 32);
  v57 = v73;
  v56(v73, v9, v45);
  v58 = sub_F0B1C();
  v59 = v71;
  (*(*(v58 - 8) + 56))(v71, 1, 1, v58);
  v60 = v70;
  (*(v46 + 16))(v70, v57, v45);
  v61 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v62 = (v69 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  v56((v63 + v61), v60, v45);
  v64 = v63 + v62;
  v65 = *(a1 + 1);
  *v64 = *a1;
  *(v64 + 16) = v65;
  *(v64 + 32) = *(a1 + 2);
  *(v64 + 48) = a1[48];
  sub_96908(a1, v77);
  sub_3CC0C(0, 0, v59, &unk_F3D48, v63);

  return (*(v46 + 8))(v73, v45);
}

uint64_t sub_94D0C()
{
  v1 = 0xE600000000000000;
  v2 = 0x7370756F7247;
  v3 = *v0;
  v4 = 0x80000000000FDCD0;
  v5 = 0xD000000000000016;
  v6 = 0x6E6967617373654DLL;
  v7 = 0xE700000000000000;
  if (v3 == 3)
  {
    v7 = 0xE900000000000067;
  }

  else
  {
    v6 = 0x79636176697250;
  }

  if (v3 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  if (!*v0)
  {
    v2 = 0x6E6F6870656C6554;
    v1 = 0xE900000000000079;
  }

  if (*v0 <= 1u)
  {
    v8._countAndFlagsBits = v2;
  }

  else
  {
    v8._countAndFlagsBits = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  v8._object = v9;
  sub_F08CC(v8);

  v17._countAndFlagsBits = 8285;
  v17._object = 0xE200000000000000;
  sub_F08CC(v17);
  if (*(v0 + 2))
  {
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
LABEL_21:

    v18._countAndFlagsBits = v10;
    v18._object = v11;
    sub_F08CC(v18);

    return 0x5B5D5343525BLL;
  }

  if (*(v0 + 4))
  {
    v12 = *(v0 + 2);
    v10 = *(v0 + 3);
    v11 = *(v0 + 4);
LABEL_20:

    goto LABEL_21;
  }

  v13 = *(v0 + 2);
  result = *(v0 + 5);
  if (result)
  {
    v15 = *(v0 + 4);
    swift_getErrorValue();
    v10 = sub_F12AC();
    v11 = v16;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_94EA4()
{
  sub_388C8(&qword_128288, &qword_F3460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_F2C60;
  *(v1 + 32) = 0xD000000000000032;
  *(v1 + 40) = 0x80000000000FF6B0;
  v2._object = *(v0 + 16);
  if (v2._object)
  {
    v2._countAndFlagsBits = *(v0 + 8);
    sub_F08CC(v2);
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_6E2D8((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 16) = v4 + 1;
    v5 = v1 + 16 * v4;
    *(v5 + 32) = 0x3A747865746E6F43;
    *(v5 + 40) = 0xE900000000000020;
  }

  v6 = *(v0 + 32);
  if (v6)
  {
    v7 = *(v0 + 24);
    sub_F0F9C(21);

    v16._countAndFlagsBits = v7;
    v16._object = v6;
    sub_F08CC(v16);
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_6E2D8((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 16) = v9 + 1;
    v10 = v1 + 16 * v9;
    *(v10 + 32) = 0xD000000000000013;
    *(v10 + 40) = 0x80000000000FF710;
  }

  if (*(v0 + 40))
  {
    swift_errorRetain();
    sub_F0F9C(21);

    swift_getErrorValue();
    v17._countAndFlagsBits = sub_F12AC();
    sub_F08CC(v17);

    v12 = *(v1 + 16);
    v11 = *(v1 + 24);
    if (v12 >= v11 >> 1)
    {
      v1 = sub_6E2D8((v11 > 1), v12 + 1, 1, v1);
    }

    *(v1 + 16) = v12 + 1;
    v13 = v1 + 16 * v12;
    *(v13 + 32) = 0xD000000000000013;
    *(v13 + 40) = 0x80000000000FF6F0;
  }

  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v14 = sub_F079C();

  return v14;
}

uint64_t sub_95138()
{
  sub_388C8(&qword_128288, &qword_F3460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_F2C60;
  *(v1 + 32) = 0xD000000000000032;
  *(v1 + 40) = 0x80000000000FF6B0;
  v2._object = *(v0 + 16);
  if (v2._object)
  {
    v2._countAndFlagsBits = *(v0 + 8);
    strcpy(v23, "Context: ");
    WORD1(v23[1]) = 0;
    HIDWORD(v23[1]) = -385875968;
    sub_F08CC(v2);
    v3 = v23[0];
    v4 = v23[1];
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_6E2D8((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 16) = v6 + 1;
    v7 = v1 + 16 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = v4;
  }

  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = *(v0 + 24);
    sub_F0F9C(21);

    v23[0] = 0xD000000000000013;
    v23[1] = 0x80000000000FF710;
    v24._countAndFlagsBits = v9;
    v24._object = v8;
    sub_F08CC(v24);
    v11 = *(v1 + 16);
    v10 = *(v1 + 24);
    if (v11 >= v10 >> 1)
    {
      v1 = sub_6E2D8((v10 > 1), v11 + 1, 1, v1);
    }

    *(v1 + 16) = v11 + 1;
    v12 = v1 + 16 * v11;
    *(v12 + 32) = 0xD000000000000013;
    *(v12 + 40) = 0x80000000000FF710;
  }

  if (*(v0 + 40))
  {
    swift_errorRetain();
    sub_F0F9C(21);

    v23[0] = 0xD000000000000013;
    v23[1] = 0x80000000000FF6F0;
    swift_getErrorValue();
    v25._countAndFlagsBits = sub_F12AC();
    sub_F08CC(v25);

    v14 = *(v1 + 16);
    v13 = *(v1 + 24);
    if (v14 >= v13 >> 1)
    {
      v1 = sub_6E2D8((v13 > 1), v14 + 1, 1, v1);
    }

    *(v1 + 16) = v14 + 1;
    v15 = v1 + 16 * v14;
    *(v15 + 32) = 0xD000000000000013;
    *(v15 + 40) = 0x80000000000FF6F0;
    strcpy(v23, "Error Dump: ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    swift_errorRetain();
    sub_388C8(&qword_127B88, &qword_F3680);
    v26._countAndFlagsBits = sub_F085C();
    sub_F08CC(v26);

    v16 = v23[0];
    v17 = v23[1];
    v19 = *(v1 + 16);
    v18 = *(v1 + 24);
    if (v19 >= v18 >> 1)
    {
      v1 = sub_6E2D8((v18 > 1), v19 + 1, 1, v1);
    }

    *(v1 + 16) = v19 + 1;
    v20 = v1 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
  }

  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v21 = sub_F079C();

  return v21;
}

uint64_t sub_9546C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_F03DC();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_F03EC();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v55 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_F03CC();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_F042C();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v48 - v21;
  if (qword_1279E8 != -1)
  {
    swift_once();
  }

  v23 = sub_3C96C(v18, qword_127BB0);
  (*(v19 + 16))(v22, v23, v18);
  sub_F044C();
  (*(v19 + 8))(v22, v18);
  if (v62[0] == 1)
  {
    *v62 = *(v2 + 40);
    v51 = v6;
    v52 = v3;
    v50 = v17;
    if (*v62)
    {
      sub_96C3C(v62, v61);
      if (sub_96B08())
      {
        v24 = v7;
        sub_F041C();
        sub_372B0(v62, &qword_128A90, &qword_F3D68);
LABEL_10:
        v26 = sub_94D0C();
        v48[3] = v27;
        v48[4] = v26;
        v28 = sub_95138();
        v48[1] = v29;
        v48[2] = v28;
        v30 = *(v58 + 104);
        v48[0] = v13;
        v30(v13, enum case for TapToRadarDraft.Classification.crashHangDataLoss(_:), v59);
        v31 = v55;
        v32 = v56;
        v33 = *(v56 + 104);
        v49 = v24;
        v33(v55, enum case for TapToRadarDraft.Reproducibility.iDidntTry(_:), v24);
        sub_388C8(&qword_128A88, &qword_F3D60);
        v34 = sub_F03BC();
        v35 = *(v34 - 8);
        v36 = *(v35 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_F2C70;
        v39 = v38 + v37;
        v40 = *(v35 + 104);
        v40(v39, enum case for TapToRadarDraft.DeviceClass.iPhone(_:), v34);
        v40(v39 + v36, enum case for TapToRadarDraft.DeviceClass.appleWatch(_:), v34);
        v41 = v57;
        v43 = v51;
        v42 = v52;
        (*(v57 + 104))(v51, enum case for TapToRadarDraft.AutoDiagnostics.all(_:), v52);
        v44 = v50;
        v45 = v48[0];
        sub_F03AC();

        (*(v41 + 8))(v43, v42);
        (*(v32 + 8))(v31, v49);
        (*(v58 + 8))(v45, v59);
        (*(v53 + 8))(v44, v54);
        v25 = 0;
        goto LABEL_11;
      }

      sub_372B0(v62, &qword_128A90, &qword_F3D68);
    }

    v24 = v7;
    sub_F040C();
    goto LABEL_10;
  }

  v25 = 1;
LABEL_11:
  v46 = sub_F043C();
  return (*(*(v46 - 8) + 56))(v60, v25, 1, v46);
}

uint64_t sub_95AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_95AC4, 0, 0);
}

uint64_t sub_95AC4()
{
  v1 = v0[3];
  v2 = sub_94EA4();
  v4 = v3;
  v0[4] = v3;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_95B90;
  v6 = v0[2];

  return sub_95CA0(0xD000000000000017, 0x80000000000FF670, v2, v4);
}

uint64_t sub_95B90()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_95CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = a4;
  v5[37] = v4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = sub_F06CC();
  v5[38] = v6;
  v7 = *(v6 - 8);
  v5[39] = v7;
  v8 = *(v7 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();

  return _swift_task_switch(sub_95D80, 0, 0);
}

uint64_t sub_95D80()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v37 = objc_opt_self();
  v5 = sub_F035C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_F034C();
  sub_F032C();
  (*(v6 + 8))(v8, v5);
  v9 = sub_F07BC();

  v10 = sub_F07BC();
  v11 = sub_F07BC();
  v12 = sub_F07BC();
  v13 = sub_F07BC();
  v14 = [v37 userNotificationWithIdentifier:v9 title:v10 message:v11 defaultButton:v12 alternateButton:v13 otherButton:0];

  if (v14)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  *(v0 + 9) = v38;
  *(v0 + 10) = v39;
  if (v0[21])
  {
    sub_37310(0, &qword_128A68, IMUserNotification_ptr);
    if (swift_dynamicCast())
    {
      v15 = v0[30];
      v0[43] = v15;
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 sharedInstance];
      if (v18)
      {
        sub_F0E6C();
        swift_unknownObjectRelease();
        sub_54F88(v0 + 13, v0 + 11);
        sub_37310(0, &qword_128A70, IMUserNotificationCenter_ptr);
        swift_dynamicCast();
        v19 = v0[31];
        v0[44] = v19;
        v0[2] = v0;
        v0[7] = v0 + 32;
        v0[3] = sub_96254;
        v20 = swift_continuation_init();
        v0[17] = sub_388C8(&qword_128A78, &qword_F3D58);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_968A4;
        v0[13] = &unk_11EEA0;
        v0[14] = v20;
        [v19 addUserNotification:v17 listener:0 completionHandler:v0 + 10];
        v18 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v18);
    }
  }

  else
  {
    sub_372B0((v0 + 18), &unk_127FB0, &qword_F2F40);
  }

  v21 = v0[41];
  v22 = v0[38];
  v23 = v0[39];
  v24 = Logger.rcs.unsafeMutableAddressor();
  (*(v23 + 16))(v21, v24, v22);
  v25 = sub_F06AC();
  v26 = sub_F0CEC();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[41];
  v29 = v0[38];
  v30 = v0[39];
  if (v27)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v25, v26, "Failed to create IMUserNotification for TTR, TTR will not proceed", v31, 2u);
  }

  (*(v30 + 8))(v28, v29);
  v33 = v0[41];
  v32 = v0[42];
  v34 = v0[40];

  v35 = v0[1];

  return v35(0);
}

uint64_t sub_96254()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_96334, 0, 0);
}

uint64_t sub_96334()
{
  v1 = v0[32];
  v2 = v0[43];
  if (v1)
  {

    v2 = v0[43];
  }

  else
  {
    v1 = v0[43];
  }

  v0[45] = v1;

  if ([v1 response])
  {
    v3 = v0[42];
    v4 = v0[38];
    v5 = v0[39];
    v6 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_F06AC();
    v8 = sub_F0CDC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[44];
    v11 = v0[42];
    v12 = v0[38];
    v13 = v0[39];
    if (v9)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v7, v8, "User declined TTR, not proceeding", v14, 2u);
    }

    (*(v13 + 8))(v11, v12);
    v16 = v0[41];
    v15 = v0[42];
    v17 = v0[40];

    v18 = v0[1];

    return v18(0);
  }

  else
  {
    v20 = async function pointer to TapToRadarDraft.open()[1];
    v21 = swift_task_alloc();
    v0[46] = v21;
    *v21 = v0;
    v21[1] = sub_96534;
    v22 = v0[37];

    return TapToRadarDraft.open()();
  }
}

uint64_t sub_96534()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_966CC;
  }

  else
  {
    v3 = sub_96648;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_96648()
{
  v1 = *(v0 + 352);

  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);

  v5 = *(v0 + 8);

  return v5(1);
}

uint64_t sub_966CC()
{
  v1 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[45];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v6, v7, "Failed to open TTR: %@", v12, 0xCu);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);
  }

  else
  {
  }

  (*(v0[39] + 8))(v0[40], v0[38]);
  v16 = v0[41];
  v15 = v0[42];
  v17 = v0[40];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_968A4(uint64_t a1, void *a2)
{
  v3 = sub_373E8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_96970(uint64_t a1)
{
  v4 = *(sub_F043C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_95AA4(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_96AA4()
{
  result = qword_128A80;
  if (!qword_128A80)
  {
    sub_3CB70(&qword_128558, &unk_F4430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128A80);
  }

  return result;
}

uint64_t sub_96B08()
{
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_F083C();
  swift_getErrorValue();
  sub_F12AC();
  sub_3CBB8();
  v0 = sub_F0E5C();

  if (v0)
  {

    v1 = 1;
  }

  else
  {
    v1 = sub_F0E5C();
  }

  return v1 & 1;
}

uint64_t sub_96C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128A90, &qword_F3D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_96CAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_96CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_96D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSHandle.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSHandle.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_96EF8()
{
  result = qword_128A98;
  if (!qword_128A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128A98);
  }

  return result;
}

uint64_t sub_96F4C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11DE50;
  v6._object = a2;
  v4 = sub_F112C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t RCSParticipantChange.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_F035C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9705C(uint64_t a1)
{
  v2 = sub_98FB0(&qword_128030);

  return RCSOperationController.OperationID.description.getter(a1, v2);
}

char *RCSOutgoingMessageController.init(session:operationConfiguration:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_client;
  v7 = im_primary_queue();
  v8 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v7];

  *&v3[v6] = v8;
  swift_unknownObjectUnownedInit();
  v10 = *a2;
  v9 = a2[1];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[0] = v10;
  v18[1] = v9;
  v18[2] = &unk_F3E68;
  v18[3] = v11;
  v19 = 0;
  type metadata accessor for RCSOperationController();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController] = RCSOperationController.init(configuration:)(v18);
  v17.receiver = v3;
  v17.super_class = type metadata accessor for RCSOutgoingMessageController();
  v12 = objc_msgSendSuper2(&v17, "init");
  v13 = *&v12[OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_client];
  v14 = v12;
  v15 = v13;
  [v15 setDelegate:v14];
  sub_977C0(a2);

  return v14;
}

uint64_t sub_97238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_9725C, 0, 0);
}

uint64_t sub_9725C()
{
  sub_99040(*(v0 + 120), v0 + 16);
  v1 = *(v0 + 48);
  sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
  if (v1)
  {
    v2 = *(v0 + 128);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 144) = Strong;
    if (Strong)
    {
      v4 = *(v0 + 104);
      v5 = *(v0 + 112);
      *(v0 + 152) = sub_F07BC();
      sub_F0AEC();
      *(v0 + 160) = sub_F0ADC();
      v6 = sub_F0A6C();
      v8 = v7;
      v9 = sub_97464;
LABEL_8:

      return _swift_task_switch(v9, v6, v8);
    }

    v13 = *(v0 + 128);
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 168) = v14;
    if (v14)
    {
      v15 = *(v0 + 104);
      v16 = *(v0 + 112);
      *(v0 + 176) = sub_F07BC();
      sub_F0AEC();
      *(v0 + 184) = sub_F0ADC();
      v6 = sub_F0A6C();
      v8 = v17;
      v9 = sub_975EC;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *(v0 + 128);
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 136) = v11;
    if (v11)
    {
      sub_F0AEC();
      *(v0 + 192) = sub_F0ADC();
      v6 = sub_F0A6C();
      v8 = v12;
      v9 = sub_9766C;
      goto LABEL_8;
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_97464()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  [v3 didReceiveError:4 forMessageID:v2 forceError:1];

  return _swift_task_switch(sub_974F4, 0, 0);
}

uint64_t sub_974F4()
{
  v1 = v0[16];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[14];
    v0[22] = sub_F07BC();
    sub_F0AEC();
    v0[23] = sub_F0ADC();
    v6 = sub_F0A6C();

    return _swift_task_switch(sub_975EC, v6, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_975EC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  [v3 processMessageSendFailure:v2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_9766C()
{
  v1 = v0[24];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  sub_43EB0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_976EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_38B0C;

  return sub_97238(a1, a2, a3, v3);
}

uint64_t RCSOutgoingMessageController.sendMessage(id:executeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_97838, 0, 0);
}

uint64_t sub_97838()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v0[10] + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v0[5] = type metadata accessor for RCSOutgoingMessageController.OperationID();
  v0[6] = sub_98FB0(&qword_128030);
  v5 = sub_37474(v0 + 2);
  v6 = sub_F035C();
  (*(*(v6 - 8) + 16))(v5, v2, v6);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(*v4 + 216);

  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_97A2C;

  return v12(v0 + 2, &unk_F3E80, v7);
}

uint64_t sub_97A2C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_97B90, 0, 0);
  }

  else
  {
    sub_1EDC(v4 + 2);
    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_97B90()
{
  sub_1EDC(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t type metadata accessor for RCSOutgoingMessageController.OperationID()
{
  result = qword_128B40;
  if (!qword_128B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_97C40(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_37C54;

  return v7();
}

uint64_t RCSOutgoingMessageController.messageSendFailed(_:for:withError:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Logger.rcs.unsafeMutableAddressor();
  (*(v13 + 16))(v16, v17, v12);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = sub_F06AC();
  v22 = sub_F0CCC();

  if (os_log_type_enabled(v21, v22))
  {
    v45 = v22;
    v46 = v11;
    v47 = v4;
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v23 = 136446978;
    *(v23 + 4) = sub_3E850(0xD000000000000023, 0x80000000000FF750, &v48);
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

    v29 = sub_3E850(v26, v28, &v48);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    v30 = [v19 uuid];
    v31 = sub_F07EC();
    v33 = v32;

    v34 = sub_3E850(v31, v33, &v48);

    *(v23 + 24) = v34;
    *(v23 + 32) = 2112;
    *(v23 + 34) = v20;
    v35 = v43;
    *v43 = v20;
    v36 = v20;
    _os_log_impl(&dword_0, v21, v45, "%{public}s simID: %s id: %s error: %@", v23, 0x2Au);
    sub_372B0(v35, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v13 + 8))(v16, v12);
    v11 = v46;
    v4 = v47;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v37 = sub_F0B1C();
  (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v20;
  v38[5] = v4;
  v38[6] = v19;
  v39 = v19;
  v40 = v20;
  v41 = v4;
  sub_3CC0C(0, 0, v11, &unk_F3E98, v38);
}

uint64_t sub_9814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return _swift_task_switch(sub_98170, 0, 0);
}

uint64_t sub_98170()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_98FF4();
  v4 = NSError.init(operationError:)(v3);
  *(v0 + 56) = v4;
  v5 = *(v2 + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v6 = [v1 uuid];
  v7 = sub_F07EC();
  v9 = v8;

  *(v0 + 64) = v9;
  *(v0 + 16) = v4;
  *(v0 + 24) = 1;
  v10 = *(*v5 + 200);
  v11 = v4;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_98324;

  return v15(v7, v9, v0 + 16, &type metadata for () + 8);
}

uint64_t sub_98324()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_98454, 0, 0);
}

uint64_t sub_98454()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t RCSOutgoingMessageController.messageSendSuccess(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v11 + 16))(v14, v15, v10);
  v16 = a1;
  v17 = a2;
  v18 = sub_F06AC();
  v19 = sub_F0CCC();

  if (os_log_type_enabled(v18, v19))
  {
    v38 = v9;
    v39 = v3;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v20 = 136446722;
    *(v20 + 4) = sub_3E850(0xD00000000000001BLL, 0x80000000000FEA50, &v40);
    *(v20 + 12) = 2080;
    v21 = [v16 labelID];
    if (v21)
    {
      v22 = v21;
      v23 = sub_F07EC();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_3E850(v23, v25, &v40);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = [v17 uuid];
    v28 = sub_F07EC();
    v30 = v29;

    v31 = sub_3E850(v28, v30, &v40);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_0, v18, v19, "%{public}s simID: %s id: %s", v20, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v14, v10);
    v9 = v38;
    v3 = v39;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v32 = sub_F0B1C();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v3;
  v33[5] = v17;
  v34 = v17;
  v35 = v3;
  sub_3CC0C(0, 0, v9, &unk_F3EB0, v33);
}

uint64_t sub_98900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_98920, 0, 0);
}

uint64_t sub_98920()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v2 = [*(v0 + 40) uuid];
  v3 = sub_F07EC();
  v5 = v4;

  *(v0 + 48) = v5;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v6 = *(*v1 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_98AA0;

  return v10(v3, v5, v0 + 16, &type metadata for ()[8]);
}

uint64_t sub_98AA0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id RCSOutgoingMessageController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RCSOutgoingMessageController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSOutgoingMessageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_98D50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_9814C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_98E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38B0C;

  return sub_98900(a1, v4, v5, v7, v6);
}

uint64_t sub_98F00()
{
  result = sub_F035C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_98F6C(uint64_t a1)
{
  result = sub_98FB0(&qword_128B78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_98FB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSOutgoingMessageController.OperationID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_98FF4()
{
  result = qword_128B80;
  if (!qword_128B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128B80);
  }

  return result;
}

uint64_t sub_99040(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128B88, &qword_F3F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_990B0(uint64_t a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v111 - v9;
  __chkstk_darwin(v11);
  v116 = &v111 - v12;
  __chkstk_darwin(v13);
  v119 = &v111 - v14;
  v15 = type metadata accessor for RCSMessageSendItem.SendState(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v117 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v1;
  v18 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  v20 = v18[11];
  v19 = v18[12];
  v118 = v18;
  v21 = (v19 + 32);
  if (v20)
  {
    v120 = v7;
    v115 = v10;
    v22 = *(v20 + 16);
    sub_F12FC();
    v121 = a1;
    v23 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    v25 = *(v23 + 128);
    v24 = *(v23 + 136);

    sub_F089C();

    v26 = sub_F132C();
    v27 = 1 << *(v20 + 16);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      __break(1u);
      return;
    }

    v30 = v29 & v26;
    v31 = sub_F051C();
    *&v129 = v20 + 16;
    *(&v129 + 1) = v20 + 32;
    *&v130 = v30;
    *(&v130 + 1) = v31;
    *&v131 = v32;
    *(&v131 + 1) = v33;
    v132 = 0;
    v34 = sub_F053C();
    v7 = v120;
    if ((v35 & 1) == 0)
    {
      while (1)
      {
        v36 = v21[v34] + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v37 = *(v36 + 128) == *(v23 + 128) && *(v36 + 136) == *(v23 + 136);
        if (v37 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        sub_F055C();
        v123 = v129;
        v124 = v130;
        v125 = v131;
        v126 = v132;
        v34 = sub_F053C();
        if (v38)
        {
          goto LABEL_10;
        }
      }

LABEL_28:
      v86 = Logger.retries.unsafeMutableAddressor();
      (*(v4 + 16))(v7, v86, v3);

      v87 = sub_F06AC();
      v88 = sub_F0D0C();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v127 = v90;
        *v89 = 136315138;
        v91 = sub_5FBB8();
        v93 = sub_3E850(v91, v92, &v127);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_0, v87, v88, "Ignoring duplicate retry request for %s", v89, 0xCu);
        sub_1EDC(v90);
      }

      (*(v4 + 8))(v7, v3);
      return;
    }

LABEL_10:

    a1 = v121;
    v10 = v115;
  }

  else
  {
    v39 = *(v19 + 16);
    if (v39)
    {
      v40 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      do
      {
        v41 = *v21 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v42 = *(v41 + 128) == *(v40 + 128) && *(v41 + 136) == *(v40 + 136);
        if (v42 || (sub_F122C() & 1) != 0)
        {
          goto LABEL_28;
        }

        ++v21;
      }

      while (--v39);
    }
  }

  v43 = a1;
  v44 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context);
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 sharedManager];
  v48 = sub_F0D8C();

  if (v48 != 2 && (v48 & 1) != 0)
  {
    v49 = [v45 sharedManager];
    v113 = sub_F0D9C();

    v50 = sub_F030C();
    v121 = &v111;
    v51 = *(v50 - 8);
    v52 = *(v51 + 8);
    *&v53 = __chkstk_darwin(v50).n128_u64[0];
    v55 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = [v45 sharedManager];
    sub_F0DAC();

    v115 = v51;
    v57 = *(v51 + 2);
    v58 = v117;
    v114 = v55;
    v120 = v50;
    v57(v117, v55, v50);
    v59 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v59 - 8) + 56))(v58, 0, 4, v59);
    v60 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v58, a1 + v60);
    swift_endAccess();
    v61 = Logger.retries.unsafeMutableAddressor();
    v62 = *(v4 + 16);
    v63 = v119;
    v112 = v61;
    v117 = (v4 + 16);
    v111 = v62;
    (v62)(v119);

    v64 = sub_F06AC();
    v65 = v4;
    v66 = sub_F0D0C();

    if (os_log_type_enabled(v64, v66))
    {
      v67 = v3;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v127 = v69;
      *v68 = 136315394;
      v70 = sub_5FBB8();
      v72 = sub_3E850(v70, v71, &v127);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2048;
      *(v68 + 14) = v113;
      _os_log_impl(&dword_0, v64, v66, "Adding message %s to retry set with total retry interval %ld", v68, 0x16u);
      sub_1EDC(v69);

      v3 = v67;
      a1 = v43;

      v73 = *(v65 + 8);
      v73(v119, v3);
    }

    else
    {

      v73 = *(v65 + 8);
      v73(v63, v3);
    }

    v94 = v118;
    v95 = v118[12];
    v127 = v118[11];
    v128 = v95;

    sub_9E760(a1);
    v96 = v128;
    v98 = v94[11];
    v97 = v94[12];
    v94[11] = v127;
    v94[12] = v96;

    if (v94[10])
    {
    }

    else
    {
      v99 = v116;
      v111(v116, v112, v3);
      v100 = sub_F06AC();
      v101 = sub_F0D0C();
      v102 = os_log_type_enabled(v100, v101);
      v103 = v113;
      if (v102)
      {
        v104 = swift_slowAlloc();
        *v104 = 134217984;
        *(v104 + 4) = v103;
        _os_log_impl(&dword_0, v100, v101, "Building timer with interval %ld", v104, 0xCu);
      }

      v73(v99, v3);
      v105 = [objc_opt_self() timerWithTimeInterval:v122 target:"fireTimerWithTimer:" selector:0 userInfo:1 repeats:v103];
      v106 = v94[10];
      v94[10] = v105;

      v107 = v94[10];
      if (!v107)
      {
        (*(v115 + 1))(v114, v120);

        return;
      }

      v108 = objc_opt_self();
      v109 = v107;
      v110 = [v108 currentRunLoop];
      [v110 addTimer:v109 forMode:NSDefaultRunLoopMode];
    }

    (*(v115 + 1))(v114, v120);
    return;
  }

  v74 = Logger.retries.unsafeMutableAddressor();
  (*(v4 + 16))(v10, v74, v3);
  v75 = v46;

  v76 = sub_F06AC();
  v77 = sub_F0CEC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v121 = v3;
    v80 = v79;
    v81 = swift_slowAlloc();
    v127 = v81;
    *v78 = 138412546;
    *(v78 + 4) = v75;
    *v80 = v75;
    *(v78 + 12) = 2080;
    v82 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v83 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);
    v84 = v75;

    v85 = sub_3E850(v82, v83, &v127);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_0, v76, v77, "Retries not enabled for context %@, not retrying message %s).\nEnsure resiliency mode is enabled for this context from Telephony.", v78, 0x16u);
    sub_389D8(v80);

    sub_1EDC(v81);

    (*(v4 + 8))(v10, v121);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  sub_99C8C();
}

void sub_99C8C()
{
  v1 = v0;
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.retries.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_F06AC();
  v9 = sub_F0D0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Stopping all retries...", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  [*(v11 + 80) invalidate];
  v12 = *(v11 + 80);
  *(v11 + 80) = 0;
}

uint64_t sub_99E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_F06CC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_F0AEC();
  v5[7] = sub_F0ADC();
  v10 = sub_F0A6C();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_99F04, v10, v9);
}

uint64_t sub_99F04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = Logger.retries.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_F06AC();
  v6 = sub_F0D0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Retry timer fired", v7, 2u);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_9A054;
  v13 = v0[2];
  v12 = v0[3];

  return sub_9A1DC(v12);
}

uint64_t sub_9A054()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_9A174, v4, v3);
}

uint64_t sub_9A174()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_9A1DC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = *(*(type metadata accessor for RCSMessageSendItem.SendState(0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v4 = sub_F06CC();
  v2[23] = v4;
  v5 = *(v4 - 8);
  v2[24] = v5;
  v6 = *(v5 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_F0AEC();
  v2[33] = sub_F0ADC();
  v8 = sub_F0A6C();
  v2[34] = v8;
  v2[35] = v7;

  return _swift_task_switch(sub_9A350, v8, v7);
}

uint64_t sub_9A350()
{
  v148 = v0;
  v1 = *(v0 + 168);
  sub_9D3D0();
  v2 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 288) = v2;
  if (!*(*(v2 + 96) + 16))
  {
    v26 = *(v0 + 264);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 192);

    v30 = Logger.retries.unsafeMutableAddressor();
    (*(v29 + 16))(v27, v30, v28);
    v31 = sub_F06AC();
    v32 = sub_F0D0C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "No more eligible retries.", v33, 2u);
    }

    v34 = *(v0 + 208);
    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    v37 = *(v0 + 168);

    (*(v36 + 8))(v34, v35);
    sub_99C8C();
    goto LABEL_29;
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = Logger.retries.unsafeMutableAddressor();
  *(v0 + 296) = v7;
  v8 = *(v5 + 16);
  *(v0 + 304) = v8;
  *(v0 + 312) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v4);
  v9 = v6;
  v10 = sub_F06AC();
  v11 = sub_F0D0C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 256);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  if (v12)
  {
    v142 = *(v0 + 184);
    v16 = swift_slowAlloc();
    v134 = v11;
    v17 = swift_slowAlloc();
    v147 = v17;
    *v16 = 136315138;
    v18 = *(v2 + 88);
    v19 = *(v2 + 96);

    v21 = sub_A04D8(v20);
    v137 = v13;
    v23 = v22;

    v24 = sub_3E850(v21, v23, &v147);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_0, v10, v134, "Retry set after removing ineligible messages: %s", v16, 0xCu);
    sub_1EDC(v17);

    v25 = *(v14 + 8);
    v25(v137, v142);
  }

  else
  {

    v25 = *(v14 + 8);
    v25(v13, v15);
  }

  *(v0 + 320) = v25;
  *(v0 + 328) = *(v2 + 88);
  v38 = *(v2 + 96);
  *(v0 + 336) = v38;
  if (*(v38 + 16))
  {
    *(v0 + 360) = _swiftEmptySetSingleton;
    *(v0 + 368) = _swiftEmptySetSingleton;
    *(v0 + 344) = _swiftEmptySetSingleton;
    *(v0 + 352) = 0;
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v41 = *(v0 + 296);
    v42 = *(v0 + 248);
    v43 = *(v0 + 184);
    v44 = *(v38 + 32);
    *(v0 + 376) = v44;

    v40(v42, v41, v43);
    swift_retain_n();
    v45 = sub_F06AC();
    v46 = sub_F0D0C();

    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 320);
    v49 = *(v0 + 248);
    v50 = *(v0 + 184);
    if (v47)
    {
      v51 = *(v0 + 176);
      v143 = *(v0 + 192) + 8;
      v138 = *(v0 + 184);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v147 = v53;
      *v52 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      v54 = *(v0 + 120);

      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v133 = v49;
      v135 = v48;
      v55 = *(v44 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v56 = *(v44 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      v150._countAndFlagsBits = v55;
      v150._object = v56;
      sub_F08CC(v150);

      v151._countAndFlagsBits = 0x3A6574617473202CLL;
      v151._object = 0xE900000000000020;
      sub_F08CC(v151);
      v57 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v44 + v57, v51);
      v152._countAndFlagsBits = sub_6018C();
      sub_F08CC(v152);

      sub_A06E0(v51);

      v58 = sub_3E850(*(v0 + 96), *(v0 + 104), &v147);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_0, v45, v46, "Attempting send for %s", v52, 0xCu);
      sub_1EDC(v53);

      v135(v133, v138);
    }

    else
    {

      v48(v49, v50);
    }

    if (qword_127AD0 != -1)
    {
      swift_once();
    }

    *(v0 + 384) = qword_12FC20;
    v61 = [*(v44 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
    if (v61)
    {
      v64 = v61;
      v65 = sub_F07EC();
      v67 = v66;

      *(v0 + 392) = v65;
      *(v0 + 400) = v67;
      sub_F039C();
      sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue);
      v68 = sub_F0A6C();
      v70 = v69;
      v61 = sub_9AE2C;
      v62 = v68;
      v63 = v70;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v61, v62, v63);
  }

  v59 = *(v0 + 264);

  v60 = *(v0 + 336);

  if (_swiftEmptySetSingleton >> 62)
  {

    v71 = sub_F0EDC();

    if (!v71)
    {
      goto LABEL_25;
    }
  }

  else if (!_swiftEmptySetSingleton[2])
  {
    goto LABEL_25;
  }

  v72 = *(v0 + 312);
  (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
  v73 = sub_F06AC();
  v74 = sub_F0CDC();
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v0 + 320);
  v77 = *(v0 + 224);
  v79 = *(v0 + 184);
  v78 = *(v0 + 192);
  if (v75)
  {
    v144 = *(v0 + 320);
    v80 = swift_slowAlloc();
    v139 = v77;
    v81 = swift_slowAlloc();
    v147 = v81;
    *v80 = 136315138;
    type metadata accessor for RCSMessageSendItem(0);
    sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem);

    v82 = sub_F0C2C();
    v84 = v83;

    v85 = sub_3E850(v82, v84, &v147);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_0, v73, v74, "Removing sent messages from retry set: %s", v80, 0xCu);
    sub_1EDC(v81);

    v144(v139, v79);
  }

  else
  {

    v76(v77, v79);
  }

LABEL_25:
  v86 = *(v0 + 304);
  v88 = *(v0 + 288);
  v87 = *(v0 + 296);
  v89 = *(v0 + 216);
  v90 = *(v0 + 184);
  v91 = *(v0 + 168);
  v140 = *(v0 + 312);
  v145 = *(v0 + 160);
  v92 = *(v88 + 88);
  v93 = *(v88 + 96);

  v95 = sub_9ED8C(v94, v92, v93);
  v97 = v96;

  v99 = *(v88 + 88);
  v98 = *(v88 + 96);
  *(v88 + 88) = v95;
  *(v88 + 96) = v97;

  v86(v89, v87, v90);
  v100 = v91;
  v101 = v145;
  v102 = sub_F06AC();
  v103 = sub_F0CDC();

  v104 = os_log_type_enabled(v102, v103);
  v105 = *(v0 + 320);
  if (v104)
  {
    v106 = *(v0 + 288);
    v136 = *(v0 + 192);
    v141 = *(v0 + 184);
    v146 = *(v0 + 216);
    v107 = *(v0 + 160);
    v108 = *(v0 + 320);
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v147 = v110;
    *v109 = 134218242;
    [v107 timeInterval];
    *(v109 + 4) = v111;
    *(v109 + 12) = 2080;
    v112 = *(v106 + 88);
    v113 = *(v106 + 96);

    v115 = sub_A04D8(v114);
    v117 = v116;

    v118 = sub_3E850(v115, v117, &v147);

    *(v109 + 14) = v118;
    _os_log_impl(&dword_0, v102, v103, "Messages to retry on next interval in %fs: %s", v109, 0x16u);
    sub_1EDC(v110);

    v108(v146, v141);
  }

  else
  {
    v119 = *(v0 + 216);
    v120 = *(v0 + 184);
    v121 = *(v0 + 192);

    v105(v119, v120);
  }

LABEL_29:
  v123 = *(v0 + 248);
  v122 = *(v0 + 256);
  v125 = *(v0 + 232);
  v124 = *(v0 + 240);
  v127 = *(v0 + 216);
  v126 = *(v0 + 224);
  v129 = *(v0 + 200);
  v128 = *(v0 + 208);
  v130 = *(v0 + 176);

  v131 = *(v0 + 8);

  return v131();
}

uint64_t sub_9AE2C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  *(v0 + 424) = sub_F036C() & 1;

  v4 = *(v0 + 272);
  v5 = *(v0 + 280);

  return _swift_task_switch(sub_9AEA8, v4, v5);
}

uint64_t sub_9AEA8()
{
  v136 = v0;
  if (*(v0 + 424))
  {
    v1 = swift_task_alloc();
    *(v0 + 408) = v1;
    *v1 = v0;
    v1[1] = sub_9B9C4;
    v2 = *(v0 + 376);
    v3 = *(v0 + 168);

    return sub_85668(v2);
  }

  v5 = *(v0 + 376);
  v6 = *(v0 + 312);
  (*(v0 + 304))(*(v0 + 232), *(v0 + 296), *(v0 + 184));

  v7 = sub_F06AC();
  v8 = sub_F0CCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 376);
  v11 = *(v0 + 320);
  v12 = *(v0 + 232);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  if (v9)
  {
    v15 = *(v0 + 176);
    v130 = *(v0 + 184);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v135 = v17;
    *v16 = 136315138;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;

    sub_F0F9C(25);
    v18 = *(v0 + 88);

    strcpy((v0 + 64), "originalID: ");
    *(v0 + 77) = 0;
    *(v0 + 78) = -5120;
    v123 = v12;
    v126 = v11;
    v19 = *(v10 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v20 = *(v10 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    v138._countAndFlagsBits = v19;
    v138._object = v20;
    sub_F08CC(v138);

    v139._countAndFlagsBits = 0x3A6574617473202CLL;
    v139._object = 0xE900000000000020;
    sub_F08CC(v139);
    v21 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_60478(v10 + v21, v15);
    v140._countAndFlagsBits = sub_6018C();
    sub_F08CC(v140);

    sub_A06E0(v15);

    v22 = sub_3E850(*(v0 + 64), *(v0 + 72), &v135);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v7, v8, "Skipping retry attempt for %s as we're still waiting for results from previous retry", v16, 0xCu);
    sub_1EDC(v17);

    v126(v123, v130);
  }

  else
  {
    v23 = *(v0 + 376);

    v11(v12, v14);
  }

  v24 = *(v0 + 336);
  v25 = *(v0 + 352) + 1;
  v26 = *(v24 + 16);
  if (v25 == v26)
  {
    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v29 = *(v0 + 328);
    v30 = *(v0 + 264);

    v31 = *(v0 + 336);

    if ((v27 & 0xC000000000000001) != 0)
    {

      v32 = sub_F0EDC();

      if (!v32)
      {
        goto LABEL_25;
      }
    }

    else if (!*(v27 + 16))
    {
      goto LABEL_25;
    }

    v63 = *(v0 + 312);
    (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
    v64 = sub_F06AC();
    v65 = sub_F0CDC();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 320);
    v68 = *(v0 + 224);
    v70 = *(v0 + 184);
    v69 = *(v0 + 192);
    if (v66)
    {
      v132 = *(v0 + 224);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v135 = v72;
      *v71 = 136315138;
      type metadata accessor for RCSMessageSendItem(0);
      sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem);

      v73 = sub_F0C2C();
      v75 = v74;

      v76 = sub_3E850(v73, v75, &v135);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_0, v64, v65, "Removing sent messages from retry set: %s", v71, 0xCu);
      sub_1EDC(v72);

      v67(v132, v70);
    }

    else
    {

      v67(v68, v70);
    }

LABEL_25:
    v77 = *(v0 + 304);
    v128 = *(v0 + 312);
    v78 = *(v0 + 288);
    v79 = *(v0 + 296);
    v80 = *(v0 + 216);
    v81 = *(v0 + 184);
    v82 = *(v0 + 168);
    v133 = *(v0 + 160);
    v83 = *(v78 + 88);
    v84 = *(v78 + 96);

    v86 = sub_9ED8C(v85, v83, v84);
    v88 = v87;

    v90 = *(v78 + 88);
    v89 = *(v78 + 96);
    *(v78 + 88) = v86;
    *(v78 + 96) = v88;

    v77(v80, v79, v81);
    v91 = v82;
    v92 = v133;
    v93 = sub_F06AC();
    v94 = sub_F0CDC();

    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 320);
    if (v95)
    {
      v97 = *(v0 + 288);
      v125 = *(v0 + 192);
      v129 = *(v0 + 184);
      v134 = *(v0 + 216);
      v98 = *(v0 + 160);
      v122 = *(v0 + 320);
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v135 = v100;
      *v99 = 134218242;
      [v98 timeInterval];
      *(v99 + 4) = v101;
      *(v99 + 12) = 2080;
      v102 = *(v97 + 88);
      v103 = *(v97 + 96);

      v105 = sub_A04D8(v104);
      v107 = v106;

      v108 = sub_3E850(v105, v107, &v135);

      *(v99 + 14) = v108;
      _os_log_impl(&dword_0, v93, v94, "Messages to retry on next interval in %fs: %s", v99, 0x16u);
      sub_1EDC(v100);

      v122(v134, v129);
    }

    else
    {
      v109 = *(v0 + 216);
      v111 = *(v0 + 184);
      v110 = *(v0 + 192);

      v96(v109, v111);
    }

    v113 = *(v0 + 248);
    v112 = *(v0 + 256);
    v115 = *(v0 + 232);
    v114 = *(v0 + 240);
    v117 = *(v0 + 216);
    v116 = *(v0 + 224);
    v119 = *(v0 + 200);
    v118 = *(v0 + 208);
    v120 = *(v0 + 176);

    v121 = *(v0 + 8);

    return v121();
  }

  *(v0 + 352) = v25;
  if (v25 >= v26)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v0 + 304);
    v33 = *(v0 + 312);
    v35 = *(v0 + 296);
    v36 = *(v0 + 248);
    v37 = *(v0 + 184);
    v7 = *(v24 + 8 * v25 + 32);
    *(v0 + 376) = v7;
    v34(v36, v35, v37);
    swift_retain_n();
    v38 = sub_F06AC();
    v39 = sub_F0D0C();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 320);
    v42 = *(v0 + 248);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    if (v40)
    {
      v45 = *(v0 + 176);
      v131 = *(v0 + 184);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v135 = v47;
      *v46 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      v48 = *(v0 + 120);

      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v124 = v42;
      v127 = v41;
      v49 = *(&v7[16].isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
      v50 = *(&v7[17].isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);

      v141._countAndFlagsBits = v49;
      v141._object = v50;
      sub_F08CC(v141);

      v142._countAndFlagsBits = 0x3A6574617473202CLL;
      v142._object = 0xE900000000000020;
      sub_F08CC(v142);
      v51 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v7 + v51, v45);
      v143._countAndFlagsBits = sub_6018C();
      sub_F08CC(v143);

      sub_A06E0(v45);

      v52 = sub_3E850(*(v0 + 96), *(v0 + 104), &v135);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_0, v38, v39, "Attempting send for %s", v46, 0xCu);
      sub_1EDC(v47);

      v127(v124, v131);
    }

    else
    {

      v41(v42, v44);
    }

    if (qword_127AD0 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  *(v0 + 384) = qword_12FC20;
  v53 = [*(&v7->isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (v53)
  {
    v56 = v53;
    v57 = sub_F07EC();
    v59 = v58;

    *(v0 + 392) = v57;
    *(v0 + 400) = v59;
    sub_F039C();
    sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue);
    v60 = sub_F0A6C();
    v62 = v61;
    v53 = sub_9AE2C;
    v54 = v60;
    v55 = v62;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v53, v54, v55);
}

uint64_t sub_9B9C4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_9C818;
  }

  else
  {
    v7 = sub_9BB00;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_9BB00()
{
  v170 = v0;
  v2 = *(v0 + 376);
  v3 = *(v0 + 312);
  (*(v0 + 304))(*(v0 + 240), *(v0 + 296), *(v0 + 184));

  v4 = sub_F06AC();
  v5 = sub_F0D0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v7 = *(v0 + 240);
    v8 = *(v0 + 184);
    v162 = *(v0 + 192) + 8;
    v167 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v169[0] = v1;
    *v9 = 136315138;

    v10 = sub_5FBB8();
    v12 = v11;

    v13 = sub_3E850(v10, v12, v169);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "Successfully resent message %s", v9, 0xCu);
    sub_1EDC(v1);

    v167(v7, v8);
  }

  else
  {
    v14 = *(v0 + 320);
    v15 = *(v0 + 240);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);

    v14(v15, v16);
  }

  isUniquelyReferenced_nonNull_native = *(v0 + 368);
  v19 = *(v0 + 376);
  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
  {
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      v20 = *(v0 + 368);
    }

    else
    {
      v20 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v0 + 376);

    isUniquelyReferenced_nonNull_native = sub_F0EEC();

    if (!isUniquelyReferenced_nonNull_native)
    {
      v39 = sub_F0EDC();
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        do
        {
          __break(1u);
LABEL_72:
          sub_9E0F0();
LABEL_21:
          v38 = *v19;
LABEL_39:
          v55 = *(v0 + 376);
          *(v38 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v1;
          *(*(v38 + 48) + 8 * v1) = v55;
          v56 = *(v38 + 16);
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
        }

        while (v57);
        v59 = *(v0 + 376);
        *(v38 + 16) = v58;
      }

      else
      {
        v38 = sub_9D7C4(v20, v39 + 1);
        *(v0 + 128) = v38;
        v40 = *(v38 + 16);
        if (*(v38 + 24) <= v40)
        {
          sub_9DC4C(v40 + 1);
          v38 = *(v0 + 128);
        }

        isUniquelyReferenced_nonNull_native = *(v0 + 368);
        v41 = *(v0 + 376);

        sub_9DEC8(v42, v38);
      }

      v45 = v38;
      v44 = v38;
LABEL_42:
      v60 = *(v0 + 336);
      v61 = *(v0 + 352) + 1;
      v62 = *(v60 + 16);
      if (v61 == v62)
      {
        v63 = *(v0 + 328);
        v64 = *(v0 + 264);

        v65 = *(v0 + 336);

        if ((v44 & 0xC000000000000001) != 0)
        {

          v66 = sub_F0EDC();

          if (!v66)
          {
            goto LABEL_59;
          }
        }

        else if (!*(v44 + 16))
        {
          goto LABEL_59;
        }

        v96 = *(v0 + 312);
        (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
        v97 = sub_F06AC();
        v98 = sub_F0CDC();
        v99 = os_log_type_enabled(v97, v98);
        v100 = *(v0 + 320);
        v101 = *(v0 + 224);
        v103 = *(v0 + 184);
        v102 = *(v0 + 192);
        if (v99)
        {
          v164 = *(v0 + 224);
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v169[0] = v105;
          *v104 = 136315138;
          type metadata accessor for RCSMessageSendItem(0);
          sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem);

          v106 = sub_F0C2C();
          v108 = v107;

          v109 = sub_3E850(v106, v108, v169);

          *(v104 + 4) = v109;
          _os_log_impl(&dword_0, v97, v98, "Removing sent messages from retry set: %s", v104, 0xCu);
          sub_1EDC(v105);

          v100(v164, v103);
        }

        else
        {

          v100(v101, v103);
        }

LABEL_59:
        v110 = *(v0 + 304);
        v160 = *(v0 + 312);
        v111 = *(v0 + 288);
        v112 = *(v0 + 296);
        v113 = *(v0 + 216);
        v114 = *(v0 + 184);
        v115 = *(v0 + 168);
        v165 = *(v0 + 160);
        v116 = *(v111 + 88);
        v117 = *(v111 + 96);

        v119 = sub_9ED8C(v118, v116, v117);
        v121 = v120;

        v123 = *(v111 + 88);
        v122 = *(v111 + 96);
        *(v111 + 88) = v119;
        *(v111 + 96) = v121;

        v110(v113, v112, v114);
        v124 = v115;
        v125 = v165;
        v126 = sub_F06AC();
        v127 = sub_F0CDC();

        v128 = os_log_type_enabled(v126, v127);
        v129 = *(v0 + 320);
        if (v128)
        {
          v130 = *(v0 + 288);
          v158 = *(v0 + 192);
          v161 = *(v0 + 184);
          v166 = *(v0 + 216);
          v131 = *(v0 + 160);
          v156 = *(v0 + 320);
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v169[0] = v133;
          *v132 = 134218242;
          [v131 timeInterval];
          *(v132 + 4) = v134;
          *(v132 + 12) = 2080;
          v135 = *(v130 + 88);
          v136 = *(v130 + 96);

          v138 = sub_A04D8(v137);
          v140 = v139;

          v141 = sub_3E850(v138, v140, v169);

          *(v132 + 14) = v141;
          _os_log_impl(&dword_0, v126, v127, "Messages to retry on next interval in %fs: %s", v132, 0x16u);
          sub_1EDC(v133);

          v156(v166, v161);
        }

        else
        {
          v142 = *(v0 + 216);
          v144 = *(v0 + 184);
          v143 = *(v0 + 192);

          v129(v142, v144);
        }

        v146 = *(v0 + 248);
        v145 = *(v0 + 256);
        v148 = *(v0 + 232);
        v147 = *(v0 + 240);
        v150 = *(v0 + 216);
        v149 = *(v0 + 224);
        v152 = *(v0 + 200);
        v151 = *(v0 + 208);
        v153 = *(v0 + 176);

        v154 = *(v0 + 8);

        return v154();
      }

      *(v0 + 360) = v45;
      *(v0 + 368) = v44;
      *(v0 + 344) = v38;
      *(v0 + 352) = v61;
      if (v61 >= v62)
      {
        __break(1u);
      }

      else
      {
        v68 = *(v0 + 304);
        v67 = *(v0 + 312);
        v69 = *(v0 + 296);
        v70 = *(v0 + 248);
        v71 = *(v0 + 184);
        isUniquelyReferenced_nonNull_native = *(v60 + 8 * v61 + 32);
        *(v0 + 376) = isUniquelyReferenced_nonNull_native;
        v68(v70, v69, v71);
        swift_retain_n();
        v72 = sub_F06AC();
        v73 = sub_F0D0C();

        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 320);
        v76 = *(v0 + 248);
        v77 = *(v0 + 184);
        if (v74)
        {
          v78 = *(v0 + 176);
          v168 = *(v0 + 192) + 8;
          v163 = *(v0 + 184);
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v169[0] = v80;
          *v79 = 136315138;
          *(v0 + 112) = 0;
          *(v0 + 120) = 0xE000000000000000;

          sub_F0F9C(25);
          v81 = *(v0 + 120);

          strcpy((v0 + 96), "originalID: ");
          *(v0 + 109) = 0;
          *(v0 + 110) = -5120;
          v157 = v76;
          v159 = v75;
          v82 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
          v83 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

          v172._countAndFlagsBits = v82;
          v172._object = v83;
          sub_F08CC(v172);

          v173._countAndFlagsBits = 0x3A6574617473202CLL;
          v173._object = 0xE900000000000020;
          sub_F08CC(v173);
          v84 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
          swift_beginAccess();
          sub_60478(isUniquelyReferenced_nonNull_native + v84, v78);
          v174._countAndFlagsBits = sub_6018C();
          sub_F08CC(v174);

          sub_A06E0(v78);

          v85 = sub_3E850(*(v0 + 96), *(v0 + 104), v169);

          *(v79 + 4) = v85;
          _os_log_impl(&dword_0, v72, v73, "Attempting send for %s", v79, 0xCu);
          sub_1EDC(v80);

          v159(v157, v163);
        }

        else
        {

          v75(v76, v77);
        }

        if (qword_127AD0 == -1)
        {
          goto LABEL_51;
        }
      }

      swift_once();
LABEL_51:
      *(v0 + 384) = qword_12FC20;
      v86 = [*(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
      if (v86)
      {
        v89 = v86;
        v90 = sub_F07EC();
        v92 = v91;

        *(v0 + 392) = v90;
        *(v0 + 400) = v92;
        sub_F039C();
        sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue);
        v93 = sub_F0A6C();
        v95 = v94;
        v86 = sub_9AE2C;
        v87 = v93;
        v88 = v95;
      }

      else
      {
        __break(1u);
      }

      return _swift_task_switch(v86, v87, v88);
    }

    v23 = *(v0 + 368);
    v22 = *(v0 + 376);

    *(v0 + 144) = isUniquelyReferenced_nonNull_native;
    type metadata accessor for RCSMessageSendItem(0);
    swift_dynamicCast();
    v24 = *(v0 + 136);
LABEL_27:

    v45 = *(v0 + 360);
    v44 = *(v0 + 368);
    v38 = *(v0 + 344);
    goto LABEL_42;
  }

  v25 = *(isUniquelyReferenced_nonNull_native + 40);
  sub_F12FC();
  v26 = v19 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v27 = *(v19 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v28 = *(v26 + 17);

  sub_F089C();

  v29 = sub_F132C();
  v30 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  v1 = v29 & ~v30;
  if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
  {
    v31 = ~v30;
    while (1)
    {
      v32 = *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v1) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v33 = *(v32 + 128) == *(v26 + 16) && *(v32 + 136) == *(v26 + 17);
      if (v33 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      v1 = (v1 + 1) & v31;
      if (((*(isUniquelyReferenced_nonNull_native + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v43 = *(v0 + 376);
    goto LABEL_27;
  }

LABEL_18:
  v19 = (v0 + 152);
  v34 = *(v0 + 376);
  v35 = *(v0 + 344);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v35;
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);

  if (v36 > v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_72;
    }

    v19 = (v0 + 344);
    goto LABEL_21;
  }

  v46 = v37 + 1;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_9DC4C(v46);
  }

  else
  {
    sub_9E478(v46);
  }

  v38 = *v19;
  v47 = *(*v19 + 40);
  sub_F12FC();
  v49 = *(v26 + 16);
  v48 = *(v26 + 17);

  sub_F089C();

  v19 = v169;
  v50 = sub_F132C();
  isUniquelyReferenced_nonNull_native = v38 + 56;
  v51 = -1 << *(v38 + 32);
  v1 = v50 & ~v51;
  if (((*(v38 + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
  {
    goto LABEL_39;
  }

  v52 = ~v51;
  v19 = type metadata accessor for RCSMessageSendItem(0);
  while (1)
  {
    v53 = *(*(v38 + 48) + 8 * v1) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    v54 = *(v53 + 128) == *(v26 + 16) && *(v53 + 136) == *(v26 + 17);
    if (v54 || (sub_F122C() & 1) != 0)
    {
      break;
    }

    v1 = (v1 + 1) & v52;
    if (((*(isUniquelyReferenced_nonNull_native + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  return sub_F125C();
}

uint64_t sub_9C818()
{
  v137 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 376);
  v3 = *(v0 + 312);
  v4 = *(v0 + 160);
  (*(v0 + 304))(*(v0 + 200), *(v0 + 296), *(v0 + 184));

  v5 = v4;
  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 416);
  v10 = *(v0 + 376);
  v11 = *(v0 + 320);
  v12 = *(v0 + 200);
  v13 = *(v0 + 184);
  if (v8)
  {
    v121 = *(v0 + 160);
    v130 = *(v0 + 200);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v126 = v13;
    v16 = swift_slowAlloc();
    v136 = v16;
    *v14 = 138412802;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2080;
    v123 = v11;
    v18 = *(v10 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v19 = *(v10 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    v20 = sub_3E850(v18, v19, &v136);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2048;
    [v121 timeInterval];
    *(v14 + 24) = v21;
    _os_log_impl(&dword_0, v6, v7, "Failed to retry send with error %@, skipping %s) until next retry interval in %fs)", v14, 0x20u);
    sub_389D8(v15);

    sub_1EDC(v16);

    v123(v130, v126);
  }

  else
  {
    v20 = *(v0 + 192) + 8;
    v22 = *(v0 + 416);

    v11(v12, v13);
  }

  v23 = *(v0 + 336);
  v24 = *(v0 + 352) + 1;
  v25 = *(v23 + 16);
  if (v24 == v25)
  {
    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v28 = *(v0 + 328);
    v29 = *(v0 + 264);

    v30 = *(v0 + 336);

    if ((v26 & 0xC000000000000001) != 0)
    {

      v31 = sub_F0EDC();

      if (!v31)
      {
        goto LABEL_21;
      }
    }

    else if (!*(v26 + 16))
    {
      goto LABEL_21;
    }

    v61 = *(v0 + 312);
    (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
    v62 = sub_F06AC();
    v63 = sub_F0CDC();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 320);
    v66 = *(v0 + 224);
    v68 = *(v0 + 184);
    v67 = *(v0 + 192);
    if (v64)
    {
      v132 = *(v0 + 224);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v136 = v70;
      *v69 = 136315138;
      type metadata accessor for RCSMessageSendItem(0);
      sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem);

      v71 = sub_F0C2C();
      v73 = v72;

      v74 = sub_3E850(v71, v73, &v136);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_0, v62, v63, "Removing sent messages from retry set: %s", v69, 0xCu);
      sub_1EDC(v70);

      v65(v132, v68);
    }

    else
    {

      v65(v66, v68);
    }

LABEL_21:
    v75 = *(v0 + 304);
    v128 = *(v0 + 312);
    v76 = *(v0 + 288);
    v77 = *(v0 + 296);
    v78 = *(v0 + 216);
    v79 = *(v0 + 184);
    v80 = *(v0 + 168);
    v133 = *(v0 + 160);
    v81 = *(v76 + 88);
    v82 = *(v76 + 96);

    v84 = sub_9ED8C(v83, v81, v82);
    v86 = v85;

    v88 = *(v76 + 88);
    v87 = *(v76 + 96);
    *(v76 + 88) = v84;
    *(v76 + 96) = v86;

    v75(v78, v77, v79);
    v89 = v80;
    v90 = v133;
    v91 = sub_F06AC();
    v92 = sub_F0CDC();

    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 320);
    if (v93)
    {
      v95 = *(v0 + 288);
      v125 = *(v0 + 192);
      v129 = *(v0 + 184);
      v134 = *(v0 + 216);
      v96 = *(v0 + 160);
      v122 = *(v0 + 320);
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v136 = v98;
      *v97 = 134218242;
      [v96 timeInterval];
      *(v97 + 4) = v99;
      *(v97 + 12) = 2080;
      v100 = *(v95 + 88);
      v101 = *(v95 + 96);

      v103 = sub_A04D8(v102);
      v105 = v104;

      v106 = sub_3E850(v103, v105, &v136);

      *(v97 + 14) = v106;
      _os_log_impl(&dword_0, v91, v92, "Messages to retry on next interval in %fs: %s", v97, 0x16u);
      sub_1EDC(v98);

      v122(v134, v129);
    }

    else
    {
      v107 = *(v0 + 216);
      v109 = *(v0 + 184);
      v108 = *(v0 + 192);

      v94(v107, v109);
    }

    v111 = *(v0 + 248);
    v110 = *(v0 + 256);
    v113 = *(v0 + 232);
    v112 = *(v0 + 240);
    v115 = *(v0 + 216);
    v114 = *(v0 + 224);
    v117 = *(v0 + 200);
    v116 = *(v0 + 208);
    v118 = *(v0 + 176);

    v119 = *(v0 + 8);

    return v119();
  }

  *(v0 + 352) = v24;
  if (v24 >= v25)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v0 + 304);
    v32 = *(v0 + 312);
    v34 = *(v0 + 296);
    v35 = *(v0 + 248);
    v36 = *(v0 + 184);
    v20 = *(v23 + 8 * v24 + 32);
    *(v0 + 376) = v20;
    v33(v35, v34, v36);
    swift_retain_n();
    v37 = sub_F06AC();
    v38 = sub_F0D0C();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 320);
    v41 = *(v0 + 248);
    v42 = *(v0 + 184);
    if (v39)
    {
      v43 = *(v0 + 176);
      v135 = *(v0 + 192) + 8;
      v131 = *(v0 + 184);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v136 = v45;
      *v44 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      v46 = *(v0 + 120);

      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v124 = v41;
      v127 = v40;
      v47 = *(v20 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v48 = *(v20 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      v139._countAndFlagsBits = v47;
      v139._object = v48;
      sub_F08CC(v139);

      v140._countAndFlagsBits = 0x3A6574617473202CLL;
      v140._object = 0xE900000000000020;
      sub_F08CC(v140);
      v49 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v20 + v49, v43);
      v141._countAndFlagsBits = sub_6018C();
      sub_F08CC(v141);

      sub_A06E0(v43);

      v50 = sub_3E850(*(v0 + 96), *(v0 + 104), &v136);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_0, v37, v38, "Attempting send for %s", v44, 0xCu);
      sub_1EDC(v45);

      v127(v124, v131);
    }

    else
    {

      v40(v41, v42);
    }

    if (qword_127AD0 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  *(v0 + 384) = qword_12FC20;
  v51 = [*(v20 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (v51)
  {
    v54 = v51;
    v55 = sub_F07EC();
    v57 = v56;

    *(v0 + 392) = v55;
    *(v0 + 400) = v57;
    sub_F039C();
    sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue);
    v58 = sub_F0A6C();
    v60 = v59;
    v51 = sub_9AE2C;
    v52 = v58;
    v53 = v60;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v51, v52, v53);
}

uint64_t sub_9D3D0()
{
  v1 = *(v0 + OBJC_IVAR___RCSServiceSession_state);
  v2 = *(v1 + 96);
  v26 = *(v1 + 88);
  v27 = v2;
  v4 = (v2 + 16);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (1)
    {
      v25 = *(v2 + 8 * v5 + 32);

      v6 = sub_9FBFC(&v25, 0, 1);

      if (v6)
      {
        break;
      }

      if (v3 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_43;
    }

    v8 = *v4;
    if (v7 != *v4)
    {
      v9 = v5 + 5;
      while (1)
      {
        v12 = v9 - 4;
        if (v9 - 4 >= v8)
        {
          break;
        }

        v25 = *(v2 + 8 * v9);

        v13 = sub_9FBFC(&v25, 0, 1);

        if ((v13 & 1) == 0)
        {
          if (v12 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v5 >= *v4)
            {
              goto LABEL_36;
            }

            if (v12 >= *v4)
            {
              goto LABEL_37;
            }

            v14 = *(v2 + 32 + 8 * v5);
            v15 = *(v2 + 8 * v9);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_9FBE8(v2);
              v27 = v2;
            }

            if (v5 >= *(v2 + 16))
            {
              goto LABEL_38;
            }

            v16 = v2 + 8 * v5;
            v17 = *(v16 + 32);
            *(v16 + 32) = v15;

            sub_F100C();
            v18 = v27;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_9FBE8(v18);
              v27 = v18;
            }

            if (v12 >= *(v18 + 16))
            {
              goto LABEL_39;
            }

            v19 = *(v18 + 8 * v9);
            *(v18 + 8 * v9) = v14;

            sub_F100C();
            v2 = v27;
          }

          ++v5;
        }

        v4 = (v2 + 16);
        v8 = *(v2 + 16);
        v10 = v9 + 1;
        v11 = v9 - 3;
        ++v9;
        if (v11 == v8)
        {
          v7 = v10 - 4;
          goto LABEL_25;
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
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_25:
    if (v7 < v5)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);

      result = sub_9EA98();
      __break(1u);
      return result;
    }
  }

  else
  {
LABEL_5:
    v7 = *v4;
    v5 = *v4;
  }

  if (__OFADD__(v7, v5 - v7))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v2;
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v2 + 24) >> 1)
  {
    sub_F103C();
  }

  sub_A0414(v5, v7, 0);
  sub_F100C();
  sub_9EA98();
  v21 = v27;
  v23 = *(v1 + 88);
  v22 = *(v1 + 96);
  *(v1 + 88) = v26;
  *(v1 + 96) = v21;
}

void *sub_9D6B8(uint64_t a1, uint64_t a2)
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

  sub_388C8(&qword_128288, &qword_F3460);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_9D73C(uint64_t a1, uint64_t a2)
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

  sub_388C8(&qword_128BB8, &unk_F41E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_9D7C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_388C8(&qword_128BA0, &qword_F3F50);
    v2 = sub_F0F7C();
    v18 = v2;
    sub_F0ECC();
    if (sub_F0EFC())
    {
      type metadata accessor for RCSMessageSendItem(0);
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_9DC4C(v12 + 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        sub_F12FC();
        v4 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
        v5 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

        sub_F089C();

        result = sub_F132C();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
      }

      while (sub_F0EFC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_9D9EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_388C8(&qword_128BC8, &qword_F3F60);
  result = sub_F0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_9DC4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_388C8(&qword_128BA0, &qword_F3F50);
  result = sub_F0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_F12FC();
      v20 = *(v18 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v21 = *(v18 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();

      result = sub_F132C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_9DEC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_F12FC();
  v5 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v6 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();

  sub_F132C();
  v7 = -1 << *(a2 + 32);
  result = sub_F0EBC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_9DF94()
{
  v1 = v0;
  sub_388C8(&qword_128BC8, &qword_F3F60);
  v2 = *v0;
  v3 = sub_F0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_9E0F0()
{
  v1 = v0;
  sub_388C8(&qword_128BA0, &qword_F3F50);
  v2 = *v0;
  v3 = sub_F0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_9E240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_388C8(&qword_128BC8, &qword_F3F60);
  result = sub_F0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_F12FC();

      sub_F089C();
      result = sub_F132C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_9E478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_388C8(&qword_128BA0, &qword_F3F50);
  result = sub_F0F6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_F12FC();
      v19 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v20 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();

      result = sub_F132C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_9E6CC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_F10DC();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_9D73C(v3, 0);
  sub_9FA68((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_9E760(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 + 32;
  if (*v1)
  {
    v7 = *(v5 + 16);
    sub_F12FC();
    v8 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    v9 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v10 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    sub_F089C();

    result = sub_F132C();
    if (__OFSUB__(1 << *(v5 + 16), 1))
    {
      __break(1u);
      return result;
    }

    sub_F051C();
    v12 = sub_F053C();
    if (v13)
    {
LABEL_21:

LABEL_22:
      sub_9E960();
      v23 = *(v2[1] + 16) - 1;
      return 1;
    }

    v19 = v12;
    while (1)
    {
      v20 = *(v6 + 8 * v19) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v21 = *(v20 + 128) == *(v8 + 128) && *(v20 + 136) == *(v8 + 136);
      if (v21 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      sub_F055C();
      v19 = sub_F053C();
      if (v22)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = *(v4 + 16);
    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = 0;
    v16 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    while (1)
    {
      v17 = *(v6 + 8 * v15) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v18 = *(v17 + 128) == *(v16 + 128) && *(v17 + 136) == *(v16 + 136);
      if (v18 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_22;
      }
    }
  }

  return 0;
}

uint64_t sub_9E960()
{

  sub_F0FFC();
  v1 = *(v0[1] + 16);
  sub_F104C();
  sub_F105C();
  result = sub_F100C();
  v3 = *v0;
  v4 = *(v0[1] + 16);
  if (*v0)
  {
    swift_beginAccess();
    v5 = *(v3 + 16);
    if (sub_F056C() >= v4)
    {
      v6 = *v0;
      result = swift_isUniquelyReferenced_native();
      v7 = *v0;
      if ((result & 1) == 0)
      {
        if (!v7)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v8 = *v0;
        v9 = sub_F057C();

        *v0 = v9;
        v7 = v9;
      }

      if (v7)
      {
        v10 = *(v7 + 16);
        v11 = *(v0[1] + 16) + ~(*(v7 + 24) >> 6);
        return sub_F052C();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v4 < 0x10)
  {
    return result;
  }

  return sub_9EA98();
}

uint64_t sub_9EA98()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_F058C();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_9EB38(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_9EB38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a1 + 16);
  v9 = sub_F058C();
  v10 = 0;
  if (v9 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v11 <= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < 5)
  {
    return v10;
  }

  result = sub_F059C();
  v22 = result;
  if (!v6)
  {
    return v22;
  }

  if (v6 >= 1)
  {
    v14 = 0;
    v15 = (result + 16);
    v16 = a1 + 32;
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      v18 = *v15;
      sub_F12FC();
      v19 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v20 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();

      result = sub_F132C();
      if (__OFSUB__(1 << *v15, 1))
      {
        break;
      }

      v21 = sub_F051C();

      if (v21)
      {
        while (1)
        {
          sub_F055C();
        }
      }

      sub_F054C();
      if (++v14 == v6)
      {
        return v22;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9ECCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_37C54;

  return sub_99E10(a1, v4, v5, v7, v6);
}

uint64_t sub_9ED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    __chkstk_darwin(a1);
    v10 = 0;
    v11 = 0;
    __chkstk_darwin((v3 + 63) >> 6);
    sub_F05AC();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = sub_F10DC()) == 0 || (v6 = v5, v7 = sub_9D73C(v5, 0), sub_9FA68((v7 + 4), v6, _swiftEmptyArrayStorage), v9 = v8, , v9 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_A0794(v10, v11);
  __break(1u);
  return result;
}

unint64_t sub_9EF40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  sub_F05DC(v6);
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_F0ECC();
    type metadata accessor for RCSMessageSendItem(0);
    sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem);
    sub_F0C4C();
    a4 = v47;
    v7 = v48;
    v8 = v49;
    v9 = v50;
    v10 = v51;
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v15 = a3 + 32;
  v16 = a2;
  v41 = v6;
  v44 = v14;
  v43 = v7;
  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!sub_F0EFC() || (type metadata accessor for RCSMessageSendItem(0), swift_dynamicCast(), (v17 = v46) == 0))
  {
LABEL_45:
    sub_66138();
    v37 = *a1;
    v38 = a1[1];
    v39 = variable initialization expression of RCSServiceSession.DispositionInfo.group();

    return sub_9F478(v37, v38, v41, 0, v39, v16, a3);
  }

  while (1)
  {
    if (v16)
    {
      v52 = v10;
      v20 = a4;
      v21 = v6;
      v22 = *(v16 + 16);
      v23 = v17;
      sub_F12FC();
      v24 = v16;
      v25 = v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v27 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v26 = *(v23 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();

      sub_F132C();
      if (__OFSUB__(1 << *(v24 + 16), 1))
      {
        goto LABEL_49;
      }

      sub_F051C();
      v28 = sub_F053C();
      v46 = a2 + 16;
      v6 = v21;
      a4 = v20;
      v7 = v43;
      if (v29)
      {
LABEL_26:

        v14 = v44;
        v16 = a2;
        v10 = v52;
        goto LABEL_41;
      }

      v30 = v28;
      while (1)
      {
        v31 = *(v15 + 8 * v30) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v32 = *(v31 + 128) == *(v25 + 128) && *(v31 + 136) == *(v25 + 136);
        if (v32 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        sub_F055C();
        v30 = sub_F053C();
        if (v33)
        {
          goto LABEL_26;
        }
      }

      v16 = a2;

      v14 = v44;
      if ((v30 & 0x8000000000000000) != 0)
      {
LABEL_40:
        v10 = v52;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_41;
      }

      v52 = v10;
      v30 = 0;
      v34 = v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      while (1)
      {
        v35 = *(v15 + 8 * v30) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v36 = *(v35 + 128) == *(v34 + 128) && *(v35 + 136) == *(v34 + 136);
        if (v36 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        if (v6 == ++v30)
        {
          v16 = a2;
          goto LABEL_40;
        }
      }

      v16 = a2;
    }

    if (!sub_F05BC(v30))
    {
      goto LABEL_40;
    }

    v10 = v52;
    if (v41 == 1)
    {
      goto LABEL_50;
    }

    --v41;
LABEL_41:

    if (a4 < 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = v9;
    v19 = v10;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v10 = (v19 - 1) & v19;
    v17 = *(*(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v17)
    {
      goto LABEL_45;
    }
  }

  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_45;
    }

    v19 = *(v7 + 8 * v9);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_9E6CC(_swiftEmptyArrayStorage);

  sub_66138();
  return 0;
}

void *sub_9F424(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_A0794(v6, v7);
  }

  return result;
}

unint64_t sub_9F478(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = result;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a3)
  {
LABEL_14:
    sub_9E6CC(_swiftEmptyArrayStorage);
    sub_9F840(v9, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    v18 = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = result;
    sub_9E6CC(_swiftEmptyArrayStorage);
    sub_9F840(v18, 0);
    v9 = 0;
    v26 = 0;
    if (a2 > 0)
    {
      v21 = *v19;
    }

    goto LABEL_21;
  }

  if (a6)
  {
    v14 = a3;
    swift_beginAccess();
    v15 = *(v8 + 16);
    v16 = sub_F056C();
    a3 = v14;
    v17 = v16 - v14;
    if (!__OFSUB__(v16, v14))
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v17 = 15 - a3;
  if (__OFSUB__(15, a3))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_F05CC();
    if ((v22 & 1) == 0)
    {
      while ((result & 0x8000000000000000) == 0)
      {
        if (result >= *(a7 + 16))
        {
          goto LABEL_30;
        }

        v23 = *(a7 + 32 + 8 * result);

        sub_9F684(v24);

        result = sub_F05CC();
        if (v25)
        {
          v9 = v26;
          goto LABEL_26;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_26:

    return v9;
  }

LABEL_11:
  if (v17 >= v9)
  {
    return v8;
  }

  result = a3 + v9;
  if (!__OFADD__(a3, v9))
  {
    sub_9F840(result, 0);
    return v8;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_9F684(uint64_t a1)
{

  sub_F0FFC();
  v3 = *(v1[1] + 16);
  sub_F104C();
  sub_F105C();
  result = sub_F100C();
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v6 + 16);
  if (!*v1)
  {
    if (v7 < 0x10)
    {
      return result;
    }

    return sub_9EA98();
  }

  swift_beginAccess();
  v8 = *(v5 + 16);
  if (sub_F056C() < v7)
  {
    return sub_9EA98();
  }

  v9 = *v1;
  result = swift_isUniquelyReferenced_native();
  v10 = *v1;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v11 = *v1;
    v12 = sub_F057C();

    *v1 = v12;
    v10 = v12;
  }

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v10 + 16);
  sub_F12FC();
  v14 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
  v15 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();

  result = sub_F132C();
  if (__OFSUB__(1 << *(v10 + 16), 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (sub_F051C())
  {
    while (1)
    {
      sub_F055C();
    }
  }

  v16 = *(v6 + 16);
  sub_F054C();
}

uint64_t sub_9F840(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  sub_F102C();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = sub_F058C();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = sub_F058C();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v15 = sub_9EB38(v9, v10, 0, v8);

    *v3 = v15;
    return result;
  }

  v11 = *(v9 + 16);
  if (v8 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  v13 = *(v9 + 16);
  result = sub_F058C();
  if (result <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = result;
  }

  if (v14 < v6)
  {
    if (v8 <= v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (v16 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v17 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v18 = *v3;
  v17 = sub_F057C();

  *v3 = v17;
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v8)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

uint64_t (*sub_9F9E0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_F0FCC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_9FA60;
  }

  __break(1u);
  return result;
}

uint64_t sub_9FA68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_F10DC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_F10DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A07D8();
          for (i = 0; i != v6; ++i)
          {
            sub_388C8(&qword_128BA8, &qword_F3F58);
            v9 = sub_9F9E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for RCSMessageSendItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9FBFC(uint64_t *a1, int a2, int a3)
{
  LODWORD(v80) = a3;
  v78 = a2;
  v87 = sub_F06CC();
  v82 = *(v87 - 8);
  v4 = *(v82 + 64);
  __chkstk_darwin(v87);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v72 - v7;
  v8 = type metadata accessor for RCSMessageSendItem.SendState(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = (&v72 - v12);
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  v16 = *a1;
  v17 = sub_F030C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  v84 = v21;
  v85 = v16;
  sub_60478(v16 + v21, v15);
  v22 = sub_388C8(&qword_127B28, &qword_F2B20);
  v74 = *(v22 - 8);
  v23 = *(v74 + 48);
  v83 = v22;
  v24 = v23(v15, 4);
  v75 = v18;
  if (v24)
  {
    v25 = v17;
    v26 = sub_A06E0(v15);
  }

  else
  {
    v27 = (*(v18 + 32))(&v72 - v20, v15, v17);
    v73 = &v72;
    __chkstk_darwin(v27);
    sub_F02DC();
    sub_A083C(&qword_128BC0);
    v28 = sub_F07AC();
    v29 = *(v18 + 8);
    v29(&v72 - v20, v17);
    v25 = v17;
    v26 = (v29)(&v72 - v20, v17);
    if ((v28 & 1) == 0)
    {
LABEL_12:
      v45 = v78;
      return v45 & 1;
    }
  }

  __chkstk_darwin(v26);
  v30 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v72 - v30;
  v32 = v85;
  v33 = v81;
  sub_60478(v85 + v84, v81);
  if (!(v23)(v33, 4, v83))
  {
    v80 = &v72;
    v46 = v75;
    v47 = v25;
    (*(v75 + 32))(&v72 - v30, v33, v25);
    v48 = Logger.retries.unsafeMutableAddressor();
    v49 = v82;
    v50 = v77;
    v51 = (*(v82 + 16))(v77, v48, v87);
    v81 = &v72;
    v52 = __chkstk_darwin(v51);
    v53 = &v72 - v30;
    (*(v46 + 16))(&v72 - v30, &v72 - v30, v47, v52);

    v54 = sub_F06AC();
    v55 = sub_F0CCC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v73 = v54;
      v57 = v56;
      v79 = swift_slowAlloc();
      v86[0] = v79;
      *v57 = 136315394;

      v58 = sub_5FBB8();
      v60 = v59;

      v61 = sub_3E850(v58, v60, v86);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      sub_A083C(&qword_128270);
      v62 = sub_F11EC();
      v64 = v63;
      v65 = *(v46 + 8);
      v65(v53);
      v66 = sub_3E850(v62, v64, v86);
      v32 = v85;

      *(v57 + 14) = v66;
      v67 = v73;
      _os_log_impl(&dword_0, v73, v55, "MessageSendItem %s is no longer eligible as of %s. Marking finalRetry.", v57, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v77, v87);
      (v65)(v31, v47);
    }

    else
    {

      v68 = *(v46 + 8);
      v68(v53, v47);
      (*(v49 + 8))(v50, v87);
      v68(v31, v47);
    }

    v69 = v76;
    (*(v74 + 56))(v76, 2, 4, v83);
    v70 = v84;
    swift_beginAccess();
    sub_93E74(v69, v32 + v70);
    swift_endAccess();
    goto LABEL_12;
  }

  sub_A06E0(v33);
  v34 = Logger.retries.unsafeMutableAddressor();
  v35 = v82;
  v36 = v79;
  (*(v82 + 16))(v79, v34, v87);

  v37 = sub_F06AC();
  v38 = sub_F0CCC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v86[0] = v40;
    *v39 = 136315138;

    v41 = sub_5FBB8();
    v43 = v42;

    v44 = sub_3E850(v41, v43, v86);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v37, v38, "MessageSendItem %s has failed all retries, or is otherwise invalid.", v39, 0xCu);
    sub_1EDC(v40);
  }

  (*(v35 + 8))(v36, v87);
  v45 = v80;
  return v45 & 1;
}

unint64_t sub_A0414(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for RCSMessageSendItem(0);
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

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
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

uint64_t sub_A04D8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v3 = a1[4];

    sub_388C8(&qword_127F78, &qword_F2EB8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_F2C60;
    v5 = type metadata accessor for RCSMessageSendItem(0);
    *(v4 + 56) = v5;
    *(v4 + 32) = v3;

    sub_F0F0C();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 5;
      do
      {
        v8 = *v7++;

        v11._countAndFlagsBits = 8236;
        v11._object = 0xE200000000000000;
        sub_F08CC(v11);
        sub_388C8(&qword_127F78, &qword_F2EB8);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_F2C60;
        *(v9 + 56) = v5;
        *(v9 + 32) = v8;

        sub_F0F0C();

        --v6;
      }

      while (v6);
    }
  }

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  sub_F08CC(v12);
  return 91;
}

uint64_t sub_A0698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A06E0(uint64_t a1)
{
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A073C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_9EF40(a1, *(v2 + 16), *(v2 + 24), **(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_A0794(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_A07D8()
{
  result = qword_128BB0;
  if (!qword_128BB0)
  {
    sub_3CB70(&qword_128BA8, &qword_F3F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BB0);
  }

  return result;
}

uint64_t sub_A083C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_F030C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RCSServiceSession.DispositionInfo.init(type:for:to:encrypted:group:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_A0894(uint64_t a1, void *a2)
{
  v85 = a1;
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v80 - v8;
  __chkstk_darwin(v9);
  v11 = &v80 - v10;
  v12 = 0;
  if (a2[3])
  {
    v12 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v13 = Logger.rcs.unsafeMutableAddressor();
  v83 = v4;
  v14 = *(v4 + 16);
  v86 = v3;
  v14(v11, v13, v3);
  v15 = v12;
  v16 = sub_F06AC();
  v17 = sub_F0CCC();
  v88 = v15;

  v18 = os_log_type_enabled(v16, v17);
  v87 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v88;
    *(v19 + 4) = v88;
    *v20 = v12;
    v22 = v21;
    _os_log_impl(&dword_0, v16, v17, "Sending with encryption: %@", v19, 0xCu);
    sub_372B0(v20, &qword_127AF0, &qword_F28E0);
    a2 = v87;
  }

  v23 = v86;
  v83 = *(v83 + 8);
  (v83)(v11, v86);
  v24 = a2[4];
  v91 = v24;
  if (v24)
  {
    v25 = v82;
    v14(v82, v13, v23);
    v26 = a2[1];
    v27 = a2[2];
    sub_37380(&v91, &v90, &qword_128C28, &unk_F41F0);
    v28 = v26;
    v29 = v27;
    v30 = sub_F06AC();
    v31 = sub_F0CCC();
    v80 = v29;

    v81 = v28;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v89 = *a2;
      v90 = v33;
      type metadata accessor for CTLazuliMessageDispositionNotificationType(0);
      v34 = sub_F083C();
      v36 = sub_3E850(v34, v35, &v90);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "Sending group disposition %s", v32, 0xCu);
      sub_1EDC(v33);

      (v83)(v25, v86);
    }

    else
    {

      (v83)(v25, v23);
    }

    v48 = *(*(v84 + OBJC_IVAR___RCSServiceSession_state) + 16);
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v49 = sub_F035C();
    v50 = *(v49 - 8);
    v51 = *(v50 + 64);
    __chkstk_darwin(v49);
    v53 = &v80 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = v48;
    sub_F034C();
    v55 = sub_F032C();
    v57 = v56;
    (*(v50 + 8))(v53, v49);
    v58 = CTLazuliMessageID.init(uuid:)(v55, v57);
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v59 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v59 = v88;
    }

    v60 = *v87;
    v90 = 0;
    v61 = [v54 sendGroupDispositionNotificationMessage:v85 toGroup:v24 to:v80 withMessageID:v58 withDisposition:v60 forMessageID:v81 withSecurity:v59 withError:&v90];

    if (!v61)
    {
      v63 = v90;
      sub_F015C();

      swift_willThrow();
      sub_372B0(&v91, &qword_128C28, &unk_F41F0);
      return;
    }

    v62 = v90;
    sub_372B0(&v91, &qword_128C28, &unk_F41F0);
    goto LABEL_21;
  }

  v37 = v81;
  v14(v81, v13, v23);
  v38 = a2[2];
  v39 = a2[1];
  v40 = v38;
  v41 = sub_F06AC();
  v42 = sub_F0CCC();

  v82 = v39;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 136315138;
    v89 = *a2;
    v90 = v44;
    type metadata accessor for CTLazuliMessageDispositionNotificationType(0);
    v45 = sub_F083C();
    v47 = sub_3E850(v45, v46, &v90);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_0, v41, v42, "Sending 1:1 disposition %s", v43, 0xCu);
    sub_1EDC(v44);

    (v83)(v37, v86);
  }

  else
  {

    (v83)(v37, v23);
  }

  v64 = *(*(v84 + OBJC_IVAR___RCSServiceSession_state) + 16);
  sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
  v65 = sub_F035C();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  v69 = &v80 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v64;
  sub_F034C();
  v71 = sub_F032C();
  v73 = v72;
  (*(v66 + 8))(v69, v65);
  v74 = CTLazuliMessageID.init(uuid:)(v71, v73);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v75 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v75 = v88;
  }

  v76 = *v87;
  v90 = 0;
  v77 = [v70 sendDispositionNotificationMessage:v85 to:v40 withMessageID:v74 withDisposition:v76 forMessageID:v82 withSecurity:v75 withError:&v90];

  if (v77)
  {
    v78 = v90;
LABEL_21:

    return;
  }

  v79 = v90;
  sub_F015C();

  swift_willThrow();
}

uint64_t sub_A1184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = *(*(sub_388C8(&qword_127EB0, &unk_F2B30) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = RCSActor.shared.unsafeMutableAddressor();
  v7 = *v6;
  v3[9] = *v6;

  return _swift_task_switch(sub_A129C, v7, 0);
}

uint64_t sub_A129C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_F0AFC();
  v8 = sub_F0B1C();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  sub_3C9A4(v7, v2);
  sub_F0AEC();
  v9 = v6;
  v10 = v5;
  v11 = sub_F0ADC();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_3CA08(v2, v14 + v12);
  *(v14 + v13) = v10;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v15 = sub_3CEFC(0, 0, v1, &unk_F4210, v14);
  v0[10] = v15;
  v16 = async function pointer to Task<>.value.getter[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_A146C;

  return Task<>.value.getter(v0 + 12, v15, &type metadata for Bool);
}

uint64_t sub_A146C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_A1598, v3, 0);
}

uint64_t sub_A1598()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_A161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  sub_F0AEC();
  v6[22] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[23] = v8;
  v6[24] = v7;

  return _swift_task_switch(sub_A16B8, v8, v7);
}

uint64_t sub_A16B8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_opt_self();
  v0[25] = v3;
  v4 = [v3 sharedCache];
  v0[26] = v4;
  v0[27] = *(v1 + 128);
  v0[28] = *(v1 + 136);
  v5 = sub_F07BC();
  v0[29] = v5;
  v6 = [v2 service];
  v7 = [v6 internalName];

  if (!v7)
  {
    sub_F07EC();
    v7 = sub_F07BC();
  }

  v0[30] = v7;
  v8 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_A1894;
  v9 = swift_continuation_init();
  v0[17] = sub_388C8(&qword_128C30, &qword_F4218);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_A1A94;
  v0[13] = &unk_11F270;
  v0[14] = v9;
  [v4 releasePendingMessageWithGUID:v5 serviceName:v7 chat:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_A1894()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_A199C, v2, v1);
}

uint64_t sub_A199C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);

  v5 = *(v0 + 248);

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = [*(v0 + 200) sharedCache];
  v9 = sub_F07BC();
  v10 = [v8 releasedReplicatedGUIDForGUID:v9];

  if (v10)
  {

LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:
  **(v0 + 144) = v11;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_A1A94(uint64_t a1, char a2)
{
  v3 = *sub_373E8((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t RCSServiceSession.dequeueAndProcess(messageID:context:)(uint64_t a1, uint64_t a2)
{
  v3[106] = v2;
  v3[105] = a2;
  v3[104] = a1;
  v4 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v5 = type metadata accessor for RCSMessage(0);
  v3[109] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v7 = sub_F06CC();
  v3[112] = v7;
  v8 = *(v7 - 8);
  v3[113] = v8;
  v9 = *(v8 + 64) + 15;
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v10 = RCSActor.shared.unsafeMutableAddressor();
  v11 = *v10;
  v3[119] = *v10;

  return _swift_task_switch(sub_A1C80, v11, 0);
}

uint64_t sub_A1C80()
{
  v66 = v0;
  v1 = *(v0 + 848);
  v2 = sub_A3580(*(v0 + 840), *(v0 + 832));
  *(v0 + 960) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v2 from];
    v5 = sub_A76E4(v4);
    *(v0 + 968) = v5;

    v6 = v5;
    RCSHandle.init(destination:)(v6, v0 + 400);
    *(v0 + 976) = 0;
    if (!*(v0 + 456))
    {
      goto LABEL_7;
    }

    v8 = [objc_opt_self() sharedInstance];
    if (!v8)
    {
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }

    v11 = v8;
    v12 = [v8 isRBMEnabled];

    if (v12)
    {
LABEL_7:
      v13 = [*(v0 + 840) phoneNumber];
      if (v13)
      {
        v14 = *(v0 + 840);
        v15 = v13;
        v16 = sub_F07EC();
        v18 = v17;

        v19 = sub_53E04(_swiftEmptyArrayStorage);
        v20._countAndFlagsBits = 7103860;
        v20._object = 0xE300000000000000;
        v21._countAndFlagsBits = v16;
        v21._object = v18;
        RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)((v0 + 336), v20, v21, v19, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        *(swift_task_alloc() + 16) = v14;
        RCSHandle.canonicalizedHandle(for:)(sub_54C44, (v0 + 272));
        sub_3CAB8(v0 + 336);

        v22 = *(v0 + 288);
        v23 = *(v0 + 296);

        sub_3CAB8(v0 + 272);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v0 + 992) = v23;
      *(v0 + 984) = v22;
      v55 = [*(v0 + 840) labelID];
      if (v55)
      {
        v56 = v55;
        v57 = sub_F07EC();
        v59 = v58;
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      *(v0 + 1008) = v59;
      *(v0 + 1000) = v57;
      *(v0 + 1016) = sub_F0AEC();
      *(v0 + 1024) = sub_F0ADC();
      v60 = sub_F0A6C();
      v62 = v61;
      v8 = sub_A23FC;
      v9 = v60;
      v10 = v62;

      return _swift_task_switch(v8, v9, v10);
    }

    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v37 = *(v0 + 904);
    v38 = *(v0 + 896);
    v39 = *(v0 + 832);

    sub_3CAB8(v0 + 400);
    v40 = Logger.rcs.unsafeMutableAddressor();
    (*(v37 + 16))(v36, v40, v38);
    v41 = v39;
    v42 = sub_F06AC();
    v43 = sub_F0CFC();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 944);
    v46 = *(v0 + 904);
    v47 = *(v0 + 896);
    if (v44)
    {
      v48 = *(v0 + 832);
      v49 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v49 = 136446466;
      *(v49 + 4) = sub_3E850(0xD000000000000025, 0x80000000000FF800, v65);
      *(v49 + 12) = 2080;
      v50 = [v48 uuid];
      v63 = v47;
      v64 = v45;
      v51 = sub_F07EC();
      v53 = v52;

      v54 = sub_3E850(v51, v53, v65);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_0, v42, v43, "%{public}s dropping message %s because RBM is disabled in Settings", v49, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v64, v63);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }
  }

  else
  {
    v7 = *(v0 + 952);
  }

  v24 = *(v0 + 944);
  v25 = *(v0 + 936);
  v26 = *(v0 + 928);
  v27 = *(v0 + 920);
  v28 = *(v0 + 912);
  v29 = *(v0 + 888);
  v30 = *(v0 + 880);
  v31 = *(v0 + 864);
  v32 = *(v0 + 856);

  v33 = *(v0 + 8);

  return v33();
}