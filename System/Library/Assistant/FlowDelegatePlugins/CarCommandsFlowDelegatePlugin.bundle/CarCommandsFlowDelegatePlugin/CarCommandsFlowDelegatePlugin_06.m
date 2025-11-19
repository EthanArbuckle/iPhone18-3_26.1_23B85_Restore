uint64_t sub_9A628()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  v3[12] = v0;

  if (v0)
  {
    v10 = v3[7];
    v11 = v3[8];
    sub_93DF0();
    sub_D188(v12, v13, v14);
    sub_93DF0();
    sub_D188(v15, v16, v17);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    v23 = v3[8];
    v22 = v3[9];
    v24 = v3[7];
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_9A7C0()
{
  sub_D2DC();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_D37C();
  v5 = v0[12];

  return v4();
}

uint64_t sub_9A830(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return sub_D2B0();
}

uint64_t sub_9A844()
{
  sub_10824(v0[62], (v0 + 16));
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9498, &qword_172F58);
  if (!sub_9F478())
  {
    v9 = v0[62];
    sub_9F4B0();
    sub_D188((v0 + 21), &qword_1E94A0, &unk_172F60);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    sub_9F3F8();
    v0[56] = v13;
    v0[57] = v14;
    sub_9F49C();
    v15._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v15);
    sub_16AD84();
    v16._countAndFlagsBits = v1 + 6;
    v16._object = 0x8000000000187920;
    sub_16A744(v16);
    v10 = v0[57];
    sub_6B9BC(v0[56]);
    swift_willThrow();
    sub_9F0FC();
    sub_31534();

    __asm { BRAA            X2, X16 }
  }

  v2 = v0[63];
  sub_9F500();
  swift_task_alloc();
  sub_D3E0();
  v0[64] = v3;
  *v3 = v4;
  sub_9F4EC(v3);
  sub_31534();

  return sub_13AB58(v5, v6);
}

uint64_t sub_9AA00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 520) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9AAF8()
{
  sub_D3A4();
  v1 = v0[30];
  sub_D084(v0 + 26, v0[29]);
  sub_9F160();
  v8 = (v2 + *v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  sub_D3E0();
  v0[66] = v5;
  *v5 = v6;
  v5[1] = sub_9AC04;
  sub_93DF0();

  return v8();
}

uint64_t sub_9AC04()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9ACFC()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 520);
  v2 = sub_9F0FC();

  return v3(v2);
}

uint64_t sub_9B060()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9B158()
{
  sub_D3A4();
  if (*(v0 + 432))
  {
    v1 = *(v0 + 504);
    sub_D124((v0 + 408), v0 + 368);
    if (*(v1 + 112) == 1)
    {
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 560) = v2;
      *v2 = v3;
      v4 = sub_9F4D8(v2);

      return sub_9DDD0(v4, v5);
    }

    else
    {
      *(v0 + 584) = *(v1 + 104);
      sub_9F22C();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 592) = v16;
      *v16 = v17;
      sub_9F1D0(v16);

      return sub_9E0F0();
    }
  }

  else
  {
    sub_D188(v0 + 408, &qword_1E9490, &unk_172F48);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    sub_48154(v7, qword_1E65C0);
    sub_9F390();
    sub_9F150();
    sub_386D8(v8, v9, v10, v11, v12, v13, 30, v14, v18);
    sub_9F200();
    sub_9F0CC();

    return v15(0);
  }
}

uint64_t sub_9B338()
{
  sub_10BC0();
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  sub_D358();
  v7 = v6;
  sub_10AA4();
  *v8 = v7;
  v10 = *(v9 + 560);
  v11 = *v1;
  sub_D254();
  *v12 = v11;
  *(v7 + 568) = v0;

  if (!v0)
  {
    *(v7 + 610) = v3;
    *(v7 + 576) = v5;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_9B44C()
{
  sub_D3A4();
  v1 = *(v0 + 610);
  v2 = *(v0 + 504);
  *(v2 + 104) = *(v0 + 576);
  *(v2 + 112) = v1 & 1;
  if (v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v3 = sub_16A584();
    sub_48154(v3, qword_1E65C0);
    sub_9F390();
    sub_9F150();
    sub_386D8(v4, v5, v6, v7, v8, v9, 37, v10, v15);
    sub_9F10C();
    sub_9F0CC();

    return v11(0);
  }

  else
  {
    *(v0 + 584) = *(v0 + 576);
    sub_9F22C();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 592) = v13;
    *v13 = v14;
    sub_9F1D0(v13);

    return sub_9E0F0();
  }
}

uint64_t sub_9B5A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 592);
  *v3 = *v1;
  *(v2 + 608) = v6;
  *(v2 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9B6A8()
{
  sub_30984();
  v1 = *(v0 + 608);
  if ((v1 & 0x100) != 0)
  {
    v4 = *(v0 + 584);
    sub_16ACF4(80);
    v29._countAndFlagsBits = 0xD000000000000040;
    v29._object = 0x8000000000187A80;
    sub_16A744(v29);
    *(v0 + 480) = v4;
    v30._countAndFlagsBits = sub_16AE24();
    sub_16A744(v30);

    v31._countAndFlagsBits = 0x203D3E2073692029;
    v31._object = 0xEC000000203A3039;
    sub_16A744(v31);
    v17 = v4 <= 89;
    LOBYTE(v4) = v4 > 89;
    if (v17)
    {
      v18._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v18._countAndFlagsBits = 1702195828;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v18._object = v19;
    sub_16A744(v18);

    v8 = 0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v20 = sub_16A584();
    sub_9F450(v20, qword_1E65C0);
    v23 = 0xE000000000000000;
    sub_9F150();
    v16 = 46;
  }

  else
  {
    v2 = *(v0 + 584);
    v3 = (v2 - v1) / v1 > 0.3;
    sub_16ACF4(62);
    *(v0 + 464) = 0;
    *(v0 + 472) = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000017;
    v25._object = 0x8000000000187AD0;
    sub_16A744(v25);
    sub_16A8D4();
    v26._countAndFlagsBits = 0xD000000000000010;
    v26._object = 0x8000000000187AF0;
    sub_16A744(v26);
    *(v0 + 488) = v2;
    v27._countAndFlagsBits = sub_16AE24();
    sub_16A744(v27);

    v28._countAndFlagsBits = 0xD000000000000011;
    v28._object = 0x8000000000187B10;
    sub_16A744(v28);
    LODWORD(v4) = v3 && v2 > 89;
    if (v4)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v9 = sub_16A584();
    sub_9F450(v9, qword_1E65C0);
    v23 = v7;
    sub_9F150();
    v16 = 43;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v16, v8, v23);

  sub_9F10C();
  sub_9F0CC();

  return v21(v4 & 1);
}

uint64_t sub_9BA00()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  sub_D13C(v0 + 11);
  v1 = v0[67];
  v2 = sub_9F0FC();

  return v3(v2);
}

uint64_t sub_9BA64()
{
  sub_D2DC();
  sub_9F200();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 552);
  v2 = sub_9F0FC();

  return v3(v2);
}

uint64_t sub_9BAC4()
{
  sub_D2DC();
  sub_9F10C();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 568);
  v2 = sub_9F0FC();

  return v3(v2);
}

uint64_t sub_9BB24()
{
  sub_D2DC();
  sub_9F10C();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 600);
  v2 = sub_9F0FC();

  return v3(v2);
}

uint64_t sub_9BB84(uint64_t a1)
{
  *(v2 + 656) = v1;
  *(v2 + 648) = a1;
  return sub_D2B0();
}

uint64_t sub_9BB9C()
{
  sub_10824(v0[81], (v0 + 16));
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9498, &qword_172F58);
  if (!sub_9F478())
  {
    v9 = v0[81];
    sub_9F4B0();
    sub_D188((v0 + 21), &qword_1E94A0, &unk_172F60);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    sub_9F3F8();
    v0[74] = v13;
    v0[75] = v14;
    sub_9F49C();
    v15._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v15);
    sub_16AD84();
    v16._countAndFlagsBits = v1 + 6;
    v16._object = 0x8000000000187920;
    sub_16A744(v16);
    v10 = v0[75];
    sub_6B9BC(v0[74]);
    swift_willThrow();
    sub_D37C();
    sub_31534();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[82];
  sub_9F500();
  swift_task_alloc();
  sub_D3E0();
  v0[83] = v3;
  *v3 = v4;
  sub_9F4EC(v3);
  sub_31534();

  return sub_13AB58(v5, v6);
}

uint64_t sub_9BD60()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 664);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 672) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9BE58()
{
  sub_D3A4();
  v1 = v0[30];
  sub_D084(v0 + 26, v0[29]);
  sub_9F160();
  v8 = (v2 + *v2);
  v4 = *(v3 + 4);
  swift_task_alloc();
  sub_D3E0();
  v0[85] = v5;
  *v5 = v6;
  v5[1] = sub_9BF64;
  sub_93DF0();

  return v8();
}

uint64_t sub_9BF64()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 680);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 688) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9C17C()
{
  sub_30984();
  if (*(v0 + 352))
  {
    v1 = *(v0 + 360);
    sub_D084((v0 + 328), *(v0 + 352));
    sub_9F22C();
    v2 = *(v1 + 24);
    sub_93DF0();
    v3();
    sub_D13C((v0 + 328));
    if (*(v0 + 312))
    {
      v4 = *(v0 + 656);
      sub_D124((v0 + 288), v0 + 248);
      v5 = sub_D084((v4 + 64), *(v4 + 88));
      sub_5758(&qword_1E83E0, &unk_170410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D9A0;
      v7 = *(v0 + 272);
      v8 = *(v0 + 280);
      v9 = sub_D084((v0 + 248), v7);
      *(inited + 56) = v7;
      *(inited + 64) = *(v8 + 8);
      v10 = sub_10888((inited + 32));
      v11.n128_f64[0] = (*(*(v7 - 8) + 16))(v10, v9, v7);
      v12 = sub_948E4(inited, *v5, v11);
      swift_setDeallocating();
      sub_EFFF4();
      v13 = v12[2];

      if (v13)
      {
        swift_task_alloc();
        sub_D3E0();
        *(v0 + 696) = v14;
        *v14 = v15;
        v16 = sub_9F4C4(v14);

        return sub_9E6CC(v16, v17);
      }

      else
      {
        if (qword_1E58E8 != -1)
        {
          sub_9ED4();
        }

        v30 = *(v0 + 656);
        v31 = sub_16A584();
        sub_48154(v31, qword_1E65C0);
        sub_9F3AC();
        sub_57C04();
        sub_386D8(v32, v33, v34, v35, v36, v37, 63, v38, v45);
        v39 = *(v4 + 88);
        v40 = *(v30 + 96);
        sub_D084((v4 + 64), v39);
        v41 = *(v40 + 8);
        v42 = *(v41 + 40);
        v46 = (v42 + *v42);
        v43 = v42[1];
        v44 = swift_task_alloc();
        *(v0 + 784) = v44;
        *v44 = v0;
        v44[1] = sub_9D034;

        return v46(v39, v41);
      }
    }
  }

  else
  {
    sub_D188(v0 + 328, &qword_1E9490, &unk_172F48);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
  }

  sub_9F2CC();
  sub_D188(v0 + 288, &qword_1E94A8, &qword_172F78);
  sub_16ACF4(27);
  *(v0 + 624) = 0;
  *(v0 + 632) = 0xE000000000000000;
  v48._countAndFlagsBits = sub_9F0EC();
  sub_16A744(v48);
  *(v0 + 840) = sub_9F22C();
  sub_16AD84();
  v19 = *(v0 + 624);
  v20 = *(v0 + 632);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v21 = sub_16A584();
  sub_9F450(v21, qword_1E65C0);
  sub_57C04();
  sub_386D8(v22, v23, v24, v25, v26, v27, 59, v19, v20);

  v28 = swift_task_alloc();
  *(v0 + 800) = v28;
  *v28 = v0;
  v28[1] = sub_9D18C;
  v29 = *(v0 + 656);

  return sub_12FC08();
}

uint64_t sub_9C66C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 696);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 704) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9C764()
{
  if (*(v0 + 432))
  {
    v1 = *(v0 + 656);
    sub_D124((v0 + 408), v0 + 368);
    if (*(v1 + 112) == 1)
    {
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 712) = v2;
      *v2 = v3;
      v4 = sub_9F4D8(v2);

      return sub_9DDD0(v4, v5);
    }

    else
    {
      v20 = *(v1 + 104);
      sub_9F22C();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 736) = v21;
      *v21 = v22;
      v23 = sub_9F19C(v21);

      return sub_9E37C(v23, v24, v25);
    }
  }

  else
  {
    sub_D188(v0 + 408, &qword_1E9490, &unk_172F48);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = *(v0 + 656);
    v8 = sub_16A584();
    sub_48154(v8, qword_1E65C0);
    sub_57C04();
    sub_386D8(v9, v10, v11, v12, v13, v14, 67, v15, 0x8000000000187960);
    sub_89054(&dword_179BF8);
    v16 = *(v7 + 16);
    v17 = swift_task_alloc();
    *(v0 + 768) = v17;
    *v17 = v0;
    v18 = sub_9EFA4(v17);

    return v19(v18);
  }
}

uint64_t sub_9C994()
{
  sub_10BC0();
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  sub_D358();
  v7 = v6;
  sub_10AA4();
  *v8 = v7;
  v10 = *(v9 + 712);
  v11 = *v1;
  sub_D254();
  *v12 = v11;
  *(v7 + 720) = v0;

  if (!v0)
  {
    *(v7 + 841) = v3;
    *(v7 + 728) = v5;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_9CAA8()
{
  v1 = *(v0 + 841);
  v2 = *(v0 + 656);
  *(v2 + 104) = *(v0 + 728);
  *(v2 + 112) = v1 & 1;
  if (v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v3 = *(v0 + 656);
    v4 = sub_16A584();
    sub_48154(v4, qword_1E65C0);
    sub_9F3AC();
    sub_57C04();
    sub_386D8(v5, v6, v7, v8, v9, v10, 74, v11, v23);
    sub_89054(&dword_179BF8);
    v12 = *(v3 + 16);
    v13 = swift_task_alloc();
    *(v0 + 752) = v13;
    *v13 = v0;
    v14 = sub_9EFA4(v13);

    return v15(v14);
  }

  else
  {
    v17 = *(v0 + 728);
    sub_9F22C();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 736) = v18;
    *v18 = v19;
    v20 = sub_9F19C(v18);

    return sub_9E37C(v20, v21, v22);
  }
}

uint64_t sub_9CC38()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[56] = v1;
  v2[57] = v4;
  v2[58] = v0;
  sub_71940();
  v6 = *(v5 + 736);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 744) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9CD34()
{
  sub_D2DC();
  sub_9F10C();
  v1 = *(v0 + 456);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_9CD8C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[59] = v1;
  v2[60] = v4;
  v2[61] = v0;
  sub_71940();
  v6 = *(v5 + 752);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 760) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9CE88()
{
  sub_D2DC();
  sub_9F10C();
  v1 = *(v0 + 480);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_9CEE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[62] = v1;
  v2[63] = v4;
  v2[64] = v0;
  sub_71940();
  v6 = *(v5 + 768);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 776) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9CFDC()
{
  sub_D2DC();
  sub_9F200();
  v1 = *(v0 + 504);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_9D034()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[65] = v1;
  v2[66] = v4;
  v2[67] = v0;
  sub_71940();
  v6 = *(v5 + 784);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 792) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9D134()
{
  sub_D2DC();
  sub_9F200();
  v1 = *(v0 + 528);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_9D18C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[68] = v1;
  v2[69] = v4;
  v2[70] = v0;
  sub_71940();
  v6 = *(v5 + 800);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 808) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9D28C()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  v1 = *(v0 + 552);
  v2 = sub_9F080();

  return v3(v2);
}

uint64_t sub_9D2E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[71] = v1;
  v2[72] = v4;
  v2[73] = v0;
  sub_71940();
  v6 = *(v5 + 824);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 832) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9D3E8()
{
  sub_D2DC();
  v1 = *(v0 + 816);

  v2 = *(v0 + 576);
  v3 = sub_9F080();

  return v4(v3);
}

uint64_t sub_9DD6C()
{
  sub_D2DC();
  v1 = v0[102];

  sub_D13C(v0 + 11);
  v2 = v0[104];
  sub_D37C();

  return v3();
}

uint64_t sub_9DDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_D2B0();
}

uint64_t sub_9E0F0()
{
  sub_D2DC();
  v2 = v1;
  *(v0 + 112) = v3;
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_9E188;

  return sub_9E6CC(v0 + 56, v2);
}

uint64_t sub_9E188()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9E280()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 112);
    sub_D124((v0 + 56), v0 + 16);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 16);
    sub_93DF0();
    v5 = v4();
    sub_D13C((v0 + 16));
    sub_30AEC();

    return v6(v5 & 0x1FF);
  }

  else
  {
    result = sub_D188(v0 + 56, &qword_1E9490, &unk_172F48);
    __break(1u);
  }

  return result;
}

uint64_t sub_9E358()
{
  sub_D37C();
  v1 = *(v0 + 104);
  return v2();
}

uint64_t sub_9E37C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 66) = a2;
  *(v4 + 32) = a1;
  return sub_D2B0();
}

uint64_t sub_9E398()
{
  sub_30984();
  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 <= 0xFF)
  {
    v3 = 0xD000000000000013;
    v5 = *(v2 + 66);
    sub_16ACF4(33);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0xE000000000000000;
    v15._object = 0x8000000000187890;
    v15._countAndFlagsBits = 0xD000000000000013;
    sub_16A744(v15);
    *(v2 + 64) = v5;
    sub_16AD84();
    v16._countAndFlagsBits = 0x74206C6576656C20;
    v16._object = 0xEA0000000000206FLL;
    sub_16A744(v16);
    *(v2 + 65) = v4;
    v17._countAndFlagsBits = sub_16AE24();
    sub_16A744(v17);

    v0 = *(v2 + 16);
    v1 = *(v2 + 24);
    if (qword_1E58E8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  sub_9ED4();
LABEL_4:
  v6 = *(v2 + 32);
  v7 = *(v2 + 66);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x400uLL, v3 + 101, 0x8000000000187780, v3 + 29, 0x8000000000187850, 137, v0, v1);

  v10 = v6[3];
  v11 = v6[4];
  sub_D084(v6, v10);
  (*(v11 + 8))(v7, v4, v10, v11);
  v12 = swift_task_alloc();
  *(v2 + 56) = v12;
  *v12 = v2;
  v12[1] = sub_9E5E0;

  return sub_9EA44();
}

uint64_t sub_9E5E0()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_D254();
  *v7 = v6;

  sub_30AEC();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_9E6CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_D2B0();
}

uint64_t sub_9E6E0()
{
  sub_D3A4();
  v1 = *(v0 + 64);
  v2 = v1[4];
  sub_D084(v1, v1[3]);
  sub_9F160();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_9E7EC;
  sub_93DF0();

  return v9();
}

uint64_t sub_9E7EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9EA04()
{
  sub_D37C();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t sub_9EA28(uint64_t result, char a2)
{
  v2 = result & ~(result >> 63);
  if (v2 >= 100)
  {
    v2 = 100;
  }

  if ((a2 & 1) == 0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_9EA44()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9EAB8()
{
  sub_D2DC();
  v1 = v0[2];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[3] = sub_16A0F4();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_9EB70;

  return sub_E0A94();
}

uint64_t sub_9EB70()
{
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[2];
    v12 = v3[3];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_9ECA4()
{
  sub_D13C((v0 + 24));
  sub_D13C((v0 + 64));

  return _swift_deallocClassInstance(v0, 113, 7);
}

uint64_t sub_9ED14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_9EDAC;

  return sub_9A830(a1);
}

uint64_t sub_9EDAC()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_D254();
  *v7 = v6;

  sub_30AEC();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_9EEA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_88ED0;

  return sub_9BB84(a1);
}

uint64_t sub_9EF3C(uint64_t a1)
{
  *(a1 + 8) = sub_9D2E8;
  v3 = *(v2 + 656);
  return v1;
}

void sub_9EF6C(os_log_type_t a1)
{

  sub_386D8(a1, 0x400uLL, v3 + 102, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 79, v2, v1);
}

uint64_t sub_9EFA4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 656);
  return v2;
}

uint64_t sub_9EFBC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 72);
}

uint64_t sub_9EFD8(uint64_t a1)
{
  sub_5370(v1, 1, 1, a1);

  return sub_5370(v2, 1, 1, a1);
}

void sub_9F034()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 112);
}

uint64_t sub_9F048()
{
  v2 = *sub_D084((v0 + 16), *(v0 + 40));

  return sub_D2B90(0, v1);
}

uint64_t sub_9F080()
{
  sub_D13C((v1 + 88));
  v2 = *(v1 + 8);
  return v0;
}

void sub_9F0A8()
{
  *(v1 + 816) = v0;

  sub_16ACF4(27);
}

uint64_t sub_9F0CC()
{
  result = sub_D13C((v0 + 88));
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_9F10C()
{
  sub_D13C(v0 + 46);
  sub_D13C(v0 + 31);

  return sub_D13C(v0 + 26);
}

uint64_t sub_9F160()
{
  result = v0 + 80;
  v2 = *(v0 + 80);
  return result;
}

uint64_t *sub_9F17C()
{
  result = sub_D084(*(v0 + 16), *(v1 + 24));
  v3 = *result;
  return result;
}

uint64_t sub_9F19C(uint64_t a1)
{
  *(a1 + 8) = sub_9CC38;
  v2 = *(v1 + 656);
  return v1 + 368;
}

uint64_t sub_9F1D0(uint64_t a1)
{
  *(a1 + 8) = sub_9B5A4;
  v2 = *(v1 + 504);
  return v1 + 208;
}

uint64_t sub_9F200()
{
  sub_D13C((v0 + 248));

  return sub_D13C((v0 + 208));
}

unint64_t sub_9F22C()
{
  v1 = *sub_D084((v0 + 88), *(v0 + 112));

  return sub_8B260();
}

uint64_t sub_9F25C()
{

  return sub_D188(v0, v1, v2);
}

uint64_t sub_9F278()
{

  return sub_D188(v0, v1, v2);
}

uint64_t sub_9F294()
{
  v2 = *(v0 + 656);

  return sub_16A584();
}

uint64_t sub_9F2B0(uint64_t a1)
{
  *(v1 + 88) = a1;

  return sub_16A0C4();
}

uint64_t sub_9F300()
{
  sub_D13C((v0 + 16));

  return type metadata accessor for CarCommandsCATsSimple();
}

void sub_9F338()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
}

uint64_t sub_9F368(uint64_t result)
{
  *(v2 + 56) = v1;
  *(v2 + 112) = result;
  return result;
}

uint64_t sub_9F3C8()
{

  return sub_16A0F4();
}

uint64_t sub_9F3E0()
{

  return sub_16AD84();
}

void sub_9F3F8()
{

  sub_16ACF4(52);
}

uint64_t sub_9F420(uint64_t a1)
{
  *(v1 + 72) = a1;

  return sub_16A164();
}

uint64_t sub_9F438(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

uint64_t sub_9F450(uint64_t a1, uint64_t a2)
{
  sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_9F478()
{

  return swift_dynamicCast();
}

double sub_9F4B0()
{
  result = 0.0;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  return result;
}

uint64_t *sub_9F500()
{
  sub_D124((v1 + 168), v1 + 88);
  result = sub_D084((v0 + 24), *(v0 + 48));
  v3 = *result;
  return result;
}

uint64_t sub_9F52C@<X0>(uint64_t a1@<X8>)
{
  sub_9F59C();
  if (v2)
  {
    sub_16A6E4();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_16A0C4();

  return sub_5370(a1, v3, 1, v4);
}

uint64_t sub_9F59C()
{
  v1 = [v0 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v3)
  {
    return 0x656C6269647561;
  }

  return 0x656C6269736976;
}

uint64_t SEDeactivateSignalIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_9F688()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  v2 = sub_37484(dword_16DB18);
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_601B4;
  v3 = *(v0 + 24);

  return v5(v1, 4);
}

uint64_t sub_9F764(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEDeactivateSignalIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_9F83C()
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x60000uLL, 0xD0000000000000B9, 0x8000000000187B60, 0xD000000000000016, 0x8000000000183640, 24, 0xD000000000000015, 0x8000000000183660);
  v4 = [v1 carSignal];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  sub_16A364();
  v7 = [swift_getObjCClassFromMetadata() successWithResolvedValue:v6];
  sub_30AEC();

  return v8();
}

uint64_t sub_9F9C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.resolveCarSignal(for:)(v6);
}

uint64_t SEDeactivateSignalIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_9FA9C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(&unk_16DB10);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_9FB5C;
  v3 = *(v0 + 48);

  return v5(v1, 0, 0);
}

uint64_t sub_9FB5C()
{
  sub_D2DC();
  sub_D358();
  sub_A0408(v1, v2);
  v4 = *(v3 + 64);
  v6 = *(v5 + 56);
  v7 = *v0;
  sub_D254();
  *v8 = v7;
  *(v10 + 72) = v9;

  return _swift_task_switch(sub_9FC64, 0, 0);
}

uint64_t sub_9FC64()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A514();
  if (v1 <= 5)
  {
    v2 = qword_1730B8[v1];
  }

  v3 = *(v0 + 32);
  sub_16A504();
  sub_30AEC();

  return v4();
}

uint64_t sub_9FD08(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.confirm(intent:)(v6);
}

uint64_t SEDeactivateSignalIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_9FDE0()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(&unk_16DB08);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_9FEA0;
  v3 = *(v0 + 48);

  return v5(0, v1, 0);
}

uint64_t sub_9FEA0()
{
  sub_D2DC();
  sub_D358();
  sub_A0408(v1, v2);
  v4 = *(v3 + 64);
  v6 = *(v5 + 56);
  v7 = *v0;
  sub_D254();
  *v8 = v7;
  *(v10 + 72) = v9;

  return _swift_task_switch(sub_9FFA8, 0, 0);
}

uint64_t sub_9FFA8()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A514();
  if (v1 <= 5)
  {
    v2 = qword_1730E8[v1];
  }

  v3 = *(v0 + 32);
  sub_16A504();
  sub_30AEC();

  return v4();
}

uint64_t sub_A004C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.handle(intent:)(v6);
}

id SEDeactivateSignalIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEDeactivateSignalIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A01BC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A024C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A02DC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A036C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A0408(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = result;
  *(v2 + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarDefrosterTypeNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xA04ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_A0528()
{
  result = qword_1E94E0;
  if (!qword_1E94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94E0);
  }

  return result;
}

uint64_t sub_A057C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2B58;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A05C8(char a1)
{
  if (!a1)
  {
    return 0x746E6F7266;
  }

  if (a1 == 1)
  {
    return 1918985586;
  }

  return 7105633;
}

uint64_t sub_A060C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E5A58();
}

uint64_t sub_A0630@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A057C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_A0660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_A05C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_A069C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A0828();
  v5 = sub_A087C();
  v6 = sub_A08D0();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_A0714()
{
  result = qword_1E94E8;
  if (!qword_1E94E8)
  {
    sub_37130(&qword_1E94F0, &qword_173170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94E8);
  }

  return result;
}

unint64_t sub_A077C()
{
  result = qword_1E94F8;
  if (!qword_1E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94F8);
  }

  return result;
}

unint64_t sub_A07D4()
{
  result = qword_1E9500;
  if (!qword_1E9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9500);
  }

  return result;
}

unint64_t sub_A0828()
{
  result = qword_1E9508;
  if (!qword_1E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9508);
  }

  return result;
}

unint64_t sub_A087C()
{
  result = qword_1E9510;
  if (!qword_1E9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9510);
  }

  return result;
}

unint64_t sub_A08D0()
{
  result = qword_1E9518;
  if (!qword_1E9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9518);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetDefrosterCATsSimple()
{
  result = qword_1E9520;
  if (!qword_1E9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A09B0(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 64) = a1;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_A0A50, 0, 0);
}

uint64_t sub_A0A50()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_16D3A0;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000000187E20;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "defrosterType");
  *(v4 + 94) = -4864;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v5 = sub_16A0C4();
  v6 = sub_9E2C(v1, 1, v5);
  v7 = *(v0 + 32);
  if (v6 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v5;
    v8 = sub_10888((v4 + 96));
    (*(*(v5 - 8) + 32))(v8, v7, v5);
  }

  v9 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_31B04;
  v11 = *(v0 + 24);

  return v13(0xD00000000000002DLL, 0x8000000000187E40, v4);
}

uint64_t sub_A0C54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_A0CA8(a1, a2);
}

uint64_t sub_A0CA8(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2F868(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_A0E24(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

id sub_A0F2C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_11CC54(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_A0FC8()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  ClimateStatusParameters = type metadata accessor for GetClimateStatusParameters(0);
  v1[41] = ClimateStatusParameters;
  v6 = *(*(ClimateStatusParameters - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A109C()
{
  v72 = v0;
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E97B8, &unk_173440);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD00000000000009CLL;
  v0[32] = 0x8000000000187EC0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  v8 = sub_15AE4(v7);
  v10 = v9;

  if (v10)
  {
    v73._countAndFlagsBits = 32;
    v73._object = 0xE100000000000000;
    sub_16A744(v73);
    v74._countAndFlagsBits = 0xD000000000000025;
    v74._object = 0x8000000000182560;
    sub_16A744(v74);
    v11 = v8;
    v4 = v10;
  }

  else
  {
    v11 = 0xD000000000000025;
  }

  v70 = v11;
  v71._countAndFlagsBits = 58;
  v71._object = 0xE100000000000000;
  v0[35] = 27;
  v75._countAndFlagsBits = sub_16AE24();
  sub_16A744(v75);

  sub_16A744(v71);

  v12._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v12._object)
  {
    v71._countAndFlagsBits = 32;
    v71._object = 0xE100000000000000;
    sub_16A744(v12);

    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_16A744(v76);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v71._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v70, v4, &v71._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v6, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = v0[38];
  swift_beginAccess();
  v18 = *sub_D084((v17 + 136), *(v17 + 160));
  v19 = sub_11B5C0();
  v20 = v0[37];
  if (v19)
  {
    sub_169094();
    sub_16A1B4();
    v22 = v21;

    v0[43] = v22;
    if (v22)
    {
      v23 = v0[37];
      v24 = sub_169084();
      v25 = [v24 enabled];

      if (v25)
      {
        v26 = v0[37];
        [v25 BOOLValue];

        v27 = sub_1690A4();
        v0[44] = [v27 carName];

        v28 = sub_1690A4();
        v29 = [v28 isGetCarActivationStatusRequest];

        if (v29)
        {
          [v29 BOOLValue];
        }

        v66 = v0[38];
        type metadata accessor for ClimateStatusSnippetFactory();
        swift_beginAccess();
        sub_10824(v66 + 184, (v0 + 17));
        v67 = swift_task_alloc();
        v0[45] = v67;
        *v67 = v0;
        v67[1] = sub_584A8;
        v68 = v0[36];
        sub_D2C0();

        return sub_112F7C();
      }
    }

    type metadata accessor for CarCommandsError();
    sub_A259C(&qword_1E92F0, type metadata accessor for CarCommandsError);
    swift_allocError();
    *v60 = 0xD00000000000002DLL;
    v60[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v61 = v0[42];
    v63 = v0[39];
    v62 = v0[40];

    sub_D37C();
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v30 = sub_1690A4();
  v0[47] = v30;
  v31 = sub_169084();
  v0[48] = v31;
  v32 = [v30 carName];
  if (v32)
  {
    v33 = v32;
    v34 = v0[40];
    sub_99C94();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v0[40];
  v37 = sub_16A0C4();
  sub_5370(v36, v35, 1, v37);
  v38 = [v31 enabled];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 BOOLValue];
  }

  else
  {
    v40 = 2;
  }

  v41 = v0[37];
  sub_169094();
  sub_16A1B4();
  v43 = v42;

  if (v43)
  {
    v44 = v0[39];
    sub_16A6E4();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v0[37];
  sub_5370(v0[39], v45, 1, v37);
  v47 = sub_1690A4();
  v48 = [v47 isGetCarActivationStatusRequest];

  if (v48)
  {
    v49 = [v48 BOOLValue];
  }

  else
  {
    v49 = 2;
  }

  v51 = v0[41];
  v50 = v0[42];
  v52 = v0[39];
  v53 = v0[38];
  sub_16304(v0[40], v50);
  *(v50 + v51[5]) = v40;
  sub_16304(v52, v50 + v51[6]);
  *(v50 + v51[7]) = v49;
  v54 = *sub_D084((v53 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns), *(v53 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns + 24));
  v55 = swift_task_alloc();
  v0[49] = v55;
  *v55 = v0;
  v55[1] = sub_A1878;
  v56 = v0[42];
  sub_D2C0();

  return sub_156AF0(v57);
}

uint64_t sub_A1878()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 392);
  v10 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_A1980()
{
  sub_D2DC();
  v1 = v0[38];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_A1A3C;
  v3 = v0[50];

  return sub_11A570();
}

uint64_t sub_A1A3C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A1B44()
{
  sub_1696C();
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  sub_A2540(v2);
  v3 = *(v0 + 408);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_A1BD4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_A2540(v3);
  sub_D250((v0 + 56), v4);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);

  sub_D37C();

  return v8();
}

uint64_t sub_A1C7C()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  sub_A2540(v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_D37C();

  return v8();
}

void sub_A1D14()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_A1D54()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_A1D9C()
{
  v0 = sub_A1D54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetClimateStatusHandleIntentFlowStrategy()
{
  result = qword_1E95A0;
  if (!qword_1E95A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A1E90(uint64_t a1)
{
  result = sub_A259C(&qword_1E97B0, type metadata accessor for GetClimateStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A2078()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_A2138()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_A0FC8();
}

uint64_t sub_A21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A22AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A243C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_44E0C();
}

uint64_t sub_A2540(uint64_t a1)
{
  ClimateStatusParameters = type metadata accessor for GetClimateStatusParameters(0);
  (*(*(ClimateStatusParameters - 8) + 8))(a1, ClimateStatusParameters);
  return a1;
}

uint64_t sub_A259C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_A25E4()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_119F28(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_A2680()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  v1[42] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A2780()
{
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62D8, &qword_16D898);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD000000000000096;
  v0[32] = 0x8000000000187FB0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v91._countAndFlagsBits = 0xD000000000000025;
    v91._object = 0x8000000000182560;
    sub_16A744(v91);
    v10 = v86;
    v4 = v89;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  v83 = v10;
  v0[35] = 18;
  v92._countAndFlagsBits = sub_16AE24();
  sub_16A744(v92);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v83, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v84, v85, v87, v90);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v88, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v88);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[38];
  sub_3CF7C();
  v35 = *sub_D084((v34 + 136), *(v34 + 160));
  v36 = sub_11B5C0();
  v37 = v0[37];
  if (v36)
  {
    sub_169094();
    sub_16A1B4();
    v39 = v38;

    v0[44] = v39;
    if (v39)
    {
      v40 = v0[37];
      v41 = sub_1690A4();
      v42 = [v41 enabled];

      if (v42)
      {
        v43 = v0[37];
        v44 = v0[38];
        [v42 BOOLValue];

        type metadata accessor for ClimateStatusSnippetFactory();
        v45 = *(*(v44 + 224) + 16);
        v46 = sub_1690A4();
        v0[45] = [v46 carName];

        sub_3CF7C();
        sub_10824(v44 + 184, (v0 + 17));
        v47 = swift_task_alloc();
        v0[46] = v47;
        *v47 = v0;
        v47[1] = sub_A2E38;
        v48 = v0[36];
        sub_D2C0();

        return sub_112F7C();
      }
    }

    type metadata accessor for CarCommandsError();
    sub_A4338();
    sub_A4294(v74, v75);
    sub_5A144();
    *v76 = 0xD00000000000002DLL;
    v76[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v77 = v0[43];
    v79 = v0[40];
    v78 = v0[41];
    v80 = v0[39];

    sub_D37C();
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v51 = sub_1690A4();
  v52 = [v51 enabled];

  if (v52)
  {
    sub_16A834();
  }

  v53 = v0[37];
  v54 = sub_1690A4();
  v55 = [v54 carName];
  v0[48] = v55;

  sub_169094();
  sub_16A1B4();
  v57 = v56;

  if (v55)
  {
    v58 = v0[41];
    v59 = v55;
    sub_99C94();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v0[41];
  v62 = sub_16A0C4();
  v63 = 1;
  sub_5370(v61, v60, 1, v62);
  if (v57)
  {
    v64 = v0[40];
    sub_16A6E4();

    v63 = 0;
  }

  v66 = v0[42];
  v65 = v0[43];
  v68 = v0[40];
  v67 = v0[41];
  v69 = v0[39];
  sub_5370(v68, v63, 1, v62);
  *v65 = 2;
  sub_16304(v67, &v65[*(v66 + 20)]);
  sub_16304(v68, &v65[*(v66 + 24)]);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[49] = sub_16A094();
  v70 = swift_task_alloc();
  v0[50] = v70;
  *v70 = v0;
  v70[1] = sub_A2FE4;
  v71 = v0[43];
  sub_D2C0();

  return sub_157580(v72);
}

uint64_t sub_A2E38()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[46];
  v6 = *v1;
  *v4 = *v1;
  v3[47] = v0;

  v7 = v2[45];
  v8 = v2[44];
  sub_D13C(v3 + 17);

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[43];
    v14 = v3[40];
    v13 = v3[41];
    v15 = v3[39];

    v16 = v6[1];

    return v16();
  }
}

uint64_t sub_A2FE4()
{
  sub_1696C();
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 400);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v9 + 408) = v8;
  *(v9 + 416) = v0;

  v10 = *(v2 + 392);

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_A3110()
{
  sub_D2DC();
  v1 = v0[38];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_A31C4;
  v3 = v0[51];

  return sub_11A570();
}

uint64_t sub_A31C4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_A32C8()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);

  sub_A42DC(v2);
  sub_D250((v0 + 56), v3);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);

  sub_D37C();

  return v8();
}

uint64_t sub_A3378()
{
  sub_1696C();
  v1 = *(v0 + 376);
  sub_A4350();

  sub_D37C();

  return v2();
}

uint64_t sub_A33F0()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_A42DC(v1);
  v2 = *(v0 + 416);
  sub_A4350();

  sub_D37C();

  return v3();
}

uint64_t sub_A347C()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);

  sub_A42DC(v2);
  v3 = *(v0 + 432);
  sub_A4350();

  sub_D37C();

  return v4();
}

uint64_t sub_A3510(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_A3540()
{
  v1 = v0[24];
  sub_10824(v0[25] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62D8, &qword_16D898);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[18] = 0xD000000000000096;
  v0[19] = 0x8000000000187FB0;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v61._countAndFlagsBits = 0xD00000000000002DLL;
    v61._object = 0x8000000000185C90;
    sub_16A744(v61);
    v10 = v56;
    v4 = v59;
  }

  else
  {
    v10 = 0xD00000000000002DLL;
  }

  v53 = v10;
  v0[22] = 53;
  v62._countAndFlagsBits = sub_16AE24();
  sub_16A744(v62);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v53, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v54, v55, v57, v60);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v58, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v58);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[25];
  if (*(v34[28] + 16) != 1 || (sub_3CF7C(), v35 = *sub_D084(v34 + 17, v34[20]), (sub_11B5C0() & 1) == 0))
  {
    v47 = v0[23];
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_19;
  }

  v36 = v0[24];
  sub_169094();
  sub_16A1B4();
  v38 = v37;

  if (!v38 || (v39 = v0[24], , v40 = sub_1690A4(), v41 = [v40 enabled], v40, !v41))
  {
    type metadata accessor for CarCommandsError();
    sub_A4338();
    sub_A4294(v50, v51);
    sub_5A144();
    *v52 = 0xD00000000000002DLL;
    v52[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_19:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v42 = v0[25];
  [v41 BOOLValue];

  type metadata accessor for ClimateStatusSnippetFactory();
  sub_3CF7C();
  sub_10824(v42 + 184, (v0 + 7));
  v43 = swift_task_alloc();
  v0[26] = v43;
  *v43 = v0;
  v43[1] = sub_A39C4;
  v44 = v0[23];
  sub_D2C0();

  return sub_1139B0();
}

uint64_t sub_A39C4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 216) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_D37C();

    return v12();
  }
}

uint64_t sub_A3AF4()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetClimateStatusHandleIntentFlowStrategy()
{
  result = qword_1E97F0;
  if (!qword_1E97F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A3C00(uint64_t a1)
{
  result = sub_A4294(&qword_1E99E8, type metadata accessor for SetClimateStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A3C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_A3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_A3DE8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_A3EA8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_A2680();
}

uint64_t sub_A3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_A401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_A40E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_A3510(a1, a2);
}

uint64_t sub_A4190()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_45004();
}

uint64_t sub_A4294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A42DC(uint64_t a1)
{
  v2 = type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A4350()
{
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
}

uint64_t sub_A4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedMeasurementUnitProvider();
    v9 = a1 + *(a3 + 24);

    return sub_9E2C(v9, a2, v8);
  }
}

uint64_t sub_A441C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedMeasurementUnitProvider();
    v8 = v5 + *(a4 + 24);

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GetCarRemainingRangeAction()
{
  result = qword_1E9A48;
  if (!qword_1E9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_A44E8()
{
  result = sub_A457C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedMeasurementUnitProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_A457C()
{
  result = qword_1E9A58;
  if (!qword_1E9A58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1E9A58);
  }

  return result;
}

uint64_t sub_A45D8()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_A4604()
{
  sub_D2DC();
  v1 = *sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_A46AC;

  return sub_13AB58(v0 + 16, 4);
}

uint64_t sub_A46AC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[19] = v12;
    *v12 = v7;
    v12[1] = sub_A4808;
    v13 = v3[16];

    return sub_A4BDC();
  }
}

uint64_t sub_A4808()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_A490C()
{
  v2 = v1[18];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x80000000001880E0;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_A5B38(v15);

  sub_89054(&unk_172F88);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_89024(v17);

  return v19(v18);
}

uint64_t sub_A4A70()
{
  sub_D13C(v1 + 2);
  v2 = v1[20];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x80000000001880E0;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_A5B38(v15);

  sub_89054(&unk_172F88);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_89024(v17);

  return v19(v18);
}

uint64_t sub_A4BDC()
{
  sub_D2DC();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v4 = sub_5758(&qword_1E7630, &qword_173610);
  v1[23] = v4;
  v5 = *(v4 - 8);
  v1[24] = v5;
  v6 = *(v5 + 64) + 15;
  v1[25] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A4CCC()
{
  v1 = *(v0 + 160);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = *(v3 + 48);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_A4DF8;

  return v8(v0 + 56, v2, v3);
}

uint64_t sub_A4DF8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_A4EF4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 184);
    sub_D124((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_D084((v0 + 16), v3);
    (*(v4 + 8))(v3, v4);
    sub_168314();
    if (v5 == 0.0)
    {
      v6 = 1;
    }

    else
    {
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      sub_D084((v0 + 16), v14);
      v6 = (*(v15 + 32))(v14, v15);
    }

    *(v0 + 280) = v6 & 1;
    v16 = *(v0 + 184);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    if (v6)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    v36 = *(v0 + 200);
    v38 = v19;
    if (v6)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    sub_D084((v0 + 16), v17);
    v21 = (*(v18 + 24))(v17, v18);
    *(v0 + 281) = v21 & 1;
    if (v21)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    sub_16ACF4(88);
    v41._countAndFlagsBits = 0x656C2065676E6152;
    v41._object = 0xEC000000203A7466;
    sub_16A744(v41);
    sub_A5AD4();
    v42._countAndFlagsBits = sub_16AE24();
    sub_16A744(v42);

    v43._countAndFlagsBits = 0xD000000000000015;
    v43._object = 0x8000000000188160;
    sub_16A744(v43);
    v44._countAndFlagsBits = v38;
    v44._object = v20;
    sub_16A744(v44);

    v45._countAndFlagsBits = 0xD000000000000031;
    v45._object = 0x8000000000188180;
    sub_16A744(v45);
    v46._countAndFlagsBits = v22;
    v46._object = v23;
    sub_16A744(v46);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v24 = *(v0 + 200);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 160);
    v28 = sub_16A584();
    sub_9DA0(v28, qword_1E65C0);
    v29 = sub_16A9A4();
    sub_386D8(v29, 0x2000000uLL, 0xD00000000000008BLL, 0x8000000000188050, 0xD000000000000020, 0x8000000000188100, 45, 0, 0xE000000000000000);

    type metadata accessor for CarCommandsGetCarRemainingRangeCATsSimple();
    sub_16A154();
    *(v0 + 224) = sub_16A0F4();
    v30 = *(type metadata accessor for GetCarRemainingRangeAction() + 24);
    *(v0 + 128) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 232) = sub_53C0C(v26 + v30, v0 + 96);
    sub_D188(v0 + 96, &qword_1E6030, &unk_173620);
    v31 = v27[3];
    v32 = v27[4];
    sub_D084(v27, v31);
    v33 = *(v32 + 72);
    v39 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 240) = v35;
    *v35 = v0;
    v35[1] = sub_A5464;

    return v39(v31, v32);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E9A90, &qword_173618);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = *(v0 + 168);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x2000000uLL, 0xD00000000000008BLL, 0x8000000000188050, 0xD000000000000020, 0x8000000000188100, 38, 0xD000000000000028, 0x8000000000188130);
    sub_89054(&unk_179C18);
    v10 = *v7;
    v11 = swift_task_alloc();
    *(v0 + 272) = v11;
    *v11 = v0;
    v11[1] = sub_A57B8;
    v12 = *(v0 + 168);

    return v37(v10);
  }
}

uint64_t sub_A5464(char a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 248) = v1;

  if (v1)
  {
    v11 = *(v5 + 224);
    v12 = *(v5 + 232);

    sub_10B4C();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v5 + 256) = v16;
    *v16 = v9;
    v16[1] = sub_A55F0;
    v17 = *(v5 + 224);
    v18 = *(v5 + 281);
    v19 = *(v5 + 280);
    v20 = *(v5 + 232);

    return sub_114C4C(v20, v19, v18, a1 & 1);
  }
}

uint64_t sub_A55F0()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v6 = v5[32];
  v7 = v5[29];
  v8 = v5[28];
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v11 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A5738()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  v3 = *(v0 + 144);
  sub_A5B80();

  sub_30AEC();

  return v4(v3);
}

uint64_t sub_A57B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  sub_D254();
  *v7 = v6;

  v8 = *(v4 + 200);
  v9 = *(v4 + 176);

  v11 = *(v6 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t sub_A58F8()
{
  sub_D2DC();
  v1 = *(v0 + 216);
  sub_A5B80();

  sub_D37C();

  return v2();
}

uint64_t sub_A5958()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  v3 = *(v0 + 248);
  sub_A5B80();

  sub_D37C();

  return v4();
}

uint64_t sub_A59D0()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  v3 = *(v0 + 264);
  sub_A5B80();

  sub_D37C();

  return v4();
}

uint64_t sub_A5A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_A45D8();
}

unint64_t sub_A5AD4()
{
  result = qword_1E9A98;
  if (!qword_1E9A98)
  {
    sub_37130(&qword_1E7630, &qword_173610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9A98);
  }

  return result;
}

void sub_A5B38(os_log_type_t a1)
{

  sub_386D8(a1, 0x2000000uLL, v3 + 121, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 31, v2, v1);
}

uint64_t sub_A5B70()
{
  result = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  return result;
}

uint64_t sub_A5B80()
{
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
}

uint64_t sub_A5B98()
{
  sub_A73D8();
  sub_76D10();
  v2 = v0;
  v3 = sub_A73D8();
  sub_16AAB4(v3);
  v4 = sub_A73C0();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v0;
    sub_16AAB4(1);
    v7 = sub_A73C0();

    if (v7)
    {

      return 1;
    }

    else
    {
      v8 = v6;
      sub_16AAB4(2);
      v9 = sub_A73C0();

      if (v9)
      {

        return 2;
      }

      else
      {
        v10 = v8;
        sub_16AAB4(3);
        v11 = sub_A73C0();

        if (v11)
        {

          return 3;
        }

        else
        {
          sub_16AAB4(19);
          v12 = sub_A73C0();

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

id sub_A5CA8()
{
  type metadata accessor for PlatformUtils();
  swift_initStackObject();
  if (sub_138E0C())
  {
    if (qword_1E5900 != -1)
    {
      sub_A73A0();
    }

    v0 = qword_1F0C20;
    v8 = type metadata accessor for CarKeySessionManager();
    v9 = &off_1D70B8;
    *&v7 = v0;
    type metadata accessor for CarKeySessionServiceHelper();
    v1 = swift_allocObject();
    sub_D124(&v7, v1 + 16);
    sub_A6F84(v0, v1, type metadata accessor for LowPowerCarKeySessionService, sub_A7174);
    sub_A73D8();
    v2 = type metadata accessor for LowPowerCarKeySessionService();
    v3 = &off_1D42A0;
  }

  else
  {
    if (qword_1E5900 != -1)
    {
      sub_A73A0();
    }

    v4 = qword_1F0C20;
    v8 = type metadata accessor for CarKeySessionManager();
    v9 = &off_1D70B8;
    *&v7 = v4;
    type metadata accessor for CarKeySessionServiceHelper();
    v1 = swift_allocObject();
    sub_D124(&v7, v1 + 16);
    sub_A6F84(v4, v1, type metadata accessor for CarKeySessionService, sub_A70B0);
    sub_A73D8();
    v2 = type metadata accessor for CarKeySessionService();
    v3 = &off_1D6C70;
  }

  v8 = v2;
  v9 = v3;
  *&v7 = v1;
  v5 = objc_allocWithZone(type metadata accessor for CarKeyPassManager());
  result = sub_A5E5C(&v7);
  qword_1F0BE8 = result;
  return result;
}

id sub_A5E5C(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_platformUtils];
  v5 = type metadata accessor for PlatformUtils();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &off_1DA340;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_sessionManager];
  v8 = type metadata accessor for CarKeySessionManager();
  v9 = [objc_allocWithZone(v8) init];
  *(v7 + 3) = v8;
  *(v7 + 4) = &off_1D70B8;
  *v7 = v9;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_386D8(v11, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000001BLL, 0x80000000001882B0, 23, 0xD000000000000027, 0x80000000001882D0);
  sub_10824(a1, &v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService]);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CarKeyPassManager();
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_D13C(a1);
  return v12;
}

uint64_t sub_A5FD8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return sub_D2B0();
}

uint64_t sub_A5FF0()
{
  sub_D3A4();
  v1 = (v0[14] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v2 = v1[4];
  sub_D084(v1, v1[3]);
  sub_A7370();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_A6108;
  v7 = v0[13];
  sub_A738C();

  return v8();
}

uint64_t sub_A6108()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A61EC()
{
  sub_D3A4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_D124((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_D084((v0 + 16), v2);
    v4 = (*(v3 + 8))(v1, v2, v3);
    sub_D13C((v0 + 16));
  }

  else
  {
    sub_A72B0(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000002ELL, 0x80000000001883D0, 30, 0xD00000000000002DLL, 0x8000000000188400);
    v4 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_A6354(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_D2B0();
}

uint64_t sub_A6368()
{
  sub_D3A4();
  v1 = (v0[8] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v2 = v1[4];
  sub_D084(v1, v1[3]);
  sub_A7370();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_A6480;
  v7 = v0[7];
  sub_A738C();

  return v8();
}

uint64_t sub_A6480()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A6564()
{
  sub_D3A4();
  v1 = *(v0 + 40);
  sub_A72B0(v0 + 16);
  if (!v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000001DLL, 0x8000000000188360, 39, 0xD000000000000041, 0x8000000000188380);
  }

  v4 = *(v0 + 8);

  return v4(v1 == 0);
}

uint64_t sub_A6674(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return sub_D2B0();
}

uint64_t sub_A668C()
{
  sub_D3A4();
  v1 = v0[22];
  v0[17] = &_swiftEmptySetSingleton;
  v2 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService + 32);
  sub_D084((v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService), *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService + 24));
  sub_A7370();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_A67B0;
  v7 = v0[21];
  sub_A738C();

  return v8();
}

uint64_t sub_A67B0()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 184);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A6894()
{
  v24 = v0;
  if (*(v0 + 120))
  {
    v2 = *(v0 + 160);
    sub_D124((v0 + 96), v0 + 56);
    v3 = *(v0 + 160);
    if ((v2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_16ABC4();
      sub_76D10();
      sub_A7318();
      sub_16A944();
      v2 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
    }

    else
    {
      v11 = -1 << *(v3 + 32);
      v4 = v3 + 56;
      v5 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v7 = v13 & *(v3 + 56);

      v6 = 0;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v14 = v6;
      v15 = v7;
      v16 = v6;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v1 = (v15 - 1) & v15;
      v17 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
LABEL_24:
        sub_4A004();
        v10 = *(v0 + 136);
        sub_D13C((v0 + 56));
        goto LABEL_25;
      }

      while (1)
      {
        v19 = *(v0 + 80);
        v20 = *(v0 + 88);
        sub_D084((v0 + 56), v19);
        if ((*(v20 + 16))(v17, v19, v20))
        {
          sub_8F650(&v23, v17);
        }

        else
        {
        }

        v6 = v16;
        v7 = v1;
        if ((v2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v18 = sub_16AC34();
        if (v18)
        {
          *(v0 + 152) = v18;
          sub_76D10();
          swift_dynamicCast();
          v17 = *(v0 + 144);
          v16 = v6;
          v1 = v7;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v5 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v15 = *(v4 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_A72B0(v0 + 96);
  v2 = "carKeySessionService";
  v4 = "ew CarKeyPassManager...";
  v1 = 0x8000000000188330;
  if (qword_1E58E8 != -1)
  {
LABEL_29:
    sub_9ED4();
  }

  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x20000uLL, 0xD00000000000008ALL, v2 | 0x8000000000000000, 0xD000000000000021, (v4 | 0x8000000000000000), 49, 0xD000000000000029, v1);
  v10 = &_swiftEmptySetSingleton;
LABEL_25:
  v21 = *(v0 + 8);

  return v21(v10);
}

uint64_t sub_A6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_D2B0();
}

uint64_t sub_A6BC0()
{
  sub_D3A4();
  v1 = (v0[7] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = *(v3 + 16);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_A6CFC;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v9, v10, v7, v8, v2, v3);
}

uint64_t sub_A6CFC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

id sub_A6E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarKeyPassManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_A6ED4(uint64_t a1)
{
  v2 = [v1 getStatusForRKEFunction:a1];

  return v2;
}

uint64_t sub_A6F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, id))
{
  v8 = type metadata accessor for CarKeySessionServiceHelper();
  v18[3] = v8;
  v18[4] = &off_1D5048;
  v18[0] = a2;
  v9 = objc_allocWithZone(a3(0));
  v10 = sub_2F8D0(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a4(a1, *v13, v9);
  sub_D13C(v18);
  return v15;
}

id sub_A70B0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = type metadata accessor for CarKeySessionManager();
  v10[4] = &off_1D70B8;
  v10[0] = a1;
  v9[3] = type metadata accessor for CarKeySessionServiceHelper();
  v9[4] = &off_1D5048;
  v9[0] = a2;
  sub_10824(v10, a3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionManager);
  sub_10824(v9, a3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for CarKeySessionService();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_D13C(v10);
  sub_D13C(v9);
  return v6;
}

id sub_A7174(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14[3] = type metadata accessor for CarKeySessionManager();
  v14[4] = &off_1D70B8;
  v14[0] = a1;
  v13[3] = type metadata accessor for CarKeySessionServiceHelper();
  v13[4] = &off_1D5048;
  v13[0] = a2;
  v6 = &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_assertion];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting] = 0;
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_continuation;
  v8 = sub_5758(&qword_1E66A0, &qword_16E320);
  sub_5370(&a3[v7], 1, 1, v8);
  a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_lowPowerWatchHasAttemptedToConnect] = 0;
  v9 = &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  sub_10824(v14, &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionManager]);
  sub_10824(v13, &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper]);
  v12.receiver = a3;
  v12.super_class = type metadata accessor for LowPowerCarKeySessionService();
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v14);
  sub_D13C(v13);
  return v10;
}

uint64_t sub_A72B0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9AE0, &unk_1736B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A7318()
{
  result = qword_1E9AE8;
  if (!qword_1E9AE8)
  {
    sub_76D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9AE8);
  }

  return result;
}

uint64_t sub_A7370()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_A73A0()
{

  return swift_once();
}

uint64_t sub_A73C0()
{

  return sub_16AAD4();
}

uint64_t sub_A73E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_D2B0();
}

uint64_t sub_A73FC()
{
  sub_D2DC();
  v1 = *sub_D084((v0[4] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper), *(v0[4] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper + 24));
  swift_task_alloc();
  sub_D3E0();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_A74A4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_752F0(v4, v5);
}

uint64_t sub_A74A4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_A7584()
{
  sub_D2DC();
  v3 = v2;
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v4;
  v1[20] = v5;
  v1[17] = v6;
  v1[18] = v7;
  swift_task_alloc();
  sub_D3E0();
  v1[23] = v8;
  *v8 = v9;
  v8[1] = sub_A7624;
  v10 = sub_A8670();

  return sub_A7C74(v10, v11, v3);
}

uint64_t sub_A7624()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 192) = v0;

  if (v0)
  {
    v9 = sub_A79FC;
  }

  else
  {
    v9 = sub_A7724;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_A7724()
{
  sub_D2DC();
  v1 = sub_D084((v0[22] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper), *(v0[22] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper + 24));
  sub_10824((v0 + 2), (v0 + 12));
  v2 = *v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_A77EC;
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];

  return sub_75F10(v8, v6, v7, v4, v5, (v0 + 12));
}

uint64_t sub_A77EC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 208) = v0;

  sub_D188(v3 + 96, &qword_1EA210, &unk_1708E0);
  if (v0)
  {
    v9 = sub_A7980;
  }

  else
  {
    v9 = sub_A7904;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_A7904()
{
  sub_D2DC();
  v1 = sub_A8670();
  sub_A7A20(v1, v2);
  sub_D188(v0 + 56, &qword_1E66B0, &unk_16E380);
  sub_D13C((v0 + 16));
  sub_D37C();

  return v3();
}

uint64_t sub_A7980()
{
  sub_D2DC();
  v1 = sub_A8670();
  sub_A7A20(v1, v2);
  sub_D188(v0 + 56, &qword_1E66B0, &unk_16E380);
  sub_D13C((v0 + 16));
  v3 = *(v0 + 208);
  sub_D37C();

  return v4();
}

uint64_t sub_A79FC()
{
  v1 = *(v0 + 192);
  sub_D37C();
  return v2();
}

uint64_t sub_A7A20(void *a1, uint64_t a2)
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000003DLL, 0x8000000000188620, 27, 0xD000000000000034, 0x8000000000188660);
  v6 = a1[3];
  v7 = a1[4];
  sub_D084(a1, v6);
  (*(v7 + 48))(v6, v7);
  sub_2F868(a2, v11, &qword_1E66B0, &unk_16E380);
  v8 = v12;
  if (!v12)
  {
    return sub_D188(v11, &qword_1E66B0, &unk_16E380);
  }

  v9 = v13;
  sub_D084(v11, v12);
  (*(v9 + 8))(v8, v9);
  return sub_D13C(v11);
}

void sub_A7BAC()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0x6575716552646E65, 0xEC00000029287473, 36, 0xD000000000000029, 0x80000000001885F0);
}

uint64_t sub_A7C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return sub_D2B0();
}

uint64_t sub_A7C8C()
{
  v1 = v0[14];
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  if (v4[2])
  {
    v5 = v0[15];
    v6 = v4[4];
    v0[16] = v6;
    v7 = v4[5];
    v0[17] = v7;

    v8 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper;
    v0[18] = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper;
    v9 = *sub_D084((v5 + v8), *(v5 + v8 + 24));
    swift_task_alloc();
    sub_D3E0();
    v0[19] = v10;
    *v10 = v11;
    v10[1] = sub_A7EB4;
    v12 = v0[13];
    v13 = v0[14];

    return sub_7565C(v12, v13, v6, v7);
  }

  else
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    sub_386D8(v16, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000002ALL, 0x8000000000181B20, 41, 0xD000000000000042, 0x80000000001885A0);
    sub_3CC14();
    swift_allocError();
    *v17 = xmmword_16E2A0;
    swift_willThrow();
    sub_D37C();

    return v18();
  }
}

uint64_t sub_A7EB4()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 136);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_A7FF0, 0, 0);
  }
}

uint64_t sub_A7FF0()
{
  sub_D2DC();
  v1 = (v0[15] + v0[18]);
  v2 = *sub_D084(v1, v1[3]);
  swift_task_alloc();
  sub_D3E0();
  v0[20] = v3;
  *v3 = v4;
  v3[1] = sub_A8098;
  v5 = v0[16];
  v6 = v0[17];

  return sub_75A1C((v0 + 2), v5, v6);
}

uint64_t sub_A8098()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 136);

  if (v0)
  {
    v7 = sub_A8394;
  }

  else
  {
    v7 = sub_A81C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A81C8()
{
  v1 = sub_A8670();
  sub_2F868(v1, v2, v3, v4);
  if (*(v0 + 80))
  {
    v5 = *(v0 + 96);
    sub_D188(v0 + 16, &qword_1EA210, &unk_1708E0);
    sub_D250((v0 + 56), v5);
    sub_D37C();
  }

  else
  {
    sub_D188(v0 + 56, &qword_1EA210, &unk_1708E0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = *(v0 + 104);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000002ALL, 0x8000000000181B20, 49, 0xD000000000000046, 0x8000000000188550);
    sub_3CC14();
    swift_allocError();
    *v10 = xmmword_16E2A0;
    swift_willThrow();
    sub_D188(v0 + 16, &qword_1EA210, &unk_1708E0);
    sub_D188(v7, &qword_1E66B0, &unk_16E380);
    sub_D37C();
  }

  return v6();
}

uint64_t sub_A8394()
{
  sub_D2DC();
  sub_D188(*(v0 + 104), &qword_1E66B0, &unk_16E380);
  v1 = *(v0 + 168);
  sub_D37C();

  return v2();
}

id sub_A8440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarKeySessionService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A84E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_A73E4(a1, a2);
}

uint64_t sub_A8590()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_A7584();
}

uint64_t sub_A867C(uint64_t a1, uint64_t a2)
{
  v4 = sub_169724();
  v5 = sub_9F48(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_169764();
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v21 = v7 + 16;
  v22 = v15;
  v16 = (v7 + 8);
  while (1)
  {
    if (v22 == v14)
    {

      return 0;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    (*(v7 + 16))(v11, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v4);
    if (sub_169714() == a1 && v17 == a2)
    {

LABEL_12:

      v20 = sub_169704();
      (*v16)(v11, v4);
      return v20;
    }

    v19 = sub_16AE54();

    if (v19)
    {
      goto LABEL_12;
    }

    result = (*v16)(v11, v4);
    ++v14;
  }

  __break(1u);
  return result;
}

void *sub_A8858(uint64_t a1)
{
  v54 = sub_169DB4();
  v2 = sub_9F48(v54);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5758(&qword_1E9B28, &unk_173710);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_1697C4();
  v13 = sub_9F48(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = 0;
  v23 = *(a1 + 16);
  v55 = a1;
  v56 = v23;
  v51 = (v4 + 8);
  v52 = v15 + 16;
  v49 = (v15 + 8);
  v46 = (v15 + 32);
  v48 = &_swiftEmptyArrayStorage;
  while (v56 != v22)
  {
    v24 = *(v15 + 72);
    v50 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v25 = v12;
    (*(v15 + 16))(v21, v55 + v50 + v24 * v22, v12);
    sub_1697B4();
    v26 = sub_169DD4();
    v27 = sub_9E2C(v11, 1, v26);
    if (v27 == 1)
    {
      sub_A8D28(v11);
      v28 = 0;
    }

    else
    {
      v28 = sub_169DC4();
      (*(*(v26 - 8) + 8))(v11, v26);
    }

    v29 = v53;
    sub_169D84();
    v30 = sub_169DA4();
    (*v51)(v29, v54);
    if (v27 != 1 && v28 == v30)
    {
      v32 = *v46;
      (*v46)(v47, v21, v25);
      v33 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v33[2];
        sub_146820();
        v33 = v57;
      }

      v36 = v33[2];
      if (v36 >= v33[3] >> 1)
      {
        sub_146820();
        v33 = v57;
      }

      ++v22;
      v33[2] = v36 + 1;
      v48 = v33;
      v37 = v33 + v50 + v36 * v24;
      v12 = v25;
      v32(v37, v47, v25);
    }

    else
    {
      v12 = v25;
      (*v49)(v21, v25);
      ++v22;
    }
  }

  v38 = v48;
  if (v48[2])
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_16ACF4(45);

    v57 = 0x100000000000002BLL;
    v58 = 0x8000000000188790;
    v59._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v59);

    v40 = v57;
    v39 = v58;
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v41 = sub_16A584();
    sub_9DA0(v41, qword_1E65C0);
    v42 = sub_16A9A4();
    sub_386D8(v42, 0x800uLL, 0xD000000000000086, 0x80000000001886E0, 0xD000000000000015, 0x8000000000188770, 74, v40, v39);
  }

  else
  {
    v43 = v55;

    return v43;
  }

  return v38;
}

uint64_t sub_A8D28(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9B28, &unk_173710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_A8D90()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v4 = sub_BC78C(qword_1F0E10);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_A8E2C()
{
  v36 = type metadata accessor for CarCommandsError();
  v0 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_A138();
  v3 = v2 - v1;
  v37 = sub_1693E4();
  sub_37404();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v11 = (v10 - v9);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  v38 = 0xD000000000000091;
  v39 = 0x8000000000188810;
  v42 = (&stru_20 + 15);
  v43 = 0xE100000000000000;
  sub_D030();
  v14 = sub_16AB34();
  v15 = sub_15AE4(v14);
  v17 = v16;

  if (v17)
  {
    v44._countAndFlagsBits = 32;
    v44._object = 0xE100000000000000;
    sub_16A744(v44);
    v45._countAndFlagsBits = 0xD000000000000016;
    v45._object = 0x800000000017FD50;
    sub_16A744(v45);
    v18 = v15;
    v19 = v17;
  }

  else
  {
    v18 = 0xD000000000000016;
    v19 = 0x800000000017FD50;
  }

  v38 = v18;
  v39 = v19;
  v42 = (&stru_20 + 26);
  v43 = 0xE100000000000000;
  v41 = 24;
  v46._countAndFlagsBits = sub_16AE24();
  sub_16A744(v46);

  v47._countAndFlagsBits = 58;
  v47._object = 0xE100000000000000;
  sub_16A744(v47);

  v20._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v20._object)
  {
    v42 = &stru_20;
    v43 = 0xE100000000000000;
    sub_16A744(v20);

    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    sub_16A744(v48);
  }

  v22 = v38;
  v21 = v39;
  v23 = sub_16A574();
  if (os_log_type_enabled(v23, v13))
  {
    v24 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v27 = sub_15BC8(v22, v21, &v42);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
    sub_D13C(v26);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  sub_169384();
  v42 = &_swiftEmptySetSingleton;
  sub_8F624();
  sub_86E4(v11, v42, &v38);

  (*(v5 + 8))(v11, v37);
  v28 = v40;
  sub_57A80(&v38);
  if (v28)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_AAAE4();
  sub_AAA7C(v30, v31);
  swift_allocError();
  sub_548D0(v3, v32);
  v33 = sub_16A9A4();
  swift_getErrorValue();
  v34 = sub_16AEB4();
  sub_386D8(v33, 0x800uLL, 0xD000000000000091, 0x8000000000188810, 0xD000000000000016, 0x800000000017FD50, 27, v34, v35);

  sub_168C74();
  return sub_5A09C(v3);
}

uint64_t sub_A92DC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_173720;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_AAB80();
  sub_AAB1C();
  *(v0 + 40) = sub_AAB80();
  sub_AAB1C();
  *(v0 + 48) = sub_AAB80();
  sub_AAB1C();
  *(v0 + 56) = sub_AAB80();
  sub_AAB1C();
  *(v0 + 64) = sub_AAB80();
  return v0;
}

uint64_t sub_A93F0()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_A94AC, 0, 0);
}

uint64_t sub_A94AC()
{
  v33 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000091;
  v0[3] = 0x8000000000188810;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_16A744(v35);
    v36._countAndFlagsBits = 0xD000000000000029;
    v36._object = 0x80000000001888B0;
    sub_16A744(v36);
    v2 = v6;
    v1 = v8;
  }

  v32._countAndFlagsBits = 58;
  v32._object = 0xE100000000000000;
  v0[6] = 65;
  v37._countAndFlagsBits = sub_16AE24();
  sub_16A744(v37);

  sub_16A744(v32);

  v9._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v9._object)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v9);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    sub_16A744(v38);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v32._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A3D4();
  v18 = *(v15 + 16);
  v19 = sub_30AF8();
  v18(v19);
  v20 = sub_85CAC(v14);
  v21 = v0[10];
  if (v20)
  {
    v22 = v20;
    v23 = v0[10];

    v24 = v0[1];

    return v24(v22);
  }

  else
  {
    v27 = v0[7];
    v26 = v0[8];
    type metadata accessor for CarCommandsError();
    sub_AAAE4();
    sub_AAA7C(v28, v29);
    swift_allocError();
    (v18)(v30, v27, v26);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_A9880()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v88 = sub_5758(&qword_1E9D80, &qword_1738D0);
  sub_37404();
  v85 = v2;
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v5);
  v84 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v83 - v8;
  sub_16A3D4();
  sub_16A444();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  v87 = v9;
  sub_168894();
  sub_1693F4();
  v10 = type metadata accessor for FeatureFlagHelper();
  v83[0] = v10;
  v11 = sub_7A728();
  v12 = sub_168E34();
  sub_483C8(v12);
  sub_168E24();
  v89 = type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v13 = sub_5758(&qword_1E9D88, &qword_1738D8);
  v14 = sub_483C8(v13);
  v94 = v10;
  v95 = &off_1D9AF0;
  v93[0] = v11;
  v15 = (v14 + qword_1F0DF0);
  v83[1] = type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_AAB58();
  *v15 = sub_16A094();
  v15[1] = &off_1D4830;
  v16 = (v14 + qword_1F0DF8);
  v17 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  v86 = v17;
  sub_16A154();
  sub_AAB58();
  v18 = sub_16A094();
  v16[3] = v17;
  v16[4] = &off_1DA7E8;
  *v16 = v18;
  sub_10824(v96, v92);
  sub_10824(v93, v91);
  sub_7A6F4();
  sub_37404();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v23 = sub_AAAC4(v22, v83[0]);
  v24(v23);
  sub_AAB48();
  sub_1668CC();
  v26 = v25;

  sub_7A648();
  v96[0] = v26;
  sub_37284(&qword_1E9D90, &qword_1E9D88, &qword_1738D8);
  sub_AAB38();
  sub_168824();
  sub_7A62C();
  sub_30AF8();
  sub_1688D4();
  sub_1693F4();
  v27 = v83[0];
  v28 = sub_7A728();
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v29 = sub_5758(&qword_1E9D98, &qword_1738E0);
  v30 = sub_483C8(v29);
  v94 = v27;
  v95 = &off_1D9AF0;
  v93[0] = v28;
  v31 = (v30 + qword_1F0E38);

  sub_16A154();
  sub_AAB58();
  v32 = v86;
  v33 = sub_16A094();
  v31[3] = v32;
  v31[4] = &off_1DA7E8;
  *v31 = v33;
  sub_10824(v96, v92);
  sub_10824(v93, v91);
  sub_7A6F4();
  sub_37404();
  v35 = *(v34 + 64);
  __chkstk_darwin(v36);
  v38 = sub_AAAC4(v37, v83[0]);
  v39(v38);
  sub_AAB48();
  sub_1668CC();
  v41 = v40;

  sub_7A648();
  v96[0] = v41;
  sub_37284(&qword_1E9DA0, &qword_1E9D98, &qword_1738E0);
  sub_AAB38();
  sub_168834();

  sub_1688E4();
  sub_1693F4();
  v42 = sub_7A728();
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v43 = sub_5758(&qword_1E9DA8, &qword_1738E8);
  v44 = sub_483C8(v43);
  v94 = v27;
  v95 = &off_1D9AF0;
  v93[0] = v42;
  v45 = (v44 + qword_1F0E60);

  sub_16A154();
  sub_AAB58();
  v46 = v86;
  v47 = sub_16A094();
  v45[3] = v46;
  v45[4] = &off_1DA7E8;
  *v45 = v47;
  v48 = (v44 + qword_1F0E68);
  sub_16A154();
  sub_AAB58();
  *v48 = sub_16A094();
  v48[1] = &off_1D4800;
  sub_10824(v96, v92);
  sub_10824(v93, v91);
  sub_7A6F4();
  sub_37404();
  v50 = *(v49 + 64);
  __chkstk_darwin(v51);
  v53 = sub_AAAC4(v52, v83[0]);
  v54(v53);
  sub_AAB48();
  sub_1668CC();
  v56 = v55;

  sub_7A648();
  v96[0] = v56;
  sub_37284(&qword_1E9DB0, &qword_1E9DA8, &qword_1738E8);
  sub_AAB38();
  sub_168864();
  sub_7A62C();
  sub_30AF8();
  v57 = v88;
  v58 = v87;
  sub_1688C4();
  sub_1693F4();
  v59 = sub_7A728();
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v94 = v27;
  v95 = &off_1D9AF0;
  v93[0] = v59;
  v60 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy();
  v61 = sub_483C8(v60);
  sub_2F8D0(v93, v27);
  sub_37404();
  v63 = *(v62 + 64);
  __chkstk_darwin(v64);
  v66 = sub_AAAC4(v65, v83[0]);
  v67(v66);
  v68 = *v48;
  v92[3] = v27;
  v92[4] = &off_1D9AF0;
  v92[0] = v68;
  *(v61 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v96, v91);
  sub_10824(v92, v90);
  sub_2F8D0(v90, v90[3]);
  sub_37404();
  v70 = *(v69 + 64);
  __chkstk_darwin(v71);
  sub_A138();
  v74 = (v73 - v72);
  (*(v75 + 16))(v73 - v72);
  v76 = *v74;
  sub_1668CC();
  v78 = v77;
  sub_D13C(v96);
  sub_D13C(v92);
  sub_D13C(v90);
  sub_D13C(v93);
  v96[0] = v78;
  sub_AAA7C(&qword_1E9DB8, type metadata accessor for SetRadioStationHandleIntentFlowStrategy);
  sub_1687E4();
  sub_7A62C();
  sub_30AF8();
  sub_168884();
  v79 = v85;
  (*(v85 + 16))(v84, v58, v57);
  v80 = sub_5758(&qword_1E9DC0, &unk_1738F0);
  sub_483C8(v80);
  v81 = sub_168914();
  (*(v79 + 8))(v58, v57);
  return v81;
}

uint64_t sub_AA290()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetRadioStationRCHFlowStrategy()
{
  result = qword_1E9B60;
  if (!qword_1E9B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AA39C(uint64_t a1)
{
  result = sub_AAA7C(&qword_1E9D68, type metadata accessor for SetRadioStationRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AA40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_A93F0();
}

uint64_t sub_AA4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AA658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AA728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_AA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  v20 = type metadata accessor for SetRadioStationRCHFlowStrategy();
  *v19 = v12;
  v19[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v20, a6, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_AA8E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_451FC();
}

uint64_t sub_AAA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AAAFC()
{
  v2 = *(v0 - 296);

  return swift_allocObject();
}

uint64_t sub_AAB1C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_AAB64()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_AAB80()
{

  return sub_168A34();
}

uint64_t type metadata accessor for CarCommandsSetCarPlaySeatSettingsCATsSimple()
{
  result = qword_1E9DC8;
  if (!qword_1E9DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AAC24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_AAC78(a1, a2);
}

uint64_t sub_AAC78(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_AADD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

void *sub_AAEDC(__int128 *a1, uint64_t a2)
{
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v2[5] = v5;
  v2[6] = &protocol witness table for ResponseFactory;
  v2[2] = v6;
  v2[13] = 0;
  sub_D124(a1, (v2 + 7));
  v2[12] = a2;
  return v2;
}

id sub_AAF54()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_117F78(v3);
    v5 = *(v0 + 104);
    *(v0 + 104) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_AAFD8()
{
  v36 = type metadata accessor for CarCommandsError();
  v0 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_A138();
  v3 = v2 - v1;
  v37 = sub_1693E4();
  sub_37404();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v11 = (v10 - v9);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  v38 = 0xD00000000000008FLL;
  v39 = 0x80000000001889A0;
  v42 = (&stru_20 + 15);
  v43 = 0xE100000000000000;
  sub_D030();
  v14 = sub_16AB34();
  v15 = sub_15AE4(v14);
  v17 = v16;

  if (v17)
  {
    v44._countAndFlagsBits = 32;
    v44._object = 0xE100000000000000;
    sub_16A744(v44);
    v45._countAndFlagsBits = 0xD000000000000016;
    v45._object = 0x800000000017FD50;
    sub_16A744(v45);
    v18 = v15;
    v19 = v17;
  }

  else
  {
    v18 = 0xD000000000000016;
    v19 = 0x800000000017FD50;
  }

  v38 = v18;
  v39 = v19;
  v42 = (&stru_20 + 26);
  v43 = 0xE100000000000000;
  v41 = 34;
  v46._countAndFlagsBits = sub_16AE24();
  sub_16A744(v46);

  v47._countAndFlagsBits = 58;
  v47._object = 0xE100000000000000;
  sub_16A744(v47);

  v20._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v20._object)
  {
    v42 = &stru_20;
    v43 = 0xE100000000000000;
    sub_16A744(v20);

    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    sub_16A744(v48);
  }

  v22 = v38;
  v21 = v39;
  v23 = sub_16A574();
  if (os_log_type_enabled(v23, v13))
  {
    v24 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v27 = sub_15BC8(v22, v21, &v42);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_0, v23, v24, "%s", v25, 0xCu);
    sub_D13C(v26);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  sub_169384();
  v42 = &_swiftEmptySetSingleton;
  sub_8F624();
  sub_86E4(v11, v42, &v38);

  (*(v5 + 8))(v11, v37);
  v28 = v40;
  sub_57A80(&v38);
  if (v28)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_ACD00();
  sub_ACCB8(v30, 255, v31);
  swift_allocError();
  sub_548D0(v3, v32);
  v33 = sub_16A9A4();
  swift_getErrorValue();
  v34 = sub_16AEB4();
  sub_386D8(v33, 0x1000uLL, 0xD00000000000008FLL, 0x80000000001889A0, 0xD000000000000016, 0x800000000017FD50, 37, v34, v35);

  sub_168C74();
  return sub_5A09C(v3);
}

uint64_t sub_AB48C()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_173950;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_168A34();
  return v0;
}

uint64_t sub_AB598()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_AB654, 0, 0);
}

uint64_t sub_AB654()
{
  v32 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD00000000000008FLL;
  v0[3] = 0x80000000001889A0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v34);
    v35._countAndFlagsBits = 0xD000000000000029;
    v35._object = 0x80000000001888B0;
    sub_16A744(v35);
    v2 = v6;
    v1 = v8;
  }

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  v0[6] = 65;
  v36._countAndFlagsBits = sub_16AE24();
  sub_16A744(v36);

  sub_16A744(v31);

  v9._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v9._object)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v9);

    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    sub_16A744(v37);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v31._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A494();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_ED104(v14);
  v20 = v0[10];
  if (v19)
  {
    v21 = v19;
    v22 = v0[10];

    v23 = v0[1];

    return v23(v21);
  }

  else
  {
    v26 = v0[7];
    v25 = v0[8];
    type metadata accessor for CarCommandsError();
    sub_ACD00();
    sub_ACCB8(v27, 255, v28);
    swift_allocError();
    v18(v29, v26, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_ABA30()
{
  v1 = sub_16A164();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v64 = sub_5758(&qword_1E9F50, &qword_173B28);
  sub_37404();
  v63 = v3;
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v6);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v56 - v9;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v11 = qword_1F0C70;
  v75 = type metadata accessor for WalletService();
  v76 = &off_1D7C28;
  *&v74 = v11;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_161E98();

  sub_D13C(&v74);
  v61 = v0;
  v57 = *(v0 + 96);

  sub_1693F4();
  v12 = type metadata accessor for FeatureFlagHelper();
  v13 = swift_allocObject();
  v14 = sub_168E34();
  sub_483C8(v14);

  sub_168E24();
  v72 = v12;
  v73 = &off_1D9AF0;
  v71[0] = v13;
  v15 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy();
  v16 = sub_483C8(v15);
  sub_2F8D0(v71, v12);
  v56 = &v56;
  sub_37404();
  v18 = v17;
  v59 = *(v19 + 64);
  __chkstk_darwin(v20);
  v60 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v10;
  v22 = (&v56 - v60);
  v58 = *(v18 + 16);
  v58(&v56 - v60);
  v23 = *v22;
  v69 = v12;
  v70 = &off_1D9AF0;
  v68[0] = v23;
  *(v16 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(&v74, v67);
  sub_10824(v68, v66);
  sub_ACD30();
  sub_37404();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  sub_A138();
  v28 = sub_ACD18(v27);
  v29(v28);

  sub_1668CC();
  v31 = v30;
  sub_D13C(&v74);
  sub_D13C(v68);
  sub_D13C(v66);
  sub_D13C(v71);

  *&v74 = v31;
  sub_ACCB8(&qword_1E9F58, 255, type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy);
  sub_1687E4();

  v32 = v64;
  sub_168884();
  sub_1693F4();
  v33 = swift_allocObject();
  v34 = *(v14 + 48);
  v35 = *(v14 + 52);
  swift_allocObject();

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v72 = v12;
  v73 = &off_1D9AF0;
  v71[0] = v33;
  v36 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  sub_483C8(v36);
  v37 = sub_2F8D0(v71, v12);
  v57 = &v56;
  __chkstk_darwin(v37);
  v38 = (&v56 - v60);
  v58(&v56 - v60);
  v39 = *v38;
  v69 = v12;
  v70 = &off_1D9AF0;
  v68[0] = v39;
  sub_10824(&v74, v67);
  sub_10824(v68, v66);
  sub_ACD30();
  sub_37404();
  v41 = *(v40 + 64);
  __chkstk_darwin(v42);
  sub_A138();
  v44 = sub_ACD18(v43);
  v45(v44);

  sub_1668CC();
  v47 = v46;
  sub_D13C(&v74);
  sub_D13C(v68);
  sub_D13C(v66);
  sub_D13C(v71);

  v71[0] = v47;
  v48 = swift_allocObject();
  v49 = v61;
  swift_weakInit();
  sub_10824(v49 + 56, &v74);
  v50 = swift_allocObject();
  sub_D124(&v74, v50 + 16);
  *(v50 + 56) = v48;
  sub_ACCB8(&qword_1E9F60, 255, type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy);
  sub_168854();

  v51 = v65;
  sub_1688A4();
  v52 = v63;
  (*(v63 + 16))(v62, v51, v32);
  v53 = sub_5758(&qword_1E9F68, &qword_173B30);
  sub_483C8(v53);
  v54 = sub_168914();
  (*(v52 + 8))(v51, v32);
  return v54;
}

uint64_t sub_AC20C(uint64_t a1, void *a2)
{
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  v3 = sub_1690A4();
  v4 = [v3 trunkStatus];

  if (v4 == &dword_0 + 1 && (v5 = a2[3], v6 = a2[4], sub_D084(a2, v5), (sub_E29F8(v5, v6) & 1) == 0))
  {
    v10 = a2[3];
    v11 = a2[4];
    sub_D084(a2, v10);
    sub_E2A20(v10, v11);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x1002uLL, 0xD00000000000008FLL, 0x80000000001889A0, 0xD000000000000012, 0x8000000000188A30, 83, 0xD00000000000004ALL, 0x8000000000188AB0);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + 96);

      *(v15 + 16) = 0;
    }

    return 1;
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x1002uLL, 0xD00000000000008FLL, 0x80000000001889A0, 0xD000000000000012, 0x8000000000188A30, 88, 0xD000000000000052, 0x8000000000188A50);
    return 0;
  }
}

uint64_t sub_AC460()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));
  v1 = *(v0 + 96);

  return v0;
}

uint64_t sub_AC498()
{
  sub_AC460();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_AC4F0(uint64_t a1, uint64_t a2)
{
  result = sub_ACCB8(&qword_1E9F38, a2, type metadata accessor for SetTrunkStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AC560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_AB598();
}

uint64_t sub_AC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_AC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_AC970()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_3EEF8();
}

uint64_t sub_ACA48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_453F8();
}

uint64_t sub_ACB94(uint64_t a1, uint64_t a2)
{
  result = sub_ACCB8(&qword_1E9F40, a2, type metadata accessor for SetTrunkStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_ACC34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ACC6C()
{
  sub_D13C((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_ACCB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_ACD30()
{
  v2 = *(v0 - 264);

  return sub_2F8D0(v0 - 288, v2);
}

_BYTE *storeEnumTagSinglePayload for NLDoorPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xACE1CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_ACE58()
{
  result = qword_1E9F70;
  if (!qword_1E9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9F70);
  }

  return result;
}

uint64_t SEGetTrunkStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_ACEC0()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(dword_16DAF0);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 13);
}

uint64_t sub_ACF70()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_D254();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(v2);
}

uint64_t sub_AD094(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetTrunkStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetTrunkStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_AD16C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(&unk_16DAE8);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_AD22C;
  v3 = *(v0 + 48);

  return v5(v1, 3, 1);
}

uint64_t sub_AD22C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 72) = v8;

  return _swift_task_switch(sub_AD344, 0, 0);
}

uint64_t sub_AD344()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A4D4();
  if (v1 <= 5)
  {
    v2 = qword_173CA8[v1];
  }

  v3 = *(v0 + 32);
  v4 = sub_16A4C4();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_AD3EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetTrunkStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetTrunkStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_AD4C4()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(dword_16F8F0);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 3);
}

uint64_t sub_AD574()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_AD684, 0, 0);
}

uint64_t sub_AD684()
{
  sub_1696C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  switch(v1 >> 8)
  {
    case 3u:
      sub_16A4D4();
      v3 = v2;
      v4 = sub_16A4C4();
      v5 = v4;
      if (v1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      [v4 setTrunkStatus:v6];

      break;
    default:
      sub_16A4D4();
      v5 = sub_16A4C4();
      break;
  }

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_AD7E0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetTrunkStatusIntentHandler.handle(intent:)(v6);
}

id SEGetTrunkStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetTrunkStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AD950()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_AD9E8()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_ADA80()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t type metadata accessor for CarCommandsSetClimateStatusCATsSimple()
{
  result = qword_1E9FA8;
  if (!qword_1E9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ADBAC()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_ADC3C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[5] = v3;
  sub_AE798(v3, xmmword_16D9A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    v7 = *(v6 + 32);
    sub_93D80();
    v8();
  }

  v9 = sub_37484(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0[6] = v9;
  *v9 = v0;
  sub_AE7B8(v9);
  v10 = sub_AE808(54);

  return v11(v10);
}

uint64_t sub_ADDA0()
{
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_ADEDC()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_ADF70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    v7 = *(v6 + 32);
    sub_93D80();
    v8();
  }

  v9 = *(v0 + 64);
  *(v3 + 80) = 0x64656C62616E65;
  *(v3 + 88) = 0xE700000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v9;
  v10 = sub_37484(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 48) = v10;
  *v10 = v0;
  sub_AE7B8(v10);
  v11 = sub_AE808(49);

  return v12(v11);
}

uint64_t sub_AE100()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_AE194()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    v7 = *(v6 + 32);
    sub_93D80();
    v8();
  }

  v9 = *(v0 + 64);
  *(v3 + 80) = 0x6E4F6E727574;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v9;
  v10 = sub_37484(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 48) = v10;
  *v10 = v0;
  sub_AE7B8(v10);
  v11 = sub_AE808(66);

  return v12(v11);
}

uint64_t sub_AE320()
{
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_AE45C()
{
  sub_D2DC();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_AE4C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_93D80();
  return sub_AE514(v3, v4);
}

uint64_t sub_AE514(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = sub_D414(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_2F868(a1, &v20 - v17, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v18;
}

uint64_t sub_AE68C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

__n128 *sub_AE798(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E726163;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_AE7B8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_AE7CC(uint64_t a1)
{
  result = sub_9E2C(v1, 1, a1);
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_AE828()
{
  sub_D2DC();
  v1[63] = v2;
  v1[64] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_AE8B0()
{
  sub_10824(*(v0 + 504), v0 + 128);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9FF8, &qword_173DC8);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 168), v0 + 88);
    v1 = *sub_D084((v0 + 88), *(v0 + 112));
    v2 = sub_8EC20();
    *(v0 + 648) = v2;
    if (v2 == 2)
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v3 = *(v0 + 512);
      v4 = sub_16A584();
      sub_9DA0(v4, qword_1E65C0);
      sub_16A9A4();
      sub_AFE64();
      sub_386D8(v6, 0x8000000uLL, v7, v8, 0xD000000000000012, v9, 23, v5 + 46, v21);
      v10 = *v3;
      v11 = swift_task_alloc();
      *(v0 + 632) = v11;
      *v11 = v0;
      sub_AFE20(v11);

      return sub_12F9C4();
    }

    else
    {
      v19 = *sub_D084((*(v0 + 512) + 8), *(*(v0 + 512) + 32));
      v20 = swift_task_alloc();
      *(v0 + 528) = v20;
      *v20 = v0;
      v20[1] = sub_AEC38;

      return sub_13AB58(v0 + 248, 1);
    }
  }

  else
  {
    v13 = *(v0 + 504);
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0;
    sub_D188(v0 + 168, &qword_1EA000, &qword_173DD0);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v15 = v14;
    sub_16ACF4(61);
    *(v0 + 488) = 0;
    *(v0 + 496) = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000016;
    v23._object = 0x8000000000184C00;
    sub_16A744(v23);
    sub_16AD84();
    v24._countAndFlagsBits = 0xD000000000000025;
    v24._object = 0x8000000000188D70;
    sub_16A744(v24);
    v16 = *(v0 + 496);
    *v15 = *(v0 + 488);
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = *(v0 + 520);

    sub_D37C();

    return v18();
  }
}

uint64_t sub_AEC38()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_AED30()
{
  sub_D124((v0 + 248), v0 + 208);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_D084((v0 + 208), v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 544) = v5;
  *v5 = v0;
  v5[1] = sub_AEE68;

  return v7(v0 + 328, v1, v2);
}

uint64_t sub_AEE68()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_AEF60()
{
  v1 = **(v0 + 512);
  v2 = swift_task_alloc();
  *(v0 + 560) = v2;
  *v2 = v0;
  v3 = sub_AFE20(v2);

  return (sub_9A334)(v3);
}

uint64_t sub_AF008()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v0;
  sub_71940();
  v6 = *(v5 + 560);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_AF104()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 512);
    sub_D124((v0 + 328), v0 + 288);
    v2 = sub_D084((v1 + 48), *(v1 + 72));
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = sub_D084((v0 + 288), v4);
    *(inited + 56) = v4;
    *(inited + 64) = *(v5 + 8);
    v7 = sub_10888((inited + 32));
    v8.n128_f64[0] = (*(*(v4 - 8) + 16))(v7, v6, v4);
    v9 = sub_948E4(inited, *v2, v8);
    swift_setDeallocating();
    sub_EFFF4();
    v10 = v9[2];

    if (v10)
    {
      v11 = *(v0 + 520);
      v12 = *(v0 + 312);
      v13 = *(v0 + 320);
      v14 = *(v0 + 648);
      sub_D084((v0 + 288), v12);
      (*(v13 + 104))(v14 & 1, v12, v13);
      type metadata accessor for CarCommandsSetAutoModeCATsSimple();
      sub_16A154();
      *(v0 + 576) = sub_16A0F4();
      v15 = swift_task_alloc();
      *(v0 + 584) = v15;
      *v15 = v0;
      v15[1] = sub_AF518;

      return sub_48EC8(v14 & 1);
    }

    else
    {
      v27 = *(v1 + 72);
      v28 = *(*(v0 + 512) + 80);
      sub_D084((v1 + 48), v27);
      v29 = *(v28 + 8);
      v30 = *(v29 + 40);
      v34 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 600) = v32;
      *v32 = v0;
      v32[1] = sub_AF6AC;

      return v34(v27, v29);
    }
  }

  else
  {
    sub_D188(v0 + 328, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v17 = *(v0 + 512);
    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_AFE64();
    sub_386D8(v20, 0x8000000uLL, v21, v22, 0xD000000000000012, v23, 36, v19 + 11, v33);
    v24 = *v17;
    v25 = swift_task_alloc();
    *(v0 + 616) = v25;
    *v25 = v0;
    v26 = sub_AFE20(v25);

    return (sub_12F9C4)(v26);
  }
}

uint64_t sub_AF518(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = v2;
  v4[50] = a1;
  v4[51] = v1;
  v5 = v3[73];
  v6 = *v2;
  v4[74] = v1;

  v7 = v3[72];

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_AF650()
{
  sub_D2DC();
  sub_80828();
  v1 = *(v0 + 400);
  sub_AFE34();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_AF6AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  sub_71940();
  v6 = *(v5 + 600);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 608) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_AF7A8()
{
  sub_D2DC();
  sub_80828();
  v1 = *(v0 + 424);
  sub_AFE34();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_AF804()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[55] = v1;
  v2[56] = v4;
  v2[57] = v0;
  sub_71940();
  v6 = *(v5 + 616);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 624) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_AF900()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  v1 = *(v0 + 448);
  sub_AFE34();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_AF960()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[58] = v1;
  v2[59] = v4;
  v2[60] = v0;
  sub_71940();
  v6 = *(v5 + 632);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 640) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_AFA5C()
{
  sub_D2DC();
  v1 = *(v0 + 472);
  sub_AFE34();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_AFAB4()
{
  sub_D2DC();
  sub_D13C(v0 + 11);
  v1 = v0[80];
  v2 = v0[65];

  sub_D37C();

  return v3();
}

uint64_t sub_AFB18()
{
  sub_D2DC();
  v1 = *(v0 + 536);

  v2 = *(v0 + 376);
  sub_AFE34();
  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_AFB78()
{
  sub_D2DC();
  v1 = v0[67];

  sub_D13C(v0 + 11);
  v2 = v0[71];
  v3 = v0[65];

  sub_D37C();

  return v4();
}

uint64_t sub_AFBE4()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  sub_D13C(v0 + 11);
  v1 = v0[78];
  v2 = v0[65];

  sub_D37C();

  return v3();
}

uint64_t sub_AFC50()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  sub_D13C(v0 + 11);
  v1 = v0[69];
  v2 = v0[65];

  sub_D37C();

  return v3();
}

uint64_t sub_AFCBC()
{
  sub_D2DC();
  sub_80828();
  sub_D13C(v0 + 11);
  v1 = v0[76];
  v2 = v0[65];

  sub_D37C();

  return v3();
}

uint64_t sub_AFD24()
{
  sub_D2DC();
  sub_80828();
  sub_D13C(v0 + 11);
  v1 = v0[74];
  v2 = v0[65];

  sub_D37C();

  return v3();
}

uint64_t sub_AFD8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_AE828();
}

uint64_t sub_AFE20(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 512);
  return v2;
}

uint64_t sub_AFE34()
{
  v1 = *(v0 + 520);
  sub_D13C((v0 + 88));
}

uint64_t sub_B0020(char a1)
{
  *(v1 + 96) = a1;
  v2 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_B00E8, 0, 0);
}

uint64_t sub_B00E8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 96);
  sub_132B1C();
  v4 = *sub_D084((v0 + 16), *(v0 + 40));
  sub_D2B90(2, v3);
  sub_D13C((v0 + 16));
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  *(v0 + 72) = sub_16A0F4();
  v5 = sub_16A0C4();
  sub_5370(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_B0204;
  v7 = *(v0 + 56);

  return sub_E0BE4();
}

uint64_t sub_B0204(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_D254();
  *v6 = v5;
  v7 = v4[10];
  v8 = *v2;
  *v6 = *v2;
  v5[11] = v1;

  v9 = v4[9];
  if (v1)
  {
    sub_D188(v5[7], &qword_1E6300, &qword_16ECE0);

    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v5[8];
    sub_D188(v5[7], &qword_1E6300, &qword_16ECE0);

    v14 = v8[1];

    return v14(a1);
  }
}

uint64_t sub_B03BC()
{
  sub_D2DC();
  v2 = v0[7];
  v1 = v0[8];

  sub_D37C();
  v4 = v0[11];

  return v3();
}

uint64_t sub_B0420(uint64_t a1)
{
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_B0450()
{
  sub_10824(*(v0 + 616), v0 + 296);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EA108, &qword_173E68);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 624);
    sub_D124((v0 + 336), v0 + 256);
    v2 = *sub_D084((v1 + 24), *(v1 + 48));
    v3 = swift_task_alloc();
    *(v0 + 632) = v3;
    *v3 = v0;
    v3[1] = sub_B06AC;

    return sub_13AB58(v0 + 376, 0);
  }

  else
  {
    v5 = *(v0 + 616);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0;
    sub_D188(v0 + 336, &qword_1EA110, &unk_173E70);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v7 = v6;
    sub_16ACF4(67);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v11._object = 0x8000000000184C00;
    v11._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v11);
    sub_16AD84();
    v12._countAndFlagsBits = 0xD00000000000002BLL;
    v12._object = 0x8000000000188F10;
    sub_16A744(v12);
    v8 = *(v0 + 608);
    *v7 = *(v0 + 600);
    v7[1] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v9();
  }
}

uint64_t sub_B06AC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 632);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 640) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B07A8()
{
  v1 = v0[51];
  sub_D084(v0 + 47, v0[50]);
  v2 = *(v1 + 56);
  v7 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_B08C8;
  sub_B19B8();

  return v5();
}

uint64_t sub_B08C8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 648);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 656) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B09C4()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  v1 = *(v0 + 640);
  sub_D37C();

  return v2();
}

uint64_t sub_B0A20()
{
  if (*(v0 + 480))
  {
    sub_D124((v0 + 456), v0 + 416);
    v1 = *(v0 + 408);
    sub_D084((v0 + 376), *(v0 + 400));
    v2 = *(v1 + 88);
    v18 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 664) = v4;
    *v4 = v0;
    v4[1] = sub_B0C60;
    sub_B19B8();

    return v5();
  }

  else
  {
    sub_D188(v0 + 456, &qword_1E6060, &unk_1752B0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = *(v0 + 624);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    sub_16A9A4();
    sub_B1960();
    sub_386D8(v10, 0x200000000uLL, v11, v12, 0xD000000000000012, v13, 28, v9 + 92, v17);
    v14 = sub_B1994(&unk_173E80);
    *(v0 + 720) = v14;
    *v14 = v0;
    v15 = sub_B197C(v14);

    return v16(v15);
  }
}

uint64_t sub_B0C60()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 664);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 672) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B0D5C()
{
  if (*(v0 + 560))
  {
    v1 = *(v0 + 624);
    sub_D124((v0 + 536), v0 + 496);
    sub_10824(v0 + 416, v0 + 16);
    sub_10824(v0 + 496, v0 + 56);
    swift_beginAccess();
    sub_B176C(v0 + 16, v1 + 64);
    swift_endAccess();
    sub_B17DC(v1 + 64, v0 + 96);
    if (*(v0 + 120) == 1)
    {
      sub_D188(v0 + 96, &qword_1EA120, &unk_173E90);
      [objc_allocWithZone(DialogExecutionResult) init];
      sub_D13C((v0 + 496));
      sub_D13C((v0 + 416));
      v2 = sub_B18FC();

      return v3(v2);
    }

    else
    {
      sub_B184C(v0 + 96, v0 + 176);
      sub_D188(v0 + 96, &qword_1EA120, &unk_173E90);
      v15 = *sub_D084((v0 + 256), *(v0 + 280));
      sub_8F458();
      v16 = swift_task_alloc();
      *(v0 + 680) = v16;
      *v16 = v0;
      v16[1] = sub_B102C;
      sub_10B4C();

      return sub_10C7C0(v17, v18, v19);
    }
  }

  else
  {
    sub_D188(v0 + 536, &qword_1EA118, &qword_173E88);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = *(v0 + 624);
    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_B1960();
    sub_386D8(v8, 0x200000000uLL, v9, v10, 0xD000000000000012, v11, 32, v7 + 94, v20);
    v12 = sub_B1994(&unk_173E80);
    *(v0 + 696) = v12;
    *v12 = v0;
    v13 = sub_B197C(v12);

    return v14(v13);
  }
}

uint64_t sub_B102C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 680);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 688) = v0;

  sub_B18A8(v3 + 176);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_B1134()
{
  sub_D2DC();
  [objc_allocWithZone(DialogExecutionResult) init];
  sub_D13C((v0 + 496));
  sub_D13C((v0 + 416));
  v1 = sub_B18FC();

  return v2(v1);
}

uint64_t sub_B11B0(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 696);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 704) = v1;

  if (!v1)
  {
    *(v5 + 712) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_B12C4()
{
  sub_D2DC();
  sub_D13C((v0 + 416));
  v1 = *(v0 + 712);
  v2 = sub_B18FC();

  return v3(v2);
}

uint64_t sub_B1320(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 720);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 728) = v1;

  if (!v1)
  {
    *(v5 + 736) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_B1434()
{
  sub_D2DC();
  v1 = *(v0 + 736);
  v2 = sub_B18FC();

  return v3(v2);
}

uint64_t sub_B1488()
{
  sub_D2DC();
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 32);
  v1 = v0[91];
  sub_D37C();

  return v2();
}

uint64_t sub_B14EC()
{
  sub_D2DC();
  sub_D13C(v0 + 47);
  sub_D13C(v0 + 32);
  v1 = v0[82];
  sub_D37C();

  return v2();
}

uint64_t sub_B1550()
{
  sub_D2DC();
  sub_B192C();
  v1 = *(v0 + 704);
  sub_D37C();

  return v2();
}

uint64_t sub_B15A8()
{
  sub_D2DC();
  sub_B192C();
  v1 = *(v0 + 672);
  sub_D37C();

  return v2();
}

uint64_t sub_B1600()
{
  sub_D2DC();
  sub_D13C((v0 + 496));
  sub_B192C();
  v1 = *(v0 + 688);
  sub_D37C();

  return v2();
}

uint64_t sub_B1660()
{
  sub_D13C((v0 + 24));
  sub_D188(v0 + 64, &qword_1EA120, &unk_173E90);

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_B16D4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3E08C;

  return sub_B0420(a1);
}

uint64_t sub_B176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA120, &unk_173E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B17DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA120, &unk_173E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B18FC()
{
  sub_D13C(v1 + 47);
  sub_D13C(v1 + 32);
  v2 = v1[1];
  return v0;
}

uint64_t sub_B192C()
{
  sub_D13C(v0 + 52);
  sub_D13C(v0 + 47);

  return sub_D13C(v0 + 32);
}

uint64_t sub_B197C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 624);
  return v2;
}

uint64_t sub_B1994@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v6 = a1 + *a1;
  v4 = *(v1 + 16);

  return swift_task_alloc();
}

uint64_t type metadata accessor for CarCommandsSetClimateStatusCATs()
{
  result = qword_1EA128;
  if (!qword_1EA128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B1A58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_B1AAC(a1, a2);
}

uint64_t sub_B1AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

uint64_t sub_B1C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E76A0, &qword_172B00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_B33F0(&qword_1EA198);
  v11 = sub_16A614();
  v12 = *(v7 + 16);
  if (v11)
  {
    v13 = v3;
  }

  else
  {
    v13 = a1;
  }

  v12(v10, v13, v6);
  v14 = *(sub_5758(&qword_1EA190, &unk_173F30) + 36);
  if ((sub_16A604() & 1) == 0)
  {
    return (*(v7 + 32))(a2, v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  return (v12)(a2, a1 + v14, v6);
}

void sub_B1DC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_16ACF4(34);
  v6 = [v2 vehicleLayoutKey];
  v7 = sub_16A664();
  v9 = v8;

  v28._countAndFlagsBits = 0xD00000000000001ELL;
  v28._object = 0x8000000000189400;
  sub_16A744(v28);
  sub_5758(&qword_1E76A0, &qword_172B00);
  sub_B34B0(&qword_1EA180);
  v29._countAndFlagsBits = sub_16AE24();
  sub_16A744(v29);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  sub_16A9A4();
  sub_B350C();
  sub_386D8(v11, v12, v13, v14, v15, v16, 18, v7, v9);

  sub_B20B4(a1, a2);
  sub_16ACF4(63);
  v30._countAndFlagsBits = sub_B353C();
  sub_16A744(v30);
  v31._countAndFlagsBits = sub_16AE24();
  sub_16A744(v31);

  v32._countAndFlagsBits = 0xD000000000000029;
  v32._object = 0x8000000000189290;
  sub_16A744(v32);
  v17 = [v2 targetTemperatureRange];
  [v17 minimumValue];

  sub_B3598();
  v33._countAndFlagsBits = 0x209480E220;
  v33._object = 0xA500000000000000;
  sub_16A744(v33);
  v18 = [v3 targetTemperatureRange];
  [v18 maximumValue];

  sub_B3598();
  sub_16A9A4();
  sub_B350C();
  sub_386D8(v19, v20, v21, v22, v23, v24, 21, 0, 0xE000000000000000);

  v25 = sub_1682D4();
  v27 = v26;
  [v3 setTargetTemperature:{v26, v25}];
}

uint64_t sub_B20B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  v39 = sub_5758(&qword_1EA188, &qword_173F28);
  v3 = *(*(v39 - 8) + 64);
  v4 = __chkstk_darwin(v39);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v33 - v6;
  v38 = sub_5758(&qword_1EA190, &unk_173F30);
  v7 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v9 = &v33 - v8;
  v10 = sub_5758(&qword_1E76A0, &qword_172B00);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = [v2 targetTemperatureRange];
  sub_16AA94();
  v19 = objc_opt_self();
  v20 = [v19 celsius];
  sub_55158();
  sub_168304();
  v35 = v18;
  sub_16AA84();
  v21 = [v19 celsius];
  sub_168304();
  sub_B33F0(&qword_1EA198);
  v22 = v17;
  v23 = v15;
  result = sub_16A624();
  if (result)
  {
    v25 = v11[2];
    v26 = v36;
    v34 = v22;
    v25(v36, v22, v10);
    v27 = v37;
    v28 = v39;
    v29 = v26 + *(v39 + 48);
    v33 = v23;
    v25(v29, v23, v10);
    sub_2F868(v26, v27, &qword_1EA188, &qword_173F28);
    v30 = *(v28 + 48);
    v31 = v11[4];
    v31(v9, v27, v10);
    v32 = v11[1];
    v32(v27 + v30, v10);
    sub_B3440(v26, v27);
    v31(&v9[*(v38 + 36)], v27 + *(v28 + 48), v10);
    v32(v27, v10);
    sub_B1C20(v9, v40);

    sub_D188(v9, &qword_1EA190, &unk_173F30);
    v32(v33, v10);
    return (v32)(v34, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B24D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_5758(&qword_1EA178, &unk_1774D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v133 - v10;
  v12 = sub_5758(&qword_1E76A0, &qword_172B00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v24 = &v133 - v23;
  if (!(v21 | a2))
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v25 = sub_16A584();
    sub_9DA0(v25, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B3530();
    sub_386D8(v26, v27, v28, v29, v30, v31, 33, v32, 0x80000000001893A0);
    v33 = sub_B355C();

    return sub_5370(v33, v34, v35, v36);
  }

  v38 = v21 == 4 || v21 == 2;
  v142 = v13;
  v143 = v20;
  v140 = v12;
  v141 = v21;
  v138 = a3;
  v139 = v22;
  if (v38)
  {
    v13 = 0x80000000001891C0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v39 = sub_16A584();
    sub_9DA0(v39, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B34D4();
    sub_386D8(v40, v41, v42, v43, v44, v45, 39, v46, 0x8000000000189380);
    v48 = sub_B35B8(v47, "targetTemperatureRange");
    v49 = v48;
    v137 = 0x8000000000189120;
    if (v141 == 4)
    {
      [v48 maximumValue];
    }

    else
    {
      [v48 minimumValue];
    }

    goto LABEL_42;
  }

  if ((a2 - 1) <= 1)
  {
    v13 = 0x80000000001891C0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v50 = sub_16A584();
    sub_9DA0(v50, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B34D4();
    sub_386D8(v51, v52, v53, v54, v55, v56, 42, v57, 0x8000000000189360);
    v59 = sub_B35B8(v58, "targetTemperatureRange");
    v60 = v59;
    v137 = 0x8000000000189120;
    if (a2 == 1)
    {
      [v59 minimumValue];
    }

    else
    {
      [v59 maximumValue];
    }

LABEL_42:
    v94 = [objc_opt_self() celsius];
    v95 = sub_55158();
    v96 = v139;
    v135 = v95;
    sub_168304();
    sub_B20B4(v96, v143);
    v97 = *(v142 + 8);
    v142 += 8;
    v98 = v140;
    v134 = v97;
    v97(v96, v140);
    sub_B34FC();
    sub_16ACF4(63);
    sub_B3580();
    v155._countAndFlagsBits = sub_B353C();
    sub_16A744(v155);
    sub_B34B0(&qword_1EA180);
    v156._countAndFlagsBits = sub_16AE24();
    sub_16A744(v156);

    v157._countAndFlagsBits = v12 - 22;
    v157._object = 0x8000000000189290;
    sub_16A744(v157);
    v99 = [v13 targetTemperatureRange];
    [v99 minimumValue];

    sub_B358C();
    sub_16A904();
    v158._countAndFlagsBits = 0x209480E220;
    v158._object = 0xA500000000000000;
    sub_16A744(v158);
    v100 = [v13 targetTemperatureRange];
    [v100 maximumValue];

    sub_B358C();
    sub_16A904();
    v101 = v145;
    v102 = v146;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v103 = sub_16A584();
    v133 = sub_9DA0(v103, qword_1E65C0);
    sub_16A9A4();
    v104 = v136;
    sub_B3530();
    sub_386D8(v105, v106, v107, v108, v109, v104, 61, v101, v102);

    v110 = sub_1682D4();
    v112 = v111;
    [v13 setTargetTemperature:{v111, v110}];

    sub_B34FC();
    sub_16ACF4(39);
    sub_B3580();
    v159._countAndFlagsBits = 0xD000000000000021;
    v159._object = 0x80000000001892C0;
    sub_16A744(v159);
    v144 = v141;
    sub_16AD84();
    v160._countAndFlagsBits = 8250;
    v160._object = 0xE200000000000000;
    sub_16A744(v160);
    v113 = [v13 targetTemperature];
    sub_1682E4();

    v161._countAndFlagsBits = sub_16AE24();
    sub_16A744(v161);

    v114 = v96;
    v115 = v134;
    v134(v114, v98);
    v116 = v145;
    v117 = v146;
    sub_16A9A4();
    sub_B3574();
    sub_B3530();
    sub_386D8(v118, v119, v120, v121, v122, v104, 64, v116, v117);

    v123 = [v13 targetTemperature];
    v124 = v138;
    sub_1682E4();

    v115(v143, v98);
    v33 = v124;
    v34 = 0;
    v35 = 1;
    v36 = v98;
    return sub_5370(v33, v34, v35, v36);
  }

  sub_2F868(a1, v11, &qword_1EA178, &unk_1774D0);
  if (sub_9E2C(v11, 1, v12) == 1)
  {
    sub_D188(v11, &qword_1EA178, &unk_1774D0);
  }

  else
  {
    (*(v13 + 32))(v24, v11, v12);
    if ((v141 | 2) == 3)
    {
      v61 = v141;
      v62 = [v4 targetTemperature];
      sub_55158();
      sub_1682E4();

      v63 = v139;
      sub_54E00(v61, v139);
      v13 = *(v13 + 8);
      (v13)(v17, v12);
      v64 = [objc_opt_self() celsius];
      v65 = v143;
      sub_168344();

      (v13)(v63, v140);
      sub_168314();
      (v13)(v65, v140);
      sub_B34FC();
      sub_16ACF4(103);
      sub_B3580();
      v148._object = 0x80000000001892F0;
      v148._countAndFlagsBits = 0xD000000000000019;
      sub_16A744(v148);
      v67 = sub_B35B8(v66, "targetTemperature");
      sub_1682E4();

      sub_B34B0(&qword_1EA180);
      v149._countAndFlagsBits = sub_16AE24();
      sub_16A744(v149);

      v68 = v140;
      v135 = v13;
      (v13)(v65, v140);
      v150._countAndFlagsBits = 0xD000000000000020;
      v150._object = 0x8000000000189310;
      sub_16A744(v150);
      v151._countAndFlagsBits = sub_16AE24();
      sub_16A744(v151);

      v152._countAndFlagsBits = 0x7463657269440A2ELL;
      v152._object = 0xED0000203A6E6F69;
      sub_16A744(v152);
      if (v141 == 3)
      {
        v69._countAndFlagsBits = 0x72656D726177;
      }

      else
      {
        v69._countAndFlagsBits = 0x7265646C6F63;
      }

      v69._object = 0xE600000000000000;
      sub_16A744(v69);

      v153._object = 0x8000000000189340;
      v153._countAndFlagsBits = 0xD000000000000019;
      sub_16A744(v153);
      sub_B358C();
      sub_16A904();
      v71 = v145;
      v70 = v146;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v72 = sub_16A584();
      sub_9DA0(v72, qword_1E65C0);
      sub_16A9A4();
      v12 = 0xD00000000000003FLL;
      sub_B3574();
      v136 = 0x80000000001891C0;
      v137 = 0x8000000000189120;
      sub_B3530();
      sub_386D8(v73, v74, v75, v76, v77, 0x80000000001891C0, 47, v71, v70);

      v135(v24, v68);
      goto LABEL_42;
    }

    (*(v13 + 8))(v24, v12);
  }

  if (v141 == 3)
  {
    v78 = 1.0;
    goto LABEL_39;
  }

  if (v141 == 1)
  {
    v78 = -1.0;
LABEL_39:
    v79 = [v4 targetTemperature];
    sub_55158();
    v80 = v143;
    sub_1682E4();

    sub_168314();
    v82 = v81;
    v83 = (*(v13 + 8))(v80, v12);
    v84 = sub_B35B8(v83, "targetTemperatureRange");
    *&v85 = v82 + v78;
    [v84 valueRoundedToNearestStepValue:v85];

    sub_B34FC();
    sub_16ACF4(80);
    sub_B3580();
    v154._countAndFlagsBits = 0xD00000000000004ELL;
    v154._object = 0x8000000000189240;
    sub_16A744(v154);
    sub_B358C();
    sub_16A904();
    v87 = v145;
    v86 = v146;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v88 = sub_16A584();
    sub_9DA0(v88, qword_1E65C0);
    sub_16A9A4();
    v12 = 0xD00000000000003FLL;
    v136 = 0x80000000001891C0;
    v137 = 0x8000000000189120;
    sub_B3530();
    sub_386D8(v89, v90, v91, v92, v93, 0x80000000001891C0, 53, v87, v86);

    goto LABEL_42;
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v125 = sub_16A584();
  sub_9DA0(v125, qword_1E65C0);
  sub_16A9A4();
  sub_B3530();
  sub_386D8(v126, v127, v128, v129, v130, v131, 55, v132, 0x8000000000189200);
  v33 = sub_B355C();
  return sub_5370(v33, v34, v35, v36);
}

uint64_t sub_B32E4()
{
  v1 = [v0 vehicleLayoutKey];
  v2 = sub_16A664();

  return v2;
}

uint64_t sub_B3384()
{
  if ([v0 targetTemperatureDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 targetTemperatureInvalid] ^ 1;
  }
}

uint64_t sub_B33F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_37130(&qword_1E76A0, &qword_172B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B3440(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA188, &qword_173F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B34B0(unint64_t *a1)
{

  return sub_B33F0(a1);
}

void sub_B3580()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t sub_B3598()
{

  return sub_16A904();
}

id sub_B35B8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_B35D0()
{
  result = [objc_allocWithZone(type metadata accessor for CarKeySessionManager()) init];
  qword_1F0C20 = result;
  return result;
}

uint64_t sub_B3600(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate;
  swift_beginAccess();
  sub_B4EE8(a1, v1 + v3, &qword_1EA1E0, &qword_173FE0);
  return swift_endAccess();
}

uint64_t sub_B36D0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_B36F0, 0, 0);
}

uint64_t sub_B36F0()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_5758(&qword_1EA200, &qword_173FF0);
  *v4 = v0;
  v4[1] = sub_B37F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001BLL, 0x8000000000189600, sub_B4D38, v2, v5);
}

uint64_t sub_B37F8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_B3910, 0, 0);
}

uint64_t sub_B3910()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v2 + 32) = *(v0 + 48);
  *v2 = v3;
  *(v2 + 16) = v4;
  return (*(v0 + 8))(v1);
}

void sub_B3938(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA208, &qword_173FF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  aBlock[4] = sub_B4E18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B4F50;
  aBlock[3] = &unk_1D7140;
  v11 = _Block_copy(aBlock);

  v12 = [v7 startDigitalCarKeySessionWithOptions:0 startCallback:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_B3B5C(void *a1, uint64_t a2)
{
  if (a2)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_16ACF4(95);
    v32._countAndFlagsBits = 0xD000000000000036;
    v32._object = 0x8000000000189650;
    sub_16A744(v32);
    v31 = a2;
    swift_errorRetain();
    sub_5758(qword_1EA220, &qword_1708D8);
    v33._countAndFlagsBits = sub_16A694();
    sub_16A744(v33);

    v34._countAndFlagsBits = 0xD000000000000027;
    v34._object = 0x8000000000189690;
    sub_16A744(v34);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    v4 = sub_16A9A4();
    sub_386D8(v4, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD00000000000001BLL, 0x8000000000189600, 20, v27, *(&v27 + 1));

    sub_3CC14();
    v5 = swift_allocError();
    *v6 = xmmword_16E2A0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = v5;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (a1)
      {
        v10 = sub_16484(0, &qword_1EA218, SESDCKSession_ptr);
        v11 = &off_1D7070;
        v12 = a1;
      }

      else
      {
        v12 = 0;
        v10 = 0;
        v11 = 0;
        *(&v27 + 1) = 0;
        *&v28 = 0;
      }

      *&v27 = v12;
      *(&v28 + 1) = v10;
      v29 = v11;
      v13 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_activeSession;
      swift_beginAccess();
      v14 = a1;
      sub_B4EE8(&v27, v9 + v13, &qword_1EA210, &unk_1708E0);
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v18 = sub_B3670();
      if (*(v17 + 24))
      {
        v19 = v17;
        swift_beginAccess();
        v20 = swift_unknownObjectWeakLoadStrong();
        v21 = *(v19 + 24);
        v22 = *(v19 + 32);
        sub_2F8D0(v19, v21);
        (*(v22 + 16))(v20, v21, v22);
      }

      (v18)(&v27, 0);
    }

    if (a1)
    {
      v23 = sub_16484(0, &qword_1EA218, SESDCKSession_ptr);
      v24 = &off_1D7070;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v27 = a1;
    *&v28 = 0;
    *(&v28 + 1) = v23;
    v29 = v24;
    v30 = 0;
    v25 = a1;
  }

  sub_5758(&qword_1EA208, &qword_173FF8);
  return sub_16A864();
}

id sub_B3EEC()
{
  v7 = 0;
  v0 = [objc_opt_self() getVehicleReports:&v7];
  v1 = v7;
  if (v0)
  {
    v2 = v0;
    sub_16484(0, &qword_1EA1F0, SESVehicleReport_ptr);
    v3 = sub_16A5B4();
    v4 = v1;

    v1 = sub_B3FFC(v3);
  }

  else
  {
    v5 = v7;
    sub_168394();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_B3FFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1EA1F8, &qword_173FE8);
    v2 = sub_16ADD4();
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

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    v27 = sub_16484(0, &qword_1EA1F0, SESVehicleReport_ptr);
    v28 = &off_1D6C28;
    *&v26 = v15;
    sub_D250(&v26, v30);
    sub_D250(v30, v31);
    sub_D250(v31, &v29);

    v16 = v15;
    result = sub_146404(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      v20 = v19[1];
      *v19 = v14;
      v19[1] = v13;

      v21 = (v2[7] + 40 * v17);
      sub_D13C(v21);
      result = sub_D250(&v29, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v14;
      v22[1] = v13;
      result = sub_D250(&v29, v2[7] + 40 * result);
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_B424C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  sub_16ACF4(43);

  v19[1] = 0x80000000001895E0;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  sub_16A744(v20);
  v21._countAndFlagsBits = 0x4974656C70706120;
  v21._object = 0xEB00000000203A44;
  sub_16A744(v21);
  v22._countAndFlagsBits = a3;
  v22._object = a4;
  sub_16A744(v22);
  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD000000000000020, 0x80000000001895B0, 37, 0xD00000000000001CLL, 0x80000000001895E0);

  v11 = objc_opt_self();
  v12 = sub_16A644();
  v13 = sub_16A644();
  v19[0] = 0;
  v14 = [v11 requestAssertionForKeyID:v12 withAppletID:v13 withOptions:0 error:v19];

  v15 = v19[0];
  if (v14)
  {
    a5[3] = sub_16484(0, &qword_1EA1E8, SESAssertion_ptr);
    a5[4] = &off_1D70A8;
    *a5 = v14;
    return v15;
  }

  else
  {
    v17 = v19[0];
    sub_168394();

    return swift_willThrow();
  }
}

id sub_B44C4()
{
  v1 = &v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_activeSession];
  v3 = type metadata accessor for CarKeySessionManager();
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_B4554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarKeySessionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B460C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4D714;

  return sub_B36D0(a1);
}

uint64_t sub_B46D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  strcpy(v17, "xpcEventName");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_16AC84();
  sub_13F658(v18, a2, v15);
  sub_472B0(v18);
  if (!v16)
  {
    v8 = &qword_1E6A10;
    v9 = &unk_1744D0;
    v10 = v15;
    return sub_109A0(v10, v8, v9);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v17[0] == 0xD00000000000003CLL && 0x8000000000189480 == v17[1])
  {
  }

  else
  {
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD000000000000014, 0x8000000000189550, 45, 0xD000000000000031, 0x8000000000189570);
  v13 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate;
  swift_beginAccess();
  sub_B4CB8(v3 + v13, v18);
  if (!v19)
  {
    v8 = &qword_1EA1E0;
    v9 = &qword_173FE0;
    v10 = v18;
    return sub_109A0(v10, v8, v9);
  }

  sub_10824(v18, v15);
  sub_109A0(v18, &qword_1EA1E0, &qword_173FE0);
  v14 = *sub_D084(v15, v16);
  sub_3C80C();
  return sub_D13C(v15);
}

uint64_t sub_B49D0(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_B4A3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1683C4().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_B4F50;
  v14[3] = &unk_1D7168;
  v12 = _Block_copy(v14);

  [v6 sendRKEFunction:a1 action:a2 authorization:isa completion:v12];
  _Block_release(v12);
}

void sub_B4B34(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_B4BE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 setActiveKey:v3];

  return v4;
}

uint64_t sub_B4CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4D40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4D78()
{
  v1 = sub_5758(&qword_1EA208, &qword_173FF8);
  sub_10AFC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_B4E18(void *a1, uint64_t a2)
{
  v5 = *(sub_5758(&qword_1EA208, &qword_173FF8) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_B3B5C(a1, a2);
}

uint64_t sub_B4ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B4EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  sub_10AFC(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_B4FB4()
{
  v75 = *v0;
  v74 = type metadata accessor for CarCommandsError();
  v1 = sub_10AFC(v74);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  v6 = (v5 - v4);
  v72 = sub_1693E4();
  v7 = sub_9F48(v72);
  v71 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v70 = (v12 - v11);
  v13 = sub_168FE4();
  v14 = sub_9F48(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_A138();
  v21 = v20 - v19;
  v73 = v0;
  v22 = v0[22];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v23 = sub_16A584();
  sub_9DA0(v23, qword_1E65C0);
  v24 = sub_16A9A4();
  v80 = 0xD000000000000082;
  v81 = 0x8000000000189700;
  *&v77 = 47;
  *(&v77 + 1) = 0xE100000000000000;
  sub_D030();
  v25 = sub_16AB34();
  v26 = sub_15AE4(v25);
  v28 = v27;

  if (v28)
  {
    v84._countAndFlagsBits = 32;
    v84._object = 0xE100000000000000;
    sub_16A744(v84);
    v85._countAndFlagsBits = 0xD000000000000020;
    v85._object = 0x8000000000189940;
    sub_16A744(v85);
    v29 = v26;
    v30 = v28;
  }

  else
  {
    v29 = 0xD000000000000020;
    v30 = 0x8000000000189940;
  }

  v80 = v29;
  v81 = v30;
  *&v77 = 58;
  *(&v77 + 1) = 0xE100000000000000;
  v76[0] = 24;
  v86._countAndFlagsBits = sub_16AE24();
  sub_16A744(v86);

  v87._countAndFlagsBits = 58;
  v87._object = 0xE100000000000000;
  sub_16A744(v87);

  v31._countAndFlagsBits = sub_378D0(v22);
  if (v31._object)
  {
    *&v77 = 32;
    *(&v77 + 1) = 0xE100000000000000;
    sub_16A744(v31);

    v88._countAndFlagsBits = 32;
    v88._object = 0xE100000000000000;
    sub_16A744(v88);
  }

  v33 = v80;
  v32 = v81;
  v34 = sub_16A574();
  if (os_log_type_enabled(v34, v24))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v77 = v36;
    *v35 = 136315138;
    v37 = sub_15BC8(v33, v32, &v77);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_0, v34, v24, "%s", v35, 0xCu);
    sub_D13C(v36);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v38 = *(v75 + 416);
  sub_169274();
  v39 = sub_169244();
  sub_169264();
  v40 = sub_168FD4();
  v42 = v41;
  v43 = *(v16 + 8);
  v43(v21, v13);
  if (sub_D95F4(v39, v40, v42) > 0xF7u)
  {
    sub_169264();
    v44 = sub_168FD4();
    v46 = v45;
    v43(v21, v13);
    *v6 = v44;
    v6[1] = v46;
    sub_B75E4();
    swift_storeEnumTagMultiPayload();
    v47 = v73[22];
    sub_11D28();
    sub_5A144();
    sub_548D0(v6, v48);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v49 = sub_B7590();
    v56 = 28;
LABEL_22:
    sub_386D8(v49, v50, v51, v52, v53, v54, v56, v55, v69);

    sub_168C74();
    sub_B75CC();
    return sub_B7534(v6, v67);
  }

  sub_169384();
  sub_86E4(v70, &_swiftEmptySetSingleton, v76);
  (*(v71 + 8))(v70, v72);
  if (!v76[3])
  {
    sub_109A0(v76, &qword_1E5F80, &unk_16E7E0);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    goto LABEL_21;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    goto LABEL_21;
  }

  if (!*(&v78 + 1))
  {
LABEL_21:
    sub_109A0(&v77, &qword_1E5F88, &unk_16D410);
    sub_169384();
    sub_B75E4();
    swift_storeEnumTagMultiPayload();
    v65 = v73[22];
    sub_11D28();
    sub_5A144();
    sub_548D0(v6, v66);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v49 = sub_B7590();
    v56 = 34;
    goto LABEL_22;
  }

  sub_D124(&v77, &v80);
  v57 = v83;
  sub_D084(&v80, v82);
  v58 = *(v57 + 24);
  v59 = sub_67C60();
  if (v60(v59, v57) & 1) != 0 || (v61 = v83, sub_D084(&v80, v82), v62 = *(v61 + 40), v63 = sub_67C60(), (v64(v63, v61)))
  {
    sub_168C54();
  }

  else
  {
    sub_168C64();
  }

  return sub_D13C(&v80);
}

uint64_t sub_B5708()
{
  sub_D2DC();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[8] = *v0;
  v5 = sub_1693E4();
  v1[9] = v5;
  sub_10AEC(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = sub_D3C8();
  v9 = sub_168FE4();
  v1[12] = v9;
  sub_10AEC(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_B5828()
{
  v37 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[6];
  v6 = *(v0[8] + 416);
  sub_169274();
  v7 = sub_169244();
  sub_169264();
  v8 = sub_168FD4();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  v32 = v4;
  v34 = *(v4 + 176);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_16ACF4(40);
  v39._countAndFlagsBits = 0xD000000000000011;
  v39._object = 0x80000000001898E0;
  sub_16A744(v39);
  v0[2] = v7;
  swift_getWitnessTable();
  sub_16AE44();
  v40._countAndFlagsBits = 0xD000000000000013;
  v40._object = 0x8000000000189900;
  sub_16A744(v40);
  v41._countAndFlagsBits = v8;
  v41._object = v10;
  sub_16A744(v41);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, v34, 0xD000000000000082, 0x8000000000189700, 0xD000000000000028, 0x80000000001898B0, 49, v35, v36);

  v13 = v7;

  v14 = sub_D95F4(v13, v8, v10);
  if (v14 <= 0xF7u)
  {
    v19 = v14;
    v21 = v0[10];
    v20 = v0[11];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[5];
    v30 = v0[4];
    v31 = v0[14];

    sub_169384();
    v25 = *(v23 + 432);
    v26 = (*(v25 + 8))(v20, v19, v6, v25);
    (*(v21 + 8))(v20, v22);
    v33 = *(v32 + 176);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_16ACF4(18);
    v42._countAndFlagsBits = 0xD000000000000010;
    v42._object = 0x8000000000189920;
    sub_16A744(v42);
    v0[3] = v26;
    sub_16AE44();
    v27 = sub_16A9A4();
    sub_386D8(v27, v33, 0xD000000000000082, 0x8000000000189700, 0xD000000000000028, 0x80000000001898B0, 57, v35, v36);

    (*(v25 + 24))(&v35, v19, v6, v25);
    sub_168EB4();

    v28 = sub_168EC4();
    sub_5370(v30, 0, 1, v28);

    sub_D37C();
  }

  else
  {
    v15 = v0[14];
    v16 = v0[11];
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    *v17 = v8;
    v17[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
  }

  return v18();
}