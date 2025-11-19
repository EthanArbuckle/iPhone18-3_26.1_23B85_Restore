void sub_100002550()
{
  sub_10007F3F0();
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
  if (*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_type))
  {
    v2 = &selRef_replyMessage;
  }

  else
  {
    v2 = &selRef_receivedMessage;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) *v2];
  *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) = *(v0 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state) == 0;
  v3 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (v7)
  {
    v8 = [v4 fontWithDescriptor:v7 size:0.0];

    [v3 setFont:v8];
    v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel);
    v10 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v9 setFont:v10];

    v11 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
    if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v1 isFromMe];
    }

    [v11 setHidden:v12];
    v13 = v16;
    if (v16)
    {
      v13 = [v16 image];
    }

    v14 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
    *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v13;
    v15 = v13;

    sub_1000AA2B0();
    sub_1000027C4();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000027C4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state];
  if (v1 <= 1)
  {
    if (!v1)
    {
      v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v1 == 1)
    {
      v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
    if (!v9)
    {
      goto LABEL_21;
    }

LABEL_19:
    v25 = v9;
    v26 = [v9 title];

    if (v26)
    {
      v15 = sub_1000AC06C();
      v17 = v27;

      goto LABEL_22;
    }

LABEL_21:
    v15 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  if (v1 == 4)
  {
    sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v12 = sub_1000AC02C();
    v13 = sub_1000AC02C();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    v15 = sub_1000AC06C();
    v17 = v16;

LABEL_22:
    v28 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    v29 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
    *v28 = v15;
    v28[1] = v17;

    sub_1000A9FF0();
    v30 = 0;
    goto LABEL_47;
  }

  if (v1 != 3)
  {
    if (v1 == 2)
    {
      v2 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
      v3 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
      if (v3 && (v4 = [v3 title]) != 0)
      {
        v5 = v4;
        v6 = sub_1000AC06C();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v43 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
      v44 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
      *v43 = v6;
      v43[1] = v8;

      sub_1000A9FF0();
      v45 = *&v0[v2];
      if (v45 && (v46 = [v45 subtitle]) != 0)
      {
        v47 = v46;
        v48 = sub_1000AC06C();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v51 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
      v52 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle + 8];
      *v51 = v48;
      v51[1] = v50;

      v53 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
      if (v50)
      {

        v54 = sub_1000AC02C();
      }

      else
      {
        v54 = 0;
      }

      [v53 setText:v54];

      v58 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator];
      v59 = *&v0[v2];
      if (!v59 || (v60 = [v59 action]) == 0)
      {
        v60 = 0;
      }

      [v58 setText:v60];

      v30 = 1;
      [v53 setNumberOfLines:1];
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  v18 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
  v19 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
  if (v19 && (v20 = [v19 title]) != 0)
  {
    v21 = v20;
    v22 = sub_1000AC06C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v31 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  v32 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
  *v31 = v22;
  v31[1] = v24;

  sub_1000A9FF0();
  v33 = *&v0[v18];
  if (v33 && (v34 = [v33 subtitle]) != 0)
  {
    v35 = v34;
    v36 = sub_1000AC06C();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
  v40 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle + 8];
  *v39 = v36;
  v39[1] = v38;

  v41 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  if (v38)
  {

    v42 = sub_1000AC02C();
  }

  else
  {
    v42 = 0;
  }

  [v41 setText:v42];

  v55 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator];
  v56 = *&v0[v18];
  if (!v56 || (v57 = [v56 action]) == 0)
  {
    v57 = 0;
  }

  [v55 setText:v57];

  [v41 setNumberOfLines:0];
  v30 = 1;
LABEL_47:

  return [v0 setUserInteractionEnabled:v30];
}

void sub_100002D20()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state);
  if (v9 == 3)
  {
    v46 = v6;
    v26 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
    v27 = [*(v1 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) rootKey];
    v28 = sub_1000AC06C();
    v30 = v29;

    v31 = [v26 isFromMe];
    v32 = sub_1000AC06C();
    v34 = v33;
    v35 = [v26 version];
    v47 = v28;
    v48 = v30;
    if (v31)
    {
      v54._countAndFlagsBits = 46;
      v54._object = 0xE100000000000000;
      sub_1000AC12C(v54);
      v55._countAndFlagsBits = 0x6465696C706572;
      v55._object = 0xE700000000000000;
      sub_1000AC12C(v55);
    }

    v56._countAndFlagsBits = 46;
    v56._object = 0xE100000000000000;
    sub_1000AC12C(v56);
    v57._countAndFlagsBits = v32;
    v57._object = v34;
    sub_1000AC12C(v57);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000AF0E0;
    v38 = v47;
    v37 = v48;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_10000587C();
    *(v36 + 32) = v38;
    *(v36 + 40) = v37;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v39 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v40 = qword_1000FC030;
    v41 = sub_1000AC02C();

    [v40 mt_log_icloud_messages_apps_businessframework:v41 version:v35];

    v42 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper);
    sub_1000058D0(v42, v42[3]);
    v43 = sub_1000058D0(v42, v42[3]);
    v44 = v46;
    (*(v3 + 16))(v8, v43, v46);
    sub_10004E400(v8, 1, 0, 0);
    (*(v3 + 8))(v8, v44);
  }

  else if (v9 == 2)
  {
    v10 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
    v11 = [*(v1 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) rootKey];
    v12 = sub_1000AC06C();
    v14 = v13;

    v15 = [v10 isFromMe];
    v16 = sub_1000AC06C();
    v18 = v17;
    v19 = [v10 version];
    v47 = v12;
    v48 = v14;
    if (v15)
    {
      v50._countAndFlagsBits = 46;
      v50._object = 0xE100000000000000;
      sub_1000AC12C(v50);
      v51._countAndFlagsBits = 0x6465696C706572;
      v51._object = 0xE700000000000000;
      sub_1000AC12C(v51);
    }

    v52._countAndFlagsBits = 46;
    v52._object = 0xE100000000000000;
    sub_1000AC12C(v52);
    v53._countAndFlagsBits = v16;
    v53._object = v18;
    sub_1000AC12C(v53);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AF0E0;
    v22 = v47;
    v21 = v48;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10000587C();
    *(v20 + 32) = v22;
    *(v20 + 40) = v21;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v23 = sub_1000AC3FC();
    sub_1000AC2BC();
    sub_1000ABA5C();

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v24 = qword_1000FC030;
    v25 = sub_1000AC02C();

    [v24 mt_log_icloud_messages_apps_businessframework:v25 version:v19];

    sub_100003280();
  }
}

void sub_100003280()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 40))(v1, &off_1000DE0A0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 recipientAddresses];
      v7 = sub_1000AC19C();

      v8 = *(v7 + 16);

      if (v8 == 1 && (sub_100003850() & 1) != 0)
      {
        v9 = *&v1[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
        if (v9)
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          *(v10 + 24) = v1;
          v14[4] = sub_100005A04;
          v14[5] = v10;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 1107296256;
          v14[2] = sub_100049334;
          v14[3] = &unk_1000DAA88;
          v11 = _Block_copy(v14);
          v12 = v9;
          v13 = v1;

          [v12 fetchCredentials:v11];
          _Block_release(v11);
        }
      }
    }
  }
}

void sub_100003430(uint64_t a1, NSString a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v37 = a1;

  sub_10000413C(&qword_1000EF010, &qword_1000AF6C0);
  v10 = sub_1000AC0CC();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000587C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  swift_errorRetain();
  sub_10000413C(&qword_1000EF018, &qword_1000AF6C8);
  v14 = sub_1000AC0CC();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1000ABA5C();

  v16 = [a4 authenticationRequest];
  v17 = [v16 businessIdentifier];
  if (!v17)
  {
    sub_1000AC06C();
    v17 = sub_1000AC02C();
  }

  v18 = [v16 groupIdentifier];
  if (v18)
  {
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000AC06C();
    v18 = sub_1000AC02C();

    if (a3)
    {
LABEL_7:
      v19 = sub_1000AB62C();
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v19 = 0;
  if (a2)
  {
LABEL_8:
    a2 = sub_1000AC02C();
  }

LABEL_9:
  if (v19)
  {
    v20 = sub_1000AB62C();
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(BCInternalAuthenticationResponse) initWithBusinessIdentifier:v17 groupIdentifier:v18 credentials:a2 error:v20];

  v22 = *(a5 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
  v23 = [v21 responseMessageFor:a4 message:v22];
  v38 = sub_100003AA8(v23, v21);
  v24 = a5 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    v27 = v16;
    v28 = *(v25 + 40);
    v29 = v22;
    v30 = v28(a5, &off_1000DE0A0, ObjectType, v25);
    v16 = v27;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v31)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v32 = v22;
  }

  v31 = [objc_allocWithZone(MSConversation) init];
LABEL_20:
  v33 = [v23 replyMessage];
  v34 = [v23 rootKey];
  if (!v34)
  {
    sub_1000AC06C();
    v34 = sub_1000AC02C();
  }

  v35 = v21;
  v36 = v39;
  sub_100036FA8(1);
}

uint64_t sub_100003850()
{
  v1 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 40))(v0, &off_1000DE0A0, ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 recipientAddresses];
  v7 = sub_1000AC19C();

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_14:

    return 0;
  }

  result = objc_opt_self();
  v9 = 0;
  v20 = result;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = (v7 + 32 + 16 * v9);
    v12 = *v10;
    v11 = v10[1];

    v13 = [v20 allowedAppleURNs];
    v14 = sub_1000AC26C();

    v21[0] = v12;
    v21[1] = v11;
    sub_1000AC54C();
    if (*(v14 + 16))
    {
      v15 = sub_1000AC52C(*(v14 + 40));
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        break;
      }
    }

LABEL_5:
    ++v9;

    result = sub_100005970(v22);
    if (v9 == v8)
    {
      goto LABEL_14;
    }
  }

  v18 = ~v16;
  while (1)
  {
    sub_100005914(*(v14 + 48) + 40 * v17, v21);
    v19 = sub_1000AC53C();
    sub_100005970(v21);
    if (v19)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_100005970(v22);
  return 1;
}

id sub_100003AA8(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(v2, &off_1000DE0A0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  v9 = [v8 selectedMessage];
  v10 = [v9 session];

  if (!v10)
  {
    v10 = [objc_allocWithZone(MSSession) init];
  }

  v11 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v12 = [a1 replyMessage];
  if (v12 && (v13 = v12, v14 = [v12 title], v13, v14))
  {
    sub_1000AC06C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 replyMessage];
  if (v17 && (v18 = v17, v19 = [v17 subtitle], v18, v19))
  {
    v34 = sub_1000AC06C();
    v21 = v20;
  }

  else
  {
    v34 = 0;
    v21 = 0;
  }

  v22 = [objc_allocWithZone(MSMessage) initWithSession:v10];
  v23 = [a2 error];
  if (v23)
  {

    if (v16)
    {
LABEL_16:

      v24 = sub_1000AC02C();

      goto LABEL_24;
    }
  }

  else
  {
    v25 = [a1 replyMessage];
    if (!v25 || (v26 = v25, v27 = [v25 image], v26, !v27))
    {
      v28 = [a1 receivedMessage];
      if (v28)
      {
        v29 = v28;
        v27 = [v28 image];
      }

      else
      {
        v27 = 0;
      }
    }

    [v11 setImage:{v27, v34}];

    if (v16)
    {
      goto LABEL_16;
    }
  }

  v24 = 0;
LABEL_24:
  [v11 setCaption:{v24, v34}];

  if (v21)
  {
    v30 = sub_1000AC02C();
  }

  else
  {
    v30 = 0;
  }

  [v11 setSubcaption:v30];

  if (v16)
  {
    v31 = sub_1000AC02C();
  }

  else
  {
    v31 = 0;
  }

  [v22 setAccessibilityLabel:v31];

  v32 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v11];
  [v22 setLayout:v32];

  return v22;
}

id sub_100003E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBInternalAuthenticationBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of Reachability.reachabilityQueue()
{
  v0 = sub_1000AC31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000AC2FC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v9 = sub_1000ABF6C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  sub_1000ABF5C();
  v13[1] = &_swiftEmptyArrayStorage;
  sub_100004ABC(&qword_1000EEEB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000413C(&qword_1000EEEC0, &qword_1000AF110);
  sub_100004184();
  sub_1000AC49C();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1000AC34C();
}

uint64_t sub_10000413C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004184()
{
  result = qword_1000EEEC8;
  if (!qword_1000EEEC8)
  {
    sub_1000041E8(&qword_1000EEEC0, &qword_1000AF110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEC8);
  }

  return result;
}

uint64_t sub_1000041E8(uint64_t *a1, uint64_t *a2)
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

id variable initialization expression of Reachability.notificationCenter()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

id variable initialization expression of IMBJITAppBundleManager.userDefaults()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

__n128 sub_1000042EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000042FC(uint64_t a1, int a2)
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

uint64_t sub_10000431C(uint64_t result, int a2, int a3)
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

uint64_t sub_100004420(uint64_t a1, uint64_t a2)
{
  result = sub_1000AC21C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100004474(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AC22C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1000044CC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1000AC23C();
  *a1 = v3;
  return result;
}

uint64_t sub_1000044FC(uint64_t a1, uint64_t a2)
{
  result = sub_1000AB9DC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100004550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AB9EC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000045A8@<X0>(void *a1@<X8>)
{
  result = sub_1000AB9FC();
  *a1 = v3;
  return result;
}

void *sub_1000045E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100004668(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100004698@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000046C4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1000047C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000AC06C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000047EC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000ABA2C();
}

uint64_t sub_100004838()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000ABA1C();
}

Swift::Int sub_100004890()
{
  sub_1000AC87C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000ABA1C();
  return sub_1000AC8CC();
}

uint64_t sub_1000048F8(uint64_t a1, id *a2)
{
  result = sub_1000AC04C();
  *a2 = 0;
  return result;
}

uint64_t sub_100004970(uint64_t a1, id *a2)
{
  v3 = sub_1000AC05C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000049F0@<X0>(void *a1@<X8>)
{
  sub_1000AC06C();
  v2 = sub_1000AC02C();

  *a1 = v2;
  return result;
}

uint64_t sub_100004A34@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100005844(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004BDC()
{
  sub_100004ABC(&qword_1000EF1B0, type metadata accessor for BCMessageRootKey);
  sub_100004ABC(&qword_1000EF1B8, type metadata accessor for BCMessageRootKey);

  return sub_1000AC69C();
}

uint64_t sub_100004C98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1000ABA0C();
}

uint64_t sub_100004D04()
{
  sub_100004ABC(&qword_1000EEF88, type metadata accessor for BCBubbleViewStyle);
  sub_100004ABC(&qword_1000EEF90, type metadata accessor for BCBubbleViewStyle);

  return sub_1000AC69C();
}

uint64_t sub_100004E98()
{
  sub_100004ABC(&qword_1000EF148, type metadata accessor for PKContactField);
  sub_100004ABC(&qword_1000EF150, type metadata accessor for PKContactField);

  return sub_1000AC69C();
}

uint64_t sub_100004F54()
{
  sub_100004ABC(&qword_1000EF1C0, type metadata accessor for PKPaymentNetwork);
  sub_100004ABC(&qword_1000EF1C8, type metadata accessor for PKPaymentNetwork);

  return sub_1000AC69C();
}

_DWORD *sub_100005010@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100005020@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10000502C()
{
  v2 = *v0;
  sub_100004ABC(&qword_1000EF158, type metadata accessor for UILayoutPriority);
  sub_100004ABC(&qword_1000EF160, type metadata accessor for UILayoutPriority);
  return sub_1000AC69C();
}

double sub_1000050E8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000050F4()
{
  v2 = *v0;
  sub_100004ABC(&qword_1000EF178, type metadata accessor for Weight);
  sub_100004ABC(&qword_1000EF180, type metadata accessor for Weight);
  sub_1000062D0();
  return sub_1000AC69C();
}

uint64_t sub_1000051BC()
{
  sub_100004ABC(&qword_1000EF168, type metadata accessor for NSKeyValueChangeKey);
  sub_100004ABC(&qword_1000EF170, type metadata accessor for NSKeyValueChangeKey);

  return sub_1000AC69C();
}

uint64_t sub_100005278()
{
  sub_100004ABC(&qword_1000EF1A0, type metadata accessor for AttributeName);
  sub_100004ABC(&qword_1000EF1A8, type metadata accessor for AttributeName);

  return sub_1000AC69C();
}

uint64_t sub_100005334@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000AC02C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000537C()
{
  sub_100004ABC(&qword_1000EF190, type metadata accessor for TraitKey);
  sub_100004ABC(&qword_1000EF198, type metadata accessor for TraitKey);

  return sub_1000AC69C();
}

uint64_t sub_100005438()
{
  v1 = *v0;
  sub_1000AC06C();
  v2 = sub_1000AC13C();

  return v2;
}

uint64_t sub_100005474()
{
  v1 = *v0;
  sub_1000AC06C();
  sub_1000AC11C();
}

Swift::Int sub_1000054C8()
{
  v1 = *v0;
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v2 = sub_1000AC8CC();

  return v2;
}

void sub_100005544()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000AC8AC(LODWORD(v1));
}

uint64_t sub_100005580(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void sub_1000055A4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000AC8BC(*&v1);
}

uint64_t sub_1000055E0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_1000055F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000AC06C();
  v6 = v5;
  if (v4 == sub_1000AC06C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();
  }

  return v9 & 1;
}

void *sub_1000056A8(char a1, void *a2, id a3)
{
  v7 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
  *(v3 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager) = 0;
  v8 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state;
  *(v3 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state) = 4;
  if ([a3 rootObject])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [objc_allocWithZone(BCInternalAuthenticationManager) initWithAuthenticationRequest:v9];
      v11 = *(v3 + v7);
      *(v3 + v7) = v10;
      v12 = v10;

      v13 = [v12 state];
      swift_unknownObjectRelease();
      *(v3 + v8) = v13;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([a3 rootObject])
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 error];
      swift_unknownObjectRelease();
      if (v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      *(v3 + v8) = v16;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100080C58(a1 & 1, a2, a3);
}

uint64_t sub_100005844(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000587C()
{
  result = qword_1000EF000;
  if (!qword_1000EF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF000);
  }

  return result;
}

void *sub_1000058D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000059C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A24(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100005B34(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000062D0()
{
  result = qword_1000EF188;
  if (!qword_1000EF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF188);
  }

  return result;
}

void *sub_100006368(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v4 = sub_10004F0CC(0x746E756F6D61, 0xE600000000000000), (v5 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v4, v15), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
LABEL_14:
      sub_1000AC2AC();
      sub_1000ABA5C();
      type metadata accessor for IMBTotalItem();
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_24:
    swift_once();
    goto LABEL_14;
  }

  if (!*(a1 + 16) || (v6 = sub_10004F0CC(1701869940, 0xE400000000000000), (v7 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v6, v15), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (!*(a1 + 16) || (v8 = sub_10004F0CC(0x6C6562616CLL, 0xE500000000000000), (v9 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v8, v15);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_19:

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (v13 == 0x676E69646E6570 && v14 == 0xE700000000000000)
  {

    v10 = 1;
  }

  else
  {
    v12 = sub_1000AC7AC();

    v10 = v12 & 1;
  }

  v2[2] = v13;
  v2[3] = v14;
  v2[4] = v10;
  v2[5] = v13;
  v2[6] = v14;
  return v2;
}

void *sub_100006724()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v13 = &type metadata for String;
  *&v12 = v2;
  *(&v12 + 1) = v3;
  sub_100006910(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 0x746E756F6D61, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v5 = v1[5];
  v6 = v1[6];
  v13 = &type metadata for String;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  sub_100006910(&v12, v11);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 0x6C6562616CLL, 0xE500000000000000, v7);
  v8 = v1[4];
  v13 = &type metadata for UInt;
  *&v12 = v8;
  sub_100006910(&v12, v11);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 1701869940, 0xE400000000000000, v9);
  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100006850()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100006910(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000692C(unint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v338 = sub_1000AB6EC();
  v340 = *(v338 - 8);
  v5 = *(v340 + 64);
  v7 = __chkstk_darwin(v338, v6);
  v333 = &v318 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v330 = &v318 - v11;
  __chkstk_darwin(v10, v12);
  v325 = &v318 - v13;
  v327 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v14 = *(*(v327 - 8) + 64);
  __chkstk_darwin(v327, v15);
  v326 = &v318 - v16;
  v17 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v334 = &v318 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v339 = &v318 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v332 = &v318 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v329 = &v318 - v30;
  v32 = __chkstk_darwin(v29, v31);
  v328 = &v318 - v33;
  __chkstk_darwin(v32, v34);
  v331 = &v318 - v35;
  if (qword_1000EEE80 != -1)
  {
LABEL_227:
    swift_once();
  }

  v36 = qword_1000FC008;
  sub_1000AC28C();
  v335 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v37 = swift_allocObject();
  v336 = xmmword_1000AF0E0;
  *(v37 + 16) = xmmword_1000AF0E0;
  sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  v38 = sub_1000ABFCC();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  v41 = sub_10000587C();
  *(v37 + 64) = v41;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v42 = v36;
  sub_1000ABA5C();

  sub_10005E91C(0x746E696F70646E65uLL, 0xE900000000000073, a1, &v343);
  if (*(&v344 + 1) == 1)
  {
    v43 = &qword_1000EF650;
    v44 = &qword_1000B0498;
    v45 = &v343;
LABEL_10:
    sub_10000E784(v45, v43, v44);
    v48 = v338;
    v47 = v339;
    goto LABEL_11;
  }

  v345 = v343;
  v346 = v344;
  if (!*(&v344 + 1))
  {
    v43 = &unk_1000F1DF0;
    v44 = &qword_1000B18F0;
    v45 = &v345;
    goto LABEL_10;
  }

  sub_10000413C(&qword_1000EF658, &unk_1000B04A0);
  v46 = swift_dynamicCast();
  v48 = v338;
  v47 = v339;
  if ((v46 & 1) == 0)
  {
LABEL_11:
    sub_1000AC2AC();
    sub_1000ABA5C();
    v49 = 0;
    goto LABEL_12;
  }

  v49 = v341;
  if (*(v341 + 2))
  {

    v50 = sub_10004F0CC(0xD000000000000018, 0x80000001000B5B10);
    if (v51)
    {
      v52 = (*(v49 + 56) + 16 * v50);
      v53 = *v52;
      v54 = v52[1];

      v55 = v49;
      v56 = v331;
      sub_1000AB6DC();
      v47 = v339;

      v57 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
      swift_beginAccess();
      v58 = v56;
      v49 = v55;
      sub_10000E8A0(v58, v2 + v57, &unk_1000F06A0, &unk_1000B0450);
      swift_endAccess();
    }

    else
    {
    }

    if (*(v49 + 16))
    {

      v189 = sub_10004F0CC(0xD000000000000010, 0x80000001000B5AB0);
      if (v190)
      {
        v191 = (*(v49 + 56) + 16 * v189);
        v192 = *v191;
        v193 = v191[1];

        v194 = v49;
        v195 = v331;
        sub_1000AB6DC();
        v47 = v339;

        v196 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
        swift_beginAccess();
        v197 = v195;
        v49 = v194;
        sub_10000E8A0(v197, v2 + v196, &unk_1000F06A0, &unk_1000B0450);
        swift_endAccess();
      }

      else
      {
      }

      if (*(v49 + 16))
      {

        v210 = sub_10004F0CC(0xD000000000000017, 0x80000001000B5B30);
        if (v211)
        {
          v212 = (*(v49 + 56) + 16 * v210);
          v213 = *v212;
          v214 = v212[1];

          v215 = v49;
          v216 = v331;
          sub_1000AB6DC();
          v47 = v339;

          v217 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
          swift_beginAccess();
          v218 = v216;
          v49 = v215;
          sub_10000E8A0(v218, v2 + v217, &unk_1000F06A0, &unk_1000B0450);
          swift_endAccess();
        }

        else
        {
        }

        if (*(v49 + 16))
        {

          v228 = sub_10004F0CC(0xD000000000000016, 0x80000001000B5AF0);
          if (v229)
          {
            v230 = (*(v49 + 56) + 16 * v228);
            v231 = *v230;
            v232 = v230[1];

            v233 = v49;
            v234 = v331;
            sub_1000AB6DC();
            v47 = v339;

            v235 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            swift_beginAccess();
            v236 = v234;
            v49 = v233;
            sub_10000E8A0(v236, v2 + v235, &unk_1000F06A0, &unk_1000B0450);
            swift_endAccess();
          }

          else
          {
          }

          if (*(v49 + 16))
          {

            v237 = sub_10004F0CC(0x6B6361626C6C6166, 0xEB000000006C7255);
            if (v238)
            {
              v239 = (*(v49 + 56) + 16 * v237);
              v240 = *v239;
              v241 = v239[1];

              v242 = v49;
              v243 = v331;
              sub_1000AB6DC();
              v47 = v339;

              v244 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
              swift_beginAccess();
              v245 = v243;
              v49 = v242;
              sub_10000E8A0(v245, v2 + v244, &unk_1000F06A0, &unk_1000B0450);
              swift_endAccess();
            }

            else
            {
            }

            if (*(v49 + 16))
            {

              v304 = sub_10004F0CC(0x55746375646F7270, 0xEA00000000006C72);
              if (v305)
              {
                v306 = (*(v49 + 56) + 16 * v304);
                v307 = *v306;
                v308 = v306[1];

                v309 = v49;
                v310 = v331;
                sub_1000AB6DC();
                v47 = v339;

                v311 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
                swift_beginAccess();
                v312 = v310;
                v49 = v309;
                sub_10000E8A0(v312, v2 + v311, &unk_1000F06A0, &unk_1000B0450);
                swift_endAccess();
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  sub_10005E91C(0x52746E656D796170uLL, 0xEE00747365757165, a1, &v343);
  v337 = a1;
  if (*(&v344 + 1) != 1)
  {
    v345 = v343;
    v346 = v344;
    if (!*(&v344 + 1))
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_20;
    }

    v323 = v41;
    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v41 = v323;
      goto LABEL_20;
    }

    v324 = v42;
    v59 = v341;
    v60 = objc_allocWithZone(PKPaymentRequest);
    isa = sub_1000ABFAC().super.isa;
    *&v345 = 0;
    v62 = [v60 initWithDictionary:isa error:&v345];

    v63 = v345;
    if (v62)
    {
      v64 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest) = v62;
      v65 = v62;
      v66 = v63;
      v67 = v65;

      [v67 setAPIType:3];
    }

    else
    {
      v154 = v345;
      sub_1000AB63C();

      swift_willThrow();
      v4 = 0;

      if (*(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest))
      {
        sub_100009558(v59);
      }
    }

    a1 = v337;
    v48 = v338;
    v42 = v324;
    sub_10005E91C(0x746163696C707061uLL, 0xEF617461446E6F69, v337, &v343);
    if (*(&v344 + 1) == 1)
    {
      sub_10000E784(&v343, &qword_1000EF650, &qword_1000B0498);
    }

    else
    {
      v345 = v343;
      v346 = v344;
      if (*(&v344 + 1))
      {
        if (swift_dynamicCast())
        {
          v155 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (v155)
          {
            v156 = v4;
            v157 = v155;
            v158 = sub_1000AB71C();
            v160 = v159;

            if (v160 >> 60 == 15)
            {
              v161 = 0;
            }

            else
            {
              v161 = sub_1000AB72C().super.isa;
              sub_10000E950(v158, v160);
            }

            v4 = v156;
            v42 = v324;
            [v157 setApplicationData:v161];

            a1 = v337;
          }

          else
          {
          }

          v48 = v338;
        }
      }

      else
      {
        sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
      }
    }

    sub_10005E8B8(0xD00000000000001DLL, 0x80000001000B6100, v59, &v345);
    if (*(&v346 + 1))
    {
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v268 = v343;
        v269 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v269)
        {
          v270 = v269;
          sub_100081990(v268);

          type metadata accessor for PKContactField(0);
          sub_10000E908(&qword_1000EF148, type metadata accessor for PKContactField);
          v271 = sub_1000AC25C().super.isa;
          v48 = v338;

          [v270 setRequiredShippingContactFields:v271];

          v42 = v324;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0xD00000000000001CLL, 0x80000001000B6120, v59, &v345);
    if (*(&v346 + 1))
    {
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v272 = v343;
        v273 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v273)
        {
          v274 = v273;
          sub_100081990(v272);

          type metadata accessor for PKContactField(0);
          sub_10000E908(&qword_1000EF148, type metadata accessor for PKContactField);
          v275 = sub_1000AC25C().super.isa;
          v48 = v338;

          [v274 setRequiredBillingContactFields:v275];

          v42 = v324;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x796150656C707061, 0xE800000000000000, v59, &v345);
    if (*(&v346 + 1))
    {
      if (swift_dynamicCast())
      {
        v276 = v343;
        sub_10005E8B8(0xD000000000000011, 0x80000001000B5B80, v343, &v345);
        if (*(&v346 + 1))
        {
          sub_10000413C(qword_1000F1E10, &qword_1000B0490);
          v277 = swift_dynamicCast();
          v278 = v343;
          if (!v277)
          {
            v278 = 0;
          }
        }

        else
        {
          sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
          v278 = 0;
        }

        v279 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);
        *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks) = v278;

        sub_10005E8B8(0xD000000000000014, 0x80000001000B5B60, v276, &v345);

        if (*(&v346 + 1))
        {
          sub_10000413C(qword_1000F1E10, &qword_1000B0490);
          v280 = swift_dynamicCast();
          v281 = v343;
          if (!v280)
          {
            v281 = 0;
          }
        }

        else
        {
          sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
          v281 = 0;
        }

        v282 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities);
        *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities) = v281;
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x43676E696C6C6962, 0xEE00746361746E6FLL, v59, &v345);
    if (*(&v346 + 1))
    {
      if (swift_dynamicCast())
      {
        v320 = v49;
        v283 = objc_allocWithZone(PKContact);
        v284 = sub_1000ABFAC().super.isa;

        *&v345 = 0;
        v285 = [v283 initWithDictionary:v284 error:&v345];

        if (v285)
        {
          v286 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          v287 = v345;
          if (v286)
          {
            [v286 setBillingContact:v285];
          }

          v48 = v338;
          v42 = v324;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v289 = sub_1000AC3FC();
          sub_1000AC2BC();
          sub_1000ABA5C();
        }

        else
        {
          v288 = v345;
          sub_1000AB63C();

          swift_willThrow();
          a1 = v337;

          v4 = 0;
          v48 = v338;
          v42 = v324;
        }

        v49 = v320;
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x676E697070696873, 0xEF746361746E6F43, v59, &v345);
    if (*(&v346 + 1))
    {
      if (swift_dynamicCast())
      {
        v320 = v49;
        v290 = objc_allocWithZone(PKContact);
        v291 = sub_1000ABFAC().super.isa;

        *&v345 = 0;
        v292 = [v290 initWithDictionary:v291 error:&v345];

        if (v292)
        {
          v293 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          v48 = v338;
          v294 = v345;
          if (v293)
          {
            [v293 setShippingContact:v292];
          }

          v42 = v324;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v296 = sub_1000AC3FC();
          sub_1000AC2BC();
          sub_1000ABA5C();
        }

        else
        {
          v295 = v345;
          sub_1000AB63C();

          swift_willThrow();
          a1 = v337;

          v4 = 0;
          v48 = v338;
          v42 = v324;
        }

        v49 = v320;
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x676E697070696873, 0xEC00000065707954, v59, &v345);

    if (*(&v346 + 1))
    {
      if (swift_dynamicCast())
      {
        v297 = sub_10000E854(v343, *(&v343 + 1));
        v41 = v323;
        if (v297 != 4)
        {
          v298 = v297;
          v299 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (v299)
          {
            [v299 setShippingType:3 - v298];
          }

          v300 = swift_allocObject();
          *(v300 + 16) = v336;
          *&v345 = 3 - v298;
          v301 = sub_1000AC78C();
          *(v300 + 56) = &type metadata for String;
          *(v300 + 64) = v41;
          *(v300 + 32) = v301;
          *(v300 + 40) = v302;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v303 = sub_1000AC3FC();
          sub_1000AC2BC();
          sub_1000ABA5C();

          v42 = v324;
        }

        goto LABEL_219;
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    v41 = v323;
LABEL_219:
    v47 = v339;
    goto LABEL_21;
  }

  sub_10000E784(&v343, &qword_1000EF650, &qword_1000B0498);
LABEL_20:
  sub_1000AC2BC();
  sub_1000ABA5C();
LABEL_21:
  sub_10005E91C(0x746E61686372656DuLL, 0xEF6E6F6973736553, a1, &v343);
  v68 = &unk_1000FB000;
  if (*(&v344 + 1) == 1)
  {
    v69 = &qword_1000EF650;
    v70 = &qword_1000B0498;
    v71 = &v343;
LABEL_30:
    sub_10000E784(v71, v69, v70);
    goto LABEL_31;
  }

  v345 = v343;
  v346 = v344;
  if (!*(&v344 + 1))
  {
    v69 = &unk_1000F1DF0;
    v70 = &qword_1000B18F0;
    v71 = &v345;
    goto LABEL_30;
  }

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_1000AC2BC();
    sub_1000ABA5C();
    goto LABEL_32;
  }

  v72 = v341;
  sub_1000AC2BC();
  v73 = v42;
  v74 = swift_allocObject();
  *(v74 + 16) = v336;
  v75 = sub_1000ABFDC();
  *(v74 + 56) = &type metadata for String;
  *(v74 + 64) = v41;
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  v324 = v73;
  sub_1000ABA5C();

  sub_10004D7AC(v72);
  v77 = objc_allocWithZone(PKPaymentMerchantSession);
  v78 = sub_1000ABFAC().super.isa;

  v79 = [v77 initWithDictionary:v78];

  v321 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_session;
  v80 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_session);
  if (!v80)
  {
    goto LABEL_152;
  }

  v320 = v49;
  v323 = v41;
  v322 = v4;
  v81 = v80;
  v82 = [v81 merchantIdentifier];
  v83 = sub_1000AC06C();
  v85 = v84;

  v86 = [v79 merchantIdentifier];
  v87 = sub_1000AC06C();
  v89 = v88;

  if (v83 == v87 && v85 == v89)
  {

LABEL_121:
    v187 = *(v2 + v321);
    *(v2 + v321) = v79;
    v188 = v79;

    v4 = v322;
    v41 = v323;
    v49 = v320;
    goto LABEL_153;
  }

  v186 = sub_1000AC7AC();

  if (v186)
  {
    goto LABEL_121;
  }

  v219 = *(v2 + v321);
  v4 = v322;
  v41 = v323;
  v49 = v320;
  if (!v219)
  {
LABEL_152:
    *(v2 + v321) = v79;
    v247 = v79;
LABEL_153:
    v248 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary);
    *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary) = v72;

    sub_10005E8B8(0x4173657269707865, 0xE900000000000074, v72, &v345);

    v48 = v338;
    v319 = v79;
    if (*(&v346 + 1))
    {
      if (swift_dynamicCast())
      {
        v249 = v326;
        sub_1000AB79C();
        v250 = sub_1000AB7EC();
        (*(*(v250 - 8) + 56))(v249, 0, 1, v250);
        v251 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
        swift_beginAccess();
        sub_10000E8A0(v249, v2 + v251, &qword_1000F0270, &unk_1000B0480);
        swift_endAccess();
        LODWORD(v323) = sub_1000AC2BC();
        v252 = v4;
        v253 = swift_allocObject();
        *(v253 + 16) = v336;
        sub_10000E66C(v2 + v251, v249, &qword_1000F0270, &unk_1000B0480);
        v254 = sub_1000AC41C();
        v255 = v49;
        v257 = v256;
        sub_10000E784(v249, &qword_1000F0270, &unk_1000B0480);
        *(v253 + 56) = &type metadata for String;
        *(v253 + 64) = v41;
        *(v253 + 32) = v254;
        *(v253 + 40) = v257;
        v49 = v255;
        v48 = v338;
        v47 = v339;
        sub_1000ABA5C();
        v4 = v252;

LABEL_158:
        v258 = *(v2 + v321);
        v68 = &unk_1000FB000;
        if (v258)
        {
          v259 = [v258 initiativeContext];
          if (v259)
          {
            v260 = v259;
            sub_1000AC06C();

            v261 = v328;
            sub_1000AB6DC();

            if ((*(v340 + 48))(v261, 1, v48) != 1)
            {

              v262 = v340;
              v263 = *(v340 + 32);
              v264 = v325;
              v263(v325, v261, v48);
              v265 = v331;
              v263(v331, v264, v48);
              v266 = v262;
              v68 = &unk_1000FB000;
              (*(v266 + 56))(v265, 0, 1, v48);
              v267 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
              swift_beginAccess();
              sub_10000E8A0(v265, v2 + v267, &unk_1000F06A0, &unk_1000B0450);
              swift_endAccess();
              v47 = v339;
LABEL_32:
              if (os_variant_has_internal_content())
              {
                if (!v49)
                {
                  goto LABEL_39;
                }

                if (*(v49 + 16))
                {
                  v90 = sub_10004F0CC(0xD000000000000011, 0x80000001000B5AD0);
                  if (v91)
                  {
                    v92 = (*(v49 + 56) + 16 * v90);
                    v93 = *v92;
                    v94 = v92[1];

                    v95 = v329;
                    sub_1000AB6DC();

                    if ((*(v340 + 48))(v95, 1, v48) == 1)
                    {
                      sub_10000E784(v95, &unk_1000F06A0, &unk_1000B0450);
                      v47 = v339;
                    }

                    else
                    {
                      v198 = v68;
                      v199 = v340;
                      v200 = v330;
                      (*(v340 + 32))(v330, v95, v48);
                      v201 = v331;
                      (*(v199 + 16))(v331, v200, v48);
                      v202 = v199;
                      v68 = v198;
                      (*(v202 + 56))(v201, 0, 1, v48);
                      v203 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
                      swift_beginAccess();
                      sub_10000E8A0(v201, v2 + v203, &unk_1000F06A0, &unk_1000B0450);
                      swift_endAccess();
                      v204 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
                      v205 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                      if (v205)
                      {
                        v206 = v205;
                        sub_1000AB67C(&var20);
                        v208 = v207;
                        [v206 setOriginatingURL:v207];

                        v200 = v330;
                        v209 = *(v2 + v204);
                        if (v209)
                        {
                          [v209 setMerchantSession:*(v2 + v198[464])];
                        }
                      }

                      (*(v340 + 8))(v200, v48);
                      v47 = v339;
                    }

LABEL_39:
                    v96 = v68[464];
                    v97 = *(v2 + v96);
                    if (v97)
                    {
                      v98 = [v97 initiativeContext];
                      if (v98)
                      {
                        v99 = v98;
                        sub_1000AC06C();

                        v100 = v332;
                        sub_1000AB6DC();

                        if ((*(v340 + 48))(v100, 1, v48) != 1)
                        {
                          v109 = v100;
                          v110 = v333;
                          (*(v340 + 32))(v333, v109, v48);
                          v111 = v2;
                          v112 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
                          v113 = *(v111 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                          if (v113)
                          {
                            v114 = v113;
                            sub_1000AB67C(&var20._clients);
                            v116 = v115;
                            [v114 setOriginatingURL:v115];

                            v110 = v333;
                            v117 = *(v111 + v112);
                            if (v117)
                            {
                              [v117 setMerchantSession:*(v111 + v96)];
                            }
                          }

                          (*(v340 + 8))(v110, v48);
                          v2 = v111;
                          v103 = v337;
                          goto LABEL_55;
                        }

                        sub_10000E784(v100, &unk_1000F06A0, &unk_1000B0450);
                        v47 = v339;
                      }
                    }

                    v101 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                    if (!v101)
                    {
                      (*(v340 + 56))(v47, 1, 1, v48);
                      v103 = v337;
LABEL_53:
                      sub_10000E784(v47, &unk_1000F06A0, &unk_1000B0450);
                      sub_1000AC2AC();
                      sub_1000ABA5C();
                      goto LABEL_55;
                    }

                    v102 = [v101 originatingURL];
                    v103 = v337;
                    if (v102)
                    {
                      v104 = v47;
                      v105 = v334;
                      v106 = v102;
                      sub_1000AB6AC();

                      v107 = v105;
                      v47 = v104;
                      v108 = 0;
                    }

                    else
                    {
                      v108 = 1;
                      v107 = v334;
                    }

                    v118 = v340;
                    (*(v340 + 56))(v107, v108, 1, v48);
                    sub_10000E7E4(v107, v47);
                    if ((*(v118 + 48))(v47, 1, v48) == 1)
                    {
                      goto LABEL_53;
                    }

                    sub_10000E784(v47, &unk_1000F06A0, &unk_1000B0450);
LABEL_55:
                    sub_10005E91C(0x6574617473uLL, 0xE500000000000000, v103, &v343);
                    if (*(&v344 + 1) == 1)
                    {
                      v119 = &qword_1000EF650;
                      v120 = &qword_1000B0498;
                      v121 = &v343;
                    }

                    else
                    {
                      v345 = v343;
                      v346 = v344;
                      if (*(&v344 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v122 = sub_10005FE44(v341, v342);
                          if ((v123 & 1) == 0)
                          {
                            v124 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
                            *v124 = v122;
                            *(v124 + 8) = 0;
                            v125 = v122;
                            v126 = swift_allocObject();
                            *(v126 + 16) = v336;
                            v127 = sub_10005FCE8(v125);
                            *(v126 + 56) = &type metadata for String;
                            *(v126 + 64) = v41;
                            *(v126 + 32) = v127;
                            *(v126 + 40) = v128;
                            sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
                            v129 = sub_1000AC3FC();
                            sub_1000AC2BC();
                            goto LABEL_64;
                          }
                        }

LABEL_63:
                        v130 = sub_10000A1CC();
                        v131 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
                        *v131 = v130;
                        *(v131 + 8) = 0;
                        v132 = swift_allocObject();
                        *(v132 + 16) = v336;
                        v133 = sub_10005FCE8(v130);
                        *(v132 + 56) = &type metadata for String;
                        *(v132 + 64) = v41;
                        *(v132 + 32) = v133;
                        *(v132 + 40) = v134;
                        sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
                        v129 = sub_1000AC3FC();
                        sub_1000AC2BC();
LABEL_64:
                        sub_1000ABA5C();

                        sub_10005E91C(0x49656E694C77656EuLL, 0xEC000000736D6574, v103, &v343);
                        if (*(&v344 + 1) == 1)
                        {
                          sub_10000E784(&v343, &qword_1000EF650, &qword_1000B0498);
                        }

                        else
                        {
                          v345 = v343;
                          v346 = v344;
                          if (*(&v344 + 1))
                          {
                            sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
                            if (swift_dynamicCast())
                            {
                              v322 = v4;
                              v340 = v2;
                              *&v345 = _swiftEmptyArrayStorage;
                              v135 = *(v341 + 2);
                              v339 = v341;
                              if (v135)
                              {
                                v136 = (v341 + 32);
                                type metadata accessor for IMBLineItem();
                                do
                                {
                                  v137 = *v136;
                                  swift_allocObject();

                                  v139 = sub_10007BF40(v138);
                                  if (v139)
                                  {
                                    v140 = v139;
                                    v141 = v139[2];
                                    v142 = v139[3];
                                    v143 = v139[4];
                                    v144 = v139[5];
                                    v145 = objc_allocWithZone(NSDecimalNumber);
                                    v146 = sub_1000AC02C();
                                    v147 = [v145 initWithString:v146];

                                    v148 = sub_1000AC02C();
                                    v149 = [objc_opt_self() summaryItemWithLabel:v148 amount:v147];

                                    [v149 setType:v140[6]];
                                    sub_1000AC17C();
                                    if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                    {
                                      v150 = *((v345 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                      sub_1000AC1BC();
                                    }

                                    sub_1000AC1DC();
                                  }

                                  ++v136;
                                  --v135;
                                }

                                while (v135);
                              }

                              v2 = v340;
                              v151 = *(v340 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                              if (v151)
                              {
                                sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
                                v152 = v151;
                                v153 = sub_1000AC18C().super.isa;

                                [v152 setPaymentSummaryItems:v153];
                              }

                              else
                              {
                              }

                              v4 = v322;
                              v103 = v337;
                            }
                          }

                          else
                          {
                            sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
                          }
                        }

                        sub_10005E91C(0x6C61746F5477656EuLL, 0xE800000000000000, v103, &v343);
                        if (*(&v344 + 1) == 1)
                        {
                          v162 = &qword_1000EF650;
                          v163 = &qword_1000B0498;
                          v164 = &v343;
                        }

                        else
                        {
                          v345 = v343;
                          v346 = v344;
                          if (*(&v344 + 1))
                          {
                            sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
                            if (swift_dynamicCast())
                            {
                              v165 = v341;
                              type metadata accessor for IMBLineItem();
                              swift_allocObject();
                              if (sub_10007BF40(v165))
                              {
                                v166 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                                if (v166)
                                {
                                  v167 = v166;
                                  sub_10007C3AC();
                                  v168 = [v167 paymentSummaryItems];
                                  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
                                  v169 = sub_1000AC19C();

                                  *&v345 = v169;
                                  sub_1000AC17C();
                                  if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                  {
                                    v317 = *((v345 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                    sub_1000AC1BC();
                                  }

                                  sub_1000AC1DC();
                                  v170 = sub_1000AC18C().super.isa;

                                  [v167 setPaymentSummaryItems:v170];

                                  v103 = v337;
                                }

                                else
                                {
                                }
                              }
                            }

LABEL_100:
                            sub_10005E91C(0xD000000000000012, 0x80000001000B5F90, v103, &v343);
                            if (*(&v344 + 1) == 1)
                            {
                              sub_10000E784(&v343, &qword_1000EF650, &qword_1000B0498);
                              goto LABEL_230;
                            }

                            v345 = v343;
                            v346 = v344;
                            if (!*(&v344 + 1))
                            {
                              sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
                              goto LABEL_230;
                            }

                            sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
                            if ((swift_dynamicCast() & 1) == 0)
                            {
LABEL_230:

                              return v2;
                            }

                            v340 = v2;
                            v2 = v341;
                            v171 = _swiftEmptyArrayStorage;
                            *&v345 = _swiftEmptyArrayStorage;
                            v172 = *(v341 + 2);
                            if (v172)
                            {
                              v173 = 0;
                              v339 = (v172 - 1);
                              do
                              {
                                a1 = v173;
                                while (1)
                                {
                                  if (a1 >= *(v2 + 16))
                                  {
                                    __break(1u);
                                    goto LABEL_227;
                                  }

                                  v174 = v4;
                                  v173 = a1 + 1;
                                  v175 = *(v2 + 32 + 8 * a1);
                                  v176 = objc_allocWithZone(PKShippingMethod);

                                  v177 = sub_1000ABFAC().super.isa;

                                  *&v343 = 0;
                                  v178 = [v176 initWithDictionary:v177 error:&v343];

                                  if (v178)
                                  {
                                    break;
                                  }

                                  v179 = v343;
                                  sub_1000AB63C();

                                  swift_willThrow();

                                  v4 = 0;
                                  ++a1;
                                  if (v172 == v173)
                                  {
                                    goto LABEL_116;
                                  }
                                }

                                v180 = v343;
                                v181 = v178;
                                sub_1000AC17C();
                                if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
                                  v182 = *((v345 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  sub_1000AC1BC();
                                }

                                sub_1000AC1DC();

                                v171 = v345;
                                v4 = v174;
                              }

                              while (v339 != a1);
                            }

LABEL_116:

                            if (v171 >> 62)
                            {
                              v315 = sub_1000AC65C();
                              v2 = v340;
                              if (!v315)
                              {
                                goto LABEL_229;
                              }
                            }

                            else
                            {
                              v2 = v340;
                              if (!*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_229;
                              }
                            }

                            v183 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                            if (v183)
                            {
                              sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
                              v184 = v183;
                              v185 = sub_1000AC18C().super.isa;

                              [v184 setShippingMethods:v185];

                              goto LABEL_230;
                            }

LABEL_229:

                            goto LABEL_230;
                          }

                          v162 = &unk_1000F1DF0;
                          v163 = &qword_1000B18F0;
                          v164 = &v345;
                        }

                        sub_10000E784(v164, v162, v163);
                        goto LABEL_100;
                      }

                      v119 = &unk_1000F1DF0;
                      v120 = &qword_1000B18F0;
                      v121 = &v345;
                    }

                    sub_10000E784(v121, v119, v120);
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_39;
            }

            sub_10000E784(v261, &unk_1000F06A0, &unk_1000B0450);
            v47 = v339;
          }
        }

        sub_1000AC2AC();
        sub_1000ABA5C();

        goto LABEL_32;
      }
    }

    else
    {
      sub_10000E784(&v345, &unk_1000F1DF0, &qword_1000B18F0);
    }

    v47 = v339;
    goto LABEL_158;
  }

  v318 = v219;
  v220 = [v318 merchantIdentifier];
  v221 = sub_1000AC06C();
  v223 = v222;

  v224 = [v79 merchantIdentifier];
  v225 = sub_1000AC06C();
  v227 = v226;

  if (v221 == v225 && v223 == v227)
  {

    goto LABEL_151;
  }

  v246 = sub_1000AC7AC();

  if (v246)
  {

LABEL_151:
    v49 = v320;
    v4 = v322;
    if (*(v2 + v321))
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  v313 = *(v2 + v321);
  *(v2 + v321) = 0;

  v314 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  *v314 = 7;
  *(v314 + 8) = 0;
  sub_1000AC2AC();
  sub_1000ABA5C();

  return v2;
}

void sub_100009558(unint64_t a1)
{
  v4 = v1;
  v5 = a1;
  if (!*(a1 + 16) || (v6 = sub_10004F0CC(0x437972746E756F63, 0xEB0000000065646FLL), (v7 & 1) == 0) || (sub_1000068B4(*(v5 + 56) + 32 * v6, &v103), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    if (!*(v5 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v8 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000AC02C();

    [v9 setCountryCode:v10];

    goto LABEL_6;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = sub_10004F0CC(0x79636E6572727563, 0xEC00000065646F43);
  if (v12)
  {
    sub_1000068B4(*(v5 + 56) + 32 * v11, &v103);
    if (swift_dynamicCast())
    {
      v13 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1000AC02C();

        [v14 setCurrencyCode:v15];
      }

      else
      {
      }
    }
  }

LABEL_14:
  if (*(v5 + 16))
  {
    v16 = sub_10004F0CC(0xD000000000000012, 0x80000001000B5DD0);
    if (v17)
    {
      sub_1000068B4(*(v5 + 56) + 32 * v16, &v103);
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v18 = v5;
        v19 = v102;
        v102 = &_swiftEmptySetSingleton;
        v20 = v19[2];
        if (v20)
        {
          v21 = v19 + 5;
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;

            sub_10009F1B8(&v103, v22, v23);

            v21 += 2;
            --v20;
          }

          while (v20);
        }

        v24 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v24)
        {
          v25 = v24;
          isa = sub_1000AC25C().super.isa;

          [v25 setSupportedCountries:isa];
        }

        else
        {
        }

        v5 = v18;
      }
    }
  }

  if (!*(v5 + 16) || (v27 = sub_10004F0CC(0x6D657449656E696CLL, 0xE900000000000073), (v28 & 1) == 0) || (sub_1000068B4(*(v5 + 56) + 32 * v27, &v103), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_45:
    if (!*(v5 + 16))
    {
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v99 = v5;
  v101 = v1;
  v29 = _swiftEmptyArrayStorage;
  v103 = _swiftEmptyArrayStorage;
  v30 = v102[2];
  if (v30)
  {
    v31 = v102 + 4;
    type metadata accessor for IMBLineItem();
    do
    {
      v32 = *v31;
      swift_allocObject();

      v34 = sub_10007BF40(v33);
      if (v34)
      {
        v35 = v34;
        v36 = v34[2];
        v37 = v34[3];
        v38 = v34[4];
        v39 = v34[5];
        v3 = objc_allocWithZone(NSDecimalNumber);
        v40 = sub_1000AC02C();
        p_attr = [(SEL *)v3 initWithString:v40];

        v41 = sub_1000AC02C();
        v42 = [objc_opt_self() summaryItemWithLabel:v41 amount:p_attr];

        [v42 setType:v35[6]];
        sub_1000AC17C();
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000AC1BC();
        }

        sub_1000AC1DC();

        v29 = v103;
      }

      ++v31;
      --v30;
    }

    while (v30);
  }

  v44 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v4 = v101;
  v45 = *(v101 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (!v45)
  {
LABEL_44:

    goto LABEL_45;
  }

  v46 = [v45 paymentSummaryItems];
  v47 = sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v48 = sub_1000AC19C();

  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v99;
    if (v49)
    {
      goto LABEL_37;
    }

LABEL_82:

    v54 = *&v44[v101];
    if (!v54)
    {
      goto LABEL_44;
    }

    goto LABEL_83;
  }

  v49 = sub_1000AC65C();
  v5 = v99;
  if (!v49)
  {
    goto LABEL_82;
  }

LABEL_37:
  v50 = __OFSUB__(v49, 1);
  v51 = v49 - 1;
  if (v50)
  {
    __break(1u);
    goto LABEL_86;
  }

  if ((v48 & 0xC000000000000001) != 0)
  {
LABEL_86:
    v52 = sub_1000AC5AC();
    goto LABEL_42;
  }

  if ((v51 & 0x8000000000000000) == 0)
  {
    if (v51 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v52 = *(v48 + 8 * v51 + 32);
LABEL_42:
    v53 = v52;

    v29 = v53;
    sub_1000AC17C();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_88:
  sub_1000AC1BC();
LABEL_43:
  sub_1000AC1DC();

  v54 = *&v44[v101];
  if (!v54)
  {
    goto LABEL_44;
  }

LABEL_83:
  v97 = v54;
  v98 = sub_1000AC18C().super.isa;

  [v97 setPaymentSummaryItems:v98];

  if (!*(v5 + 16))
  {
    goto LABEL_65;
  }

LABEL_46:
  v55 = sub_10004F0CC(0x676E697070696873, 0xEF73646F6874654DLL);
  if (v56)
  {
    sub_1000068B4(*(v5 + 56) + 32 * v55, &v103);
    sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    if (swift_dynamicCast())
    {
      v100 = v5;
      v57 = v102;
      v58 = _swiftEmptyArrayStorage;
      v103 = _swiftEmptyArrayStorage;
      v59 = v102[2];
      if (v59)
      {
        v60 = 0;
        v3 = (v102 + 4);
        do
        {
          v61 = v60;
          while (1)
          {
            if (v61 >= v57[2])
            {
              __break(1u);
              goto LABEL_63;
            }

            v60 = v61 + 1;
            v62 = v3[v61];
            v63 = objc_allocWithZone(PKShippingMethod);

            v64 = sub_1000ABFAC().super.isa;

            v102 = 0;
            v65 = [v63 initWithDictionary:v64 error:&v102];

            if (v65)
            {
              break;
            }

            v66 = v102;
            sub_1000AB63C();

            swift_willThrow();

            ++v61;
            if (v59 == v60)
            {
              goto LABEL_58;
            }
          }

          v67 = v102;
          v68 = v65;
          sub_1000AC17C();
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v69 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000AC1BC();
          }

          sub_1000AC1DC();

          v58 = v103;
        }

        while (v59 - 1 != v61);
      }

LABEL_58:

      if (v58 >> 62)
      {
LABEL_63:
        v5 = v100;
        if (!sub_1000AC65C())
        {
          goto LABEL_64;
        }
      }

      else
      {
        v5 = v100;
        if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }
      }

      v70 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v70)
      {
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v71 = v70;
        v72 = sub_1000AC18C().super.isa;

        [v71 setShippingMethods:v72];

        goto LABEL_65;
      }

LABEL_64:
    }
  }

LABEL_65:
  if (*(v5 + 16))
  {
    v73 = sub_10004F0CC(0x6C61746F74, 0xE500000000000000);
    if (v74)
    {
      sub_1000068B4(*(v5 + 56) + 32 * v73, &v103);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v75 = v102;
        type metadata accessor for IMBTotalItem();
        swift_allocObject();
        v76 = sub_100006368(v75);
        if (v76)
        {
          v47 = v76;
          v44 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
          v77 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (!v77)
          {
            goto LABEL_79;
          }

          v48 = v77;
          p_attr = &stru_1000E5FF8.attr;
          v78 = [v48 paymentSummaryItems];
          sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
          v29 = sub_1000AC19C();

          v5 = v29 >> 62;
          if (!(v29 >> 62))
          {
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_72:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                v29 = sub_10000C1DC(v29);
              }

              v80 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v80)
              {
                v81 = v80 - 1;
                v82 = *((v29 & 0xFFFFFFFFFFFFFF8) + 8 * v81 + 0x20);
                *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) = v81;

                v83 = sub_1000AC18C().super.isa;

                v3 = &stru_1000E5FF8.attr;
                [v48 setPaymentSummaryItems:v83];

                v84 = *&v44[v4];
                if (v84)
                {
                  v85 = v47[5];
                  v86 = v47[6];
                  v87 = v47[2];
                  v88 = v47[3];
                  v89 = objc_allocWithZone(NSDecimalNumber);
                  v44 = v84;
                  v90 = sub_1000AC02C();
                  v91 = [v89 initWithString:v90];

                  v92 = sub_1000AC02C();
                  v93 = [objc_opt_self() summaryItemWithLabel:v92 amount:v91];

                  [v93 setType:v47[4]];
                  v94 = [v44 p_attr[252]];
                  v95 = sub_1000AC19C();

                  v103 = v95;
                  sub_1000AC17C();
                  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_78:
                    sub_1000AC1DC();
                    v96 = sub_1000AC18C().super.isa;

                    [v44 v3[260]];

                    goto LABEL_79;
                  }

LABEL_93:
                  sub_1000AC1BC();
                  goto LABEL_78;
                }

LABEL_79:

                return;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          if (sub_1000AC65C())
          {
            goto LABEL_72;
          }

          goto LABEL_91;
        }
      }
    }
  }
}

uint64_t sub_10000A1CC()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = v35 - v4;
  v6 = sub_1000AB7EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v35 - v14;
  if ((sub_10000A744() & 1) == 0)
  {
    return 1;
  }

  v16 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  sub_10000E66C(v0 + v16, v5, &qword_1000F0270, &unk_1000B0480);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000E784(v5, &qword_1000F0270, &unk_1000B0480);
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
    sub_1000AB7DC();
    v18 = sub_1000AB78C();
    v19 = *(v7 + 8);
    v19(v12, v6);
    if (v18)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v36 = qword_1000FC008;
      v35[1] = sub_1000AC2BC();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000AF0F0;
      v21 = sub_1000AB75C();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      v24 = sub_10000587C();
      *(v20 + 64) = v24;
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_1000AB7DC();
      v25 = sub_1000AB75C();
      v27 = v26;
      v19(v12, v6);
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v24;
      *(v20 + 72) = v25;
      *(v20 + 80) = v27;
      sub_1000ABA5C();

      v19(v15, v6);
      return 2;
    }

    v19(v15, v6);
  }

  if ([objc_opt_self() canMakePayments])
  {
    v28 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
    v29 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v29)
    {
      v30 = [v29 supportedNetworks];
      type metadata accessor for PKPaymentNetwork(0);
      v31 = sub_1000AC19C();

      v32 = *(v0 + v28);
      if (v32)
      {
        v33 = [v32 merchantCapabilities];
        sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController, v37);
        sub_1000058D0(v37, v37[3]);
        type metadata accessor for PaymentAuthorizationViewController();
        v34 = sub_100081E7C(v31, v33);

        sub_10000E738(v37);
        if ((v34 & 1) == 0)
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          sub_1000AC2BC();
          sub_1000ABA5C();
          return 5;
        }
      }

      else
      {
      }
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    return 0;
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    return 6;
  }
}

id sub_10000A744()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v30[-v4];
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v30[-v9];
  v11 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v12 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (!v12)
  {
LABEL_20:
    if (qword_1000EEE80 == -1)
    {
LABEL_21:
      sub_1000AC2AC();
      sub_1000ABA5C();
      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_21;
  }

  v13 = [v12 paymentSummaryItems];
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v14 = sub_1000AC19C();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v15 = sub_1000AC65C();
  if (!v15)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_4:
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else if ((v14 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v14 + 8 * v17 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_29;
  }

  v18 = sub_1000AC5AC();
LABEL_9:
  v19 = v18;

  v20 = [v19 amount];

  v21 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v22 = [v20 compare:v21];

  if (v22 != 1)
  {
    goto LABEL_20;
  }

  v23 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);
  if (v23 && !*(v23 + 16))
  {
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  v24 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v0 + v24, v10, &unk_1000F06A0, &unk_1000B0450);
  v25 = sub_1000AB6EC();
  LODWORD(v24) = (*(*(v25 - 8) + 48))(v10, 1, v25);
  sub_10000E784(v10, &unk_1000F06A0, &unk_1000B0450);
  if (v24 == 1)
  {
    return 0;
  }

  result = *(v0 + v11);
  if (result)
  {
    result = [result merchantSession];
    if (result)
    {

      v27 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
      swift_beginAccess();
      sub_10000E66C(v0 + v27, v5, &qword_1000F0270, &unk_1000B0480);
      v28 = sub_1000AB7EC();
      v29 = (*(*(v28 - 8) + 48))(v5, 1, v28) != 1;
      sub_10000E784(v5, &qword_1000F0270, &unk_1000B0480);
      return v29;
    }
  }

  return result;
}

void *sub_10000AC0C()
{
  v1 = v0;
  v28 = &_swiftEmptyDictionarySingleton;
  v2 = v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
  {
    sub_100039E5C(0x6574617473, 0xE500000000000000, &v26);
    sub_10000E784(&v26, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    v3 = sub_10005FCE8(*v2);
    v27 = &type metadata for String;
    *&v26 = v3;
    *(&v26 + 1) = v4;
    sub_100006910(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v25, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v28 = &_swiftEmptyDictionarySingleton;
  }

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AF0E0;
  if (*(v2 + 8))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_10005FCE8(*v2);
    v8 = v9;
  }

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000587C();
  v10 = 7104878;
  if (v8)
  {
    v10 = v7;
  }

  v11 = 0xE300000000000000;
  if (v8)
  {
    v11 = v8;
  }

  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v12 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  v13 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10001EA7C(v1);

    v27 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    *&v26 = v15;
    sub_100006910(&v26, v25);
    v16 = v28;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v25, 0x52746E656D796170, 0xEE00747365757165, v17);
    v18 = v16;
  }

  else
  {
    sub_100039E5C(0x52746E656D796170, 0xEE00747365757165, &v26);
    sub_10000E784(&v26, &unk_1000F1DF0, &qword_1000B18F0);
    v18 = v28;
  }

  v19 = sub_10000B538();
  v20 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  v27 = v20;
  *&v26 = v19;
  sub_100006910(&v26, v25);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v25, 0x746E696F70646E65, 0xE900000000000073, v21);
  v28 = v18;
  v22 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary);
  if (v22)
  {
    v27 = v20;
    *&v26 = v22;
    sub_100006910(&v26, v25);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v25, 0x746E61686372656DLL, 0xEF6E6F6973736553, v23);
    return v18;
  }

  else
  {
    sub_100039E5C(0x746E61686372656DLL, 0xEF6E6F6973736553, &v26);
    sub_10000E784(&v26, &unk_1000F1DF0, &qword_1000B18F0);
    return v28;
  }
}

void *sub_10000AFBC()
{
  v1 = v0;
  v42 = &_swiftEmptyDictionarySingleton;
  v2 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v3 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v3 && (v4 = [v3 billingContact]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, "dictionaryRepresentation"), v5, v6))
  {
    v7 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v7;
    sub_100006910(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = &_swiftEmptyDictionarySingleton;
    sub_10003A3E8(v39, 0x43676E696C6C6962, 0xEE00746361746E6FLL, isUniquelyReferenced_nonNull_native);
    v42 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_100039E5C(0x43676E696C6C6962, 0xEE00746361746E6FLL, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v9 = *(v0 + v2);
  if (v9 && (v10 = [v9 shippingContact]) != 0 && (v11 = v10, v12 = objc_msgSend(v10, "dictionaryRepresentation"), v11, v12))
  {
    v13 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v13;
    sub_100006910(&v40, v39);
    v14 = v42;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v14;
    sub_10003A3E8(v39, 0x676E697070696873, 0xEF746361746E6F43, v15);
    v42 = v14;
  }

  else
  {
    sub_100039E5C(0x676E697070696873, 0xEF746361746E6F43, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v16 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
  if (v16 && (v17 = [v16 dictionaryRepresentation]) != 0)
  {
    v18 = v17;
    v19 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v19;
    sub_100006910(&v40, v39);
    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v20;
    sub_10003A3E8(v39, 0x676E697070696873, 0xEE00646F6874654DLL, v21);
    v42 = v20;
  }

  else
  {
    sub_100039E5C(0x676E697070696873, 0xEE00646F6874654DLL, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v22 = *(v1 + v2);
  if (v22)
  {
    v23 = [v22 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v24 = sub_1000AC19C();

    if (!(v24 >> 62))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_17:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_32:

      v28 = _swiftEmptyArrayStorage;
LABEL_33:
      v41 = sub_10000413C(&qword_1000EF640, &qword_1000B0460);
      *&v40 = v28;
      sub_100006910(&v40, v39);
      v36 = v42;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v39, 0x497972616D6D7573, 0xEC000000736D6574, v37);
      return v36;
    }
  }

  v25 = sub_1000AC65C();
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_18:
  *&v40 = _swiftEmptyArrayStorage;
  result = sub_10009C1F8(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v40;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = sub_1000AC5AC();
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 dictionaryRepresentation];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1000ABFBC();
      }

      else
      {

        v33 = 0;
      }

      *&v40 = v28;
      v35 = v28[2];
      v34 = v28[3];
      if (v35 >= v34 >> 1)
      {
        sub_10009C1F8((v34 > 1), v35 + 1, 1);
        v28 = v40;
      }

      ++v27;
      v28[2] = v35 + 1;
      v28[v35 + 4] = v33;
    }

    while (v25 != v27);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void *sub_10000B538()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v69 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v67 = &v66 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v66 = &v66 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v66 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v66 - v24;
  v78 = &_swiftEmptyDictionarySingleton;
  v26 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
  swift_beginAccess();
  sub_10000E66C(v0 + v26, v25, &unk_1000F06A0, &unk_1000B0450);
  v68 = *(v3 + 48);
  if (v68(v25, 1, v2))
  {
    sub_10000E784(v25, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000016, 0x80000001000B5AF0, &v76);
    sub_10000E784(&v76, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v7, v25, v2);
    sub_10000E784(v25, &unk_1000F06A0, &unk_1000B0450);
    v27 = sub_1000AB64C();
    v28 = v3;
    v30 = v29;
    (*(v28 + 8))(v7, v2);
    v77 = &type metadata for String;
    *&v76 = v27;
    *(&v76 + 1) = v30;
    v3 = v28;
    sub_100006910(&v76, v71);
    v31 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v31;
    sub_10003A3E8(v71, 0xD000000000000016, 0x80000001000B5AF0, isUniquelyReferenced_nonNull_native);
    v78 = v75;
  }

  v33 = v7;
  v34 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  swift_beginAccess();
  sub_10000E66C(v1 + v34, v22, &unk_1000F06A0, &unk_1000B0450);
  v35 = v68;
  if (v68(v22, 1, v2))
  {
    sub_10000E784(v22, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000018, 0x80000001000B5B10, &v76);
    sub_10000E784(&v76, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v7, v22, v2);
    sub_10000E784(v22, &unk_1000F06A0, &unk_1000B0450);
    v36 = sub_1000AB64C();
    v38 = v37;
    (*(v3 + 8))(v7, v2);
    v77 = &type metadata for String;
    *&v76 = v36;
    *(&v76 + 1) = v38;
    sub_100006910(&v76, v71);
    v39 = v78;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v39;
    sub_10003A3E8(v71, 0xD000000000000018, 0x80000001000B5B10, v40);
    v78 = v74;
  }

  v41 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  swift_beginAccess();
  v42 = v1 + v41;
  v43 = v66;
  sub_10000E66C(v42, v66, &unk_1000F06A0, &unk_1000B0450);
  if (v35(v43, 1, v2))
  {
    sub_10000E784(v43, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000017, 0x80000001000B5B30, &v76);
    sub_10000E784(&v76, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v7, v43, v2);
    sub_10000E784(v43, &unk_1000F06A0, &unk_1000B0450);
    v44 = sub_1000AB64C();
    v46 = v45;
    (*(v3 + 8))(v33, v2);
    v77 = &type metadata for String;
    *&v76 = v44;
    *(&v76 + 1) = v46;
    sub_100006910(&v76, v71);
    v47 = v78;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v47;
    sub_10003A3E8(v71, 0xD000000000000017, 0x80000001000B5B30, v48);
    v78 = v73;
  }

  v49 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v50 = v1 + v49;
  v51 = v67;
  sub_10000E66C(v50, v67, &unk_1000F06A0, &unk_1000B0450);
  if (v35(v51, 1, v2))
  {
    sub_10000E784(v51, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000010, 0x80000001000B5AB0, &v76);
    sub_10000E784(&v76, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v33, v51, v2);
    sub_10000E784(v51, &unk_1000F06A0, &unk_1000B0450);
    v52 = sub_1000AB64C();
    v54 = v53;
    (*(v3 + 8))(v33, v2);
    v77 = &type metadata for String;
    *&v76 = v52;
    *(&v76 + 1) = v54;
    sub_100006910(&v76, v71);
    v55 = v78;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v55;
    sub_10003A3E8(v71, 0xD000000000000010, 0x80000001000B5AB0, v56);
    v78 = v72;
  }

  v57 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  swift_beginAccess();
  v58 = v1 + v57;
  v59 = v69;
  sub_10000E66C(v58, v69, &unk_1000F06A0, &unk_1000B0450);
  if (v35(v59, 1, v2))
  {
    sub_10000E784(v59, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0x6B6361626C6C6166, 0xEB000000006C7255, &v76);
    sub_10000E784(&v76, &unk_1000F1DF0, &qword_1000B18F0);
    return v78;
  }

  else
  {
    (*(v3 + 16))(v33, v59, v2);
    sub_10000E784(v59, &unk_1000F06A0, &unk_1000B0450);
    v61 = sub_1000AB64C();
    v63 = v62;
    (*(v3 + 8))(v33, v2);
    v77 = &type metadata for String;
    *&v76 = v61;
    *(&v76 + 1) = v63;
    sub_100006910(&v76, v71);
    v64 = v78;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v64;
    sub_10003A3E8(v71, 0x6B6361626C6C6166, 0xEB000000006C7255, v65);
    return v70;
  }
}

uint64_t sub_10000BE1C()
{
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl, &unk_1000F06A0, &unk_1000B0450);
  v1 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities);

  v2 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);

  v3 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary);

  sub_10000E738((v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController));
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate, &qword_1000F0270, &unk_1000B0480);
  v4 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_errors);

  return v0;
}

uint64_t sub_10000BF9C()
{
  sub_10000BE1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBPaymentRequest()
{
  result = qword_1000EF328;
  if (!qword_1000EF328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C048()
{
  sub_10000C188(319, &qword_1000F28C0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000C188(319, &unk_1000EF338, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000C188(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000AC42C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000C1DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000AC65C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1000AC5BC();
}

uint64_t sub_10000C240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v328 = v4;
  v329 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v323 = &v287 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000413C(&qword_1000EF628, &qword_1000B0448);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9, v11);
  v292 = &v287 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v295 = &v287 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v298 = &v287 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v301 = &v287 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v303 = &v287 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v305 = &v287 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v308 = &v287 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v311 = &v287 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v314 = &v287 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v319 = &v287 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v322 = &v287 - v43;
  __chkstk_darwin(v42, v44);
  v46 = &v287 - v45;
  v47 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v48 = *(*(v47 - 8) + 64);
  v50 = __chkstk_darwin(v47 - 8, v49);
  v289 = &v287 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v50, v52);
  v290 = &v287 - v54;
  v56 = __chkstk_darwin(v53, v55);
  v291 = &v287 - v57;
  v59 = __chkstk_darwin(v56, v58);
  v293 = &v287 - v60;
  v62 = __chkstk_darwin(v59, v61);
  v294 = &v287 - v63;
  v65 = __chkstk_darwin(v62, v64);
  v296 = &v287 - v66;
  v68 = __chkstk_darwin(v65, v67);
  v297 = &v287 - v69;
  v71 = __chkstk_darwin(v68, v70);
  v299 = &v287 - v72;
  v74 = __chkstk_darwin(v71, v73);
  v300 = &v287 - v75;
  v77 = __chkstk_darwin(v74, v76);
  v304 = &v287 - v78;
  v80 = __chkstk_darwin(v77, v79);
  v302 = &v287 - v81;
  v83 = __chkstk_darwin(v80, v82);
  v306 = &v287 - v84;
  v86 = __chkstk_darwin(v83, v85);
  v307 = &v287 - v87;
  v89 = __chkstk_darwin(v86, v88);
  v310 = &v287 - v90;
  v92 = __chkstk_darwin(v89, v91);
  v309 = &v287 - v93;
  v95 = __chkstk_darwin(v92, v94);
  v313 = &v287 - v96;
  v98 = __chkstk_darwin(v95, v97);
  v312 = &v287 - v99;
  v101 = __chkstk_darwin(v98, v100);
  v316 = &v287 - v102;
  v104 = __chkstk_darwin(v101, v103);
  v315 = &v287 - v105;
  v107 = __chkstk_darwin(v104, v106);
  v321 = &v287 - v108;
  v110 = __chkstk_darwin(v107, v109);
  v320 = &v287 - v111;
  v113 = __chkstk_darwin(v110, v112);
  v324 = &v287 - v114;
  v116 = __chkstk_darwin(v113, v115);
  v118 = &v287 - v117;
  __chkstk_darwin(v116, v119);
  v121 = &v287 - v120;
  v122 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v326 = a1;
  sub_10000E66C(a1 + v122, v121, &unk_1000F06A0, &unk_1000B0450);
  v123 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v325 = v9;
  v124 = *(v9 + 48);
  sub_10000E66C(v121, v46, &unk_1000F06A0, &unk_1000B0450);
  v327 = a2;
  v125 = a2 + v123;
  v127 = v328;
  v126 = v329;
  sub_10000E66C(v125, &v46[v124], &unk_1000F06A0, &unk_1000B0450);
  v128 = *(v126 + 48);
  if (v128(v46, 1, v127) == 1)
  {
    sub_10000E784(v121, &unk_1000F06A0, &unk_1000B0450);
    if (v128(&v46[v124], 1, v127) == 1)
    {
      v317 = v128;
      v318 = v126 + 48;
      sub_10000E784(v46, &unk_1000F06A0, &unk_1000B0450);
      goto LABEL_8;
    }

LABEL_6:
    v129 = v46;
    goto LABEL_42;
  }

  sub_10000E66C(v46, v118, &unk_1000F06A0, &unk_1000B0450);
  if (v128(&v46[v124], 1, v127) == 1)
  {
    sub_10000E784(v121, &unk_1000F06A0, &unk_1000B0450);
    (*(v126 + 8))(v118, v127);
    goto LABEL_6;
  }

  v317 = v128;
  v318 = v126 + 48;
  v130 = *(v126 + 32);
  v131 = v126;
  v132 = v323;
  v130(v323, &v46[v124], v127);
  sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
  LODWORD(v288) = sub_1000AC01C();
  v133 = *(v131 + 8);
  v133(v132, v127);
  sub_10000E784(v121, &unk_1000F06A0, &unk_1000B0450);
  v133(v118, v127);
  v126 = v131;
  sub_10000E784(v46, &unk_1000F06A0, &unk_1000B0450);
  if ((v288 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_8:
  v134 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  v135 = v326;
  swift_beginAccess();
  v288 = v134;
  v136 = v324;
  sub_10000E66C(v135 + v134, v324, &unk_1000F06A0, &unk_1000B0450);
  v137 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  v138 = v327;
  swift_beginAccess();
  v139 = *(v325 + 48);
  v140 = v322;
  sub_10000E66C(v136, v322, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E66C(v138 + v137, v140 + v139, &unk_1000F06A0, &unk_1000B0450);
  v141 = v317;
  if (v317(v140, 1, v127) == 1)
  {
    sub_10000E784(v136, &unk_1000F06A0, &unk_1000B0450);
    if (v141(v140 + v139, 1, v127) != 1)
    {
      goto LABEL_13;
    }

    v287 = v137;
    sub_10000E784(v140, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v142 = v320;
    sub_10000E66C(v140, v320, &unk_1000F06A0, &unk_1000B0450);
    if (v141(v140 + v139, 1, v127) == 1)
    {
      sub_10000E784(v324, &unk_1000F06A0, &unk_1000B0450);
      (*(v126 + 8))(v142, v127);
      goto LABEL_13;
    }

    v287 = v137;
    v143 = v323;
    (*(v126 + 32))(v323, v140 + v139, v127);
    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
    v144 = sub_1000AC01C();
    v145 = v140;
    v146 = *(v126 + 8);
    v146(v143, v127);
    sub_10000E784(v324, &unk_1000F06A0, &unk_1000B0450);
    v146(v142, v127);
    sub_10000E784(v145, &unk_1000F06A0, &unk_1000B0450);
    if ((v144 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v147 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  v148 = v326;
  swift_beginAccess();
  v149 = v321;
  sub_10000E66C(v148 + v147, v321, &unk_1000F06A0, &unk_1000B0450);
  v150 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  v151 = v327;
  swift_beginAccess();
  v152 = *(v325 + 48);
  v153 = v319;
  sub_10000E66C(v149, v319, &unk_1000F06A0, &unk_1000B0450);
  v154 = v317;
  sub_10000E66C(v151 + v150, v153 + v152, &unk_1000F06A0, &unk_1000B0450);
  if (v154(v153, 1, v127) == 1)
  {
    sub_10000E784(v149, &unk_1000F06A0, &unk_1000B0450);
    if (v154(v153 + v152, 1, v127) != 1)
    {
      goto LABEL_20;
    }

    v324 = v147;
    sub_10000E784(v153, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v155 = v315;
    sub_10000E66C(v153, v315, &unk_1000F06A0, &unk_1000B0450);
    if (v154(v153 + v152, 1, v127) == 1)
    {
      sub_10000E784(v321, &unk_1000F06A0, &unk_1000B0450);
      (*(v329 + 8))(v155, v127);
      goto LABEL_20;
    }

    v324 = v147;
    v156 = v329;
    v157 = v323;
    (*(v329 + 32))(v323, v153 + v152, v127);
    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
    v158 = sub_1000AC01C();
    v159 = *(v156 + 8);
    v159(v157, v127);
    sub_10000E784(v321, &unk_1000F06A0, &unk_1000B0450);
    v159(v155, v127);
    sub_10000E784(v153, &unk_1000F06A0, &unk_1000B0450);
    if ((v158 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v322 = v150;
  v160 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  v161 = v326;
  swift_beginAccess();
  v162 = v316;
  sub_10000E66C(v161 + v160, v316, &unk_1000F06A0, &unk_1000B0450);
  v163 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  v164 = v327;
  swift_beginAccess();
  v165 = *(v325 + 48);
  v166 = v314;
  sub_10000E66C(v162, v314, &unk_1000F06A0, &unk_1000B0450);
  v321 = v163;
  sub_10000E66C(v164 + v163, v166 + v165, &unk_1000F06A0, &unk_1000B0450);
  v167 = v317;
  if (v317(v166, 1, v127) != 1)
  {
    v170 = v312;
    sub_10000E66C(v166, v312, &unk_1000F06A0, &unk_1000B0450);
    v171 = v167(v166 + v165, 1, v127);
    v172 = v329;
    v169 = v313;
    if (v171 != 1)
    {
      v320 = v160;
      v173 = v166 + v165;
      v174 = v323;
      (*(v329 + 32))(v323, v173, v127);
      sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
      v175 = sub_1000AC01C();
      v176 = *(v172 + 8);
      v176(v174, v127);
      sub_10000E784(v316, &unk_1000F06A0, &unk_1000B0450);
      v176(v170, v127);
      sub_10000E784(v166, &unk_1000F06A0, &unk_1000B0450);
      if ((v175 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    sub_10000E784(v316, &unk_1000F06A0, &unk_1000B0450);
    (*(v172 + 8))(v170, v127);
LABEL_27:
    v129 = v166;
    goto LABEL_42;
  }

  sub_10000E784(v162, &unk_1000F06A0, &unk_1000B0450);
  v168 = v167(v166 + v165, 1, v127);
  v169 = v313;
  if (v168 != 1)
  {
    goto LABEL_27;
  }

  v320 = v160;
  sub_10000E784(v166, &unk_1000F06A0, &unk_1000B0450);
LABEL_29:
  v177 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  v178 = v326;
  swift_beginAccess();
  v319 = v177;
  sub_10000E66C(v178 + v177, v169, &unk_1000F06A0, &unk_1000B0450);
  v179 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  v180 = v327;
  swift_beginAccess();
  v181 = *(v325 + 48);
  v182 = v311;
  sub_10000E66C(v169, v311, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E66C(v180 + v179, v182 + v181, &unk_1000F06A0, &unk_1000B0450);
  v183 = v317;
  if (v317(v182, 1, v127) == 1)
  {
    sub_10000E784(v169, &unk_1000F06A0, &unk_1000B0450);
    if (v183(v182 + v181, 1, v127) == 1)
    {
      sub_10000E784(v182, &unk_1000F06A0, &unk_1000B0450);
      goto LABEL_36;
    }

LABEL_34:
    v129 = v182;
    goto LABEL_42;
  }

  v184 = v309;
  sub_10000E66C(v182, v309, &unk_1000F06A0, &unk_1000B0450);
  v185 = v183(v182 + v181, 1, v127);
  v186 = v329;
  if (v185 == 1)
  {
    sub_10000E784(v169, &unk_1000F06A0, &unk_1000B0450);
    (*(v186 + 8))(v184, v127);
    goto LABEL_34;
  }

  v187 = v323;
  (*(v329 + 32))(v323, v182 + v181, v127);
  sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
  LODWORD(v316) = sub_1000AC01C();
  v188 = *(v186 + 8);
  v188(v187, v127);
  sub_10000E784(v169, &unk_1000F06A0, &unk_1000B0450);
  v188(v184, v127);
  sub_10000E784(v182, &unk_1000F06A0, &unk_1000B0450);
  if (v316)
  {
LABEL_36:
    v316 = v179;
    v189 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
    v190 = v326;
    swift_beginAccess();
    v315 = v189;
    v191 = v190 + v189;
    v192 = v310;
    sub_10000E66C(v191, v310, &unk_1000F06A0, &unk_1000B0450);
    v193 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
    v194 = v327;
    swift_beginAccess();
    v195 = *(v325 + 48);
    v196 = v308;
    sub_10000E66C(v192, v308, &unk_1000F06A0, &unk_1000B0450);
    v314 = v193;
    sub_10000E66C(v194 + v193, v196 + v195, &unk_1000F06A0, &unk_1000B0450);
    v197 = v317;
    if (v317(v196, 1, v127) == 1)
    {
      sub_10000E784(v192, &unk_1000F06A0, &unk_1000B0450);
      if (v197(v196 + v195, 1, v127) == 1)
      {
        sub_10000E784(v196, &unk_1000F06A0, &unk_1000B0450);
        goto LABEL_46;
      }
    }

    else
    {
      v198 = v307;
      sub_10000E66C(v196, v307, &unk_1000F06A0, &unk_1000B0450);
      v199 = v197(v196 + v195, 1, v127);
      v200 = v329;
      if (v199 != 1)
      {
        v203 = v323;
        (*(v329 + 32))(v323, v196 + v195, v127);
        sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
        v204 = sub_1000AC01C();
        v205 = *(v200 + 8);
        v205(v203, v127);
        sub_10000E784(v310, &unk_1000F06A0, &unk_1000B0450);
        v205(v198, v127);
        sub_10000E784(v196, &unk_1000F06A0, &unk_1000B0450);
        if ((v204 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_46:
        v206 = *(v326 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
        v207 = *(v327 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
        if (v206)
        {
          if (!v207)
          {
            goto LABEL_43;
          }

          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          v208 = v207;
          v209 = v206;
          v210 = sub_1000AC3DC();

          if ((v210 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v207)
        {
          goto LABEL_43;
        }

        v211 = *(v326 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        v212 = *(v327 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v211)
        {
          if (!v212)
          {
            goto LABEL_43;
          }

          sub_100005A24(0, &qword_1000EF638, PKPaymentRequest_ptr);
          v213 = v212;
          v214 = v211;
          v215 = sub_1000AC3DC();

          if ((v215 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v212)
        {
          goto LABEL_43;
        }

        v216 = v306;
        sub_10000E66C(v326 + v288, v306, &unk_1000F06A0, &unk_1000B0450);
        v217 = *(v325 + 48);
        v153 = v305;
        sub_10000E66C(v216, v305, &unk_1000F06A0, &unk_1000B0450);
        sub_10000E66C(v327 + v287, v153 + v217, &unk_1000F06A0, &unk_1000B0450);
        v218 = v317;
        if (v317(v153, 1, v127) == 1)
        {
          sub_10000E784(v216, &unk_1000F06A0, &unk_1000B0450);
          if (v218(v153 + v217, 1, v127) == 1)
          {
            sub_10000E784(v153, &unk_1000F06A0, &unk_1000B0450);
            goto LABEL_62;
          }
        }

        else
        {
          v219 = v302;
          sub_10000E66C(v153, v302, &unk_1000F06A0, &unk_1000B0450);
          v220 = v218(v153 + v217, 1, v127);
          v221 = v329;
          if (v220 != 1)
          {
            v222 = v323;
            (*(v329 + 32))(v323, v153 + v217, v127);
            sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
            v223 = sub_1000AC01C();
            v224 = *(v221 + 8);
            v224(v222, v127);
            sub_10000E784(v306, &unk_1000F06A0, &unk_1000B0450);
            v224(v219, v127);
            sub_10000E784(v153, &unk_1000F06A0, &unk_1000B0450);
            if ((v223 & 1) == 0)
            {
              goto LABEL_43;
            }

LABEL_62:
            v225 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            v226 = v326;
            swift_beginAccess();
            v227 = v304;
            sub_10000E66C(v226 + v225, v304, &unk_1000F06A0, &unk_1000B0450);
            v228 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            v229 = v327;
            swift_beginAccess();
            v230 = *(v325 + 48);
            v231 = v227;
            v140 = v303;
            sub_10000E66C(v231, v303, &unk_1000F06A0, &unk_1000B0450);
            sub_10000E66C(v229 + v228, v140 + v230, &unk_1000F06A0, &unk_1000B0450);
            v232 = v317;
            if (v317(v140, 1, v127) == 1)
            {
              sub_10000E784(v304, &unk_1000F06A0, &unk_1000B0450);
              if (v232(v140 + v230, 1, v127) == 1)
              {
                sub_10000E784(v140, &unk_1000F06A0, &unk_1000B0450);
                goto LABEL_68;
              }
            }

            else
            {
              sub_10000E66C(v140, v300, &unk_1000F06A0, &unk_1000B0450);
              if (v232(v140 + v230, 1, v127) != 1)
              {
                v233 = v328;
                v234 = v329;
                v235 = v303;
                v236 = v323;
                (*(v329 + 32))(v323, v303 + v230, v328);
                sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
                v237 = v300;
                v238 = sub_1000AC01C();
                v239 = *(v234 + 8);
                v239(v236, v233);
                sub_10000E784(v304, &unk_1000F06A0, &unk_1000B0450);
                v239(v237, v233);
                sub_10000E784(v235, &unk_1000F06A0, &unk_1000B0450);
                if ((v238 & 1) == 0)
                {
                  goto LABEL_43;
                }

LABEL_68:
                v240 = v299;
                sub_10000E66C(v326 + v324, v299, &unk_1000F06A0, &unk_1000B0450);
                v241 = *(v325 + 48);
                v242 = v240;
                v243 = v301;
                sub_10000E66C(v242, v301, &unk_1000F06A0, &unk_1000B0450);
                sub_10000E66C(v327 + v322, v243 + v241, &unk_1000F06A0, &unk_1000B0450);
                if (v317(v243, 1, v328) == 1)
                {
                  sub_10000E784(v299, &unk_1000F06A0, &unk_1000B0450);
                  if (v317(v301 + v241, 1, v328) == 1)
                  {
                    sub_10000E784(v301, &unk_1000F06A0, &unk_1000B0450);
                    goto LABEL_75;
                  }
                }

                else
                {
                  v244 = v301;
                  sub_10000E66C(v301, v297, &unk_1000F06A0, &unk_1000B0450);
                  if (v317(v244 + v241, 1, v328) != 1)
                  {
                    v246 = v328;
                    v245 = v329;
                    v247 = v301;
                    v248 = v323;
                    (*(v329 + 32))(v323, v301 + v241, v328);
                    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
                    v249 = v297;
                    v250 = sub_1000AC01C();
                    v251 = *(v245 + 8);
                    v251(v248, v246);
                    sub_10000E784(v299, &unk_1000F06A0, &unk_1000B0450);
                    v251(v249, v246);
                    sub_10000E784(v247, &unk_1000F06A0, &unk_1000B0450);
                    if ((v250 & 1) == 0)
                    {
                      goto LABEL_43;
                    }

LABEL_75:
                    v252 = v296;
                    sub_10000E66C(v326 + v320, v296, &unk_1000F06A0, &unk_1000B0450);
                    v253 = *(v325 + 48);
                    v254 = v252;
                    v255 = v298;
                    sub_10000E66C(v254, v298, &unk_1000F06A0, &unk_1000B0450);
                    sub_10000E66C(v327 + v321, v255 + v253, &unk_1000F06A0, &unk_1000B0450);
                    if (v317(v255, 1, v328) == 1)
                    {
                      sub_10000E784(v296, &unk_1000F06A0, &unk_1000B0450);
                      if (v317(v298 + v253, 1, v328) == 1)
                      {
                        sub_10000E784(v298, &unk_1000F06A0, &unk_1000B0450);
LABEL_82:
                        v264 = v293;
                        sub_10000E66C(v326 + v319, v293, &unk_1000F06A0, &unk_1000B0450);
                        v265 = *(v325 + 48);
                        v266 = v264;
                        v267 = v295;
                        sub_10000E66C(v266, v295, &unk_1000F06A0, &unk_1000B0450);
                        sub_10000E66C(v327 + v316, v267 + v265, &unk_1000F06A0, &unk_1000B0450);
                        if (v317(v267, 1, v328) == 1)
                        {
                          sub_10000E784(v293, &unk_1000F06A0, &unk_1000B0450);
                          if (v317(v295 + v265, 1, v328) == 1)
                          {
                            sub_10000E784(v295, &unk_1000F06A0, &unk_1000B0450);
LABEL_89:
                            v276 = v290;
                            sub_10000E66C(v326 + v315, v290, &unk_1000F06A0, &unk_1000B0450);
                            v277 = *(v325 + 48);
                            v278 = v276;
                            v279 = v292;
                            sub_10000E66C(v278, v292, &unk_1000F06A0, &unk_1000B0450);
                            sub_10000E66C(v327 + v314, v279 + v277, &unk_1000F06A0, &unk_1000B0450);
                            if (v317(v279, 1, v328) == 1)
                            {
                              sub_10000E784(v290, &unk_1000F06A0, &unk_1000B0450);
                              if (v317(v292 + v277, 1, v328) == 1)
                              {
                                sub_10000E784(v292, &unk_1000F06A0, &unk_1000B0450);
                                v201 = 1;
                                return v201 & 1;
                              }
                            }

                            else
                            {
                              v280 = v292;
                              sub_10000E66C(v292, v289, &unk_1000F06A0, &unk_1000B0450);
                              if (v317(v280 + v277, 1, v328) != 1)
                              {
                                v282 = v328;
                                v281 = v329;
                                v283 = v292;
                                v284 = v323;
                                (*(v329 + 32))(v323, v292 + v277, v328);
                                sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
                                v285 = v289;
                                v201 = sub_1000AC01C();
                                v286 = *(v281 + 8);
                                v286(v284, v282);
                                sub_10000E784(v290, &unk_1000F06A0, &unk_1000B0450);
                                v286(v285, v282);
                                sub_10000E784(v283, &unk_1000F06A0, &unk_1000B0450);
                                return v201 & 1;
                              }

                              sub_10000E784(v290, &unk_1000F06A0, &unk_1000B0450);
                              (*(v329 + 8))(v289, v328);
                            }

                            v129 = v292;
                            goto LABEL_42;
                          }
                        }

                        else
                        {
                          v268 = v295;
                          sub_10000E66C(v295, v291, &unk_1000F06A0, &unk_1000B0450);
                          if (v317(v268 + v265, 1, v328) != 1)
                          {
                            v270 = v328;
                            v269 = v329;
                            v271 = v295;
                            v272 = v323;
                            (*(v329 + 32))(v323, v295 + v265, v328);
                            sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
                            v273 = v291;
                            v274 = sub_1000AC01C();
                            v275 = *(v269 + 8);
                            v275(v272, v270);
                            sub_10000E784(v293, &unk_1000F06A0, &unk_1000B0450);
                            v275(v273, v270);
                            sub_10000E784(v271, &unk_1000F06A0, &unk_1000B0450);
                            if ((v274 & 1) == 0)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_89;
                          }

                          sub_10000E784(v293, &unk_1000F06A0, &unk_1000B0450);
                          (*(v329 + 8))(v291, v328);
                        }

                        v129 = v295;
LABEL_42:
                        sub_10000E784(v129, &qword_1000EF628, &qword_1000B0448);
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      v256 = v298;
                      sub_10000E66C(v298, v294, &unk_1000F06A0, &unk_1000B0450);
                      if (v317(v256 + v253, 1, v328) != 1)
                      {
                        v258 = v328;
                        v257 = v329;
                        v259 = v298;
                        v260 = v323;
                        (*(v329 + 32))(v323, v298 + v253, v328);
                        sub_10000E908(&qword_1000EF630, &type metadata accessor for URL);
                        v261 = v294;
                        v262 = sub_1000AC01C();
                        v263 = *(v257 + 8);
                        v263(v260, v258);
                        sub_10000E784(v296, &unk_1000F06A0, &unk_1000B0450);
                        v263(v261, v258);
                        sub_10000E784(v259, &unk_1000F06A0, &unk_1000B0450);
                        if ((v262 & 1) == 0)
                        {
                          goto LABEL_43;
                        }

                        goto LABEL_82;
                      }

                      sub_10000E784(v296, &unk_1000F06A0, &unk_1000B0450);
                      (*(v329 + 8))(v294, v328);
                    }

                    v129 = v298;
                    goto LABEL_42;
                  }

                  sub_10000E784(v299, &unk_1000F06A0, &unk_1000B0450);
                  (*(v329 + 8))(v297, v328);
                }

                v129 = v301;
                goto LABEL_42;
              }

              sub_10000E784(v304, &unk_1000F06A0, &unk_1000B0450);
              (*(v329 + 8))(v300, v328);
              v140 = v303;
            }

LABEL_13:
            v129 = v140;
            goto LABEL_42;
          }

          sub_10000E784(v306, &unk_1000F06A0, &unk_1000B0450);
          (*(v221 + 8))(v219, v127);
        }

LABEL_20:
        v129 = v153;
        goto LABEL_42;
      }

      sub_10000E784(v310, &unk_1000F06A0, &unk_1000B0450);
      (*(v200 + 8))(v198, v127);
    }

    v129 = v196;
    goto LABEL_42;
  }

LABEL_43:
  v201 = 0;
  return v201 & 1;
}

uint64_t sub_10000E66C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000413C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E6D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E738(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000E784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000413C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E854(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA298;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000E8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000413C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E964(a1, a2);
  }

  return a1;
}

uint64_t sub_10000E964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_10000E9B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = &qword_1000EF000;
  *&v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_lastButtonBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model];
  *v12 = a1;
  *(v12 + 1) = a2;
  v12[16] = a3 & 1;
  v13 = &v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected];
  *v13 = a4;
  *(v13 + 1) = a5;
  v93.receiver = v5;
  v93.super_class = type metadata accessor for QuickReplyToMeBubbleView();
  p_attr = &stru_1000E5FF8.attr;

  v79 = a5;

  v15 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (qword_1000EEDA8 != -1)
  {
LABEL_19:
    swift_once();
  }

  [v15 setBackgroundColor:{qword_1000FBED8, v79}];
  v16 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  v17 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v18 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v18 setNumberOfTapsRequired:2];
  v19 = v15;
  v84 = v16;
  [v19 addGestureRecognizer:v16];
  v83 = v17;
  [v19 addGestureRecognizer:v17];
  v82 = v18;
  [v19 addGestureRecognizer:v18];
  v20 = [objc_allocWithZone(UIView) p_attr[282]];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = v19;
  [v19 addSubview:v20];
  p_attr = *(a1 + 16);
  v80 = v11[206];

  v15 = &stru_1000E5FF8.attr;
  v21 = &stru_1000E5FF8.attr;
  v81 = p_attr;
  if (p_attr)
  {
    v22 = 0;
    v23 = 0;
    v24 = (a1 + 56);
    v85 = v20;
    v90 = a1;
    do
    {
      v28 = *(a1 + 16);
      if (v22 >= v28)
      {
        __break(1u);
        goto LABEL_19;
      }

      v29 = *(v24 - 1);
      v30 = *v24;
      v31 = *(v24 - 2);
      v88 = (v28 - 1);
      v89 = v24;
      v32 = v22 != (v28 - 1);
      v92 = v23;
      v33 = objc_allocWithZone(UITapGestureRecognizer);

      v34 = [v33 initWithTarget:v86 action:"tapGestureRecognized:"];
      [v34 requireGestureRecognizerToFail:v84];
      [v34 requireGestureRecognizerToFail:v83];
      [v34 requireGestureRecognizerToFail:v82];
      v35 = objc_allocWithZone(type metadata accessor for QuickReplyItemButton());

      v36 = sub_10005F418(v29, v30, v32);

      p_attr = v36;
      [(SEL *)p_attr setTag:v22];
      v87 = v34;
      [(SEL *)p_attr addGestureRecognizer:v34];
      [v20 addSubview:p_attr];
      v37 = objc_opt_self();
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000B04B0;
      v39 = [(SEL *)p_attr leftAnchor];
      v40 = [v20 leftAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];

      *(v38 + 32) = v41;
      v42 = [(SEL *)p_attr rightAnchor];
      v43 = [v20 rightAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v38 + 40) = v44;
      v21 = &stru_1000E5FF8.attr;
      v45 = [(SEL *)p_attr heightAnchor];
      v46 = [v45 constraintLessThanOrEqualToConstant:600.0 / *(v90 + 16)];

      *(v38 + 48) = v46;
      sub_10000F840();
      isa = sub_1000AC18C().super.isa;

      v91 = v37;
      [v37 activateConstraints:isa];

      if (v92)
      {
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1000B04C0;
        v11 = v92;
        v49 = [(SEL *)p_attr topAnchor];
        v50 = [v11 bottomAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];

        *(v48 + 32) = v51;
        v52.super.isa = sub_1000AC18C().super.isa;
        v21 = &stru_1000E5FF8.attr;

        [v91 activateConstraints:v52.super.isa];
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1000B04C0;
        v53 = [(SEL *)p_attr topAnchor];
        v54 = [v85 topAnchor];
        v55 = [v53 constraintEqualToAnchor:v54];

        v11[4] = v55;
        v52.super.isa = sub_1000AC18C().super.isa;

        [v91 activateConstraints:v52.super.isa];
      }

      if (v22 == v88)
      {
        v56 = [(SEL *)p_attr bottomAnchor];

        v20 = v85;
        v57 = [v85 bottomAnchor];
        if (qword_1000EEDB8 != -1)
        {
          swift_once();
        }

        v58 = [v56 constraintEqualToAnchor:v57 constant:-*&qword_1000FBEE8];

        v59 = *&v86[v80];
        *&v86[v80] = v58;
        v11 = v58;

        if (!v11)
        {
          v21 = (&stru_1000E5FF8 + 8);
          v15 = &stru_1000E5FF8 + 8;
          v26 = v92;
          v25 = v87;
          goto LABEL_6;
        }

        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1000B04C0;
        *(v60 + 32) = v11;
        v25 = v11;
        v61 = sub_1000AC18C().super.isa;

        v21 = &stru_1000E5FF8.attr;
        [v91 activateConstraints:v61];

        v27 = v61;
        v26 = v92;
      }

      else
      {
        v25 = p_attr;
        v20 = v85;
        v26 = v92;
        v27 = v87;
      }

      v15 = &stru_1000E5FF8 + 8;
LABEL_6:
      v22 = (v22 + 1);

      a1 = v90;
      v24 = v89 + 4;
      v23 = p_attr;
    }

    while (v81 != v22);
  }

  swift_bridgeObjectRelease_n();
  v62 = v15;
  v63 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1000B04D0;
  v65 = [v20 topAnchor];
  v66 = [v86 topAnchor];

  v67 = [v65 v62[293]];
  *(v64 + 32) = v67;
  v68 = [v20 leftAnchor];
  v69 = [v86 leftAnchor];

  v70 = [v68 v62[293]];
  *(v64 + 40) = v70;
  v71 = [v20 bottomAnchor];
  v72 = [v86 bottomAnchor];

  v73 = [v71 v62[293]];
  *(v64 + 48) = v73;
  v74 = [v20 rightAnchor];
  v75 = [v86 rightAnchor];

  v76 = [v74 v62[293]];
  *(v64 + 56) = v76;
  sub_10000F840();
  v77 = sub_1000AC18C().super.isa;

  [v63 v21[297]];

  return v86;
}

double sub_10000F494(double a1)
{
  [v1 systemLayoutSizeFittingSize:fmin(a1 withHorizontalFittingPriority:263.0) verticalFittingPriority:?];
  v3 = v2;
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000AF0F0;
  v5 = sub_1000AC36C();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_10000587C();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_1000AC36C();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_1000ABA5C();

  return v3;
}

id sub_10000F724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickReplyToMeBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F7EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_10000F840()
{
  result = qword_1000EF6A8;
  if (!qword_1000EF6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EF6A8);
  }

  return result;
}

uint64_t sub_10000F8B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000AB7EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v73 - v14;
  v16 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v73 - v19;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 16) = [objc_allocWithZone(EKEventStore) init];
  if (!*(a1 + 16) || (v21 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v22 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v21, v88), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
LABEL_15:
      sub_1000AC2AC();
      sub_1000ABA5C();

      v31 = *(v2 + 80);

      type metadata accessor for IMBProposedEvent();
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_62:
    swift_once();
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v82 = v87, v79 = v86, v23 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v24 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v23, v88), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

  v77 = v87;
  v78 = v86;
  v85 = v15;
  if (!a2)
  {
    goto LABEL_21;
  }

  if (*(a1 + 16))
  {
    v25 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL);
    if (v26)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v25, v88);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v84 = sub_10004F0CC(v86, v87);
          v28 = v27;

          if (v28)
          {
            v29 = *(*(a2 + 56) + 8 * v84);

            v30 = *(v3 + 88);
            *(v3 + 88) = v29;

            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_21:
  if (!*(a1 + 16))
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_33:
    v39 = 0;
    v38 = 1;
    goto LABEL_34;
  }

  v33 = sub_10004F0CC(0x746F6C73656D6974, 0xE900000000000073);
  if (v34 & 1) != 0 && (sub_1000068B4(*(a1 + 56) + 32 * v33, v88), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast()))
  {
    v35 = v86;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

  v36 = sub_10004F0CC(0x656E6F7A656D6974, 0xEE0074657366664FLL);
  if ((v37 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v36, v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v38 = v86 == 0;
  if (!v86)
  {
    v39 = 0;
    goto LABEL_34;
  }

  v39 = 60 * v86;
  if ((v86 * 60) >> 64 == (60 * v86) >> 63)
  {
    v38 = 0;
LABEL_34:
    v76 = v35;
    v84 = v6;
    *(v3 + 64) = v39;
    *(v3 + 72) = v38;
    v40 = [objc_opt_self() eventWithEventStore:*(v3 + 16)];
    v41 = sub_1000AC02C();
    [v40 setTitle:v41];

    if ((*(v3 + 72) & 1) != 0 || !*(v3 + 64))
    {
      sub_1000AB90C();
      v42 = sub_1000AB91C();
      (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
    }

    else
    {
      sub_1000AB8DC();
      v42 = sub_1000AB91C();
      isa = 0;
      if ((*(*(v42 - 8) + 48))(v20, 1, v42) == 1)
      {
        goto LABEL_40;
      }
    }

    isa = sub_1000AB8EC().super.isa;
    sub_1000AB91C();
    (*(*(v42 - 8) + 8))(v20, v42);
LABEL_40:
    [v40 setTimeZone:isa];

    if (*(a1 + 16) && (v44 = sub_10004F0CC(0x6E6F697461636F6CLL, 0xE800000000000000), (v45 & 1) != 0))
    {
      sub_1000068B4(*(a1 + 56) + 32 * v44, v88);

      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v46 = v86;
        sub_100012634();
        v47 = sub_10004DA74(v46);

        v48 = sub_100062A48(v47);
        [v40 setStructuredLocation:v48];
      }
    }

    else
    {
    }

    v49 = v76;
    v75 = v7;
    *(v3 + 56) = v40;
    v88[0] = _swiftEmptyArrayStorage;
    v74 = v40;
    sub_1000AB7DC();
    v50 = v49[2];
    if (v50)
    {
      v51 = v49 + 4;
      v52 = type metadata accessor for IMBProposedTimeslot();
      v53 = (v75 + 8);
      v81 = _swiftEmptyArrayStorage;
      v83 = xmmword_1000AF0E0;
      v80 = v12;
      do
      {
        v55 = *v51;
        v56 = *(v52 + 48);
        v57 = *(v52 + 52);
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        v58 = sub_10004CF0C(v55);
        if (v58)
        {
          v59 = v58;
          sub_1000AB7AC();
          v60 = *&v59[OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration];
          sub_1000AB79C();
          sub_1000AB7AC();
          v62 = v61;
          (*v53)(v12, v84);
          sub_1000AB7AC();
          if (v63 >= v62)
          {
            if (qword_1000EEE80 != -1)
            {
              swift_once();
            }

            sub_1000AC2AC();
            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v64 = swift_allocObject();
            *(v64 + 16) = v83;
            *(v64 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
            *(v64 + 64) = sub_100011970();
            *(v64 + 32) = v55;
            sub_1000ABA5C();

            v12 = v80;
          }

          else
          {

            sub_1000AC17C();
            if (*((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v65 = *((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1000AC1BC();
            }

            sub_1000AC1DC();

            v81 = v88[0];
          }
        }

        else
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          sub_1000AC2AC();
          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v54 = swift_allocObject();
          *(v54 + 16) = v83;
          *(v54 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
          *(v54 + 64) = sub_100011970();
          *(v54 + 32) = v55;
          sub_1000ABA5C();
        }

        ++v51;
        --v50;
      }

      while (v50);
    }

    else
    {
      v81 = _swiftEmptyArrayStorage;
    }

    v86 = sub_100087DD0(v66);
    sub_1000119D4(&v86, sub_1000A4D24, type metadata accessor for IMBProposedTimeslot, &OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime);

    v67 = v86;
    v68 = v82;
    *(v3 + 24) = v79;
    *(v3 + 32) = v68;
    v69 = v77;
    *(v3 + 40) = v78;
    *(v3 + 48) = v69;
    v70 = sub_100010490(v67);

    (*(v75 + 8))(v85, v84);
    v71 = *(v3 + 80);
    *(v3 + 80) = v70;

    return v3;
  }

  __break(1u);

  v72 = *(v3 + 80);

  type metadata accessor for IMBProposedEvent();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void *sub_100010490(unint64_t a1)
{
  v67 = sub_1000AB7EC();
  v3 = *(v67 - 8);
  v4 = v3[8];
  __chkstk_darwin(v67, v5);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v64 - v14;
  v16 = [objc_allocWithZone(NSDateFormatter) init];
  [v16 setDateStyle:1];
  v71 = v16;
  [v16 setTimeStyle:0];
  v17 = [*(v1 + 56) timeZone];
  if (v17)
  {
    v18 = v17;
    sub_1000AB8FC();

    v19 = sub_1000AB91C();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v19 = sub_1000AB91C();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  sub_1000126F0(v12, v15);
  sub_1000AB91C();
  v20 = *(v19 - 8);
  isa = 0;
  if ((*(v20 + 48))(v15, 1, v19) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v20 + 8))(v15, v19);
  }

  [v71 setTimeZone:isa];

  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_35:
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_36:
    v59 = v3[2];
    if (v59)
    {
      v60 = sub_1000A4D28(v3[2], 0);
      v61 = sub_1000A3DA0(&v72, (v60 + 32), v59, v3);

      sub_100012760();
      if (v61 != v59)
      {
        __break(1u);
      }
    }

    v72 = sub_100087DA4(v62);
    sub_1000119D4(&v72, sub_1000A4D24, type metadata accessor for IMBProposedDate, &OBJC_IVAR____TtC8Business15IMBProposedDate_date);

    return v72;
  }

LABEL_8:
  if (v22 >= 1)
  {
    v23 = 0;
    v70 = a1 & 0xC000000000000001;
    v64 = (v3 + 4);
    v65 = (v3 + 2);
    v3 = &_swiftEmptyDictionarySingleton;
    v68 = v22;
    v69 = a1;
    while (1)
    {
      if (v70)
      {
        v26 = sub_1000AC5AC();
      }

      else
      {
        v26 = *(a1 + 8 * v23 + 32);
      }

      v27 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
      v28 = sub_1000AB77C().super.isa;
      v29 = [v71 stringFromDate:{v28, v64}];

      v30 = sub_1000AC06C();
      v32 = v31;

      if (v3[2] && (v33 = sub_10004F0CC(v30, v32), (v34 & 1) != 0))
      {
        v35 = *(v3[7] + 8 * v33);

        v36 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
      }

      else
      {
        v37 = [objc_allocWithZone(NSUUID) init];
        v38 = [v37 UUIDString];

        v39 = sub_1000AC06C();
        a1 = v40;

        v41 = v26 + v27;
        v43 = v66;
        v42 = v67;
        (*v65)(v66, v41, v67);
        v44 = type metadata accessor for IMBProposedDate();
        v45 = *(v44 + 48);
        v46 = *(v44 + 52);
        v35 = swift_allocObject();
        *(v35 + OBJC_IVAR____TtC8Business15IMBProposedDate_expanded) = 0;
        *(v35 + 16) = v39;
        *(v35 + 24) = a1;
        (*v64)(v35 + OBJC_IVAR____TtC8Business15IMBProposedDate_date, v43, v42);
        v36 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
        *(v35 + OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots) = _swiftEmptyArrayStorage;
      }

      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v35 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v35 + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((*(v35 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
      swift_endAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v3;
      v49 = sub_10004F0CC(v30, v32);
      v50 = v3[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v22 = sub_1000AC65C();
        if (!v22)
        {
          goto LABEL_35;
        }

        goto LABEL_8;
      }

      a1 = v48;
      if (v3[3] >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v72;
          if (v48)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_10003AB54();
          v3 = v72;
          if (a1)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_100039124(v52, isUniquelyReferenced_nonNull_native);
        v53 = sub_10004F0CC(v30, v32);
        if ((a1 & 1) != (v54 & 1))
        {
          goto LABEL_41;
        }

        v49 = v53;
        v3 = v72;
        if (a1)
        {
LABEL_10:
          v24 = v3[7];
          v25 = *(v24 + 8 * v49);
          *(v24 + 8 * v49) = v35;

          goto LABEL_11;
        }
      }

      v3[(v49 >> 6) + 8] |= 1 << v49;
      v55 = (v3[6] + 16 * v49);
      *v55 = v30;
      v55[1] = v32;
      *(v3[7] + 8 * v49) = v35;
      v56 = v3[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_33;
      }

      v3[2] = v58;

LABEL_11:
      ++v23;

      a1 = v69;
      if (v68 == v23)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1000AC7EC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100010C78()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v124 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v8 = &v112 - v7;
  v132 = &_swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = *(v0 + 80);
  if (!isUniquelyReferenced_nonNull_native)
  {
    __break(1u);
LABEL_83:
    result = sub_1000AC7EC();
    __break(1u);
    return result;
  }

  v10 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v112 = v0;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_81;
  }

  v11 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v12 = &_swiftEmptyDictionarySingleton;
  if (!v11)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v116 = v11;
  v114 = v10;
  v10 = 0x6E6F697461727564;
  v117 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v113 = (isUniquelyReferenced_nonNull_native + 32);
  v120 = " date is in the past: %@";
  v115 = isUniquelyReferenced_nonNull_native;

  isUniquelyReferenced_nonNull_native = 0;
  v13 = &_swiftEmptyArrayStorage;
  do
  {
    if (v117)
    {
      v119 = sub_1000AC5AC();
      v14 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
      if (v14)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native >= *(v114 + 16))
      {
        goto LABEL_80;
      }

      v119 = v113[isUniquelyReferenced_nonNull_native];

      v14 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
      if (v14)
      {
        goto LABEL_78;
      }
    }

    v118 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    v15 = v119;
    swift_beginAccess();
    v16 = *(v15 + isUniquelyReferenced_nonNull_native);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v84 = *(v15 + isUniquelyReferenced_nonNull_native);
      }

      isUniquelyReferenced_nonNull_native = *(v15 + isUniquelyReferenced_nonNull_native);
      v85 = sub_1000AC65C();
      v16 = isUniquelyReferenced_nonNull_native;
      v17 = v85;
      if (!v85)
      {
        goto LABEL_61;
      }

LABEL_15:
      if (v17 < 1)
      {
        goto LABEL_79;
      }

      v123 = v16 & 0xC000000000000001;
      v18 = v16;

      v19 = v18;
      v20 = 0;
      v121 = v17;
      v122 = v18;
      while (1)
      {
        v126 = v20;
        if (v123)
        {
          v21 = sub_1000AC5AC();
        }

        else
        {
          v21 = *(v19 + 8 * v20 + 32);
        }

        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v131 = &type metadata for String;
        *&v130 = v22;
        *(&v130 + 1) = v23;
        sub_100006910(&v130, v129);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v12;
        v24 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
        v26 = v12[2];
        v27 = (v25 & 1) == 0;
        v14 = __OFADD__(v26, v27);
        v28 = v26 + v27;
        if (v14)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          v11 = sub_1000AC65C();
          goto LABEL_4;
        }

        v29 = v25;
        if (v12[3] < v28)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_25;
        }

        v32 = v24;
        sub_10003A9B0();
        v24 = v32;
        isUniquelyReferenced_nonNull_native = v128;
        if (v29)
        {
LABEL_26:
          v31 = (*(isUniquelyReferenced_nonNull_native + 56) + 32 * v24);
          sub_10000E738(v31);
          sub_100006910(v129, v31);
          goto LABEL_30;
        }

LABEL_28:
        *(isUniquelyReferenced_nonNull_native + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v33 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v24);
        *v33 = 0x696669746E656469;
        v33[1] = 0xEA00000000007265;
        sub_100006910(v129, (*(isUniquelyReferenced_nonNull_native + 56) + 32 * v24));
        v34 = *(isUniquelyReferenced_nonNull_native + 16);
        v14 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v14)
        {
          goto LABEL_75;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v35;
LABEL_30:
        v125 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
        sub_1000AB8CC();
        v36 = [objc_allocWithZone(NSDateFormatter) init];
        v37 = sub_1000AC02C();
        [v36 setDateFormat:v37];

        v38 = v124;
        sub_100012680(v8, v124);
        v39 = sub_1000AB91C();
        v40 = *(v39 - 8);
        v41 = (*(v40 + 48))(v38, 1, v39);
        isa = 0;
        v127 = v21;
        if (v41 != 1)
        {
          v43 = v10;
          v44 = v8;
          v45 = v12;
          v46 = v13;
          v47 = v124;
          isa = sub_1000AB8EC().super.isa;
          v48 = v47;
          v13 = v46;
          v12 = v45;
          v8 = v44;
          v10 = v43;
          (*(v40 + 8))(v48, v39);
        }

        [v36 setTimeZone:{isa, v112}];

        v49 = sub_1000AB77C().super.isa;
        v50 = [v36 stringFromDate:v49];

        v51 = sub_1000AC06C();
        v53 = v52;

        sub_10000E784(v8, &qword_1000EF7D0, &qword_1000B5060);
        v131 = &type metadata for String;
        *&v130 = v51;
        *(&v130 + 1) = v53;
        sub_100006910(&v130, v129);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v128 = isUniquelyReferenced_nonNull_native;
        v55 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065);
        v57 = *(isUniquelyReferenced_nonNull_native + 16);
        v58 = (v56 & 1) == 0;
        v14 = __OFADD__(v57, v58);
        v59 = v57 + v58;
        if (v14)
        {
          goto LABEL_73;
        }

        v60 = v56;
        if (*(isUniquelyReferenced_nonNull_native + 24) < v59)
        {
          sub_100038E6C(v59, v54);
          v55 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065);
          v62 = v127;
          if ((v60 & 1) != (v61 & 1))
          {
            goto LABEL_83;
          }

LABEL_37:
          v63 = v128;
          if (v60)
          {
            goto LABEL_38;
          }

          goto LABEL_40;
        }

        v62 = v127;
        if (v54)
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = v55;
        sub_10003A9B0();
        v55 = isUniquelyReferenced_nonNull_native;
        v63 = v128;
        if (v60)
        {
LABEL_38:
          isUniquelyReferenced_nonNull_native = v63[7] + 32 * v55;
          sub_10000E738(isUniquelyReferenced_nonNull_native);
          sub_100006910(v129, isUniquelyReferenced_nonNull_native);
          goto LABEL_42;
        }

LABEL_40:
        v63[(v55 >> 6) + 8] |= 1 << v55;
        v64 = (v63[6] + 16 * v55);
        *v64 = 0x6D69547472617473;
        v64[1] = 0xE900000000000065;
        sub_100006910(v129, (v63[7] + 32 * v55));
        v65 = v63[2];
        v14 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v14)
        {
          goto LABEL_76;
        }

        v63[2] = v66;
LABEL_42:
        v67 = *(v62 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration);
        v131 = &type metadata for Int;
        *&v130 = v67;
        sub_100006910(&v130, v129);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v63;
        v69 = sub_10004F0CC(v10, 0xE800000000000000);
        v71 = v63[2];
        v72 = (v70 & 1) == 0;
        v14 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        v74 = v126;
        if (v14)
        {
          goto LABEL_74;
        }

        isUniquelyReferenced_nonNull_native = v70;
        if (v63[3] >= v73)
        {
          if ((v68 & 1) == 0)
          {
            v83 = v69;
            sub_10003A9B0();
            v69 = v83;
          }
        }

        else
        {
          sub_100038E6C(v73, v68);
          v69 = sub_10004F0CC(v10, 0xE800000000000000);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v75 & 1))
          {
            goto LABEL_83;
          }
        }

        v76 = v128;
        if (isUniquelyReferenced_nonNull_native)
        {
          v77 = (v128[7] + 32 * v69);
          sub_10000E738(v77);
          sub_100006910(v129, v77);
        }

        else
        {
          v128[(v69 >> 6) + 8] |= 1 << v69;
          v78 = (v76[6] + 16 * v69);
          *v78 = v10;
          v78[1] = 0xE800000000000000;
          sub_100006910(v129, (v76[7] + 32 * v69));
          v79 = v76[2];
          v14 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v14)
          {
            goto LABEL_77;
          }

          v76[2] = v80;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1000387AC(0, v13[2] + 1, 1, v13);
        }

        v82 = v13[2];
        v81 = v13[3];
        if (v82 >= v81 >> 1)
        {
          v13 = sub_1000387AC((v81 > 1), v82 + 1, 1, v13);
        }

        v20 = v74 + 1;

        v13[2] = v82 + 1;
        v13[v82 + 4] = v76;
        v19 = v122;
        if (v121 == v20)
        {

          goto LABEL_6;
        }
      }

      sub_100038E6C(v28, isUniquelyReferenced_nonNull_native);
      v24 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_83;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_native = v128;
      if (v29)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_15;
    }

LABEL_61:

LABEL_6:
    isUniquelyReferenced_nonNull_native = v118;
  }

  while (v118 != v116);

  v12 = v132;
LABEL_64:
  v86 = v112;
  v87 = *(v112 + 40);
  v88 = *(v112 + 48);
  v131 = &type metadata for String;
  *&v130 = v87;
  *(&v130 + 1) = v88;
  sub_100006910(&v130, v129);

  v89 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v12;
  sub_10003A3E8(v129, 0x656C746974, 0xE500000000000000, v89);
  v90 = v128;
  v91 = *(v86 + 24);
  v92 = *(v86 + 32);
  v131 = &type metadata for String;
  *&v130 = v91;
  *(&v130 + 1) = v92;
  sub_100006910(&v130, v129);

  v93 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v90;
  sub_10003A3E8(v129, 0x696669746E656469, 0xEA00000000007265, v93);
  v94 = v128;
  v131 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  *&v130 = v13;
  sub_100006910(&v130, v129);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v94;
  sub_10003A3E8(v129, 0x746F6C73656D6974, 0xE900000000000073, v95);
  v96 = v128;
  v132 = v128;
  v97 = [*(v86 + 56) structuredLocation];
  if (v97)
  {
    v98 = v97;
    v99 = sub_100062EC8();

    v131 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    *&v130 = v99;
    sub_100006910(&v130, v129);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v96;
    sub_10003A3E8(v129, 0x6E6F697461636F6CLL, 0xE800000000000000, v100);
    v132 = v128;
    v101 = *(v86 + 88);
    if (v101)
    {
      goto LABEL_66;
    }

LABEL_68:
    sub_100039E5C(0x6564496567616D69, 0xEF7265696669746ELL, &v130);
    sub_10000E784(&v130, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    sub_100039E5C(0x6E6F697461636F6CLL, 0xE800000000000000, &v130);
    sub_10000E784(&v130, &unk_1000F1DF0, &qword_1000B18F0);
    v101 = *(v86 + 88);
    if (!v101)
    {
      goto LABEL_68;
    }

LABEL_66:
    v102 = [v101 identifier];
    v103 = sub_1000AC06C();
    v105 = v104;

    v131 = &type metadata for String;
    *&v130 = v103;
    *(&v130 + 1) = v105;
    sub_100006910(&v130, v129);
    v106 = v132;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v106;
    sub_10003A3E8(v129, 0x6564496567616D69, 0xEF7265696669746ELL, v107);
    v132 = v128;
  }

  if (*(v86 + 72) == 1)
  {
    return v132;
  }

  v109 = *(v86 + 64) / 60;
  v131 = &type metadata for Int;
  *&v130 = v109;
  sub_100006910(&v130, v129);
  v110 = v132;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v110;
  sub_10003A3E8(v129, 0x656E6F7A656D6974, 0xEE0074657366664FLL, v111);
  return v128;
}

uint64_t sub_1000118EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

unint64_t sub_100011970()
{
  result = qword_1000EF7D8;
  if (!qword_1000EF7D8)
  {
    sub_1000041E8(&qword_1000F1DD0, &unk_1000B07A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF7D8);
  }

  return result;
}

uint64_t sub_1000119D4(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_100011A70(v12, a3, a4);
  return sub_1000AC5FC();
}

Swift::Int sub_100011A70(uint64_t *a1, void (*a2)(void), uint64_t *a3)
{
  v6 = a1[1];
  result = sub_1000AC77C(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v10 = sub_1000AC1CC();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      sub_100011C98(v12, v13, a1, v8, a3);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_100011B90(0, v6, 1, a1, a3);
  }

  return result;
}

uint64_t sub_100011B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v11 = v9;
    v22 = v8;
    while (1)
    {
      v12 = *v8;
      v13 = *a5;

      sub_1000AB7AC();
      v15 = v14;
      v16 = v12 + *a5;
      sub_1000AB7AC();
      v18 = v17;

      if (v15 >= v18)
      {
LABEL_4:
        ++v6;
        v8 = v22 + 1;
        --v9;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v19 = *v8;
      *v8 = v8[1];
      v8[1] = v19;
      --v8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v8 = a3;
  v113 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v116 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *v113;
    if (!*v113)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000A2CCC(v116);
      v116 = result;
    }

    v103 = *(v116 + 2);
    if (v103 >= 2)
    {
      while (1)
      {
        v104 = *v8;
        if (!*v8)
        {
          goto LABEL_124;
        }

        v8 = (v103 - 1);
        v105 = *&v116[16 * v103];
        v106 = *&v116[16 * v103 + 24];
        sub_100012340((v104 + 8 * v105), (v104 + 8 * *&v116[16 * v103 + 16]), (v104 + 8 * v106), v9, a5);
        if (v7)
        {
        }

        if (v106 < v105)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1000A2CCC(v116);
        }

        if (v103 - 2 >= *(v116 + 2))
        {
          goto LABEL_114;
        }

        v107 = &v116[16 * v103];
        *v107 = v105;
        *(v107 + 1) = v106;
        result = sub_1000A2C40(v103 - 1);
        v103 = *(v116 + 2);
        v8 = a3;
        if (v103 <= 1)
        {
        }
      }
    }
  }

  v10 = 0;
  v116 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v10;
    v12 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v109 = v7;
      v13 = *v8;
      v14 = *(*v8 + 8 * v12);
      v8 = (8 * v10);
      v15 = (v13 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = *a5;

      sub_1000AB7AC();
      v20 = v19;
      v21 = v17 + *a5;
      sub_1000AB7AC();
      v23 = v22;

      v111 = v11;
      v24 = v11 + 2;
      while (v9 != v24)
      {
        v7 = v20 < v23;
        v26 = *(v16 - 1);
        v25 = *v16;
        v27 = *a5;

        sub_1000AB7AC();
        v29 = v28;
        v30 = v26 + *a5;
        sub_1000AB7AC();
        v32 = v31;

        ++v24;
        ++v16;
        if (v20 < v23 == v29 >= v32)
        {
          v9 = v24 - 1;
          break;
        }
      }

      v11 = v111;
      if (v20 < v23)
      {
        if (v9 < v111)
        {
          goto LABEL_117;
        }

        if (v111 < v9)
        {
          v33 = 8 * v9 - 8;
          v34 = v9;
          v35 = v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v36 = *(v8 + v37);
              *(v8 + v37) = *(v37 + v33);
              *(v37 + v33) = v36;
            }

            ++v35;
            v33 -= 8;
            ++v8;
          }

          while (v35 < v34);
        }
      }

      v12 = v9;
      v7 = v109;
      v8 = a3;
    }

    v38 = v8[1];
    v9 = v116;
    if (v12 < v38)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_116;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_118;
        }

        if (v11 + a4 >= v38)
        {
          v39 = v8[1];
        }

        else
        {
          v39 = v11 + a4;
        }

        if (v39 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v12 != v39)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v57 = *(v9 + 16);
    v56 = *(v9 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_1000386A8((v56 > 1), v57 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v58;
    v59 = v9 + 16 * v57;
    *(v59 + 32) = v11;
    *(v59 + 40) = v12;
    v60 = *v113;
    if (!*v113)
    {
      goto LABEL_125;
    }

    v118 = v12;
    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v9 + 32);
          v63 = *(v9 + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_57:
          if (v65)
          {
            goto LABEL_104;
          }

          v78 = (v9 + 16 * v58);
          v80 = *v78;
          v79 = v78[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_107;
          }

          v84 = (v9 + 32 + 16 * v61);
          v86 = *v84;
          v85 = v84[1];
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_111;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v88 = (v9 + 16 * v58);
        v90 = *v88;
        v89 = v88[1];
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_71:
        if (v83)
        {
          goto LABEL_106;
        }

        v91 = v9 + 16 * v61;
        v93 = *(v91 + 32);
        v92 = *(v91 + 40);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_109;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_78:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
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
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v8)
        {
          goto LABEL_122;
        }

        v100 = *(v9 + 32 + 16 * v99);
        v101 = *(v9 + 32 + 16 * v61 + 8);
        sub_100012340((*v8 + 8 * v100), (*v8 + 8 * *(v9 + 32 + 16 * v61)), (*v8 + 8 * v101), v60, a5);
        if (v7)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000A2CCC(v9);
        }

        if (v99 >= *(v9 + 16))
        {
          goto LABEL_101;
        }

        v102 = v9 + 16 * v99;
        *(v102 + 32) = v100;
        *(v102 + 40) = v101;
        result = sub_1000A2C40(v61);
        v58 = *(v9 + 16);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = v9 + 32 + 16 * v58;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_102;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_103;
      }

      v73 = (v9 + 16 * v58);
      v75 = *v73;
      v74 = v73[1];
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_105;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_108;
      }

      if (v77 >= v69)
      {
        v95 = (v9 + 32 + 16 * v61);
        v97 = *v95;
        v96 = v95[1];
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_112;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v116 = v9;
    v9 = v8[1];
    v10 = v118;
    if (v118 >= v9)
    {
      goto LABEL_88;
    }
  }

  v110 = v7;
  v40 = v11;
  v41 = *v8;
  v42 = *v8 + 8 * v12 - 8;
  v112 = v40;
  v43 = v40 - v12;
  v114 = v39;
LABEL_30:
  v117 = v12;
  v44 = *(v41 + 8 * v12);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = *v46;
    v48 = *a5;

    sub_1000AB7AC();
    v50 = v49;
    v51 = v47 + *a5;
    sub_1000AB7AC();
    v53 = v52;

    if (v50 >= v53)
    {
LABEL_29:
      v12 = v117 + 1;
      v42 += 8;
      --v43;
      if (v117 + 1 != v114)
      {
        goto LABEL_30;
      }

      v12 = v114;
      v7 = v110;
      v11 = v112;
      v8 = a3;
      v9 = v116;
      goto LABEL_37;
    }

    if (!v41)
    {
      break;
    }

    v54 = *v46;
    *v46 = v46[1];
    v46[1] = v54;
    --v46;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100012340(char *__dst, char *__src, char *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v28 = __src;
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v15 = &v5[8 * v13];
    if (v11 >= 8 && v28 > v7)
    {
LABEL_26:
      v41 = v28;
      v29 = v28 - 8;
      v6 -= 8;
      v30 = v15;
      v42 = v29;
      do
      {
        v31 = v6 + 8;
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = *v29;
        v34 = *a5;

        sub_1000AB7AC();
        v36 = v35;
        v37 = v33 + *a5;
        sub_1000AB7AC();
        v39 = v38;

        if (v36 < v39)
        {
          if (v31 != v41)
          {
            *v6 = *v42;
          }

          if (v15 <= v5 || (v28 = v42, v42 <= v7))
          {
            v28 = v42;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v31 != v15)
        {
          *v6 = *v30;
        }

        v6 -= 8;
        v15 = v30;
        v29 = v42;
      }

      while (v30 > v5);
      v15 = v30;
      v28 = v41;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 >= 8 && __src < v6)
    {
      v16 = __src;
      while (1)
      {
        v17 = v6;
        v18 = *v16;
        v19 = *v5;
        v20 = *a5;

        sub_1000AB7AC();
        v22 = v21;
        v23 = v19 + *a5;
        sub_1000AB7AC();
        v25 = v24;

        if (v22 >= v25)
        {
          break;
        }

        v26 = v16;
        v27 = v7 == v16;
        v16 += 8;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v5 < v15)
        {
          v6 = v17;
          if (v16 < v17)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v26 = v5;
      v27 = v7 == v5;
      v5 += 8;
      if (v27)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v26;
      goto LABEL_18;
    }

LABEL_20:
    v28 = v7;
  }

LABEL_37:
  if (v28 != v5 || v28 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v28, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

unint64_t sub_100012634()
{
  result = qword_1000EF7E0[0];
  if (!qword_1000EF7E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1000EF7E0);
  }

  return result;
}

uint64_t sub_100012680(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000126F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100012770(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_100012AD0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000127E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100012900(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_100012AD0()
{
  result = qword_1000EF868;
  if (!qword_1000EF868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000EF868);
  }

  return result;
}

id sub_100012B64()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
    sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    *(v7 + 32) = UIFontWeightTrait;
    *(v7 + 40) = UIFontWeightSemibold;
    v8 = UIFontDescriptorTraitsAttribute;
    v9 = UIFontWeightTrait;
    v10 = sub_10004FA58(v7);
    swift_setDeallocating();
    sub_10000E784(v7 + 32, &qword_1000EF8C0, &qword_1000B0608);
    *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
    *(inited + 40) = v10;
    sub_10004FB48(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
    type metadata accessor for AttributeName(0);
    sub_100013968();
    isa = sub_1000ABFAC().super.isa;

    v12 = [v5 fontDescriptorByAddingAttributes:isa];

    v13 = [objc_opt_self() fontWithDescriptor:v12 size:15.0];
    v14 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
    v15 = [v14 scaledFontForFont:v13];

    [v4 setFont:v15];
    v16 = [objc_opt_self() labelColor];
    [v4 setTextColor:v16];

    [v4 setNumberOfLines:0];
    v17 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_100012E84()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:11.0];
    v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v8 = [v7 scaledFontForFont:v6];

    [v4 setFont:v8];
    v9 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:v9];

    [v4 setNumberOfLines:0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10001301C()
{
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MacTableHeaderView();
  v1 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = qword_1000EEDC0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_1000FBEF0];
  v4 = sub_100012B64();
  [v3 addSubview:v4];

  v5 = sub_100012E84();
  [v3 addSubview:v5];

  v6 = sub_10001380C();
  [v3 addSubview:v6];

  sub_1000131EC();
  return v3;
}

void sub_1000131EC()
{
  v1 = sub_100012B64();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel;
  v3 = [*&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:22.0];

  [v5 setActive:1];
  v6 = [*&v0[v2] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:16.0];

  [v8 setActive:1];
  v9 = [*&v0[v2] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-16.0];

  [v11 setActive:1];
  v12 = sub_100012E84();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel] topAnchor];
  v15 = [*&v0[v2] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:2.0];

  [v16 setActive:1];
  v17 = [*&v0[v13] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  [v19 setActive:1];
  v20 = [*&v0[v13] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];

  [v22 setActive:1];
  v23 = sub_10001380C();
  v24 = [v23 topAnchor];

  v25 = [*&v0[v13] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:12.0];

  [v26 setActive:1];
  v27 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView;
  v28 = *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
  v29 = v0;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [*&v0[v27] heightAnchor];
  v31 = [v29 traitCollection];
  [v31 displayScale];
  v33 = v32;

  if (v33 <= 0.0)
  {
    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
    v33 = v35;

    if (v33 <= 0.0)
    {
      v33 = 1.0;
    }
  }

  v36 = [v30 constraintEqualToConstant:1.0 / v33];

  [v36 setActive:1];
  v37 = [*&v0[v27] bottomAnchor];
  v38 = [v29 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:0.0];

  [v39 setActive:1];
  v40 = [*&v0[v27] leadingAnchor];
  v41 = [v29 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];

  [v42 setActive:1];
  v43 = [*&v0[v27] trailingAnchor];
  v44 = [v29 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-16.0];

  [v45 setActive:1];
}

id sub_10001380C()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000138B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacTableHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100013968()
{
  result = qword_1000EF1A0;
  if (!qword_1000EF1A0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF1A0);
  }

  return result;
}

Swift::Int sub_1000139D8()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

Swift::Int sub_100013A4C()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

id sub_100013AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView;
  *&v3[v8] = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView;
  *&v3[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView;
  *&v3[v12] = [objc_allocWithZone(UIImageView) init];
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon] = 0;
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled] = 1;
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 1;
  v13 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor;
  sub_100005A24(0, &qword_1000EF998, UIColor_ptr);
  *&v3[v13] = sub_1000AC39C(0.78039, 0.78039, 0.8, 1.0);
  v14 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor;
  *&v3[v14] = sub_1000AC39C(0.086275, 0.50196, 0.98431, 1.0);
  v15 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString];
  *v15 = 0xD000000000000027;
  *(v15 + 1) = 0x80000001000B67A0;
  v16 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString];
  *v16 = 0xD000000000000023;
  *(v16 + 1) = 0x80000001000B67D0;
  v17 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName];
  *v17 = 0x72616D6B63656863;
  *(v17 + 1) = 0xE90000000000006BLL;
  *&v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem] = 0;
  *&v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v18 = sub_1000AC02C();
  }

  else
  {
    v18 = 0;
  }

  v23.receiver = v4;
  v23.super_class = type metadata accessor for ListPickerTableViewCell();
  v19 = objc_msgSendSuper2(&v23, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = UIAccessibilityTraitButton;
  v21 = v19;
  [v21 setAccessibilityTraits:v20];
  sub_100013DF4();
  sub_1000141DC();

  return v21;
}

void sub_100013DF4()
{
  if (sub_10002CE60() == 2)
  {
    v1 = [objc_opt_self() systemBackgroundColor];
    [v0 setBackgroundColor:v1];
  }

  v2 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  v5 = &UIFontTextStyleHeadline;
  if ((v3 & 0xFE) != 0)
  {
    v5 = &UIFontTextStyleTitle2;
  }

  v6 = [v4 preferredFontForTextStyle:*v5];
  [v2 setFont:v6];

  v7 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel];
  v8 = sub_10002CE60();
  v9 = objc_opt_self();
  v10 = &UIFontTextStyleSubheadline;
  if ((v8 & 0xFE) != 0)
  {
    v10 = &UIFontTextStyleTitle3;
  }

  v11 = [v9 preferredFontForTextStyle:*v10];
  [v7 setFont:v11];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v2 setTextColor:v13];

  v14 = [v12 secondaryLabelColor];
  [v7 setTextColor:v14];

  [v2 setNumberOfLines:0];
  [v7 setNumberOfLines:0];
  v15 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
  v16 = [v15 layer];
  [v16 setCornerRadius:4.0];

  [v15 setContentMode:2];
  v17 = [v15 layer];
  [v17 setMasksToBounds:1];

  v18 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  [v18 setContentMode:4];
  v19 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView];
  [v19 setAxis:1];
  [v19 setAlignment:1];
  [v19 setDistribution:0];
  [v19 addArrangedSubview:v2];
  [v19 addArrangedSubview:v7];
  v20 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView];
  [v20 setAxis:0];
  [v20 setAlignment:3];
  [v20 setDistribution:0];
  [v20 setSpacing:15.0];
  [v20 addArrangedSubview:v15];
  [v20 addArrangedSubview:v19];
  [v20 addArrangedSubview:v18];
  v21 = [v0 contentView];
  [v21 addSubview:v20];

  v22 = [v0 contentView];
  v23 = sub_100015000();
  [v22 addSubview:v23];
}

void sub_1000141DC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:20.0];
  [v5 setActive:1];

  v6 = [v1 bottomAnchor];
  v7 = [v0 contentView];
  v8 = [v7 bottomAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:-20.0];
  [v9 setActive:1];

  v10 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant:60.0];

  [v12 setActive:1];
  v13 = [v10 widthAnchor];
  v14 = [v10 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  v16 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:28.0];

  [v18 setActive:1];
  v19 = [v16 widthAnchor];
  v20 = [v16 heightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  LODWORD(v21) = sub_10002CE60();
  v22 = [v1 leftAnchor];
  v23 = [v0 contentView];
  v24 = v23;
  if (v21 == 2)
  {
    v25 = [v23 leftAnchor];

    v26 = sub_10002CE60();
    v27 = 16.0;
    if ((v26 & 0xFE) == 0)
    {
      v27 = 20.0;
    }

    v28 = [v22 constraintEqualToAnchor:v25 constant:v27];

    [v28 setActive:1];
    v29 = [v1 rightAnchor];
    v30 = [v0 contentView];
    v31 = [v30 rightAnchor];

    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v32 = -16.0;
    }

    else
    {
      v32 = -20.0;
    }

    v33 = [v29 constraintEqualToAnchor:v31 constant:v32];

    [v33 setActive:1];
    v66 = [v0 contentView];
    v34 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView];
    v35 = sub_10002CE60();
    v36 = [v0 contentView];
    v37 = sub_100015000();
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

    v38 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView;
    v39 = [*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView] heightAnchor];
    v40 = [v0 traitCollection];
    [v40 displayScale];
    v42 = v41;

    if (v42 <= 0.0)
    {
      v43 = [objc_opt_self() mainScreen];
      [v43 scale];
      v42 = v44;

      if (v42 <= 0.0)
      {
        v42 = 1.0;
      }
    }

    v45 = [v39 constraintEqualToConstant:1.0 / v42];

    [v45 setActive:1];
    v46 = [*&v0[v38] bottomAnchor];
    v47 = [v66 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];

    [v48 setActive:1];
    v49 = [*&v0[v38] leadingAnchor];
    v50 = [v34 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:0.0];

    [v51 setActive:1];
    v52 = [*&v0[v38] trailingAnchor];
    v53 = [v36 trailingAnchor];
    v54 = -20.0;
    if ((v35 & 0xFE) != 0)
    {
      v54 = -16.0;
    }

    v55 = [v52 constraintEqualToAnchor:v53 constant:v54];

    [v55 setActive:1];
  }

  else
  {
    v56 = [v23 layoutMarginsGuide];

    v57 = [v56 leftAnchor];
    v58 = sub_10002CE60();
    v59 = 15.0;
    if ((v58 & 0xFE) == 0)
    {
      v59 = 0.0;
    }

    v60 = [v22 constraintEqualToAnchor:v57 constant:v59];

    [v60 setActive:1];
    v61 = [v1 rightAnchor];
    v62 = [v0 contentView];
    v63 = [v62 layoutMarginsGuide];

    v64 = [v63 rightAnchor];
    v65 = [v61 constraintEqualToAnchor:v64];

    [v65 setActive:1];
    v66 = [v0 contentView];
    sub_100090114(1, v66);
  }
}

void sub_100014A48()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel];
    v4 = v2[5];
    v5 = v2[6];

    v6 = sub_1000AC02C();

    [v3 setText:v6];

    if (v2[8])
    {
      v7 = v2[7];
      v8 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel];
      v9 = v2[8];

      v10 = sub_1000AC02C();

      [v8 setText:v10];

      [v8 setHidden:0];
    }

    else
    {
      v8 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel];
      [v8 setHidden:1];
    }

    v11 = sub_1000600B0();
    v12 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
    if (v11)
    {
      v13 = v11;
      [*&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView] setImage:v11];
      [v12 setHidden:0];
      v14 = v2[11];
      if (!v14 || (v15 = [v14 imageDescription]) == 0)
      {
        v15 = 0;
      }

      [v12 setAccessibilityLabel:v15];

      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000B0620;
      v17 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
      *(v16 + 32) = v3;
      *(v16 + 88) = v17;
      *(v16 + 56) = v17;
      *(v16 + 64) = v8;
      *(v16 + 120) = sub_100005A24(0, &qword_1000EF990, UIImageView_ptr);
      *(v16 + 96) = v12;
      v18 = v3;
      v19 = v8;
      v20 = v12;
      v21.super.isa = sub_1000AC18C().super.isa;

      [v1 setAccessibilityElements:v21.super.isa];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView] setHidden:1];
      [v12 setAccessibilityLabel:0];
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000AF0F0;
      v23 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
      *(v22 + 32) = v3;
      *(v22 + 88) = v23;
      *(v22 + 56) = v23;
      *(v22 + 64) = v8;
      v24 = v3;
      v25 = v8;
      v21.super.isa = sub_1000AC18C().super.isa;

      [v1 setAccessibilityElements:v21.super.isa];
    }
  }
}

void sub_100014D78()
{
  [v0 setSelected:{objc_msgSend(v0, "isSelected") ^ 1}];
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon;
  v2 = v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled];
  v3 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon])
  {
    if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled])
    {
      v4 = objc_opt_self();
      v5 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString];
      v6 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString + 8];
      v7 = sub_1000AC02C();
      v8 = [v4 kitImageNamed:v7];

      if (v8)
      {
        [v8 size];
        v9 = [v4 _tintedImageForSize:*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor] withTint:0 effectsImage:v8 maskImage:0 style:?];
      }

      else
      {
        v9 = 0;
      }

      [v3 setImage:v9];
    }

    else
    {
      [*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setImage:0];
    }

    v20 = 0;
  }

  else
  {
    if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled])
    {
      v10 = objc_opt_self();
      v11 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString];
      v12 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString + 8];
      v13 = sub_1000AC02C();
      v14 = [v10 kitImageNamed:v13];

      if (v14)
      {
        [v14 size];
        v15 = [v10 _tintedImageForSize:*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor] withTint:0 effectsImage:v14 maskImage:0 style:?];
      }

      else
      {
        v15 = 0;
      }

      [v3 setImage:v15];
    }

    else
    {
      v16 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName];
      v17 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName + 8];
      v18 = sub_1000AC02C();
      v19 = [objc_opt_self() systemImageNamed:v18];

      [v3 setImage:v19];
    }

    v20 = 1;
  }

  v0[v1] = v20;
}

id sub_100015000()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100015078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListPickerTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for IMBBubbleType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IMBBubbleType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001534C()
{
  result = qword_1000EF980;
  if (!qword_1000EF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF980);
  }

  return result;
}

void sub_1000153A0()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView;
  *(v0 + v6) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator) = 1;
  v7 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor;
  sub_100005A24(0, &qword_1000EF998, UIColor_ptr);
  *(v0 + v7) = sub_1000AC39C(0.78039, 0.78039, 0.8, 1.0);
  v8 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor;
  *(v0 + v8) = sub_1000AC39C(0.086275, 0.50196, 0.98431, 1.0);
  v9 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString);
  *v9 = 0xD000000000000027;
  v9[1] = 0x80000001000B67A0;
  v10 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString);
  *v10 = 0xD000000000000023;
  v10[1] = 0x80000001000B67D0;
  v11 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName);
  *v11 = 0x72616D6B63656863;
  v11[1] = 0xE90000000000006BLL;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView) = 0;
  sub_1000AC63C();
  __break(1u);
}

void sub_1000155F4(uint64_t a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_1000AC60C();
  v4 = [v3 constraintWithItem:v1 attribute:3 relatedBy:0 toItem:a1 attribute:3 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  v5 = _swiftEmptyArrayStorage[2];
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v6 = [v3 constraintWithItem:v1 attribute:4 relatedBy:0 toItem:a1 attribute:4 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  v7 = _swiftEmptyArrayStorage[2];
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v8 = [v3 constraintWithItem:v1 attribute:5 relatedBy:0 toItem:a1 attribute:5 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  v9 = _swiftEmptyArrayStorage[2];
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v10 = [v3 constraintWithItem:v1 attribute:6 relatedBy:0 toItem:a1 attribute:6 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  v11 = _swiftEmptyArrayStorage[2];
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v3 activateConstraints:isa];
}

void sub_1000158C4(Swift::Float a1, Swift::Float a2, Swift::Float a3, uint64_t a4, void *a5)
{
  sub_100015C6C();
  isa = sub_1000AC39C(a1, a2, a3, 1.0).super.isa;
  v10 = [(objc_class *)isa CGColor];

  *a5 = v10;
}

void sub_10001594C(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for IMBAuthenticationTapIndicator();
  v9 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  [v9 _setContinuousCornerRadius:8.0];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits:2];

  if (v14)
  {
    v15 = [v11 fontWithDescriptor:v14 size:0.0];

    [v9 setFont:v15];
    [v9 setTextAlignment:1];
    v16 = [objc_opt_self() whiteColor];
    [v9 setTextColor:v16];

    v17 = [v9 layer];
    if (qword_1000EED80 != -1)
    {
      swift_once();
    }

    [v17 setBackgroundColor:qword_1000FBE88];
  }

  else
  {
    __break(1u);
  }
}

id sub_100015C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationTapIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100015C6C()
{
  result = qword_1000EF998;
  if (!qword_1000EF998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EF998);
  }

  return result;
}

uint64_t sub_100015CBC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for BubbleView();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100015D5C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1000161D8();
}

void sub_100015DC8()
{
  v1 = v0;
  type metadata accessor for BubbleHostingView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  v3 = [v2 view];
  v4 = v14;
  v5 = v3;
  v6 = OBJC_IVAR____TtC8Business17BubbleHostingView_subview;
  v7 = *&v14[OBJC_IVAR____TtC8Business17BubbleHostingView_subview];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v7 constraints];
  sub_10000F840();
  sub_1000AC19C();

  v9 = objc_opt_self();
  isa = sub_1000AC18C().super.isa;

  [v9 deactivateConstraints:isa];

  v4 = v14;
  v11 = *&v14[v6];
  if (v11)
  {
    [v11 removeFromSuperview];
    v4 = v14;
    v12 = *&v14[v6];
  }

  else
  {
LABEL_4:
    v12 = 0;
  }

  *&v4[v6] = v5;
  v13 = v5;

  if (v13)
  {
    [v14 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_1000155F4(v14);
  }

  [v1 setView:v14];
  [v1 addChildViewController:v2];
  [v2 didMoveToParentViewController:v1];
}

void sub_100015FBC(void *a1)
{
  v1 = a1;
  sub_100015DC8();
}

void sub_100016004(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = a4;

  sub_100016234();
}

id sub_100016074()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BubbleHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000160E4(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x60);
  v3 = *((swift_isaMask & *a1) + 0x50);
  v4 = *((swift_isaMask & *a1) + 0x58);
  v5 = type metadata accessor for BubbleView();
  (*(*(v5 - 8) + 8))(&a1[v2], v5);
  v6 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

id sub_1000163BC(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8Business19PluginBubbleContext_appController;
  *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_appController] = a1;
  v6 = OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation;
  *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation] = a2;
  v7 = a1;
  v8 = a2;
  v9 = [v8 selectedMessage];
  if (v9 && (v10 = v9, type metadata accessor for IMBMessage(), (v11 = sub_1000866E4(v10)) != 0))
  {
    *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage] = v11;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for PluginBubbleContext();
    v12 = objc_msgSendSuper2(&v14, "init");

    return v12;
  }

  else
  {

    type metadata accessor for PluginBubbleContext();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_1000164C4(void *a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v6 = sub_1000AC02C();
  [v5 setCaption:v6];

  v7 = *(v2 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);
  v8 = [v7 selectedMessage];
  v9 = [v8 session];

  if (!v9)
  {
    v9 = [objc_allocWithZone(MSSession) init];
  }

  v10 = [objc_allocWithZone(MSMessage) initWithSession:v9];

  v11 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v5];
  [v10 setLayout:v11];

  v12 = sub_1000AC02C();
  [v10 setSummaryText:v12];

  v13 = *(v2 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  v14 = type metadata accessor for _PluginBubbleContextDictionaryWrapper();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8Business37_PluginBubbleContextDictionaryWrapper_dictionaryValue] = a2;
  v21.receiver = v15;
  v21.super_class = v14;
  v16 = v13;
  v17 = v10;
  v18 = v7;

  v19 = objc_msgSendSuper2(&v21, "init");
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = 0;
  v26 = a1;
  v27 = v19;
  v20 = a1;
  sub_100036FA8(1);
}

uint64_t sub_1000166D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100016774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001682C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*v8 + OBJC_IVAR____TtC8Business19PluginBubbleContext_appController);
  isa = sub_1000AC18C().super.isa;
  v17 = sub_1000AC18C().super.isa;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;
  v20[4] = sub_1000169C4;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000166D8;
  v20[3] = &unk_1000DAEF0;
  v19 = _Block_copy(v20);

  [v15 _presentContextMenuWithButtonTitles:isa imageNames:v17 buttonFrame:v19 completion:{a1, a2, a3, a4}];
  _Block_release(v19);
}

uint64_t sub_10001698C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000169C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000169EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016A28()
{
  result = sub_1000AC06C();
  qword_1000FBE98 = result;
  unk_1000FBEA0 = v1;
  return result;
}

void sub_100016A58(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 messageData];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  v12 = [v10 jsonDictionary];

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = sub_1000ABFBC();

  if (qword_1000EED90 == -1)
  {
    if (!*(v13 + 16))
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    swift_once();
    if (!*(v13 + 16))
    {
      goto LABEL_23;
    }
  }

  v14 = sub_10004F0CC(qword_1000FBE98, unk_1000FBEA0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000068B4(*(v13 + 56) + 32 * v14, &v51);

  v16 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    sub_1000170E0();
    swift_allocError();
    v24 = 1;
    goto LABEL_25;
  }

  v17 = v49;
  if (!*(v49 + 16) || (v18 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v19 & 1) == 0) || (sub_1000068B4(*(v17 + 56) + 32 * v18, &v51), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000170E0();
    swift_allocError();
    v24 = 2;
LABEL_25:
    *v23 = v24;
    swift_willThrow();
    goto LABEL_26;
  }

  v20 = *(&v49 + 1);
  a2[6] = v49;
  a2[7] = v20;
  if (!*(v17 + 16) || (v62 = v20, v21 = sub_10004F0CC(0xD000000000000017, 0x80000001000B6A80), (v22 & 1) == 0) || (sub_1000068B4(*(v17 + 56) + 32 * v21, &v51), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000170E0();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();

LABEL_26:

    return;
  }

  *(&v50 + 1) = v16;
  sub_100017134();
  sub_100017188();
  sub_1000ABA3C();
  if (v2)
  {

    sub_10000E738(&v49);

    return;
  }

  sub_10000E738(&v49);
  v61[6] = v57;
  v61[7] = v58;
  v61[8] = v59;
  v61[9] = v60;
  v61[2] = v53;
  v61[3] = v54;
  v61[4] = v55;
  v61[5] = v56;
  v61[0] = v51;
  v61[1] = v52;
  sub_1000518E0(v9);
  sub_1000171DC(v61);
  v26 = type metadata accessor for BIAPayload();
  sub_10001727C(v9, a2 + *(v26 + 36));
  v27 = *(v17 + 16);
  if (v27)
  {
    v28 = sub_10004F0CC(0x636E657265666572, 0xEB00000000644965);
    if (v29)
    {
      sub_1000068B4(*(v17 + 56) + 32 * v28, &v51);
      sub_100017348(&v51, &v49);
      if (*(&v50 + 1))
      {
        if (swift_dynamicCast())
        {
          v27 = v47;
          v30 = v48;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000172E0(&v49);
      }

      sub_1000170E0();
      swift_allocError();
      *v46 = 4;
      swift_willThrow();

      sub_1000172E0(&v51);

      sub_1000173B8(a2 + *(v26 + 36));
      return;
    }

    v27 = 0;
  }

  v30 = 0;
  v51 = 0u;
  v52 = 0u;
LABEL_29:
  *a2 = v27;
  a2[1] = v30;
  v31 = *(v17 + 16);
  if (!v31)
  {
LABEL_34:
    v35 = 0;
    goto LABEL_35;
  }

  v32 = sub_10004F0CC(0x656C746974627573, 0xE800000000000000);
  if ((v33 & 1) == 0)
  {
    v31 = 0;
    goto LABEL_34;
  }

  sub_1000068B4(*(v17 + 56) + 32 * v32, &v49);
  v34 = swift_dynamicCast();
  v31 = v47;
  v35 = v48;
  if (!v34)
  {
    v31 = 0;
    v35 = 0;
  }

LABEL_35:
  a2[8] = v31;
  a2[9] = v35;
  v36 = *(v17 + 16);
  if (v36)
  {
    v37 = sub_10004F0CC(1852793705, 0xE400000000000000);
    if (v38)
    {
      sub_1000068B4(*(v17 + 56) + 32 * v37, &v49);
      v39 = swift_dynamicCast();
      v36 = v47;
      v40 = v48;
      if (!v39)
      {
        v36 = 0;
        v40 = 0;
      }

      goto LABEL_41;
    }

    v36 = 0;
  }

  v40 = 0;
LABEL_41:
  a2[2] = v36;
  a2[3] = v40;
  if (*(v17 + 16) && (v41 = sub_10004F0CC(1869768040, 0xE400000000000000), (v42 & 1) != 0))
  {
    sub_1000068B4(*(v17 + 56) + 32 * v41, &v49);
  }

  else
  {

    v49 = 0u;
    v50 = 0u;
  }

  sub_1000172E0(&v51);
  if (*(&v50 + 1))
  {
    v43 = swift_dynamicCast();
    v44 = v47;
    v45 = v48;
    if (!v43)
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    sub_1000172E0(&v49);
    v44 = 0;
    v45 = 0;
  }

  a2[4] = v44;
  a2[5] = v45;
}

unint64_t sub_1000170E0()
{
  result = qword_1000EFAB8;
  if (!qword_1000EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAB8);
  }

  return result;
}

unint64_t sub_100017134()
{
  result = qword_1000EFAC0;
  if (!qword_1000EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAC0);
  }

  return result;
}

unint64_t sub_100017188()
{
  result = qword_1000EFAC8;
  if (!qword_1000EFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAC8);
  }

  return result;
}

uint64_t type metadata accessor for BIAPayload()
{
  result = qword_1000EFB28;
  if (!qword_1000EFB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001727C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000172E0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000173B8(uint64_t a1)
{
  v2 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for BIAPayloadBCMessageParseError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BIAPayloadBCMessageParseError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100017580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100017640(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000176E4()
{
  sub_10001777C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001777C()
{
  if (!qword_1000EFB38)
  {
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EFB38);
    }
  }
}

unint64_t sub_1000177D0()
{
  result = qword_1000EFB78;
  if (!qword_1000EFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFB78);
  }

  return result;
}

void *sub_10001789C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = _swiftEmptyArrayStorage;
LABEL_18:
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    v21 = &type metadata for String;
    v20._countAndFlagsBits = v13;
    v20._object = v14;
    sub_100006910(&v20, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
    v16 = Date.toUTCString()();
    v21 = &type metadata for String;
    v20 = v16;
    sub_100006910(&v20, v19);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 1702125924, 0xE400000000000000, v17);
    v21 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    v20._countAndFlagsBits = v7;
    sub_100006910(&v20, v19);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v19, 0x746F6C73656D6974, 0xE900000000000073, v18);
    return &_swiftEmptyDictionarySingleton;
  }

  if (v4 < 0)
  {
    v12 = *(v1 + v2);
  }

  result = sub_1000AC65C();
  v5 = result;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = sub_10004D454();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000387AC(0, v7[2] + 1, 1, v7);
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_1000387AC((v10 > 1), v11 + 1, 1, v7);
      }

      ++v6;

      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
    }

    while (v5 != v6);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017B30()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8Business15IMBProposedDate_date;
  v3 = sub_1000AB7EC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBProposedDate()
{
  result = qword_1000EFBA8;
  if (!qword_1000EFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017C38()
{
  result = sub_1000AB7EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100017D0C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"previousPage"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 1262698818;
  v13._object = 0xE400000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}

id sub_100017E90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"nextPage"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x44524157524F46;
  v13._object = 0xE700000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}