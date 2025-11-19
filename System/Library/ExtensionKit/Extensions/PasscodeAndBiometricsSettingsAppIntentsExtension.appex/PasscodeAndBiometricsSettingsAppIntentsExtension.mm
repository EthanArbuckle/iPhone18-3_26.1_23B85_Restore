id sub_100001550(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 != 2)
  {
    return (v4 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    LOBYTE(v4) = a2();

    *(v2 + v3) = v4;
    return (v4 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000015C0()
{
  v1 = OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable;
  v2 = *(v0 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() sharedInstance];
    LOBYTE(v2) = [v3 isFeatureAvailable];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_100001638(char a1)
{
  *(v2 + 384) = v1;
  *(v2 + 505) = a1;
  v3 = sub_100002960(&qword_100014298, qword_100008E88);
  *(v2 + 392) = v3;
  v4 = *(v3 - 8);
  *(v2 + 400) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  sub_1000089EC();
  *(v2 + 416) = sub_1000089DC();
  v7 = sub_1000089AC();
  *(v2 + 424) = v7;
  *(v2 + 432) = v6;

  return _swift_task_switch(sub_10000173C, v7, v6);
}

uint64_t sub_10000173C()
{
  LODWORD(v1) = *(v0 + 505);
  if (v1 > 7)
  {
    if (*(v0 + 505) < 0xCu)
    {
      v24 = *(v0 + 416);
      v25 = *(v0 + 384);

      v26 = sub_1000089FC();
      sub_100008A1C(16);
      *(v0 + 320) = 0;
      *(v0 + 328) = 0xE000000000000000;
      v81._countAndFlagsBits = 544370502;
      v81._object = 0xE400000000000000;
      sub_10000898C(v81);
      *(v0 + 501) = v1;
      sub_100008A3C();
      v82._countAndFlagsBits = 8250;
      v82._object = 0xE200000000000000;
      sub_10000898C(v82);
      v27 = sub_100001510();
      v28 = (v27 & 1) == 0;
      if (v27)
      {
        v29._countAndFlagsBits = 1702195828;
      }

      else
      {
        v29._countAndFlagsBits = 0x65736C6166;
      }

      if (v28)
      {
        v30 = 0xE500000000000000;
      }

      else
      {
        v30 = 0xE400000000000000;
      }

      v29._object = v30;
      sub_10000898C(v29);

      v83._countAndFlagsBits = 539371040;
      v83._object = 0xE400000000000000;
      sub_10000898C(v83);
      v31 = objc_opt_self();
      v10 = [v31 sharedConnection];
      if (v10)
      {
        v32 = v10;
        v33 = *(v0 + 384);
        v34 = [v10 isFingerprintModificationAllowed];

        if (v34)
        {
          v35._countAndFlagsBits = 1702195828;
        }

        else
        {
          v35._countAndFlagsBits = 0x65736C6166;
        }

        if (v34)
        {
          v36 = 0xE400000000000000;
        }

        else
        {
          v36 = 0xE500000000000000;
        }

        v35._object = v36;
        sub_10000898C(v35);

        sub_100003694(v26, *(v0 + 320), *(v0 + 328), 0xD000000000000017, 0x8000000100009BB0, 62);

        if ((*(v33 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isFaceIDAvailable) & 1) == 0)
        {
          goto LABEL_75;
        }

        v10 = [v31 sharedConnection];
        if (v10)
        {
          goto LABEL_48;
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __break(1u);
    }

    else
    {
      if (*(v0 + 505) > 0xEu)
      {
        if (v1 != 15)
        {
          v57 = *(v0 + 400);
          v56 = *(v0 + 408);
          v58 = *(v0 + 392);
          v59 = objc_opt_self();
          *(v0 + 440) = v59;
          v60 = [v59 sharedInstance];
          *(v0 + 448) = v60;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 496;
          *(v0 + 24) = sub_100002240;
          swift_continuation_init();
          *(v0 + 200) = v58;
          v61 = sub_1000029A8((v0 + 176));
          sub_1000089BC();
          v62 = *(v57 + 32);
          *(v0 + 456) = v62;
          *(v0 + 464) = (v57 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v62(v61, v56, v58);
          *(v0 + 144) = _NSConcreteStackBlock;
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1000027D4;
          *(v0 + 168) = &unk_100010C08;
          [v60 canUseWatchToUnlockWithCompletionHandler:v0 + 144];
          v63 = *(v57 + 8);
          *(v0 + 472) = v63;
          *(v0 + 480) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v63(v61, v58);
          v10 = (v0 + 16);

          return _swift_continuation_await(v10);
        }

LABEL_51:
        v38 = *(v0 + 416);

        v39 = sub_1000089FC();
        sub_100008A1C(16);
        *(v0 + 368) = 0;
        *(v0 + 376) = 0xE000000000000000;
        v84._countAndFlagsBits = 544370502;
        v84._object = 0xE400000000000000;
        sub_10000898C(v84);
        *(v0 + 504) = v1;
        sub_100008A3C();
        v85._countAndFlagsBits = 0x737961776C41203ALL;
        v85._object = 0xEA00000000003120;
        sub_10000898C(v85);
        sub_100003694(v39, *(v0 + 368), *(v0 + 376), 0xD000000000000017, 0x8000000100009BB0, 50);

        v37 = 1;
        goto LABEL_86;
      }

      if ((v1 - 12) >= 2)
      {
        v40 = *(v0 + 416);
        v41 = *(v0 + 384);

        v74 = sub_1000089FC();
        sub_100008A1C(24);
        *(v0 + 288) = 0;
        *(v0 + 296) = 0xE000000000000000;
        v86._countAndFlagsBits = 544370502;
        v86._object = 0xE400000000000000;
        sub_10000898C(v86);
        *(v0 + 499) = 14;
        sub_100008A3C();
        v87._countAndFlagsBits = 2629690;
        v87._object = 0xE300000000000000;
        sub_10000898C(v87);
        v42 = sub_100001510();
        v43 = (v42 & 1) == 0;
        if (v42)
        {
          v44._countAndFlagsBits = 1702195828;
        }

        else
        {
          v44._countAndFlagsBits = 0x65736C6166;
        }

        if (v43)
        {
          v45 = 0xE500000000000000;
        }

        else
        {
          v45 = 0xE400000000000000;
        }

        v44._object = v45;
        sub_10000898C(v44);

        v88._countAndFlagsBits = 545029152;
        v88._object = 0xE400000000000000;
        sub_10000898C(v88);
        v46 = sub_100001530();
        v47 = (v46 & 1) == 0;
        if (v46)
        {
          v48._countAndFlagsBits = 1702195828;
        }

        else
        {
          v48._countAndFlagsBits = 0x65736C6166;
        }

        if (v47)
        {
          v49 = 0xE500000000000000;
        }

        else
        {
          v49 = 0xE400000000000000;
        }

        v48._object = v49;
        sub_10000898C(v48);

        v89._countAndFlagsBits = 0x2026262029;
        v89._object = 0xE500000000000000;
        sub_10000898C(v89);
        v50 = objc_opt_self();
        v10 = [v50 sharedConnection];
        if (!v10)
        {
          goto LABEL_93;
        }

        v51 = v10;
        v52 = *(v0 + 384);
        v53 = [v10 isFingerprintModificationAllowed];

        if (v53)
        {
          v54._countAndFlagsBits = 1702195828;
        }

        else
        {
          v54._countAndFlagsBits = 0x65736C6166;
        }

        if (v53)
        {
          v55 = 0xE400000000000000;
        }

        else
        {
          v55 = 0xE500000000000000;
        }

        v54._object = v55;
        sub_10000898C(v54);

        sub_100003694(v74, *(v0 + 288), *(v0 + 296), 0xD000000000000017, 0x8000000100009BB0, 69);

        if (*(v52 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isFaceIDAvailable) & 1) != 0 || (*(*(v0 + 384) + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isTouchIDAvailable))
        {
          v10 = [v50 sharedConnection];
          if (!v10)
          {
LABEL_95:
            __break(1u);
            return _swift_continuation_await(v10);
          }

          goto LABEL_48;
        }

LABEL_75:
        v37 = 0;
        goto LABEL_86;
      }

      v2 = *(v0 + 416);
      v3 = *(v0 + 384);

      v4 = sub_1000089FC();
      sub_100008A1C(16);
      *(v0 + 304) = 0;
      *(v0 + 312) = 0xE000000000000000;
      v76._countAndFlagsBits = 544370502;
      v76._object = 0xE400000000000000;
      sub_10000898C(v76);
      *(v0 + 500) = v1;
      sub_100008A3C();
      v77._countAndFlagsBits = 8250;
      v77._object = 0xE200000000000000;
      sub_10000898C(v77);
      v5 = sub_100001530();
      v6 = (v5 & 1) == 0;
      if (v5)
      {
        v7._countAndFlagsBits = 1702195828;
      }

      else
      {
        v7._countAndFlagsBits = 0x65736C6166;
      }

      if (v6)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      v7._object = v8;
      sub_10000898C(v7);

      v78._countAndFlagsBits = 539371040;
      v78._object = 0xE400000000000000;
      sub_10000898C(v78);
      v9 = objc_opt_self();
      v10 = [v9 sharedConnection];
      if (v10)
      {
        v11 = v10;
        v12 = *(v0 + 384);
        v13 = [v10 isFingerprintModificationAllowed];

        if (v13)
        {
          v14._countAndFlagsBits = 1702195828;
        }

        else
        {
          v14._countAndFlagsBits = 0x65736C6166;
        }

        if (v13)
        {
          v1 = 0xE400000000000000;
        }

        else
        {
          v1 = 0xE500000000000000;
        }

        v14._object = v1;
        sub_10000898C(v14);

        sub_100003694(v4, *(v0 + 304), *(v0 + 312), 0xD000000000000017, 0x8000000100009BB0, 66);

        if (*(v12 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isTouchIDAvailable))
        {
          v10 = [v9 sharedConnection];
          if (!v10)
          {
            __break(1u);
            goto LABEL_21;
          }

LABEL_48:
          v22 = v10;
          v23 = [v10 isFingerprintModificationAllowed];
          goto LABEL_49;
        }

        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_91;
  }

LABEL_21:
  if (v1 <= 3 || (v1 - 5) < 2)
  {
    goto LABEL_51;
  }

  if (v1 != 4)
  {
    v64 = *(v0 + 416);
    v65 = *(v0 + 384);

    v66 = sub_1000089FC();
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    v67 = 0xE400000000000000;
    v90._countAndFlagsBits = 544370502;
    v90._object = 0xE400000000000000;
    sub_10000898C(v90);
    *(v0 + 502) = 7;
    sub_100008A3C();
    v91._countAndFlagsBits = 8250;
    v91._object = 0xE200000000000000;
    sub_10000898C(v91);
    v68 = sub_1000015C0();
    v69 = (v68 & 1) == 0;
    if (v68)
    {
      v70._countAndFlagsBits = 1702195828;
    }

    else
    {
      v70._countAndFlagsBits = 0x65736C6166;
    }

    if (v69)
    {
      v67 = 0xE500000000000000;
    }

    v70._object = v67;
    sub_10000898C(v70);

    sub_100003694(v66, *(v0 + 336), *(v0 + 344), 0xD000000000000017, 0x8000000100009BB0, 56);

    v37 = *(v65 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable);
    goto LABEL_86;
  }

  v15 = *(v0 + 416);

  v16 = sub_1000089FC();
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  v79._countAndFlagsBits = 544370502;
  v79._object = 0xE400000000000000;
  sub_10000898C(v79);
  *(v0 + 503) = 4;
  sub_100008A3C();
  v80._countAndFlagsBits = 8250;
  v80._object = 0xE200000000000000;
  sub_10000898C(v80);
  v17 = objc_opt_self();
  v10 = [v17 sharedConnection];
  if (!v10)
  {
    goto LABEL_92;
  }

  v18 = v10;
  v19 = [v10 recoveryPasscodeAvailable];

  if (v19)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v20._object = v21;
  sub_10000898C(v20);

  sub_100003694(v16, *(v0 + 352), *(v0 + 360), 0xD000000000000017, 0x8000000100009BB0, 53);

  v10 = [v17 sharedConnection];
  if (!v10)
  {
    goto LABEL_94;
  }

  v22 = v10;
  v23 = [v10 recoveryPasscodeAvailable];
LABEL_49:
  v37 = v23;

LABEL_86:
  v71 = *(v0 + 408);

  v72 = *(v0 + 8);

  return v72(v37 & 1);
}

uint64_t sub_100002240()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v3 = *v0;

  return _swift_task_switch(sub_100002348, v2, v1);
}

uint64_t sub_100002348()
{
  v10 = *(v0 + 472);
  v11 = *(v0 + 480);
  v1 = *(v0 + 456);
  v9 = *(v0 + 464);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  *(v0 + 506) = *(v0 + 496);

  v6 = [v3 sharedInstance];
  *(v0 + 488) = v6;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 497;
  *(v0 + 88) = sub_100002514;
  swift_continuation_init();
  *(v0 + 264) = v5;
  v7 = sub_1000029A8((v0 + 240));
  sub_1000089BC();
  v1(v7, v4, v5);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1000027D4;
  *(v0 + 232) = &unk_100010C30;
  [v6 canUseVisionToUnlockWithCompletionHandler:v0 + 208];
  v10(v7, v5);

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100002514()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v3 = *v0;

  return _swift_task_switch(sub_10000261C, v2, v1);
}

uint64_t sub_10000261C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 506);
  v3 = *(v0 + 416);

  v4 = *(v0 + 497);

  v5 = sub_1000089FC();
  sub_100008A1C(16);
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  v14._countAndFlagsBits = 544370502;
  v14._object = 0xE400000000000000;
  sub_10000898C(v14);
  *(v0 + 498) = 16;
  sub_100008A3C();
  v15._countAndFlagsBits = 8250;
  v15._object = 0xE200000000000000;
  sub_10000898C(v15);
  if (v2)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_10000898C(v6);

  v16._countAndFlagsBits = 545029152;
  v16._object = 0xE400000000000000;
  sub_10000898C(v16);
  if (v4)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_10000898C(v8);

  sub_100003694(v5, *(v0 + 272), *(v0 + 280), 0xD000000000000017, 0x8000000100009BB0, 74);

  v10 = *(v0 + 408);

  v11 = *(v0 + 8);

  return v11((v2 | v4) & 1);
}

uint64_t sub_1000027D4(uint64_t a1)
{
  sub_100002ACC((a1 + 32), *(a1 + 56));
  sub_100002960(&qword_100014298, qword_100008E88);
  return sub_1000089CC();
}

id sub_100002908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002960(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_1000029A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100002A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002A80(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100002ACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002B18()
{
  v0 = sub_100002960(&qword_1000142C0, &qword_100008F40);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_100003020();
  sub_10000879C();
  v5 = sub_10000875C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_10000879C();
  v7 = sub_10000875C();
  v6(v4, v0);
  sub_100002960(&qword_1000142C8, &qword_100008F48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100008EA0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_10000874C();

  return v9;
}

uint64_t sub_100002CDC()
{
  v0 = sub_10000877C();
  sub_100002960(&qword_1000142B0, &qword_100008F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100008EB0;
  *(v1 + 32) = v0;
  v2 = sub_10000876C();

  return v2;
}

uint64_t sub_100002D68()
{
  v0 = sub_1000087CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_100007BD0();
  sub_100003020();
  sub_1000087DC();
  v5 = sub_1000087BC();
  (*(v1 + 8))(v4, v0);
  sub_100002960(&qword_1000142B8, &qword_100008F38);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100008EB0;
  *(v6 + 32) = v5;
  v7 = sub_1000087AC();

  return v7;
}

uint64_t sub_100002ED0()
{
  v0 = sub_10000873C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003020();
  sub_10000872C();
  v5 = sub_10000871C();
  (*(v1 + 8))(v4, v0);
  sub_100002960(&qword_1000142A8, &qword_100008F28);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100008EB0;
  *(v6 + 32) = v5;
  v7 = sub_10000870C();

  return v7;
}

unint64_t sub_100003020()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

uint64_t sub_100003074()
{
  v0 = sub_10000896C();
  sub_100003880(v0, qword_1000142D0);
  sub_100003844(v0, qword_1000142D0);
  return sub_10000895C();
}

uint64_t sub_1000030EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031B8(v11, 0, 0, 1, a1, a2);
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
    sub_100002A1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002A80(v11);
  return v7;
}

unint64_t sub_1000031B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000032C4(a5, a6);
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
    result = sub_100008A2C();
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

char *sub_1000032C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003310(a1, a2);
  sub_100003440(&off_1000109F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003310(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000352C(v5, 0);
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

  result = sub_100008A2C();
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
        v10 = sub_10000899C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000352C(v10, 0);
        result = sub_100008A0C();
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

uint64_t sub_100003440(uint64_t result)
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

  result = sub_1000035A0(result, v12, 1, v3);
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

void *sub_10000352C(uint64_t a1, uint64_t a2)
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

  sub_100002960(&qword_1000142E8, &unk_100008F58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002960(&qword_1000142E8, &unk_100008F58);
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

void sub_100003694(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_100014230 != -1)
  {
    swift_once();
  }

  v12 = sub_10000896C();
  sub_100003844(v12, qword_1000142D0);

  oslog = sub_10000894C();

  if (os_log_type_enabled(oslog, a1))
  {
    v13 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000030EC(a4, a5, &v15);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a6;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_1000030EC(a2, a3, &v15);
    _os_log_impl(&_mh_execute_header, oslog, a1, "%{public}s:%ld - %{public}s", v13, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100003844(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003880(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000038E8()
{
  result = qword_1000142F0;
  if (!qword_1000142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F0);
  }

  return result;
}

unint64_t sub_100003940()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

unint64_t sub_100003A00()
{
  result = qword_100014300;
  if (!qword_100014300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014300);
  }

  return result;
}

uint64_t sub_100003AA8()
{
  v1 = *(v0 + 16);
  sub_1000086BC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100003B10(uint64_t a1)
{
  v2 = sub_100003A00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100003B60()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    sub_100003BC4(&qword_100014310, &qword_100009088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}

uint64_t sub_100003BC4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003C10()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100003C68()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_100003CC0()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

uint64_t sub_100003D14@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_100002960(&qword_100014420, &qword_1000098B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v129 - v5;
  v7 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v129 - v9;
  v11 = sub_10000893C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v132 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = sub_10000882C();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v129 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v129 - v25;
  v27 = __chkstk_darwin(v24);
  v30 = v129 - v29;
  switch(a1)
  {
    case 1:
      v93 = v28;
      v131 = v27;
      v94 = [objc_opt_self() sharedConnection];
      if (!v94)
      {
        goto LABEL_63;
      }

      v95 = v94;
      [v94 isPasscodeSet];

      sub_10000892C();
      sub_100005958();
      (*(v12 + 56))(v10, 0, 1, v11);
      sub_100005888();
      v96 = sub_1000087FC();
      (*(*(v96 - 8) + 56))(v6, 0, 1, v96);
      sub_10000892C();
      sub_10000880C();
      return (*(v93 + 32))(v133, v26, v131);
    case 2:
      sub_10000892C();
      sub_100005958();
      v83 = *(v12 + 56);
      v82 = v12 + 56;
      v83(v10, 0, 1, v11);
      sub_100005888();
      v84 = sub_1000087FC();
      (*(*(v84 - 8) + 56))(v6, 0, 1, v84);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v85 = *(v82 + 16);
      v86 = (*(v82 + 24) + 32) & ~*(v82 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 3:
    case 7:
      sub_10000892C();
      sub_100005958();
      (*(v12 + 56))(v10, 0, 1, v11);
      sub_100005888();
      v92 = sub_1000087FC();
      (*(*(v92 - 8) + 56))(v6, 0, 1, v92);
      goto LABEL_54;
    case 4:
      sub_10000892C();
      sub_100005958();
      v68 = *(v12 + 56);
      v67 = v12 + 56;
      v68(v10, 0, 1, v11);
      sub_100005888();
      v69 = sub_1000087FC();
      (*(*(v69 - 8) + 56))(v6, 0, 1, v69);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v70 = *(v67 + 16);
      v71 = (*(v67 + 24) + 32) & ~*(v67 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 5:
      sub_10000892C();
      sub_100005958();
      v98 = *(v12 + 56);
      v97 = v12 + 56;
      v98(v10, 0, 1, v11);
      sub_100005888();
      v99 = sub_1000087FC();
      (*(*(v99 - 8) + 56))(v6, 0, 1, v99);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v100 = *(v97 + 16);
      v101 = (*(v97 + 24) + 32) & ~*(v97 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 6:
      v130 = v28;
      v131 = v27;
      v107 = [objc_opt_self() sharedConnection];
      if (!v107)
      {
        goto LABEL_64;
      }

      v108 = v107;
      [v107 effectiveBoolValueForSetting:MCFeatureAllowVoiceDialing];

      sub_10000892C();
      sub_100005958();
      v110 = *(v12 + 56);
      v109 = v12 + 56;
      v110(v10, 0, 1, v11);
      sub_100005888();
      v111 = sub_1000087FC();
      (*(*(v111 - 8) + 56))(v6, 0, 1, v111);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v112 = *(v109 + 16);
      v113 = (*(v109 + 24) + 32) & ~*(v109 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      sub_10000892C();
      sub_10000880C();
      return (*(v130 + 32))(v133, v23, v131);
    case 8:
      sub_10000892C();
      sub_100005958();
      v120 = *(v12 + 56);
      v119 = v12 + 56;
      v120(v10, 0, 1, v11);
      sub_1000087EC();
      v121 = sub_1000087FC();
      (*(*(v121 - 8) + 56))(v6, 0, 1, v121);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v122 = *(v119 + 16);
      v123 = (*(v119 + 24) + 32) & ~*(v119 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 9:
      sub_10000892C();
      sub_100005958();
      v78 = *(v12 + 56);
      v77 = v12 + 56;
      v78(v10, 0, 1, v11);
      sub_1000087EC();
      v79 = sub_1000087FC();
      (*(*(v79 - 8) + 56))(v6, 0, 1, v79);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v80 = *(v77 + 16);
      v81 = (*(v77 + 24) + 32) & ~*(v77 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      return sub_10000880C();
    case 10:
      sub_10000892C();
      sub_100005958();
      v115 = *(v12 + 56);
      v114 = v12 + 56;
      v115(v10, 0, 1, v11);
      sub_1000087EC();
      v116 = sub_1000087FC();
      (*(*(v116 - 8) + 56))(v6, 0, 1, v116);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v117 = *(v114 + 16);
      v118 = (*(v114 + 24) + 32) & ~*(v114 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 11:
      sub_10000892C();
      sub_100005958();
      v63 = *(v12 + 56);
      v62 = v12 + 56;
      v63(v10, 0, 1, v11);
      sub_1000087EC();
      v64 = sub_1000087FC();
      (*(*(v64 - 8) + 56))(v6, 0, 1, v64);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v65 = *(v62 + 16);
      v66 = (*(v62 + 24) + 32) & ~*(v62 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 12:
      sub_10000892C();
      sub_100005958();
      v73 = *(v12 + 56);
      v72 = v12 + 56;
      v73(v10, 0, 1, v11);
      sub_1000087EC();
      v74 = sub_1000087FC();
      (*(*(v74 - 8) + 56))(v6, 0, 1, v74);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v75 = *(v72 + 16);
      v76 = (*(v72 + 24) + 32) & ~*(v72 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_54;
    case 13:
      sub_10000892C();
      sub_100005958();
      v103 = *(v12 + 56);
      v102 = v12 + 56;
      v103(v10, 0, 1, v11);
      sub_1000087EC();
      v104 = sub_1000087FC();
      (*(*(v104 - 8) + 56))(v6, 0, 1, v104);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v105 = *(v102 + 16);
      v106 = (*(v102 + 24) + 32) & ~*(v102 + 24);
      *(swift_allocObject() + 16) = xmmword_1000090B0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      return sub_10000880C();
    case 14:
      v130 = v28;
      v131 = v27;
      v41 = MobileGestalt_get_current_device();
      if (!v41)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        JUMPOUT(0x100005844);
      }

      v42 = v41;
      touchIDCapability = MobileGestalt_get_touchIDCapability();

      if (touchIDCapability)
      {
        v44 = "com.apple.graphic-icon.touch-id";
      }

      else
      {
        v44 = "com.apple.graphic-icon.face-id";
      }

      v129[1] = v44;
      v45 = 0x100000000000001ELL;
      if (touchIDCapability)
      {
        v45 = 0x100000000000001FLL;
      }

      v129[0] = v45;
      if (touchIDCapability)
      {
        v46 = "Use Touch ID for iPhone Unlock";
      }

      else
      {
        v46 = "Use Face ID for iPhone Unlock";
      }

      v129[2] = v46;
      v47 = 0x1000000000000023;
      if (touchIDCapability)
      {
        v48 = "r iTunes & App Store";
      }

      else
      {
        v48 = " iTunes & App Store";
      }

      v129[3] = v48;
      if (touchIDCapability)
      {
        v49 = "r Wallet & Apple Pay";
      }

      else
      {
        v49 = " Wallet & Apple Pay";
      }

      v129[5] = v49;
      v50 = 0x1000000000000027;
      if (touchIDCapability)
      {
        v50 = 0x1000000000000028;
      }

      v129[4] = v50;
      if (touchIDCapability)
      {
        v51 = "r Contactless & Payments";
      }

      else
      {
        v51 = " Contactless & Payments";
      }

      v129[7] = v51;
      if (!touchIDCapability)
      {
        v47 = 0x1000000000000022;
      }

      v129[6] = v47;
      if (touchIDCapability)
      {
        v52 = "r Password AutoFill";
      }

      else
      {
        v52 = " Password AutoFill";
      }

      v129[10] = v52;
      v53 = 0x100000000000001BLL;
      if (touchIDCapability)
      {
        v53 = 0x100000000000001CLL;
      }

      v129[8] = v53;
      if (touchIDCapability)
      {
        v54 = "Use Touch ID for Other Apps";
      }

      else
      {
        v54 = "Use Face ID for Other Apps";
      }

      v129[11] = v54;
      v55 = 0x10000000000000C6;
      if (!touchIDCapability)
      {
        v55 = 0x10000000000000C5;
      }

      v129[9] = v55;
      sub_10000892C();
      sub_100005958();
      v57 = *(v12 + 56);
      v56 = v12 + 56;
      v57(v10, 0, 1, v11);
      sub_1000087EC();
      v58 = sub_1000087FC();
      (*(*(v58 - 8) + 56))(v6, 0, 1, v58);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v59 = *(v56 + 16);
      v60 = (*(v56 + 24) + 32) & ~*(v56 + 24);
      *(swift_allocObject() + 16) = xmmword_1000090A0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000880C();
      result = (*(v130 + 32))(v133, v20, v131);
      break;
    case 15:
      sub_10000892C();
      sub_100005958();
      v88 = *(v12 + 56);
      v87 = v12 + 56;
      v88(v10, 0, 1, v11);
      sub_100005888();
      v89 = sub_1000087FC();
      (*(*(v89 - 8) + 56))(v6, 0, 1, v89);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v90 = *(v87 + 16);
      v91 = (*(v87 + 24) + 32) & ~*(v87 + 24);
      *(swift_allocObject() + 16) = xmmword_100009090;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      goto LABEL_54;
    case 16:
      sub_10000892C();
      sub_100005958();
      v37 = *(v12 + 56);
      v36 = v12 + 56;
      v37(v10, 0, 1, v11);
      sub_100005888();
      v38 = sub_1000087FC();
      (*(*(v38 - 8) + 56))(v6, 0, 1, v38);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      v39 = *(v36 + 16);
      v40 = (*(v36 + 24) + 32) & ~*(v36 + 24);
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_10000892C();
      sub_10000892C();
LABEL_54:
      sub_10000892C();
      return sub_10000880C();
    default:
      v31 = v28;
      v32 = v27;
      v33 = MobileGestalt_get_current_device();
      if (!v33)
      {
        goto LABEL_62;
      }

      v34 = v33;
      v35 = MobileGestalt_get_touchIDCapability();

      if (v35)
      {
        goto LABEL_58;
      }

      v124 = MobileGestalt_get_current_device();
      if (!v124)
      {
        goto LABEL_65;
      }

      v125 = v124;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
LABEL_58:
        sub_10000892C();
        (*(v12 + 56))(v10, 1, 1, v11);
        sub_100005888();
        v127 = sub_1000087FC();
        (*(*(v127 - 8) + 56))(v6, 0, 1, v127);
        sub_10000892C();
        sub_10000880C();
      }

      else
      {
        sub_10000892C();
        (*(v12 + 56))(v10, 1, 1, v11);
        sub_100005888();
        v128 = sub_1000087FC();
        (*(*(v128 - 8) + 56))(v6, 0, 1, v128);
        sub_10000881C();
      }

      result = (*(v31 + 32))(v133, v30, v32);
      break;
  }

  return result;
}

id sub_100005888()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if ((touchIDCapability & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      MobileGestalt_get_pearlIDCapability();

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_1000087EC();
}

id sub_100005958()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      MobileGestalt_get_pearlIDCapability();

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_10000892C();
}

uint64_t sub_100005A3C()
{
  v0 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000893C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000088FC();
  sub_100003880(v7, qword_1000154D0);
  sub_100003844(v7, qword_1000154D0);
  sub_10000892C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000088EC();
}

uint64_t sub_100005BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000085C8;

  return sub_100007FC8();
}

uint64_t sub_100005C4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000085A4;

  return sub_100007FC8();
}

uint64_t sub_100005CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005DB0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005DB0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100005EB4()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

uint64_t sub_100005F08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005FAC;

  return sub_10000842C();
}

uint64_t sub_100005FAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1000060C4()
{
  result = qword_100014338;
  if (!qword_100014338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014338);
  }

  return result;
}

unint64_t sub_10000611C()
{
  result = qword_100014340;
  if (!qword_100014340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014340);
  }

  return result;
}

unint64_t sub_100006174()
{
  result = qword_100014348;
  if (!qword_100014348)
  {
    sub_100003BC4(&qword_100014350, qword_100009178);
    sub_10000611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014348);
  }

  return result;
}

uint64_t sub_1000061F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005EB4();
  *v6 = v2;
  v6[1] = sub_1000062AC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000062AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000063E8()
{
  result = qword_100014358;
  if (!qword_100014358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014358);
  }

  return result;
}

uint64_t sub_10000643C()
{
  v0 = sub_100002960(&qword_100014430, &qword_1000098C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100002960(&qword_100014438, &qword_1000098D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100003CC0();
  sub_1000088AC();
  v9._object = 0x800000010000B200;
  v9._countAndFlagsBits = 0xD000000000000031;
  sub_10000889C(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000888C();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000889C(v10);
  return sub_1000088BC();
}

unint64_t sub_10000661C()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

unint64_t sub_100006674()
{
  result = qword_100014368;
  if (!qword_100014368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014368);
  }

  return result;
}

unint64_t sub_1000066CC()
{
  result = qword_100014370;
  if (!qword_100014370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014370);
  }

  return result;
}

unint64_t sub_100006724()
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014378);
  }

  return result;
}

uint64_t sub_100006778()
{
  sub_100007F74();
  v1 = sub_10000885C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000067E8()
{
  result = qword_100014380;
  if (!qword_100014380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014380);
  }

  return result;
}

unint64_t sub_100006840()
{
  result = qword_100014388;
  if (!qword_100014388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014388);
  }

  return result;
}

unint64_t sub_100006898()
{
  result = qword_100014390;
  if (!qword_100014390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014390);
  }

  return result;
}

unint64_t sub_1000068F0()
{
  result = qword_100014398;
  if (!qword_100014398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014398);
  }

  return result;
}

uint64_t sub_1000069CC(uint64_t a1)
{
  v2 = sub_100003CC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006A1C()
{
  result = qword_1000143B0;
  if (!qword_1000143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B0);
  }

  return result;
}

uint64_t sub_100006A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000062AC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006B3C(uint64_t a1)
{
  v2 = sub_100006898();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006B88(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x444F435353415023;
    case 4:
      v3 = 11;
      goto LABEL_10;
    case 5:
      return 0x45445F4550495723;
    case 6:
      return 0x445F4543494F5623;
    case 7:
      return 0xD000000000000014;
    case 8:
    case 9:
      return 0xD000000000000012;
    case 10:
      return 0xD000000000000020;
    case 11:
      return 0x414C475F44444123;
    case 12:
      return 0xD000000000000010;
    case 13:
      return 0xD000000000000013;
    case 14:
    case 16:
      v3 = 10;
      goto LABEL_10;
    case 15:
      v3 = 9;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100006DB0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100006B88(*a1);
  v5 = v4;
  if (v3 == sub_100006B88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008A4C();
  }

  return v8 & 1;
}

unint64_t sub_100006E3C()
{
  result = qword_1000143B8;
  if (!qword_1000143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B8);
  }

  return result;
}

Swift::Int sub_100006E90()
{
  v1 = *v0;
  sub_100008A6C();
  sub_100006B88(v1);
  sub_10000897C();

  return sub_100008A7C();
}

uint64_t sub_100006EF4()
{
  sub_100006B88(*v0);
  sub_10000897C();
}

Swift::Int sub_100006F48()
{
  v1 = *v0;
  sub_100008A6C();
  sub_100006B88(v1);
  sub_10000897C();

  return sub_100008A7C();
}

uint64_t sub_100006FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000854C();
  *a2 = result;
  return result;
}

unint64_t sub_100006FD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100006B88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100007048(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003BC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000070BC@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10000854C();
  *a1 = result;
  return result;
}

unint64_t sub_100007108()
{
  result = qword_1000143D0;
  if (!qword_1000143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D0);
  }

  return result;
}

uint64_t sub_100007160()
{
  v0 = sub_10000893C();
  sub_100003880(v0, qword_1000154E8);
  sub_100003844(v0, qword_1000154E8);
  return sub_10000892C();
}

uint64_t sub_1000071C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000086DC();
  *a1 = v5;
  return result;
}

uint64_t sub_100007200(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000086EC();
}

void (*sub_100007238(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000086CC();
  return sub_1000072AC;
}

void sub_1000072AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000072F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007ECC();
  v5 = sub_100007F74();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100007370()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_1000073C8()
{
  result = qword_1000143E0;
  if (!qword_1000143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143E0);
  }

  return result;
}

unint64_t sub_100007420()
{
  result = qword_1000143E8;
  if (!qword_1000143E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143E8);
  }

  return result;
}

uint64_t sub_1000074FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100003844(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000075A4(uint64_t a1)
{
  v2 = sub_100007ECC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000075E8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007ECC();
  v7 = sub_100007F20();
  v8 = sub_100007F74();
  *v5 = v2;
  v5[1] = sub_1000076B4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000076B4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_1000077BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007BD0();
  *a1 = result;
  return result;
}

uint64_t sub_1000077E4(uint64_t a1)
{
  v2 = sub_100003020();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100007868(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000078F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1000079C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002960(&unk_100014440, &qword_1000098E0);
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

char *sub_100007ABC(char *a1, int64_t a2, char a3)
{
  result = sub_100007ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007ADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002960(&unk_100014440, &qword_1000098E0);
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

uint64_t sub_100007BD0()
{
  v20 = sub_1000088CC();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100002960(&qword_1000143F0, &qword_1000098A0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10000893C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002960(&qword_100014400, &qword_1000098B0);
  sub_10000892C();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 17;
  v17 = sub_1000086AC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100003CC0();
  return sub_1000086FC();
}

unint64_t sub_100007ECC()
{
  result = qword_100014408;
  if (!qword_100014408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014408);
  }

  return result;
}

unint64_t sub_100007F20()
{
  result = qword_100014410;
  if (!qword_100014410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014410);
  }

  return result;
}

unint64_t sub_100007F74()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

uint64_t sub_100007FE4()
{
  sub_1000089EC();
  *(v0 + 16) = sub_1000089DC();
  v2 = sub_1000089AC();

  return _swift_task_switch(sub_100008078, v2, v1);
}

uint64_t sub_100008078()
{
  v1 = *(v0 + 16);

  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for IntentAvailabilityProvider()) init];

  return _swift_task_switch(sub_1000080FC, 0, 0);
}

uint64_t sub_1000080FC()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = &_swiftEmptyArrayStorage;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000081A8;
  v2 = *(v0 + 24);

  return sub_100001638(0);
}

uint64_t sub_1000081A8(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 57) = a1;

  return _swift_task_switch(sub_1000082A8, 0, 0);
}

uint64_t sub_1000082A8()
{
  v1 = *(v0 + 40);
  if (*(v0 + 57))
  {
    v2 = *(v0 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 40);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_1000079C8(0, *(v1 + 2) + 1, 1, *(v0 + 40));
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_1000079C8((v4 > 1), v5 + 1, 1, v1);
    }

    v6 = *(v0 + 56);
    *(v1 + 2) = v5 + 1;
    v1[v5 + 32] = v6;
  }

  v7 = *(v0 + 32) + 1;
  if (*(v0 + 32) == 16)
  {

    v8 = *(v0 + 8);

    return v8(v1);
  }

  else
  {
    *(v0 + 32) = v7;
    *(v0 + 40) = v1;
    v10 = *(&off_100010A18 + v7 + 32);
    *(v0 + 56) = v10;
    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    *v11 = v0;
    v11[1] = sub_1000081A8;
    v12 = *(v0 + 24);

    return sub_100001638(v10);
  }
}

uint64_t sub_100008448()
{
  sub_100007ABC(0, 17, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100010A18 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100007ABC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 17);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000854C()
{
  v0 = sub_100008A5C();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}