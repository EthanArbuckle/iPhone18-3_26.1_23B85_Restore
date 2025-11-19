uint64_t sub_641A0()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_128298);
  sub_3C96C(v0, qword_128298);
  return sub_F06BC();
}

uint64_t sub_64224@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_3FE38((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_64270(void *a1)
{
  v2 = v1;
  v4 = [a1 extractedUri];
  v5 = sub_F07EC();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = &selRef_extractedUri;
  }

  else
  {
    v9 = &selRef_uri;
  }

  v10 = [a1 *v9];
  v11 = sub_F07EC();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v20, v14, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v15)
  {
    v16 = [objc_opt_self() sharedInstance];
    v17 = sub_F07BC();
    sub_3CAB8(&v20);
    v18 = [v16 allExistingChatsWithIdentifier:v17];

    sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v2 = sub_F09FC();
  }

  return v2;
}

unint64_t sub_643E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_6F0E0(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_54F88(v49, v47);
  v14 = *a5;
  result = sub_51FEC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_75E48(v20, a4 & 1);
    v22 = *a5;
    result = sub_51FEC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_F126C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_76D70();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_3FE38(*(*a5 + 56) + 32 * result, v46);
    sub_1EDC(v47);

    v26 = *(v24 + 56);
    sub_1EDC((v26 + v25));
    sub_54F88(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_54F88(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_6F0E0(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_54F88(v49, v47);
        v35 = *a5;
        result = sub_51FEC(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_75E48(v39, 1);
          v40 = *a5;
          result = sub_51FEC(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_3FE38(*(*a5 + 56) + 32 * result, v46);
          sub_1EDC(v47);

          v34 = *(v32 + 56);
          sub_1EDC((v34 + v33));
          sub_54F88(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_54F88(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_6F0E0(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_66138();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_64724(void *a1, void *a2)
{
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v76 - v11;
  __chkstk_darwin(v10);
  v14 = &v76 - v13;
  if (!a2 || (v15 = [a2 renderInformation]) == 0)
  {
    v42 = Logger.chatbot.unsafeMutableAddressor();
    (*(v5 + 16))(v9, v42, v4);
    v43 = a1;
    v44 = sub_F06AC();
    v45 = sub_F0CEC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v84 = v47;
      *v46 = 136315138;
      v48 = [v43 chatIdentifier];

      if (!v48)
      {
        goto LABEL_34;
      }

      v49 = sub_F07EC();
      v51 = v50;

      v52 = sub_3E850(v49, v51, &v84);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_0, v44, v45, "Persistent Menu - No render info found for chat: %s", v46, 0xCu);
      sub_1EDC(v47);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
    return;
  }

  v16 = v15;
  v17 = sub_81270(_swiftEmptyArrayStorage);
  v18 = [v16 botInfo];
  v19 = [v18 pcc];

  v20 = [v19 orgDetails];
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = [v20 orgName];

  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = [v21 list];

  sub_37310(0, &qword_1282B0, CTLazuliChatBotOrgNameEntry_ptr);
  v23 = sub_F09FC();

  if (!(v23 >> 62))
  {
    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!sub_F10DC())
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      v24 = *(v23 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = sub_F0FCC();
LABEL_10:
  v25 = v24;

  v26 = [v25 displayName];

  if (v26)
  {
    v81 = v17;
    v27 = sub_F07EC();
    v29 = v28;

    v30 = v29;
    v31 = Logger.chatbot.unsafeMutableAddressor();
    (*(v5 + 16))(v14, v31, v4);

    v80 = a1;
    v32 = a1;
    v33 = sub_F06AC();
    v34 = sub_F0CCC();

    v35 = os_log_type_enabled(v33, v34);
    v77 = v30;
    v78 = v27;
    if (v35)
    {
      v79 = v4;
      v36 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v84 = v76;
      *v36 = 136315394;
      *(v36 + 4) = sub_3E850(v27, v30, &v84);
      *(v36 + 12) = 2080;
      v37 = [v32 chatIdentifier];

      if (!v37)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v38 = sub_F07EC();
      v40 = v39;

      v41 = sub_3E850(v38, v40, &v84);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_0, v33, v34, "Populate business name %s for chat: %s", v36, 0x16u);
      swift_arrayDestroy();

      v4 = v79;
      (*(v5 + 8))(v14, v79);
    }

    else
    {

      (*(v5 + 8))(v14, v4);
    }

    v53 = sub_F07EC();
    v55 = v54;
    v85 = &type metadata for String;
    *&v84 = v78;
    *(&v84 + 1) = v77;
    sub_54F88(&v84, v83);
    v56 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v56;
    sub_52328(v83, v53, v55, isUniquelyReferenced_nonNull_native);

    v17 = v82;
    a1 = v80;
  }

LABEL_23:
  type metadata accessor for RCSPersistentMenu();
  swift_allocObject();
  v58 = v16;
  v59 = RCSPersistentMenu.init(menu:)(v58);
  if (!v59[2])
  {
    goto LABEL_29;
  }

  v81 = v17;
  v60 = Logger.chatbot.unsafeMutableAddressor();
  (*(v5 + 16))(v12, v60, v4);
  v61 = a1;
  v62 = sub_F06AC();
  v63 = sub_F0CCC();
  if (!os_log_type_enabled(v62, v63))
  {

    v71 = (*(v5 + 8))(v12, v4);
    goto LABEL_28;
  }

  v78 = v58;
  v79 = v4;
  v80 = a1;
  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  *&v84 = v65;
  *v64 = 136315138;
  v66 = [v61 guid];

  if (!v66)
  {
    goto LABEL_35;
  }

  v67 = sub_F07EC();
  v69 = v68;

  v70 = sub_3E850(v67, v69, &v84);

  *(v64 + 4) = v70;
  _os_log_impl(&dword_0, v62, v63, "Persistent Menu - Populate persistent menu for chat: %s", v64, 0xCu);
  sub_1EDC(v65);

  v71 = (*(v5 + 8))(v12, v79);
  a1 = v80;
  v58 = v78;
LABEL_28:
  v72 = (*(*v59 + 88))(v71);
  v73 = v81;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *&v84 = v73;
  sub_643E8(v72, sub_64224, 0, v74, &v84);

  v17 = v84;
LABEL_29:
  if (*(v17 + 16))
  {
    sub_51844(v17);

    v75 = sub_F075C();

    [a1 updateProperties:v75 shouldBroadcast:1];
  }

  else
  {
  }
}

void sub_65010(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_F07BC();
  v7 = [v6 __im_isChatBotPatterned];

  if (!v7)
  {
    return;
  }

  if (!a1)
  {
LABEL_14:
    if (qword_127AC8 != -1)
    {
      swift_once();
    }

    v27 = sub_F06CC();
    sub_3C96C(v27, qword_128298);

    v17 = sub_F06AC();
    v28 = sub_F0D0C();

    if (os_log_type_enabled(v17, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_3E850(a2, a3, v41);
      _os_log_impl(&dword_0, v17, v28, "Update empty stamp menu for chat %s", v29, 0xCu);
      sub_1EDC(v30);
    }

    v19 = [objc_opt_self() emptyStampProperty];
    v40 = sub_F076C();
    goto LABEL_19;
  }

  v8 = sub_F07EC();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_51FEC(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  sub_3FE38(*(a1 + 56) + 32 * v10, v41);
  sub_373E8(v41, v41[3]);
  v13 = sub_F121C();
  sub_1EDC(v41);
LABEL_8:
  v14 = [objc_opt_self() isEmptyStamped:v13];
  swift_unknownObjectRelease();
  if (v14)
  {
    goto LABEL_14;
  }

  v15 = objc_allocWithZone(IMPersistentMenu);
  v16 = sub_F075C();
  v17 = [v15 initWithDictionary:v16];

  if (!v17)
  {
    goto LABEL_14;
  }

  if (qword_127AC8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v18 = sub_F06CC();
    sub_3C96C(v18, qword_128298);
    v19 = v17;

    v17 = sub_F06AC();
    v20 = sub_F0D0C();

    if (os_log_type_enabled(v17, v20))
    {
      v21 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = [v19 displayText];
      if (v22)
      {
        v23 = v22;
        v24 = sub_F07EC();
        v26 = v25;
      }

      else
      {
        v26 = 0xE500000000000000;
        v24 = 0x3E6C696E3CLL;
      }

      v38 = sub_3E850(v24, v26, v41);

      *(v21 + 4) = v38;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_3E850(a2, a3, v41);
      _os_log_impl(&dword_0, v17, v20, "Update persistent menu %s for chat %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v39 = [v19 dictionaryRepresentation];
    v40 = sub_F076C();

LABEL_19:
    v31 = [objc_opt_self() sharedInstance];
    v32 = sub_F07BC();
    v33 = [v31 allExistingChatsWithIdentifier:v32];

    sub_37310(0, &qword_127EF0, IMDChat_ptr);
    a3 = sub_F09FC();

    if (a3 >> 62)
    {
      a2 = sub_F10DC();
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      a2 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    if (a2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v34 = 0;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v35 = sub_F0FCC();
    }

    else
    {
      v35 = *(a3 + 8 * v34 + 32);
    }

    v36 = v35;
    ++v34;
    sub_51844(v40);
    v37 = sub_F075C();

    [v36 updateProperties:v37 shouldBroadcast:1];
  }

  while (a2 != v34);
LABEL_31:
}

id sub_65628(uint64_t a1, uint64_t a2, SEL *a3, Class *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_F07BC();
  v7 = [v5 allExistingChatsWithIdentifier:v6];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v8 = sub_F09FC();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_F0FCC();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 *a3])
      {
        v14 = [v12 properties];
        if (!v14 || (v15 = v14, v16 = sub_F076C(), v15, v17 = sub_A93BC(v16), , !v17))
        {
        }

        v18 = objc_allocWithZone(*a4);
        v19 = sub_F075C();

        v20 = [v18 initWithDictionary:v19];

        if (v20)
        {

          return v20;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  return 0;
}

uint64_t sub_65898()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_F07BC();
  v2 = [v0 allExistingChatsWithIdentifier:v1];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v3 = sub_F09FC();

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_F0FCC();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 hasChatBotBrandInfo])
      {
        v9 = [v7 brandLogoData];
        if (v9)
        {
          v10 = v9;

          v11 = sub_F025C();

          return v11;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_65A60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_F07BC();
  v11 = [v10 __im_isChatBotPatterned];

  if (v11)
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return;
  }

  v13 = objc_allocWithZone(IMBrandInfo);
  v14 = sub_F075C();
  v15 = [v13 initWithDictionary:v14];

  if (!v15)
  {
    return;
  }

  v16 = [v15 brandLogoGuid];
  if (v16)
  {
    v17 = v16;
    v56 = sub_F07EC();
    v19 = v18;
  }

  else
  {
    v56 = 0;
    v19 = 0;
  }

  v20 = qword_127AC8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_F06CC();
  sub_3C96C(v21, qword_128298);
  sub_660BC(a2, a3);

  sub_660BC(a2, a3);
  v22 = v15;

  v23 = sub_F06AC();
  v24 = sub_F0D0C();

  v25 = (a3 >> 60);
  v55 = a2;
  if (!os_log_type_enabled(v23, v24))
  {
    sub_66124(a2, a3);

    sub_66124(a2, a3);

    goto LABEL_24;
  }

  v53 = v24;
  v54 = v23;
  v26 = swift_slowAlloc();
  v57 = swift_slowAlloc();
  *v26 = 136315906;
  v27 = [v22 name];
  v28 = sub_F07EC();
  v30 = v29;

  v31 = sub_3E850(v28, v30, &v57);

  *(v26 + 4) = v31;
  *(v26 + 12) = 2080;
  *(v26 + 14) = sub_3E850(a4, a5, &v57);
  *(v26 + 22) = 2080;
  if (v19)
  {
    v32 = v56;
  }

  else
  {
    v32 = 0x6E756F6620746F6ELL;
  }

  if (v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = 0xE900000000000064;
  }

  v34 = sub_3E850(v32, v33, &v57);

  *(v26 + 24) = v34;
  *(v26 + 32) = 2048;
  if (a3 >> 60 != 15)
  {
    v51 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v36 = v55;
      if (v51 != 2)
      {
        sub_66124(v55, a3);
        v35 = 0;
        goto LABEL_21;
      }

      v37 = *(v55 + 16);
      v52 = *(v55 + 24);
      sub_66124(v55, a3);
      v35 = v52 - v37;
      if (!__OFSUB__(v52, v37))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      v36 = v55;
      v25 = v54;
      LOBYTE(v37) = v53;
      if (!v51)
      {
        sub_66124(v55, a3);
        v35 = BYTE6(a3);
        goto LABEL_22;
      }
    }

    sub_66124(v36, a3);
    LODWORD(v35) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
LABEL_53:
      __break(1u);
      return;
    }

    v35 = v35;
    goto LABEL_22;
  }

  v35 = 0;
  v36 = v55;
LABEL_21:
  v25 = v54;
  LOBYTE(v37) = v53;
LABEL_22:
  *(v26 + 34) = v35;
  sub_66124(v36, a3);
  _os_log_impl(&dword_0, v25, v37, "Update brand info %s for chat %s, brand logo guid: %s, brand logo data: %ld", v26, 0x2Au);
  swift_arrayDestroy();

LABEL_24:
  v38 = [v22 dictionaryRepresentation];
  v39 = sub_F076C();

  v40 = [objc_opt_self() sharedInstance];
  v41 = sub_F07BC();
  v42 = [v40 allExistingChatsWithIdentifier:v41];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v43 = sub_F09FC();

  if (v43 >> 62)
  {
    v44 = sub_F10DC();
    if (v44)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
    if (v44)
    {
LABEL_26:
      if (v44 >= 1)
      {
        v45 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v47 = sub_F0FCC();
          }

          else
          {
            v47 = *(v43 + 8 * v45 + 32);
          }

          v48 = v47;
          sub_51844(v39);
          v49 = sub_F075C();

          [v48 updateProperties:v49 shouldBroadcast:1];

          if (a3 >> 60 == 15)
          {
            v50 = 0;
            if (!v19)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v50 = sub_F024C();
            if (!v19)
            {
LABEL_37:
              v46 = 0;
              goto LABEL_29;
            }
          }

          v46 = sub_F07BC();
LABEL_29:
          ++v45;
          [v48 updateBrandLogo:v50 transferGuid:v46];

          if (v44 == v45)
          {
            goto LABEL_49;
          }
        }
      }

      __break(1u);
      goto LABEL_53;
    }
  }

LABEL_49:
}

uint64_t sub_660BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_660D0(a1, a2);
  }

  return a1;
}

uint64_t sub_660D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_66124(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_5F048(a1, a2);
  }

  return a1;
}

id RCSAttachmentController.init(session:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSession:a1];

  return v2;
}

{
  v4.super_class = RCSAttachmentController;
  v2 = objc_msgSendSuper2(&v4, "initWithSession:", a1);

  return v2;
}

void __swiftcall RCSAttachmentController.init()(RCSAttachmentController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for RCSAttachmentController()
{
  result = qword_1282E0;
  if (!qword_1282E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1282E0);
  }

  return result;
}

uint64_t RCSServiceSession.existingGroupChat(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_373E8(a1, v2);

  return sub_6F3C8(v4, v1, v2, v3);
}

double sub_66354@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_51FA8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_76F14();
      v11 = v13;
    }

    sub_54F34(*(v11 + 48) + 40 * v8);
    sub_54F88((*(v11 + 56) + 32 * v8), a2);
    sub_7656C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id RCSServiceSession.groupChat(from:subscriptionInfo:group:)(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v145 = a5;
  v118 = a4;
  v119 = a3;
  v11 = sub_F06CC();
  v115 = *(v11 - 8);
  v12 = *(v115 + 64);
  __chkstk_darwin(v11);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6[3];
  v16 = a6[4];
  v17 = sub_373E8(a6, v15);
  v18 = sub_6F3C8(v17, v7, v15, v16);
  if (v18)
  {
    v19 = a1[1];
    v124[0] = *a1;
    v124[1] = v19;
    v125[0] = a1[2];
    *(v125 + 9) = *(a1 + 41);
    v126 = a2;
    v127 = v119;
    v128 = v118;
    v129 = v145;
    v130 = v18;
    v20 = v18;
    sub_37380(a1, v121, &qword_1282F0, &qword_F3450);

    v21 = v120;
    sub_A9050(v124, a6);
    if (!v21)
    {
LABEL_5:
      sub_A92D0(v124);

      sub_372B0(v124, &qword_1282F8, &qword_F3458);
      return v20;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v23 = result;
      v24 = sub_F0FBC();
      v131[0] = 1;
      v132 = v24;
      v133 = v25;
      v134 = 0;
      v135 = 0;
      v136 = v21;
      v137 = 0;
      swift_errorRetain();
      sub_94528(v131);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_52;
  }

  v103 = v14;
  v104 = v11;
  v26 = v145;
  v112 = v7;
  v113 = a2;
  sub_68ACC(a6);
  v111 = v27;
  v114 = v28;
  v117 = v29;
  v30 = a6[3];
  v31 = a6[4];
  v32 = a6;
  sub_373E8(a6, v30);
  v33 = (*(v31 + 16))(v30, v31);
  v106 = a1;
  if (v34 || (static IMDChatRCSGroupIdentity.legacyInteractionEnabled.getter() & 1) != 0 && (v39 = a6[3], v40 = a6[4], sub_373E8(a6, v39), v33 = (*(v40 + 8))(v39, v40), v34))
  {
    static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v33, v34);
    v36 = v35;
    v38 = v37;

    goto LABEL_12;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v41 = result;
    v122 = 0x70756F7247534352;
    v123 = 0xE900000000000020;
    sub_54C4C(a6, v121);
    v146._countAndFlagsBits = sub_F085C();
    sub_F08CC(v146);

    v42 = v122;
    v43 = v123;
    v44 = sub_F0FBC();
    v138[0] = 1;
    v139 = v44;
    v140 = v45;
    v141 = v42;
    v142 = v43;
    v143 = 0;
    v144 = 0;
    sub_94528(v138);

    v36 = 0;
    v38 = 0;
LABEL_12:
    v46 = sub_F07BC();
    v47 = v32[7];
    v116 = v32;
    if (v47)
    {
      v48 = v32[6];
      v110 = sub_F07BC();
      if (v38)
      {
LABEL_14:
        v109 = sub_F07BC();
        goto LABEL_17;
      }
    }

    else
    {
      v110 = 0;
      if (v38)
      {
        goto LABEL_14;
      }
    }

    v109 = 0;
LABEL_17:
    if (v119)
    {
      v108 = sub_F07BC();
    }

    else
    {
      v108 = 0;
    }

    v105 = v38;
    v102[1] = v36;
    if (v26)
    {
      v107 = sub_F07BC();
    }

    else
    {
      v107 = 0;
    }

    v49 = v116[5];
    v50 = *(v49 + 16);
    v51 = _swiftEmptyArrayStorage;
    if (v50)
    {
      v121[0] = _swiftEmptyArrayStorage;
      sub_6EB68(0, v50, 0);
      v51 = v121[0];
      v52 = (v49 + 56);
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v121[0] = v51;
        v56 = v51[2];
        v55 = v51[3];

        if (v56 >= v55 >> 1)
        {
          sub_6EB68((v55 > 1), v56 + 1, 1);
          v51 = v121[0];
        }

        v51[2] = v56 + 1;
        v57 = &v51[2 * v56];
        v57[4] = v53;
        v57[5] = v54;
        v52 += 8;
        --v50;
      }

      while (v50);
    }

    v58 = sub_6FD30(v51);

    sub_694A8(v58);

    v59 = sub_F09EC();

    v60 = v112;
    v62 = v109;
    v61 = v110;
    v63 = v107;
    v64 = v108;
    [v112 didJoinChat:v46 style:43 displayName:v110 groupID:v109 lastAddressedHandle:v108 lastAddressedSIMID:v107 handleInfo:v59];

    if (v111)
    {
      v65 = sub_F07BC();
      v66 = [v60 service];
      v67 = [v66 internalName];

      if (!v67)
      {
        sub_F07EC();
        v67 = sub_F07BC();
      }

      v68 = IMCopyGUIDForChat();

      if (v68)
      {
        sub_F07EC();
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      result = [objc_opt_self() sharedInstance];
      if (!v70)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v76 = result;

      v77 = sub_F07BC();

      v20 = [v76 existingChatWithGUID:v77];

      if (v20)
      {
        v78 = v105;
        if (v105)
        {
          v79 = v20;

          v80 = sub_F07BC();
        }

        else
        {
          v81 = v20;
          v80 = 0;
        }

        v82 = v115;
        [v20 assignIdentifier:v80 forDomain:IMChatLookupDomainIMessageGroupID isHistoricalIdentifier:0];

        if (v78)
        {
          v83 = sub_F07BC();
        }

        else
        {
          v83 = 0;
        }

        [v20 assignIdentifier:v83 forDomain:IMChatLookupDomainRCSConversationID isHistoricalIdentifier:0];

        v84 = Logger.rcs.unsafeMutableAddressor();
        v86 = v103;
        v85 = v104;
        (*(v82 + 16))(v103, v84, v104);
        v87 = v20;
        v88 = sub_F06AC();
        v89 = sub_F0CCC();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          LODWORD(v117) = v89;
          v91 = v90;
          v114 = swift_slowAlloc();
          v121[0] = v114;
          *v91 = 136315138;
          v92 = v87;
          v93 = [v92 description];
          v94 = sub_F07EC();
          v96 = v95;

          v97 = sub_3E850(v94, v96, v121);

          *(v91 + 4) = v97;
          _os_log_impl(&dword_0, v88, v117, "Updating identity for chat: %s", v91, 0xCu);
          sub_1EDC(v114);

          (*(v115 + 8))(v103, v104);
        }

        else
        {

          (*(v82 + 8))(v86, v85);
        }

        v121[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v121[4] = &protocol witness table for IMDChat;
        v121[0] = v87;
        IMDChatRCSGroupIdentity.converge(identity:)(v116);
        sub_39BC4(v121);
        return v20;
      }

      v74 = v106;
      v75 = v145;
    }

    else
    {

      v71 = v116[3];
      v72 = v116[4];
      v73 = sub_373E8(v116, v71);
      v20 = sub_6F3C8(v73, v60, v71, v72);
      v74 = v106;
      v75 = v145;
      if (v20)
      {
        return v20;
      }
    }

    type metadata accessor for RCSServiceSession.ChatResolutionError();
    sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError);
    swift_allocError();
    v99 = v74[1];
    v98 = v74[2];
    v100 = *v74;
    *(v101 + 41) = *(v74 + 41);
    *(v101 + 16) = v99;
    *(v101 + 32) = v98;
    *v101 = v100;
    v20 = v119;
    *(v101 + 64) = v113;
    *(v101 + 72) = v20;
    *(v101 + 80) = v118;
    *(v101 + 88) = v75;
    sub_54C4C(v116, v101 + 96);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_37380(v74, v121, &qword_1282F0, &qword_F3450);

    return v20;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_66E6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = (a1 + *(type metadata accessor for RCSFile(0) + 20));
  v8 = v7[1];
  v9 = v7[2];
  result = sub_F07BC();
  if ((*v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = [v4 guidForNewIncomingTransferWithFilename:result isDirectory:0 totalBytes:? hfsType:? hfsCreator:? hfsFlags:?];

    if (!v12)
    {
      return 0;
    }

    v13 = [v4 transferForGUID:v12];

    if (v13)
    {
      v14 = RCSFile.userInfoRepresentation(simID:)(a2, a3);
      sub_51844(v14);

      v15 = sub_F075C();

      [v13 setUserInfo:v15];
    }

    return v13;
  }

  return result;
}

Swift::Bool __swiftcall RCSServiceSession.hasStoredMessage(withGUID:)(Swift::String withGUID)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_F07BC();
  v3 = [v1 hasStoredMessageWithGUID:v2];

  return v3;
}

void RCSServiceSession.didNativelyReceive(_:for:alreadyReceivedReplicatedVersion:)(uint64_t a1, void *a2, char a3)
{
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v8 + 16))(v12, v13, v7);
    v14 = sub_F06AC();
    v15 = sub_F0D0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Skipped didReceiveMessage, already has replicated version", v16, 2u);
    }

    (*(v8 + 8))(v12, v7);
  }

  else
  {
    v20 = [a2 chatIdentifier];
    if (v20)
    {
      v17 = [a2 style];
      [v3 didReceiveMessage:a1 forChat:v20 style:v17 fromIDSID:0];
      v18 = v20;
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.relayReceivedMessage(_:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedFeatureFlags];
  v7 = [v6 isRelayChatBotEnabled];

  if (v7 && [a2 isChatBot])
  {
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = sub_F07EC();
    *(inited + 40) = v9;
    v10 = sub_70080(inited);
    swift_setDeallocating();
    sub_61CB0(inited + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 relayController];
  v12 = [v3 service];
  v13 = [v12 internalName];

  if (v13)
  {
    if (v10)
    {
LABEL_7:
      v14 = sub_F0C0C();

      goto LABEL_10;
    }
  }

  else
  {
    sub_F07EC();
    v13 = sub_F07BC();

    if (v10)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_10:
  [v11 relayMessageToPeers:a1 forChat:a2 serviceName:v13 reflectOnly:0 requiredCapabilities:v14];

  v15 = [a2 chatIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_F07EC();
    v19 = v18;

    v20 = swift_allocObject();
    v20[2] = v3;
    v20[3] = a1;
    v20[4] = v17;
    v20[5] = v19;
    v20[6] = a2;
    aBlock[4] = sub_70058;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_67A44;
    aBlock[3] = &unk_11E7B0;
    v21 = _Block_copy(aBlock);
    v22 = v3;
    v23 = a1;
    v24 = a2;

    [v24 shouldSatelliteRelayIncomingSMSMessagesWithCompletion:v21];
    _Block_release(v21);
  }
}

void sub_674F8(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_F06EC();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_F071C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = v19;
    sub_37310(0, &qword_127F80, OS_dispatch_queue_ptr);
    v29 = sub_F0D4C();
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = a4;
    v22[5] = a5;
    v22[6] = a6;
    aBlock[4] = sub_72424;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_9400C;
    aBlock[3] = &unk_11E958;
    v23 = _Block_copy(aBlock);
    v24 = a2;
    v25 = a3;

    v26 = a6;

    sub_F06FC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_72434(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
    sub_388C8(&qword_127F90, &qword_F2EC0);
    sub_5506C();
    sub_F0E8C();
    v27 = v29;
    sub_F0D5C();
    _Block_release(v23);

    (*(v31 + 8))(v15, v12);
    (*(v17 + 8))(v21, v30);
  }
}

void sub_677F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = __chkstk_darwin(v8).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 networkMonitor];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 immediatelyReachable];

    if (v16)
    {
      v17 = Logger.rcs.unsafeMutableAddressor();
      (*(v9 + 16))(v13, v17, v8);
      v18 = sub_F06AC();
      v19 = sub_F0D0C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Attempting to relay incoming RCS message via satellite sms relay.", v20, 2u);
      }

      (*(v9 + 8))(v13, v8);
      v21 = [objc_opt_self() sharedInstance];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 anySessionForServiceName:IMServiceNameiMessageLite];

        if (v23)
        {
          v24 = v23;
          v25 = sub_F07BC();
          [v24 sendIncomingRelayMessage:a2 toChat:v25 style:{objc_msgSend(a5, "style")}];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_67A44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void RCSServiceSession.didReceiveMessage(_:forChat:style:fromIDSID:)(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, void *a6)
{
  v12 = sub_F07BC();
  v13 = [v6 chatForChatIdentifier:v12 style:a4 updatingAccount:1];

  if (v13)
  {
    v14 = [v6 tapbackInterpreter];
    v15 = [v14 interpretMessageItem:a1 inChat:v13];

    v16 = sub_F07BC();
    if (a6)
    {
      a6 = sub_F07BC();
    }

    v26.receiver = v6;
    v26.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v26, "didReceiveMessage:forChat:style:fromIDSID:", v15, v16, a4, a6);

LABEL_10:
    return;
  }

  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    a6 = v17;
    sub_F0F9C(41);

    v28 = 0x206567617373656DLL;
    v29 = 0xEB00000000204449;
    v18 = [a1 guid];
    if (v18)
    {
      v19 = v18;
      v20 = sub_F07EC();
      v22 = v21;
    }

    else
    {
      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v35._countAndFlagsBits = v20;
    v35._object = v22;
    sub_F08CC(v35);

    v36._object = 0x80000000000FECE0;
    v36._countAndFlagsBits = 0xD000000000000011;
    sub_F08CC(v36);
    v37._countAndFlagsBits = a2;
    v37._object = a3;
    sub_F08CC(v37);
    v38._countAndFlagsBits = 0x20656C79747320;
    v38._object = 0xE700000000000000;
    sub_F08CC(v38);
    v27 = a4;
    v39._countAndFlagsBits = sub_F11EC();
    sub_F08CC(v39);

    v24 = v28;
    v23 = v29;
    LOBYTE(v28) = 3;
    v29 = sub_F0FBC();
    v30 = v25;
    v31 = v24;
    v32 = v23;
    v33 = 0;
    v34 = 1;
    sub_94528(&v28);

    goto LABEL_10;
  }

  __break(1u);
}

id RCSServiceSession.newTransfer(file:simID:)(uint64_t a1, void *a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = sub_66E6C(a1, a2, a3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RCSServiceSession.downloadTransfer(on:transferURL:destURL:cryptoMaterial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_67FCC;

  return sub_70CB0(a1, a2, a3, a4, a5);
}

uint64_t sub_67FCC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_680C8(uint64_t a1)
{
  v1 = *sub_373E8((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_F076C();

  return _swift_continuation_resume(v1);
}

void RCSServiceSession.startFinalizingTransfer(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 guid];
    [v3 startFinalizingTransfer:v4];
  }

  else
  {
    __break(1u);
  }
}

void RCSServiceSession.endTransfer(_:endState:updateByteCounts:)(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 guid];
    [v7 endTransfer:v8 endState:a2 updateByteCounts:a3 & 1];
  }

  else
  {
    __break(1u);
  }
}

void RCSServiceSession.failTransfer(_:error:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 guid];
    v5 = sub_F014C();
    [v3 failTransfer:v4 error:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t RCSServiceSession.maxAutoDownloadSize(for:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_388C8(&qword_128300, &unk_F68D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26[-v8];
  v10 = sub_F068C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v26[-v14];
  v16 = a1 + *(type metadata accessor for RCSFile(0) + 20);
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);

  sub_F063C();
  sub_F05EC();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_372B0(v9, &qword_128300, &unk_F68D0);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    sub_F05FC();
    (*(v11 + 8))(v15, v10);
  }

  v27 = 0;
  v19 = objc_opt_self();
  v20 = sub_F07BC();

  v21 = [v19 largeFileSizeFor:v20 allowedLargerRepresentation:&v27];

  sub_3FEF4(a2, a3);
  if (v21 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (v22 <= 0)
  {
    v24 = v21;
  }

  if (v23)
  {
    return v21 & (v21 >> 63);
  }

  else
  {
    return v24;
  }
}

Swift::UInt64 __swiftcall RCSServiceSession.freeSpaceInHomeDirectory()()
{
  v0 = objc_opt_self();

  return [v0 freeSpaceInHomeDirectory];
}

Swift::UInt64 __swiftcall RCSServiceSession.minimumFreeSpace()()
{
  v0 = objc_opt_self();

  return [v0 minimumFreeSpace];
}

uint64_t RCSServiceSession.ChatResolutionError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessage(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for RCSServiceSession.ChatResolutionError();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_710C0(v1, v12, type metadata accessor for RCSServiceSession.ChatResolutionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = (v12 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      v16 = *v14;
      v15 = v14[1];
      sub_3CA08(v12, v8);
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      sub_F0F9C(53);
      v39._countAndFlagsBits = 0xD00000000000002FLL;
      v39._object = 0x80000000000FED30;
      sub_F08CC(v39);
    }

    else
    {
      v25 = (v12 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      v16 = *v25;
      v15 = v25[1];
      sub_3CA08(v12, v8);
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      sub_F0F9C(49);

      *&v35[0] = 0xD00000000000002BLL;
      *(&v35[0] + 1) = 0x80000000000FED00;
    }

    sub_710C0(v8, v5, type metadata accessor for RCSMessage);
    v43._countAndFlagsBits = sub_F083C();
    sub_F08CC(v43);

    v44._countAndFlagsBits = 8250;
    v44._object = 0xE200000000000000;
    sub_F08CC(v44);
    v45._countAndFlagsBits = v16;
    v45._object = v15;
    sub_F08CC(v45);

    v26 = *&v35[0];
    sub_37AE8(v8, type metadata accessor for RCSMessage);
  }

  else
  {
    v17 = v12[1];
    v36 = *v12;
    v37 = v17;
    v38[0] = v12[2];
    *(v38 + 9) = *(v12 + 41);
    v18 = v12[4];
    v28 = v12[5];
    v29 = v18;
    v19 = v12[11];
    v35[4] = v12[10];
    v35[5] = v19;
    v35[6] = v12[12];
    v20 = v12[7];
    v35[0] = v12[6];
    v35[1] = v20;
    v21 = v12[9];
    v35[2] = v12[8];
    v35[3] = v21;
    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_F0F9C(69);
    v34 = v32[0];
    v40._countAndFlagsBits = 0xD000000000000024;
    v40._object = 0x80000000000FED60;
    sub_F08CC(v40);
    sub_54C4C(v35, v32);
    v41._countAndFlagsBits = sub_F083C();
    sub_F08CC(v41);

    v42._countAndFlagsBits = 0x207265646E657320;
    v42._object = 0xE800000000000000;
    sub_F08CC(v42);
    if (*(&v36 + 1))
    {
      v32[0] = v36;
      v32[1] = v37;
      v33[0] = v38[0];
      *(v33 + 9) = *(v38 + 9);
      v22 = RCSHandle.rawValue.getter();
      v24 = v23;
      sub_372B0(&v36, &qword_1282F0, &qword_F3450);
    }

    else
    {
      v24 = 0xE500000000000000;
      v22 = 0x3E6C696E3CLL;
    }

    v46._countAndFlagsBits = v22;
    v46._object = v24;
    sub_F08CC(v46);

    v47._object = 0x80000000000FED90;
    v47._countAndFlagsBits = 0xD000000000000012;
    sub_F08CC(v47);
    v30 = v29;
    v31 = v28;
    v48._countAndFlagsBits = sub_F083C();
    sub_F08CC(v48);

    v49._countAndFlagsBits = 46;
    v49._object = 0xE100000000000000;
    sub_F08CC(v49);
    v26 = v34;
    sub_53D58(v35);
  }

  return v26;
}

void sub_68ACC(void *a1)
{
  v2 = sub_F06CC();
  v80 = *(v2 - 1);
  v3 = *(v80 + 64);
  v4 = __chkstk_darwin(v2);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v75 - v6;
  v76 = objc_opt_self();
  v7 = [v76 sharedInstance];
  v8 = a1[5];
  v9 = *(v8 + 16);
  v81 = a1;
  v82 = v2;
  if (v9)
  {
    v92[0] = _swiftEmptyArrayStorage;
    sub_6EB68(0, v9, 0);
    v10 = v92[0];
    v11 = (v8 + 56);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v92[0] = v10;
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_6EB68((v15 > 1), v14 + 1, 1);
        v10 = v92[0];
      }

      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 8;
      --v9;
    }

    while (v9);
    a1 = v81;
    v2 = v82;
  }

  v17 = sub_F09EC();

  v18 = a1[7];
  v83 = a1[6];
  if (v18)
  {
    v19 = sub_F07BC();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v7 existingChatsForIDs:v17 displayName:v19 groupID:0 style:43];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v21 = sub_F09FC();

  if (v21 >> 62)
  {
LABEL_51:
    v22 = sub_F10DC();
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_44:
    v56 = [v76 sharedInstance];
    v57 = [v77 account];
    v58 = [v56 generateUnusedChatIdentifierForGroupChatWithAccount:v57];

    if (v58)
    {

      v59 = sub_F07EC();
      v61 = v60;

      v62 = Logger.rcs.unsafeMutableAddressor();
      v64 = v79;
      v63 = v80;
      (*(v80 + 16))(v79, v62, v2);
      sub_54C4C(a1, v92);
      sub_54C4C(a1, v91);
      v65 = sub_F06AC();
      v66 = sub_F0CCC();

      v67 = os_log_type_enabled(v65, v66);
      v78 = v59;
      if (v67)
      {
        v68 = v63;
        v69 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v69 = 136315650;
        *(v69 + 4) = sub_3E850(v59, v61, &v90);
        *(v69 + 12) = 2080;
        sub_54C4C(v92, v89);
        v70 = sub_F083C();
        v72 = v71;
        sub_53D58(v92);
        v73 = sub_3E850(v70, v72, &v90);

        *(v69 + 14) = v73;
        *(v69 + 22) = 2048;
        v74 = *(v91[5] + 16);
        sub_53D58(v91);
        *(v69 + 24) = v74;
        _os_log_impl(&dword_0, v65, v66, "creating a new chatIdentifer %sfor incoming group %s, participants count except self: %ld", v69, 0x20u);
        swift_arrayDestroy();

        (*(v68 + 8))(v79, v2);
      }

      else
      {
        sub_53D58(v91);

        sub_53D58(v92);
        (*(v63 + 8))(v64, v2);
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v22)
  {
    goto LABEL_44;
  }

LABEL_12:
  v23 = 0;
  v24 = v18;
  v18 = 0;
  v87 = v21 & 0xC000000000000001;
  v88 = v24;
  v84 = v24;
  v85 = v21 & 0xFFFFFFFFFFFFFF8;
  v25 = 0xE000000000000000;
  v26 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v86 = v22;
  while (1)
  {
    if (v87)
    {
      v27 = sub_F0FCC();
    }

    else
    {
      if (v23 >= *(v85 + 16))
      {
        goto LABEL_50;
      }

      v27 = *(v21 + 8 * v23 + 32);
    }

    v2 = v27;
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = [v27 v26[167]];
    if (v29)
    {

LABEL_21:
      v30 = [v2 v26[167]];
      if (!v30)
      {
        goto LABEL_33;
      }

      a1 = v30;
      v31 = v21;
      v32 = v18;
      v33 = sub_F07EC();
      v35 = v34;

      if (v88)
      {
        if (v33 == v83 && v88 == v35)
        {

LABEL_28:

          v37 = [v2 chatIdentifier];
          if (!v37)
          {
            v18 = 0;
            v21 = v31;
            v25 = 0xE000000000000000;
            goto LABEL_32;
          }

          v38 = v37;
          v18 = sub_F07EC();
          v25 = v39;

LABEL_31:
          v21 = v31;
LABEL_32:
          v22 = v86;
          v26 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
          goto LABEL_33;
        }

        v36 = sub_F122C();

        if (v36)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v88 = 0;
      }

      v18 = v32;
      goto LABEL_31;
    }

    v88 = v84;
    if (v84)
    {
      goto LABEL_21;
    }

    v41 = [v2 chatIdentifier];
    if (v41)
    {
      v42 = v41;
      v18 = sub_F07EC();
      v25 = v43;

      v26 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
      v88 = 0;
    }

    else
    {
      v18 = 0;
      v88 = 0;
      v25 = 0xE000000000000000;
    }

LABEL_33:
    v40 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v40 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      break;
    }

    ++v23;
    if (v28 == v22)
    {

      a1 = v81;
      v2 = v82;
      goto LABEL_44;
    }
  }

  v44 = Logger.rcs.unsafeMutableAddressor();
  v45 = v80;
  v46 = v75;
  v47 = v82;
  (*(v80 + 16))(v75, v44, v82);
  sub_54C4C(v81, v92);

  v48 = sub_F06AC();
  v49 = sub_F0CCC();

  v50 = os_log_type_enabled(v48, v49);
  v78 = v18;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_3E850(v18, v25, v89);
    *(v51 + 12) = 2080;
    sub_54C4C(v92, v91);
    v52 = sub_F083C();
    v54 = v53;
    sub_53D58(v92);
    v55 = sub_3E850(v52, v54, v89);

    *(v51 + 14) = v55;
    _os_log_impl(&dword_0, v48, v49, "reusing existing chatIdentifer %s for incoming group %s", v51, 0x16u);
    swift_arrayDestroy();

    (*(v80 + 8))(v75, v47);
  }

  else
  {

    sub_53D58(v92);
    (*(v45 + 8))(v46, v47);
  }
}

id RCSServiceSession.groupChat(for:group:)(uint64_t a1, void *a2)
{
  sub_5BD2C(a1, v8);
  if (v10[58])
  {
    v11 = v8[0];
    v12 = v8[1];
    v13[0] = v9[0];
    *(v13 + 9) = *(v9 + 9);
    sub_5BD88(v10);
    v14 = v11;
    v15 = v12;
    v16[0] = v13[0];
    v4 = *(v13 + 9);
  }

  else
  {
    sub_5EFF4(v8);
    v4 = 0uLL;
    v14 = 0u;
    v15 = 0u;
    v16[0] = 0u;
  }

  *(v16 + 9) = v4;
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 9) = v4;
  v5 = type metadata accessor for RCSMessage(0);
  v6 = RCSServiceSession.groupChat(from:subscriptionInfo:group:)(&v11, *(a1 + *(v5 + 60)), *(a1 + *(v5 + 60) + 8), *(a1 + *(v5 + 60) + 16), *(a1 + *(v5 + 60) + 24), a2);
  sub_372B0(&v14, &qword_1282F0, &qword_F3450);
  return v6;
}

void *sub_694A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_388C8(&qword_128528, &unk_F36C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6EC08((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_54F88(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_695BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6EC08((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_54F88(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_696BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_6EC08((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_54F88(&v9, &v2[4 * v7 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t RCSServiceSession.instantMessageChat(for:)(uint64_t a1)
{
  sub_5BD2C(a1, v41);
  if (v41[122] == 1)
  {
    sub_5BD2C(v41, &v32);
    v30 = v32;
    *v31 = *v33;
    *&v31[16] = *&v33[16];
    *&v31[25] = *&v33[25];
    sub_3CAB8(&v30);
    if (v39)
    {
      v2 = v35;
LABEL_6:
      sub_5BD88(v2);
      type metadata accessor for RCSServiceSession.ChatResolutionError();
      sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError);
      swift_allocError();
      v4 = v3;
      v5 = (v3 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_710C0(a1, v4, type metadata accessor for RCSMessage);
      *v5 = 0xD00000000000005CLL;
      v5[1] = 0x80000000000FEDB0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_5EFF4(v41);
    }

    v7 = v35[0];
    v8 = v35[1];
    v9 = v35[2];
    v10 = v36;
    v11 = v37;
    v12 = v38;
  }

  else
  {
    sub_5BD2C(v41, &v32);
    if (v34)
    {
      v2 = &v32;
      goto LABEL_6;
    }

    v8 = *(&v32 + 1);
    v7 = v32;
    v9 = *v33;
    v10 = *&v33[8];
    v11 = *&v33[24];
    v12 = v33[40];
  }

  v29 = v10;
  *&v30 = v7;
  *(&v30 + 1) = v8;
  *v31 = v9;
  *&v31[8] = v10;
  *&v31[24] = v11;
  v31[40] = v12;
  v51 = v30;
  v52 = *v31;
  v53[0] = *&v31[16];
  *(v53 + 9) = *&v31[25];
  sub_5EFF4(v41);
  v13 = RCSHandle.chatBotId.getter();
  v15 = sub_ABD88(v9, v29, (v12 - 1) < 2, v13, v14);

  sub_3CAB8(&v30);
  if (v15)
  {
    sub_5BD2C(a1, &v32);
    if (v40)
    {
      v27 = *v33;
      v28 = v32;
      v17 = *&v33[24];
      v16 = *&v33[16];
      v18 = *&v33[32];
      v19 = v33[40];
      sub_5BD88(v35);
    }

    else
    {
      sub_5EFF4(&v32);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    v23 = a1 + *(type metadata accessor for RCSMessage(0) + 60);
    v24 = *v23;
    v25 = *(v23 + 24);
    v42[0] = v28;
    v42[1] = v27;
    v43 = v16;
    v44 = v17;
    v45 = v18;
    v46 = v19;
    v48 = *(v23 + 8);
    v47 = v24;
    v49 = v25;
    v50 = v15;

    v26 = v15;

    sub_A92D0(v42);
    sub_372B0(v42, &qword_1282F8, &qword_F3458);
    return v26;
  }

  else
  {
    type metadata accessor for RCSServiceSession.ChatResolutionError();
    sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError);
    swift_allocError();
    v21 = v20;
    v22 = (v20 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_710C0(a1, v21, type metadata accessor for RCSMessage);
    *v22 = 0xD000000000000013;
    v22[1] = 0x80000000000FEE10;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t RCSServiceSession.generatePreview(for:attachmentPath:balloonBundleID:senderContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_69CA8;

  return (sub_71128)(v7 + 16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_69CA8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *(*v1 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);

  if (!v0)
  {
    v10 = *(v2 + 56);
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    *(v10 + 32) = v9;
  }

  v11 = *(v4 + 8);

  return v11();
}

uint64_t sub_69DF8(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v11 = *sub_373E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_388C8(&qword_127B88, &qword_F3680);
    v12 = swift_allocError();
    *v13 = a4;
    v14 = a4;

    return _swift_continuation_throwingResumeWithError(v11, v12);
  }

  else
  {
    if (a2)
    {
      v15 = sub_F07EC();
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = *(*(v11 + 64) + 40);
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = a3;
    *(v17 + 24) = a5;
    *(v17 + 32) = a6;

    return swift_continuation_throwingResume();
  }
}

uint64_t RCSServiceSession.generateSafeRender(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_F0AEC();
  v2[20] = sub_F0ADC();
  v4 = sub_F0A6C();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_69F94, v4, v3);
}

uint64_t sub_69F94()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v4 = sub_388C8(&qword_128310, &qword_F34A0);
    v0[24] = v4;
    v0[25] = *(*(v4 - 8) + 64);
    v5 = swift_task_alloc();
    v0[26] = v5;
    v6 = sub_F019C();
    v0[27] = v6;
    v0[2] = v0;
    v0[7] = v5;
    v0[3] = sub_6A1BC;
    v7 = swift_continuation_init();
    v0[17] = sub_388C8(&qword_128318, &qword_F34A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_6A478;
    v0[13] = &unk_11E7D8;
    v0[14] = v7;
    [v2 generateSafeRender:v6 completionBlock:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = v0[20];
    v9 = v0[18];

    v10 = sub_F01EC();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_6A1BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_6A3E0;
  }

  else
  {
    v6 = sub_6A2EC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6A2EC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  v7 = swift_task_alloc();
  sub_376D8(v1, v7, &qword_128310, &qword_F34A0);
  v8 = *v7;
  sub_376D8(&v7[*(v4 + 48)], v6, &qword_128320, &qword_F34B0);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_6A3E0()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];

  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6(0);
}

uint64_t sub_6A478(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *sub_373E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_388C8(&qword_127B88, &qword_F3680);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = sub_388C8(&qword_128310, &qword_F34A0);
    v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v11);
    v14 = &v22 - v13;
    *(&v22 - v13) = a2;
    v15 = sub_388C8(&qword_128320, &qword_F34B0);
    v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v15 - 8);
    v18 = &v22 - v17;
    if (a3)
    {
      sub_F01AC();
      v19 = sub_F01EC();
      (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }

    else
    {
      v20 = sub_F01EC();
      (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    }

    sub_376D8(v18, &v14[*(v11 + 48)], &qword_128320, &qword_F34B0);
    sub_376D8(v14, *(*(v7 + 64) + 40), &qword_128310, &qword_F34A0);
    return swift_continuation_throwingResume();
  }
}

uint64_t RCSServiceSession.categorize(_:rcsMessage:foundChat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_F06CC();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = sub_F0AEC();
  v4[11] = sub_F0ADC();
  v8 = sub_F0A6C();
  v4[12] = v8;
  v4[13] = v9;

  return _swift_task_switch(sub_6A800, v8, v9);
}

uint64_t sub_6A800()
{
  v97 = v0;
  v1 = [*(v0 + 40) participants];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v3 = sub_F09FC();

  if (v3 >> 62)
  {
LABEL_59:
    v4 = sub_F10DC();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = _swiftEmptyArrayStorage;
  *(v0 + 112) = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = v6;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = sub_F0FCC();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_58;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v10 = [v8 ID];
        if (v10)
        {
          break;
        }

        ++v7;
        if (v6 == v4)
        {
          goto LABEL_20;
        }
      }

      v11 = v5;
      v12 = v10;
      v94 = sub_F07EC();
      v91 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_6E2D8(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = v11;
      if (v15 >= v14 >> 1)
      {
        v16 = sub_6E2D8((v14 > 1), v15 + 1, 1, v11);
      }

      *(v16 + 2) = v15 + 1;
      v5 = v16;
      v17 = &v16[16 * v15];
      *(v17 + 4) = v94;
      *(v17 + 5) = v91;
      *(v0 + 112) = v16;
    }

    while (v6 != v4);
  }

LABEL_20:
  v95 = v5;
  v18 = *(v0 + 40);

  *(v0 + 160) = 0;
  v19 = [v18 lastAddressedLocalHandle];
  if (v19)
  {
    v90 = sub_F07EC();
    v21 = v20;
  }

  else
  {
    v90 = 0;
    v21 = 0;
  }

  v22 = [*(v0 + 40) lastAddressedSIMID];
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

  *(v0 + 120) = v26;
  v27 = objc_opt_self();
  v28 = sub_F07BC();
  v29 = [v27 IMMMSEmailAddressToMatchForPhoneNumber:v19 simID:v28];

  if (v29)
  {
    v89 = sub_F07EC();
    v31 = v30;
  }

  else
  {
    v89 = 0;
    v31 = 0;
  }

  v32 = sub_F07BC();
  v33 = [v27 IMCountryCodeForPhoneNumber:v19 simID:v32];

  if (v33)
  {
    v92 = sub_F07EC();
    v35 = v34;
  }

  else
  {
    v92 = 0;
    v35 = 0;
  }

  *(v0 + 128) = v35;
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v38 = *(v0 + 56);
  v39 = *(v0 + 24);
  v40 = Logger.rcs.unsafeMutableAddressor();
  (*(v37 + 16))(v36, v40, v38);

  v41 = v39;

  v42 = sub_F06AC();
  v43 = sub_F0CCC();
  if (os_log_type_enabled(v42, v43))
  {
    v87 = v43;
    v88 = v24;
    v44 = *(v0 + 24);
    v45 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v45 = 136316162;
    v46 = [v44 guid];

    if (!v46)
    {
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v47, v48, v49, v50, v51, v52, v53, v54);
    }

    v55 = v21;
    v84 = *(v0 + 64);
    v85 = *(v0 + 56);
    v86 = *(v0 + 72);
    v56 = sub_F07EC();
    v58 = v57;

    v59 = sub_3E850(v56, v58, v96);

    *(v45 + 4) = v59;
    *(v45 + 12) = 2080;
    if (v55)
    {
      v60 = v90;
    }

    else
    {
      v60 = 7104878;
    }

    if (v55)
    {
      v61 = v55;
    }

    else
    {
      v61 = 0xE300000000000000;
    }

    v62 = sub_3E850(v60, v61, v96);

    *(v45 + 14) = v62;
    *(v45 + 22) = 2080;
    *(v45 + 24) = sub_3E850(v88, v26, v96);
    *(v45 + 32) = 2080;
    if (v31)
    {
      v63 = v89;
    }

    else
    {
      v63 = 7104878;
    }

    if (v31)
    {
      v64 = v31;
    }

    else
    {
      v64 = 0xE300000000000000;
    }

    v65 = sub_3E850(v63, v64, v96);

    *(v45 + 34) = v65;
    *(v45 + 42) = 2080;
    v66 = v92;
    if (v35)
    {
      v67 = v92;
    }

    else
    {
      v67 = 7104878;
    }

    if (v35)
    {
      v68 = v35;
    }

    else
    {
      v68 = 0xE300000000000000;
    }

    v69 = sub_3E850(v67, v68, v96);

    *(v45 + 44) = v69;
    _os_log_impl(&dword_0, v42, v87, "Categorizing %s simNumber %s simID %s myEmail %s cc %s", v45, 0x34u);
    swift_arrayDestroy();

    v24 = v88;

    (*(v84 + 8))(v86, v85);
  }

  else
  {
    v70 = v42;
    v72 = *(v0 + 64);
    v71 = *(v0 + 72);
    v73 = *(v0 + 56);
    v74 = *(v0 + 24);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v72 + 8))(v71, v73);
    v66 = v92;
  }

  v75 = *(v0 + 80);
  v76 = *(v0 + 48);
  v77 = *(v0 + 24);
  v93 = *(v0 + 32);
  v78 = sub_F0ADC();
  *(v0 + 136) = v78;
  v79 = swift_task_alloc();
  *(v0 + 144) = v79;
  v79[1].i64[0] = v76;
  v79[1].i64[1] = v77;
  v79[2] = vextq_s8(v93, v93, 8uLL);
  v79[3].i64[0] = v24;
  v79[3].i64[1] = v26;
  v79[4].i64[0] = v95;
  v79[4].i64[1] = v0 + 160;
  v79[5].i64[0] = v66;
  v79[5].i64[1] = v35;
  v80 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v81 = swift_task_alloc();
  *(v0 + 152) = v81;
  v82 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  *v81 = v0;
  v81[1] = sub_6AF8C;
  v54 = v82;
  v49 = &protocol witness table for MainActor;
  v52 = sub_71E34;
  v47 = v0 + 16;
  v51 = 0x80000000000FEE50;
  v48 = v78;
  v50 = 0xD000000000000023;
  v53 = v79;

  return withCheckedContinuation<A>(isolation:function:_:)(v47, v48, v49, v50, v51, v52, v53, v54);
}

uint64_t sub_6AF8C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 112);
  v11 = *v0;

  v8 = *(v1 + 104);
  v9 = *(v1 + 96);

  return _swift_task_switch(sub_6B17C, v9, v8);
}

uint64_t sub_6B17C()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

void sub_6B224(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v214 = a7;
  v215 = a8;
  v212 = a5;
  v213 = a6;
  v218 = a2;
  v219 = a4;
  v217 = a3;
  v210 = a1;
  v204 = sub_F06CC();
  v205 = *(v204 - 8);
  v10 = v205[8];
  __chkstk_darwin(v204);
  v201 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v202 = &v194 - v13;
  __chkstk_darwin(v14);
  v200 = &v194 - v15;
  v16 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v199 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v206 = &v194 - v20;
  __chkstk_darwin(v21);
  v208 = (&v194 - v22);
  v23 = sub_388C8(&qword_1284E8, &qword_F3668);
  v211 = *(v23 - 8);
  v24 = v211;
  v25 = *(v211 + 64);
  __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v28 = &v194 - v27;
  v216 = type metadata accessor for RCSMessage(0);
  v207 = *(v216 - 8);
  v29 = *(v207 + 64);
  __chkstk_darwin(v216);
  v203 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v194 - v31;
  __chkstk_darwin(v33);
  v35 = &v194 - v34;
  sub_710C0(a5, &v194 - v34, type metadata accessor for RCSMessage);
  v36 = *(v24 + 16);
  v36(v28, v210, v23);
  v210 = v32;
  sub_710C0(v35, v32, type metadata accessor for RCSMessage);
  v209 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v28;
  v36(v209, v28, v23);
  v38 = (*(v207 + 80) + 40) & ~*(v207 + 80);
  v39 = (v29 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = v211;
  v42 = (*(v211 + 80) + v40 + 8) & ~*(v211 + 80);
  v43 = swift_allocObject();
  v44 = v217;
  *(v43 + 2) = v218;
  *(v43 + 3) = v44;
  *(v43 + 4) = v219;
  v45 = v35;
  v46 = v214;
  sub_3CA08(v45, &v43[v38]);
  v47 = &v43[v39];
  *v47 = v213;
  *(v47 + 1) = v46;
  v48 = v215;
  *&v43[v40] = v215;
  p_name = v48;
  v50 = v23;
  (*(v41 + 32))(&v43[v42], v37, v23);
  v51 = v208;
  sub_37380(v212 + *(v216 + 32), v208, &unk_127FA0, &qword_F34C0);
  v52 = type metadata accessor for RCSMessage.Content(0);
  v53 = *(*(v52 - 8) + 48);
  v54 = v51;
  v55 = v53(v51, 1, v52);
  v207 = v43;
  if (v55 == 1)
  {
    v56 = *(v41 + 8);

    v57 = v219;
    v58 = v219;
    v59 = v217;
    v60 = v217;
    v61 = v218;
    v62 = v218;
    v56(v209, v50);
    v63 = type metadata accessor for RCSMessage;
    v64 = v210;
    goto LABEL_8;
  }

  v197 = v53;
  v59 = v217;
  v57 = v219;
  sub_37380(v54, v206, &unk_127FA0, &qword_F34C0);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v77 = *(v41 + 8);

    v78 = v57;
    v79 = v59;
    v61 = v218;
    v80 = v218;
    v77(v209, v50);
    sub_37AE8(v210, type metadata accessor for RCSMessage);
    v63 = type metadata accessor for RCSMessage.Content;
    v64 = v206;
LABEL_8:
    sub_37AE8(v64, v63);
    sub_372B0(v54, &unk_127FA0, &qword_F34C0);
    v81 = [v61 filteringController];
    v82 = [v59 guid];
    if (v82)
    {
      v83 = v82;
      v84 = [v59 sender];
      if (v84)
      {
        v85 = v84;
        v86 = [v57 chatIdentifier];
        if (v86)
        {
          v214 = v86;
          v218 = v81;
          v216 = a9;
          v217 = sub_F09EC();
          v215 = [v59 rcsAdvisedAction];

          v87 = sub_F07BC();

          v88 = [v59 body];
          if (!v88)
          {
            v88 = [objc_allocWithZone(NSAttributedString) init];
          }

          v89 = IMServiceNameRCS;
          v213 = v89;
          v90 = [v59 messageContainsOneTimeCode];
          aBlock[4] = sub_72100;
          aBlock[5] = v207;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_6DA54;
          aBlock[3] = &unk_11E8B8;
          v91 = _Block_copy(aBlock);

          LOBYTE(v193) = v90;
          v192 = v89;
          v191 = v87;
          v92 = v87;
          v93 = v215;
          v95 = v217;
          v94 = v218;
          v96 = v214;
          [v218 categorizeIncomingRCSMessageGUID:v83 sender:v85 wasRelayed:0 chatIdentifier:v214 participants:v217 checkingForSpam:v216 trustIndicator:v215 myReceiverISOCountryCode:v191 messageBody:v88 foundChat:v219 service:v192 containsOneTimeCode:v193 completion:v91];

          _Block_release(v91);

          return;
        }

        goto LABEL_85;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v195 = v50;

  v206 = v57;
  v219 = v59;
  v196 = v218;
  sub_372B0(v54, &unk_127FA0, &qword_F34C0);
  v65 = Logger.rcs.unsafeMutableAddressor();
  v66 = v205;
  v67 = v205[2];
  v68 = v200;
  v217 = v65;
  v69 = v204;
  v208 = v205 + 2;
  v198 = v67;
  (v67)(v200);
  v70 = v203;
  sub_710C0(v212, v203, type metadata accessor for RCSMessage);
  v71 = sub_F06AC();
  v72 = sub_F0CCC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136315138;
    v75 = v199;
    sub_37380(v70 + *(v216 + 32), v199, &unk_127FA0, &qword_F34C0);
    if (v197(v75, 1, v52) == 1)
    {
      sub_372B0(v75, &unk_127FA0, &qword_F34C0);
      v76 = 9;
    }

    else
    {
      v99 = v75;
      v76 = RCSMessage.Content.type.getter();
      sub_37AE8(v99, type metadata accessor for RCSMessage.Content);
    }

    v98 = v204;
    v220 = v76;
    sub_388C8(&qword_1284F0, &qword_F3678);
    v100 = sub_F083C();
    v102 = v101;
    sub_37AE8(v203, type metadata accessor for RCSMessage);
    v103 = sub_3E850(v100, v102, aBlock);

    *(v73 + 4) = v103;
    _os_log_impl(&dword_0, v71, v72, "Not categorizing message for message type %s", v73, 0xCu);
    sub_1EDC(v74);

    v97 = v205[1];
    (v97)(v68, v98);
  }

  else
  {

    sub_37AE8(v70, type metadata accessor for RCSMessage);
    v97 = v66[1];
    (v97)(v68, v69);
    v98 = v69;
  }

  v104 = v202;
  v198(v202, v217, v98);
  v105 = v219;
  v106 = sub_F06AC();
  v107 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v106, v107))
  {
    v108 = v97;
    v109 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v109 = 136315906;
    v110 = [v105 guid];
    v111 = v105;

    if (!v110)
    {
LABEL_89:
      __break(1u);
LABEL_90:

      __break(1u);
      goto LABEL_91;
    }

    p_name = sub_F07EC();
    v113 = v112;

    v114 = sub_3E850(p_name, v113, aBlock);

    *(v109 + 4) = v114;
    *(v109 + 12) = 2048;
    *(v109 + 14) = 0;
    *(v109 + 22) = 2048;
    *(v109 + 24) = 0;
    *(v109 + 32) = 2080;
    *(v109 + 34) = sub_3E850(1701736302, 0xE400000000000000, aBlock);
    _os_log_impl(&dword_0, v106, v107, "Categorized %s as %ld / %ld ext %s", v109, 0x2Au);
    swift_arrayDestroy();

    v97 = v108;
    v108(v202, v98);
    v105 = v111;
  }

  else
  {

    (v97)(v104, v98);
  }

  v115 = [objc_allocWithZone(IMDTelephonyIncomingMessageContext) init];
  [v115 setCategory:0];
  [v115 setSubCategory:0];
  [v115 setSpamExtensionName:0];
  [v115 setIsSendEnabled:1];
  [v115 setCapability:1];
  v116 = v206;
  v117 = [v206 chatIdentifier];
  [v115 setChatIdentifier:v117];

  v118 = &v210[*(v216 + 60)];
  if (*(v118 + 1))
  {
    v119 = *v118;
    v120 = sub_F07BC();
  }

  else
  {
    v120 = 0;
  }

  [v115 setMyNumberString:v120];

  v121 = sub_F07BC();
  [v115 setMySIMIDString:v121];

  v122 = [v105 sender];
  [v115 setSender:v122];

  v123 = [v105 unformattedID];
  [v115 setSenderUnformatted:v123];

  v124 = [v105 countryCode];
  [v115 setCountryCode:v124];

  v125 = sub_F09EC();
  [v115 replaceParticipants:v125];

  v126 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v127 = [v116 participants];
  if (!v127)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v128 = v127;
  v219 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v129 = sub_F09FC();

  v130 = v129 & 0xFFFFFFFFFFFFFF8;
  if (v129 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)); ; i = sub_F10DC())
  {
    v215 = v97;
    v216 = v105;
    v218 = v115;
    if (i)
    {
      p_name = 0;
      v115 = _swiftEmptyArrayStorage;
      do
      {
        v97 = p_name;
        while (1)
        {
          if ((v129 & 0xC000000000000001) != 0)
          {
            v132 = sub_F0FCC();
          }

          else
          {
            if (v97 >= *(v130 + 16))
            {
              goto LABEL_62;
            }

            v132 = *(v129 + 8 * v97 + 32);
          }

          v105 = v132;
          p_name = (v97 + 1);
          if (__OFADD__(v97, 1))
          {
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v133 = [v132 ID];
          if (v133)
          {
            break;
          }

          ++v97;
          if (p_name == i)
          {
            goto LABEL_43;
          }
        }

        v134 = v133;
        v97 = sub_F07EC();
        v214 = v135;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_6E2D8(0, *(v115 + 2) + 1, 1, v115);
        }

        v137 = *(v115 + 2);
        v136 = *(v115 + 3);
        v105 = (v137 + 1);
        if (v137 >= v136 >> 1)
        {
          v115 = sub_6E2D8((v136 > 1), v137 + 1, 1, v115);
        }

        *(v115 + 2) = v105;
        v138 = &v115[16 * v137];
        v139 = v214;
        *(v138 + 4) = v97;
        *(v138 + 5) = v139;
        v126 = 1204224;
      }

      while (p_name != i);
    }

LABEL_43:

    v140 = sub_F09EC();

    [v218 replaceUnformattedIDs:v140];

    v141 = [v206 *(v126 + 56)];
    if (!v141)
    {
      goto LABEL_87;
    }

    v142 = v141;
    v130 = sub_F09FC();

    if (v130 >> 62)
    {
      break;
    }

    v143 = *(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8));
    if (!v143)
    {
      goto LABEL_67;
    }

LABEL_46:
    v115 = 0;
    v219 = (v130 & 0xC000000000000001);
    v129 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v219)
      {
        v144 = sub_F0FCC();
      }

      else
      {
        if (v115 >= *(&dword_10 + (v130 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_64;
        }

        v144 = *(v130 + 8 * v115 + 32);
      }

      v105 = v144;
      v145 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      v146 = [v144 countryCode];
      if (v146)
      {
        v147 = v146;
        p_name = sub_F07EC();
        v97 = v148;
      }

      else
      {

        v97 = 0xE200000000000000;
        p_name = &loc_7374 + 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_6E2D8(0, *(v129 + 16) + 1, 1, v129);
      }

      v126 = *(v129 + 16);
      v149 = *(v129 + 24);
      v105 = (v126 + 1);
      if (v126 >= v149 >> 1)
      {
        v129 = sub_6E2D8((v149 > 1), v126 + 1, 1, v129);
      }

      *(v129 + 16) = v105;
      v150 = v129 + 16 * v126;
      *(v150 + 32) = p_name;
      *(v150 + 40) = v97;
      ++v115;
      if (v145 == v143)
      {
        goto LABEL_67;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v143 = sub_F10DC();
  if (v143)
  {
    goto LABEL_46;
  }

LABEL_67:

  v151 = sub_F09EC();

  p_name = v218;
  [v218 replaceCountryCodes:v151];

  v152 = v206;
  [p_name setStyle:{objc_msgSend(v206, "style")}];
  v153 = [objc_opt_self() sharedFeatureFlags];
  v154 = [v153 isMissingMessagesEnabled];

  if ((v154 & 1) != 0 && [v152 style] == 43)
  {
    v155 = [v152 latestIdentifierForDomain:IMChatLookupDomainIMessageGroupID];
    sub_7225C(v152);
    v157 = v156;
    [p_name setGroupID:v155];

    v158 = v204;
    v159 = v209;
    v160 = v201;
    v161 = (&stru_124FF8 + 8);
    if (v157)
    {
      goto LABEL_72;
    }

    v162 = [v152 originalGroupID];
    if (v162)
    {
      v163 = v162;
      sub_F07EC();

LABEL_72:
      v164 = v196;
      v165 = sub_F07BC();
    }

    else
    {
      v165 = 0;
      v164 = v196;
    }

    p_name = v218;
  }

  else
  {
    v166 = [v152 groupID];
    [p_name setGroupID:v166];

    v165 = [v152 originalGroupID];
    v158 = v204;
    v159 = v209;
    v160 = v201;
    v164 = v196;
    v161 = &stru_124FF8.name;
  }

  [p_name setOriginalGroupID:v165];

  v167 = [v152 displayName];
  [p_name setDisplayName:v167];

  v168 = v164;
  v169 = v216;
  v170 = [v168 findChatAndLinkMessage:v216 context:p_name];
  v171 = [objc_opt_self() sharedTracker];
  v172 = [v169 v161[502]];
  if (!v172)
  {
    goto LABEL_88;
  }

  v173 = v172;
  [v171 startTrackingMessageGUID:v172 chat:v170];

  v198(v160, v217, v158);
  p_name = v152;
  v174 = v170;
  v175 = sub_F06AC();
  v176 = sub_F0CCC();
  if (!os_log_type_enabled(v175, v176))
  {

    (v215)(v160, v158);
    goto LABEL_81;
  }

  v177 = swift_slowAlloc();
  aBlock[0] = swift_slowAlloc();
  *v177 = 136315906;
  v178 = [v174 v161[502]];

  if (!v178)
  {
    goto LABEL_90;
  }

  v179 = v161;
  v180 = sub_F07EC();
  v182 = v181;

  v183 = sub_3E850(v180, v182, aBlock);

  *(v177 + 4) = v183;
  *(v177 + 12) = 2080;
  v184 = [p_name v179[502]];

  if (v184)
  {
    v185 = sub_F07EC();
    v187 = v186;

    v188 = sub_3E850(v185, v187, aBlock);

    *(v177 + 14) = v188;
    *(v177 + 22) = 2048;
    *(v177 + 24) = 0;
    *(v177 + 32) = 2048;
    *(v177 + 34) = 0;
    _os_log_impl(&dword_0, v175, v176, "Found chat %s from %s cat %ld sub %ld", v177, 0x2Au);
    swift_arrayDestroy();

    (v215)(v201, v204);
    v159 = v209;
LABEL_81:
    v189 = v218;
    aBlock[0] = v174;
    v190 = v195;
    sub_F0A8C();

    (*(v211 + 8))(v159, v190);
    sub_37AE8(v210, type metadata accessor for RCSMessage);
    return;
  }

LABEL_91:
  __break(1u);
}

void sub_6C9F8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, char *a10, uint64_t a11)
{
  v136 = a8;
  v137 = a6;
  v130 = a7;
  v135 = a5;
  v146 = a3;
  v139 = a2;
  v143 = a1;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v138 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v129 - v17;
  v19 = Logger.rcs.unsafeMutableAddressor();
  v20 = v13[2];
  v133 = v19;
  v134 = v13 + 2;
  v132 = v20;
  (v20)(v18);

  v21 = a9;
  v22 = sub_F06AC();
  v23 = sub_F0CCC();
  v24 = os_log_type_enabled(v22, v23);
  v141 = v13;
  v142 = v21;
  v140 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v147[0] = swift_slowAlloc();
    *v25 = 136315906;
    v26 = [v21 guid];

    if (!v26)
    {
LABEL_85:
      __break(1u);
LABEL_86:

      __break(1u);
      goto LABEL_87;
    }

    v27 = sub_F07EC();
    v29 = v28;

    v30 = sub_3E850(v27, v29, v147);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2048;
    v31 = v143;
    *(v25 + 14) = v143;
    *(v25 + 22) = 2048;
    v32 = v139;
    *(v25 + 24) = v139;
    if (a4)
    {
      v33 = v146;
    }

    else
    {
      v33 = 1701736302;
    }

    if (a4)
    {
      v34 = a4;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    *(v25 + 32) = 2080;

    v35 = sub_3E850(v33, v34, v147);

    *(v25 + 34) = v35;
    _os_log_impl(&dword_0, v22, v23, "Categorized %s as %ld / %ld ext %s", v25, 0x2Au);
    swift_arrayDestroy();

    v36 = v141[1];
    (v36)(v18, v140);
  }

  else
  {

    v36 = v13[1];
    (v36)(v18, v12);
    v32 = v139;
    v31 = v143;
  }

  v145 = a10;
  v37 = [objc_allocWithZone(IMDTelephonyIncomingMessageContext) init];
  [v37 setCategory:v31];
  [v37 setSubCategory:v32];
  if (a4)
  {
    v38 = sub_F07BC();
  }

  else
  {
    v38 = 0;
  }

  v39 = v142;
  [v37 setSpamExtensionName:v38];

  [v37 setIsSendEnabled:1];
  [v37 setCapability:1];
  v21 = v145;
  v40 = [v145 chatIdentifier];
  [v37 setChatIdentifier:v40];

  v41 = (a11 + *(type metadata accessor for RCSMessage(0) + 60));
  if (v41[1])
  {
    v42 = *v41;
    v43 = sub_F07BC();
  }

  else
  {
    v43 = 0;
  }

  [v37 setMyNumberString:v43];

  v44 = sub_F07BC();
  [v37 setMySIMIDString:v44];

  v45 = [v39 sender];
  [v37 setSender:v45];

  v46 = [v39 unformattedID];
  [v37 setSenderUnformatted:v46];

  v47 = [v39 countryCode];
  [v37 setCountryCode:v47];

  v48 = sub_F09EC();
  [v37 replaceParticipants:v48];

  v49 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v50 = [v21 participants];
  if (!v50)
  {
    __break(1u);
    goto LABEL_83;
  }

  v51 = v50;
  v144 = v37;
  v146 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v52 = sub_F09FC();

  if (v52 >> 62)
  {
LABEL_38:
    v21 = sub_F10DC();
    v131 = v36;
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v21 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
    v131 = v36;
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  v53 = 0;
  v54 = _swiftEmptyArrayStorage;
  do
  {
    v36 = v53;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v55 = sub_F0FCC();
      }

      else
      {
        if (v36 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v55 = *(v52 + 8 * v36 + 32);
      }

      v56 = v55;
      v53 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v57 = [v55 ID];
      if (v57)
      {
        break;
      }

      ++v36;
      if (v53 == v21)
      {
        goto LABEL_39;
      }
    }

    v58 = v57;
    v59 = sub_F07EC();
    v129 = v60;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_6E2D8(0, *(v54 + 2) + 1, 1, v54);
    }

    v62 = *(v54 + 2);
    v61 = *(v54 + 3);
    if (v62 >= v61 >> 1)
    {
      v54 = sub_6E2D8((v61 > 1), v62 + 1, 1, v54);
    }

    *(v54 + 2) = v62 + 1;
    v63 = &v54[16 * v62];
    v64 = v129;
    *(v63 + 4) = v59;
    *(v63 + 5) = v64;
    v49 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  }

  while (v53 != v21);
LABEL_39:

  v65 = sub_F09EC();

  [v144 replaceUnformattedIDs:v65];

  v66 = [v145 v49[7]];
  if (!v66)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v67 = v66;
  v68 = sub_F09FC();

  if (v68 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v70 = 0;
    v146 = v68 & 0xC000000000000001;
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v146)
      {
        v72 = sub_F0FCC();
      }

      else
      {
        if (v70 >= *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v72 = *(v68 + 8 * v70 + 32);
      }

      v73 = v72;
      v74 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      v75 = [v72 countryCode];
      if (v75)
      {
        v76 = v75;
        v77 = sub_F07EC();
        v79 = v78;
      }

      else
      {

        v79 = 0xE200000000000000;
        v77 = 29557;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_6E2D8(0, *(v71 + 2) + 1, 1, v71);
      }

      v81 = *(v71 + 2);
      v80 = *(v71 + 3);
      if (v81 >= v80 >> 1)
      {
        v71 = sub_6E2D8((v80 > 1), v81 + 1, 1, v71);
      }

      *(v71 + 2) = v81 + 1;
      v82 = &v71[16 * v81];
      *(v82 + 4) = v77;
      *(v82 + 5) = v79;
      ++v70;
      if (v74 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:

  v83 = sub_F09EC();

  v84 = v144;
  [v144 replaceCountryCodes:v83];

  v21 = v145;
  [v84 setStyle:{objc_msgSend(v145, "style")}];
  v85 = [objc_opt_self() sharedFeatureFlags];
  v86 = [v85 isMissingMessagesEnabled];

  if ((v86 & 1) == 0 || [v21 style] != 43)
  {
    v93 = [v21 groupID];
    [v84 setGroupID:v93];

    v94 = [v21 originalGroupID];
    v90 = v142;
    v92 = v143;
    p_name = (&stru_124FF8 + 8);
    goto LABEL_68;
  }

  v87 = [v21 latestIdentifierForDomain:IMChatLookupDomainIMessageGroupID];
  sub_7225C(v21);
  v89 = v88;
  [v84 setGroupID:v87];

  v90 = v142;
  p_name = &stru_124FF8.name;
  if (v89)
  {
    v92 = v143;
LABEL_67:
    v94 = sub_F07BC();

    goto LABEL_68;
  }

  v95 = [v21 originalGroupID];
  v92 = v143;
  if (v95)
  {
    v96 = v95;
    sub_F07EC();

    goto LABEL_67;
  }

  v94 = 0;
LABEL_68:
  [v84 setOriginalGroupID:v94];

  v97 = [v21 displayName];
  [v84 setDisplayName:v97];

  if (v135)
  {
    v98 = sub_F075C();
    [v90 setSpamModelMetadata:v98];
  }

  v99 = v136;
  v100 = [v136 findChatAndLinkMessage:v90 context:v84];
  if (v137)
  {
    v101 = [v99 filteringController];
    v102 = sub_F075C();
    [v101 recordFilteringMetricsForMessageItem:v90 filteredToChat:v100 filterExtensionMetadata:v102];
  }

  if (v92 == 2)
  {
    v103 = v130;
    [v100 setSpamDetectionSource:v130];
    v104 = [v90 p_name[502]];
    [v100 setSpamDetectedMessage:v104];

    v105 = objc_opt_self();
    v106 = [v105 sharedHelper];
    [v106 presentDebugUI];

    v107 = [v105 sharedHelper];
    [v107 recordJunkMetricsForSpamDetectionSource:v103 service:IMServiceNameRCS];
  }

  v108 = [objc_opt_self() sharedTracker];
  v109 = [v90 p_name[502]];
  if (!v109)
  {
    goto LABEL_84;
  }

  v110 = v109;
  [v108 startTrackingMessageGUID:v109 chat:v100];

  v111 = v138;
  v112 = v140;
  v132(v138, v133, v140);
  v113 = v100;
  v21 = v21;
  v114 = sub_F06AC();
  v115 = sub_F0CCC();
  if (!os_log_type_enabled(v114, v115))
  {

    v128 = v111;
    v127 = v112;
    goto LABEL_80;
  }

  v116 = swift_slowAlloc();
  v147[0] = swift_slowAlloc();
  *v116 = 136315906;
  v117 = [v113 guid];

  if (!v117)
  {
    goto LABEL_86;
  }

  v118 = sub_F07EC();
  v120 = v119;

  v121 = sub_3E850(v118, v120, v147);

  *(v116 + 4) = v121;
  *(v116 + 12) = 2080;
  v122 = [v21 guid];

  if (v122)
  {
    v123 = sub_F07EC();
    v125 = v124;

    v126 = sub_3E850(v123, v125, v147);

    *(v116 + 14) = v126;
    *(v116 + 22) = 2048;
    *(v116 + 24) = v143;
    *(v116 + 32) = 2048;
    *(v116 + 34) = v139;
    _os_log_impl(&dword_0, v114, v115, "Found chat %s from %s cat %ld sub %ld", v116, 0x2Au);
    swift_arrayDestroy();

    v127 = v140;
    v128 = v138;
LABEL_80:
    v131(v128, v127);
    v147[0] = v113;
    sub_388C8(&qword_1284E8, &qword_F3668);
    sub_F0A8C();

    return;
  }

LABEL_87:
  __break(1u);
}

uint64_t RCSServiceSession.shouldCategorize(_:)(uint64_t a1)
{
  v2 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for RCSMessage(0);
  sub_37380(a1 + *(v9 + 32), v8, &unk_127FA0, &qword_F34C0);
  v10 = type metadata accessor for RCSMessage.Content(0);
  v11 = 1;
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) != 1)
  {
    sub_37380(v8, v5, &unk_127FA0, &qword_F34C0);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v11 = 0;
    }

    else
    {
      sub_37AE8(v5, type metadata accessor for RCSMessage.Content);
    }
  }

  sub_372B0(v8, &unk_127FA0, &qword_F34C0);
  return v11;
}

uint64_t sub_6DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a4)
  {
    v14 = sub_F07EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if (a5)
  {
    a5 = sub_F076C();
  }

  if (a6)
  {
    a6 = sub_F076C();
  }

  v13(a2, a3, v14, v16, a5, a6, a7);
}

id RCSServiceSession.message(with:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_F07BC();
  v2 = [v0 messageWithGUID:v1];

  return v2;
}

uint64_t sub_6DC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_72498;

  return sub_70CB0(a1, a2, a3, a4, a5);
}

uint64_t sub_6DCE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_5BD2C(a1, v14);
  if (v16[58])
  {
    v11 = v14[0];
    v12 = v14[1];
    *v13 = v15[0];
    *&v13[9] = *(v15 + 9);
    sub_5BD88(v16);
    v19 = v11;
    v20 = v12;
    v21[0] = *v13;
    v7 = *&v13[9];
  }

  else
  {
    sub_5EFF4(v14);
    v7 = 0uLL;
    v19 = 0u;
    v20 = 0u;
    v21[0] = 0u;
  }

  *(v21 + 9) = v7;
  v17[0] = v19;
  v17[1] = v20;
  v18[0] = v21[0];
  *(v18 + 9) = v7;
  v8 = type metadata accessor for RCSMessage(0);
  v9 = RCSServiceSession.groupChat(from:subscriptionInfo:group:)(v17, *(a1 + *(v8 + 60)), *(a1 + *(v8 + 60) + 8), *(a1 + *(v8 + 60) + 16), *(a1 + *(v8 + 60) + 24), a2);
  result = sub_372B0(&v19, &qword_1282F0, &qword_F3450);
  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t sub_6DE08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_373E8(a1, v4);
  result = sub_6F3C8(v6, v2, v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_6DE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RCSServiceSession.instantMessageChat(for:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_6DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_72484;

  return (sub_71128)(v7 + 16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_6DF70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6E010;

  return RCSServiceSession.generateSafeRender(for:)(a1, a2);
}

uint64_t sub_6E010(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_6E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_6E1C8;

  return RCSServiceSession.categorize(_:rcsMessage:foundChat:)(a2, a3, v7);
}

uint64_t sub_6E1C8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

char *sub_6E2D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_128288, &qword_F3460);
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

void *sub_6E3E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_388C8(&qword_128550, &unk_F3700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(&qword_128558, &unk_F4430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_6E518(size_t result, int64_t a2, char a3, void *a4)
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

  sub_388C8(&qword_128538, &unk_F36D8);
  v10 = *(sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
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
  v15 = *(sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
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

char *sub_6E708(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_128540, &qword_F36E8);
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

void *sub_6E830(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_388C8(&qword_1284C8, &unk_F3640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(&qword_1284D0, &qword_F49F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_6E98C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_388C8(a5, a6);
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

char *sub_6EB68(char *a1, int64_t a2, char a3)
{
  result = sub_6EC48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6EB88(void *a1, int64_t a2, char a3)
{
  result = sub_6ED54(a1, a2, a3, *v3, &qword_128560, &unk_F3710, &qword_128568, &qword_F3950);
  *v3 = result;
  return result;
}

void *sub_6EBC8(void *a1, int64_t a2, char a3)
{
  result = sub_6ED54(a1, a2, a3, *v3, &qword_128530, &qword_F36D0, &qword_128528, &unk_F36C0);
  *v3 = result;
  return result;
}

char *sub_6EC08(char *a1, int64_t a2, char a3)
{
  result = sub_6EE88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6EC28(char *a1, int64_t a2, char a3)
{
  result = sub_6EF98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6EC48(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_128288, &qword_F3460);
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

void *sub_6ED54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_388C8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6EE88(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_127F78, &qword_F2EB8);
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

char *sub_6EF98(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_1284E0, &qword_F3660);
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

uint64_t sub_6F09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_54ED8(a1, a2);

  return sub_3FE38(a1 + 40, a2 + 40);
}

uint64_t sub_6F0E0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_3FE38(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_54F88(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_372B0(v22, &qword_128548, &unk_F36F0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_6F240@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_54ED8(*(v3 + 48) + 40 * v13, &v18);
    sub_3FE38(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_54F88(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_372B0(&v18, &qword_128518, &unk_F36B0);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6F3C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v83 = sub_F06CC();
  v82 = *(v83 - 8);
  v8 = *(v82 + 64);
  v9 = __chkstk_darwin(v83);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v74 - v12;
  v93[3] = a3;
  v93[4] = a4;
  v14 = sub_37474(v93);
  (*(*(a3 - 8) + 16))(v14, a1, a3);
  v15 = a4 + 16;
  v85 = *(a4 + 16);
  v16 = v85(a3, a4);
  v79 = v11;
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v84 = a4 + 16;
    v80 = v14;
    v81 = a4;
    v20 = [objc_opt_self() sharedInstance];
    static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v18, v19);
    v21 = sub_F07BC();

    v22 = [a2 service];
    v23 = [v22 internalName];

    if (!v23)
    {
      sub_F07EC();
      v23 = sub_F07BC();
    }

    v24 = [v20 newestExistingChatWithOriginalGroupID:v21 onService:v23];

    v15 = v84;
    if (v24)
    {
      v77 = v18;
      v25 = v24;
      v26 = Logger.rcs.unsafeMutableAddressor();
      v27 = v82;
      v28 = v83;
      (*(v82 + 16))(v13, v26, v83);
      v78 = v25;

      v29 = sub_F06AC();
      v30 = sub_F0D0C();
      if (os_log_type_enabled(v29, v30))
      {
        v76 = a2;
        v31 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v86 = v75;
        *v31 = 136315394;
        v32 = v78;
        v33 = [v78 guid];

        if (!v33)
        {
          __break(1u);
          goto LABEL_34;
        }

        v35 = sub_F07EC();
        v37 = v36;

        v38 = sub_3E850(v35, v37, &v86);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2080;
        v39 = sub_3E850(v77, v19, &v86);

        *(v31 + 14) = v39;
        _os_log_impl(&dword_0, v29, v30, "Found chat %s for conversation ID %s", v31, 0x16u);
        swift_arrayDestroy();

        (*(v82 + 8))(v13, v83);
        a2 = v76;
        a4 = v81;
        v14 = v80;
        v15 = v84;
        if ((static IMDChatRCSGroupIdentity.migrationEnabled.getter() & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_14:
        if (v24)
        {
LABEL_26:
          v64 = v24;
          *(&v87 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
          *&v88 = &protocol witness table for IMDChat;
          *&v86 = v64;
          IMDChatRCSGroupIdentity.converge(identity:)(v93);
          sub_39BC4(&v86);
          goto LABEL_27;
        }

        v41 = (*(a4 + 8))(a3, a4);
        if (!v42)
        {
          v24 = 0;
          goto LABEL_27;
        }

        v43 = v41;
        v44 = v42;
        v84 = v15;
        v80 = v14;
        v81 = a4;
        v45 = [objc_opt_self() sharedInstance];
        v46 = sub_F07BC();
        v47 = [a2 service];
        v48 = [v47 internalName];

        if (!v48)
        {
          sub_F07EC();
          v48 = sub_F07BC();
        }

        v24 = [v45 newestExistingChatWithOriginalGroupID:v46 onService:v48];

        if (!v24)
        {

          a4 = v81;
          goto LABEL_27;
        }

        v78 = v43;
        v76 = a2;
        v49 = v24;
        v50 = Logger.rcs.unsafeMutableAddressor();
        v51 = v82;
        v52 = v79;
        v53 = v83;
        (*(v82 + 16))(v79, v50, v83);
        v54 = v49;

        v55 = sub_F06AC();
        v56 = sub_F0D0C();
        if (!os_log_type_enabled(v55, v56))
        {

          swift_bridgeObjectRelease_n();
          (*(v51 + 8))(v52, v53);
          a2 = v76;
          a4 = v81;
          goto LABEL_25;
        }

        v57 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v86 = v77;
        *v57 = 136315394;
        v58 = [v54 guid];

        if (v58)
        {
          v59 = sub_F07EC();
          v61 = v60;

          v62 = sub_3E850(v59, v61, &v86);

          *(v57 + 4) = v62;
          *(v57 + 12) = 2080;
          v63 = sub_3E850(v78, v44, &v86);

          *(v57 + 14) = v63;
          _os_log_impl(&dword_0, v55, v56, "Found chat %s for group URI %s", v57, 0x16u);
          swift_arrayDestroy();

          (*(v82 + 8))(v79, v83);
          a2 = v76;
          a4 = v81;
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return result;
      }

      swift_bridgeObjectRelease_n();
      v40 = v78;

      (*(v27 + 8))(v13, v28);
    }

    else
    {
    }

    a4 = v81;
    v14 = v80;
    if ((static IMDChatRCSGroupIdentity.migrationEnabled.getter() & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v24 = 0;
  if (static IMDChatRCSGroupIdentity.migrationEnabled.getter())
  {
    goto LABEL_14;
  }

LABEL_25:
  if (v24)
  {
    goto LABEL_26;
  }

LABEL_27:
  v65 = v85(a3, a4);
  if (v66)
  {
    v67 = v66;
    if (*(*(*&a2[OBJC_IVAR___RCSServiceSession_state] + 72) + 16) && (v68 = v65, v69 = *(*&a2[OBJC_IVAR___RCSServiceSession_state] + 72), , sub_51FEC(v68, v67), v71 = v70, , (v71 & 1) != 0))
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      sub_60AF0(v68, v67, &v86);
      v73 = v72;

      sub_372B0(&v86, &qword_127EE8, &unk_F33F0);
      v24 = v73;
    }

    else
    {
    }
  }

  sub_1EDC(v93);
  return v24;
}

unint64_t sub_6FD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_6EBC8(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  sub_388C8(&qword_127F60, &unk_F3970);
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    *&v26 = sub_F07EC();
    *(&v26 + 1) = v7;

    sub_F0F3C();
    v31 = &type metadata for Int32;
    v30[10] = 2;
    *&v26 = sub_F07EC();
    *(&v26 + 1) = v8;
    sub_F0F3C();
    v32[8] = &type metadata for String;
    v32[5] = v6;
    v32[6] = v5;
    v9 = sub_F110C();

    sub_37380(v30, &v26, &qword_128510, &unk_F36A0);
    result = sub_51FA8(&v26);
    if (v11)
    {
      break;
    }

    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v9[6] + 40 * result;
    v13 = v26;
    v14 = v27;
    *(v12 + 32) = v28;
    *v12 = v13;
    *(v12 + 16) = v14;
    result = sub_54F88(v29, (v9[7] + 32 * result));
    v15 = v9[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_12;
    }

    v9[2] = v17;
    sub_37380(v32, &v26, &qword_128510, &unk_F36A0);
    result = sub_51FA8(&v26);
    if (v18)
    {
      break;
    }

    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = v9[6] + 40 * result;
    v20 = v26;
    v21 = v27;
    *(v19 + 32) = v28;
    *v19 = v20;
    *(v19 + 16) = v21;
    result = sub_54F88(v29, (v9[7] + 32 * result));
    v22 = v9[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_12;
    }

    v9[2] = v23;

    sub_388C8(&qword_128510, &unk_F36A0);
    swift_arrayDestroy();
    v33 = v2;
    v25 = v2[2];
    v24 = v2[3];
    if (v25 >= v24 >> 1)
    {
      sub_6EBC8((v24 > 1), v25 + 1, 1);
      v2 = v33;
    }

    v2[2] = v25 + 1;
    v2[v25 + 4] = v9;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RCSServiceSession.ChatResolutionError()
{
  result = qword_128478;
  if (!qword_128478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_70068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_70080(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_F0C3C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_82EDC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id _sSo17RCSServiceSessionC3RCSE19subscriptionContext3forSo024CTXPCServiceSubscriptionE0CSg04CoreC010RCSMessageV0H4InfoV_tF_0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 ctSubscriptionInfo];

  if (!v7)
  {
    return 0;
  }

  if (a4)
  {
    a4 = sub_F07BC();
  }

  if (a2)
  {
    a2 = sub_F07BC();
  }

  v8 = [v7 __im_subscriptionContextForForSimID:a4 phoneNumber:a2];

  return v8;
}

void sub_701FC(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_F07BC();
  if (a3 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  a4 = [v10 guidForNewIncomingTransferWithFilename:v11 isDirectory:0 totalBytes:a3 hfsType:0 hfsCreator:0 hfsFlags:0];

  if (!a4)
  {
LABEL_7:
    sub_72380();
    swift_allocError();
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    swift_willThrow();

    return;
  }

  v13 = [v8 sharedInstance];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 transferForGUID:a4];

    if (v15)
    {
      v16 = sub_F019C();
      [v15 _setLocalURL:v16];

      return;
    }

    goto LABEL_7;
  }

LABEL_10:

  __break(1u);
}

unint64_t sub_7038C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  sub_6F240(&v50);
  if (!*(&v51 + 1))
  {
    goto LABEL_25;
  }

  v47 = v50;
  v48 = v51;
  v49 = v52;
  sub_54F88(v53, v46);
  v12 = *a5;
  result = sub_51FA8(&v47);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_76100(v18, a4 & 1);
    v20 = *a5;
    result = sub_51FA8(&v47);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_F126C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_76F14();
    result = v25;
    v22 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v19)
  {
LABEL_11:
    v23 = result;
    sub_54F34(&v47);
    v24 = (v22[7] + 32 * v23);
    sub_1EDC(v24);
    sub_54F88(v46, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  v26 = v22[6] + 40 * result;
  v27 = v47;
  v28 = v48;
  *(v26 + 32) = v49;
  *v26 = v27;
  *(v26 + 16) = v28;
  result = sub_54F88(v46, (v22[7] + 32 * result));
  v29 = v22[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v17)
  {
    v22[2] = v30;
LABEL_15:
    sub_6F240(&v50);
    if (*(&v51 + 1))
    {
      v19 = 1;
      do
      {
        v47 = v50;
        v48 = v51;
        v49 = v52;
        sub_54F88(v53, v46);
        v33 = *a5;
        result = sub_51FA8(&v47);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_76100(v37, 1);
          v38 = *a5;
          result = sub_51FA8(&v47);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;
          sub_54F34(&v47);
          v32 = (v40[7] + 32 * v31);
          sub_1EDC(v32);
          sub_54F88(v46, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = v40[6] + 40 * result;
          v42 = v47;
          v43 = v48;
          *(v41 + 32) = v49;
          *v41 = v42;
          *(v41 + 16) = v43;
          result = sub_54F88(v46, (v40[7] + 32 * result));
          v44 = v40[2];
          v17 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v40[2] = v45;
        }

        sub_6F240(&v50);
      }

      while (*(&v51 + 1));
    }

LABEL_25:
    sub_66138();
  }

LABEL_27:
  __break(1u);
  return result;
}

void _sSo17RCSServiceSessionC3RCSE4mark_15asThumbnailModeySo14IMFileTransferC_So0hifG0VtF_0(id a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [a1 userInfo];
    if (v4)
    {
      v5 = v4;
      v6 = sub_F076C();

      sub_388C8(&qword_128508, "ȷ");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F2C60;
      sub_F07EC();
      v17[1] = v8;
      sub_F0F3C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = a2;
      v9 = sub_80F34(inited);
      swift_setDeallocating();
      sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = v6;
      sub_7038C(v9, sub_6F09C, 0, isUniquelyReferenced_nonNull_native, v17);

      v11 = sub_F075C();

      [a1 setUserInfo:v11];

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  *&v18[0] = sub_F07EC();
  *(&v18[0] + 1) = v12;

  sub_F0F3C();
  v13 = [a1 userInfo];
  if (!v13)
  {
LABEL_11:
    __break(1u);

    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_F076C();

  sub_66354(v17, v18);
  sub_54F34(v17);
  sub_372B0(v18, &unk_127FB0, &qword_F2F40);
  if (v15)
  {
    v16 = sub_F075C();
  }

  else
  {
    v16 = 0;
  }

  [a1 setUserInfo:{v16, v15}];
}

void _sSo17RCSServiceSessionC3RCSE14acceptTransferyySo06IMFileE0CF_0(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 guid];
    v5 = sub_388C8(&qword_128320, &qword_F34B0);
    v6 = &v18 - ((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = [a1 localURL];
    __chkstk_darwin(v7);
    if (v8)
    {
      v9 = v8;
      sub_F01AC();

      v10 = sub_F01EC();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v10 = sub_F01EC();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    sub_376D8(v6, v6, &qword_128320, &qword_F34B0);
    sub_F01EC();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v6, 1, v10);
    if (v12)
    {
      sub_372B0(v6, &qword_128320, &qword_F34B0);
      v13 = 0;
    }

    else
    {
      v14 = *(v11 + 64);
      v15 = __chkstk_darwin(v12);
      v17 = &v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v17, v6, v10, v15);
      sub_372B0(v6, &qword_128320, &qword_F34B0);
      sub_F01BC();
      (*(v11 + 8))(v17, v10);
      v13 = sub_F07BC();
    }

    [v3 acceptTransfer:v4 path:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_70CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_F0AEC();
  v5[24] = sub_F0ADC();
  v7 = sub_F0A6C();
  v5[25] = v7;
  v5[26] = v6;

  return _swift_task_switch(sub_70D50, v7, v6);
}

uint64_t sub_70D50()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = [objc_opt_self() sharedInstance];
  v0[27] = v6;
  v7 = sub_F07BC();
  v0[28] = v7;
  v8 = sub_F019C();
  v0[29] = v8;
  v9 = sub_F019C();
  v0[30] = v9;
  if (v2)
  {
    v10 = v0[23];
    v11 = sub_F075C();
  }

  else
  {
    v11 = 0;
  }

  v0[31] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_70F20;
  v12 = swift_continuation_init();
  v0[17] = sub_388C8(&qword_128500, &unk_F3690);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_680C8;
  v0[13] = &unk_11E908;
  v0[14] = v12;
  [v6 downloadRCSTransferOnSimID:v7 transferURL:v8 destURL:v9 cryptoMaterial:v11 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_70F20()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_71028, v2, v1);
}

uint64_t sub_71028()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[24];

  v7 = v0[18];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_710C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_71128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  sub_F0AEC();
  v7[30] = sub_F0ADC();
  v9 = sub_F0A6C();
  v7[31] = v9;
  v7[32] = v8;

  return _swift_task_switch(sub_711CC, v9, v8);
}

uint64_t sub_711CC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[28];
    v3 = v0[25];
    v4 = v0[26];
    v5 = sub_F07BC();
    v0[34] = v5;
    if (v2)
    {
      v6 = v0[27];
      v7 = v0[28];
      v2 = sub_F07BC();
    }

    v0[35] = v2;
    v8 = v0[29];
    v9 = v0[24];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_713B0;
    v10 = swift_continuation_init();
    v0[17] = sub_388C8(&qword_1284F8, &qword_F3688);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_69DF8;
    v0[13] = &unk_11E8E0;
    v0[14] = v10;
    [v1 generatePreviewForTransfer:v9 attachmentPath:v5 balloonBundleID:v2 senderContext:v8 completionBlock:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v11 = v0[30];

    v12 = v0[23];
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_713B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_71588;
  }

  else
  {
    v6 = sub_714E0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_714E0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 240);

  LOBYTE(v3) = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);

  v4 = *(v0 + 184);
  *v4 = v7;
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_71588()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];

  swift_willThrow();

  v6 = v0[1];
  v7 = v0[36];

  return v6();
}

id _sSo17RCSServiceSessionC3RCSE13senderContext3forSo08IMSenderE0C04CoreC010RCSMessageV_tF_0(uint64_t a1)
{
  sub_5BD2C(a1, &v7);
  if (v8[58])
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = sub_F07BC();

    v3 = [v1 hasKnownSenderChatWithChatIdentifier:v2];

    sub_F07EC();
    v4 = sub_F07BC();

    v5 = [objc_opt_self() contextWithKnownSender:v3 serviceName:v4];

    sub_5BD88(v8);
  }

  else
  {
    v5 = [objc_opt_self() fromMeContextWithServiceName:IMServiceNameRCS];
    sub_5EFF4(&v7);
  }

  return v5;
}

BOOL _sSo17RCSServiceSessionC3RCSE15isSenderBlocked3forSb04CoreC010RCSMessageV_tF_0(uint64_t a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  sub_5BD2C(a1, v60);
  if (v61[58] == 1)
  {
    v57 = v12;
    v59 = v9;
    v19 = v2;
    v20 = v60[2];
    v21 = v60[3];
    sub_5BD88(v61);

    v58 = v20;
    v22 = sub_F07BC();
    v23 = sub_F07BC();
    v24 = IMPhoneNumberRefCopyForPhoneNumber();

    if (v24)
    {
      v25 = v19;
      if (CMFItemCreateWithPhoneNumber())
      {
        swift_unknownObjectRetain();
        IsItemBlocked = CMFBlockListIsItemBlocked();
        swift_unknownObjectRelease_n();

        v27 = v58;
        v28 = v59;
        if (IsItemBlocked)
        {
          v29 = 1;
          goto LABEL_22;
        }

LABEL_16:
        v41 = sub_F07BC();
        if (CMFItemCreateWithEmailAddress())
        {
          swift_unknownObjectRetain();
          v42 = CMFBlockListIsItemBlocked();
          swift_unknownObjectRelease_n();

          v29 = v42 != 0;
        }

        else
        {
          v43 = Logger.rcs.unsafeMutableAddressor();
          v44 = v57;
          (*(v3 + 16))(v57, v43, v25);
          v45 = sub_F06AC();
          v46 = sub_F0CEC();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_0, v45, v46, "Couldn't create email item", v47, 2u);
          }

          else
          {
          }

          (*(v3 + 8))(v44, v25);
          v29 = 0;
        }

LABEL_22:
        v48 = Logger.rcs.unsafeMutableAddressor();
        (*(v3 + 16))(v28, v48, v25);

        v49 = sub_F06AC();
        v50 = sub_F0CCC();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v60[0] = swift_slowAlloc();
          *v51 = 136315394;
          v52 = sub_3E850(v27, v21, v60);

          *(v51 + 4) = v52;
          *(v51 + 12) = 2080;
          if (v29)
          {
            v53 = 0;
          }

          else
          {
            v53 = 7630702;
          }

          if (v29)
          {
            v54 = 0xE000000000000000;
          }

          else
          {
            v54 = 0xE300000000000000;
          }

          v55 = sub_3E850(v53, v54, v60);

          *(v51 + 14) = v55;
          _os_log_impl(&dword_0, v49, v50, "Message for sender handle: %s is %s blocked.", v51, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v3 + 8))(v28, v25);
        return v29;
      }

      v38 = Logger.rcs.unsafeMutableAddressor();
      (*(v3 + 16))(v18, v38, v19);
      v35 = sub_F06AC();
      v39 = sub_F0CEC();
      if (os_log_type_enabled(v35, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v35, v39, "Couldn't create phone item.", v40, 2u);
        v25 = v19;
      }

      else
      {

        v35 = v24;
      }
    }

    else
    {
      v34 = Logger.rcs.unsafeMutableAddressor();
      v25 = v19;
      (*(v3 + 16))(v15, v34, v19);
      v35 = sub_F06AC();
      v36 = sub_F0CEC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "Couldn't create phone number.", v37, 2u);
      }

      v18 = v15;
    }

    v27 = v58;
    v28 = v59;

    (*(v3 + 8))(v18, v25);
    goto LABEL_16;
  }

  sub_5EFF4(v60);
  v30 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v30, v2);
  v31 = sub_F06AC();
  v32 = sub_F0CEC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "Cannot determine whether sender is blocked because the sender is nil.", v33, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_71EBC(uint64_t a1, int a2)
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

uint64_t sub_71F04(uint64_t result, int a2, int a3)
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

void sub_71FA4()
{
  sub_72018();
  if (v0 <= 0x3F)
  {
    sub_72094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_72018()
{
  if (!qword_128488)
  {
    sub_3CB70(&qword_1282F0, &qword_F3450);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_128488);
    }
  }
}

void sub_72094()
{
  if (!qword_128490)
  {
    type metadata accessor for RCSMessage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_128490);
    }
  }
}

void sub_72100(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(type metadata accessor for RCSMessage(0) - 8);
  v15 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(sub_388C8(&qword_1284E8, &qword_F3668) - 8);
  v20 = *(v7 + v16 + 8);
  v21 = *(v7 + v17);
  v19 = *(v7 + v16);
  v22 = v7 + ((v17 + *(v18 + 80) + 8) & ~*(v18 + 80));
  sub_6C9F8(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *(v7 + 32), v7 + v15);
}

id sub_7225C(void *a1)
{
  v1 = [a1 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_F07EC();

    return v3;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v7[0] = 1;
    v8 = sub_F0FBC();
    v9 = v6;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v13 = 0;
    sub_94528(v7);

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_72380()
{
  result = qword_128520;
  if (!qword_128520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128520);
  }

  return result;
}

uint64_t sub_723D4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_72434(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_724A4(void *a1)
{
  v2 = v1;
  v4 = [a1 labelID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F07EC();
    v8 = v7;

    v9 = *&v2[OBJC_IVAR___RCSServiceSession_state];
    v10 = *(v9 + 24);
    if (*(v10 + 16))
    {
      v11 = *(v9 + 24);

      v12 = sub_51FEC(v6, v8);
      if (v13)
      {
        v14 = v12;

        v15 = *(*(v10 + 56) + 8 * v14);

        return v15;
      }
    }

    v18 = *(v9 + 16);
    v29 = 0;
    v19 = [v18 _getSystemConfiguration:a1 withError:&v29];
    v20 = v29;
    if (v19)
    {
      v21 = v19;
      v29 = *(v9 + 24);
      v22 = v20;

      v23 = v21;

      sub_44A08(v21, v6, v8);
      v24 = *(v9 + 24);
      *(v9 + 24) = v29;

      v25 = [v2 account];
      v26 = sub_72DF0();
      sub_51844(v26);

      v27 = sub_F075C();

      [v25 writeAccountDefaults:v27];

      return v23;
    }

    else
    {
      v28 = v29;

      sub_F015C();

      return swift_willThrow();
    }
  }

  else
  {
    sub_72750();
    swift_allocError();
    *v17 = a1;
    swift_willThrow();
    return a1;
  }
}

unint64_t sub_72750()
{
  result = qword_128570;
  if (!qword_128570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128570);
  }

  return result;
}

void sub_727A4()
{
  v1 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
LABEL_4:
  v9 = v6;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    v6 = v9;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*(v1 + 56) + ((v6 << 9) | (8 * v10)));
    v12 = [v11 identity];
    if (v12)
    {
      v29 = v12;
      v13 = [v29 v8[35]];
      v30 = sub_F09FC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_6E3E4(0, v7[2] + 1, 1, v7);
      }

      v15 = v7[2];
      v14 = v7[3];
      v8 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
      if (v15 >= v14 >> 1)
      {
        v7 = sub_6E3E4((v14 > 1), v15 + 1, 1, v7);
      }

      v7[2] = v15 + 1;
      v7[v15 + 4] = v30;
      goto LABEL_4;
    }

    v9 = v6;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v6);
    ++v9;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v16 = v7[2];
  if (v16)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      if (v17 >= v7[2])
      {
        goto LABEL_37;
      }

      v19 = v7[v17 + 4];
      v20 = *(v19 + 16);
      v21 = *(v18 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_38;
      }

      v23 = v7[v17 + 4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= *(v18 + 3) >> 1)
      {
        if (!*(v19 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v25 = v21 + v20;
        }

        else
        {
          v25 = v21;
        }

        v18 = sub_6E2D8(isUniquelyReferenced_nonNull_native, v25, 1, v18);
        if (!*(v19 + 16))
        {
LABEL_19:

          if (v20)
          {
            goto LABEL_39;
          }

          goto LABEL_20;
        }
      }

      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v20)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v18 + 2);
        v27 = __OFADD__(v26, v20);
        v28 = v26 + v20;
        if (v27)
        {
          goto LABEL_41;
        }

        *(v18 + 2) = v28;
      }

LABEL_20:
      ++v17;
    }

    while (v16 != v17);
  }
}

void sub_72AB4()
{
  v1 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);

  v7 = 0;
  v8 = 0;
  while (v4)
  {
LABEL_10:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * v10)));
    v12 = [v11 operationStatus];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 registrationState];

      if (v14)
      {
        if (v14 == &dword_0 + 1)
        {
          v7 = 5;
        }
      }

      else if (v7 <= 4)
      {
        v7 = 4;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_72BFC()
{
  v1 = *(*&v0[OBJC_IVAR___RCSServiceSession_state] + 24);

  sub_770B8(v2);
  v4 = v3;

  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v23 = v0;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v4 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    sub_41440(v12);
    v14 = v13;

    v15 = *(v14 + 16);
    v16 = *(v10 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v17 > *(v10 + 3) >> 1)
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v10 = sub_6E2D8(isUniquelyReferenced_nonNull_native, v19, 1, v10);
    }

    v7 &= v7 - 1;
    if (*(v14 + 16))
    {
      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v15)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v10 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_27;
        }

        *(v10 + 2) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_72DF0()
{
  v1 = sub_81070(_swiftEmptyArrayStorage);
  v2 = sub_81070(_swiftEmptyArrayStorage);
  v3 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v156 = v6 & *(v3 + 64);
  v7 = (v5 + 63) >> 6;

  v160 = 0;
  v8 = 0;
  v9 = 0;
LABEL_5:
  while (2)
  {
    v10 = v156;
    if (v156)
    {
      v11 = v9;
    }

    else
    {
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (v11 >= v7)
        {

          sub_388C8(&qword_1285A0, &unk_F74F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_F3720;
          *(inited + 32) = sub_F07EC();
          *(inited + 40) = v100;
          sub_388C8(&qword_1285A8, &unk_F3760);
          v101 = swift_initStackObject();
          *(v101 + 16) = xmmword_F2C60;
          *(v101 + 32) = sub_F07EC();
          *(v101 + 40) = v102;
          sub_72AB4();
          *(v101 + 48) = v103;
          v104 = sub_81174(v101);
          swift_setDeallocating();
          sub_372B0(v101 + 32, &qword_1285B0, &qword_F38C0);
          *(inited + 72) = sub_388C8(&qword_1285B8, &unk_F3770);
          *(inited + 48) = v104;
          *(inited + 80) = sub_F07EC();
          *(inited + 88) = v105;
          v106 = [objc_opt_self() IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
          if (v106)
          {
            v107 = v106;
            v108 = sub_F09FC();
          }

          else
          {
            v108 = _swiftEmptyArrayStorage;
          }

          *(inited + 120) = sub_388C8(&qword_128558, &unk_F4430);
          *(inited + 96) = v108;
          *(inited + 128) = sub_F07EC();
          *(inited + 136) = v109;
          sub_72BFC();
          v111 = v110;
          v112 = *(v110 + 16);
          if (v112)
          {
            v158 = inited;
            v152 = v2;
            v170 = _swiftEmptyArrayStorage;
            sub_6EB88(0, v112, 0);
            v113 = _swiftEmptyArrayStorage;
            sub_388C8(&qword_128590, &qword_F3930);
            v114 = (v111 + 40);
            do
            {
              v115 = *(v114 - 1);
              v116 = *v114;
              v168[0] = sub_F07EC();
              v168[1] = v117;
              v168[5] = &type metadata for String;
              v168[2] = v115;
              v168[3] = v116;
              v169[0] = sub_F07EC();
              v169[1] = v118;
              v169[5] = &type metadata for Int;
              v169[2] = 3;
              v119 = sub_F110C();
              sub_776D8(v168, &v165);
              v120 = v165;
              v121 = v166;

              v122 = sub_51FEC(v120, v121);
              if (v123)
              {
                goto LABEL_99;
              }

              *(v119 + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v122;
              v124 = (v119[6] + 16 * v122);
              *v124 = v120;
              v124[1] = v121;
              sub_54F88(v167, (v119[7] + 32 * v122));
              v125 = v119[2];
              v49 = __OFADD__(v125, 1);
              v126 = v125 + 1;
              if (v49)
              {
                goto LABEL_100;
              }

              v119[2] = v126;
              sub_776D8(v169, &v165);
              v127 = v165;
              v128 = v166;
              v129 = sub_51FEC(v165, v166);
              if (v130)
              {
                goto LABEL_101;
              }

              *(v119 + ((v129 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v129;
              v131 = (v119[6] + 16 * v129);
              *v131 = v127;
              v131[1] = v128;
              sub_54F88(v167, (v119[7] + 32 * v129));
              v132 = v119[2];
              v49 = __OFADD__(v132, 1);
              v133 = v132 + 1;
              if (v49)
              {
                goto LABEL_102;
              }

              v119[2] = v133;

              sub_388C8(&qword_1285C0, &qword_F3780);
              swift_arrayDestroy();
              v170 = v113;
              v135 = v113[2];
              v134 = v113[3];
              if (v135 >= v134 >> 1)
              {
                sub_6EB88((v134 > 1), v135 + 1, 1);
                v113 = v170;
              }

              v113[2] = v135 + 1;
              v113[v135 + 4] = v119;
              v114 += 2;
              --v112;
            }

            while (v112);

            v2 = v152;
            inited = v158;
          }

          else
          {

            v113 = _swiftEmptyArrayStorage;
          }

          *(inited + 168) = sub_388C8(&qword_1285C8, &qword_F3788);
          *(inited + 144) = v113;
          *(inited + 176) = sub_F07EC();
          *(inited + 184) = v136;
          v137 = sub_388C8(&qword_1285D0, &qword_F3790);
          *(inited + 216) = v137;
          *(inited + 192) = v1;
          *(inited + 224) = sub_F07EC();
          *(inited + 232) = v138;
          *(inited + 264) = v137;
          *(inited + 240) = v2;
          v139 = sub_81270(inited);
          swift_setDeallocating();
          sub_388C8(&qword_1285C0, &qword_F3780);
          swift_arrayDestroy();
          sub_776C8(v160);
          sub_776C8(v8);
          return v139;
        }

        v10 = *(v4 + 8 * v11);
        ++v9;
      }

      while (!v10);
    }

    v157 = v10;
    v154 = v11;
    v12 = __clz(__rbit64(v10)) | (v11 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v153 = *v13;
    v14 = *(*(v3 + 56) + 8 * v12);
    v155 = v13[1];

    v15 = v14;
    v16 = sub_40D54(v15);
    v17 = _swiftEmptyArrayStorage;
    v163 = v15;
    if (!v16)
    {
      v18 = sub_F07EC();
      v20 = v19;
      v17 = sub_6E2D8(0, 1, 1, _swiftEmptyArrayStorage);
      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_6E2D8((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
    }

    v24 = v17;
    if (sub_407A8(v15, 45) & 1) != 0 || (sub_407A8(v15, 45))
    {
      v25 = v157;
      v26 = v24;
    }

    else
    {
      v27 = sub_F07EC();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v24;
      }

      else
      {
        v26 = sub_6E2D8(0, *(v24 + 2) + 1, 1, v24);
      }

      v31 = *(v26 + 2);
      v30 = *(v26 + 3);
      v25 = v157;
      if (v31 >= v30 >> 1)
      {
        v98 = sub_6E2D8((v30 > 1), v31 + 1, 1, v26);
        v25 = v157;
        v26 = v98;
      }

      *(v26 + 2) = v31 + 1;
      v32 = &v26[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
    }

    v156 = (v25 - 1) & v25;
    if (!*(v26 + 2))
    {

      v9 = v154;
      continue;
    }

    break;
  }

  v33 = 0;
  v148 = v3;
  v149 = v26 + 32;
  v146 = v7;
  v147 = v4;
  v144 = *(v26 + 2);
  v145 = v26;
  while (1)
  {
    if (v33 >= *(v26 + 2))
    {
      goto LABEL_103;
    }

    v150 = v33;
    v34 = &v149[16 * v33];
    v36 = *v34;
    v35 = v34[1];

    sub_776C8(v160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = v35;
    v165 = v2;
    v39 = sub_51FEC(v36, v35);
    v40 = v2[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_104;
    }

    v43 = v38;
    if (v2[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_768B4();
        v2 = v165;
      }

      v44 = v164;
      if (v43)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_755F4(v42, isUniquelyReferenced_nonNull_native);
      v44 = v164;
      v2 = v165;
      v45 = sub_51FEC(v36, v164);
      if ((v43 & 1) != (v46 & 1))
      {
        goto LABEL_107;
      }

      v39 = v45;
      if (v43)
      {
        goto LABEL_37;
      }
    }

    v2[(v39 >> 6) + 8] |= 1 << v39;
    v47 = (v2[6] + 16 * v39);
    *v47 = v36;
    v47[1] = v44;
    *(v2[7] + 8 * v39) = _swiftEmptyArrayStorage;
    v48 = v2[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_105;
    }

    v2[2] = v50;

LABEL_37:
    v151 = v2;
    v51 = v2[7];
    v52 = *(v51 + 8 * v39);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 8 * v39) = v52;
    v162 = v36;
    if ((v53 & 1) == 0)
    {
      v52 = sub_6E2D8(0, *(v52 + 2) + 1, 1, v52);
      *(v51 + 8 * v39) = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_6E2D8((v54 > 1), v55 + 1, 1, v52);
      *(v51 + 8 * v39) = v52;
    }

    *(v52 + 2) = v55 + 1;
    v56 = &v52[16 * v55];
    *(v56 + 4) = v153;
    *(v56 + 5) = v155;

    sub_41440(v15);
    v58 = v57;
    v161 = *(v57 + 16);
    if (v161)
    {
      break;
    }

LABEL_25:
    v2 = v151;
    v33 = v150 + 1;
    v160 = sub_777EC;
    v26 = v145;
    v4 = v147;
    v3 = v148;
    v7 = v146;
    if (v150 + 1 == v144)
    {

      v160 = sub_777EC;
      v9 = v154;
      goto LABEL_5;
    }
  }

  v59 = 0;
  v159 = v57 + 32;
  v60 = v164;
  while (1)
  {
    if (v59 >= *(v58 + 16))
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v61 = (v159 + 16 * v59);
    v63 = *v61;
    v62 = v61[1];

    sub_776C8(v8);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v1;
    v66 = sub_51FEC(v162, v60);
    v67 = *(v1 + 16);
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_96;
    }

    v70 = v65;
    if (*(v1 + 24) >= v69)
    {
      break;
    }

    sub_755F4(v69, v64);
    v1 = v165;
    v71 = sub_51FEC(v162, v164);
    if ((v70 & 1) != (v72 & 1))
    {
      goto LABEL_107;
    }

    v66 = v71;
    if ((v70 & 1) == 0)
    {
LABEL_51:
      *(v1 + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v73 = (*(v1 + 48) + 16 * v66);
      *v73 = v162;
      v73[1] = v164;
      *(*(v1 + 56) + 8 * v66) = _swiftEmptyArrayStorage;
      v74 = *(v1 + 16);
      v49 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v49)
      {
        goto LABEL_98;
      }

      *(v1 + 16) = v75;
    }

LABEL_53:
    v76 = *(v1 + 56);
    v77 = *(v76 + 8 * v66);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 8 * v66) = v77;
    if ((v78 & 1) == 0)
    {
      v77 = sub_6E2D8(0, *(v77 + 2) + 1, 1, v77);
      *(v76 + 8 * v66) = v77;
    }

    v80 = *(v77 + 2);
    v79 = *(v77 + 3);
    if (v80 >= v79 >> 1)
    {
      v77 = sub_6E2D8((v79 > 1), v80 + 1, 1, v77);
      *(v76 + 8 * v66) = v77;
    }

    ++v59;
    *(v77 + 2) = v80 + 1;
    v81 = &v77[16 * v80];
    *(v81 + 4) = v63;
    *(v81 + 5) = v62;
    v8 = sub_777EC;
    v15 = v163;
    v60 = v164;
    if (v59 == v161)
    {

      v8 = sub_777EC;
      goto LABEL_25;
    }
  }

  if (v64)
  {
    if ((v65 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  sub_388C8(&qword_128598, &unk_F3750);
  v143 = sub_F10EC();
  if (!*(v1 + 16))
  {
LABEL_75:

    v1 = v143;
    if ((v70 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  v82 = (v143 + 64);
  v83 = (v1 + 64);
  v84 = ((1 << *(v143 + 32)) + 63) >> 6;
  if (v143 != v1 || v82 >= &v83[8 * v84])
  {
    memmove(v82, v83, 8 * v84);
  }

  v85 = 0;
  *(v143 + 16) = *(v1 + 16);
  v86 = 1 << *(v1 + 32);
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  else
  {
    v87 = -1;
  }

  v88 = v87 & *(v1 + 64);
  v89 = (v86 + 63) >> 6;
  v141 = v89;
  if (v88)
  {
    do
    {
      v90 = __clz(__rbit64(v88));
      v142 = (v88 - 1) & v88;
LABEL_73:
      v93 = v90 | (v85 << 6);
      v94 = (*(v1 + 48) + 16 * v93);
      v95 = v94[1];
      v96 = *(*(v1 + 56) + 8 * v93);
      v97 = (*(v143 + 48) + 16 * v93);
      *v97 = *v94;
      v97[1] = v95;
      *(*(v143 + 56) + 8 * v93) = v96;

      v89 = v141;
      v88 = v142;
    }

    while (v142);
  }

  v91 = v85;
  while (1)
  {
    v85 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v85 >= v89)
    {
      goto LABEL_75;
    }

    v92 = *(v1 + 64 + 8 * v85);
    ++v91;
    if (v92)
    {
      v90 = __clz(__rbit64(v92));
      v142 = (v92 - 1) & v92;
      goto LABEL_73;
    }
  }

LABEL_106:
  __break(1u);
LABEL_107:
  result = sub_F126C();
  __break(1u);
  return result;
}

void *sub_73B04()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v6 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v22 = 0;
    v7 = [v6 getSubscriptionInfoWithError:&v22];
    if (v7)
    {
      v8 = v7;
      v9 = v22;
      v10 = [v8 subscriptions];
      if (v10)
      {
        v11 = v10;
        sub_755A8();
        v12 = sub_F09FC();

        return v12;
      }
    }

    else
    {
      v14 = v22;
      sub_F015C();

      swift_willThrow();
      v15 = Logger.rcs.unsafeMutableAddressor();
      (*(v2 + 16))(v5, v15, v1);
      swift_errorRetain();
      v16 = sub_F06AC();
      v17 = sub_F0CFC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&dword_0, v16, v17, "Error reading subscription info: %@", v18, 0xCu);
        sub_372B0(v19, &qword_127AF0, &qword_F28E0);
      }

      else
      {
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_73DCC()
{
  v0 = sub_F06CC();
  v105 = *(v0 - 8);
  v1 = *(v105 + 64);
  __chkstk_darwin(v0);
  v3 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v100 - v5;
  __chkstk_darwin(v7);
  v9 = &v100 - v8;
  __chkstk_darwin(v10);
  v12 = (&v100 - v11);
  v111 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v13 = *(v111 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v111);
  v16 = &v100 - v15;
  result = os_variant_has_internal_ui();
  if (result)
  {
    v109 = v16;
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    if (qword_127A10 != -1)
    {
      swift_once();
    }

    v18 = v111;
    v19 = sub_3C96C(v111, qword_127C28);
    v20 = v13;
    v21 = v13 + 16;
    v22 = *(v13 + 16);
    v23 = v109;
    v103 = v21;
    v102 = v22;
    v22(v109, v19, v18);
    sub_F044C();
    v24 = *(v20 + 8);
    v104 = v20 + 8;
    v101 = v24;
    v24(v23, v18);
    v116 = v3;
    v117 = v0;
    v123 = v9;
    if (v124 != 1)
    {
LABEL_29:
      if (qword_127A18 != -1)
      {
        swift_once();
      }

      v61 = v111;
      v62 = sub_3C96C(v111, qword_127C40);
      v63 = v109;
      v102(v109, v62, v61);
      sub_F044C();
      v101(v63, v61);
      if (v124 != 1)
      {
      }

      v64 = sub_74AC4(v108);
      v66 = v64;
      if (v64 >> 62)
      {
        v67 = sub_F10DC();
        if (v67)
        {
LABEL_34:
          if (v67 >= 1)
          {
            v68 = 0;
            v69 = *(v110 + OBJC_IVAR___RCSServiceSession_state);
            v121 = v66 & 0xC000000000000001;
            v122 = v69;
            v119 = (v105 + 8);
            v120 = (v105 + 16);
            *&v65 = 136315138;
            v113 = v65;
            *&v65 = 136315394;
            v112 = v65;
            v118 = v66;
            v115 = v67;
            do
            {
              if (v121)
              {
                v70 = sub_F0FCC();
              }

              else
              {
                v70 = *(v66 + 8 * v68 + 32);
              }

              v71 = v70;
              v72 = *(v122 + 16);
              v124 = 0;
              if ([v72 disableLazuli:v71 withError:&v124])
              {
                v73 = v124;
                v74 = Logger.rcs.unsafeMutableAddressor();
                (*v120)(v9, v74, v0);
                v75 = v71;
                v76 = sub_F06AC();
                v77 = sub_F0CCC();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v79 = swift_slowAlloc();
                  v124 = v79;
                  *v78 = v113;
                  v80 = [v75 labelID];
                  if (v80)
                  {
                    v81 = v80;
                    v82 = sub_F07EC();
                    v84 = v83;

                    v0 = v117;
                  }

                  else
                  {
                    v82 = 0;
                    v84 = 0xE000000000000000;
                  }

                  v97 = sub_3E850(v82, v84, &v124);

                  *(v78 + 4) = v97;
                  _os_log_impl(&dword_0, v76, v77, "Successfully disabled RCS for simID %s", v78, 0xCu);
                  sub_1EDC(v79);

                  v9 = v123;
                  (*v119)(v123, v0);
                  v3 = v116;
                  v66 = v118;
                }

                else
                {

                  (*v119)(v9, v0);
                  v3 = v116;
                }
              }

              else
              {
                v85 = v124;
                sub_F015C();

                swift_willThrow();
                v86 = Logger.rcs.unsafeMutableAddressor();
                (*v120)(v3, v86, v0);
                v87 = v71;
                swift_errorRetain();
                v88 = sub_F06AC();
                v89 = sub_F0CEC();

                if (os_log_type_enabled(v88, v89))
                {
                  v90 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  v114 = swift_slowAlloc();
                  v124 = v114;
                  *v90 = v112;
                  v92 = [v87 labelID];
                  if (v92)
                  {
                    v93 = v92;
                    v94 = sub_F07EC();
                    v96 = v95;
                  }

                  else
                  {
                    v94 = 0;
                    v96 = 0xE000000000000000;
                  }

                  v98 = sub_3E850(v94, v96, &v124);

                  *(v90 + 4) = v98;
                  *(v90 + 12) = 2112;
                  swift_errorRetain();
                  v99 = _swift_stdlib_bridgeErrorToNSError();
                  *(v90 + 14) = v99;
                  *v91 = v99;
                  _os_log_impl(&dword_0, v88, v89, "Error disabling RCS for simID %s: %@", v90, 0x16u);
                  sub_372B0(v91, &qword_127AF0, &qword_F28E0);

                  sub_1EDC(v114);

                  v3 = v116;
                  v0 = v117;
                  (*v119)(v116, v117);
                  v9 = v123;
                  v66 = v118;
                }

                else
                {

                  (*v119)(v3, v0);
                }

                v67 = v115;
              }

              ++v68;
            }

            while (v67 != v68);
            goto LABEL_56;
          }

LABEL_59:
          __break(1u);
        }
      }

      else
      {
        v67 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
        if (v67)
        {
          goto LABEL_34;
        }
      }

LABEL_56:
    }

    v25 = sub_74AC4(v108);
    v27 = v25;
    if (v25 >> 62)
    {
      v28 = sub_F10DC();
      if (v28)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v28 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v28)
      {
LABEL_7:
        if (v28 < 1)
        {
          __break(1u);
          goto LABEL_59;
        }

        v29 = 0;
        v30 = *(v110 + OBJC_IVAR___RCSServiceSession_state);
        v120 = (v27 & 0xC000000000000001);
        v121 = v30;
        v118 = (v105 + 8);
        v119 = (v105 + 16);
        *&v26 = 136315138;
        v107 = v26;
        *&v26 = 136315394;
        v106 = v26;
        v114 = v12;
        v115 = v6;
        *&v113 = v27;
        v122 = v28;
        do
        {
          if (v120)
          {
            v31 = sub_F0FCC();
          }

          else
          {
            v31 = *(v27 + 8 * v29 + 32);
          }

          v32 = v31;
          v33 = *(v121 + 16);
          v124 = 0;
          if ([v33 enableLazuli:v32 withError:&v124])
          {
            v34 = v124;
            v35 = Logger.rcs.unsafeMutableAddressor();
            (*v119)(v12, v35, v0);
            v36 = v32;
            v37 = sub_F06AC();
            v38 = sub_F0CCC();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v124 = v40;
              *v39 = v107;
              v41 = [v36 labelID];
              if (v41)
              {
                v42 = v41;
                v43 = sub_F07EC();
                v45 = v44;

                v0 = v117;
              }

              else
              {
                v43 = 0;
                v45 = 0xE000000000000000;
              }

              v58 = sub_3E850(v43, v45, &v124);

              *(v39 + 4) = v58;
              _os_log_impl(&dword_0, v37, v38, "Successfully enabled RCS for simID %s", v39, 0xCu);
              sub_1EDC(v40);

              v12 = v114;
              (*v118)(v114, v0);
              v9 = v123;
              v6 = v115;
            }

            else
            {

              (*v118)(v12, v0);
            }
          }

          else
          {
            v46 = v124;
            sub_F015C();

            swift_willThrow();
            v47 = Logger.rcs.unsafeMutableAddressor();
            (*v119)(v6, v47, v0);
            v48 = v32;
            swift_errorRetain();
            v49 = sub_F06AC();
            v50 = sub_F0CEC();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *&v112 = swift_slowAlloc();
              v124 = v112;
              *v51 = v106;
              v53 = [v48 labelID];
              if (v53)
              {
                v54 = v53;
                v55 = sub_F07EC();
                v57 = v56;
              }

              else
              {
                v55 = 0;
                v57 = 0xE000000000000000;
              }

              v59 = sub_3E850(v55, v57, &v124);

              *(v51 + 4) = v59;
              *(v51 + 12) = 2112;
              swift_errorRetain();
              v60 = _swift_stdlib_bridgeErrorToNSError();
              *(v51 + 14) = v60;
              *v52 = v60;
              _os_log_impl(&dword_0, v49, v50, "Error enabling RCS for simID %s: %@", v51, 0x16u);
              sub_372B0(v52, &qword_127AF0, &qword_F28E0);

              sub_1EDC(v112);

              v0 = v117;
              v6 = v115;
              (*v118)(v115, v117);
              v9 = v123;
              v12 = v114;
            }

            else
            {

              (*v118)(v6, v0);
            }

            v27 = v113;
          }

          ++v29;
        }

        while (v122 != v29);
      }
    }

    v3 = v116;
    goto LABEL_29;
  }

  return result;
}

void *sub_74AC4(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = sub_73B04();
    swift_beginAccess();
    v4 = *v2;
    *v2 = v3;
  }

  return v3;
}

void sub_74B48()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 1);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v97 - v7;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v9 = sub_73B04();
    v11 = v9;
    if (v9 >> 62)
    {
      goto LABEL_61;
    }

    for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
    {
      if (i < 1)
      {
        __break(1u);
      }

      v101 = v8;
      v105 = v5;
      v107 = v1;
      v13 = 0;
      v114 = v11 & 0xC000000000000001;
      v113 = OBJC_IVAR___RCSServiceSession_state;
      v106 = NSPOSIXErrorDomain;
      v103 = (v2 + 1);
      v104 = (v2 + 2);
      v14 = _swiftEmptyArrayStorage;
      *&v10 = 136315138;
      v99 = v10;
      *&v10 = 136315394;
      v100 = v10;
      v110 = v11;
      v111 = v0;
      v112 = i;
      while (1)
      {
        if (v114)
        {
          v15 = sub_F0FCC();
        }

        else
        {
          v15 = *(v11 + 8 * v13 + 32);
        }

        v2 = v15;
        v16 = [v15 labelID];
        if (!v16)
        {

          goto LABEL_7;
        }

        v17 = v16;
        v5 = sub_F07EC();
        v11 = v18;

        v19 = *(v0 + v113);
        v20 = *(v19 + 16);
        v115 = 0;
        v21 = [v20 _getSystemConfiguration:v2 withError:&v115];
        v8 = v115;
        if (!v21)
        {
          v32 = v115;
          v33 = sub_F015C();

          swift_willThrow();
          v108 = v33;
          v109 = sub_F014C();
          v34 = [v109 domain];
          v35 = sub_F07EC();
          v37 = v36;

          if (v35 == sub_F07EC() && v37 == v38)
          {

            goto LABEL_32;
          }

          v48 = sub_F122C();

          if (v48)
          {
LABEL_32:
            if ([v109 code] == &dword_4 + 2)
            {
              v49 = *(v19 + 24);

              v50 = sub_51FEC(v5, v11);
              if (v51)
              {
                v52 = v50;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v115 = v49;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_76A24();
                  v49 = v115;
                }

                v54 = *(*(v49 + 6) + 16 * v52 + 8);

                v55 = *(*(v49 + 7) + 8 * v52);
                sub_37938(v52, v49);
              }

              else
              {
                v55 = 0;
              }

              v69 = *(v19 + 24);
              *(v19 + 24) = v49;

              if (v55)
              {

                v70 = Logger.rcs.unsafeMutableAddressor();
                v71 = v101;
                v72 = v107;
                (*v104)(v101, v70, v107);
                v73 = v2;
                v74 = sub_F06AC();
                v75 = sub_F0CEC();

                if (os_log_type_enabled(v74, v75))
                {
                  v76 = v73;
                  v77 = swift_slowAlloc();
                  v78 = swift_slowAlloc();
                  v115 = v78;
                  *v77 = v99;
                  v102 = v76;
                  v79 = [v76 labelID];
                  if (v79)
                  {
                    v80 = v79;
                    v81 = sub_F07EC();
                    v98 = v78;
                    v82 = v81;
                    v84 = v83;

                    v79 = v82;
                    v78 = v98;
                  }

                  else
                  {
                    v84 = 0xE000000000000000;
                  }

                  v87 = sub_3E850(v79, v84, &v115);

                  *(v77 + 4) = v87;
                  _os_log_impl(&dword_0, v74, v75, "RCS was disabled for %s but we weren't notified, tearing down now", v77, 0xCu);
                  sub_1EDC(v78);

                  (*v103)(v101, v107);
                  v73 = v102;
                }

                else
                {

                  (*v103)(v71, v72);
                }

                v88 = swift_isUniquelyReferenced_nonNull_native();
                v0 = v111;
                i = v112;
                if ((v88 & 1) == 0)
                {
                  v14 = sub_6E2D8(0, *(v14 + 2) + 1, 1, v14);
                }

                v90 = *(v14 + 2);
                v89 = *(v14 + 3);
                if (v90 >= v89 >> 1)
                {
                  v14 = sub_6E2D8((v89 > 1), v90 + 1, 1, v14);
                }

                *(v14 + 2) = v90 + 1;
                v91 = &v14[16 * v90];
                *(v91 + 4) = v5;
                *(v91 + 5) = v11;
                v11 = v110;
                goto LABEL_7;
              }

              goto LABEL_49;
            }
          }

          v56 = Logger.rcs.unsafeMutableAddressor();
          v57 = v105;
          v58 = v107;
          (*v104)(v105, v56, v107);
          v59 = v2;
          swift_errorRetain();
          v60 = sub_F06AC();
          v61 = sub_F0CEC();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v115 = v102;
            *v62 = v100;
            v64 = [v59 labelID];
            if (v64)
            {
              v65 = v64;
              v66 = sub_F07EC();
              v68 = v67;
            }

            else
            {
              v66 = 0;
              v68 = 0xE000000000000000;
            }

            v85 = sub_3E850(v66, v68, &v115);

            *(v62 + 4) = v85;
            *(v62 + 12) = 2112;
            swift_errorRetain();
            v86 = _swift_stdlib_bridgeErrorToNSError();
            *(v62 + 14) = v86;
            *v63 = v86;
            _os_log_impl(&dword_0, v60, v61, "Error reloading RCS configuration for %s: %@", v62, 0x16u);
            sub_372B0(v63, &qword_127AF0, &qword_F28E0);

            sub_1EDC(v102);

            (*v103)(v105, v107);
          }

          else
          {

            (*v103)(v57, v58);
          }

LABEL_49:
          v11 = v110;
          v0 = v111;
          i = v112;
          goto LABEL_7;
        }

        v22 = v21;
        v0 = *(v19 + 24);
        v23 = v115;

        v1 = v22;

        v24 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v0;
        v25 = sub_51FEC(v5, v11);
        v27 = v0[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          break;
        }

        v8 = v26;
        if (v0[3] >= v30)
        {
          if ((v24 & 1) == 0)
          {
            v92 = v25;
            sub_76A24();
            v25 = v92;
          }
        }

        else
        {
          sub_7589C(v30, v24);
          v25 = sub_51FEC(v5, v11);
          if ((v8 & 1) != (v31 & 1))
          {
            sub_F126C();
            __break(1u);
            return;
          }
        }

        i = v112;
        v0 = v115;
        if (v8)
        {
          v39 = *(v115 + 7);
          v40 = *(v39 + 8 * v25);
          *(v39 + 8 * v25) = v1;
        }

        else
        {
          *&v115[8 * (v25 >> 6) + 64] |= 1 << v25;
          v41 = (v0[6] + 16 * v25);
          *v41 = v5;
          v41[1] = v11;
          *(v0[7] + 8 * v25) = v1;
          v42 = v0[2];
          v29 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v29)
          {
            goto LABEL_60;
          }

          v0[2] = v43;
        }

        v44 = *(v19 + 24);
        *(v19 + 24) = v0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_6E2D8(0, *(v14 + 2) + 1, 1, v14);
        }

        v46 = *(v14 + 2);
        v45 = *(v14 + 3);
        if (v46 >= v45 >> 1)
        {
          v14 = sub_6E2D8((v45 > 1), v46 + 1, 1, v14);
        }

        *(v14 + 2) = v46 + 1;
        v47 = &v14[16 * v46];
        *(v47 + 4) = v5;
        *(v47 + 5) = v11;
        v11 = v110;
        v0 = v111;
LABEL_7:
        if (i == ++v13)
        {

          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_63:
    v93 = *(v14 + 2);

    if (v93)
    {
      v94 = [v0 account];
      v95 = sub_72DF0();
      sub_51844(v95);

      v96 = sub_F075C();

      [v94 writeAccountDefaults:v96];
    }
  }
}

unint64_t sub_755A8()
{
  result = qword_128578;
  if (!qword_128578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128578);
  }

  return result;
}

uint64_t sub_755F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_128598, &unk_F3750);
  v38 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_7589C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_128580, &unk_F3730);
  v39 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_75B40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_128588, &unk_F3740);
  v53 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v51 = v3;
    v52 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v26 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v29 = v26 | (v9 << 6);
      v30 = *(v5 + 56);
      v31 = (*(v5 + 48) + 16 * v29);
      v32 = *v31;
      v33 = v31[1];
      v34 = (v30 + 160 * v29);
      if (v53)
      {
        v35 = v34[1];
        v54 = *v34;
        v55 = v35;
        v36 = v34[2];
        v37 = v34[3];
        v38 = v34[5];
        v58 = v34[4];
        v59 = v38;
        v56 = v36;
        v57 = v37;
        v39 = v34[6];
        v40 = v34[7];
        v41 = v34[9];
        v62 = v34[8];
        v63 = v41;
        v60 = v39;
        v61 = v40;
      }

      else
      {
        sub_7766C(v34, &v54);
      }

      v42 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v43 = -1 << *(v8 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v15 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v15 + 8 * v45);
          if (v49 != -1)
          {
            v16 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v44) & ~*(v15 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v32;
      v17[1] = v33;
      v18 = (*(v8 + 56) + 160 * v16);
      v19 = v55;
      *v18 = v54;
      v18[1] = v19;
      v20 = v56;
      v21 = v57;
      v22 = v59;
      v18[4] = v58;
      v18[5] = v22;
      v18[2] = v20;
      v18[3] = v21;
      v23 = v60;
      v24 = v61;
      v25 = v63;
      v18[8] = v62;
      v18[9] = v25;
      v18[6] = v23;
      v18[7] = v24;
      ++*(v8 + 16);
      v5 = v52;
    }

    v27 = v9;
    while (1)
    {
      v9 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v28 = v10[v9];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v13 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v5 + 32);
    v3 = v51;
    if (v50 >= 64)
    {
      bzero(v10, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v50;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_75E48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_388C8(&qword_128590, &qword_F3930);
  v36 = a2;
  result = sub_F10FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_54F88(v25, v37);
      }

      else
      {
        sub_3FE38(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_F12FC();
      sub_F089C();
      result = sub_F132C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_54F88(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}