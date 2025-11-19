uint64_t sub_1B80()
{
  v0 = sub_DD34();
  sub_B1A4(v0, qword_19620);
  sub_1C54(v0, qword_19620);
  v1 = [objc_opt_self() logger];
  return sub_DD44();
}

uint64_t sub_1BF0()
{
  if (qword_192C0 != -1)
  {
    swift_once();
  }

  v0 = sub_DD34();

  return sub_1C54(v0, qword_19620);
}

uint64_t sub_1C54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_192C0 != -1)
  {
    swift_once();
  }

  v2 = sub_DD34();
  v3 = sub_1C54(v2, qword_19620);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D34()
{
  v0 = sub_DD34();
  sub_B1A4(v0, qword_192D0);
  v1 = sub_1C54(v0, qword_192D0);
  if (qword_192C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C54(v0, qword_19620);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SatelliteSMSServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 service:a2 replicatingForSession:a3];

  return v6;
}

{
  v7 = (v3 + OBJC_IVAR___SatelliteSMSServiceSession_state);
  *v7 = 0u;
  v7[1] = 0u;
  v38.super_class = SatelliteSMSServiceSession;
  v8 = objc_msgSendSuper2(&v38, "initWithAccount:service:replicatingForSession:", a1, a2, a3);
  v9 = objc_opt_self();
  if (![v9 systemSupportsSatelliteSMS])
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v29 = sub_DD34();
    sub_1C54(v29, qword_192D0);
    v30 = sub_DD24();
    v31 = sub_DEC4();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_19;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Hey you! Please update your SDK+device to 22A161 or newer.";
    goto LABEL_18;
  }

  v10 = [v9 smsServiceType];
  sub_ADC8(0, &qword_18EB8, OS_dispatch_queue_ptr);
  v11 = v8;
  v12 = sub_DEF4();
  v13 = [objc_allocWithZone(CTStewieDataClient) initWithServices:v10 delegate:v11 delegateQueue:v12];

  if (!v13)
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v34 = sub_DD34();
    sub_1C54(v34, qword_192D0);
    v30 = sub_DD24();
    v31 = sub_DED4();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_19;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Failed to initialize CTStewieDataClient!";
LABEL_18:
    _os_log_impl(&dword_0, v30, v31, v33, v32, 2u);

LABEL_19:

    v24 = a3;
    goto LABEL_20;
  }

  v36 = a3;
  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v37 = v8;
  v14 = sub_DD34();
  sub_1C54(v14, qword_192D0);
  v15 = sub_DD24();
  v16 = sub_DEA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Starting CTStewieDataClient", v17, 2u);
  }

  [v13 start];
  type metadata accessor for SatelliteSMSMessageTransformer();
  v18 = swift_allocObject();
  *(v18 + 24) = &protocol witness table for SatelliteSMSServiceSession;
  swift_unknownObjectUnownedInit();
  v19 = &v11[OBJC_IVAR___SatelliteSMSServiceSession_state];
  v20 = *&v11[OBJC_IVAR___SatelliteSMSServiceSession_state];
  v21 = *&v11[OBJC_IVAR___SatelliteSMSServiceSession_state + 8];
  v22 = *&v11[OBJC_IVAR___SatelliteSMSServiceSession_state + 16];
  v23 = *&v11[OBJC_IVAR___SatelliteSMSServiceSession_state + 24];
  *v19 = v13;
  *(v19 + 1) = 0;
  *(v19 + 2) = v18;
  *(v19 + 3) = 0;

  v24 = v13;
  sub_73C0(v20);
  v25 = [objc_opt_self() sharedInstance];
  [v25 addListener:v11];

  v26 = sub_DD24();
  v27 = sub_DEA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "SatelliteSMSServiceSession is ready to go!", v28, 2u);
  }

  v8 = v37;
LABEL_20:

  return v8;
}

void SatelliteSMSServiceSession.calculateReachability(with:responseHandler:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = &unk_19000;
  if (qword_192C8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v7 = sub_DD34();
  sub_1C54(v7, qword_192D0);
  v8 = a1;
  v9 = sub_DD24();
  v10 = sub_DEA4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "Calculating SatelliteSMS reachability for request: %@", v11, 0xCu);
    sub_B0FC(v12, &qword_18EC0, &unk_EEF0);
  }

  if (![objc_opt_self() isMessagesTheDefaultTextApp])
  {
    if (v6[89] != -1)
    {
      swift_once();
    }

    sub_1C54(v7, qword_192D0);
    v15 = sub_DD24();
    v19 = sub_DEA4();
    if (os_log_type_enabled(v15, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v15, v19, "Can't send over SatelliteSMS, messages is not the default text app", v20, 2u);
    }

    goto LABEL_23;
  }

  v57 = v3;
  v14 = v3 + OBJC_IVAR___SatelliteSMSServiceSession_state;
  if (!*v14)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v14[8] & 0x20) == 0)
  {
    sub_81CC();
    if (v6[89] != -1)
    {
      swift_once();
    }

    sub_1C54(v7, qword_192D0);
    v7 = v57;
    v15 = sub_DD24();
    v16 = sub_DEA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      if (*v14)
      {
        v17[1] = (*(v14 + 2) >> 5) & 1;
        v18 = v17;

        *(v18 + 4) = 1024;
        *(v18 + 10) = 0;
        _os_log_impl(&dword_0, v15, v16, "Can't send over SatelliteSMS, service inactive - hasService %{BOOL}d availability %{BOOL}d", v18, 0xEu);

        goto LABEL_23;
      }

LABEL_45:

      __break(1u);
      return;
    }

LABEL_23:
    v30 = v8;
    v31 = a2;
LABEL_24:

    sub_2BC8(v30, v31);
    return;
  }

  v55 = v8;
  v56 = a2;
  v21 = [v8 handleIDs];
  v22 = sub_DE24();

  v3 = (v22 + 40);
  a2 = -*(v22 + 16);
  a1 = -1;
  while (a2 + a1 != -1)
  {
    if (++a1 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v24 = *(v3 - 1);
    v23 = *v3;
    v25 = objc_opt_self();

    v26 = [v25 sharedInstance];
    v27 = sub_DD84();
    v6 = [v26 isPhoneNumberEmergencyNumber:v27];

    if (v6)
    {

LABEL_39:

      v51 = sub_DD24();
      v52 = sub_DEA4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "Can't send over SatelliteSMS to emergency numbers", v53, 2u);
      }

      v30 = v55;
      v31 = v56;
      goto LABEL_24;
    }

    v3 += 2;
    v28 = sub_DD84();

    IsStewie = IMStringIsStewie();

    if (IsStewie)
    {
      goto LABEL_39;
    }
  }

  v32 = [v57 service];
  v33 = [v32 internalName];

  if (!v33)
  {
    sub_DD94();
    v33 = sub_DD84();
  }

  isa = [v55 handleIDs];
  if (!isa)
  {
    sub_DE24();
    isa = sub_DE14().super.isa;
  }

  v35 = objc_opt_self();
  v62 = sub_2D18;
  v63 = 0;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_2F1C;
  v61 = &unk_14830;
  v36 = _Block_copy(&aBlock);
  v62 = sub_2F84;
  v63 = 0;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_2F1C;
  v61 = &unk_14858;
  v37 = _Block_copy(&aBlock);
  LOBYTE(v54) = 0;
  v38 = [v35 finalResultForService:v33 handleIDs:isa allAreReachable:1 allSupportEncryption:0 handleIsReachable:v36 handleSupportsEncryption:v37 checkedServer:v54 error:0];
  _Block_release(v37);
  _Block_release(v36);

  v39 = [v55 handleIDs];
  v40 = sub_DE24();

  v41 = *(v40 + 16);

  if (v41 >= 2)
  {
    v42 = sub_DD24();
    v43 = sub_DEA4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "Can't send over SatelliteSMS, can only send to 1 participant", v44, 2u);
    }

    [v38 setError:1];
  }

  v45 = v38;
  v46 = sub_DD24();
  v47 = sub_DEA4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&dword_0, v46, v47, "Calculated SatelliteSMS reachability request with result: %@", v48, 0xCu);
    sub_B0FC(v49, &qword_18EC0, &unk_EEF0);
  }

  [v56 reachabilityRequest:v55 updatedWithResult:v45];
}

void sub_2BC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 service];
  v7 = [v6 internalName];

  if (!v7)
  {
    sub_DD94();
    v7 = sub_DD84();
  }

  isa = [a1 handleIDs];
  if (!isa)
  {
    sub_DE24();
    isa = sub_DE14().super.isa;
  }

  v9 = [objc_opt_self() finalResultForService:v7 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];

  [a2 reachabilityRequest:a1 updatedWithResult:v9];
}

void sub_2D18()
{
  v0 = sub_DD84();
  v1 = [v0 _stripFZIDPrefix];

  if (v1)
  {
    v2 = [v1 im_stripCategoryLabel];

    v3 = v2;
    if (!v2)
    {
      sub_DD94();
      v3 = sub_DD84();
    }

    v4 = sub_DD94();
    v6 = v5;
    IsPhoneNumber = IMStringIsPhoneNumber();

    if (IsPhoneNumber)
    {
    }

    else
    {
      if (qword_192C8 != -1)
      {
        swift_once();
      }

      v8 = sub_DD34();
      sub_1C54(v8, qword_192D0);

      v9 = sub_DD24();
      v10 = sub_DEA4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        v13 = sub_78B8(v4, v6, &v14);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_0, v9, v10, "Can't send over SatelliteSMS, found non-phone number %s", v11, 0xCu);
        sub_8314(v12);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2F1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_DD94();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

Swift::Int __swiftcall SatelliteSMSServiceSession.maxRecipients(forPhoneNumber:simID:)(Swift::String forPhoneNumber, Swift::String simID)
{
  v2 = objc_opt_self();
  v3 = sub_DD84();
  v4 = sub_DD84();
  v5 = [v2 IMMMSMaxRecipientsForPhoneNumber:v3 simID:v4];

  return v5;
}

void SatelliteSMSServiceSession.sendMessage(from:forChat:chat:style:)(id a1, uint64_t a2, unint64_t a3, id a4, char a5)
{
  v7 = v5 + OBJC_IVAR___SatelliteSMSServiceSession_state;
  if (!*(&v5->isa + OBJC_IVAR___SatelliteSMSServiceSession_state))
  {
    __break(1u);
  }

  v8 = v5;
  if ((v7[8] & 0x20) == 0)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v14 = [v5 subscriptionContextForChat:a4];
  if (v14)
  {
LABEL_5:
    v81 = v14;
    v15 = [a4 participantHandles];
    if (v15)
    {
      v16 = v15;
      v6 = sub_DE24();

      v5 = v6[2];

      if (v5 != (&dword_0 + 1))
      {
        if (qword_192C8 != -1)
        {
          swift_once();
        }

        v30 = sub_DD34();
        sub_1C54(v30, qword_192D0);

        v5 = sub_DD24();
        v6 = sub_DED4();

        if (os_log_type_enabled(v5, v6))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_78B8(a2, a3, aBlock);
          _os_log_impl(&dword_0, v5, v6, "Rejecting attempt to send to group %s", v31, 0xCu);
          sub_8314(v32);
        }

        v33 = [a1 guid];
        if (v33)
        {
          v34 = v33;
          [v8 didReceiveError:5 forMessageID:v33 forceError:1];
LABEL_32:

          goto LABEL_42;
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v17 = [a4 participantHandles];
      if (v17)
      {
        v6 = v17;
        v18 = sub_DE24();

        if (v18[2])
        {
          v6 = v18[4];
          v19 = v18[5];

          v80 = v19;
          v20 = sub_DD84();
          LODWORD(v19) = IMStringIsPhoneNumber();

          if (v19)
          {
            v78 = a5;
            v5 = v8;
            SatelliteSMSServiceSession.shouldNotifyDowngrade(for:)(a4);
            if (*v7)
            {
              v22 = v21;
              v76 = *(v7 + 1);
              if ((v76 & 0x20) != 0)
              {
                v48 = *(**(v7 + 2) + 112);

                v56 = v48(a1, v6, v80, v22 & 1);

                v57 = v56;
                [v57 setContext:v81];
                aBlock[0] = 0;
                v6 = [v57 makeOutgoingMessageWithError:aBlock];
                v74 = v57;

                v58 = aBlock[0];
                if (!v6)
                {
                  v59 = v58;
                  sub_DC64();

                  swift_willThrow();
                  if (qword_192C8 != -1)
                  {
                    swift_once();
                  }

                  v60 = sub_DD34();
                  sub_1C54(v60, qword_192D0);
                  v6 = a1;
                  swift_errorRetain();
                  v61 = sub_DD24();
                  v62 = sub_DED4();
                  if (os_log_type_enabled(v61, v62))
                  {
                    v63 = swift_slowAlloc();
                    v77 = swift_slowAlloc();
                    v79 = swift_slowAlloc();
                    aBlock[0] = v79;
                    *v63 = 136446466;
                    v64 = [v6 guid];
                    if (!v64)
                    {
LABEL_85:

                      __break(1u);
                      return;
                    }

                    v65 = v64;

                    v66 = sub_DD94();
                    v68 = v67;

                    v69 = sub_78B8(v66, v68, aBlock);

                    *(v63 + 4) = v69;
                    *(v63 + 12) = 2112;
                    swift_errorRetain();
                    v70 = _swift_stdlib_bridgeErrorToNSError();
                    *(v63 + 14) = v70;
                    *v77 = v70;
                    _os_log_impl(&dword_0, v61, v62, "Failed to pack outgoing message into the CT format for %{public}s: %@", v63, 0x16u);
                    sub_B0FC(v77, &qword_18EC0, &unk_EEF0);

                    sub_8314(v79);
                  }

                  else
                  {
                  }

                  v71 = [v6 guid];
                  if (v71)
                  {
                    v72 = v71;

                    [v8 didReceiveError:4 forMessageID:v72 forceError:1];

LABEL_57:

                    return;
                  }

LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

                [v8 markItemForOffGridRelay:a1 inChat:a4, v57];
                v23 = v78;
                if (((v81 != 0) & v22) == 0)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                v6 = 0;
                if (v81 == 0 || (v21 & 1) == 0)
                {
                  goto LABEL_45;
                }

                v23 = v78;
              }

              v24 = [v81 phoneNumber];
              if (!v24)
              {
LABEL_46:
                [a1 setFlags:{objc_msgSend(a1, "flags") | 0x80000000000}];
                if (v6)
                {
                  swift_unknownObjectRetain();
                  v5 = v8;
                  if ((sub_460C(a1) & 1) == 0)
                  {
                    v50 = *v7;
                    if (!*v7)
                    {
LABEL_82:
                      __break(1u);

                      __break(1u);
                      goto LABEL_83;
                    }

                    v51 = swift_allocObject();
                    *(v51 + 16) = a1;
                    *(v51 + 24) = v8;
                    *(v51 + 32) = a2;
                    *(v51 + 40) = a3;
                    *(v51 + 48) = v23;
                    aBlock[4] = sub_83A8;
                    aBlock[5] = v51;
                    aBlock[0] = _NSConcreteStackBlock;
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_4B38;
                    aBlock[3] = &unk_148A8;
                    v52 = _Block_copy(aBlock);
                    v53 = a1;

                    a1 = v50;
                    v8;

                    v54 = [a1 sendMessage:v6 completion:v52];
                    _Block_release(v52);

                    if ((v54 & 1) == 0)
                    {
                      sub_4898(v53, 1u);
                    }
                  }

                  swift_unknownObjectRelease();
                }

                v55 = [objc_opt_self() sharedFeatureFlags];
                v5 = [v55 isSatelliteRelayEnabled];

                if (!v5)
                {
                  goto LABEL_56;
                }

                if (*v7)
                {
                  if ((v7[8] & 0x20) == 0)
                  {
                    sub_81CC();
                  }

LABEL_56:

                  swift_unknownObjectRelease();

                  if ((v76 & 0x20) == 0)
                  {
                    return;
                  }

                  goto LABEL_57;
                }

                goto LABEL_80;
              }

              v5 = v24;
              v25 = IMChatCanonicalIDSIDsForAddress();

              if (!v25)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v5 = [v25 _stripFZIDPrefix];

              if (v5)
              {
                v26 = [objc_opt_self() sharedInstance];
                if (!v26)
                {
LABEL_83:

                  __break(1u);
                  goto LABEL_84;
                }

                v27 = v26;
                v28 = [v26 anySessionForServiceName:IMServiceNameiMessageLite];

                if (v28)
                {
                  v29 = sub_DD84();
                  [v28 sentDowngradeRequestToHandleID:v29 fromID:v5];
                }
              }

LABEL_45:
              v23 = v78;
              goto LABEL_46;
            }

            goto LABEL_76;
          }

          if (qword_192C8 == -1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
LABEL_28:
        v35 = sub_DD34();
        sub_1C54(v35, qword_192D0);

        v5 = sub_DD24();
        v36 = sub_DED4();

        if (os_log_type_enabled(v5, v36))
        {
          v37 = a2;
          v38 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v38 = 136315394;
          *(v38 + 4) = sub_78B8(v6, v80, aBlock);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_78B8(v37, a3, aBlock);
          _os_log_impl(&dword_0, v5, v36, "Rejecting attempt to send to non-phone number %s in chat %s", v38, 0x16u);
          swift_arrayDestroy();
        }

        v39 = [a1 guid];
        if (!v39)
        {
          goto LABEL_77;
        }

        v34 = v39;

        [v8 didReceiveError:23 forMessageID:v34 forceError:1];
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_75;
  }

  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v40 = sub_DD34();
  sub_1C54(v40, qword_192D0);
  v6 = a1;

  v5 = sub_DD24();
  a1 = sub_DED4();
  v41 = &SatelliteSMSServiceSession__metaData;
  if (os_log_type_enabled(v5, a1))
  {
    v75 = a2;
    v42 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v42 = 136446466;
    v43 = [v6 guid];

    if (!v43)
    {
LABEL_79:
      __break(1u);
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v44 = sub_DD94();
    v46 = v45;

    v47 = sub_78B8(v44, v46, aBlock);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_78B8(v75, a3, aBlock);
    _os_log_impl(&dword_0, v5, a1, "Can't find context to send message %{public}s to %s", v42, 0x16u);
    swift_arrayDestroy();

    v41 = &SatelliteSMSServiceSession__metaData;
  }

  else
  {
  }

  v49 = [v6 v41[30].name];
  if (!v49)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v81 = v49;
  [NSObject didReceiveError:v8 forMessageID:"didReceiveError:forMessageID:forceError:" forceError:31];
LABEL_42:
}

void SatelliteSMSServiceSession.shouldNotifyDowngrade(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_DD14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B218();
  if (fabs(v9) <= 2.22044605e-16)
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v24 = sub_DD34();
    sub_1C54(v24, qword_192D0);
    v25 = sub_DD24();
    v26 = sub_DEE4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_23;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Downgrade disabled by server bag", v27, 2u);
    goto LABEL_18;
  }

  v10 = sub_71D0();
  v11 = [a1 lastSentDowngradeRequestSinceLoadSessionIndex];
  v12 = (v2 + OBJC_IVAR___SatelliteSMSServiceSession_state);
  if (!*(v2 + OBJC_IVAR___SatelliteSMSServiceSession_state))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v10 || v11 != v12[3])
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v13 = sub_DD34();
    sub_1C54(v13, qword_192D0);
    v14 = a1;
    v15 = sub_DD24();
    v16 = sub_DEE4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v17;
      v42 = v40;
      *v17 = 136315138;
      v18 = [v14 chatIdentifier];

      if (!v18)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = sub_DD94();
      v21 = v20;

      v22 = sub_78B8(v19, v21, &v42);

      v23 = v41;
      *(v41 + 1) = v22;
      _os_log_impl(&dword_0, v15, v16, "Chat %s downgrade request expired, re-sending", v23, 0xCu);
      sub_8314(v40);
    }

    else
    {
    }

    sub_DCF4();
    isa = sub_DCB4().super.isa;
    (*(v5 + 8))(v8, v4);
    [v14 setLastSentDowngradeRequestSinceLoadDate:isa];

    if (*v12)
    {
      [v14 setLastSentDowngradeRequestSinceLoadSessionIndex:v12[3]];
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v28 = sub_DD34();
  sub_1C54(v28, qword_192D0);
  v29 = a1;
  v25 = sub_DD24();
  v30 = sub_DEA4();
  if (!os_log_type_enabled(v25, v30))
  {

    goto LABEL_23;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v42 = v32;
  *v31 = 136315650;
  v33 = [v29 chatIdentifier];

  if (v33)
  {
    v34 = sub_DD94();
    v36 = v35;

    v37 = sub_78B8(v34, v36, &v42);

    *(v31 + 4) = v37;
    *(v31 + 12) = 1024;
    *(v31 + 14) = 0;
    *(v31 + 18) = 1024;
    *(v31 + 20) = 0;
    _os_log_impl(&dword_0, v25, v30, "Chat %s already sent downgrade request (expired: %{BOOL}d, sessionChanged: %{BOOL}d)", v31, 0x18u);
    sub_8314(v32);

LABEL_18:

LABEL_23:

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_4530()
{
  if (*(v0 + OBJC_IVAR___SatelliteSMSServiceSession_state))
  {
    v1 = *(v0 + OBJC_IVAR___SatelliteSMSServiceSession_state + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_460C(void *a1)
{
  v3 = sub_82CC(&qword_19028, &qword_EFA8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  result = [objc_opt_self() messagesAppDomain];
  if (result)
  {
    v8 = result;
    v9 = sub_DD84();
    v10 = [v8 BOOLForKey:v9];

    if (v10)
    {
      v11 = v1;
      if (qword_192C8 != -1)
      {
        swift_once();
      }

      v12 = sub_DD34();
      sub_1C54(v12, qword_192D0);
      v13 = sub_DD24();
      v14 = sub_DEB4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = 4;
        _os_log_impl(&dword_0, v13, v14, "FailSendingSMSMessages is enabled, failing send message after %ld seconds", v15, 0xCu);
      }

      v16 = sub_DE84();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_DE64();
      v17 = v11;
      v18 = a1;
      v19 = sub_DE54();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v17;
      v20[5] = v18;
      sub_5020(0, 0, v6, &unk_EFB8, v20);

      return &dword_0 + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_4880()
{
  result = *(v0 + OBJC_IVAR___SatelliteSMSServiceSession_state);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void sub_4898(void *a1, unsigned int a2)
{
  v3 = v2;
  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v6 = sub_DD34();
  sub_1C54(v6, qword_192D0);
  v7 = a1;
  v8 = sub_DD24();
  v9 = sub_DEC4();
  v10 = &SatelliteSMSServiceSession__metaData;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446466;
    v13 = [v7 guid];

    if (!v13)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v14 = sub_DD94();
    v16 = v15;

    v17 = sub_78B8(v14, v16, &v24);

    *(v11 + 4) = v17;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a2;
    _os_log_impl(&dword_0, v8, v9, "Failed to send message %{public}s with error %u", v11, 0x12u);
    sub_8314(v12);

    v10 = &SatelliteSMSServiceSession__metaData;
  }

  else
  {
  }

  v18 = [objc_opt_self() sharedFeatureFlags];
  v19 = [v18 isSatelliteContinuityEnabled];

  if (v19)
  {
    v20 = [v3 relayController];
    v21 = [v7 v10[30].name];
    [v20 messageFailedToSend:v21];
  }

  v22 = [v7 v10[30].name];
  if (!v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  [v3 didReceiveError:4 forMessageID:v22 forceError:1];

  sub_8A04(v7, a2);
}

uint64_t sub_4B38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    sub_DD64();
  }

  v6 = a2;
  v5();
}

uint64_t sub_4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_DFF4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_DE64();
  v5[7] = sub_DE54();
  v10 = sub_DE44();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_4CCC, v10, v9);
}

uint64_t sub_4CCC()
{
  v1 = *(v0 + 48);
  sub_E064();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_4D98;
  v3 = *(v0 + 48);

  return sub_7400(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_4D98()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);
  if (v0)
  {
    v10 = sub_4FB4;
  }

  else
  {
    v10 = sub_4F30;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_4F30()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];
  v4 = v0[3];

  sub_4898(v4, 4u);

  v5 = v0[1];

  return v5();
}

uint64_t sub_4FB4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_5020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_82CC(&qword_19028, &qword_EFA8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_B094(a3, v24 - v10, &qword_19028, &qword_EFA8);
  v12 = sub_DE84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B0FC(v11, &qword_19028, &qword_EFA8);
  }

  else
  {
    sub_DE74();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_DE44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_DDE4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_B0FC(a3, &qword_19028, &qword_EFA8);

      return v22;
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

  sub_B0FC(a3, &qword_19028, &qword_EFA8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_52CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_82CC(&qword_19000, &qword_EF88);
    v2 = sub_E024();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_AE64(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_AD04(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_AD04(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_AD04(v31, v32);
    result = sub_DF34(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_AD04(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5594()
{
  if (*(v0 + OBJC_IVAR___SatelliteSMSServiceSession_state))
  {
    return *(v0 + OBJC_IVAR___SatelliteSMSServiceSession_state + 8);
  }

  __break(1u);
  return result;
}

void sub_55B4(void *a1)
{
  v4 = &v2[OBJC_IVAR___SatelliteSMSServiceSession_state];
  if (!*&v2[OBJC_IVAR___SatelliteSMSServiceSession_state])
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v4 + 3);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = a1;
    *(v4 + 3) = v7;
    if (qword_192C8 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v8 = sub_DD34();
  sub_1C54(v8, qword_192D0);
  v1 = v2;
  v9 = v3;
  oslog = sub_DD24();
  v10 = sub_DEA4();

  if (!os_log_type_enabled(oslog, v10))
  {

    v16 = v1;
    goto LABEL_8;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  *v11 = 138543618;
  *(v11 + 4) = v9;
  *v12 = v9;
  *(v11 + 12) = 2048;
  if (!*v4)
  {
LABEL_14:

    __break(1u);
    return;
  }

  v13 = v12;
  v14 = *(v4 + 3);
  v15 = v9;

  *(v11 + 14) = v14;
  _os_log_impl(&dword_0, oslog, v10, "Satellite SMS state changed to %{public}@ (session index: %ld)", v11, 0x16u);
  sub_B0FC(v13, &qword_18EC0, &unk_EEF0);

  v16 = oslog;
LABEL_8:
}

void sub_57E8(uint64_t a1)
{
  v2 = v1;
  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v4 = sub_DD34();
  sub_1C54(v4, qword_192D0);
  v5 = sub_DD24();
  v6 = sub_DEA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_0, v5, v6, "Connected services changed to %{public}ld", v7, 0xCu);
  }

  if (*(v2 + OBJC_IVAR___SatelliteSMSServiceSession_state))
  {
    *(v2 + OBJC_IVAR___SatelliteSMSServiceSession_state + 8) = a1;
  }

  else
  {
    __break(1u);
  }
}

id sub_594C(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  v7 = sub_DD84();
  v8 = &SatelliteSMSServiceSession__metaData;
  v9 = [v2 account];
  v10 = [v6 existingChatWithIdentifier:v7 account:v9];

  if (!v10)
  {
    sub_82CC(&qword_18FD8, &qword_EF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_EEC0;
    sub_DD94();
    sub_DF54();
    *(inited + 96) = &type metadata for Int32;
    *(inited + 72) = 2;
    sub_DD94();
    sub_DF54();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = a1;
    *(inited + 152) = a2;
    sub_DD94();

    sub_DF54();
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = a1;
    *(inited + 224) = a2;
    sub_DD94();

    sub_DF54();
    v12 = sub_DD84();
    v13 = IMCountryCodeForNumber();

    if (v13)
    {
      v14 = sub_DD94();
      v16 = v15;

      v17 = (inited + 288);
      *(inited + 312) = &type metadata for String;
      if (v16)
      {
        *v17 = v14;
        v8 = &SatelliteSMSServiceSession__metaData;
LABEL_8:
        *(inited + 296) = v16;
        v18 = sub_90B8(inited);
        swift_setDeallocating();
        sub_82CC(&qword_18FE0, &qword_EF68);
        swift_arrayDestroy();
        sub_82CC(&qword_18FE8, &qword_EF70);
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_EED0;
        *(v19 + 32) = v18;
        v20 = sub_DD84();
        sub_5D1C(v19);
        swift_setDeallocating();
        sub_B0FC(v19 + 32, &qword_18FF0, &qword_EF78);
        isa = sub_DE14().super.isa;

        [v2 didJoinChat:v20 style:45 displayName:0 groupID:0 originalGroupID:0 handleInfo:isa category:0 spamExtensionName:0];

        v22 = [v5 sharedInstance];
        v23 = sub_DD84();
        v24 = [v2 v8[34].base_meths];
        v10 = [v22 existingChatWithIdentifier:v23 account:v24];

        return v10;
      }

      v8 = &SatelliteSMSServiceSession__metaData;
    }

    else
    {
      v17 = (inited + 288);
      *(inited + 312) = &type metadata for String;
    }

    *v17 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_8;
  }

  return v10;
}

unint64_t *sub_5D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_809C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_82CC(&qword_18FF0, &qword_EF78);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_809C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_AD04(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_5E30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = qword_192C0;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_DD34();
    sub_1C54(v12, qword_19620);
    swift_unknownObjectRetain();
    v13 = sub_DD24();
    v14 = sub_DEE4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v10 pendingSatSmsTotalCount];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_0, v13, v14, "Received summary info with %ld total pending messages", v15, 0xCu);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v24 = [objc_opt_self() sharedInstance];
    if (v24)
    {
      v25 = v24;
      v26 = [v10 pendingSatSmsTotalCount];
      v27 = [v5 service];
      v28 = [v27 internalName];

      if (!v28)
      {
        sub_DD94();
        v28 = sub_DD84();
      }

      [v25 updateBadgeForPendingSatelliteMessagesIfNeeded:v26 onService:v28];
      swift_unknownObjectRelease();

      goto LABEL_28;
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if (qword_192C8 != -1)
    {
LABEL_76:
      swift_once();
    }

    v29 = sub_DD34();
    sub_1C54(v29, qword_192D0);
    swift_unknownObjectRetain();
    v30 = sub_DD24();
    v31 = sub_DEC4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v130 = v33;
      *v32 = 136315138;
      swift_getObjectType();
      sub_82CC(&qword_18F28, &qword_EF00);
      v34 = sub_DDD4();
      v36 = sub_78B8(v34, v35, &v130);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "Unknown CT message type: %s", v32, 0xCu);
      sub_8314(v33);
    }

    goto LABEL_27;
  }

  v16 = objc_allocWithZone(SatelliteSMSIncomingMessage);
  v130 = 0;
  swift_unknownObjectRetain();
  v17 = [v16 initWithIncomingCTMessage:a1 error:&v130];
  if (!v17)
  {
    v37 = v130;
    sub_DC64();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v38 = sub_DD34();
    sub_1C54(v38, qword_192D0);
    swift_errorRetain();
    v30 = sub_DD24();
    v39 = sub_DED4();

    if (!os_log_type_enabled(v30, v39))
    {

      goto LABEL_28;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&dword_0, v30, v39, "Error parsing incoming CT message: %@", v40, 0xCu);
    sub_B0FC(v41, &qword_18EC0, &unk_EEF0);

LABEL_26:

    goto LABEL_27;
  }

  v18 = v17;
  v19 = v130;
  swift_unknownObjectRelease();
  v20 = [v18 sourcePhoneNumber];
  v21 = sub_DD94();
  v23 = v22;

  LOBYTE(v20) = sub_91F4(v21, v23);

  if (v20)
  {

    goto LABEL_28;
  }

  if (!*&v5[OBJC_IVAR___SatelliteSMSServiceSession_state])
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v43 = *(**&v5[OBJC_IVAR___SatelliteSMSServiceSession_state + 16] + 96);

  v49 = v43(v18);

  if (!(v49 >> 62))
  {
    v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
    if (v50)
    {
      goto LABEL_32;
    }

LABEL_79:

    if (qword_192C8 == -1)
    {
LABEL_80:
      v111 = sub_DD34();
      sub_1C54(v111, qword_192D0);
      v112 = v18;
      v30 = sub_DD24();
      v113 = sub_DED4();

      if (os_log_type_enabled(v30, v113))
      {
        v114 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v114 = 136315394;
        v115 = [v112 uniqueID];
        v116 = sub_DD94();
        v118 = v117;

        v119 = sub_78B8(v116, v118, &v130);

        *(v114 + 4) = v119;
        *(v114 + 12) = 2080;
        v120 = [v112 sourcePhoneNumber];
        v121 = sub_DD94();
        v123 = v122;

        v124 = sub_78B8(v121, v123, &v130);

        *(v114 + 14) = v124;
        _os_log_impl(&dword_0, v30, v113, "Got no message items for message %s from %s!", v114, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }

LABEL_27:
      goto LABEL_28;
    }

LABEL_85:
    swift_once();
    goto LABEL_80;
  }

  v50 = sub_E014();
  if (!v50)
  {
    goto LABEL_79;
  }

LABEL_32:
  v128 = v49 & 0xC000000000000001;
  if ((v49 & 0xC000000000000001) != 0)
  {
    v51 = sub_DF74();
    goto LABEL_35;
  }

  if (!*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_85;
  }

  v51 = *(v49 + 32);
LABEL_35:
  v127 = v51;
  v52 = [v18 sourcePhoneNumber];
  v53 = sub_DD94();
  v55 = v54;

  v56 = sub_594C(v53, v55);

  if (!v56)
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v78 = sub_DD34();
    sub_1C54(v78, qword_192D0);
    swift_unknownObjectRetain();

    v18 = v18;
    v79 = sub_DD24();
    v80 = sub_DED4();

    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v79, v80))
    {

      goto LABEL_28;
    }

    v81 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v81 = 136446722;
    if (v128)
    {
      v82 = sub_DF74();
    }

    else
    {
      v82 = *(v49 + 32);
    }

    v95 = v82;

    v96 = [v95 guid];

    if (v96)
    {
      v97 = sub_DD94();
      v99 = v98;
    }

    else
    {
      v97 = 7104878;
      v99 = 0xE300000000000000;
    }

    v100 = sub_78B8(v97, v99, &v130);

    *(v81 + 4) = v100;
    *(v81 + 12) = 2080;
    swift_unknownObjectRetain();
    sub_82CC(&qword_18F30, &qword_EF08);
    v101 = sub_DDD4();
    v103 = sub_78B8(v101, v102, &v130);

    *(v81 + 14) = v103;
    *(v81 + 22) = 2080;
    v104 = [v18 sourcePhoneNumber];
    v105 = sub_DD94();
    v107 = v106;

    v108 = sub_78B8(v105, v107, &v130);

    *(v81 + 24) = v108;
    _os_log_impl(&dword_0, v79, v80, "Couldn't locate a chat to store %{public}s / %s from %s!", v81, 0x20u);
    swift_arrayDestroy();

    v109 = v127;
    goto LABEL_74;
  }

  [v56 updateIsDownloadingPendingSatelliteMessages:{objc_msgSend(v18, "pendingCount") > 0}];
  v129 = v56;
  [v56 updatePendingIncomingSatelliteMessageCount:{objc_msgSend(v18, "pendingCount")}];
  v57 = [objc_opt_self() sharedInstance];
  if (!v57)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v58 = v57;
  v59 = [v18 pendingTotalCount];
  v60 = [v5 service];
  v61 = [v60 internalName];

  if (!v61)
  {
    sub_DD94();
    v61 = sub_DD84();
  }

  [v58 updateBadgeForPendingSatelliteMessagesIfNeeded:v59 onService:v61];

  sub_9520(v127, v129);
  if (v62)
  {

    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v63 = sub_DD34();
    sub_1C54(v63, qword_192D0);
    v64 = v127;
    v65 = sub_DD24();
    v66 = sub_DEE4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v67 = 136315394;
      v68 = [v64 guid];

      if (!v68)
      {
LABEL_90:
        __break(1u);
        return;
      }

      v69 = sub_DD94();
      v71 = v70;

      v72 = sub_78B8(v69, v71, &v130);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = [v64 fallbackHash];
      if (v73)
      {
        v74 = v73;
        v75 = sub_DD94();
        v77 = v76;
      }

      else
      {
        v75 = 7104878;
        v77 = 0xE300000000000000;
      }

      v110 = sub_78B8(v75, v77, &v130);

      *(v67 + 14) = v110;
      _os_log_impl(&dword_0, v65, v66, "Has duplicate of item %s with dedupe ID %s", v67, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v109 = v129;
LABEL_74:

    goto LABEL_28;
  }

  v125 = a4;
  v126 = a3;
  v83 = 0;
  a3 = v18;
  v84 = v50;
  while (1)
  {
    if (v128)
    {
      v85 = sub_DF74();
      goto LABEL_57;
    }

    if (v83 >= *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
    {
      break;
    }

    v85 = *(v49 + 8 * v83 + 32);
LABEL_57:
    v86 = v85;
    v87 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    v18 = v49;
    v88 = [v85 flags];
    if ((~v88 & 0xC0000000000) != 0)
    {
      v89 = v88 | 0xC0000000000;
    }

    else
    {
      v89 = v88;
    }

    [v86 setFlags:{v89, v125, v126}];
    v90 = [v5 tapbackInterpreter];
    v91 = [v90 interpretMessageItem:v86 inChat:v129];

    v92 = [v129 chatIdentifier];
    if (!v92)
    {
      goto LABEL_87;
    }

    v93 = v92;
    [v5 didReceiveMessage:v91 forChat:v92 style:45 fromIDSID:0];

    ++v83;
    if (v87 == v84)
    {

      v94 = sub_DD84();
      IMSetDomainBoolForKey();

      a3 = v126;
      goto LABEL_28;
    }
  }

  __break(1u);
  swift_once();
  v44 = sub_DD34();
  sub_1C54(v44, qword_192D0);
  swift_errorRetain();
  v30 = sub_DD24();
  v45 = sub_DED4();

  if (os_log_type_enabled(v30, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v48;
    *v47 = v48;
    _os_log_impl(&dword_0, v30, v45, "Error converting incoming CT message to IMMessageItem: %@", v46, 0xCu);
    sub_B0FC(v47, &qword_18EC0, &unk_EEF0);

    goto LABEL_26;
  }

LABEL_28:
  (a3)();
}

void SatelliteSMSServiceSession.createSuperFormatString(_:transferGUIDs:)(uint64_t a1)
{
  v2 = sub_DC14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ADC8(0, &qword_18F38, NSAttributedString_ptr);
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_DF04();
  isa = sub_DE14().super.isa;
  v9 = [v7 __im_attributedStringByAppendingFileTransfers:isa];

  v10 = [v9 __im_attributedStringByAssigningMessagePartNumbers];
  sub_DC34();
}

Swift::String_optional __swiftcall SatelliteSMSServiceSession.destinationPhoneNumber(forIncoming:)(SatelliteSMSIncomingMessage *forIncoming)
{
  v1 = [(SatelliteSMSIncomingMessage *)forIncoming context];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [(CTXPCServiceSubscriptionContext *)v1 phoneNumber];

  if (!v3)
  {
    v1 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = sub_DD94();
  v6 = v5;

  v7 = v6;
  v1 = v4;
LABEL_6:
  result.value._object = v7;
  result.value._countAndFlagsBits = v1;
  return result;
}

BOOL sub_71D0()
{
  v1 = v0;
  v2 = sub_DD14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = [v1 lastSentDowngradeRequestSinceLoadDate];
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  sub_DCE4();

  (*(v3 + 32))(v12, v10, v2);
  sub_DCF4();
  sub_DC94();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v7, v2);
  sub_B218();
  v19 = v18;
  v17(v12, v2);
  return v19 < v16;
}

uint64_t sub_7368()
{
  v1 = [v0 accountID];
  v2 = sub_DD94();

  return v2;
}

void *sub_73C0(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_DFE4();
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

  return _swift_task_switch(sub_7500, 0, 0);
}

uint64_t sub_7500()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_DFF4();
  v7 = sub_B15C(&qword_19030, &type metadata accessor for ContinuousClock);
  sub_E044();
  sub_B15C(&qword_19038, &type metadata accessor for ContinuousClock.Instant);
  sub_E004();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_7690;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_7690()
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

    return _swift_task_switch(sub_784C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_784C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_78B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7984(v11, 0, 0, 1, a1, a2);
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
    sub_AE64(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_8314(v11);
  return v7;
}

unint64_t sub_7984(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_7A90(a5, a6);
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
    result = sub_DF84();
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

char *sub_7A90(uint64_t a1, unint64_t a2)
{
  v4 = sub_7ADC(a1, a2);
  sub_7C0C(&off_14808);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7ADC(uint64_t a1, unint64_t a2)
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

  v6 = sub_7CF8(v5, 0);
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

  result = sub_DF84();
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
        v10 = sub_DE04();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7CF8(v10, 0);
        result = sub_DF64();
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

uint64_t sub_7C0C(uint64_t result)
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

  result = sub_7D6C(result, v12, 1, v3);
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

void *sub_7CF8(uint64_t a1, uint64_t a2)
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

  sub_82CC(&unk_19040, &unk_EFC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7D6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_82CC(&unk_19040, &unk_EFC8);
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

unint64_t sub_7E60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_DF34(*(v2 + 40));

  return sub_7F1C(a1, v4);
}

unint64_t sub_7EA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_E0B4();
  sub_DDF4();
  v6 = sub_E0D4();

  return sub_7FE4(a1, a2, v6);
}

unint64_t sub_7F1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_AD18(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_DF44();
      sub_AD74(v8);
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

unint64_t sub_7FE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E034())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_809C(char *a1, int64_t a2, char a3)
{
  result = sub_80BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_80BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_82CC(&qword_18FF8, &qword_EF80);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_81CC()
{
  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v0 = sub_DD34();
  sub_1C54(v0, qword_192D0);
  oslog = sub_DD24();
  v1 = sub_DEA4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "This device does not support satellite relay.", v2, 2u);
  }
}

uint64_t sub_82B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_82CC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_8314(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_8360()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

void sub_83A8(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v42 = *(v2 + 24);
  v39 = *(v2 + 40);
  v40 = *(v2 + 32);
  v41 = *(v2 + 48);
  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v6 = sub_DD34();
  sub_1C54(v6, qword_192D0);

  v7 = a1;
  v8 = sub_DD24();
  v9 = sub_DEA4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    if (a2)
    {
      v14 = sub_DD74();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = sub_78B8(v14, v16, &v43);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "Received ack: %@ metadata %s", v10, 0x16u);
    sub_B0FC(v11, &qword_18EC0, &unk_EEF0);

    sub_8314(v12);
  }

  v18 = [v7 success];
  v19 = v5;
  v20 = sub_DD24();
  v21 = sub_DEA4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 67240706;
    *(v22 + 4) = v18;
    *(v22 + 8) = 2050;
    *(v22 + 10) = [v19 messageID];
    *(v22 + 18) = 2082;
    v24 = [v19 guid];

    if (!v24)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v25 = sub_DD94();
    v27 = v26;

    v28 = sub_78B8(v25, v27, &v43);

    *(v22 + 20) = v28;
    _os_log_impl(&dword_0, v20, v21, "Message sent notification: success %{BOOL,public}d messageID %{public}lld guid %{public}s", v22, 0x1Cu);
    sub_8314(v23);

    if (!v18)
    {
LABEL_11:
      sub_4898(v19, 4u);
      return;
    }
  }

  else
  {

    if (!v18)
    {
      goto LABEL_11;
    }
  }

  v29 = [objc_opt_self() sharedFeatureFlags];
  v30 = [v29 isSatelliteContinuityEnabled];

  if (v30)
  {
    v31 = [v42 relayController];
    v32 = [v19 guid];
    v33 = [v42 service];
    v34 = [v33 internalName];

    if (!v34)
    {
      sub_DD94();
      v34 = sub_DD84();
    }

    [v31 messageSent:v32 onService:v34 compatibilityService:IMServiceNameSMS];
  }

  v35 = sub_DD84();
  [v42 didSendMessage:v19 forChat:v35 style:v41];

  v36 = [v19 guid];
  if (!v36)
  {
    goto LABEL_22;
  }

  v37 = v36;
  v38 = [v42 account];
  [v42 notifyDidSendMessageID:v37 account:v38 shouldNotify:1];

  sub_8A04(v19, 0);
}

unint64_t sub_88D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_82CC(&qword_19020, &qword_EFA0);
    v3 = sub_E024();
    v4 = a1 + 32;

    while (1)
    {
      sub_B094(v4, &v13, &qword_19018, &qword_EF98);
      v5 = v13;
      v6 = v14;
      result = sub_7EA4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_AD04(&v15, (v3[7] + 32 * result));
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

void sub_8A04(void *a1, unsigned int a2)
{
  v77 = a2;
  v3 = sub_DD14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v73 - v9;
  v11 = [a1 handle];
  IMStringIsPhoneNumber();

  v12.super.super.isa = sub_E0E4().super.super.isa;
  sub_DD04();
  v13 = [a1 time];
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  sub_DCE4();

  sub_DC94();
  v16 = v15;
  v17 = v15;
  v18 = *(v4 + 8);
  v18(v10, v3);
  v18(v8, v3);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_82CC(&qword_19008, &qword_EF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_EEE0;
  *(inited + 32) = sub_DD94();
  *(inited + 40) = v20;
  isa = sub_E0E4().super.super.isa;
  v22 = sub_ADC8(0, &qword_19010, NSNumber_ptr);
  *(inited + 72) = v22;
  *(inited + 48) = isa;
  *(inited + 80) = sub_DD94();
  *(inited + 88) = v23;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 0;
  *(inited + 128) = sub_DD94();
  *(inited + 136) = v24;
  v25.super.super.isa = sub_DE34().super.super.isa;
  *(inited + 168) = v22;
  *(inited + 144) = v25;
  *(inited + 176) = sub_DD94();
  *(inited + 184) = v26;
  v27.super.super.isa = sub_DE34().super.super.isa;
  *(inited + 216) = v22;
  *(inited + 192) = v27;
  *(inited + 224) = sub_DD94();
  *(inited + 232) = v28;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = 0;
  *(inited + 272) = sub_DD94();
  *(inited + 280) = v29;
  v30.super.super.isa = sub_DE94().super.super.isa;
  *(inited + 312) = v22;
  *(inited + 288) = v30;
  *(inited + 320) = sub_DD94();
  *(inited + 328) = v31;
  *(inited + 360) = v22;
  *(inited + 336) = v12;
  v32 = v12.super.super.isa;
  v33 = sub_88D4(inited);
  swift_setDeallocating();
  sub_82CC(&qword_19018, &qword_EF98);
  swift_arrayDestroy();
  v34 = objc_opt_self();
  v35 = [v34 sharedInstance];
  if (!v35)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v36 = v35;
  v37 = IMMetricsCollectorEventSMSSentMessageSingleComponent;
  sub_52CC(v33);
  v38 = sub_DD54().super.isa;

  [v36 trackEvent:v37 withDictionary:v38];

  v39 = [a1 bodyData];
  if (!v39)
  {
    goto LABEL_17;
  }

  v40 = v39;
  v41 = sub_DC84();
  v43 = v42;

  v44 = v43;
  v45 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (!v45)
    {
      sub_AE10(v41, v43);
      v46 = BYTE6(v43);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v45 != 2)
  {
    sub_AE10(v41, v43);
LABEL_17:
    v46 = 0;
    goto LABEL_18;
  }

  v48 = *(v41 + 16);
  v47 = *(v41 + 24);
  sub_AE10(v41, v44);
  v46 = v47 - v48;
  if (!__OFSUB__(v47, v48))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_14:
  sub_AE10(v41, v44);
  if (__OFSUB__(HIDWORD(v41), v41))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v46 = HIDWORD(v41) - v41;
LABEL_18:
  v49 = [a1 payloadData];
  if (!v49)
  {
LABEL_29:
    v56 = 0;
    goto LABEL_30;
  }

  v50 = v49;
  v51 = sub_DC84();
  v53 = v52;

  v54 = v53;
  v55 = v53 >> 62;
  if ((v53 >> 62) <= 1)
  {
    if (!v55)
    {
      sub_AE10(v51, v53);
      v56 = BYTE6(v53);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (v55 != 2)
  {
    sub_AE10(v51, v53);
    goto LABEL_29;
  }

  v58 = *(v51 + 16);
  v57 = *(v51 + 24);
  sub_AE10(v51, v54);
  v56 = v57 - v58;
  if (!__OFSUB__(v57, v58))
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_26:
  sub_AE10(v51, v54);
  LODWORD(v56) = HIDWORD(v51) - v51;
  if (__OFSUB__(HIDWORD(v51), v51))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v56 = v56;
LABEL_30:
  v59 = __OFADD__(v46, v56);
  v60 = v46 + v56;
  if (v59)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v60 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v75 = v60;
  v76 = v32;
  v61 = [v34 sharedInstance];
  if (v61)
  {
    v62 = v61;

    v74 = sub_DD84();
    v63 = sub_DD84();
    v64 = [a1 originalServiceName];
    v65 = sub_DE94().super.super.isa;
    v66 = sub_DD84();
    v67 = v77;
    v68 = v77 == 0;
    v69 = [a1 handle];
    v70 = [v34 stringForFZErrorType:v67];
    LOBYTE(v72) = v68;
    v71 = v74;
    [v62 trackSentMessageEventOfType:v74 subtype:v63 originalServiceName:v64 messageSize:v75 sendDuration:v65 receiverType:v66 receiverGroupType:0 wasSuccessful:v72 sourceHandle:0 destinationHandle:v69 error:v70];

    return;
  }

LABEL_43:
  __break(1u);
}

unint64_t sub_90B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_82CC(&qword_19000, &qword_EF88);
    v3 = sub_E024();
    v4 = a1 + 32;

    while (1)
    {
      sub_B094(v4, v13, &qword_18FE0, &qword_EF68);
      result = sub_7E60(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_AD04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_91F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_DD84();
  v5 = sub_DD84();
  v6 = IMPhoneNumberRefCopyForPhoneNumber();

  if (!v6)
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v14 = sub_DD34();
    sub_1C54(v14, qword_192D0);
    v15 = sub_DD24();
    v16 = sub_DEC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Couldn't create phone number.", v17, 2u);
    }

    return 0;
  }

  if (!CMFItemCreateWithPhoneNumber())
  {
    if (qword_192C8 != -1)
    {
      swift_once();
    }

    v18 = sub_DD34();
    sub_1C54(v18, qword_192D0);
    v19 = sub_DD24();
    v20 = sub_DEC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Couldn't create phone item.", v21, 2u);
    }

    return 0;
  }

  swift_unknownObjectRetain();
  IsItemBlocked = CMFBlockListIsItemBlocked();
  swift_unknownObjectRelease_n();

  if (!IsItemBlocked)
  {
    return 0;
  }

  if (qword_192C8 != -1)
  {
    swift_once();
  }

  v8 = sub_DD34();
  sub_1C54(v8, qword_192D0);

  v9 = sub_DD24();
  v10 = sub_DEA4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_78B8(a1, a2, &v22);
    _os_log_impl(&dword_0, v9, v10, "Message is blocked for sender handle: %s", v11, 0xCu);
    sub_8314(v12);
  }

  return 1;
}

void sub_9520(void *a1, uint64_t a2)
{
  v4 = [a1 fallbackHash];
  if (v4)
  {
    v5 = v4;
    v6 = sub_DD94();
    v8 = v7;
    v9 = [objc_opt_self() sharedInstance];
    v10 = [v9 sortedMessageItemsWithFallbackHash:v5 inChat:a2 limit:1];

    sub_ADC8(0, &qword_18FD0, IMMessageItem_ptr);
    v11 = sub_DE24();

    if (v11 >> 62)
    {
      if (sub_E014())
      {
LABEL_4:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = sub_DF74();
        }

        else
        {
          if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_42;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        if (qword_192C8 != -1)
        {
          swift_once();
        }

        v14 = sub_DD34();
        sub_1C54(v14, qword_192D0);
        v15 = v13;

        v16 = sub_DD24();
        v17 = sub_DEA4();
        if (!os_log_type_enabled(v16, v17))
        {
          swift_bridgeObjectRelease_n();

LABEL_13:
          v28 = [a1 plainBody];
          if (!v28)
          {
            v29 = [a1 body];
            if (!v29)
            {
              v31 = 0;
              v33 = 0;
LABEL_17:
              v34 = [v15 plainBody];
              if (!v34)
              {
                v35 = [v15 body];
                if (!v35)
                {
                  if (v33)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_36;
                }

                v36 = v35;
                v34 = [v35 string];
              }

              v37 = sub_DD94();
              v39 = v38;

              if (v33)
              {
                if (v39)
                {
                  if (v31 == v37 && v33 == v39)
                  {

                    return;
                  }

                  v40 = sub_E034();

                  if (v40)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_32;
                }

LABEL_31:

LABEL_32:
                v41 = v15;
                v42 = sub_DD24();
                v43 = sub_DEA4();
                if (!os_log_type_enabled(v42, v43))
                {

                  return;
                }

                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                v52 = v45;
                *v44 = 136315138;
                v46 = [v41 guid];

                if (v46)
                {
                  v47 = sub_DD94();
                  v49 = v48;

                  v50 = sub_78B8(v47, v49, &v52);

                  *(v44 + 4) = v50;
                  _os_log_impl(&dword_0, v42, v43, "Potential duplicate %s has different body, not deduplicating", v44, 0xCu);
                  sub_8314(v45);

                  return;
                }

                goto LABEL_43;
              }

              if (v39)
              {
                goto LABEL_31;
              }

LABEL_36:

              return;
            }

            v30 = v29;
            v28 = [v29 string];
          }

          v31 = sub_DD94();
          v33 = v32;

          goto LABEL_17;
        }

        v51 = v6;
        v18 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v18 = 136315394;
        v19 = [v15 guid];
        v20 = v15;
        v21 = v19;
        v22 = v20;

        if (v21)
        {
          v23 = sub_DD94();
          v25 = v24;

          v26 = sub_78B8(v23, v25, &v52);

          *(v18 + 4) = v26;
          *(v18 + 12) = 2080;
          v27 = sub_78B8(v51, v8, &v52);

          *(v18 + 14) = v27;
          _os_log_impl(&dword_0, v16, v17, "Found potential duplicate %s with dedupe ID %s", v18, 0x16u);
          swift_arrayDestroy();

          v15 = v22;
          goto LABEL_13;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }
    }

    else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }
  }
}

void sub_9AD8(uint64_t a1, char *a2, void (**a3)(void))
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = qword_192C0;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_DD34();
    sub_1C54(v9, qword_19620);
    swift_unknownObjectRetain();
    v10 = sub_DD24();
    v11 = sub_DEE4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v7 pendingSatSmsTotalCount];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_0, v10, v11, "Received summary info with %ld total pending messages", v12, 0xCu);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v27 = [objc_opt_self() sharedInstance];
    if (v27)
    {
      v28 = v27;
      v29 = [v7 pendingSatSmsTotalCount];
      v30 = [a2 service];
      v15 = [v30 internalName];

      if (!v15)
      {
        sub_DD94();
        v15 = sub_DD84();
      }

      [v28 updateBadgeForPendingSatelliteMessagesIfNeeded:v29 onService:v15];
      swift_unknownObjectRelease();

      goto LABEL_18;
    }

    _Block_release(a3);
    __break(1u);
LABEL_85:
    _Block_release(a3);
    __break(1u);
    goto LABEL_86;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = objc_allocWithZone(SatelliteSMSIncomingMessage);
    v121 = 0;
    swift_unknownObjectRetain();
    v14 = [v13 initWithIncomingCTMessage:a1 error:&v121];
    if (!v14)
    {
      v39 = v121;
      sub_DC64();

      swift_willThrow();
      swift_unknownObjectRelease();
      if (qword_192C8 != -1)
      {
        swift_once();
      }

      v40 = sub_DD34();
      sub_1C54(v40, qword_192D0);
      swift_errorRetain();
      v22 = sub_DD24();
      v41 = sub_DED4();

      if (os_log_type_enabled(v22, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&dword_0, v22, v41, "Error parsing incoming CT message: %@", v42, 0xCu);
        sub_B0FC(v43, &qword_18EC0, &unk_EEF0);

LABEL_28:
      }

      else
      {
      }

      goto LABEL_19;
    }

    v15 = v14;
    v16 = v121;
    swift_unknownObjectRelease();
    v17 = [v15 sourcePhoneNumber];
    v7 = sub_DD94();
    v19 = v18;

    LOBYTE(v17) = sub_91F4(v7, v19);

    if (v17)
    {
      goto LABEL_18;
    }

    if (!*&a2[OBJC_IVAR___SatelliteSMSServiceSession_state])
    {
LABEL_86:
      _Block_release(a3);
      __break(1u);
      goto LABEL_87;
    }

    v20 = *(**&a2[OBJC_IVAR___SatelliteSMSServiceSession_state + 16] + 96);

    v45 = v20(v15);

    if (v45 >> 62)
    {
      v46 = sub_E014();
      if (v46)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v46 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
      if (v46)
      {
LABEL_32:
        v119 = v46;
        v120 = v45 & 0xC000000000000001;
        if ((v45 & 0xC000000000000001) != 0)
        {
          v47 = sub_DF74();
LABEL_35:
          v48 = [v15 sourcePhoneNumber];
          v7 = sub_DD94();
          v50 = v49;

          v51 = sub_594C(v7, v50);

          if (v51)
          {
            [v51 updateIsDownloadingPendingSatelliteMessages:{objc_msgSend(v15, "pendingCount") > 0}];
            [v51 updatePendingIncomingSatelliteMessageCount:{objc_msgSend(v15, "pendingCount")}];
            v52 = [objc_opt_self() sharedInstance];
            if (!v52)
            {
LABEL_87:
              _Block_release(a3);
              __break(1u);
LABEL_88:
              _Block_release(a3);

              __break(1u);
              return;
            }

            v53 = v52;
            v54 = [v15 pendingTotalCount];
            v55 = [a2 service];
            v56 = [v55 internalName];

            if (!v56)
            {
              sub_DD94();
              v56 = sub_DD84();
            }

            [v53 updateBadgeForPendingSatelliteMessagesIfNeeded:v54 onService:v56];

            sub_9520(v118, v51);
            if ((v57 & 1) == 0)
            {
              v78 = 0;
              while (1)
              {
                if (v120)
                {
                  v79 = sub_DF74();
                }

                else
                {
                  if (v78 >= *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    swift_once();
                    v21 = sub_DD34();
                    sub_1C54(v21, qword_192D0);
                    swift_errorRetain();
                    v22 = sub_DD24();
                    v23 = sub_DED4();

                    if (os_log_type_enabled(v22, v23))
                    {
                      v24 = swift_slowAlloc();
                      v25 = swift_slowAlloc();
                      *v24 = 138412290;
                      swift_errorRetain();
                      v26 = _swift_stdlib_bridgeErrorToNSError();
                      *(v24 + 4) = v26;
                      *v25 = v26;
                      _os_log_impl(&dword_0, v22, v23, "Error converting incoming CT message to IMMessageItem: %@", v24, 0xCu);
                      sub_B0FC(v25, &qword_18EC0, &unk_EEF0);

                      goto LABEL_28;
                    }

                    goto LABEL_19;
                  }

                  v79 = *(v45 + 8 * v78 + 32);
                }

                v80 = v79;
                v81 = v78 + 1;
                if (__OFADD__(v78, 1))
                {
                  __break(1u);
                  goto LABEL_74;
                }

                v82 = [v79 flags];
                if ((~v82 & 0xC0000000000) != 0)
                {
                  v83 = v82 | 0xC0000000000;
                }

                else
                {
                  v83 = v82;
                }

                [v80 setFlags:v83];
                v7 = [a2 tapbackInterpreter];
                v84 = [v7 interpretMessageItem:v80 inChat:v51];

                v85 = [v51 chatIdentifier];
                if (!v85)
                {
                  goto LABEL_85;
                }

                v86 = v85;
                [a2 didReceiveMessage:v84 forChat:v85 style:45 fromIDSID:0];

                ++v78;
                if (v81 == v119)
                {

                  v87 = sub_DD84();
                  IMSetDomainBoolForKey();

                  goto LABEL_19;
                }
              }
            }

            if (qword_192C8 != -1)
            {
              swift_once();
            }

            v58 = sub_DD34();
            sub_1C54(v58, qword_192D0);
            v7 = v118;
            v59 = sub_DD24();
            v60 = sub_DEE4();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              *v61 = 136315394;
              v62 = [v7 guid];
              if (v62)
              {
                v63 = v62;

                v64 = sub_DD94();
                v66 = v65;

                v67 = sub_78B8(v64, v66, &v121);

                *(v61 + 4) = v67;
                *(v61 + 12) = 2080;
                v68 = [v7 fallbackHash];
                if (v68)
                {
                  v69 = v68;
                  v70 = sub_DD94();
                  v72 = v71;
                }

                else
                {
                  v70 = 7104878;
                  v72 = 0xE300000000000000;
                }

                v102 = sub_78B8(v70, v72, &v121);

                *(v61 + 14) = v102;
                _os_log_impl(&dword_0, v59, v60, "Has duplicate of item %s with dedupe ID %s", v61, 0x16u);
                swift_arrayDestroy();

                goto LABEL_18;
              }

              goto LABEL_88;
            }
          }

          else
          {
            if (qword_192C8 != -1)
            {
              swift_once();
            }

            v73 = sub_DD34();
            sub_1C54(v73, qword_192D0);
            swift_unknownObjectRetain();
            v15 = v15;

            v74 = sub_DD24();
            v75 = sub_DED4();

            swift_unknownObjectRelease();

            if (!os_log_type_enabled(v74, v75))
            {

              goto LABEL_19;
            }

            v76 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            *v76 = 136446722;
            if (v120)
            {
              v77 = sub_DF74();
            }

            else
            {
              v77 = *(v45 + 32);
            }

            v88 = v77;

            v89 = [v88 guid];

            if (v89)
            {
              v90 = sub_DD94();
              v92 = v91;
            }

            else
            {
              v90 = 7104878;
              v92 = 0xE300000000000000;
            }

            v93 = sub_78B8(v90, v92, &v121);

            *(v76 + 4) = v93;
            *(v76 + 12) = 2080;
            swift_unknownObjectRetain();
            sub_82CC(&qword_18F30, &qword_EF08);
            v94 = sub_DDD4();
            v96 = sub_78B8(v94, v95, &v121);

            *(v76 + 14) = v96;
            *(v76 + 22) = 2080;
            v97 = [v15 sourcePhoneNumber];
            v98 = sub_DD94();
            v100 = v99;

            v101 = sub_78B8(v98, v100, &v121);

            *(v76 + 24) = v101;
            _os_log_impl(&dword_0, v74, v75, "Couldn't locate a chat to store %{public}s / %s from %s!", v76, 0x20u);
            swift_arrayDestroy();
          }

LABEL_18:

          goto LABEL_19;
        }

        if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
        {
          v47 = *(v45 + 32);
          goto LABEL_35;
        }

        __break(1u);
LABEL_83:
        swift_once();
LABEL_78:
        v103 = sub_DD34();
        sub_1C54(v103, qword_192D0);
        v104 = v15;
        v105 = sub_DD24();
        v106 = sub_DED4();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v107 = 136315394;
          v108 = [v104 uniqueID];
          v109 = sub_DD94();
          v111 = v110;

          v112 = sub_78B8(v109, v111, &v121);

          *(v107 + 4) = v112;
          *(v107 + 12) = 2080;
          v113 = [v104 sourcePhoneNumber];
          v114 = sub_DD94();
          v116 = v115;

          v117 = sub_78B8(v114, v116, &v121);

          *(v107 + 14) = v117;
          _os_log_impl(&dword_0, v105, v106, "Got no message items for message %s from %s!", v107, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_19;
      }
    }

    if (qword_192C8 == -1)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (qword_192C8 != -1)
  {
LABEL_74:
    swift_once();
  }

  v31 = sub_DD34();
  sub_1C54(v31, qword_192D0);
  swift_unknownObjectRetain();
  v32 = sub_DD24();
  v33 = sub_DEC4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v121 = v35;
    *v34 = 136315138;
    swift_getObjectType();
    sub_82CC(&qword_18F28, &qword_EF00);
    v36 = sub_DDD4();
    v38 = sub_78B8(v36, v37, &v121);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "Unknown CT message type: %s", v34, 0xCu);
    sub_8314(v35);
  }

LABEL_19:
  a3[2](a3);
}

id _sSo26SatelliteSMSServiceSessionC0A3SMSE16allowCompressionSbvg_0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2)
    {
      v3 = sub_DD84();
      v4 = sub_DD84();
      v5 = IMGetDomainBoolForKey();

      return (v5 ^ 1u);
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for IMChatStyle()
{
  if (!qword_18FC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_18FC8);
    }
  }
}

_OWORD *sub_AD04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_ADC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_AE10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_AE64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_AEC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_AF08()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_AFA0;

  return sub_4BD8(v4, v5, v6, v2, v3);
}

uint64_t sub_AFA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_82CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B0FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_82CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_B15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_B1A4(uint64_t a1, uint64_t *a2)
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

void sub_B218()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isInternalInstall];

    if (v2)
    {
      v3 = sub_DD84();
      v4 = sub_DD84();
      v5 = IMGetDomainValueForKey();

      if (v5)
      {
        sub_DF24();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12 = v10;
      v13 = v11;
      if (*(&v11 + 1))
      {
        sub_B4CC();
        if (swift_dynamicCast())
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_B464(&v12);
      }
    }

    v6 = [objc_opt_self() sharedInstanceForBagType:1];
    v7 = sub_DD84();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      sub_DF24();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      sub_B4CC();
      if (swift_dynamicCast())
      {
LABEL_15:
        [v9 doubleValue];
      }
    }

    else
    {
      sub_B464(&v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B464(uint64_t a1)
{
  v2 = sub_82CC(&qword_191D0, &qword_EFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_B4CC()
{
  result = qword_19010;
  if (!qword_19010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19010);
  }

  return result;
}

uint64_t sub_B6BC()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_192F0;
  v5 = qword_192F0;
  if (!qword_192F0)
  {
    v6 = *off_14A38;
    v7 = *off_14A48;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_192F0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_B7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B7E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_192F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_B880()
{
  v0 = sub_B6BC();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_B8DC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_192F8;
  v7 = qword_192F8;
  if (!qword_192F8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_B9BC;
    v3[3] = &unk_14A90;
    v3[4] = &v4;
    sub_B9BC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_B9BC(uint64_t a1)
{
  sub_B880();
  result = objc_getClass("CTStewieSatSmsMessageIncoming");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_192F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_BBFC();
    return sub_BA14(v3);
  }

  return result;
}

id sub_BA14()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19300;
  v7 = qword_19300;
  if (!qword_19300)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_BAF4;
    v3[3] = &unk_14A90;
    v3[4] = &v4;
    sub_BAF4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_BADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

OS_os_log *sub_BAF4(uint64_t a1)
{
  sub_B880();
  result = objc_getClass("CTStewieSatSmsMessageOutgoing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_19300 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_BC24();
    return +[(SatelliteSMSUtilities *)v3];
  }

  return result;
}

void sub_BB90(id a1)
{
  qword_19308 = os_log_create("com.apple.Messages", "SatelliteSMS");

  _objc_release_x1();
}

void Date.init(nanosecondsSince1970:)(void *a1)
{
  [a1 doubleValue];
  sub_DCC4();
}

id Date.nanosecondsSince1970.getter()
{
  sub_DCD4();
  v1 = v0 * 1000000000.0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithDouble:v1];
}

uint64_t SatelliteSMSMessageTransformer.delegate.getter()
{
  result = swift_unknownObjectUnownedLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t SatelliteSMSMessageTransformer.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = a2;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t SatelliteSMSMessageTransformer.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v2;
}

Swift::Int SatelliteSMSMessageTransformer.IncomingMessageParseError.hashValue.getter()
{
  sub_E0B4();
  sub_E0C4(0);
  return sub_E0D4();
}

Swift::Int sub_C640()
{
  sub_E0B4();
  sub_E0C4(0);
  return sub_E0D4();
}

void *SatelliteSMSMessageTransformer.messageItems(forIncoming:)(void *a1)
{
  sub_82CC(&qword_19008, &qword_EF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F000;
  *(inited + 32) = sub_DD94();
  *(inited + 40) = v3;
  v4 = [a1 textPayload];
  v5 = sub_DC84();
  v7 = v6;

  *(inited + 72) = &type metadata for Data;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 80) = sub_DD94();
  *(inited + 88) = v8;
  v9 = [a1 codecID];
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = v9;
  v10 = sub_88D4(inited);
  swift_setDeallocating();
  sub_82CC(&qword_19018, &qword_EF98);
  swift_arrayDestroy();
  sub_52CC(v10);

  v11 = [a1 sourcePhoneNumber];
  if (!v11)
  {
    sub_DD94();
    v11 = sub_DD84();
  }

  isa = sub_DD54().super.isa;

  v13 = [objc_opt_self() defusedSatelliteSMSMessageWithDictionary:isa senderID:v11];

  v14 = SatelliteSMSMessageTransformer.messageItems(forIncoming:defusedPayload:)(a1, v13);
  return v14;
}

void *SatelliteSMSMessageTransformer.messageItems(forIncoming:defusedPayload:)(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 texts];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_DE24();

  v8 = *(v7 + 16);
  if (!v8)
  {

LABEL_9:
    sub_D6F4();
    swift_allocError();
    return swift_willThrow();
  }

  v18 = 0;
  v17 = &_swiftEmptyArrayStorage;
  sub_DFB4();
  v9 = 0;
  v10 = (v7 + 40);
  while (v9 < *(v7 + 16))
  {
    v11 = *v10;
    v15[0] = *(v10 - 1);
    v15[1] = v11;

    sub_CA38(v15, v14, a1, &v18, &v16);
    if (v3)
    {
      goto LABEL_11;
    }

    v3 = 0;
    ++v9;

    sub_DF94();
    v12 = v17[2];
    sub_DFC4();
    sub_DFD4();
    sub_DFA4();
    v10 += 2;
    if (v8 == v9)
    {

      return v17;
    }
  }

  __break(1u);
LABEL_11:

  __break(1u);
  return result;
}

double sub_CA38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, double *a4@<X3>, void *a5@<X8>)
{
  v87 = a3;
  v80 = a5;
  v8 = sub_82CC(&qword_192B8, &qword_F220);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v84 = v74 - v10;
  v88 = sub_DD14();
  v83 = *(v88 - 8);
  v11 = *(v83 + 64);
  v12 = __chkstk_darwin(v88);
  v82 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = v74 - v14;
  v15 = sub_DC54();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_DC14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v74 - v23;
  v26 = *a1;
  v25 = a1[1];

  sub_DC44();
  sub_DC24();
  swift_unknownObjectUnownedLoadStrong();
  v76 = a2;
  v27 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v27 + 8))(v24, &_swiftEmptyArrayStorage, ObjectType, v27);
  swift_unknownObjectRelease();
  v29 = *(v18 + 8);
  v85 = v17;
  v77 = v29;
  v78 = v18 + 8;
  v29(v24, v17);
  (*(v18 + 32))(v24, v22, v17);
  v30 = v87;
  v31 = [v87 timestamp];
  [v31 doubleValue];
  v32 = v82;
  sub_DCC4();

  v81 = a4;
  v33 = *a4;
  v34 = v86;
  sub_DCA4();
  v35 = v83;
  v36 = v83 + 8;
  v37 = v32;
  v38 = v88;
  v82 = *(v83 + 8);
  (v82)(v37, v88);
  v39 = [v30 sourcePhoneNumber];
  v74[0] = sub_DD94();
  v74[1] = v40;

  v41 = v84;
  (*(v35 + 16))(v84, v34, v38);
  (*(v35 + 56))(v41, 0, 1, v38);
  sub_DB58();
  v42 = *(v18 + 16);
  v79 = v24;
  v42(v22, v24, v85);
  v43 = sub_DF04();
  v44 = [objc_opt_self() stringGUID];
  if (v44)
  {
    v45 = v44;
    sub_DD94();
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = sub_DD84();

  v49 = v84;
  v50 = v88;
  v51 = (*(v83 + 48))(v84, 1, v88);
  v52 = v76;
  if (v51 == 1)
  {
    isa = 0;
    v75 = v36;
    if (v47)
    {
LABEL_6:
      v54 = sub_DD84();

      goto LABEL_9;
    }
  }

  else
  {
    isa = sub_DCB4().super.isa;
    (v82)(v49, v50);
    v75 = v36;
    if (v47)
    {
      goto LABEL_6;
    }
  }

  v54 = 0;
LABEL_9:
  v55 = [objc_allocWithZone(IMMessageItem) initWithSender:v48 time:isa body:v43 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:v54 threadIdentifier:0];

  swift_unknownObjectUnownedLoadStrong();
  v56 = *(v52 + 24);
  v57 = swift_getObjectType();
  v58 = v87;
  (*(v56 + 16))(v87, v57, v56);
  v60 = v59;
  swift_unknownObjectRelease();
  if (v60)
  {
    v61 = v55;
    v62 = sub_DD84();

    [v61 setDestinationCallerID:v62];
  }

  swift_unknownObjectUnownedLoadStrong();
  v63 = *(v52 + 24);
  v64 = swift_getObjectType();
  v65 = *(v63 + 24);
  v66 = v55;
  v65(v64, v63);
  swift_unknownObjectRelease();
  v67 = sub_DD84();

  [v66 setAccountID:v67];

  v68 = [v58 timestamp];
  v69 = [v68 longLongValue];

  [v66 setReplaceID:v69];
  v70 = [v58 timestamp];
  v71 = [v70 integerValue];

  [v66 setSortID:v71];
  v72 = [v58 uniqueID];
  if (!v72)
  {
    sub_DD94();
    v72 = sub_DD84();
  }

  [v66 setFallbackHash:v72];

  (v82)(v86, v88);
  v77(v79, v85);
  result = *v81 + 2.22044605e-16;
  *v81 = result;
  *v80 = v66;
  return result;
}

Swift::Int SatelliteSMSMessageTransformer.OutgoingMessageParseError.hashValue.getter(char a1)
{
  sub_E0B4();
  sub_E0C4(a1 & 1);
  return sub_E0D4();
}

Swift::Int sub_D24C()
{
  v1 = *v0;
  sub_E0B4();
  sub_E0C4(v1);
  return sub_E0D4();
}

Swift::Int sub_D2C0()
{
  v1 = *v0;
  sub_E0B4();
  sub_E0C4(v1);
  return sub_E0D4();
}

unint64_t SatelliteSMSMessageTransformer.outgoingMessage(forItem:toPhoneNumber:notifyDowngrade:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_DDC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 body];
  if (!v13)
  {
    goto LABEL_8;
  }

  v37[1] = a3;
  v38 = a4;
  v14 = v13;
  v15 = [v13 string];

  v16 = sub_DD94();
  a1 = v17;

  v18 = HIBYTE(a1) & 0xF;
  if ((a1 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_8:
    sub_D748();
    swift_allocError();
    v23 = 0;
    goto LABEL_9;
  }

  sub_DDB4();
  v19 = sub_DDA4();
  v21 = v20;

  (*(v9 + 8))(v12, v8);
  if (v21 >> 60 == 15)
  {
    sub_D748();
    swift_allocError();
    v23 = 1;
LABEL_9:
    *v22 = v23;
    swift_willThrow();
    return a1;
  }

  swift_unknownObjectUnownedLoadStrong();
  v25 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v27 = (*(v25 + 32))(ObjectType, v25);
  swift_unknownObjectRelease();
  if ((v27 & 1) == 0 || (v28 = [objc_opt_self() sharedCompressor], v29 = sub_DF14(), v31 = v30, v33 = v32, v28, v31 >> 60 == 15))
  {
    sub_D79C(v19, v21);
    v33 = 0;
    v29 = v19;
    v31 = v21;
  }

  v34 = objc_allocWithZone(SatelliteSMSOutgoingMessage);
  v35 = sub_DD84();
  isa = sub_DC74().super.isa;
  a1 = [v34 initWithDestinationPhoneNumber:v35 codecID:v33 textPayload:isa notifyDowngrade:v38 & 1];

  sub_AE10(v29, v31);
  sub_D7F0(v19, v21);
  return a1;
}

uint64_t SatelliteSMSMessageTransformer.__deallocating_deinit()
{
  sub_D804(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

BOOL sub_D690(void *a1, uint64_t *a2)
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

unint64_t sub_D6F4()
{
  result = qword_191D8;
  if (!qword_191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_191D8);
  }

  return result;
}

unint64_t sub_D748()
{
  result = qword_191E0;
  if (!qword_191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_191E0);
  }

  return result;
}

uint64_t sub_D79C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_D7F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AE10(a1, a2);
  }

  return a1;
}

unint64_t sub_D830()
{
  result = qword_191E8;
  if (!qword_191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_191E8);
  }

  return result;
}

unint64_t sub_D888()
{
  result = qword_191F0;
  if (!qword_191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_191F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SatelliteSMSMessageTransformer.IncomingMessageParseError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SatelliteSMSMessageTransformer.IncomingMessageParseError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SatelliteSMSMessageTransformer.OutgoingMessageParseError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SatelliteSMSMessageTransformer.OutgoingMessageParseError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_DB58()
{
  result = qword_18F38;
  if (!qword_18F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_18F38);
  }

  return result;
}

uint64_t sub_DBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_82CC(&qword_19018, &qword_EF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}