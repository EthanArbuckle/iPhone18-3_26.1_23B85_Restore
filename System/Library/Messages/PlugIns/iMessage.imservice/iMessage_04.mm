uint64_t sub_AB134(uint64_t result, char a2)
{
  v2 = *(result + 112) & 1;
  v3 = *(result + 136) & 1 | (a2 << 6);
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v3;
  return result;
}

uint64_t sub_AB170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 137))
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

uint64_t sub_AB1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_AB254(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AB260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_AB2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for IMChatStyle()
{
  if (!qword_123F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_123F20);
    }
  }
}

uint64_t sub_AB36C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_AB3C0(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = *(v4 + 16);
  if (a3)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD7B4();
    sub_96A28(v6, qword_1244F8);

    oslog = sub_BD794();
    v7 = sub_BDA84();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      sub_7610(0, &qword_123F48, NSString_ptr);
      sub_AB6B0();
      v10 = sub_BDA24();
      v12 = sub_96A60(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, oslog, v7, "Successfully sent background to participants: %s.", v8, 0xCu);
      sub_97C9C(v9);

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v14 = sub_BD7B4();
    sub_96A28(v14, qword_1244F8);

    oslog = sub_BD794();
    v15 = sub_BDA84();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315394;
      sub_7610(0, &qword_123F48, NSString_ptr);
      sub_AB6B0();
      v18 = sub_BDA24();
      v20 = sub_96A60(v18, v19, &v22);

      *(v16 + 4) = v20;
      *(v16 + 12) = 1024;
      *(v16 + 14) = a4;
      _os_log_impl(&dword_0, oslog, v15, "Error while sending background to participants: %s. Error: %u", v16, 0x12u);
      sub_97C9C(v17);

      goto LABEL_10;
    }
  }
}

unint64_t sub_AB6B0()
{
  result = qword_123F50;
  if (!qword_123F50)
  {
    sub_7610(255, &qword_123F48, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F50);
  }

  return result;
}

void sub_AB718(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = *(v4 + 16);
  if (a3)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD7B4();
    sub_96A28(v6, qword_1244F8);
    v7 = v5;
    oslog = sub_BD794();
    v8 = sub_BDA84();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      v12 = "Successfully sent background to peer devices: %@.";
      v13 = v8;
      v14 = oslog;
      v15 = v9;
      v16 = 12;
LABEL_10:
      _os_log_impl(&dword_0, v14, v13, v12, v15, v16);
      sub_75B0(v10, &qword_123E98, &unk_CEE80);
    }
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v18 = sub_BD7B4();
    sub_96A28(v18, qword_1244F8);
    v19 = v5;
    oslog = sub_BD794();
    v20 = sub_BDA84();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v19;
      *v10 = v19;
      *(v21 + 12) = 1024;
      *(v21 + 14) = a4;
      v22 = v19;
      v12 = "Error while sending background to peer devices: %@. Error: %u";
      v13 = v20;
      v14 = oslog;
      v15 = v21;
      v16 = 18;
      goto LABEL_10;
    }
  }
}

double sub_AB948(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_AB97C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AB9A0(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_AB9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if ((a18 & 0xC0) != 0x80)
  {
  }
}

void sub_ABA5C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 168);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v24 = *(v1 + 120);
  v25[0] = v5;
  *(v25 + 9) = *(v1 + 145);
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v20 = *(v1 + 56);
  v21 = v7;
  v22 = *(v1 + 88);
  v23 = v4;
  v18 = *(v1 + 24);
  v19 = v6;
  MessageServiceSession.UpdateType.rawValue.getter(&v18);
  v16 = v24;
  v17[0] = v25[0];
  *(v17 + 9) = *(v25 + 9);
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v10 = v18;
  v11 = v19;
  sub_BD8B4();
  v8 = sub_BD884();

  v9 = [objc_opt_self() contextWithKnownSender:1 serviceName:{v8, v10, v11, v12, v13, v14, v15, v16, v17[0], *&v17[1], *(&v17[1] + 1)}];

  sub_A0458(&v10, v3, 0, 0, v9);
}

void sub_ABBE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = [v1 transcriptBackgroundTransfersCurrentlyDownloading];
  v4 = sub_BD884();
  [v5 removeObject:v4];
}

uint64_t sub_ABCAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AB36C(a1, a2);
  }

  return a1;
}

void sub_ABCC0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong transcriptBackgroundTransfersCurrentlyDownloading];

    v7 = sub_BD884();
    [v6 removeObject:v7];
  }
}

unint64_t sub_ABD60()
{
  result = qword_123F80;
  if (!qword_123F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F80);
  }

  return result;
}

void sub_ABDB4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD7B4();
    sub_96A28(v5, qword_1244F8);
    sub_ABB78(v2 + 16, v35);
    sub_AC390(a1, 1);
    v6 = sub_BD794();
    v7 = sub_BDA64();
    sub_ABBB0(v3 + 16);
    sub_AC39C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v35[0] = v10;
      *v8 = 136315394;
      v11 = *(v3 + 32);
      if (v11)
      {
        v12 = *(v3 + 24);
        v13 = v11;
      }

      else
      {
        v12 = 0x3E6C696E3CLL;
        v13 = 0xE500000000000000;
      }

      v24 = sub_96A60(v12, v13, v35);

      *(v8 + 4) = v24;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v25;
      *v9 = v25;
      _os_log_impl(&dword_0, v6, v7, "Failed to Blast Door data for background with transferID: %s. Error: %@", v8, 0x16u);
      sub_75B0(v9, &qword_123E98, &unk_CEE80);

      sub_97C9C(v10);
    }

    goto LABEL_24;
  }

  v14 = *(v2 + 160);
  v15 = *(v2 + 168);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v16 = sub_BD7B4();
  sub_96A28(v16, qword_1244F8);
  sub_ABB78(v2 + 16, v35);
  swift_errorRetain();
  v17 = sub_BD794();
  v18 = sub_BDA84();
  sub_ABBB0(v3 + 16);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v35[0] = v21;
    *v19 = 136315394;
    if (*(v3 + 32))
    {
      v22 = *(v3 + 24);
      v23 = *(v3 + 32);
    }

    else
    {
      v22 = 0x3E6C696E3CLL;
      v23 = 0xE500000000000000;
    }

    v26 = sub_96A60(v22, v23, v35);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2112;
    if (v14)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    *(v19 + 14) = v27;
    *v20 = v28;
    _os_log_impl(&dword_0, v17, v18, "Successfully blastdoor'd data for background with transferID: %s. Error: %@", v19, 0x16u);
    sub_75B0(v20, &qword_123E98, &unk_CEE80);

    sub_97C9C(v21);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v30 = *(v3 + 352);
    v36[0] = *(v3 + 368);
    *(v36 + 9) = *(v3 + 377);
    v31 = *(v3 + 304);
    v35[2] = *(v3 + 288);
    v35[3] = v31;
    v32 = *(v3 + 320);
    v35[5] = *(v3 + 336);
    v35[6] = v30;
    v35[4] = v32;
    v33 = *(v3 + 272);
    v35[0] = *(v3 + 256);
    v35[1] = v33;
    if (sub_A9770(v35) == 1)
    {
      sub_2748(v35);
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }

    sub_9D51C(v3 + 176, v34, 0, 0xB000000000000000, 0, 0);
LABEL_24:
  }
}

uint64_t sub_AC284(char a1, void *a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a1)
  {
    if (!a2)
    {
      return v4(1);
    }
  }

  else if (!a2)
  {
    v7 = objc_allocWithZone(NSError);
    v8 = sub_BD884();
    v6 = [v7 initWithDomain:v8 code:0 userInfo:0];

    goto LABEL_7;
  }

  v6 = a2;
LABEL_7:
  swift_errorRetain();
  (v4)(v6, 1);
}

uint64_t sub_AC390(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_AC39C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_AC3A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_AC3F0(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v88 = *(v1 + 104);
  v5 = *(v1 + 112);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD7B4();
  sub_96A28(v6, qword_1244F8);
  v7 = sub_BD794();
  v8 = sub_BDA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "Poster is sensitive: %{BOOL}d.", v9, 8u);
  }

  v10 = *(v2 + 72);
  sub_94E7C(v10, *(v2 + 64), a1 & 1);
  v11 = [v4 chatIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = v5;
    v14 = a1;
    v15 = [v4 style];
    v16 = [v88 broadcasterForChatListeners];
    v17 = [v88 account];
    v18 = [v17 accountID];

    if (!v18)
    {
      sub_BD8B4();
      v18 = sub_BD884();
    }

    [v16 transcriptBackgroundUpdatedForChatIdentifier:v12 style:v15 account:v18 userInfo:0];

    swift_unknownObjectRelease();
    a1 = v14;
    v19 = v13;
  }

  else
  {
    v87 = v5;
    v20 = v4;
    v21 = sub_BD794();
    v22 = sub_BDA64();
    if (os_log_type_enabled(v21, v22))
    {
      v86 = a1;
      v23 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v91[0] = v85;
      *v23 = 16777986;
      *(v23 + 4) = [v20 style];

      *(v23 + 5) = 2080;
      v24 = [v20 chatIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_BD8B4();
        v28 = v27;
      }

      else
      {
        v28 = 0xE500000000000000;
        v26 = 0x3E6C696E3CLL;
      }

      v82 = sub_96A60(v26, v28, v91);

      *(v23 + 7) = v82;
      *(v23 + 15) = 2112;
      *(v23 + 17) = v20;
      *v84 = v20;
      v83 = v20;
      _os_log_impl(&dword_0, v21, v22, "No valid IMChatStyle or chatIdentifier found on chat. Style: %hhu. Chat identifier: %s, chat: %@", v23, 0x19u);
      sub_75B0(v84, &qword_123E98, &unk_CEE80);

      sub_97C9C(v85);

      v19 = v87;
      a1 = v86;
    }

    else
    {

      v19 = v5;
    }
  }

  v92[0] = sub_BD8B4();
  v92[1] = v29;
  sub_BDBC4();
  if (*(v10 + 16) && (v30 = sub_97008(v91), (v31 & 1) != 0))
  {
    sub_97D3C(*(v10 + 56) + 32 * v30, v92);
    sub_97CE8(v91);
    if (swift_dynamicCast())
    {
      v32 = v90;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v2 + 80);
    if (!*(v2 + 88))
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_97CE8(v91);
    v32 = 0;
    v35 = *(v2 + 80);
    if (!*(v2 + 88))
    {
LABEL_19:
      v34 = 0;
      goto LABEL_25;
    }
  }

  v36 = a1;
  v37 = sub_BD884();
  v38 = [v37 _stripFZIDPrefix];

  if (v38)
  {
    sub_BD8B4();
    v34 = v39;
  }

  else
  {
    v34 = 0;
  }

  a1 = v36;
LABEL_25:
  v40 = [objc_opt_self() contextWithAssetChangeType:1 isHidden:*(v2 + 96) hasSensitiveContent:a1 & 1];
  if (v19 == 1)
  {

LABEL_38:
    v58 = sub_BD794();
    v59 = sub_BDA84();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v91[0] = v61;
      *v60 = 136315138;
      v62 = 0xE700000000000000;
      v63 = 0xD000000000000015;
      if (v19 == 1)
      {
        v62 = 0x80000000000DCB80;
      }

      else
      {
        v63 = 0x68736572666572;
      }

      if (v19)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0xD000000000000010;
      }

      if (v19)
      {
        v65 = v62;
      }

      else
      {
        v65 = 0x80000000000DCBA0;
      }

      v66 = sub_96A60(v64, v65, v91);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_0, v58, v59, "Did not broadcast asset change status item. Update type: %s.", v60, 0xCu);
      sub_97C9C(v61);
    }

    return;
  }

  if (v34)
  {
    v41 = sub_BD884();

    if (v32)
    {
LABEL_29:
      v42 = sub_BD884();

      goto LABEL_32;
    }
  }

  else
  {
    v41 = 0;
    if (v32)
    {
      goto LABEL_29;
    }
  }

  v42 = 0;
LABEL_32:
  v43 = [v88 generateAndStoreAssetChangeStatusItemForChat:v4 sender:v41 fileTransferGuid:v42 assetStatusChange:v40];

  if (!v43)
  {
    goto LABEL_38;
  }

  v44 = [v4 chatIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = [v4 style];
    v47 = [v88 broadcasterForChatListeners];
    v48 = [v88 account];
    v49 = [v48 accountID];

    if (!v49)
    {
      sub_BD8B4();
      v49 = sub_BD884();
    }

    v50 = [v4 groupID];
    if (v50)
    {
      v89 = v49;
      v51 = v45;
      v52 = v40;
      v53 = v47;
      v54 = v43;
      v55 = v46;
      v56 = v19;
      v57 = v50;
      sub_BD8B4();

      v19 = v56;
      v46 = v55;
      v43 = v54;
      v47 = v53;
      v40 = v52;
      v45 = v51;
      v49 = v89;
    }

    v73 = sub_BD884();

    v74 = [v4 personCentricID];
    [v47 account:v49 chat:v45 style:v46 chatProperties:0 groupID:v73 chatPersonCentricID:v74 messageReceived:v43];

    swift_unknownObjectRelease();
    v75 = sub_BD794();
    v76 = sub_BDA84();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v91[0] = v78;
      *v77 = 136315138;
      if (v19)
      {
        v79 = 0x68736572666572;
      }

      else
      {
        v79 = 0xD000000000000010;
      }

      if (v19)
      {
        v80 = 0xE700000000000000;
      }

      else
      {
        v80 = 0x80000000000DCBA0;
      }

      v81 = sub_96A60(v79, v80, v91);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_0, v75, v76, "Generated and broadcasted asset change status item. Update type: %s.", v77, 0xCu);
      sub_97C9C(v78);
    }
  }

  else
  {
    v67 = v4;
    v68 = sub_BD794();
    v69 = sub_BDA64();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 16777730;
      *(v70 + 4) = [v67 style];

      *(v70 + 5) = 2112;
      *(v70 + 7) = v67;
      *v71 = v4;
      v72 = v67;
      _os_log_impl(&dword_0, v68, v69, "Missing chatIdentifier or chatStyle on chat: ChatStyle: %hhu, %@", v70, 0xFu);
      sub_75B0(v71, &qword_123E98, &unk_CEE80);
    }

    else
    {
    }
  }
}

double sub_ACE88(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0x1FFFFFFFELL;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_ACEB0(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0xC0;
  return result;
}

uint64_t sub_ACEDC(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 112) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v1 & 1 | 0x80;
  return result;
}

uint64_t sub_ACF08(uint64_t result)
{
  v1 = *(result + 112) & 1;
  v2 = *(result + 136) & 1;
  *(result + 96) &= 1uLL;
  *(result + 112) = v1;
  *(result + 136) = v2;
  return result;
}

uint64_t type metadata accessor for BackgroundUploadContext()
{
  result = qword_124690;
  if (!qword_124690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ACF94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_94950(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_ACFFC(unint64_t a1, char a2)
{
  v4 = *(v2 + 48);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD7B4();
    sub_96A28(v5, qword_1244F8);
    sub_ADCB0(a1, 1);
    v6 = v4;
    oslog = sub_BD794();
    v7 = sub_BDA64();

    sub_ADCBC(a1, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      sub_ADCB0(a1, 1);
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&dword_0, oslog, v7, "Failed to upload background for chat %@. Error: %@", v8, 0x16u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();

      sub_ADCBC(a1, 1);
    }

    else
    {

      sub_ADCBC(a1, 1);
    }
  }

  else
  {
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    v14 = *(v2 + 32);
    v15 = *(v2 + 64);
    v28 = *(v2 + 56);
    v29 = *(v2 + 40);
    osloga = *(v2 + 72);
    v16 = qword_1244F0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_BD7B4();
    sub_96A28(v17, qword_1244F8);

    v18 = sub_BD794();
    v19 = sub_BDA84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_96A60(v13, v12, v33);
      _os_log_impl(&dword_0, v18, v19, "Successfully uploaded background with transferID %s.", v20, 0xCu);
      sub_97C9C(v21);
    }

    v22 = sub_BD8B4();
    v24 = v23;
    v25 = 1;
    if (v14)
    {
      v25 = 2;
    }

    v34 = &type metadata for Int;
    v33[0] = v25;
    sub_94D98(v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_97558(v32, v22, v24, isUniquelyReferenced_nonNull_native);

    sub_9BBD0(a1, v4, v28, v15);
    v27 = sub_9CF94(a1);

    sub_94E7C(v27, osloga, 0);
  }
}

uint64_t sub_AD408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundUploadContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AD46C(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundUploadContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_AD4C8(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_AD4D8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_AD4E8()
{
  result = qword_123FB0;
  if (!qword_123FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123FB0);
  }

  return result;
}

uint64_t sub_AD53C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_AD590(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_AD53C(a1, a2);
  }

  return a1;
}

uint64_t sub_AD5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundUploadContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_AD608(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v14 = *(sub_BD544() - 8);
  v15 = (*(v14 + 64) + ((*(v14 + 80) + 16) & ~*(v14 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for BackgroundUploadContext();
  v17 = (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(v16 - 8) + 80) + 8) & ~*(*(v16 - 8) + 80);
  v48 = *(v12 + v15);
  v18 = v12 + ((*(*(v16 - 8) + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v53 = *v18;
  v50 = *(v12 + v15 + 8);
  v51 = *(v18 + 8);
  v19 = [objc_opt_self() defaultManager];
  sub_BD4C4();
  v20 = sub_BD884();

  *&v64[0] = 0;
  v21 = [v19 removeItemAtPath:v20 error:v64];

  if (v21)
  {
    v22 = *&v64[0];
  }

  else
  {
    v23 = *&v64[0];
    sub_BD4A4();

    swift_willThrow();
  }

  if ((a3 & 1) != 0 && a8 && *(&a9 + 1) >> 60 != 15 && *(&a10 + 1) && *(&a11 + 1) >> 60 != 15)
  {
    v24 = v12 + v17;

    sub_AD590(a9, *(&a9 + 1));

    sub_AD590(a11, *(&a11 + 1));
    v63 = sub_97980(_swiftEmptyArrayStorage);
    v25 = sub_BD584(0);
    v27 = v26;
    v28 = sub_BD584(0);
    v30 = *(v24 + *(v16 + 44));
    if (*(v24 + *(v16 + 36)))
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    *&v56 = v48;
    *(&v56 + 1) = v50;
    *&v57 = a7;
    *(&v57 + 1) = a8;
    *&v58 = v25;
    *(&v58 + 1) = v27;
    v59 = a10;
    *&v60 = v28;
    *(&v60 + 1) = v29;
    *&v61 = a12;
    *(&v61 + 1) = 1;
    *&v62 = v30;
    *(&v62 + 1) = v31;
    v64[0] = v56;
    v64[1] = v57;
    v64[5] = v61;
    v64[6] = v62;
    v64[3] = a10;
    v64[4] = v60;
    v64[2] = v58;

    sub_A8648(v64);
    sub_ACE58(&v56);
    v53(v63, 0);
    sub_ABCAC(a9, *(&a9 + 1));
    sub_ABCAC(a11, *(&a11 + 1));
  }

  else if (a4)
  {
    swift_errorRetain();
    v53(a4, 1);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v32 = sub_BD7B4();
    sub_96A28(v32, qword_1244F8);

    sub_AD590(a9, *(&a9 + 1));

    sub_AD590(a11, *(&a11 + 1));

    v33 = sub_BD794();
    v34 = sub_BDA64();

    sub_ABCAC(a9, *(&a9 + 1));

    sub_ABCAC(a11, *(&a11 + 1));
    if (os_log_type_enabled(v33, v34))
    {
      v52 = v34;
      v35 = swift_slowAlloc();
      *&v56 = swift_slowAlloc();
      *v35 = 67110402;
      *(v35 + 4) = a3 & 1;
      *(v35 + 8) = 2080;
      *(v35 + 10) = sub_96A60(v48, v50, &v56);
      *(v35 + 18) = 2080;
      if (a8)
      {
        v36 = a7;
      }

      else
      {
        v36 = 0x3E6C696E3CLL;
      }

      if (a8)
      {
        v37 = a8;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      v38 = sub_96A60(v36, v37, &v56);

      *(v35 + 20) = v38;
      *(v35 + 28) = 2080;
      v64[0] = a9;
      sub_AD590(a9, *(&a9 + 1));
      sub_94950(&qword_123FC0, &unk_CE8B0);
      v39 = sub_BD8C4();
      v41 = sub_96A60(v39, v40, &v56);

      *(v35 + 30) = v41;
      *(v35 + 38) = 2080;
      if (*(&a10 + 1))
      {
        v42 = a10;
      }

      else
      {
        v42 = 0x3E6C696E3CLL;
      }

      if (*(&a10 + 1))
      {
        v43 = *(&a10 + 1);
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v44 = sub_96A60(v42, v43, &v56);

      *(v35 + 40) = v44;
      *(v35 + 48) = 2080;
      v64[0] = a11;
      sub_AD590(a11, *(&a11 + 1));
      v45 = sub_BD8C4();
      v47 = sub_96A60(v45, v46, &v56);

      *(v35 + 50) = v47;
      _os_log_impl(&dword_0, v33, v52, "Failed to get necessary transfer info from background upload. Aborting send. Success: %{BOOL}d. TransferID: %s Owner ID: %s. Signature: %s. Request URL: %s. Encryption key: %s", v35, 0x3Au);
      swift_arrayDestroy();
    }
  }
}

void *sub_ADC6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_ADCB0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_ADCBC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_ADCC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_AE02C;

  return sub_A68D0(a1, v5);
}

uint64_t sub_ADD80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_A7F18;

  return sub_A68D0(a1, v5);
}

uint64_t sub_ADE60()
{
  result = sub_BD544();
  if (v1 <= 0x3F)
  {
    result = sub_7610(319, &qword_124020, IMDChat_ptr);
    if (v2 <= 0x3F)
    {
      result = sub_7610(319, &qword_123E48, IDSAccount_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_ADF38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_ADF5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_ADFA4(uint64_t result, int a2, int a3)
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
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id MessageServiceSession.calculateReachability(with:responseHandler:)(void *a1, uint64_t a2)
{
  result = [objc_opt_self() sharedAccountController];
  if (result)
  {
    v6 = result;
    v7 = [a1 accountID];
    if (!v7)
    {
      sub_BD8B4();
      v7 = sub_BD884();
    }

    v8 = [v6 accountForAccountID:v7];

    if (v8)
    {
      v9 = [v8 loginID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_BD8B4();
        v13 = v12;

        goto LABEL_9;
      }
    }

    v11 = 0;
    v13 = 0;
LABEL_9:
    swift_beginAccess();
    v14 = objc_getAssociatedObject(v2, &unk_124068);
    swift_endAccess();
    if (v14)
    {
      sub_BDB24();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      type metadata accessor for MessageReachabilityController();
      if (swift_dynamicCast())
      {
        v15 = v19;
LABEL_17:
        (*(*v15 + 128))(a1, a2, v11, v13);
      }
    }

    else
    {
      sub_94DA8(v22);
    }

    type metadata accessor for MessageReachabilityController();
    type metadata accessor for MessageServiceReachabilityDelegate();
    v16 = v2;
    v17 = sub_927A4(v16);
    v18 = sub_AE368();
    v15 = MessageReachabilityController.__allocating_init(delegate:)(v17, v18);
    swift_beginAccess();

    objc_setAssociatedObject(v16, &unk_124068, v15, &dword_0 + 1);
    swift_endAccess();

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_AE368()
{
  result = qword_124070;
  if (!qword_124070)
  {
    type metadata accessor for MessageServiceReachabilityDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124070);
  }

  return result;
}

uint64_t sub_AE3C0()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1246A8);
  sub_96A28(v0, qword_1246A8);
  sub_BD784();
  return sub_BD7A4();
}

Swift::Void __swiftcall MessageServiceSession.requestBackgroundsFromRecentChatsIfNeeded()()
{
  v78 = "ServiceForSending";
  v1 = sub_BD884();
  v2 = sub_BD884();
  v3 = IMGetCachedDomainIntForKeyWithDefaultValue();

  if (v3 <= 0)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 existingChatsFilteredUsingPredicate:0 sortedUsingLastMessageDateAscending:0 limit:30];

    sub_AEF60();
    v13 = sub_BD954();

    if (qword_1246A0 != -1)
    {
      swift_once();
    }

    v14 = sub_BD7B4();
    sub_96A28(v14, qword_1246A8);

    v15 = sub_BD794();
    LOBYTE(v16) = sub_BDA84();
    v17 = v13 >> 62;
    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_14;
    }

    v0 = swift_slowAlloc();
    *v0 = 134217984;
    if (v17)
    {
      goto LABEL_75;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); ; i = sub_BDCC4())
    {
      *(v0 + 4) = i;

      _os_log_impl(&dword_0, v15, v16, "Got %ld chats to request backgrounds for.", v0, 0xCu);

LABEL_14:
      if (v17)
      {
        v16 = sub_BDCC4();
        if (!v16)
        {
LABEL_67:

          v74 = sub_BD794();
          v75 = sub_BDA84();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 134217984;
            *(v76 + 4) = 1;
            _os_log_impl(&dword_0, v74, v75, "Done proactively requesting backgrounds. Setting currentProactiveRequestVersion: %ld", v76, 0xCu);
          }

          v77 = sub_BD884();
          v86 = sub_BD884();
          IMSetDomainIntForKey();

LABEL_70:
          v19 = v86;
          goto LABEL_71;
        }
      }

      else
      {
        v16 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        if (!v16)
        {
          goto LABEL_67;
        }
      }

      if (v16 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_75:
      ;
    }

    v20 = 0;
    v85 = v13 & 0xC000000000000001;
    v79 = v13;
    v81 = v16;
    while (1)
    {
      if (v85)
      {
        v23 = sub_BDC34();
      }

      else
      {
        v23 = *(v13 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = [v23 chatIdentifier];
      if (v25)
      {
        v26 = v25;
        v27 = [v24 service];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 internalName];

          if (!v29)
          {
            sub_BD8B4();
            v29 = sub_BD884();
          }

          v30 = [objc_opt_self() sharedInstance];
          v31 = [v30 lastIncomingMessageForChatWithIdentifier:v26 chatStyle:objc_msgSend(v24 onService:{"style"), v29}];

          v32 = [v24 lastAddressedLocalHandle];
          if (v32 && (v33 = v32, sub_BD8B4(), v33, v34 = sub_BD884(), , v35 = [v34 _bestGuessURI], v34, v35))
          {
            v84 = sub_BD8B4();
            v37 = v36;

            v82 = v31;
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v84 = 0;
            v37 = 0;
            v82 = v31;
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          v38 = [v31 sender];
          if (v38 && (v39 = v38, sub_BD8B4(), v39, v40 = sub_BD884(), , v41 = [v40 _bestGuessURI], v40, v41))
          {
            v83 = sub_BD8B4();
            v43 = v42;
          }

          else
          {
LABEL_38:
            v83 = 0;
            v43 = 0;
          }

          v44 = v24;

          v45 = sub_BD794();
          v46 = sub_BDA84();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v47 = 136315650;
            if (v37)
            {
              v49 = v84;
            }

            else
            {
              v49 = 0x3E6C696E3CLL;
            }

            if (v37)
            {
              v50 = v37;
            }

            else
            {
              v50 = 0xE500000000000000;
            }

            v51 = sub_96A60(v49, v50, &v87);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2080;
            if (v43)
            {
              v52 = v83;
            }

            else
            {
              v52 = 0x3E6C696E3CLL;
            }

            if (v43)
            {
              v53 = v43;
            }

            else
            {
              v53 = 0xE500000000000000;
            }

            v54 = sub_96A60(v52, v53, &v87);
            v13 = v79;

            *(v47 + 14) = v54;
            *(v47 + 22) = 2112;
            *(v47 + 24) = v44;
            *v48 = v44;
            v55 = v44;
            _os_log_impl(&dword_0, v45, v46, "Requesting from %s to %s, on chat %@", v47, 0x20u);
            sub_AEFAC(v48);

            swift_arrayDestroy();
          }

          v56 = v44;
          if (v43)
          {
            v21 = sub_BD884();

            if (!v37)
            {
LABEL_55:
              v22 = 0;
              goto LABEL_20;
            }
          }

          else
          {
            v21 = 0;
            if (!v37)
            {
              goto LABEL_55;
            }
          }

          v22 = sub_BD884();

LABEL_20:
          [v80 requestTranscriptBackground:v56 toIdentifier:v21 fromIdentifier:v22 messageIsFromStorage:0];

          goto LABEL_21;
        }
      }

      v57 = v24;
      v58 = sub_BD794();
      v59 = sub_BDA84();

      if (!os_log_type_enabled(v58, v59))
      {

        goto LABEL_22;
      }

      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v60 = 136315394;
      v61 = [v57 chatIdentifier];
      if (v61)
      {
        v62 = v61;
        v63 = sub_BD8B4();
        v65 = v64;
      }

      else
      {
        v65 = 0xE500000000000000;
        v63 = 0x3E6C696E3CLL;
      }

      v66 = sub_96A60(v63, v65, &v87);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v67 = [v57 service];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 internalName];

        v70 = sub_BD8B4();
        v72 = v71;
      }

      else
      {
        v72 = 0xE500000000000000;
        v70 = 0x3E6C696E3CLL;
      }

      v73 = sub_96A60(v70, v72, &v87);

      *(v60 + 14) = v73;
      _os_log_impl(&dword_0, v58, v59, "Could not find chat identifier %s or service name %s", v60, 0x16u);
      swift_arrayDestroy();

      v13 = v79;
LABEL_21:
      v16 = v81;
LABEL_22:
      if (v16 == ++v20)
      {
        goto LABEL_67;
      }
    }
  }

  if (qword_1246A0 != -1)
  {
    swift_once();
  }

  v4 = sub_BD7B4();
  sub_96A28(v4, qword_1246A8);
  v5 = v80;
  v86 = sub_BD794();
  v6 = sub_BDA84();
  if (os_log_type_enabled(v86, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = 1;
    *(v7 + 12) = 2048;
    v8 = sub_BD884();
    v9 = sub_BD884();
    v10 = IMGetCachedDomainIntForKeyWithDefaultValue();

    *(v7 + 14) = v10;
    _os_log_impl(&dword_0, v86, v6, "Not proactively requesting backgrounds. currentProactiveRequestVersion: %ld, lastProactiveRequestVersion: %ld", v7, 0x16u);

    goto LABEL_70;
  }

  v19 = v5;
LABEL_71:
}

unint64_t sub_AEF60()
{
  result = qword_124020;
  if (!qword_124020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_124020);
  }

  return result;
}

uint64_t sub_AEFAC(uint64_t a1)
{
  v2 = sub_94950(&qword_123E98, &unk_CEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_AF028()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

Swift::Int sub_AF09C()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

id CollaborationDeliveryRequest.__allocating_init(recipients:message:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients] = a1;
  *&v5[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CollaborationDeliveryRequest.init(recipients:message:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients] = a1;
  *&v2[OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollaborationDeliveryRequest();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t CollaborationDeliveryRequest.send()()
{
  v1[9] = v0;
  v2 = *(*(sub_94950(&qword_123ED0, &unk_CE4D0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = sub_BD544();
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_AF334, 0, 0);
}

uint64_t sub_AF334()
{
  v1 = [*(v0[9] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message) collaborationInitiationRequestInfo];
  v0[14] = v1;
  if (!v1)
  {
    sub_AFFF0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_34:
    v43 = v0[13];
    v44 = v0[10];

    v45 = v0[1];

    return v45();
  }

  v2 = v1;
  v3 = [v1 type];
  if (v3 > 1)
  {
    if (v3 == &dword_0 + 3)
    {
      v25 = [v2 metadata];
      v0[20] = v25;
      if (v25)
      {
        v7 = v25;
        v26 = [v2 url];
        if (v26)
        {
          v78 = v7;
          v27 = v0[13];
          v28 = v0[9];
          v29 = v26;
          sub_BD504();

          v30 = 0;
          v31 = *(v28 + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients);
          v32 = *(v31 + 16);
          v33 = v31 + 40;
LABEL_24:
          v34 = (v33 + 16 * v30);
          while (v32 != v30)
          {
            if (v30 >= *(v31 + 16))
            {
LABEL_44:
              __break(1u);
              return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v8, v9, v10, v11);
            }

            v35 = v34 + 2;
            ++v30;
            v36 = *(v34 - 1);
            v37 = *v34;
            v38 = objc_opt_self();

            v39 = sub_BD884();
            v40 = [v38 normalizedHandleWithDestinationID:v39];

            v34 = v35;
            if (v40)
            {
              sub_BD934();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v41 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
                sub_BD974();
              }

              v8 = sub_BD984();
              v33 = v31 + 40;
              goto LABEL_24;
            }
          }

          v62 = v0[12];
          v61 = v0[13];
          v63 = v0[10];
          v64 = v0[11];
          v65 = v0[9];
          sub_B4240(_swiftEmptyArrayStorage);

          v66 = [v2 options];
          (*(v62 + 16))(v63, v61, v64);
          (*(v62 + 56))(v63, 0, 1, v64);
          v67 = sub_BD6D4();
          v68 = *(v67 + 48);
          v69 = *(v67 + 52);
          swift_allocObject();
          v70 = v78;
          v71 = sub_BD6A4();
          v0[21] = v71;
          v72 = *&stru_68.segname[swift_isaMask & *v65];
          v80 = (v72 + *v72);
          v73 = v72[1];
          v74 = swift_task_alloc();
          v0[22] = v74;
          *v74 = v0;
          v74[1] = sub_AFCD4;
          v75 = v0[9];
          v59 = v71;
          v60 = v80;

          return v60(v59);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v3 != &dword_0 + 2)
      {
        goto LABEL_18;
      }

      v6 = [v2 share];
      v0[15] = v6;
      if (v6)
      {
        v7 = v6;
        v8 = [v2 containerSetupInfo];
        v0[16] = v8;
        if (v8)
        {
          v76 = v8;
          v77 = v7;
          v12 = 0;
          v13 = *(v0[9] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients);
          v14 = *(v13 + 16);
          v15 = v13 + 40;
LABEL_11:
          v16 = (v15 + 16 * v12);
          while (v14 != v12)
          {
            if (v12 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_44;
            }

            v17 = v16 + 2;
            ++v12;
            v18 = *(v16 - 1);
            v19 = *v16;
            v20 = objc_opt_self();

            v21 = sub_BD884();
            v22 = [v20 normalizedHandleWithDestinationID:v21];

            v16 = v17;
            if (v22)
            {
              sub_BD934();
              if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v23 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
                sub_BD974();
              }

              v8 = sub_BD984();
              v15 = v13 + 40;
              goto LABEL_11;
            }
          }

          v47 = v0[9];
          sub_B4240(_swiftEmptyArrayStorage);

          v48 = [v2 options];
          v49 = sub_BD674();
          v50 = *(v49 + 48);
          v51 = *(v49 + 52);
          swift_allocObject();
          v52 = v77;
          v53 = v76;
          v54 = sub_BD644();
          v0[17] = v54;
          v55 = *&stru_68.segname[(swift_isaMask & *v47) - 8];
          v79 = (v55 + *v55);
          v56 = v55[1];
          v57 = swift_task_alloc();
          v0[18] = v57;
          *v57 = v0;
          v57[1] = sub_AFB20;
          v58 = v0[9];
          v59 = v54;
          v60 = v79;

          return v60(v59);
        }

LABEL_31:
      }
    }

    sub_AFFF0();
    swift_allocError();
    *v42 = 0;
    goto LABEL_33;
  }

  if (v3 <= 1)
  {
    sub_AFFF0();
    swift_allocError();
    *v4 = 2;
LABEL_33:
    swift_willThrow();

    goto LABEL_34;
  }

LABEL_18:
  v24 = v3;
  type metadata accessor for IMCollaborationInitiationRequestType();
  v0[8] = v24;
  v11 = &type metadata for Int;
  v9 = v0 + 8;
  v10 = v8;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v8, v9, v10, v11);
}

uint64_t sub_AFB20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[18];
  v8 = *v2;
  v4[19] = v1;

  if (v1)
  {
    v6 = sub_AFEAC;
  }

  else
  {
    v6 = sub_AFC3C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_AFC3C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[3];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_AFCD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[22];
  v8 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = sub_AFF3C;
  }

  else
  {
    v6 = sub_AFDF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_AFDF0()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 48);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_AFEAC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_AFF3C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 184);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_AFFF0()
{
  result = qword_124088;
  if (!qword_124088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124088);
  }

  return result;
}

void type metadata accessor for IMCollaborationInitiationRequestType()
{
  if (!qword_1240E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1240E0);
    }
  }
}

uint64_t sub_B0208(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_B02B0;

  return CollaborationDeliveryRequest.send()();
}

uint64_t sub_B02B0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_BD494();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_94950(&qword_1240A8, &qword_CE9A8);
    sub_7610(0, &qword_1240A0, IMMessageItem_ptr);
    sub_B4CC8();
    isa = sub_BD834().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_B0474()
{
  v1[2] = v0;
  v2 = sub_BD664();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[5] = v5;
  v6 = *(&async function pointer to dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration() + 1);
  v9 = (&async function pointer to dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration() + async function pointer to dispatch thunk of CloudKitCollaborationInitiationRequest.initiateCollaboration());
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_B058C;

  return v9(v5);
}

uint64_t sub_B058C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_B4DF0;
  }

  else
  {
    v3 = sub_B06A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B06A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_B079C(v4, sub_B4380, v5, &type metadata accessor for CloudKitCollaborationInitiationRequest.Response);

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_B079C(void *a1, void (*a2)(id), uint64_t a3, void (*a4)(void))
{
  v94 = a2;
  v95 = a3;
  v96 = a1;
  v90 = sub_94950(&qword_124090, &qword_CE998);
  v5 = *(*(v90 - 8) + 64);
  v6 = __chkstk_darwin(v90);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v90 - v8;
  v9 = sub_94950(&qword_124098, &qword_CE9A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v90 - v11;
  a4(0);
  v13 = sub_BD634();
  v14 = v13;
  *&v101 = &_swiftEmptyDictionarySingleton;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v18)) | (v21 << 6);
      v23 = *(v14 + 56);
      v24 = *(*(v14 + 48) + 8 * v22);
      v25 = sub_BD694();
      (*(*(v25 - 8) + 16))(&v12[*(v9 + 48)], v23 + *(*(v25 - 8) + 72) * v22, v25);
      *v12 = v24;
      v26 = v24;
      sub_B13EC(&v101, v12);
      v18 &= v18 - 1;
      sub_75B0(v12, &qword_124098, &qword_CE9A0);
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  v27 = v101 + 64;
  v28 = 1 << *(v101 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v101 + 64);
  v31 = (v28 + 63) >> 6;
  v97 = v101;

  v32 = 0;
  v33 = &_swiftEmptyDictionarySingleton;
  v35 = v90;
  v34 = v91;
  v92 = v31;
  v93 = v27;
  while (v30)
  {
    v39 = v32;
LABEL_21:
    v40 = __clz(__rbit64(v30)) | (v39 << 6);
    v41 = v97;
    v42 = *(v97 + 48);
    v43 = sub_BD544();
    v44 = *(v43 - 8);
    v45 = v44;
    v46 = v42 + *(v44 + 72) * v40;
    v47 = *(v44 + 16);
    v48 = v100;
    v99 = v43;
    v47(v100, v46);
    *(v48 + *(v35 + 48)) = *(*(v41 + 56) + 8 * v40);

    if (![v96 copyWithFlags:{objc_msgSend(v96, "flags")}])
    {
      goto LABEL_49;
    }

    sub_BDB24();
    swift_unknownObjectRelease();
    sub_94D98(&v103, &v101);
    sub_7610(0, &qword_1240A0, IMMessageItem_ptr);
    swift_dynamicCast();
    v49 = v102;
    v50 = [v102 payloadData];
    if (v50)
    {
      v98 = v49;
      v51 = v50;
      v52 = sub_BD594();
      v54 = v53;

      v55 = objc_opt_self();
      isa = sub_BD574().super.isa;
      v57 = [v55 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

      if (v57)
      {
        v58 = [v57 metadata];
        if (v58)
        {
          v60 = v58;
          sub_BD4E4(v59);
          v62 = v61;
          [v60 setOriginalURL:v61];
        }

        v63 = [v57 dataRepresentationWithOutOfLineAttachments:{0, v90}];
        v64 = sub_BD594();
        v66 = v65;

        v67 = sub_BD574().super.isa;
        sub_AB36C(v64, v66);
        [v98 setPayloadData:v67];

        v35 = v90;
      }

      sub_AB36C(v52, v54);
      v34 = v91;
      v49 = v98;
    }

    v94(v49);
    sub_97DF4(v100, v34, &qword_124090, &qword_CE998);
    v68 = *(v35 + 48);
    v69 = *(v34 + v68);
    v70 = *(v69 + 16);
    if (v70)
    {
      sub_94950(&qword_123E90, &qword_CE9B0);
      v71 = swift_allocObject();
      v72 = j__malloc_size(v71);
      v73 = v72 - 32;
      if (v72 < 32)
      {
        v73 = v72 - 17;
      }

      v71[2] = v70;
      v71[3] = 2 * (v73 >> 4);
      v74 = sub_B40E8(&v101, v71 + 4, v70, v69);
      sub_75A8();
      if (v74 != v70)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v75 = *(v34 + v68);

      v71 = _swiftEmptyArrayStorage;
    }

    (*(v45 + 8))(v34, v99);
    v76 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v101 = v33;
    v78 = sub_B2FE0(v71);
    v80 = v33[2];
    v81 = (v79 & 1) == 0;
    v82 = __OFADD__(v80, v81);
    v83 = v80 + v81;
    if (v82)
    {
      goto LABEL_46;
    }

    v84 = v79;
    if (v33[3] >= v83)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = v78;
        sub_B3D08();
        v78 = v88;
      }
    }

    else
    {
      sub_B3114(v83, isUniquelyReferenced_nonNull_native);
      v78 = sub_B2FE0(v71);
      if ((v84 & 1) != (v85 & 1))
      {
        goto LABEL_50;
      }
    }

    v30 &= v30 - 1;
    if (v84)
    {
      v36 = v78;

      v33 = v101;
      v37 = *(v101 + 56);
      v38 = *(v37 + 8 * v36);
      *(v37 + 8 * v36) = v76;

      sub_75B0(v100, &qword_124090, &qword_CE998);
    }

    else
    {
      v33 = v101;
      *(v101 + 8 * (v78 >> 6) + 64) |= 1 << v78;
      *(v33[6] + 8 * v78) = v71;
      *(v33[7] + 8 * v78) = v76;

      sub_75B0(v100, &qword_124090, &qword_CE998);
      v86 = v33[2];
      v82 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v82)
      {
        goto LABEL_48;
      }

      v33[2] = v87;
    }

    v32 = v39;
    v31 = v92;
    v27 = v93;
  }

  while (1)
  {
    v39 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v39 >= v31)
    {

      return v33;
    }

    v30 = *(v27 + 8 * v39);
    ++v32;
    if (v30)
    {
      goto LABEL_21;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_94950(&qword_1240A8, &qword_CE9A8);
  result = sub_BDD64();
  __break(1u);
  return result;
}

uint64_t sub_B0F4C()
{
  v1[2] = v0;
  v2 = sub_BD6C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[5] = v5;
  v6 = *(&async function pointer to dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration() + 1);
  v9 = (&async function pointer to dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration() + async function pointer to dispatch thunk of ThirdPartyCollaborationInitiationRequest.initiateCollaboration());
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_B1064;

  return v9(v5);
}

uint64_t sub_B1064()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_B1274;
  }

  else
  {
    v3 = sub_B1178;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B1178()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_B079C(v4, sub_B458C, v5, &type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response);

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_B1274()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

id CollaborationDeliveryRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationDeliveryRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationDeliveryRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B13EC(Swift::Int *a1, uint64_t a2)
{
  v4 = sub_94950(&qword_124098, &qword_CE9A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v35 - v9);
  v11 = sub_BD544();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_97DF4(a2, v10, &qword_124098, &qword_CE9A0);

  v39 = v4;
  v15 = *(v4 + 48);
  sub_BD684();
  v16 = sub_BD694();
  v17 = *(*(v16 - 8) + 8);
  v17(v10 + v15, v16);
  v38 = a1;
  v18 = *a1;
  if (*(*a1 + 16) && (v19 = sub_B3090(v14), (v20 & 1) != 0))
  {
    v41 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v41 = &_swiftEmptySetSingleton;
  }

  sub_97DF4(a2, v8, &qword_124098, &qword_CE9A0);
  v21 = *v8;
  v22 = [*v8 normalizedValue];

  v23 = v39;
  if (v22)
  {
    v24 = sub_BD8B4();
    v26 = v25;
  }

  else
  {
    sub_97DF4(a2, v10, &qword_124098, &qword_CE9A0);
    v27 = *v10;
    v35 = *(v23 + 48);
    v28 = [v27 value];

    v24 = sub_BD8B4();
    v26 = v29;

    v23 = v39;
    v17(v10 + v35, v16);
  }

  v17(v8 + *(v23 + 48), v16);
  sub_B1E30(&v40, v24, v26);

  v30 = v41;
  v31 = v38;
  v32 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v31;
  sub_B37C8(v30, v14, isUniquelyReferenced_nonNull_native);
  *v31 = v40;
  return (*(v36 + 8))(v14, v37);
}

uint64_t sub_B172C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_AE02C;

  return v7();
}

uint64_t sub_B1814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_A7F18;

  return v8();
}

uint64_t sub_B18FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_94950(&qword_123ED8, &qword_CEE50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_97DF4(a3, v25 - v11, &qword_123ED8, &qword_CEE50);
  v13 = sub_BD9F4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_75B0(v12, &qword_123ED8, &qword_CEE50);
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

  sub_BD9E4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_BD994();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_BD8D4() + 32;
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

    sub_75B0(a3, &qword_123ED8, &qword_CEE50);

    return v23;
  }

LABEL_8:
  sub_75B0(a3, &qword_123ED8, &qword_CEE50);
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

uint64_t sub_B1BF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_BDB84();

    if (v9)
    {

      sub_7610(0, &qword_124118, TUHandle_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_BDB74();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_B1F80(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_B2170(v21 + 1);
    }

    v19 = v8;
    sub_A7110(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_7610(0, &qword_124118, TUHandle_ptr);
  v11 = sub_BDAE4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_B25F8(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_BDAF4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_B1E30(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_BDDC4();
  sub_BD8E4();
  v9 = sub_BDDE4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_BDD24() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_B2768(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_B1F80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_94950(&qword_124128, &unk_CEB30);
    v2 = sub_BDBF4();
    v15 = v2;
    sub_BDB64();
    if (sub_BDB94())
    {
      sub_7610(0, &qword_124118, TUHandle_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_B2170(v9 + 1);
        }

        v2 = v15;
        result = sub_BDAE4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_BDB94());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_B2170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_124128, &unk_CEB30);
  result = sub_BDBE4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_BDAE4(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_B2398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDBE4();
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
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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

void sub_B25F8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_B2170(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_B28E8();
      goto LABEL_12;
    }

    sub_B2B94(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_BDAE4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_7610(0, &qword_124118, TUHandle_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_BDAF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_BDD54();
  __break(1u);
}

Swift::Int sub_B2768(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_B2398(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_B2A38();
      goto LABEL_16;
    }

    sub_B2DA8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_BDDC4();
  sub_BD8E4();
  result = sub_BDDE4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_BDD24();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_BDD54();
  __break(1u);
  return result;
}

id sub_B28E8()
{
  v1 = v0;
  sub_94950(&qword_124128, &unk_CEB30);
  v2 = *v0;
  v3 = sub_BDBD4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_B2A38()
{
  v1 = v0;
  sub_94950(&qword_124108, &qword_CEB28);
  v2 = *v0;
  v3 = sub_BDBD4();
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

uint64_t sub_B2B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_124128, &unk_CEB30);
  result = sub_BDBE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_BDAE4(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
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

uint64_t sub_B2DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDBE4();
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
      sub_BDDC4();

      sub_BD8E4();
      result = sub_BDDE4();
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

unint64_t sub_B2FE0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_BDDC4();
  v4 = *(a1 + 16);
  sub_BDDD4(v4);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_BD8E4();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v8 = sub_BDDE4();

  return sub_B3A4C(a1, v8);
}

unint64_t sub_B3090(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_BD544();
  sub_B4D44(&qword_124100);
  v5 = sub_BD864();

  return sub_B3B5C(a1, v5);
}

uint64_t sub_B3114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_1240F0, &qword_CEB18);
  v40 = a2;
  result = sub_BDCE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v24 = v23;
      }

      v42 = v23;
      v25 = *(v8 + 40);
      sub_BDDC4();
      sub_BDDD4(*(v22 + 16));
      v26 = *(v22 + 16);
      if (v26)
      {
        v27 = (v22 + 40);
        do
        {
          v28 = *(v27 - 1);
          v29 = *v27;

          sub_BD8E4();

          v27 += 2;
          --v26;
        }

        while (v26);
      }

      result = sub_BDDE4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
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
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_38;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_B3400(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_BD544();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_94950(&qword_1240F8, &qword_CEB20);
  v43 = a2;
  result = sub_BDCE4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_B4D44(&qword_124100);
      result = sub_BD864();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_B37C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_BD544();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_B3090(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_B3E68();
      goto LABEL_7;
    }

    sub_B3400(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_B3090(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_B3994(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_BDD64();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_B3994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_BD544();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_B3A4C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_BDD24() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_B3B5C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_BD544();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_B4D44(&qword_123F90);
      v16 = sub_BD874();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

id sub_B3D08()
{
  v1 = v0;
  sub_94950(&qword_1240F0, &qword_CEB18);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_B3E68()
{
  v1 = v0;
  v34 = sub_BD544();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_94950(&qword_1240F8, &qword_CEB20);
  v4 = *v0;
  v5 = sub_BDCD4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_B40E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_B4240(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_7610(0, &qword_124118, TUHandle_ptr);
    sub_B4D88();
    result = sub_BDA34();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_BDC34();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_B1BF8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_BDCC4();
  }

  v6 = result;
  v5 = sub_BDCC4();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_B4380(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 payloadData];
  if (result)
  {
    v5 = result;
    v6 = sub_BD594();
    v8 = v7;

    v9 = objc_opt_self();
    isa = sub_BD574().super.isa;
    v11 = [v9 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

    if (v11)
    {
      v12 = [v11 metadata];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 specialization];

        if (v14)
        {
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = v15;
            sub_BD654();
            sub_7610(0, &qword_124110, CKDeviceToDeviceShareInvitationToken_ptr);
            v17 = sub_BD834().super.isa;

            [v16 setEncodedTokens:v17];
          }
        }
      }

      v18 = [v11 dataRepresentationWithOutOfLineAttachments:0];
      v19 = sub_BD594();
      v21 = v20;

      v22 = sub_BD574().super.isa;
      sub_AB36C(v19, v21);
      [a1 setPayloadData:v22];
    }

    return sub_AB36C(v6, v8);
  }

  return result;
}

id sub_B458C(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 payloadData];
  if (result)
  {
    v5 = result;
    v6 = sub_BD594();
    v8 = v7;

    v9 = objc_opt_self();
    isa = sub_BD574().super.isa;
    v11 = [v9 linkWithDataRepresentationWithoutSubstitutingAttachments:isa];

    if (v11)
    {
      v12 = [v11 metadata];
      if (v12)
      {
        v13 = v12;
        v14 = sub_BD6B4();
        [v13 setCollaborationMetadata:v14];
      }

      v15 = [v11 dataRepresentationWithOutOfLineAttachments:0];
      v16 = sub_BD594();
      v18 = v17;

      v19 = sub_BD574().super.isa;
      sub_AB36C(v16, v18);
      [a1 setPayloadData:v19];
    }

    return sub_AB36C(v6, v8);
  }

  return result;
}

unint64_t sub_B471C()
{
  result = qword_1240B0;
  if (!qword_1240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1240B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollaborationDeliveryRequest.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CollaborationDeliveryRequest.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B48E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A7F18;

  return sub_B0208(v2, v3);
}

uint64_t sub_B498C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_AE02C;

  return sub_B172C(v2, v3, v5);
}

uint64_t sub_B4A4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B4A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_AE02C;

  return sub_B1814(a1, v4, v5, v7);
}

uint64_t sub_B4B58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_AE02C;

  return sub_A68D0(a1, v5);
}

uint64_t sub_B4C10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_A7F18;

  return sub_A68D0(a1, v5);
}

unint64_t sub_B4CC8()
{
  result = qword_1240E8;
  if (!qword_1240E8)
  {
    sub_A9E00(&qword_1240A8, &qword_CE9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1240E8);
  }

  return result;
}

uint64_t sub_B4D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_BD544();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B4D88()
{
  result = qword_124120;
  if (!qword_124120)
  {
    sub_7610(255, &qword_124118, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_124120);
  }

  return result;
}

uint64_t sub_B4E98()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_124848);
  sub_96A28(v0, qword_124848);
  sub_BD784();
  return sub_BD7A4();
}

uint64_t sub_B4F04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v167 = a2;
  v176 = a1;
  v178 = a3;
  v3 = sub_BD4B4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD624();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD544();
  v181 = *(v13 - 8);
  v182 = v13;
  v14 = *(v181 + 64);
  v15 = __chkstk_darwin(v13);
  v177 = v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v173 = v163 - v18;
  v19 = __chkstk_darwin(v17);
  v183 = v163 - v20;
  v21 = __chkstk_darwin(v19);
  v185 = v163 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v163 - v24;
  v166 = v26;
  __chkstk_darwin(v23);
  v184 = v163 - v27;
  v28 = NSTemporaryDirectory();
  sub_BD8B4();

  sub_BD4D4();

  sub_BD614();
  v29 = sub_BD604();
  v31 = v30;
  v180 = v30;
  (*(v9 + 8))(v12, v8);
  aBlock = v29;
  v187 = v31;
  v32 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v33 = v4[13];
  v33(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  v34 = sub_ABD60();
  sub_BD534();
  v35 = v4[1];
  v35(v7, v3);

  v36 = *(v181 + 8);
  v165 = v25;
  v179 = v181 + 8;
  v180 = v36;
  v36(v25, v182);
  aBlock = 0xD000000000000014;
  v187 = 0x80000000000DCDB0;
  v33(v7, v32, v3);
  sub_BD534();
  v35(v7, v3);
  aBlock = 0xD000000000000018;
  v187 = 0x80000000000DCB10;
  v172 = v32;
  v171 = v33;
  v169 = v4 + 13;
  v33(v7, v32, v3);
  v170 = v34;
  v37 = v7;
  sub_BD534();
  v174 = v3;
  v175 = v4 + 1;
  v168 = v35;
  v35(v7, v3);
  v38 = objc_opt_self();
  v39 = [v38 defaultManager];
  sub_BD4E4(v40);
  v42 = v41;
  aBlock = 0;
  LODWORD(v25) = [v39 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  v43 = aBlock;
  if (!v25)
  {
    v93 = aBlock;
    v87 = sub_BD4A4();

    swift_willThrow();
    v92 = 0;
    v90 = v182;
    v91 = v180;
    goto LABEL_13;
  }

  aBlock = 0x726574736F70;
  v187 = 0xE600000000000000;
  v44 = v172;
  v164 = v38;
  v45 = v174;
  v46 = v171;
  v171(v7, v172, v174);
  v47 = v43;
  v48 = v173;
  sub_BD534();
  v49 = v7;
  v50 = v168;
  v168(v49, v45);
  aBlock = 0x6361426863746177;
  v187 = 0xEF646E756F72676BLL;
  v46(v37, v44, v45);
  v51 = v177;
  sub_BD534();
  v50(v37, v45);
  v52 = v164;
  v53 = [v164 defaultManager];
  sub_BD4E4(v54);
  v56 = v55;
  sub_BD4E4(v57);
  v59 = v58;
  aBlock = 0;
  v60 = [v53 moveItemAtURL:v56 toURL:v58 error:&aBlock];

  if (!v60)
  {
    v94 = aBlock;
    v87 = sub_BD4A4();

    swift_willThrow();
    v90 = v182;
    v91 = v180;
    v180(v51, v182);
    v91(v48, v90);
    v92 = 0;
    goto LABEL_13;
  }

  v61 = v48;
  v62 = aBlock;
  v63 = [v52 defaultManager];
  sub_BD4E4(&v193);
  v65 = v64;
  sub_BD4E4(v66);
  v68 = v67;
  aBlock = 0;
  v69 = [v63 moveItemAtURL:v65 toURL:v67 error:&aBlock];

  v70 = aBlock;
  v71 = v182;
  if (!v69)
  {
    v95 = aBlock;
    v87 = sub_BD4A4();

    swift_willThrow();
    v96 = v180;
    v180(v51, v71);
    v96(v61, v71);
    v92 = 0;
    v91 = v96;
    v90 = v71;
    goto LABEL_13;
  }

  v192 = 0;
  v72 = objc_allocWithZone(NSFileCoordinator);
  v73 = v70;
  v74 = [v72 init];
  sub_BD4E4(v75);
  v77 = v76;
  v78 = v181;
  v79 = v165;
  (*(v181 + 16))(v165, v183, v71);
  v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v81 = (v166 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = *(v78 + 32);
  v181 = v78 + 32;
  v174 = v83;
  v83(v82 + v80, v79, v71);
  *(v82 + v81) = &v192;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_B6B84;
  *(v84 + 24) = v82;
  v175 = v82;
  v190 = sub_B6CEC;
  v191 = v84;
  aBlock = _NSConcreteStackBlock;
  v187 = 1107296256;
  v188 = sub_B6218;
  v189 = &unk_115508;
  v85 = _Block_copy(&aBlock);

  aBlock = 0;
  [v74 coordinateReadingItemAtURL:v77 options:8 error:&aBlock byAccessor:v85];
  _Block_release(v85);

  v86 = aBlock;
  LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

  if (v85)
  {
    __break(1u);
LABEL_45:
    if (qword_124840 != -1)
    {
      swift_once();
    }

    v156 = sub_BD7B4();
    sub_96A28(v156, qword_124848);
    v157 = v163[1];
    v158 = sub_BD794();
    v159 = sub_BDA84();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 134218240;
      *(v160 + 4) = 20971520;

      *(v160 + 12) = 2048;
      *(v160 + 14) = v74;
      _os_log_impl(&dword_0, v158, v159, "Zipped background exceeds upload limit, returning nil. Max size: %ld, actual size: %llu", v160, 0x16u);
    }

    else
    {
    }

    v161 = v182;
    v162 = v180;
    v180(v183, v182);
    v162(v185, v161);
    v162(v184, v161);
    *v178 = 0;
LABEL_42:
    sub_94950(&qword_123F98, &qword_CE890);
    goto LABEL_43;
  }

  v87 = v86;
  v88 = v185;
  v89 = v61;
  if (!v86)
  {
    v87 = v192;
    if (v192)
    {
      swift_errorRetain();
      goto LABEL_8;
    }

    v104 = v164;
    v105 = [v164 defaultManager];
    sub_BD4E4(v106);
    v108 = v107;
    sub_BD4E4(v109);
    v111 = v110;
    aBlock = 0;
    v112 = [v105 moveItemAtURL:v108 toURL:v110 error:&aBlock];

    if (v112)
    {
      v176 = v74;
      v113 = aBlock;
      v114 = [v104 defaultManager];
      v115 = v177;
      sub_BD4E4(v116);
      v118 = v117;
      sub_BD4E4(&v193);
      v120 = v119;
      aBlock = 0;
      v121 = [v114 moveItemAtURL:v118 toURL:v119 error:&aBlock];

      if (v121)
      {
        v122 = aBlock;
        v123 = [v104 defaultManager];
        sub_BD4E4(v124);
        v126 = v125;
        aBlock = 0;
        v127 = [v123 removeItemAtURL:v125 error:&aBlock];

        if (v127)
        {
          v128 = aBlock;

          v129 = v115;
          v130 = v182;
          v131 = v180;
          v180(v129, v182);
          v131(v61, v130);

          v132 = [v104 defaultManager];
          sub_BD524();
          v133 = sub_BD884();

          v134 = [v132 fileExistsAtPath:v133];

          if (v134)
          {
            v135 = [v104 defaultManager];
            sub_BD524();
            v136 = sub_BD884();

            v192 = 0;
            v137 = [v135 attributesOfItemAtPath:v136 error:&v192];

            v138 = v192;
            if (v137)
            {
              type metadata accessor for FileAttributeKey();
              sub_B70B8(&qword_124130);
              v139 = sub_BD844();
              v140 = v138;

              if (*(v139 + 16) && (v141 = sub_B6D7C(NSFileSize), (v142 & 1) != 0))
              {
                sub_97D3C(*(v139 + 56) + 32 * v141, &aBlock);

                if (swift_dynamicCast())
                {
                  v74 = v192;
                  if (v192 >> 22 <= 4)
                  {
                    v143 = v180;
                    v180(v88, v130);
                    v143(v184, v130);
                    v174(v178, v183, v130);
                    sub_94950(&qword_123F98, &qword_CE890);
LABEL_43:
                    swift_storeEnumTagMultiPayload();
                  }

                  goto LABEL_45;
                }
              }

              else
              {
              }
            }

            else
            {
              v149 = v192;
              sub_BD4A4();

              swift_willThrow();
            }
          }

          if (qword_124840 != -1)
          {
            swift_once();
          }

          v150 = sub_BD7B4();
          sub_96A28(v150, qword_124848);
          v151 = sub_BD794();
          v152 = sub_BDA84();
          v153 = os_log_type_enabled(v151, v152);
          v154 = v180;
          if (v153)
          {
            v155 = swift_slowAlloc();
            *v155 = 0;
            _os_log_impl(&dword_0, v151, v152, "Could not get file size of zipped background.", v155, 2u);
          }

          v154(v183, v130);
          v154(v88, v130);
          v154(v184, v130);
          *v178 = 1;
          goto LABEL_42;
        }

        v148 = aBlock;
        v87 = sub_BD4A4();

        swift_willThrow();
        v145 = v115;
        v90 = v182;
        v147 = v182;
LABEL_32:
        v91 = v180;
        v180(v145, v147);
        v91(v89, v90);
        goto LABEL_9;
      }

      v146 = aBlock;
      v87 = sub_BD4A4();

      swift_willThrow();
      v145 = v115;
    }

    else
    {
      v144 = aBlock;
      v87 = sub_BD4A4();

      swift_willThrow();
      v145 = v177;
    }

    v90 = v182;
    v147 = v182;
    goto LABEL_32;
  }

LABEL_8:
  swift_willThrow();

  v90 = v182;
  v91 = v180;
  v180(v177, v182);
  v91(v89, v90);

LABEL_9:

  v92 = sub_B6B84;
LABEL_13:
  swift_errorRetain();
  if (qword_124840 != -1)
  {
    swift_once();
  }

  v97 = sub_BD7B4();
  sub_96A28(v97, qword_124848);
  swift_errorRetain();
  v98 = sub_BD794();
  v99 = sub_BDA84();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v100 = 138412290;
    swift_errorRetain();
    v102 = _swift_stdlib_bridgeErrorToNSError();
    *(v100 + 4) = v102;
    *v101 = v102;

    _os_log_impl(&dword_0, v98, v99, "Failed to zip background with error: %@", v100, 0xCu);
    sub_AEFAC(v101);
  }

  else
  {
  }

  v91(v183, v90);
  v91(v185, v90);
  v91(v184, v90);
  *v178 = v87;
  sub_94950(&qword_123F98, &qword_CE890);
  swift_storeEnumTagMultiPayload();
  return sub_B6208(v92);
}

uint64_t sub_B6208(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_B6218(uint64_t a1)
{
  v2 = sub_BD544();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_BD504();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_B62FC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_BD544();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedManager];
  if (v11)
  {
    v35 = v11;
    if ([v11 checksForSensitivityOnReceive])
    {
      v12 = objc_opt_self();
      sub_BD4E4(v13);
      v15 = v14;
      v16 = [v12 posterImageURLForPosterConfigurationAtURL:v14];

      if (v16)
      {
        sub_BD504();

        v17 = [objc_opt_self() sharedManager];
        sub_BD4E4(v18);
        v20 = v19;
        v21 = swift_allocObject();
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;
        aBlock[4] = sub_B6E10;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_A46B0;
        aBlock[3] = &unk_115558;
        v22 = _Block_copy(aBlock);

        [v17 isSensitiveContent:v20 contentAttachmentType:0 withChatID:0 completionHandler:v22];
        _Block_release(v22);

        (*(v7 + 8))(v10, v6);
        return;
      }

      if (qword_124840 != -1)
      {
        swift_once();
      }

      v32 = sub_BD7B4();
      sub_96A28(v32, qword_124848);
      v28 = sub_BD794();
      v29 = sub_BDA84();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Sensitivity Analysis will not run. Unable to find a posterImageURL for the poster configuration. Continuing.";
    }

    else
    {
      if (qword_124840 != -1)
      {
        swift_once();
      }

      v27 = sub_BD7B4();
      sub_96A28(v27, qword_124848);
      v28 = sub_BD794();
      v29 = sub_BDA84();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Sensitivity Analysis is not enabled. Continuing.";
    }

    _os_log_impl(&dword_0, v28, v29, v31, v30, 2u);

LABEL_19:

    a3(0);
    v33 = v35;

    return;
  }

  if (qword_124840 != -1)
  {
    swift_once();
  }

  v23 = sub_BD7B4();
  sub_96A28(v23, qword_124848);
  v24 = sub_BD794();
  v25 = sub_BDA64();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "Sensitivity Analysis settings object is unexpectedly not available.", v26, 2u);
  }

  a3(0);
}

uint64_t sub_B67A8()
{
  v1 = *v0;
  sub_BD8B4();
  v2 = sub_BD914();

  return v2;
}

uint64_t sub_B67E4()
{
  v1 = *v0;
  sub_BD8B4();
  sub_BD8E4();
}

Swift::Int sub_B6838()
{
  v1 = *v0;
  sub_BD8B4();
  sub_BDDC4();
  sub_BD8E4();
  v2 = sub_BDDE4();

  return v2;
}

uint64_t sub_B68B4(uint64_t a1, id *a2)
{
  result = sub_BD894();
  *a2 = 0;
  return result;
}

uint64_t sub_B692C(uint64_t a1, id *a2)
{
  v3 = sub_BD8A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_B69AC@<X0>(void *a1@<X8>)
{
  sub_BD8B4();
  v2 = sub_BD884();

  *a1 = v2;
  return result;
}

uint64_t sub_B69F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_BD8B4();
  v6 = v5;
  if (v4 == sub_BD8B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_BDD24();
  }

  return v9 & 1;
}

uint64_t sub_B6A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_BD884();

  *a2 = v5;
  return result;
}

uint64_t sub_B6AC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_BD8B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_B6AEC(uint64_t a1)
{
  v2 = sub_B70B8(&qword_124130);
  v3 = sub_B70B8(&qword_124158);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_B6B84()
{
  v1 = *(sub_BD544() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = [objc_opt_self() defaultManager];
  sub_BD4E4(v4);
  v6 = v5;
  sub_BD4E4(v7);
  v9 = v8;
  v16 = 0;
  v10 = [v3 moveItemAtURL:v6 toURL:v8 error:&v16];

  v11 = v16;
  if (v10)
  {

    return v11;
  }

  else
  {
    v13 = v16;
    v14 = sub_BD4A4();

    swift_willThrow();
    v15 = *v2;
    *v2 = v14;
  }
}

uint64_t sub_B6CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_B6D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_124138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_124138);
    }
  }
}

unint64_t sub_B6D7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_BD8B4();
  sub_BDDC4();
  sub_BD8E4();
  v4 = sub_BDDE4();

  return sub_B70FC(a1, v4);
}

uint64_t sub_B6E10(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (qword_124840 != -1)
  {
    swift_once();
  }

  v5 = sub_BD7B4();
  sub_96A28(v5, qword_124848);
  v6 = sub_BD794();
  v7 = sub_BDA84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v6, v7, "Sensitivity Analysis completed on wallpaper with result, isSensitive=%{BOOL}d.", v8, 8u);
  }

  return v4(a1 & 1);
}

uint64_t sub_B6F18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_B6F3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B6F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_B6FEC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_B70B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B70FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_BD8B4();
      v9 = v8;
      if (v7 == sub_BD8B4() && v9 == v10)
      {
        break;
      }

      v12 = sub_BDD24();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t static NSUserDefaults.forceUnreachable.getter()
{
  v0 = sub_94950(&qword_124188, &qword_CED90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-v3];
  if (qword_124160 != -1)
  {
    swift_once();
  }

  v5 = sub_96A28(v0, qword_124168);
  (*(v1 + 16))(v4, v5, v0);
  sub_BD714();
  (*(v1 + 8))(v4, v0);
  return v7[15];
}

uint64_t sub_B733C()
{
  v0 = sub_94950(&qword_124190, &qword_CEDA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_94950(&qword_124188, &qword_CED90);
  sub_97E5C(v4, qword_124168);
  sub_96A28(v4, qword_124168);
  v5 = sub_94950(&qword_124198, &qword_CEDA8);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_BD734();
  return sub_BD724();
}

uint64_t sub_B7464()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1241A0);
  sub_96A28(v0, qword_1241A0);
  return sub_BD7A4();
}

uint64_t MessageReachabilityController.delegate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

void *MessageReachabilityController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  sub_BD764();
  v5 = *(a2 + 8);
  swift_unknownObjectRetain();
  v4[4] = sub_BD754();
  return v4;
}

void *MessageReachabilityController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = a1;
  v3[3] = a2;
  sub_BD764();
  v5 = *(a2 + 8);
  swift_unknownObjectRetain();
  v3[4] = sub_BD754();
  return v3;
}

void MessageReachabilityController.calculateReachability(with:responseHandler:requestingSelfHandle:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = v5[2];
  v8 = v5[3];
  ObjectType = swift_getObjectType();
  v10 = [v7 networkDataAvailable];
  if (qword_124180 != -1)
  {
    swift_once();
  }

  v11 = sub_BD7B4();
  sub_96A28(v11, qword_1241A0);
  swift_retain_n();
  v12 = a1;
  v13 = sub_BD794();
  v14 = sub_BDA54();

  v142 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v137 = v14;
    v15 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v144 = v136;
    *v15 = 136446722;
    v16 = [v12 requestID];
    v17 = sub_BD8B4();
    v18 = v7;
    v19 = v10;
    v20 = v8;
    v21 = ObjectType;
    v22 = v18;
    v23 = v5;
    v25 = v24;

    v26 = sub_96A60(v17, v25, &v144);
    v5 = v23;
    v27 = v22;
    ObjectType = v21;
    v8 = v20;
    LODWORD(v20) = v19;
    v7 = v27;

    *(v15 + 4) = v26;
    *(v15 + 12) = 1024;
    LOBYTE(v26) = (*(v8 + 24))(ObjectType, v8);

    *(v15 + 14) = v26 & 1;

    *(v15 + 18) = 1024;
    *(v15 + 20) = v20;
    _os_log_impl(&dword_0, v13, v137, "%{public}s Always online %{BOOL}d, network data available %{BOOL}d", v15, 0x18u);
    sub_97C9C(v136);

    v140 = v7;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v140 = v7;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (((*(v8 + 24))(ObjectType, v8) & 1) == 0)
  {
    v53 = 0;
    p_align = (&stru_11EFE8 + 24);
    v36 = v142;
    goto LABEL_17;
  }

LABEL_8:
  v28 = v5[4];
  v29 = [v142 context];
  v30 = [v142 handleIDs];
  sub_BD954();

  p_align = &stru_11EFE8.align;
  v32 = [v142 requestID];
  sub_BD8B4();

  LOBYTE(v28) = sub_BD744();

  if ((v28 & 1) == 0)
  {
    v53 = 0;
    v36 = v142;
LABEL_17:
    v54 = v36;
    v55 = sub_BD794();
    v56 = sub_BDA54();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v144 = v58;
      *v57 = 136446466;
      v59 = [v54 *(p_align + 170)];
      v60 = sub_BD8B4();
      v62 = v61;

      v63 = sub_96A60(v60, v62, &v144);

      *(v57 + 4) = v63;
      *(v57 + 12) = 1024;
      *(v57 + 14) = v53;
      _os_log_impl(&dword_0, v55, v56, "%{public}s IMChatCalculateServiceForSending iMessage not available (%{BOOL}d) or no addresses, bailing", v57, 0x12u);
      sub_97C9C(v58);
    }

    isa = [v54 handleIDs];
    if (!isa)
    {
      sub_BD954();
      isa = sub_BD944().super.isa;
    }

    v65 = [v140 internalServiceName];
    if (!v65)
    {
      sub_BD8B4();
      v65 = sub_BD884();
    }

    v66 = [objc_opt_self() finalResultForService:v65 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
    goto LABEL_24;
  }

  v33 = [v142 handleIDs];
  v34 = sub_BD954();

  v35 = *(v34 + 16);

  v36 = v142;
  if (!v35)
  {
    v53 = 1;
    goto LABEL_17;
  }

  v37 = [v142 context];
  v38 = [v37 forceMMS];

  if ((v38 & 1) != 0 || (v39 = [v142 context], v40 = objc_msgSend(v39, "conversationWasDowngraded"), v39, v40))
  {
    v41 = v142;
    v42 = sub_BD794();
    v43 = sub_BDA54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v144 = v45;
      *v44 = 136446722;
      v46 = [v41 requestID];
      v47 = sub_BD8B4();
      v49 = v48;

      v50 = sub_96A60(v47, v49, &v144);

      *(v44 + 4) = v50;
      *(v44 + 12) = 1024;
      v51 = [v41 context];
      LODWORD(v47) = [v51 forceMMS];

      *(v44 + 14) = v47;
      *(v44 + 18) = 1024;
      v52 = [v41 context];
      LODWORD(v47) = [v52 conversationWasDowngraded];

      *(v44 + 20) = v47;
      _os_log_impl(&dword_0, v42, v43, "%{public}s Forcing iMessage unavailable due to forceMMS: %{BOOL}d conversationWasDowngraded: %{BOOL}d", v44, 0x18u);
      sub_97C9C(v45);
    }

    else
    {
    }

    v67 = [v41 handleIDs];
    if (!v67)
    {
      sub_BD954();
      v67 = sub_BD944().super.isa;
    }

    v68 = [v140 internalServiceName];
    if (!v68)
    {
      sub_BD8B4();
      v68 = sub_BD884();
    }

    v143 = [objc_opt_self() finalResultForService:v68 handleIDs:v67 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

    [a2 reachabilityRequest:v41 updatedWithResult:v143];
    goto LABEL_25;
  }

  v69 = [v142 handleIDs];
  v70 = sub_BD954();

  if (v70[2])
  {
    v72 = v70[4];
    v71 = v70[5];

    v73 = [v142 handleIDs];
    v74 = sub_BD954();

    v75 = *(v74 + 16);

    if (v75 == 1)
    {
      v76 = sub_BD884();
      v77 = [v7 hasValidDowngradeRequestForHandleID:v76];

      if (v77)
      {
        v54 = v142;

        v78 = sub_BD794();
        v79 = sub_BDA54();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *v80 = 136446466;
          v81 = [v54 requestID];
          v82 = sub_BD8B4();
          v84 = v83;

          v85 = sub_96A60(v82, v84, &v144);

          *(v80 + 4) = v85;
          *(v80 + 12) = 2080;
          v86 = sub_96A60(v72, v71, &v144);

          *(v80 + 14) = v86;
          _os_log_impl(&dword_0, v78, v79, "%{public}s Forcing iMessage unavailable due to downgrade request for %s", v80, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        isa = [v54 handleIDs];
        if (!isa)
        {
          sub_BD954();
          isa = sub_BD944().super.isa;
        }

        v65 = [v140 internalServiceName];
        if (!v65)
        {
          sub_BD8B4();
          v65 = sub_BD884();
        }

LABEL_62:
        v66 = [objc_opt_self() finalResultForService:v65 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];
LABEL_24:
        v143 = v66;

        [a2 reachabilityRequest:v54 updatedWithResult:v143];
LABEL_25:

        return;
      }
    }
  }

  if ([v7 isInternationalSpamFilteringEnabled])
  {
    v87 = [v142 handleIDs];
    v88 = sub_BD954();

    v89 = *(v88 + 16);

    if (v89 == 1)
    {
      v90 = [v142 context];
      v91 = [v90 senderLastAddressedHandle];

      if (v91)
      {
        sub_BD8B4();
      }

      else
      {
        v108 = [v142 context];
        v109 = [v108 senderLastAddressedSIMID];

        if (!v109)
        {
          goto LABEL_55;
        }

        sub_BD8B4();

        v110 = *(v8 + 8);
        swift_unknownObjectRetain();

        sub_BD774();
        v112 = v111;
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        if (!v112)
        {
          goto LABEL_55;
        }
      }

      v92 = [v142 handleIDs];
      v93 = sub_BD954();

      if (!v93[2])
      {
        __break(1u);
        return;
      }

      v94 = v93[4];
      v95 = v93[5];

      v96 = sub_BD884();

      v97 = sub_BD884();

      v98 = [v142 context];
      LODWORD(v94) = [v7 shouldDowngradeToRecipient:v96 fromSender:v97 withContext:v98];

      v36 = v142;
      if (v94)
      {
        v54 = v142;
        v99 = sub_BD794();
        v100 = sub_BDA54();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v144 = v102;
          *v101 = 136446210;
          v103 = [v54 requestID];
          v104 = sub_BD8B4();
          v106 = v105;

          v107 = sub_96A60(v104, v106, &v144);

          *(v101 + 4) = v107;
          _os_log_impl(&dword_0, v99, v100, "%{public}s Forcing iMessage unavailable due to Hawking downgrade", v101, 0xCu);
          sub_97C9C(v102);
        }

        isa = [v54 handleIDs];
        if (!isa)
        {
          sub_BD954();
          isa = sub_BD944().super.isa;
        }

        v65 = [v140 internalServiceName];
        if (!v65)
        {
          sub_BD8B4();
          v65 = sub_BD884();
        }

        v66 = [objc_opt_self() finalResultForService:v65 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:5];
        goto LABEL_24;
      }
    }
  }

LABEL_55:
  v113 = [objc_opt_self() sharedController];
  v114 = [v113 isLiteMessageActiveOverSatellite];

  if (v114)
  {
    v54 = v36;
    v115 = sub_BD794();
    v116 = sub_BDA54();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v144 = v118;
      *v117 = 136446210;
      v119 = [v54 requestID];
      v120 = sub_BD8B4();
      v122 = v121;

      v123 = sub_96A60(v120, v122, &v144);

      *(v117 + 4) = v123;
      _os_log_impl(&dword_0, v115, v116, "%{public}s Forcing iMessage unavailable due to satellite connectivity", v117, 0xCu);
      sub_97C9C(v118);
    }

    isa = [v54 handleIDs];
    if (!isa)
    {
      sub_BD954();
      isa = sub_BD944().super.isa;
    }

    v65 = [v140 internalServiceName];
    if (!v65)
    {
      sub_BD8B4();
      v65 = sub_BD884();
    }

    goto LABEL_62;
  }

  v124 = [v36 handleIDs];
  v125 = sub_BD954();

  v126 = [v36 requestID];
  v127 = sub_BD8B4();
  v129 = v128;

  v130 = [v36 context];
  v131 = v36;
  v132 = [v36 context];
  v133 = [v132 shouldForceServerStatusRefresh];

  v134 = swift_allocObject();
  *(v134 + 16) = a2;
  *(v134 + 24) = v131;
  v135 = v131;
  swift_unknownObjectRetain();
  sub_B8850(v125, v127, v129, a3, a4, v130, v133, 2u, sub_6FE4, v134);
}

uint64_t sub_B8850(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, id a6, char a7, unsigned __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v12 = a3;
  if ((a7 & 1) == 0 && ![a6 shouldForceServerStatusRefresh])
  {
    v30 = [objc_opt_self() currentIDInfo];
    v31 = qword_124180;
    v103 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_BD7B4();
    sub_96A28(v32, qword_1241A0);

    v33 = sub_BD794();
    v34 = sub_BDA54();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v116[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_96A60(a2, v12, v116);
      _os_log_impl(&dword_0, v33, v34, "%{public}s Doing a cached ID query", v35, 0xCu);
      sub_97C9C(v36);
    }

    v109 = 0;
    goto LABEL_19;
  }

  v14 = a8;
  v15 = [objc_opt_self() refreshIDInfo];
  [v15 setForceRefresh:{objc_msgSend(v11, "shouldForceServerStatusRefresh")}];

  if (v14 != 2)
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v27 = sub_BD7B4();
    sub_96A28(v27, qword_1241A0);
    v17 = v15;

    v18 = sub_BD794();
    v28 = sub_BDA54();

    if (!os_log_type_enabled(v18, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v116[0] = v21;
    *v29 = 136446978;
    *(v29 + 4) = sub_96A60(a2, v12, v116);
    *(v29 + 12) = 1024;
    *(v29 + 14) = v14 & 1;
    *(v29 + 18) = 1024;
    *(v29 + 20) = (v14 >> 8) & 1;
    *(v29 + 24) = 1024;
    *(v29 + 26) = [v17 forceRefresh];

    v22 = "%{public}s Refreshing ID info due to results: allAreReachable=%{BOOL}d hadUnknownAddress=%{BOOL}d. Force refresh: %{BOOL}d";
    v23 = v28;
    v24 = v18;
    v25 = v29;
    v26 = 30;
    goto LABEL_11;
  }

  if (qword_124180 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v16 = sub_BD7B4();
    sub_96A28(v16, qword_1241A0);
    v17 = v15;

    v18 = sub_BD794();
    v19 = sub_BDA54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v116[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_96A60(a2, v12, v116);
      *(v20 + 12) = 1024;
      *(v20 + 14) = [v17 forceRefresh];

      v22 = "%{public}s Refreshing ID info due to explicit request. Force refresh: %{BOOL}d";
      v23 = v19;
      v24 = v18;
      v25 = v20;
      v26 = 18;
LABEL_11:
      _os_log_impl(&dword_0, v24, v23, v22, v25, v26);
      sub_97C9C(v21);
    }

    else
    {
LABEL_12:
    }

    v103 = v17;
    v109 = 1;
LABEL_19:
    v107 = v11;
    v37 = sub_BB8F4(&_swiftEmptyArrayStorage);
    v12 = a1[2];
    v111 = a1;
    if (v12)
    {
      a1 += 5;
      do
      {
        v11 = *(a1 - 1);
        v41 = *a1;

        v15 = sub_BD884();
        v42 = IMChatCanonicalIDSIDsForAddress();

        if (!v42)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116[0] = v37;
          v55 = sub_94048(v11, v41);
          v57 = v37[2];
          v58 = (v56 & 1) == 0;
          v50 = __OFADD__(v57, v58);
          v59 = v57 + v58;
          if (v50)
          {
            goto LABEL_65;
          }

          v15 = v56;
          if (v37[3] < v59)
          {
            sub_BA73C(v59, isUniquelyReferenced_nonNull_native);
            v55 = sub_94048(v11, v41);
            if ((v15 & 1) != (v60 & 1))
            {
LABEL_70:
              result = sub_BDD64();
              __break(1u);
              return result;
            }

            goto LABEL_39;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_39:
            v37 = v116[0];
            if ((v15 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v66 = v55;
            sub_BB164();
            v55 = v66;
            v37 = v116[0];
            if ((v15 & 1) == 0)
            {
LABEL_44:
              v37[(v55 >> 6) + 8] |= 1 << v55;
              v67 = (v37[6] + 16 * v55);
              *v67 = v11;
              v67[1] = v41;
              v68 = (v37[7] + 16 * v55);
              *v68 = v11;
              v68[1] = v41;
              v69 = v37[2];
              v50 = __OFADD__(v69, 1);
              v64 = v69 + 1;
              if (v50)
              {
                goto LABEL_67;
              }

              goto LABEL_45;
            }
          }

          v39 = (v37[7] + 16 * v55);
          goto LABEL_22;
        }

        v43 = sub_BD8B4();
        v15 = v44;

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v37;
        v46 = sub_94048(v43, v15);
        v48 = v37[2];
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v52 = v47;
        if (v37[3] >= v51)
        {
          if ((v45 & 1) == 0)
          {
            v65 = v46;
            sub_BB164();
            v46 = v65;
            if ((v52 & 1) == 0)
            {
LABEL_35:
              v37 = v116[0];
              *(v116[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
              v61 = (v37[6] + 16 * v46);
              *v61 = v43;
              v61[1] = v15;
              v62 = (v37[7] + 16 * v46);
              *v62 = v11;
              v62[1] = v41;

              v63 = v37[2];
              v50 = __OFADD__(v63, 1);
              v64 = v63 + 1;
              if (v50)
              {
                goto LABEL_66;
              }

LABEL_45:
              v37[2] = v64;
              goto LABEL_23;
            }

            goto LABEL_21;
          }
        }

        else
        {
          sub_BA73C(v51, v45);
          v46 = sub_94048(v43, v15);
          if ((v52 & 1) != (v53 & 1))
          {
            goto LABEL_70;
          }
        }

        if ((v52 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_21:
        v38 = v46;

        v37 = v116[0];
        v39 = (*(v116[0] + 56) + 16 * v38);
LABEL_22:
        v40 = v39[1];
        *v39 = v11;
        v39[1] = v41;

LABEL_23:
        a1 += 2;
        --v12;
      }

      while (v12);
    }

    v70 = swift_allocObject();
    *(v70 + 16) = v37;
    v71 = a5;
    if (a5)
    {

      v72 = sub_BD884();
      v73 = [v72 _stripFZIDPrefix];

      v74 = IMChatCanonicalIDSIDsForAddress();
      v75 = a3;
      v76 = v107;
      if (v74)
      {
        v77 = sub_BD8B4();
        v79 = v78;

        swift_bridgeObjectRetain_n();
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = *(v70 + 16);
        *(v70 + 16) = 0x8000000000000000;
        sub_BAE50(v77, v79, v77, v79, v80);

        v37 = v116[0];
        *(v70 + 16) = v116[0];
      }

      else
      {

        v77 = 0;
        v79 = 0;
      }
    }

    else
    {
      v79 = 0;
      v77 = a4;
      v75 = a3;
      v76 = v107;
    }

    v81 = v37[2];
    v104 = v70;
    if (!v81)
    {
      v84 = &_swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v101 = v77;
    v82 = v79;
    a1 = sub_B9C20(v81, 0);
    v83 = sub_BB2DC(v116, a1 + 4, v81, v37);
    v12 = v116[1];
    v15 = v116[3];
    v11 = v116[4];

    sub_75A8();
    if (v83 == v81)
    {
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  v75 = a3;
  v71 = a5;
  v76 = v107;
  v70 = v104;
  v84 = a1;
  v79 = v82;
  v77 = v101;
LABEL_55:
  v108 = v84;
  sub_931BC(v84);
  isa = sub_BD944().super.isa;

  v86 = IMServiceNameForCanonicalIDSAddresses();

  if (v86)
  {
    v102 = sub_BD8B4();
    v106 = v87;
  }

  else
  {
    v102 = 0;
    v106 = 0;
  }

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 24) = a2;
  *(v88 + 32) = v75;
  *(v88 + 40) = v77;
  *(v88 + 48) = v79;
  *(v88 + 56) = v70;
  *(v88 + 64) = v76;
  *(v88 + 72) = v109;
  *(v88 + 80) = a9;
  *(v88 + 88) = a10;
  *(v88 + 96) = v111;
  *(v88 + 104) = a4;
  *(v88 + 112) = v71;
  v89 = *(v110 + 16);
  v113 = *(v110 + 24);

  v90 = v76;

  v91 = [v90 senderLastAddressedHandle];
  if (v91)
  {
    v92 = v91;
    v99 = sub_BD8B4();
    v100 = v93;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  ObjectType = swift_getObjectType();
  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v95 = sub_BDAA4();
  v96 = swift_allocObject();
  *(v96 + 16) = a2;
  *(v96 + 24) = a3;
  *(v96 + 32) = a9;
  *(v96 + 40) = a10;
  *(v96 + 48) = v110;
  *(v96 + 56) = v111;
  *(v96 + 64) = v109;
  *(v96 + 72) = &unk_CEE48;
  *(v96 + 80) = v88;
  v97 = *(v113 + 16);

  v97(v108, v102, v106, v99, v100, 2, v103, 0xD000000000000022, 0x80000000000DCE50, v95, sub_7454, v96, ObjectType, v113);
}

uint64_t MessageReachabilityController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t MessageReachabilityController.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_B942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v11;
  *(v9 + 96) = v8;
  *(v9 + 216) = a8;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 32) = a1;
  return _swift_task_switch(sub_4430, 0, 0);
}

uint64_t sub_B9468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = v11;
  *(v8 + 169) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  return _swift_task_switch(sub_69AC, 0, 0);
}

void sub_B94B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id), uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v33 = a6;
  v34 = a5;
  v15 = sub_94950(&qword_123ED8, &qword_CEE50);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  if (a1 && (sub_B9820(a1), v19))
  {
    v20 = v19;
    sub_BD9C4();
    v21 = sub_BD9F4();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    sub_BD9B4();

    v22 = sub_BD9A4();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = a10;
    v23[5] = a11;
    v23[6] = v20;
    sub_9B0BC(0, 0, v18, &unk_CEE60, v23);
  }

  else
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v24 = sub_BD7B4();
    sub_96A28(v24, qword_1241A0);

    v25 = sub_BD794();
    v26 = sub_BDA74();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_96A60(a3, a4, &v36);
      _os_log_impl(&dword_0, v25, v26, "%{public}s Did not get a [String: IDSIDInfoResult] from IDS!?", v27, 0xCu);
      sub_97C9C(v28);
    }

    v29 = [*(a7 + 16) internalServiceName];
    if (!v29)
    {
      sub_BD8B4();
      v29 = sub_BD884();
    }

    v30 = objc_opt_self();
    isa = sub_BD944().super.isa;
    v35 = [v30 finalResultForService:v29 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:a9 & 1 error:-1];

    v34(v35);
    v32 = v35;
  }
}

void sub_B9820(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123D48, &qword_CE330);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_97D98(*(a1 + 48) + 40 * v13, v27);
        sub_97D3C(*(a1 + 56) + 32 * v13, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_97D98(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_75B0(v24, &qword_1242E0, &qword_CEE68);

          goto LABEL_23;
        }

        sub_97D3C(v25 + 8, v23);
        sub_75B0(v24, &qword_1242E0, &qword_CEE68);
        sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v14 = sub_94048(v21, v22);
        v15 = v14;
        if (v16)
        {
          v8 = (v2[6] + 16 * v14);
          v9 = v8[1];
          *v8 = v21;
          v8[1] = v22;

          v10 = v2[7];
          v11 = *(v10 + 8 * v15);
          *(v10 + 8 * v15) = v21;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v17 = (v2[6] + 16 * v14);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * v14) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_26;
          }

          v2[2] = v20;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_B9B04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_BD9B4();
  v6[3] = sub_BD9A4();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_6D10;

  return v12(a6);
}

void *sub_B9C20(uint64_t a1, uint64_t a2)
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

  sub_94950(&qword_123E90, &qword_CE9B0);
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

void *sub_B9CC8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_BDDC4();

    sub_BD8E4();
    v24 = sub_BDDE4();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_BDD24() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_BA470(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            sub_BDDC4();

            sub_BD8E4();
            v43 = sub_BDDE4();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_BDD24() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_BA238(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_75A8();
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_BA238(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_BA470(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_BDDC4();

        sub_BD8E4();
        v20 = sub_BDDE4();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_BDD24() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_BA470(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_94950(&qword_124108, &qword_CEB28);
  result = sub_BDC04();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_BDDC4();

    sub_BD8E4();
    result = sub_BDDE4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_BA694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_94048(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_6FF8(&qword_123D48, &qword_CE330);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_BACA0(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_BA73C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_124308, &qword_CEEA8);
  v40 = a2;
  result = sub_BDCE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_BA9FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_94950(&qword_124300, &unk_CEE90);
  v39 = a2;
  result = sub_BDCE4();
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
      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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

uint64_t sub_BACA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_BDB44() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_BDDC4();

      sub_BD8E4();
      v13 = sub_BDDE4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_BAE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_94048(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_BA73C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_94048(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_BDD64();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_BB164();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_BAFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_94048(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_BA9FC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_94048(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_BDD64();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_6FF8(&qword_124300, &unk_CEE90);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_BB164()
{
  v1 = v0;
  sub_94950(&qword_124308, &qword_CEEA8);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_BB2DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_BB448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_124300, &unk_CEE90);
    v3 = sub_BDCF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_94048(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_BB54C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_BDA34();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_B1E30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_BB5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_BB448(&_swiftEmptyArrayStorage);
  v6 = *(a4 + 16) != 0;
  v7 = objc_allocWithZone(IMServiceReachabilityResult);
  v8 = sub_BD884();
  sub_7610(0, &qword_1242E8, IMServiceReachabilityHandleResult_ptr);
  isa = sub_BD834().super.isa;

  LOBYTE(v24) = 0;
  v10 = [v7 initWithService:v8 error:0 handleResults:isa isFinal:0 allAreReachable:v6 allSupportEncryption:0 didCheckServer:v24];

  [v10 setSelfKTData:a3];
  sub_7610(0, &qword_123E60, IDSIDInfoResult_ptr);
  v11 = sub_BD834().super.isa;
  [v10 setKtData:v11];

  v13 = sub_BB54C(v12);

  if (sub_B9CC8(a4, v13)[2])
  {
    if (qword_124180 != -1)
    {
      swift_once();
    }

    v14 = sub_BD7B4();
    sub_96A28(v14, qword_1241A0);

    v15 = sub_BD794();
    v16 = sub_BDA54();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = sub_BDA24();
      v21 = v20;

      v22 = sub_96A60(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v15, v16, "IDS didn't give us back all the results we asked about: %s", v17, 0xCu);
      sub_97C9C(v18);
    }

    else
    {
    }

    [v10 setAllAreReachable:0];
  }

  else
  {
  }

  return v10;
}

unint64_t sub_BB8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_124308, &qword_CEEA8);
    v3 = sub_BDCF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_94048(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_BBA08()
{
  result = qword_1242F8;
  if (!qword_1242F8)
  {
    sub_A9E00(&qword_1242F0, &qword_CEE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1242F8);
  }

  return result;
}

uint64_t sub_BBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_BDD24() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_BBB0C(unint64_t result, uint64_t a2, uint64_t a3)
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

void sub_BBC1C(void *a1)
{

  objc_end_catch();
}

void sub_BBC50(void *a1, NSObject *a2)
{
  v3 = [a1 guid];
  sub_35480();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Found a chat that is not 1-1 chat for message relay: %@", v4, 0xCu);
}

void sub_BBCE8()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BBD58(void *a1, NSObject *a2, double a3)
{
  [a1 _messageRetryTimeout];
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = v5;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "timeSinceLastCacheFlush > _messagesRetryTimeout (%f > %f), or not flushed before.", &v6, 0x16u);
}

void sub_BBEE4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BBF74()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC004()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC0B8()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC128()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC164()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC1A0()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC1DC()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC218()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC288()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC318(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "  Unable to reflect mark as reviewed, callerID is nil for account: %@", &v2, 0xCu);
}

void sub_BC390()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC41C()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC4A8()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC4E4()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC554()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC590()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BC5CC()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC63C()
{
  sub_35480();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC6AC(uint64_t a1, int a2, NSObject *a3)
{
  [*(a1 + 32) guid];
  v6 = *(a1 + 40);
  sub_35480();
  v9 = 2112;
  v10 = v7;
  v11 = 1024;
  v12 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Individual send for collaboration, message guid %@ to %@ failed for reason: %u", v8, 0x1Cu);
}

void sub_BC764(uint64_t *a1)
{
  sub_54EB8(a1, __stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BC7D4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC864()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC8F4()
{
  sub_35464();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BC984(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_BC9F8()
{
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BCA90(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_54E98();
  sub_54EC4(&dword_0, v2, v3, "Send of message edit not successful, editCommandGuid %@, error %ld");
}

void sub_BCB0C(uint64_t a1)
{
  sub_54EA4(a1, __stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BCB7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_54E98();
  sub_54EC4(&dword_0, v2, v3, "Send of sticker reposition not successful, stickerRepositionCommandGuid %@, error %ld");
}

void sub_BCCF8(uint64_t *a1)
{
  sub_54EB8(a1, __stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BCD68()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BCDA4(uint64_t *a1)
{
  sub_54EB8(a1, __stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BCE14(uint64_t *a1)
{
  sub_54EB8(a1, __stack_chk_guard);
  sub_54E98();
  sub_35474();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_BCE84()
{
  sub_3548C();
  sub_35474();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BCEC0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to store updated breadcrumb item %@", &v2, 0xCu);
}

void sub_BD04C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error unpacking balloon plugin from BlastDoor: %@", &v2, 0xCu);
}

void sub_BD380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "_handleIncomingMessageError: %@", &v3, 0x16u);
}