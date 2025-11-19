uint64_t sub_59B50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2A0;

  return sub_56C24(a1);
}

uint64_t sub_59BEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SendAnnouncementFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_59C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = sub_8B6BC();
  v11 = sub_65E4(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_16854();
  v18 = type metadata accessor for SharedGlobals();
  v19 = &off_BB508;
  v14 = sub_E5DC(&v17);
  sub_E63C(a2, v14);
  v15 = *a5;
  sub_8B68C();
  sub_8BC3C();
  *(a4 + 64) = a1;
  sub_E510(&v17, a4 + 16);
  *(a4 + 56) = a3;
  return a4;
}

uint64_t sub_59D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v23 = type metadata accessor for SharedGlobals();
  v24 = &off_BB508;
  v11 = sub_E5DC(v22);
  sub_E63C(a2, v11);
  v12 = a4(0);
  v13 = sub_E824(v12);
  sub_E58C(v22, v23);
  sub_E6E8();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v18 = sub_5A094(v17);
  v19(v18);
  v20 = sub_59C30(a1, v5, a3, v13, a5);
  sub_2714(v22);
  return v20;
}

uint64_t sub_59E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_4BBA4(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_59EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C27B0, &unk_934E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_59F24(uint64_t a1)
{
  v2 = sub_2664(&qword_C27B0, &unk_934E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_59F8C()
{
  result = qword_C27C8;
  if (!qword_C27C8)
  {
    sub_B9BC(&qword_C27C0, &qword_92948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C27C8);
  }

  return result;
}

uint64_t sub_5A000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5A058()
{

  return sub_3364(v1, 1, v0);
}

uint64_t sub_5A0A8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

BOOL sub_5A0D4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_8C7FC() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

double sub_5A1A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_71C64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1412C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_5A20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_71C64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_5A264(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_71CDC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_5A2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_71C64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_5A304(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
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
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
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
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
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
        result = sub_8D2BC();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
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

  v7 = sub_5C974(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_5A5FC()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_E7DC(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v0, "#SendAnnouncementFlowStrategy.actionForInput() handling", v4, 2u);
    sub_E890();
  }

  return sub_8B75C();
}

uint64_t sub_5A6C0()
{
  sub_6608();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_2664(&qword_C28C8, &qword_92B00) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v4 = sub_8C7FC();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_5A7B4, 0, 0);
}

void sub_5A7B4()
{
  v131 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v2 = sub_33F4(v1, qword_C3DF8);
  v0[13] = v2;
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_125A0(v4))
  {
    v5 = sub_E8E0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementFlowStrategy makeIntentFromParse() called", v5, 2u);
    sub_E890();
  }

  v6 = v0[7];

  v7 = v0[7];
  if (v6)
  {
    v8 = v0[7];
  }

  else
  {
    v8 = [objc_allocWithZone(INSendAnnouncementIntent) init];
  }

  v0[14] = v8;
  v9 = v0[8];
  v10 = v9[10];
  v11 = v9[11];
  sub_5D528();
  v12 = *(v11 + 16);
  v13 = v7;
  if (v12(v10, v11) == 1)
  {
    v14 = v0[8];
    v15 = v8;
    sub_5B630(v15);
  }

  sub_36598();
  v16 = v9[10];
  v17 = v9[11];
  sub_622C(v9 + 7, v16);
  v18 = (*(v17 + 112))(v16, v17);
  v19 = v9[10];
  v20 = v9[11];
  sub_622C(v9 + 7, v19);
  v21 = (*(v20 + 96))(v19, v20);
  v22 = v9[10];
  v23 = v9[11];
  sub_622C(v9 + 7, v22);
  v24 = (*(v23 + 104))(v22, v23);
  v25 = sub_2C2A4(v18, v21, v24);

  if (sub_2D3B4(v25))
  {
    v26 = v8;
    isa = sub_8D03C().super.isa;

    v28 = sub_8CEAC();
    [v26 setValue:isa forKey:v28];
  }

  else
  {
  }

  v29 = v9[10];
  v30 = v9[11];
  sub_5D528();
  v31 = (*(v30 + 120))(v29, v30);
  v129 = v8;
  if (v32 & 1) != 0 || (v33 = v31, v34 = v9[10], v35 = v9[11], sub_5D528(), v36 = (*(v35 + 128))(v34, v35), (v37))
  {
    sub_5D49C();
    v38 = v2[11];
    sub_622C(v2 + 7, v2[10]);
    v39 = sub_5D484();
    v41 = v40(v39);
    v42 = sub_1D6AC(v41);
    v43 = [v42 _className];

    sub_8CEDC();

    LOBYTE(v130) = 0;
    sub_5D3F0();
    sub_5D508();

    v44 = sub_8CCEC();
    v45 = sub_8D11C();
    if (sub_125A0(v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v130 = v47;
      *v46 = 136315138;
      v48 = v8;
      v49 = [v48 description];
      v50 = sub_8CEDC();
      v52 = v51;

      v53 = sub_862D8(v50, v52, &v130);

      *(v46 + 4) = v53;
      sub_5D4E8(&dword_0, v54, v55, "#SendAnnouncementFlowStrategy Finished creating intent from parse: %s");
      sub_2714(v47);
      sub_5D434();
      sub_E890();
    }

    else
    {
    }

    v56 = v0[12];
    v57 = v0[9];

    sub_5D4DC();

    v58(v8);
    return;
  }

  v59 = v36;
  v60 = sub_8CCEC();
  v61 = sub_8D11C();
  if (sub_E7DC(v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134218240;
    *(v62 + 4) = v33;
    *(v62 + 12) = 2048;
    *(v62 + 14) = v59;
    sub_5D450();
    _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
    sub_5D434();
  }

  sub_8C7CC();
  if (sub_8C7BC())
  {
    v127 = v59;
    v68 = v0[11];
    v69 = v0[12];
    v70 = v0[10];
    sub_8C7AC();

    sub_8CB4C();
    sub_2664(&qword_C28D0, qword_92B08);
    v71 = *(v68 + 72);
    v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_8FAD0;
    v74 = v73 + v72;
    v75 = *(v68 + 104);
    v75(v74, enum case for InputOrigin.voiceTrigger(_:), v70);
    v75(v74 + v71, enum case for InputOrigin.bluetoothVoiceTrigger(_:), v70);
    v76 = swift_task_alloc();
    *(v76 + 16) = v69;
    LOBYTE(v74) = sub_5A0D4(sub_5C43C, v76, v73);
    swift_setDeallocating();
    sub_5C2C8();

    (*(v68 + 8))(v69, v70);
    if (v74)
    {
      v77 = sub_8CCEC();
      v78 = sub_8D11C();
      v8 = v129;
      if (sub_E7DC(v78))
      {
        *sub_E8E0() = 0;
        sub_5D450();
        _os_log_impl(v79, v80, v81, v82, v83, 2u);
        sub_5D434();
      }

      v84 = sub_8CB5C();
      if (v84)
      {
        v85 = v84;
        v86 = sub_5A20C(0xD000000000000013, 0x8000000000097F60, v84);
        if (v87)
        {
          v88 = v86;
          v89 = v87;
          v126 = sub_5A20C(0xD000000000000012, 0x8000000000097F80, v85);
          v91 = v90;

          if (!v91 || (v92 = sub_5A304(v88, v89), (v93 & 1) != 0))
          {

LABEL_39:

            v8 = v129;
            goto LABEL_40;
          }

          v110 = v92;
          v111 = sub_5A304(v126, v91);
          if (v112)
          {
            goto LABEL_39;
          }

          v113 = v111;
          v114 = sub_8CCEC();
          v115 = sub_8D11C();
          if (sub_125A0(v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 134218240;
            *(v116 + 4) = v110;
            *(v116 + 12) = 2048;
            *(v116 + 14) = v113;
            _os_log_impl(&dword_0, v114, v115, "#SendAnnouncementFlowStrategy extraSamplesAtStart from CoreSpeech: %llu at hardwareSampleRate: %llu", v116, 0x16u);
            sub_E890();
          }

          if (is_mul_ok(v110, 0x3E8uLL))
          {
            v8 = v129;
            if (v113)
            {
              v117 = 1000 * v110 / v113;
              if (!__CFADD__(v33, v117))
              {
                v118 = __CFADD__(v127, v117);
                v128 = v127 + v117;
                if (!v118)
                {
                  v94 = sub_8CCEC();
                  v119 = sub_8D11C();
                  if (!sub_E7DC(v119))
                  {

                    goto LABEL_40;
                  }

                  v120 = swift_slowAlloc();
                  *v120 = 134218496;
                  *(v120 + 4) = v117;
                  *(v120 + 12) = 2048;
                  *(v120 + 14) = v33 + v117;
                  *(v120 + 22) = 2048;
                  *(v120 + 24) = v128;
                  sub_5D450();
                  _os_log_impl(v121, v122, v123, v124, v125, 0x20u);
                  sub_5D434();

                  goto LABEL_35;
                }

LABEL_59:
                __break(1u);
                return;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_58;
        }
      }

      goto LABEL_40;
    }

    v8 = v129;
  }

  v94 = sub_8CCEC();
  v95 = sub_8D11C();
  if (sub_E7DC(v95))
  {
    *sub_E8E0() = 0;
    sub_5D450();
    _os_log_impl(v96, v97, v98, v99, v100, 2u);
    sub_5D434();
  }

LABEL_35:

LABEL_40:
  v101 = v9[10];
  v102 = v9[11];
  sub_5D528();
  v103 = *(v102 + 152);
  v8;
  v103(v101, v102);
  v0[15] = v104;
  sub_8B5AC();
  if (sub_8C7BC())
  {
    v105 = v0[9];
    sub_8C7AC();

    sub_8CB4C();

    v106 = 0;
  }

  else
  {
    v106 = 1;
  }

  v107 = v0[8];
  sub_6270(v0[9], v106, 1, v0[10]);
  v108 = swift_task_alloc();
  v0[16] = v108;
  *v108 = v0;
  v108[1] = sub_5B21C;
  v109 = v0[9];

  sub_60C94();
}

uint64_t sub_5B21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  v7 = v4[16];
  v8 = v4[15];
  *v6 = *v2;
  v5[17] = v1;

  v9 = v4[14];
  v10 = v4[9];
  if (v1)
  {

    sub_5C340(v10);
    sub_2714(v5 + 2);
    v11 = sub_5B5B8;
  }

  else
  {

    v5[18] = a1;

    sub_5C340(v10);
    sub_2714(v5 + 2);
    v11 = sub_5B3BC;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_5B3BC()
{
  v26 = v0;

  v24 = *(v0 + 144);
  sub_5D49C();
  v2 = v1[11];
  sub_622C(v1 + 7, v1[10]);
  v3 = sub_5D484();
  v5 = v4(v3);
  v6 = sub_1D6AC(v5);
  v7 = [v6 _className];

  sub_8CEDC();

  sub_5D3F0();
  sub_5D508();

  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  if (sub_125A0(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = v24;
    v13 = [v12 description];
    v14 = sub_8CEDC();
    v16 = v15;

    v17 = sub_862D8(v14, v16, &v25);

    *(v10 + 4) = v17;
    sub_5D4E8(&dword_0, v18, v19, "#SendAnnouncementFlowStrategy Finished creating intent from parse: %s");
    sub_2714(v11);
    sub_5D434();
    sub_E890();
  }

  else
  {
  }

  v20 = *(v0 + 96);
  v21 = *(v0 + 72);

  sub_5D4DC();

  return v22(v24);
}

uint64_t sub_5B5B8()
{
  sub_6608();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3();
}

id sub_5B630(void *a1)
{
  v2 = v1;
  v4 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (sub_125A0(v10))
  {
    v11 = sub_E8E0();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#SendAnnouncementFlowStrategy setting reply and announcement ID", v11, 2u);
    sub_5D434();
  }

  isa = sub_8D09C().super.super.isa;
  v13 = sub_8CEAC();
  [a1 setValue:isa forKey:v13];

  v14 = sub_8AF9C();
  sub_6270(v7, 1, 1, v14);
  v15 = v2[10];
  v16 = v2[11];
  sub_622C(v2 + 7, v15);
  v17 = (*(v16 + 136))(v15, v16);
  v19 = v18;
  v20 = objc_allocWithZone(INAnnouncement);
  v21 = sub_64758(v7, v17, v19, 0, 0);
  v22 = sub_8CEAC();
  [a1 setValue:v21 forKey:v22];

  v23 = a1;
  return v23;
}

uint64_t sub_5B8A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5B93C;

  return sub_5A6C0();
}

uint64_t sub_5B93C()
{
  sub_6608();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  sub_5D4DC();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_5BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_5BA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D3D0;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_5BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_5BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_5BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v11 = v5;
  v11[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_5BDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_5BE7C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_5BE7C()
{
  sub_6608();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_E6F8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_5BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v13 = v6;
  v13[1] = sub_5D3D0;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_5C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v9 = v4;
  v9[1] = sub_5C104;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t sub_5C104()
{
  sub_6608();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_5D4DC();

  return v6(v2);
}

uint64_t sub_5C2C8()
{
  v1 = *(*(sub_8C7FC() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_5C340(uint64_t a1)
{
  v2 = sub_2664(&qword_C28C8, &qword_92B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5C3A8()
{
  sub_8C7FC();
  sub_5D388(&qword_C28D8, 255, &type metadata accessor for InputOrigin);
  return sub_8CE9C() & 1;
}

unsigned __int8 *sub_5C45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_8CFFC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_5CEFC();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_8D2BC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_5D46C();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_5D460();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_5D46C();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_5D460();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_5D3D4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_5D460();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_5D3D4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_5D460();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_5D3D4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_5D460();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unsigned __int8 *sub_5C974(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_8CFFC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_5CEFC();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_8D2BC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
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

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_5CEFC()
{
  v0 = sub_5CF68();
  v4 = sub_5CF9C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_5CF9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_8CF3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_8D1EC();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_866E0(v9, 0);
  v12 = sub_5D0FC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_8CF3C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_8D2BC();
LABEL_4:

  return sub_8CF3C();
}

unint64_t sub_5D0FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_5D30C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_8CFBC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_8D2BC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_5D30C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_8CF9C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_5D30C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_8CFCC();
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
    v5 = sub_8CFAC();
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

uint64_t sub_5D388(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_5D3F0()
{

  return sub_8B58C();
}

uint64_t sub_5D434()
{
}

uint64_t sub_5D49C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = v2[16];
  sub_622C(v2 + 12, v2[15]);

  return sub_8B59C();
}

void sub_5D4E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_5D508()
{

  return sub_8B40C();
}

void *sub_5D528()
{

  return sub_622C((v0 + 56), v1);
}

uint64_t sub_5D55C()
{
  v1 = v0;
  v2 = sub_8AF9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664(&qword_BFF28, &unk_8EFD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v24 - v9;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_8D25C(151);
  v27._countAndFlagsBits = 0xD00000000000002CLL;
  v27._object = 0x8000000000097FA0;
  sub_8CF7C(v27);
  v11 = *v0;
  sub_8CB1C();
  if (sub_3364(v10, 1, v2))
  {
    sub_1382C(v10);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_1382C(v10);
    v12 = sub_8AF3C();
    v13 = v14;
    (*(v3 + 8))(v6, v2);
  }

  v24[0] = v12;
  v24[1] = v13;
  sub_2664(&qword_C1A08, &unk_92B40);
  v28._countAndFlagsBits = sub_8CEEC();
  sub_5DAD0(v28);

  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v29._object = 0x8000000000097FD0;
  sub_8CF7C(v29);
  v15 = v1[1];
  sub_8CB1C();
  v30._countAndFlagsBits = sub_5DAA4();
  sub_5DAD0(v30);

  v31._countAndFlagsBits = sub_5DAC4() | 0x5273692000000000;
  v31._object = 0xED00003D796C7065;
  sub_8CF7C(v31);
  v16 = v1[2];
  sub_8CB1C();
  if (LOBYTE(v24[0]))
  {
    v17._countAndFlagsBits = 1702195828;
  }

  else
  {
    v17._countAndFlagsBits = 0x65736C6166;
  }

  if (LOBYTE(v24[0]))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v17._object = v18;
  sub_8CF7C(v17);

  v32._countAndFlagsBits = sub_5DAC4() | 0x6D6F682000000000;
  v32._object = 0xEA00000000003D65;
  sub_8CF7C(v32);
  v19 = v1[3];
  sub_8CB1C();
  v33._countAndFlagsBits = sub_5DAA4();
  sub_5DAD0(v33);

  v34._countAndFlagsBits = sub_5DAC4() | 0x6F6F722000000000;
  v34._object = 0xEB000000003D736DLL;
  sub_8CF7C(v34);
  v20 = v1[4];
  sub_8CB1C();
  sub_2664(&qword_C1A10, &qword_910E0);
  v35._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v35);

  v36._countAndFlagsBits = sub_5DAC4() | 0x6E6F7A2000000000;
  v36._object = 0xEB000000003D7365;
  sub_8CF7C(v36);
  v21 = v1[5];
  sub_8CB1C();
  v37._countAndFlagsBits = sub_8CEEC();
  sub_5DAD0(v37);

  v38._object = 0x8000000000097FF0;
  v38._countAndFlagsBits = 0xD000000000000012;
  sub_8CF7C(v38);
  v22 = v1[6];
  sub_8CB1C();
  v39._countAndFlagsBits = sub_5DAA4();
  sub_8CF7C(v39);

  v40._countAndFlagsBits = 10506;
  v40._object = 0xE200000000000000;
  sub_8CF7C(v40);
  return v25;
}

__n128 sub_5D918(uint64_t a1, uint64_t a2)
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

uint64_t sub_5D934(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5D974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5D9D4()
{
  result = qword_C28E0;
  if (!qword_C28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C28E0);
  }

  return result;
}

unint64_t sub_5DA28(uint64_t a1)
{
  result = sub_5DA50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_5DA50()
{
  result = qword_C2900;
  if (!qword_C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2900);
  }

  return result;
}

uint64_t sub_5DAA4()
{
  *(v0 - 96) = *(v0 - 96);

  return sub_8CEEC();
}

void sub_5DAD0(Swift::String a1)
{

  sub_8CF7C(a1);
}

uint64_t sub_5DAE8()
{
  sub_6608();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = *(*(sub_8B6BC() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_8BCBC();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_5DBD0()
{
  sub_60C80();
  sub_4DFB4();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v0[13] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    *sub_E8E0() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#SendAnnouncementIntentHandledStrategy makeIntentHandledResponseAsync with response framework adoption");
    sub_E890();
  }

  v6 = v0[7];

  sub_2664(&qword_C2A00, &qword_92D78);
  v7 = sub_8BB6C();
  sub_2D438();
  v9 = v8;

  v10 = *(v9 + 16);

  v11 = sub_8BB8C();
  v12 = [v11 isReply];

  if (v12)
  {
    [v12 BOOLValue];
  }

  v13 = v0[7];
  v14 = *(v0[8] + 56);
  v15 = sub_8BB8C();
  v0[14] = sub_2CCA0();

  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  sub_443E0(v16);
  sub_60C6C();

  return sub_4C91C(v17, v18, v19);
}

uint64_t sub_5DDA8()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  sub_60C10();
  v7 = *(v6 + 120);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;
  v3[16] = v0;

  if (!v0)
  {
    v10 = v3[14];
  }

  sub_65B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_5DEAC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v21 = *(v0 + 56);
  sub_8B68C();
  *(swift_task_alloc() + 16) = vextq_s8(v21, v21, 8uLL);
  sub_8BC3C();

  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (sub_125A0(v5))
  {
    *sub_E8E0() = 0;
    sub_3D9B8(&dword_0, v6, v7, "#SendAnnouncementIntentHandledStrategy resetting context");
    sub_E890();
  }

  v8 = *(v0 + 24);
  v9 = *(v0 + 64);

  *(v0 + 136) = v8;
  v10 = sub_622C((v9 + 16), *(v9 + 40));
  v11 = *(v10 + *(type metadata accessor for SharedGlobals() + 40));

  sub_718EC();

  v12 = sub_8B8FC();
  sub_60BD8(v12);
  v13 = sub_8B8EC();
  *(v0 + 144) = v13;
  *(v0 + 40) = v13;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v14 = sub_44464();
  *(v0 + 152) = v14;
  *(v14 + 16) = xmmword_8E860;
  *(v14 + 32) = v8;
  v15 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v16 = v8;
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = sub_5E0A0;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v19, v14, v18, v9, &protocol witness table for ResponseFactory);
}

uint64_t sub_5E0A0()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_65B8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_5E1A4()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  (*(v3 + 8))(v2, v4);

  sub_65A0();
  sub_60C6C();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_5E240()
{
  sub_6608();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  sub_65A0();
  v5 = v0[16];

  return v4();
}

uint64_t sub_5E2B4()
{
  sub_8BC7C();
  sub_8BCAC();
  sub_600B8();
  return sub_8BC9C();
}

uint64_t sub_5E2F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_65B8();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_5E324()
{
  sub_152A0();
  v1 = v0[3];
  sub_2664(&qword_C2A00, &qword_92D78);
  v2 = sub_8BB6C();
  [v2 code];

  v3 = sub_8BB8C();
  v0[5] = sub_2CCA0();

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_5E41C;
  v5 = v0[4];
  v6 = v0[2];

  return sub_5E594();
}

uint64_t sub_5E41C()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    sub_65A0();

    return v13();
  }
}

uint64_t sub_5E538()
{
  sub_6608();
  v1 = *(v0 + 40);

  sub_65A0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_5E594()
{
  sub_6608();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v5 = type metadata accessor for HomeCommunicationError(0);
  v1[34] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5E624()
{
  v49 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponseAsync with response framework adoption", v4, 2u);
    sub_E890();
  }

  v5 = v0[31];

  switch(v5)
  {
    case 6:
      sub_60C48();
      v6 = swift_task_alloc();
      v0[37] = v6;
      *v6 = v0;
      sub_60C1C(v6);
      sub_60C54();

      return sub_4C618(v7);
    case 7:
      sub_60C48();
      v19 = swift_task_alloc();
      v0[38] = v19;
      *v19 = v0;
      sub_60C1C(v19);
      sub_60C54();

      return sub_4C500(v20);
    case 8:
      sub_60C48();
      v12 = swift_task_alloc();
      v0[36] = v12;
      *v12 = v0;
      sub_443E0(v12);
      sub_60C54();

      return sub_4C7D4();
    case 9:
      sub_60C48();
      v14 = swift_task_alloc();
      v0[40] = v14;
      *v14 = v0;
      sub_60C1C(v14);
      sub_60C54();

      return sub_4C208(v15);
    case 10:
      sub_60C48();
      v10 = swift_task_alloc();
      v0[39] = v10;
      *v10 = v0;
      sub_443E0(v10);
      sub_60C54();

      return sub_4C01C();
    case 11:
      sub_60C48();
      v22 = swift_task_alloc();
      v0[41] = v22;
      *v22 = v0;
      sub_443E0(v22);
      sub_60C54();

      return sub_4C45C();
    case 12:
      sub_60C48();
      v24 = swift_task_alloc();
      v0[42] = v24;
      *v24 = v0;
      sub_443E0(v24);
      sub_60C54();

      return sub_4C730();
    case 13:
      sub_60C48();
      v17 = swift_task_alloc();
      v0[43] = v17;
      *v17 = v0;
      sub_443E0(v17);
      sub_60C54();

      return sub_4C0C0();
    case 14:
      sub_60C48();
      v26 = swift_task_alloc();
      v0[44] = v26;
      *v26 = v0;
      sub_443E0(v26);
      sub_60C54();

      return sub_4C164();
    default:
      v28 = sub_8CCEC();
      v29 = sub_8D12C();
      if (!sub_125A0(v29))
      {
        goto LABEL_48;
      }

      v30 = v0[31];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      if (v30 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v33 = v0[31];
        if (v33 <= 0x7FFFFFFF)
        {
          v34 = v32;
          switch(v33)
          {
            case 1:
              v35 = @"RECIPIENTS_UNREACHABLE";
              goto LABEL_46;
            case 2:
              v35 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
              goto LABEL_46;
            case 3:
              v35 = @"SENDER_ANNOUNCEMENTS_DISABLED";
              goto LABEL_46;
            case 4:
              v35 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
              goto LABEL_46;
            case 5:
              v35 = @"NO_HOMEPOD";
              goto LABEL_46;
            case 6:
              v35 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
              goto LABEL_46;
            case 7:
              v35 = @"REMOTE_ACCESS_NOT_ALLOWED";
              goto LABEL_46;
            case 8:
              v35 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
              goto LABEL_46;
            case 9:
              v35 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_46:
              v36 = v35;
              break;
            default:
              v35 = [NSString stringWithFormat:@"(unknown: %i)", v0[31], v48];
              break;
          }

          v37 = v35;
          v38 = sub_8CEDC();
          v40 = v39;

          v41 = sub_862D8(v38, v40, &v48);

          *(v31 + 4) = v41;
          _os_log_impl(&dword_0, v28, v29, "#SendAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponse resulted in generic error code=%s", v31, 0xCu);
          sub_2714(v34);
          sub_E890();
          sub_E890();
LABEL_48:

          v42 = v0[34];
          v43 = v0[35];
          *v43 = v0[31];
          swift_storeEnumTagMultiPayload();
          sub_60B20(&qword_BFF38, type metadata accessor for HomeCommunicationError);
          swift_allocError();
          sub_15350(v44);
          sub_48464(v43);
          swift_willThrow();
          v45 = v0[35];

          sub_65A0();
          sub_60C54();

          __asm { BRAA            X1, X16 }
        }
      }

      __break(1u);
      JUMPOUT(0x5ED30);
  }
}

uint64_t sub_5ED78()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  sub_60C10();
  v7 = *(v6 + 288);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5EEA0()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 24);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5EF70()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  sub_60C10();
  v7 = *(v6 + 296);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5F098()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 48);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F168()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  sub_60C10();
  v7 = *(v6 + 304);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5F290()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 72);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F360()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  sub_60C10();
  v7 = *(v6 + 312);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5F488()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 96);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F558()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  sub_60C10();
  v7 = *(v6 + 320);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5F680()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 120);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F750()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  sub_60C10();
  v7 = *(v6 + 328);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5F878()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 144);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F948()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  sub_60C10();
  v7 = *(v6 + 336);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5FA70()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 168);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FB40()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[23] = v1;
  v3[24] = v5;
  v3[25] = v0;
  sub_60C10();
  v7 = *(v6 + 344);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5FC68()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 192);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FD38()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  sub_60C10();
  v7 = *(v6 + 352);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[35];

    sub_60BC8();

    return v11();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_5FE60()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 216);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v6 = sub_60C3C(v5);
  sub_60C30(v6, xmmword_8E860);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FF30()
{
  sub_6608();
  sub_E884();
  v2 = v1[48];
  v3 = v1[47];
  v4 = v1[46];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  sub_65B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_60050()
{
  sub_6608();
  v1 = *(v0 + 280);

  sub_65A0();

  return v2();
}

void *sub_600B8()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#SendAnnouncementIntentHandlerStrategy makePostHandleIntentCommands", v3, 2u);
    sub_E890();
  }

  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (sub_125A0(v5))
  {
    v6 = sub_E8E0();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#SendAnnouncementIntentHandlerStrategy Making a SAIntentGroupHandleIntent that contains INPlayAnnouncementSoundIntent.", v6, 2u);
    sub_E890();
  }

  v7 = [objc_allocWithZone(INPlayAnnouncementSoundIntent) initWithSoundType:1];
  sub_2664(&qword_C2A00, &qword_92D78);
  v8 = sub_8BB8C();
  v9 = [v8 _metadata];

  [v7 _setMetadata:v9];
  sub_4A528();
  sub_8BB7C();
  v10 = sub_8CA7C();
  v12 = v11;

  sub_349C(v7, v10, v12);
  sub_8D02C();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_8D06C();
  }

  sub_8D08C();

  return _swiftEmptyArrayStorage;
}

uint64_t *sub_60300()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37SendAnnouncementIntentHandledStrategy_completionOutputManifest;
  v4 = sub_8BCBC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_60378()
{
  sub_60300();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementIntentHandledStrategy()
{
  result = qword_C2938;
  if (!qword_C2938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_60424()
{
  result = sub_8BCBC();
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

uint64_t sub_604D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_60598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_60660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_60728()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_5DAE8();
}

uint64_t sub_607D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_6089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_60964(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_E2A0;

  return sub_5E2F4(a1, a2);
}

uint64_t sub_60A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementIntentHandledStrategy();
  *v9 = v4;
  v9[1] = sub_E0F4;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t sub_60B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_60B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_5E2B4();
}

uint64_t sub_60BB8(uint64_t result)
{
  *(v1 + 368) = result;
  *(v1 + 232) = result;
  return result;
}

uint64_t sub_60BC8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_60BD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_60BF4()
{
  v3 = *(v1 + 264);
  *(v1 + 360) = v0;

  return sub_8B8FC();
}

__n128 *sub_60C30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_60C94()
{
  sub_6608();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v9);
  v11 = *(v10 + 64);
  v0[13] = sub_E83C();
  v12 = sub_8C7FC();
  v0[14] = v12;
  sub_115AC(v12);
  v0[15] = v13;
  v15 = *(v14 + 64);
  v0[16] = sub_E83C();
  v16 = sub_2664(&qword_C2A40, &qword_92DB0);
  v0[17] = v16;
  sub_65E4(v16);
  v18 = *(v17 + 64);
  v0[18] = sub_E83C();
  v19 = sub_2664(&qword_C28C8, &qword_92B00);
  sub_65E4(v19);
  v21 = *(v20 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_60DE4()
{
  v49 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  (*(*(v0 + 120) + 104))(v1, enum case for InputOrigin.assistantTextInput(_:), v4);
  sub_6270(v1, 0, 1, v4);
  v6 = *(v3 + 48);
  sub_64AF4(v5, v2, &qword_C28C8, &qword_92B00);
  sub_64AF4(v1, v2 + v6, &qword_C28C8, &qword_92B00);
  if (sub_3364(v2, 1, v4) != 1)
  {
    v9 = *(v0 + 112);
    sub_64AF4(*(v0 + 144), *(v0 + 152), &qword_C28C8, &qword_92B00);
    v10 = sub_3364(v2 + v6, 1, v9);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    if (v10 != 1)
    {
      v24 = *(v0 + 144);
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      v27 = *(v0 + 112);
      v47 = *(v0 + 72);
      (*(v26 + 32))(v25, v2 + v6, v27);
      sub_65094(&qword_C28D8, &type metadata accessor for InputOrigin);
      v28 = sub_8CE9C();
      v29 = *(v26 + 8);
      v29(v25, v27);
      sub_1D05C(v12, &qword_C28C8, &qword_92B00);
      v29(v11, v27);
      sub_1D05C(v24, &qword_C28C8, &qword_92B00);
      if ((v28 & 1) != 0 && v47)
      {
        goto LABEL_13;
      }

LABEL_8:
      v18 = swift_task_alloc();
      *(v0 + 192) = v18;
      *v18 = v0;
      v18[1] = sub_61680;
      v19 = *(v0 + 80);
      v20 = *(v0 + 48);
      v21 = *(v0 + 56);
      sub_6614();

      return sub_636D0();
    }

    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    sub_1D05C(*(v0 + 160), &qword_C28C8, &qword_92B00);
    v15 = *(v14 + 8);
    v16 = sub_1D37C();
    v17(v16);
LABEL_7:
    sub_1D05C(*(v0 + 144), &qword_C2A40, &qword_92DB0);
    goto LABEL_8;
  }

  v7 = *(v0 + 112);
  sub_1D05C(*(v0 + 160), &qword_C28C8, &qword_92B00);
  if (sub_3364(v2 + v6, 1, v7) != 1)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 72);
  sub_1D05C(*(v0 + 144), &qword_C28C8, &qword_92B00);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_13:
  v30 = *(v0 + 72);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v31 = sub_8CD0C();
  *(v0 + 168) = sub_22B78(v31, qword_C3DF8);

  v32 = sub_8CCEC();
  v33 = sub_8D11C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 64);
    v35 = sub_1D358();
    v36 = sub_6630();
    v48 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_862D8(v34, v30, &v48);
    sub_65294();
    _os_log_impl(v37, v38, v39, v40, v35, 0xCu);
    sub_2714(v36);
    sub_65178();
    sub_5D434();
  }

  sub_622C(*(v0 + 96), *(*(v0 + 96) + 24));
  v41 = swift_task_alloc();
  *(v0 + 176) = v41;
  *v41 = v0;
  v41[1] = sub_6124C;
  v42 = *(v0 + 64);
  sub_6614();

  return sub_64C44(v43, v44, v45);
}

uint64_t sub_6124C()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 176);
  v7 = *v0;
  sub_65D8();
  *v8 = v7;
  *(v10 + 184) = v9;

  sub_65B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_61340()
{
  v43 = v0;
  if (*(v0 + 184))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = *(v0 + 168);
    v4 = sub_8CCEC();
    v5 = sub_8D11C();
    if (sub_125A0(v5))
    {
      *sub_E8E0() = 0;
      sub_3D9B8(&dword_0, v6, v7, "#SendAnnouncementIntentHelper failed to generate speech file");
      sub_E890();
    }
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v8 = sub_8CD0C();
  sub_22B78(v8, qword_C3DF8);

  v9 = sub_8CCEC();
  v10 = sub_8D11C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v11 = 136315138;
    v12 = sub_C834();
    v15 = sub_862D8(v12, v13, v14);

    *(v11 + 4) = v15;
    sub_652D8(&dword_0, v16, v17, "#SendAnnouncementIntentHelper extracted speech data URL is: %s");
    sub_651D4();
    sub_65178();
  }

  else
  {
  }

  v18 = *(v0 + 72);

  v19 = sub_8CCEC();
  v20 = sub_8D11C();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v23 = 136315138;
    v24 = v21 == 0;
    if (v21)
    {
      v25 = v22;
    }

    else
    {
      v25 = 7104878;
    }

    if (v24)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = v18;
    }

    v27 = sub_862D8(v25, v26, &v42);

    *(v23 + 4) = v27;
    sub_652F8(&dword_0, v28, v29, "#SendAnnouncementIntentHelper speech data transcription is: %s");
    sub_651D4();
    sub_65178();
  }

  v30 = *(v0 + 104);
  v31 = [*(v0 + 40) announcement];
  sub_C834();
  sub_8AF7C();

  if (v31)
  {
    sub_64A28(v31);
  }

  v32 = *(v0 + 104);
  v34 = *(v0 + 64);
  v33 = *(v0 + 72);
  v35 = *(v0 + 40);
  v36 = objc_allocWithZone(INAnnouncement);

  v37 = sub_65260();
  v38 = sub_6514C();
  [v35 setValue:v37 forKey:v38];

  sub_6523C();

  v39 = sub_65228();

  return v40(v39);
}

uint64_t sub_61680()
{
  sub_4DFB4();
  v3 = v2;
  v5 = v4;
  sub_E884();
  v7 = v6;
  sub_65D8();
  *v8 = v7;
  v10 = *(v9 + 192);
  v11 = *v1;
  sub_65D8();
  *v12 = v11;
  v7[25] = v0;

  if (!v0)
  {
    v7[26] = v3;
    v7[27] = v5;
  }

  sub_65B8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_617A0()
{
  v39 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = qword_BF818;

  if (v3 != -1)
  {
    sub_E754();
  }

  v4 = sub_8CD0C();
  sub_22B78(v4, qword_C3DF8);

  v5 = sub_8CCEC();
  v6 = sub_8D11C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v7 = 136315138;
    v8 = sub_C834();
    v11 = sub_862D8(v8, v9, v10);

    *(v7 + 4) = v11;
    sub_652D8(&dword_0, v12, v13, "#SendAnnouncementIntentHelper extracted speech data URL is: %s");
    sub_651D4();
    sub_65178();
  }

  else
  {
  }

  v14 = *(v0 + 72);

  v15 = sub_8CCEC();
  v16 = sub_8D11C();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v19 = 136315138;
    v20 = v17 == 0;
    if (v17)
    {
      v21 = v18;
    }

    else
    {
      v21 = 7104878;
    }

    if (v20)
    {
      v22 = 0xE300000000000000;
    }

    else
    {
      v22 = v14;
    }

    v23 = sub_862D8(v21, v22, &v38);

    *(v19 + 4) = v23;
    sub_652F8(&dword_0, v24, v25, "#SendAnnouncementIntentHelper speech data transcription is: %s");
    sub_651D4();
    sub_65178();
  }

  v26 = *(v0 + 104);
  v27 = [*(v0 + 40) announcement];
  sub_C834();
  sub_8AF7C();

  if (v27)
  {
    sub_64A28(v27);
  }

  v28 = *(v0 + 104);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v31 = *(v0 + 40);
  v32 = objc_allocWithZone(INAnnouncement);

  v33 = sub_65260();
  v34 = sub_6514C();
  [v31 setValue:v33 forKey:v34];

  sub_6523C();

  v35 = sub_65228();

  return v36(v35);
}

uint64_t sub_61A84()
{
  sub_4DFB4();
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = *(v0 + 200);
  v2 = sub_8CD0C();
  sub_22B78(v2, qword_C3DF8);
  swift_errorRetain();
  v3 = sub_8CCEC();
  v4 = sub_8D12C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = sub_1D358();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_65294();
    _os_log_impl(v10, v11, v12, v13, v7, 0xCu);
    sub_1D05C(v8, &qword_BFF40, &unk_90F70);
    sub_5D434();
    sub_E890();
  }

  else
  {
  }

  sub_6523C();

  v14 = sub_65228();

  return v15(v14);
}

void *sub_61C18(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2664(&qword_C2A08, &qword_92D80);
  sub_65E4(v6);
  v8 = *(v7 + 64);
  sub_1D394();
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_8C34C();
  v13 = sub_3488(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_16854();
  v20 = v19 - v18;
  sub_61E70(a1, v11);
  if (sub_3364(v11, 1, v12) == 1)
  {
    sub_1D05C(v11, &qword_C2A08, &qword_92D80);
  }

  else
  {
    (*(v15 + 32))(v20, v11, v12);
    v21 = sub_8C33C();
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v25 = sub_8C32C();
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v28 = sub_8C31C();
      if (v29)
      {
        v30 = 60000;
      }

      else
      {
        v30 = v28;
      }

      sub_62630(a2, v27, v30, v23, v24, a3);

      (*(v15 + 8))(v20, v12);
      return a2;
    }

    (*(v15 + 8))(v20, v12);
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v31 = sub_8CD0C();
  sub_22B78(v31, qword_C3DF8);
  v32 = sub_8CCEC();
  v33 = sub_8D11C();
  if (sub_125A0(v33))
  {
    v34 = sub_E8E0();
    *v34 = 0;
    sub_65294();
    _os_log_impl(v35, v36, v37, v38, v34, 2u);
    sub_E890();
  }

  v39 = a2;
  return a2;
}

uint64_t sub_61E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664(&qword_C2A28, &qword_92D90);
  sub_65E4(v4);
  v6 = *(v5 + 64);
  sub_1D394();
  __chkstk_darwin(v7);
  v9 = &v77 - v8;
  v10 = sub_2664(&qword_C2A30, &qword_92D98);
  sub_65E4(v10);
  v12 = *(v11 + 64);
  sub_1D394();
  __chkstk_darwin(v13);
  v86 = (&v77 - v14);
  sub_22AE4();
  v87 = sub_8C39C();
  v15 = sub_3488(v87);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_16854();
  v22 = v21 - v20;
  v23 = sub_2664(&qword_C2A38, &qword_92DA0);
  sub_65E4(v23);
  v25 = *(v24 + 64);
  sub_1D394();
  __chkstk_darwin(v26);
  v28 = (&v77 - v27);
  v29 = type metadata accessor for SmsNLIntent();
  v30 = sub_6574(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_16854();
  v35 = v34 - v33;
  v36 = sub_8C41C();
  v37 = sub_3488(v36);
  v81 = v38;
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v37);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v82 = &v77 - v44;
  sub_22AE4();
  v45 = sub_8C71C();
  sub_6574(v45);
  (*(v46 + 16))(v35, a1);
  if (qword_BF880 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_65094(&qword_C0E70, type metadata accessor for SmsNLIntent);
  sub_8C4AC();
  sub_650DC(v35, type metadata accessor for SmsNLIntent);
  if (sub_3364(v28, 1, v36) != 1)
  {
    v49 = a2;
    v51 = v81;
    v50 = v82;
    (*(v81 + 32))(v82, v28, v36);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v80 = v49;
    v52 = sub_8CD0C();
    sub_22B78(v52, qword_C3DF8);
    (*(v51 + 16))(v43, v50, v36);
    v28 = sub_8CCEC();
    v35 = sub_8D11C();
    v53 = os_log_type_enabled(v28, v35);
    v79 = v36;
    if (v53)
    {
      v54 = sub_1D358();
      v84 = v54;
      v85 = sub_6630();
      v88 = v85;
      *v54 = 136315138;
      sub_8C40C();
      v83 = sub_8D05C();
      v55 = v51;
      v57 = v56;

      v58 = sub_652AC(v55);
      v59(v58);
      v60 = sub_862D8(v83, v57, &v88);

      v61 = v84;
      *(v84 + 1) = v60;
      _os_log_impl(&dword_0, v28, v35, "Successfully extracted smsMessage node: %s.", v61, 0xCu);
      sub_2714(v85);
      sub_E890();
      sub_E890();
    }

    else
    {

      v62 = sub_652AC(v51);
      v63(v62);
    }

    v64 = sub_8C40C();
    v43 = v64;
    v85 = *(v64 + 16);
    if (!v85)
    {
LABEL_19:

      v78(v82, v79);
      v47 = sub_8C34C();
      v48 = v80;
      goto LABEL_20;
    }

    v65 = 0;
    v84 = (v64 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
    a2 = v17 + 16;
    v36 = v17 + 8;
    LODWORD(v83) = enum case for TerminalElement.OriginDetail.matchingSpan(_:);
    while (1)
    {
      if (v65 >= *(v43 + 2))
      {
        __break(1u);
        goto LABEL_24;
      }

      v66 = v87;
      (*(v17 + 16))(v22, v84 + *(v17 + 72) * v65, v87);
      sub_8C38C();
      (*(v17 + 8))(v22, v66);
      v35 = sub_8C37C();
      if (sub_3364(v9, 1, v35) == 1)
      {
        break;
      }

      v28 = v86;
      sub_8C36C();
      (*(*(v35 - 8) + 8))(v9, v35);
      v68 = sub_8C35C();
      if (sub_3364(v28, 1, v68) == 1)
      {
        goto LABEL_15;
      }

      v69 = *(v68 - 8);
      v70 = (*(v69 + 88))(v28, v68);
      if (v70 == v83)
      {
        v78(v82, v79);

        (*(v69 + 96))(v28, v68);
        v74 = sub_8C34C();
        sub_6574(v74);
        v76 = v80;
        (*(v75 + 32))(v80, v28, v74);
        v48 = v76;
        v72 = 0;
        v47 = v74;
        return sub_6270(v48, v72, 1, v47);
      }

      v71 = *(v69 + 8);
      v35 = v69 + 8;
      v71(v28, v68);
LABEL_18:
      if (v85 == ++v65)
      {
        goto LABEL_19;
      }
    }

    sub_1D05C(v9, &qword_C2A28, &qword_92D90);
    v67 = sub_8C35C();
    v28 = v86;
    sub_6270(v86, 1, 1, v67);
LABEL_15:
    sub_1D05C(v28, &qword_C2A30, &qword_92D98);
    goto LABEL_18;
  }

  sub_1D05C(v28, &qword_C2A38, &qword_92DA0);
  v47 = sub_8C34C();
  v48 = a2;
LABEL_20:
  v72 = 1;
  return sub_6270(v48, v72, 1, v47);
}

void *sub_62630(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v12);
  v14 = *(v13 + 64);
  sub_1D394();
  v16 = __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v19 = sub_62A2C(v16, a2, a3, a6);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v23 = sub_8CD0C();
    sub_22B78(v23, qword_C3DF8);

    v24 = sub_8CCEC();
    v25 = sub_8D11C();

    v26 = os_log_type_enabled(v24, v25);
    v59 = v21;
    if (v26)
    {
      v27 = sub_1D358();
      v58 = a4;
      v28 = v27;
      v29 = sub_6630();
      v60 = v29;
      *v28 = 136315138;

      v30 = sub_862D8(v21, v22, &v60);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "#SendAnnouncementIntentHelper extracted speech data URL is: %s", v28, 0xCu);
      sub_2714(v29);
      sub_E890();
      a4 = v58;
      sub_E890();
    }

    v31 = sub_8CCEC();
    v32 = sub_8D11C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_1D358();
      v34 = sub_6630();
      v60 = v34;
      *v33 = 136315138;
      if (a5)
      {
        v35 = a4;
      }

      else
      {
        v35 = 7104878;
      }

      v58 = v18;
      v36 = a1;
      v37 = a4;
      if (a5)
      {
        v38 = a5;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v39 = sub_862D8(v35, v38, &v60);
      a4 = v37;
      a1 = v36;
      v18 = v58;

      *(v33 + 4) = v39;
      _os_log_impl(&dword_0, v31, v32, "#SendAnnouncementIntentHelper speech data transcription is: %s", v33, 0xCu);
      sub_2714(v34);
      sub_E890();
      sub_E890();
    }

    v40 = [a1 announcement];
    sub_8AF7C();

    if (v40)
    {
      v41 = sub_64A28(v40);
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    objc_allocWithZone(INAnnouncement);

    v53 = sub_64758(v18, v41, v43, a4, a5);
    v54 = sub_6514C();
    [a1 setValue:v53 forKey:v54];

    v55 = a1;
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v44 = sub_8CD0C();
    sub_22B78(v44, qword_C3DF8);
    v45 = sub_8CCEC();
    v46 = sub_8D12C();
    if (sub_125A0(v46))
    {
      v47 = sub_E8E0();
      *v47 = 0;
      sub_65294();
      _os_log_impl(v48, v49, v50, v51, v47, 2u);
      sub_E890();
    }

    v52 = a1;
  }

  return a1;
}

uint64_t sub_62A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_8CDEC();
  v8 = sub_3488(v7);
  v97 = v9;
  v98 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_16854();
  v94 = (v13 - v12);
  sub_22AE4();
  v14 = sub_8CE1C();
  v15 = sub_3488(v14);
  v95 = v16;
  v96 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v92 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v84 - v21;
  sub_22AE4();
  v87 = type metadata accessor for SignpostLog.Signpost();
  v22 = sub_3488(v87);
  v88 = v23;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v22);
  v90 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v27;
  __chkstk_darwin(v26);
  v29 = &v84 - v28;
  v91 = dispatch_semaphore_create(0);
  v30 = [objc_allocWithZone(SASExtractSpeechData) init];
  v31 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a2];
  [v30 setStartTime:v31];

  v32 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a3];
  [v30 setEndTime:v32];

  v33 = a4[4];
  sub_622C(a4, a4[3]);
  sub_8B96C();
  if (v34)
  {
    v35 = sub_8CEAC();
  }

  else
  {
    v35 = 0;
  }

  [v30 setSpeechRequestId:v35];

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v36 = sub_8CD0C();
  sub_22B78(v36, qword_C3DF8);
  sub_E528(a4, v103);
  v37 = v30;
  v86 = v35;
  v38 = sub_8CCEC();
  v39 = sub_8D11C();

  v40 = os_log_type_enabled(v38, v39);
  v99 = v37;
  if (v40)
  {
    v41 = sub_6630();
    v42 = swift_slowAlloc();
    v85 = v29;
    v43 = v42;
    v44 = sub_6630();
    v102 = v44;
    *v41 = 136315650;
    sub_622C(v103, v103[3]);
    v100 = sub_8B96C();
    v101 = v45;
    sub_2664(&qword_C1A08, &unk_92B40);
    sub_8CEEC();
    sub_2714(v103);
    v46 = sub_1D37C();
    v49 = sub_862D8(v46, v47, v48);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2112;
    v50 = [v37 startTime];
    *(v41 + 14) = v50;
    *v43 = v50;
    *(v41 + 22) = 2112;
    v51 = [v37 endTime];
    *(v41 + 24) = v51;
    v43[1] = v51;
    _os_log_impl(&dword_0, v38, v39, "#SendAnnouncementIntentHelper sending SASExtractSpeechData with speechRequestId:%s, startTime in ms: %@, endTime in ms: %@", v41, 0x20u);
    sub_2664(&qword_BFF40, &unk_90F70);
    swift_arrayDestroy();
    v29 = v85;
    sub_E890();
    sub_2714(v44);
    sub_65178();
    sub_E890();
  }

  else
  {

    sub_2714(v103);
  }

  if (qword_BF820 != -1)
  {
    sub_65208();
  }

  v52 = qword_C0EE8;
  sub_8CCCC();
  sub_8D16C();
  sub_65288();
  sub_8CCBC();
  v53 = &v29[*(v87 + 20)];
  *v53 = "ExtractSpeechData";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v87 = v54 + 16;
  *(v54 + 24) = 0;
  v55 = a4[4];
  sub_622C(a4, a4[3]);
  v56 = v90;
  sub_65038(v29, v90, type metadata accessor for SignpostLog.Signpost);
  v57 = (*(v88 + 80) + 24) & ~*(v88 + 80);
  v58 = (v89 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  sub_4A3B8(v56, v59 + v57);
  v60 = v91;
  *(v59 + v58) = v91;
  sub_ADE4(0, &qword_C2A10, SASExtractSpeechDataCompleted_ptr);

  v61 = v60;
  v62 = v99;
  sub_8B97C();

  v63 = v92;
  sub_8CE0C();
  v64 = v94;
  *v94 = 10000;
  v66 = v97;
  v65 = v98;
  (*(v97 + 104))(v64, enum case for DispatchTimeInterval.milliseconds(_:), v98);
  v67 = v93;
  sub_8CE2C();
  (*(v66 + 8))(v64, v65);
  v68 = *(v95 + 8);
  v69 = v63;
  v70 = v96;
  v68(v69, v96);
  sub_8D17C();
  v68(v67, v70);
  if (sub_8CDFC())
  {
    v71 = sub_8CCEC();
    v72 = sub_8D12C();
    if (sub_125A0(v72))
    {
      v73 = sub_E8E0();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "#SendAnnouncementIntentHelper ExtractSpeechData ace command timed out", v73, 2u);
      sub_E890();
    }

    type metadata accessor for RadarUtils();
    inited = swift_initStackObject();
    v75 = sub_8C88C();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    *(inited + 16) = sub_8C87C();
    sub_38AE4(1, 2);
    swift_setDeallocating();
    v78 = *(inited + 16);

    sub_65134();
    sub_650DC(v29, v79);
  }

  else
  {
    sub_65134();
    sub_650DC(v29, v80);
  }

  swift_beginAccess();
  v81 = *(v54 + 16);
  v82 = *(v54 + 24);

  return sub_1D37C();
}

Swift::Int sub_63288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = sub_8B9CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = sub_2664(&qword_C2A18, &qword_92D88);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v40 - v16);
  sub_64AF4(a1, &v40 - v16, &qword_C2A18, &qword_92D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v13, v17, v6);
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v18 = sub_8CD0C();
    sub_33F4(v18, qword_C3DF8);
    (*(v7 + 16))(v11, v13, v6);
    v19 = sub_8CCEC();
    v20 = sub_8D12C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v21 = 136315138;
      sub_65094(&qword_C2A20, &type metadata accessor for SubmitCommandError);
      v22 = sub_8D43C();
      v24 = v23;
      v25 = *(v7 + 8);
      v25(v11, v6);
      v26 = sub_862D8(v22, v24, &v43);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v19, v20, "#SendAnnouncementIntentHelper An error occurred while extracting speech data url: %s.", v21, 0xCu);
      sub_2714(v40);

      v25(v13, v6);
    }

    else
    {

      v33 = *(v7 + 8);
      v33(v11, v6);
      v33(v13, v6);
    }
  }

  else
  {
    v27 = *v17;
    v28 = [*v17 speechDataUrl];
    if (v28)
    {
      v29 = v28;
      v30 = sub_8CEDC();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    swift_beginAccess();
    v34 = *(a2 + 24);
    *(a2 + 16) = v30;
    *(a2 + 24) = v32;
  }

  sub_8D15C();
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v35 = (v41 + *(type metadata accessor for SignpostLog.Signpost() + 20));
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 16);
  sub_8CCBC();
  return sub_8D18C();
}

uint64_t sub_636D0()
{
  sub_6608();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = type metadata accessor for HomeCommunicationError(0);
  v0[12] = v4;
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v0[13] = sub_E83C();
  v7 = type metadata accessor for SignpostLog.Signpost();
  v0[14] = v7;
  sub_65E4(v7);
  v9 = *(v8 + 64);
  v0[15] = sub_E83C();
  sub_65B8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_63778()
{
  v43 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = [objc_allocWithZone(SASExtractSpeechData) init];
  v0[16] = v4;
  v5 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v3];
  [v4 setStartTime:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v2];
  [v4 setEndTime:v6];

  v7 = v1[4];
  sub_622C(v1, v1[3]);
  sub_8BAEC();
  if (v8)
  {
    v9 = sub_8CEAC();
  }

  else
  {
    v9 = 0;
  }

  [v4 setSpeechRequestId:v9];

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v10 = v0[11];
  v11 = sub_8CD0C();
  v0[17] = sub_33F4(v11, qword_C3DF8);
  sub_E528(v10, (v0 + 2));
  v12 = v4;
  v13 = sub_8CCEC();
  v14 = sub_8D11C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_6630();
    v16 = swift_slowAlloc();
    v41 = sub_6630();
    v42 = v41;
    *v15 = 136315650;
    v17 = v0[6];
    sub_622C(v0 + 2, v0[5]);
    v0[7] = sub_8BAEC();
    v0[8] = v18;
    sub_2664(&qword_C1A08, &unk_92B40);
    v19 = sub_8CEEC();
    v21 = v20;
    sub_2714(v0 + 2);
    v22 = sub_862D8(v19, v21, &v42);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    v23 = [v12 startTime];
    *(v15 + 14) = v23;
    *v16 = v23;
    *(v15 + 22) = 2112;
    v24 = [v12 endTime];
    *(v15 + 24) = v24;
    v16[1] = v24;
    _os_log_impl(&dword_0, v13, v14, "#SendAnnouncementIntentHelper sending SASExtractSpeechData async with speechRequestId: %s, startTime in ms: %@, endTime in ms: %@", v15, 0x20u);
    sub_2664(&qword_BFF40, &unk_90F70);
    swift_arrayDestroy();
    sub_E890();
    sub_2714(v41);
    sub_E890();
    sub_5D434();
  }

  else
  {

    sub_2714(v0 + 2);
  }

  if (qword_BF820 != -1)
  {
    sub_65208();
  }

  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[11];
  v28 = qword_C0EE8;
  v0[18] = qword_C0EE8;
  v29 = v28;
  sub_8CCCC();
  sub_8D16C();
  sub_65288();
  sub_8CCBC();
  v30 = v25 + *(v26 + 20);
  *v30 = "ExtractSpeechData";
  *(v30 + 8) = 17;
  *(v30 + 16) = 2;
  v32 = v1[3];
  v31 = v1[4];
  sub_622C(v27, v32);
  v33 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v34 = swift_task_alloc();
  v0[19] = v34;
  sub_ADE4(0, &qword_C2090, SABaseCommand_ptr);
  *v34 = v0;
  v34[1] = sub_63BB8;
  sub_6614();

  return AceServiceInvokerAsync.submit<A>(_:)(v35, v36, v37, v38);
}

uint64_t sub_63BB8()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;
  *(v2 + 168) = v0;

  sub_65B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_63CBC()
{
  v50 = v0;
  v1 = *(v0 + 160);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = sub_64A98(v2, &selRef_speechDataUrl);
    v5 = *(v0 + 136);
    if (v4)
    {
      v6 = v3;
      v7 = v4;

      v8 = sub_8CCEC();
      v9 = sub_8D11C();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 160);
      if (v10)
      {
        v12 = sub_1D358();
        v13 = sub_6630();
        v49 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_862D8(v6, v7, &v49);
        sub_65338(&dword_0, v14, v15, "#SendAnnouncementIntentHelper speechDataUrl unwrapped to %s");
        sub_2714(v13);
        sub_65178();
        sub_5D434();
      }

      v16 = *(v0 + 144);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
      v19 = *(v0 + 104);
      sub_8D15C();
      sub_65288();
      sub_8CCBC();

      sub_65134();
      sub_650DC(v17, v20);

      v21 = *(v0 + 8);

      return v21(v6, v7);
    }

    v33 = sub_8CCEC();
    v34 = sub_8D12C();
    if (sub_125A0(v34))
    {
      *sub_E8E0() = 0;
      sub_E890();
    }

    v37 = *(v0 + 160);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);

    *v39 = 0xD000000000000020;
    v39[1] = 0x8000000000098220;
    sub_C834();
    swift_storeEnumTagMultiPayload();
    sub_65194();
    sub_65094(v40, v41);
    sub_65318();
    sub_15350(v42);
    sub_651AC();
    swift_willThrow();
  }

  else
  {
    v23 = *(v0 + 136);

    v24 = sub_8CCEC();
    v25 = sub_8D12C();
    if (sub_125A0(v25))
    {
      *sub_E8E0() = 0;
      sub_3D9B8(&dword_0, v26, v27, "#SendAnnouncementIntentHelper extractSpeechData return type is not of type SASExtractSpeechDataCompleted");
      sub_E890();
    }

    v28 = *(v0 + 96);
    v29 = *(v0 + 104);

    *v29 = 0xD000000000000068;
    v29[1] = 0x80000000000981B0;
    sub_C834();
    swift_storeEnumTagMultiPayload();
    sub_65194();
    sub_65094(v30, v31);
    sub_65318();
    sub_15350(v32);
    sub_651AC();
    swift_willThrow();
  }

  v43 = *(v0 + 144);
  v44 = *(v0 + 120);
  v45 = *(v0 + 128);
  v46 = *(v0 + 104);
  sub_8D15C();
  sub_65288();
  sub_8CCBC();

  sub_65134();
  sub_650DC(v44, v47);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_64070()
{
  sub_4DFB4();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  sub_8D15C();
  sub_65288();
  sub_8CCBC();

  sub_65134();
  sub_650DC(v3, v6);

  v7 = v0[1];

  return v7();
}

void sub_64128(void *a1, void *a2)
{
  if (!a1)
  {
    sub_652C0();
    return;
  }

  v31 = a1;
  v4 = sub_64A28(v31);
  v6 = v5;
  v7 = sub_64A98(a2, &selRef_identifier);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_8D45C();

        if ((v10 & 1) == 0)
        {
LABEL_26:
          sub_652C0();

          return;
        }
      }

LABEL_16:
      if (qword_BF818 != -1)
      {
        sub_E754();
      }

      v12 = sub_8CD0C();
      sub_22B78(v12, qword_C3DF8);
      v32 = v31;
      v13 = sub_8CCEC();
      v14 = sub_8D11C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = sub_1D358();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v32;
        *v16 = a1;
        v17 = v32;
        _os_log_impl(&dword_0, v13, v14, "previousIntent : %@.", v15, 0xCu);
        sub_1D05C(v16, &qword_BFF40, &unk_90F70);
        sub_65178();
        sub_5D434();
      }

      v18 = sub_2CF10(v32);
      if (v18)
      {
        sub_64440(v18, a2);
      }

      v19 = [v32 announcement];
      if (v19)
      {
        v20 = v19;
        v21 = v19;
        v22 = sub_8CCEC();
        v23 = sub_8D11C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = sub_1D358();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v25 = v20;
          v26 = v21;
          sub_65338(&dword_0, v27, v28, "Restoring the announcement slot from the previous INSendAnnouncementIntent: %@.");
          sub_1D05C(v25, &qword_BFF40, &unk_90F70);
          sub_65178();
          sub_5D434();
        }

        [a2 setValue:v21 forKey:sub_6514C()];
      }

      goto LABEL_26;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }

  sub_652C0();
}

void sub_64440(uint64_t a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v3 = sub_8CD0C();
  sub_22B78(v3, qword_C3DF8);

  v4 = sub_8CCEC();
  v5 = sub_8D11C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_1D358();
    v7 = sub_6630();
    v17 = v7;
    *v6 = 136315138;
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    v8 = sub_8D05C();
    v10 = sub_862D8(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Restoring the recipient slot from the previous INSendAnnouncementIntent: %s.", v6, 0xCu);
    sub_2714(v7);
    sub_5D434();
    sub_E890();
  }

  v11 = sub_2CF10(a2);
  if (v11)
  {
    v17 = v11;

    sub_2C814(v12);
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    isa = sub_8D03C().super.isa;

    [a2 setValue:isa forKey:sub_8CEAC()];
  }

  else
  {
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    v14 = sub_8D03C().super.isa;
    [a2 setValue:v14 forKey:sub_8CEAC()];
  }

  sub_652C0();
}

void sub_6467C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedPreferences];
  v6 = [v5 outputVoice];

  v7 = type metadata accessor for AnnouncementSpeechSynthesizer();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_64B50(v4, v6, v10);

  a1[3] = v7;
  a1[4] = &off_B9388;
  *a1 = v11;
}

id sub_64758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_8AF9C();
  v12 = 0;
  if (sub_3364(a1, 1, v10) != 1)
  {
    sub_8AF5C(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (!a3)
  {
    v14 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v14 = sub_8CEAC();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = sub_8CEAC();

LABEL_8:
  v16 = [v6 initWithSpeechDataURL:v12 identifier:v14 speechDataTranscription:v15];

  return v16;
}

uint64_t sub_64880()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_648B8()
{
  v1 = type metadata accessor for SignpostLog.Signpost();
  sub_115AC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = sub_8CCDC();
  sub_6574(v8);
  (*(v9 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

Swift::Int sub_64990(uint64_t a1)
{
  v3 = type metadata accessor for SignpostLog.Signpost();
  sub_115AC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_63288(a1, v9, v1 + v8, v10);
}

uint64_t sub_64A28(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8CEDC();

  return v3;
}

uint64_t sub_64A98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_8CEDC();
  }

  return sub_1D37C();
}

uint64_t sub_64AF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_2664(a3, a4);
  sub_6574(v5);
  v7 = *(v6 + 16);
  v8 = sub_1D37C();
  v9(v8);
  return a2;
}

uint64_t sub_64B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_ADE4(0, &qword_C2A48, NSFileManager_ptr);
  v10 = &off_B9358;
  *&v8 = a1;
  sub_8AF4C();
  sub_8AF4C();
  v6 = (a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_audioFileExtension);
  *v6 = 1717658414;
  v6[1] = 0xE400000000000000;
  sub_E510(&v8, a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  *(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_voiceInfo) = a2;
  return a3;
}

uint64_t sub_64C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a2;
  v3[5] = type metadata accessor for SharedGlobals();
  v3[6] = &off_BB508;
  v5 = sub_E5DC(v3 + 2);
  sub_65038(a3, v5, type metadata accessor for SharedGlobals);

  return _swift_task_switch(sub_64CE8, 0, 0);
}

uint64_t sub_64CE8()
{
  sub_6608();
  sub_622C(v0 + 2, v0[5]);
  sub_6467C(v0 + 7);
  v1 = *sub_622C(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_64DA0;
  v4 = v0[12];
  v3 = v0[13];

  return sub_38E4();
}

uint64_t sub_64DA0()
{
  sub_4DFB4();
  v3 = v2;
  v5 = v4;
  sub_E884();
  v7 = v6;
  sub_65D8();
  *v8 = v7;
  v10 = *(v9 + 112);
  v11 = *v1;
  sub_65D8();
  *v12 = v11;
  v7[15] = v0;

  if (!v0)
  {
    v7[16] = v3;
    v7[17] = v5;
  }

  sub_65B8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_64EC0()
{
  sub_6608();
  v1 = v0[16];
  sub_2714(v0 + 7);
  v2 = v0[17];
  sub_2714(v0 + 2);
  v3 = v0[1];
  v4 = sub_1D37C();

  return v5(v4);
}

uint64_t sub_64F30()
{
  sub_2714(v0 + 7);
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_22B78(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D12C();
  v4 = sub_125A0(v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = sub_E8E0();
    *v6 = 0;
    sub_65294();
    _os_log_impl(v7, v8, v9, v10, v6, 2u);
    sub_E890();
  }

  sub_2714(v0 + 2);
  v11 = v0[1];

  return v11(0, 0);
}

uint64_t sub_65038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_6574(v4);
  v6 = *(v5 + 16);
  v7 = sub_1D37C();
  v8(v7);
  return a2;
}

uint64_t sub_65094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_650DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_6574(v3);
  (*(v4 + 8))(a1);
  return a1;
}

NSString sub_6514C()
{

  return sub_8CEAC();
}

uint64_t sub_65178()
{
}

uint64_t sub_651AC()
{

  return sub_650DC(v0, type metadata accessor for HomeCommunicationError);
}

uint64_t sub_651D4()
{
  sub_2714(v0);
}

uint64_t sub_65208()
{

  return swift_once();
}

id sub_6523C()
{
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[5];

  return v7;
}

id sub_65260()
{

  return sub_64758(v2, v1, v0, v4, v3);
}

uint64_t sub_652AC@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 168) = *(a1 + 8);
  return result;
}

void sub_652D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_652F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_65318()
{

  return swift_allocError();
}

void sub_65338(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_65358(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B89A8;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_653A4(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      sub_65D08();
      result = v5 - 13;
      break;
    case 6:
      sub_65D08();
      result = v7 - 10;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      sub_65D08();
      result = v9 - 4;
      break;
    case 9:
      sub_65D08();
      result = v4 + 4;
      break;
    case 10:
      sub_65D08();
      result = v8 - 22;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      sub_65D08();
      result = v3 - 9;
      break;
    case 13:
      sub_65D08();
      result = v6 + 5;
      break;
    case 14:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_655E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_65358(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_65618@<X0>(unint64_t *a1@<X8>)
{
  result = sub_653A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_65654()
{
  v0 = qword_C2A50;

  return v0;
}

uint64_t sub_6568C(uint64_t a1)
{
  v2 = sub_65CB0();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_656C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_65AEC();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_65714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_65CB0();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_65778(uint64_t a1)
{
  v2 = sub_65CB0();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_657B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_65AEC();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_65800(char a1)
{
  v2._countAndFlagsBits = sub_653A4(a1);
  sub_8CF7C(v2);

  return 46;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x659A8);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_659E4()
{
  result = qword_C2A60;
  if (!qword_C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A60);
  }

  return result;
}

unint64_t sub_65A3C()
{
  result = qword_C2A68;
  if (!qword_C2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A68);
  }

  return result;
}

unint64_t sub_65A94()
{
  result = qword_C2A70;
  if (!qword_C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A70);
  }

  return result;
}

unint64_t sub_65AEC()
{
  result = qword_C2A78;
  if (!qword_C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A78);
  }

  return result;
}

unint64_t sub_65B44()
{
  result = qword_C2A80;
  if (!qword_C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A80);
  }

  return result;
}

unint64_t sub_65B9C()
{
  result = qword_C2A88;
  if (!qword_C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A88);
  }

  return result;
}

unint64_t sub_65BF4()
{
  result = qword_C2A90;
  if (!qword_C2A90)
  {
    sub_B9BC(&qword_C2A98, &qword_92F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A90);
  }

  return result;
}

unint64_t sub_65C5C()
{
  result = qword_C2AA0;
  if (!qword_C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AA0);
  }

  return result;
}

unint64_t sub_65CB0()
{
  result = qword_C2AA8;
  if (!qword_C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AA8);
  }

  return result;
}

uint64_t sub_65D44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEA0000000000656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_65DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_65D44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_65E10(uint64_t a1)
{
  v2 = sub_65FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65E4C(uint64_t a1)
{
  v2 = sub_65FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SendAnnouncementNeedsValueModel.encode(to:)(void *a1)
{
  v2 = sub_2664(&qword_C2AB0, &qword_93040);
  v3 = sub_3488(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_622C(a1, a1[3]);
  sub_65FBC();
  sub_8D57C();
  sub_8D40C();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_65FBC()
{
  result = qword_C2AB8;
  if (!qword_C2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AB8);
  }

  return result;
}

uint64_t SendAnnouncementNeedsValueModel.init(from:)(uint64_t *a1)
{
  v3 = sub_2664(&qword_C2AC0, &qword_93048);
  v4 = sub_3488(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_622C(a1, a1[3]);
  sub_65FBC();
  sub_8D56C();
  if (!v1)
  {
    v12 = sub_8D3CC();
    (*(v6 + 8))(v10, v3);
  }

  sub_2714(a1);
  return v12;
}

uint64_t sub_66168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SendAnnouncementNeedsValueModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_66194(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return SendAnnouncementNeedsValueModel.encode(to:)(a1);
}

uint64_t sub_661B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_66204(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SendAnnouncementNeedsValueModel.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x66300);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_6633C()
{
  result = qword_C2AC8;
  if (!qword_C2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AC8);
  }

  return result;
}

unint64_t sub_66394()
{
  result = qword_C2AD0;
  if (!qword_C2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AD0);
  }

  return result;
}

unint64_t sub_663EC()
{
  result = qword_C2AD8;
  if (!qword_C2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AD8);
  }

  return result;
}

uint64_t sub_66440(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v24 = a6;
  v11 = sub_2664(&qword_C1058, &unk_8FCA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_8B8CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2608, &unk_92760);
    v20 = sub_8BC1C();
    v21 = v24;

    return v20(a1, a2, a3, a4, a5, v21);
  }

  else
  {
    sub_66674();
    (*(v16 + 16))(v14, v19, v15);
    sub_6270(v14, 0, 1, v15);
    a5(v14);
    sub_1151C(v14, &qword_C1058, &unk_8FCA0);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_66674()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#HomeCommunicationNLContextProvider generateNLContextForAnnouncement", v3, 2u);
  }

  sub_8B8BC();
  sub_1E508(0);
  sub_8B88C();
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_8E3F0;
  sub_8CF0C();
  sub_10C68();
  sub_8D1FC();

  v9 = sub_1E508(3);
  v10 = v5;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_8CF7C(v11);
  v12._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v12);

  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  sub_8B85C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8E3F0;
  *(v6 + 32) = sub_1E508(4);
  *(v6 + 40) = v7;
  sub_8B86C();
  sub_668DC();
  return sub_8B83C();
}

uint64_t sub_668DC()
{
  v0 = sub_8BFDC();
  v1 = *(v0 - 8);
  v48 = v0;
  v49 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8BE7C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_8BF4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v46 - v13;
  v15 = sub_2664(&qword_C1090, &unk_92770);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v46 - v17;
  v19 = sub_8C6CC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_8C6BC();
  v23 = sub_8C68C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_8C67C();
  sub_8C66C();
  v51 = v26;
  sub_8C59C();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_8E860;
  *(v27 + 32) = v22;
  v28 = sub_8C3FC();
  sub_6270(v18, 1, 1, v28);
  v50 = v22;

  v29 = sub_8C3AC();

  sub_1151C(v18, &qword_C1090, &unk_92770);
  sub_8BF3C();
  sub_8C05C();
  v47 = v4;
  sub_8BF2C();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v46[1] = v29;
  v30 = sub_8CD0C();
  sub_33F4(v30, qword_C3DF8);
  v31 = sub_8CCEC();
  v32 = sub_8D11C();
  v33 = v7;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136315138;
    swift_beginAccess();
    (*(v8 + 16))(v12, v14, v7);
    v36 = sub_698D4(v12, &type metadata accessor for Siri_Nlu_External_SystemPrompted, &qword_C2BC0, &type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v38 = sub_862D8(v36, v37, &v52);

    *(v34 + 4) = v38;
    v33 = v7;
    _os_log_impl(&dword_0, v31, v32, "#HomeCommunicationNLContextProvider Returning NLUSystemPrompted for prompt for send Announcement: %s", v34, 0xCu);
    sub_2714(v35);
  }

  v39 = v48;
  v40 = v49;
  v41 = v47;
  sub_8BFCC();
  swift_beginAccess();
  (*(v8 + 16))(v12, v14, v33);
  sub_8BFBC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v42 = *(v40 + 72);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_8E3F0;
  (*(v40 + 32))(v44 + v43, v41, v39);

  (*(v8 + 8))(v14, v33);
  return v44;
}

uint64_t sub_66FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_8BDBC();
  v6 = sub_3488(v5);
  v52 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_8BE0C();
  v13 = sub_3488(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  sub_8BD9C();
  v23 = (*(v15 + 88))(v22, v12);
  if (v23 == enum case for Parse.directInvocation(_:))
  {
    sub_8B75C();
    return (*(v15 + 8))(v22, v12);
  }

  if (v23 != enum case for Parse.NLv4IntentOnly(_:) && v23 != enum case for Parse.uso(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v30 = sub_8CD0C();
    sub_33F4(v30, qword_C3DF8);
    v31 = sub_8CCEC();
    v32 = sub_8D12C();
    if (sub_125A0(v32))
    {
      *sub_E8E0() = 0;
      sub_69AE0(&dword_0, v33, v34, "#SendAnnouncementNeedsValueStrategy Received unsupported parse ");
      sub_E890();
    }

    sub_8B76C();
    return (*(v15 + 8))(v22, v12);
  }

  v51 = a2;
  v25 = *(v15 + 8);
  v25(v22, v12);
  v26 = sub_622C((v2 + 16), *(v2 + 40))[1];

  sub_8BD9C();
  sub_2EBF0(v20, &v53);

  v25(v20, v12);
  if (v54)
  {
    sub_E510(&v53, v55);
    v27 = v56;
    v28 = v57;
    sub_622C(v55, v56);
    switch((*(v28 + 160))(v27, v28))
    {
      case 2u:

        goto LABEL_25;
      case 3u:
        goto LABEL_11;
      default:
        v29 = sub_8D45C();

        if (v29)
        {
LABEL_25:
          if (qword_BF818 != -1)
          {
            sub_E754();
          }

          v46 = sub_8CD0C();
          sub_33F4(v46, qword_C3DF8);
          v47 = sub_8CCEC();
          v48 = sub_8D11C();
          if (sub_125A0(v48))
          {
            *sub_E8E0() = 0;
            sub_69AE0(&dword_0, v49, v50, "#SendAnnouncementNeedsValueStrategy cancelling as per homeCommunicationConfirmation");
            sub_E890();
          }

          sub_8B74C();
        }

        else
        {
LABEL_11:
          sub_8B75C();
        }

        result = sub_2714(v55);
        break;
    }
  }

  else
  {
    sub_1151C(&v53, &qword_C0438, &qword_8EBD0);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v36 = sub_8CD0C();
    sub_33F4(v36, qword_C3DF8);
    v37 = v52;
    (*(v52 + 16))(v11, a1, v5);
    v38 = sub_8CCEC();
    v39 = sub_8D12C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315138;
      sub_8BD9C();
      v42 = sub_72160(v20);
      v44 = v43;
      (*(v37 + 8))(v11, v5);
      v45 = sub_862D8(v42, v44, v55);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "#SendAnnouncementNeedsValueStrategy couldn't transform input: %s", v40, 0xCu);
      sub_2714(v41);
      sub_E890();
      sub_E890();
    }

    else
    {

      (*(v37 + 8))(v11, v5);
    }

    return sub_8B76C();
  }

  return result;
}

uint64_t sub_67570()
{
  sub_6608();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = type metadata accessor for HomeCommunicationError(0);
  v1[21] = v5;
  sub_65E4(v5);
  v7 = *(v6 + 64);
  v1[22] = sub_E83C();
  v8 = sub_2664(&qword_C28C8, &qword_92B00);
  sub_65E4(v8);
  v10 = *(v9 + 64);
  v1[23] = sub_E83C();
  v11 = sub_8BE0C();
  v1[24] = v11;
  sub_115AC(v11);
  v1[25] = v12;
  v14 = *(v13 + 64);
  v1[26] = sub_E83C();
  v15 = sub_44348();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_67668()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementNeedsValueStrategy parseResponseValue", v4, 2u);
    sub_E890();
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);

  v10 = sub_622C((v8 + 16), *(v8 + 40))[1];

  sub_8BD9C();
  sub_2EBF0(v5, v0 + 56);

  (*(v6 + 8))(v5, v7);
  if (!*(v0 + 80))
  {
    v24 = *(v0 + 208);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 144);
    sub_1151C(v0 + 56, &qword_C0438, &qword_8EBD0);
    sub_8BD9C();
    *v25 = sub_72160(v24);
    v25[1] = v28;
    v25[2] = 0x746E65746E494C4ELL;
    v25[3] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    sub_69A58(&qword_BFF38, 255, type metadata accessor for HomeCommunicationError);
    swift_allocError();
    sub_15350(v29);
    sub_48464(v25);
    swift_willThrow();
    v30 = *(v0 + 208);
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);

    sub_65A0();
    goto LABEL_10;
  }

  v11 = *(v0 + 152);
  sub_E510((v0 + 56), v0 + 16);
  sub_2664(&qword_C25C8, &qword_92700);
  *(v0 + 216) = sub_8BD0C();
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_622C((v0 + 16), v12);
  (*(v13 + 120))(v12, v13);
  if (v14 & 1) != 0 || (v15 = *(v0 + 40), v16 = *(v0 + 48), sub_622C((v0 + 16), v15), (*(v16 + 128))(v15, v16), (v17))
  {
    v18 = *(v0 + 208);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 136);
    sub_699CC();
    sub_69AC8();
    sub_8B98C();
    v22 = sub_2664(&qword_C2610, &qword_92780);
    sub_69B00(v22);

    sub_65A0();
LABEL_10:

    return v23();
  }

  v34 = *(v0 + 152);
  *(v0 + 224) = sub_8BD0C();
  v35 = *(v0 + 40);
  v36 = *(v0 + 48);
  sub_622C((v0 + 16), v35);
  (*(v36 + 152))(v35, v36);
  *(v0 + 232) = v37;
  sub_8B5AC();
  sub_8C7CC();
  if (sub_8C7BC())
  {
    v38 = *(v0 + 184);
    sub_8C7AC();

    sub_8CB4C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = *(v0 + 184);
  v41 = sub_8C7FC();
  sub_6270(v40, v39, 1, v41);
  v42 = swift_task_alloc();
  *(v0 + 240) = v42;
  *v42 = v0;
  v42[1] = sub_67B1C;
  v43 = *(v0 + 184);

  return sub_60C94();
}

uint64_t sub_67B1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  v7 = v4[30];
  v8 = v4[29];
  *v6 = *v2;
  v5[31] = v1;

  v9 = v4[28];
  v10 = v4[23];
  if (v1)
  {

    sub_1151C(v10, &qword_C28C8, &qword_92B00);
    sub_2714(v5 + 12);
    v11 = sub_67DA0;
  }

  else
  {

    v5[32] = a1;

    sub_1151C(v10, &qword_C28C8, &qword_92B00);
    sub_2714(v5 + 12);
    v11 = sub_67CDC;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_67CDC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 136);
  sub_699CC();
  sub_69AC8();
  sub_8B98C();
  v6 = sub_2664(&qword_C2610, &qword_92780);
  sub_69B00(v6);

  sub_65A0();

  return v7();
}

uint64_t sub_67DA0()
{
  sub_152A0();

  sub_2714((v0 + 16));
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);

  sub_65A0();

  return v5();
}

uint64_t sub_67E28()
{
  sub_6608();
  v1[103] = v0;
  v1[102] = v2;
  v1[101] = v3;
  v4 = sub_8B6BC();
  sub_65E4(v4);
  v6 = *(v5 + 64);
  v1[104] = sub_E83C();
  v7 = sub_8BCBC();
  v1[105] = v7;
  sub_115AC(v7);
  v1[106] = v8;
  v10 = *(v9 + 64);
  v1[107] = sub_E83C();
  v11 = sub_2664(&qword_C25C8, &qword_92700);
  v1[108] = v11;
  sub_115AC(v11);
  v1[109] = v12;
  v1[110] = *(v13 + 64);
  v1[111] = sub_E83C();
  v14 = sub_2664(&qword_C1058, &unk_8FCA0);
  v1[112] = v14;
  sub_65E4(v14);
  v16 = *(v15 + 64) + 15;
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v17 = sub_44348();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_67F98()
{
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v1 = sub_8CD0C();
  v0[115] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementNeedsValueStrategy makeParameterPromptDialogAsync with response framework adoption", v4, 2u);
    sub_E890();
  }

  v22 = v0[114];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[110];
  v8 = v0[109];
  v9 = v0[108];
  v10 = v0[103];
  v11 = v0[102];

  (*(v8 + 16))(v6, v11, v9);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v0[116] = v13;
  *(v13 + 16) = v10;
  (*(v8 + 32))(v13 + v12, v6, v9);

  swift_asyncLet_begin();
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (sub_125A0(v15))
  {
    *sub_E8E0() = 0;
    sub_3D9B8(&dword_0, v16, v17, "#SendAnnouncementIntent sending promptForAnnouncement dialog");
    sub_E890();
  }

  v18 = v0[103];

  v19 = *(v18 + 56);
  v20 = swift_task_alloc();
  v0[117] = v20;
  *v20 = v0;
  v20[1] = sub_681E8;

  return sub_4D0C8();
}

uint64_t sub_681E8()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  v2[87] = v1;
  v2[88] = v4;
  v2[89] = v0;
  v5 = v2[117];
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;
  v3[118] = v0;

  if (v0)
  {
    v8 = v3[114];

    return _swift_asyncLet_finish(v3 + 2);
  }

  else
  {

    return _swift_task_switch(sub_68324, 0, 0);
  }
}

uint64_t sub_68324()
{
  sub_152A0();
  v1 = v0[107];
  v2 = v0[104];
  v3 = v0[103];
  sub_8B69C();
  sub_8BC3C();
  v4 = v0[114];

  return _swift_asyncLet_get(v0 + 2, v4, sub_683C4, v0 + 90);
}

uint64_t sub_683D8()
{
  sub_152A0();
  v1 = v0[115];
  v2 = v0[107];
  v3 = v0[103];
  sub_696CC(v0[114], v0[113]);
  sub_8BC8C();
  v4 = sub_622C((v3 + 16), *(v3 + 40));
  v5 = *(v4 + *(type metadata accessor for SharedGlobals() + 40));

  sub_71708();

  v6 = sub_8CCEC();
  v7 = sub_8D11C();
  if (sub_125A0(v7))
  {
    *sub_E8E0() = 0;
    sub_3D9B8(&dword_0, v8, v9, "#SendAnnouncementNeedsValueStrategy registering prompt for announcement");
    sub_E890();
  }

  v10 = v0[88];

  v0[119] = v10;
  v11 = sub_8B8FC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_8B8EC();
  v0[120] = v14;
  v0[95] = v14;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v15 = swift_allocObject();
  v0[121] = v15;
  *(v15 + 16) = xmmword_8E860;
  *(v15 + 32) = v10;
  v16 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v17 = v10;
  v18 = swift_task_alloc();
  v0[122] = v18;
  *v18 = v0;
  v18[1] = sub_6859C;
  v19 = v0[107];
  v20 = v0[101];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v20, v15, v19, v11, &protocol witness table for ResponseFactory);
}

uint64_t sub_6859C()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 976);
  v3 = *(v1 + 968);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  v6 = sub_44348();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6869C()
{
  sub_152A0();
  v1 = *(v0 + 960);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 912);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_68750()
{
  sub_69AA0();

  sub_65A0();

  return v0();
}

uint64_t sub_687F8()
{
  sub_69AA0();

  sub_65A0();
  v2 = *(v0 + 944);

  return v1();
}

uint64_t sub_6888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_688B0, 0, 0);
}

uint64_t sub_688B0()
{
  sub_152A0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_2664(&qword_C1058, &unk_8FCA0);
  *v3 = v0;
  v3[1] = sub_689B4;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000022, 0x80000000000982D0, sub_6973C, v1, v4);
}

uint64_t sub_689B4()
{
  sub_6608();
  sub_E884();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_65A0();

  return v6();
}

void sub_68AB4(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = sub_2664(&qword_C2600, &unk_93370);
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v7 = sub_8BA3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 72);
  sub_2664(&qword_C25C8, &qword_92700);
  v21 = sub_8BD0C();
  sub_8BD2C();
  v20 = sub_8BA2C();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  v14 = sub_8BD1C();
  v15 = v23;
  (*(v3 + 16))(v6, v24, v23);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v6, v15);
  v18 = v21;
  sub_66440(v21, v20, v13, v14, sub_697CC, v17);
}

uint64_t sub_68D18(uint64_t a1)
{
  v2 = sub_2664(&qword_C1058, &unk_8FCA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_696CC(a1, &v6 - v4);
  sub_2664(&qword_C2600, &unk_93370);
  return sub_8D0CC();
}

uint64_t sub_68DC0()
{
  v0 = sub_8C84C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_8BC7C();
  sub_8BCAC();
  sub_8BE1C();
  sub_622C(v7, v8);
  if (sub_8B61C())
  {
    sub_622C(v7, v8);
    if (sub_8B67C())
    {
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v2 = sub_8CD0C();
      sub_33F4(v2, qword_C3DF8);
      v3 = sub_8CCEC();
      v4 = sub_8D11C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementNeedsValueStrategy overriding responseMode to .voiceForward", v5, 2u);
      }

      sub_8C83C();
      sub_8BC4C();
    }
  }

  return sub_2714(v7);
}

uint64_t *sub_68F74()
{
  sub_2714(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t sub_68FAC()
{
  sub_68F74();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_69028()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_67570();
}

uint64_t sub_690DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_67E28();
}

uint64_t sub_69188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_6924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_3B650;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_69310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v13 = v6;
  v13[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_693EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_69518()
{
  v1 = sub_2664(&qword_C25C8, &qword_92700);
  sub_3488(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_695DC()
{
  sub_152A0();
  v3 = v2;
  v4 = sub_2664(&qword_C25C8, &qword_92700);
  sub_65E4(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_E2A0;

  return sub_6888C(v3, v7, v0 + v6);
}

uint64_t sub_696CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1058, &unk_8FCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69744()
{
  v1 = sub_2664(&qword_C2600, &unk_93370);
  sub_11580(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_697CC(uint64_t a1)
{
  v2 = sub_2664(&qword_C2600, &unk_93370);
  sub_65E4(v2);
  v4 = *(v3 + 80);

  return sub_68D18(a1);
}

uint64_t sub_698D4(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a2(0);
  v11[3] = v7;
  v11[4] = sub_69A58(a3, 255, a4);
  v8 = sub_E5DC(v11);
  (*(*(v7 - 8) + 32))(v8, a1, v7);
  sub_8C02C();
  sub_8C01C();
  v9 = sub_8CFFC();
  sub_2714(v11);
  return v9;
}

unint64_t sub_699CC()
{
  result = qword_C2620;
  if (!qword_C2620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2620);
  }

  return result;
}

uint64_t sub_69A58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_69AA0()
{
  v2 = v0[116];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[111];
  v6 = v0[107];
  v7 = v0[104];
}

void sub_69AE0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_69B00(uint64_t a1)
{
  sub_6270(v2, 0, 1, a1);

  return sub_2714((v1 + 16));
}

uint64_t sub_69B38()
{
  type metadata accessor for SendAnnouncementPreflightGuardFlow();
  sub_69FB0();
  return sub_8B34C();
}

uint64_t sub_69BA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_69BC8, 0, 0);
}

uint64_t sub_69BC8()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementPreflightGuardFlow bypassing preflight check. Guard flow passed.", v4, 2u);
  }

  v5 = v0[2];
  v6 = v0[3];

  *(v6 + 16) = 1;
  sub_8B7FC();
  v7 = v0[1];

  return v7();
}

uint64_t sub_69CF0()
{
  sub_2714((v0 + 24));
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_sendAnnouncementCATsSimple);

  return v0;
}

uint64_t sub_69D68()
{
  sub_69CF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementPreflightGuardFlow()
{
  result = qword_C2C10;
  if (!qword_C2C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69E14()
{
  result = sub_8BDBC();
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

uint64_t sub_69EE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_96FC;

  return sub_69BA8(a1);
}

BOOL sub_69F84@<W0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_69B98();
  *a1 = result;
  return result;
}

unint64_t sub_69FB0()
{
  result = qword_C27D0;
  if (!qword_C27D0)
  {
    type metadata accessor for SendAnnouncementPreflightGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C27D0);
  }

  return result;
}

uint64_t type metadata accessor for SendAnnouncementRCHFlowDelegate()
{
  result = qword_C2D08;
  if (!qword_C2D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_6A0AC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_8D2EC();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v12[0] = *(i - 1);
      v12[1] = v10;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_8D2CC();
      v11 = v14[2];
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_6A1B4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_8CEAC();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_6A228(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2664(&qword_C2D60, &qword_934D8);
    v2 = sub_8D37C();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v32[0] = *v12;
    *(&v32[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_367F4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_367F4(v31, v32);
    result = sub_8D21C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_367F4(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_6A4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = sub_2670C(a3, a4);
  if ((v12 - 2) >= 2)
  {
    if (v12)
    {
      v15 = &enum case for UnsupportedValueBehavior.punchOutWithCommand(_:);
    }

    else
    {
      v15 = &enum case for UnsupportedValueBehavior.dialogAndStop(_:);
    }

    v16 = *v15;
    v17 = sub_8BCCC();
    sub_4BBA4(v17);
    v20 = *(v19 + 104);

    return v20(a6, v16, v18);
  }

  else
  {
    sub_2664(&qword_C2D58, &unk_934C8);
    v13 = sub_8B9FC();

    return v13(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_6A61C(uint64_t a1, void *a2)
{

  if (!sub_2670C(a1, a2))
  {
    return 1;
  }

  sub_2664(&qword_C2D58, &unk_934C8);
  v4 = sub_8B9FC();

  return v4(a1, a2);
}

uint64_t sub_6A6C4()
{
  v0 = sub_8CA2C();
  v1 = sub_65E4(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_16854();
  v4 = sub_8BCEC();
  v5 = sub_65E4(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  v10 = v9 - v8;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  type metadata accessor for SendAnnouncementCATs();
  sub_8CA1C();
  v11 = sub_8C92C();
  type metadata accessor for AppInfoBuilder();
  v12 = swift_allocObject();
  return sub_6BC6C(v10, v15, v14, v11, v12);
}

uint64_t sub_6A7C8()
{
  v0 = sub_2664(&qword_C2790, &unk_934F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_8BBFC();
}

uint64_t sub_6A80C()
{
  v0 = sub_6A6C4();
  sub_8BE1C();
  v1 = type metadata accessor for SendAnnouncementAceViewProvider();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_49A48(v0, v5);
}

uint64_t sub_6A864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8BE0C();
  v5 = sub_3488(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_16854();
  v12 = (v11 - v10);
  v13 = sub_2664(&qword_BFDF0, qword_8E3A8);
  v14 = sub_65E4(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_8B47C();
  v20 = sub_3488(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_16854();
  v35 = v26 - v25;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v27 = sub_8CD0C();
  sub_33F4(v27, qword_C3DF8);
  v28 = sub_8CCEC();
  v29 = sub_8D11C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v34 = v7;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#SendAnnouncementRCHFlowDelegate makeConfirmationStateFromParse", v30, 2u);
    v7 = v34;
    sub_E890();
  }

  (*(v7 + 16))(v12, a1, v4);
  sub_72B5C(v12, v18);
  v31 = type metadata accessor for SmsNLIntent();
  if (sub_3364(v18, 1, v31) == 1)
  {
    sub_4BAB0(v18, &qword_BFDF0, qword_8E3A8);
    return (*(v22 + 104))(a2, enum case for SiriKitConfirmationState.unset(_:), v19);
  }

  else
  {
    v33 = v35;
    sub_73158(v35);
    sub_342C(v18);
    return (*(v22 + 32))(a2, v33, v19);
  }
}

uint64_t sub_6AB4C(uint64_t a1, void *a2)
{
  v84 = a2;
  v4 = sub_2664(&qword_C27B0, &unk_934E0);
  v5 = sub_65E4(v4);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - v11;
  __chkstk_darwin(v10);
  v14 = &v78 - v13;
  v15 = sub_8BE0C();
  v16 = sub_3488(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_16854();
  v23 = v22 - v21;
  v24 = sub_8C71C();
  v25 = sub_3488(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_16854();
  v32 = v31 - v30;
  (*(v18 + 16))(v23, a1, v15);
  if ((*(v18 + 88))(v23, v15) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v82 = v2;
    (*(v18 + 96))(v23, v15);
    v33 = *(v23 + *(sub_2664(&qword_C0E28, &qword_938D0) + 48));
    (*(v27 + 32))(v32, v23, v24);
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v34 = sub_8CD0C();
    v35 = sub_33F4(v34, qword_C3DF8);

    v81 = v35;
    v36 = sub_8CCEC();
    v37 = sub_8D11C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_1D358();
      v79 = v32;
      v39 = v27;
      v40 = v38;
      v41 = v33;
      v42 = v24;
      v43 = v14;
      v44 = swift_slowAlloc();
      *v40 = 138412290;
      v45 = sub_8BDFC();
      *(v40 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&dword_0, v36, v37, "#SendAnnouncementRCHFlowDelegate Making a siriKit intent from parse: %@.", v40, 0xCu);
      sub_4BAB0(v44, &qword_BFF40, &unk_90F70);
      v14 = v43;
      v24 = v42;
      v33 = v41;
      sub_E890();
      v27 = v39;
      v32 = v79;
      sub_E890();
    }

    v46 = sub_8BDFC();
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v80 = v33;
      v49 = v84;
      v84 = v48;
      sub_64128(v49, v48);
      v50 = sub_622C((v82 + qword_C2CF8), *(v82 + qword_C2CF8 + 24));
      v51 = type metadata accessor for SharedGlobals();
      sub_59EB4(v50 + *(v51 + 28), v12);
      v52 = sub_8B78C();
      sub_6C4CC(v12);
      if (v53)
      {
        sub_8C7CC();
        if (sub_8C7BC())
        {
          sub_8C79C();

          sub_8BAAC();

          v54 = 0;
        }

        else
        {
          v54 = 1;
        }

        v58 = v83;
        sub_6270(v14, v54, 1, v52);
        sub_6C4CC(v12);
        if (!v53)
        {
          sub_4BAB0(v12, &qword_C27B0, &unk_934E0);
        }
      }

      else
      {
        sub_4BBA4(v52);
        (*(v57 + 32))(v14, v12, v52);
        sub_6270(v14, 0, 1, v52);
        v58 = v83;
      }

      sub_59EB4(v14, v58);
      sub_6C4CC(v58);
      if (v53)
      {
        sub_4BAB0(v58, &qword_C27B0, &unk_934E0);
      }

      else
      {
        v59 = sub_8B77C();
        v61 = v60;
        sub_4BBA4(v52);
        (*(v62 + 8))(v58, v52);
        if (v61)
        {
          v83 = v46;

          v63 = sub_8CCEC();
          v64 = sub_8D11C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = sub_1D358();
            v66 = swift_slowAlloc();
            v79 = v32;
            v67 = v14;
            v68 = v66;
            v85[0] = v66;
            *v65 = 136315138;

            v69 = v27;
            v70 = sub_862D8(v59, v61, v85);

            *(v65 + 4) = v70;
            v27 = v69;
            sub_6C4AC(&dword_0, v71, v72, "#SendAnnouncementRCHFlowDelegate sharedUserID: %s");
            sub_2714(v68);
            v14 = v67;
            v32 = v79;
            sub_E890();
            sub_E890();
          }

          v46 = v83;
          v73 = v84;
          sub_6BC08(v59, v61, v84);
LABEL_27:
          sub_8B5BC();
          v56 = sub_61C18(v32, v73, v85);

          sub_2714(v85);
          sub_4BAB0(v14, &qword_C27B0, &unk_934E0);
          (*(v27 + 8))(v32, v24);
          return v56;
        }
      }

      v74 = sub_8CCEC();
      v75 = sub_8D11C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "#SendAnnouncementRCHFlowDelegate not sharedUserID was found", v76, 2u);
        sub_E890();
      }

      v73 = v84;
      goto LABEL_27;
    }

    (*(v27 + 8))(v32, v24);
  }

  else
  {
    (*(v18 + 8))(v23, v15);
  }

  sub_2664(&qword_C2D58, &unk_934C8);
  v55 = sub_8B9FC();
  return v55(a1, v84);
}

uint64_t sub_6B2C8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  v3 = sub_8BA1C();
  sub_4BBA4(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_6B338(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t *p_ivar_base_size, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = v7;

  if (sub_2670C(a3, p_ivar_base_size) != 1)
  {
    goto LABEL_38;
  }

  v66 = a1;
  v16 = sub_2D8DC();
  v17 = sub_6C594(v16);
  if (!v17)
  {

    if (qword_BF818 != -1)
    {
LABEL_43:
      sub_E754();
    }

    v39 = sub_8CD0C();
    sub_33F4(v39, qword_C3DF8);
    v40 = sub_8CCEC();
    v41 = sub_8D12C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "Disambiguating items were not of type INHomeFilter", v42, 2u);
      sub_E890();
    }

    goto LABEL_37;
  }

  v18 = v17;
  v62 = a6;
  v58 = a3;
  v59 = p_ivar_base_size;
  v60 = a5;
  v61 = v8;
  v64 = a7;
  a3 = sub_2D3B4(v17);
  a7 = 0;
  a6 = v18 & 0xC000000000000001;
  a5 = v18 & 0xFFFFFFFFFFFFFF8;
  v67 = _swiftEmptyArrayStorage;
  p_ivar_base_size = &SKFlowFactory.ivar_base_size;
  v65 = a2;
  while (a3 != a7)
  {
    if (a6)
    {
      v19 = sub_8D27C();
    }

    else
    {
      if (a7 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_42;
      }

      v19 = *(v18 + 8 * a7 + 32);
    }

    v20 = v19;
    v21 = a7 + 1;
    if (__OFADD__(a7, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v22 = [v19 home];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 spokenPhrase];

      v25 = sub_8CEDC();
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_75D80(0, *(v67 + 2) + 1, 1, v67);
      }

      v29 = *(v67 + 2);
      v28 = *(v67 + 3);
      if (v29 >= v28 >> 1)
      {
        v67 = sub_75D80((v28 > 1), v29 + 1, 1, v67);
      }

      *(v67 + 2) = v29 + 1;
      v30 = &v67[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      a7 = v21;
      a2 = v65;
    }

    else
    {

      ++a7;
    }
  }

  if (*(v67 + 2) < 2uLL)
  {

    a6 = v62;
    if (qword_BF818 != -1)
    {
      sub_E754();
    }

    v31 = sub_8CD0C();
    sub_33F4(v31, qword_C3DF8);

    v32 = sub_8CCEC();
    v33 = sub_8D12C();

    a5 = v60;
    p_ivar_base_size = v59;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1D358();
      v63 = swift_slowAlloc();
      v68 = v63;
      *v34 = 136315138;
      v35 = sub_8D05C();
      v37 = v36;

      v38 = sub_862D8(v35, v37, &v68);
      a2 = v65;

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v32, v33, "Error disambiguating between no homes or single home : %s", v34, 0xCu);
      sub_2714(v63);
      sub_E890();
      sub_E890();
    }

    else
    {
    }

    a7 = v64;
    a3 = v58;
LABEL_37:
    a1 = v66;
LABEL_38:
    sub_2664(&qword_C2D58, &unk_934C8);
    v57 = sub_8B9FC();

    return v57(a1, a2, a3, p_ivar_base_size, a5, a6, a7);
  }

  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v43 = sub_8CD0C();
  sub_33F4(v43, qword_C3DF8);

  v44 = sub_8CCEC();
  v45 = sub_8D11C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = sub_1D358();
    v47 = swift_slowAlloc();
    v68 = v47;
    *v46 = 136315138;
    v48 = sub_8D05C();
    v50 = sub_862D8(v48, v49, &v68);

    *(v46 + 4) = v50;
    sub_6C4AC(&dword_0, v51, v52, "Disambiguating between homes : %s");
    sub_2714(v47);
    sub_E890();
    sub_E890();
  }

  if (qword_BF7E8 != -1)
  {
    swift_once();
  }

  sub_6C0BC(v67, qword_C3DB0, v61);

  v53 = sub_8B4DC();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  sub_8B4CC();
  v62();
}

uint64_t sub_6B950@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_8B54C();
  sub_8B52C();
  v7 = sub_8B53C();

  v8 = sub_8BBEC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_8BBDC();
  v11 = a2[4];
  sub_622C(a2, a2[3]);
  sub_8C16C();
  sub_8BBBC();

  sub_8BBCC();

  sub_2664(&qword_C0690, &unk_8EBF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = v7;
  v13 = sub_8B4AC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = sub_8B49C();
  *a3 = result;
  return result;
}

uint64_t sub_6BB14()
{
  v0 = sub_8BA0C();
  v1 = qword_C2CF0;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C2CF8));

  return _swift_deallocClassInstance(v0, 97, 7);
}

void sub_6BB88(uint64_t a1, void *a2)
{
  isa = sub_8CE3C().super.isa;

  [a2 setUserData:isa];
}

void sub_6BC08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setSharedUserID:v4];
}

uint64_t sub_6BC6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39 = a2;
  v40 = a1;
  v8 = sub_2664(&qword_C0660, &qword_92260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v38 - v10;
  v12 = sub_8B02C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppInfoBuilder();
  v44[3] = v17;
  v44[4] = &off_BA8A8;
  v44[0] = a5;
  v18 = type metadata accessor for SendAnnouncementTemplatingService();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = sub_E58C(v44, v17);
  v23 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v43[3] = v17;
  v43[4] = &off_BA8A8;
  v43[0] = v27;
  sub_59E54(a3, v21 + qword_C2D68);
  v38[2] = a4;
  *(v21 + qword_C2D78) = a4;
  sub_59E54(v43, v21 + qword_C2D70);
  v38[1] = "mentRCHFlowDelegate";
  v28 = a3[4];
  sub_622C(a3, a3[3]);

  sub_8B5DC();
  v29 = sub_8B01C();
  v31 = v30;
  (*(v13 + 8))(v16, v12);
  v42[0] = v29;
  v42[1] = v31;
  v41[0] = 45;
  v41[1] = 0xE100000000000000;
  v42[5] = 95;
  v42[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  v32 = v39;
  sub_59E54(v39, v42);
  sub_59E54(a3, v41);
  v33 = sub_8BCEC();
  v34 = *(v33 - 8);
  v35 = v40;
  (*(v34 + 16))(v11, v40, v33);
  sub_6270(v11, 0, 1, v33);
  v36 = sub_8BA5C();

  sub_2714(v32);
  (*(v34 + 8))(v35, v33);
  sub_2714(v43);
  sub_2714(a3);
  sub_2714(v44);
  return v36;
}

void *sub_6C0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[3] = sub_2664(&qword_C07E0, &qword_8FCB0);
  v6 = sub_228D8();
  v35[4] = v6;
  v35[0] = a2;
  if (*(a3 + qword_C2D00) == 1)
  {
    v7 = qword_BF818;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_8CD0C();
    sub_33F4(v8, qword_C3DF8);
    v9 = sub_8CCEC();
    v10 = sub_8D11C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "#SendAnnouncementRCHFlowDelegate isDirectInvocation in SiriX path", v11, 2u);
    }

    v12 = *(a1 + 16);
    v13 = _swiftEmptyArrayStorage;
    if (v12)
    {
      v34 = _swiftEmptyArrayStorage;
      sub_8D2EC();
      v33 = sub_6C468();
      sub_8B54C();
      v14 = 0;
      v15 = (a1 + 40);
      v32 = xmmword_8E3F0;
      v31 = xmmword_8E860;
      do
      {
        v16 = v14 + 1;
        v18 = *(v15 - 1);
        v17 = *v15;
        sub_2664(&qword_C25C0, &unk_926F0);
        inited = swift_initStackObject();
        *(inited + 16) = v32;
        *(inited + 32) = 0x7865646E69;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v14;

        v20 = sub_8CE6C();
        v21 = sub_6A1B4();
        v22 = sub_6A228(v20);

        sub_6BB88(v22, v21);
        sub_8B52C();
        v23 = sub_8B53C();

        sub_2664(&qword_C0690, &unk_8EBF0);
        v24 = swift_allocObject();
        *(v24 + 16) = v31;
        *(v24 + 32) = v23;
        v25 = sub_8B4AC();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        sub_8B48C();

        sub_8D2CC();
        v28 = v34[2];
        sub_8D2FC();
        sub_8D30C();
        sub_8D2DC();
        v15 += 2;
        v14 = v16;
      }

      while (v12 != v16);
      v13 = v34;
    }
  }

  else
  {
    __chkstk_darwin(v6);
    v30[2] = v35;

    v13 = sub_6A0AC(sub_6C448, v30, a1);
  }

  sub_2714(v35);
  return v13;
}

unint64_t sub_6C468()
{
  result = qword_C25B8;
  if (!qword_C25B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C25B8);
  }

  return result;
}

void sub_6C4AC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t type metadata accessor for SendAnnouncementTemplatingService()
{
  result = qword_C2D80;
  if (!qword_C2D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_6C594(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_8D2EC();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_1412C(v3, v6);
    sub_36598();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_8D2CC();
    v4 = v7[2];
    sub_8D2FC();
    sub_8D30C();
    sub_8D2DC();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_6C680(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v7 = sub_8CD0C();
  sub_33F4(v7, qword_C3DF8);
  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Making an intent handled dialog that indicates an announcement has been sent.", v10, 2u);
  }

  v11 = [a2 isReply];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 BOOLValue];

    if (a3)
    {
LABEL_7:
      sub_2D438();
      v15 = v14;

      sub_2C8E0(v16);
      v17 = *(v15 + 16);

      v18 = v17 != 0;
      sub_2D444();
      sub_2C8E0(v19);
      sub_2D450();
      sub_2C8E0(v20);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v18 = 0;
LABEL_10:
  v21 = *(v4 + qword_C2D78);
  sub_4B2B0(_swiftEmptyArrayStorage, v18, v13);
}

uint64_t sub_6C858(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    v13 = sub_8BA6C();

    return v13(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v15 = *(v6 + qword_C2D78);
    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a6;

    sub_4B588();
  }
}

uint64_t sub_6C994(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_8BABC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2664(&qword_C0680, &unk_8ED30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  *v7 = sub_8CEDC();
  v7[1] = v12;
  (*(v4 + 104))(v7, enum case for BehaviorAfterSpeaking.dingAndListen(_:), v3);
  sub_8D55C();
  (*(v4 + 8))(v7, v3);
  a2(v11);
  return sub_92C0(v11, &qword_C0680, &unk_8ED30);
}

void sub_6CB38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = sub_8C99C();
  v56 = sub_3488(v15);
  v57 = v16;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v56);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v49 - v21;

  if (sub_2670C(a2, a3) == 1)
  {
    v23 = sub_2D8DC();
    v24 = sub_6C594(v23);

    if (v24)
    {
      v49 = a7;
      v50 = v9;
      v51 = a9;
      v52 = a8;
      v25 = sub_2D3B4(v24);
      v26 = 0;
      v10 = v24 & 0xC000000000000001;
      v53 = (v57 + 32);
      v55 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v25 == v26)
        {

          v45 = v50;
          v46 = *(v50 + qword_C2D78);
          v47 = sub_2CD3C();
          sub_8C9FC();
          sub_E528(v45 + qword_C2D68, v58);
          v48 = sub_8C9EC();
          sub_4AE54(v47, v55, v48);

          goto LABEL_22;
        }

        if (v10)
        {
          v27 = sub_8D27C();
        }

        else
        {
          if (v26 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_24;
          }

          v27 = *(v24 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v30 = [v27 home];
        if (v30)
        {
          v31 = v30;
          v32 = v54;
          sub_8D13C();

          v33 = *v53;
          (*v53)(v22, v32, v56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = *(v55 + 2);
            sub_763A8();
            v55 = v38;
          }

          v34 = *(v55 + 2);
          if (v34 >= *(v55 + 3) >> 1)
          {
            sub_763A8();
            v55 = v39;
          }

          v36 = v55;
          v35 = v56;
          *(v55 + 2) = v34 + 1;
          v33(&v36[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v34], v22, v35);
          v26 = v29;
        }

        else
        {

          ++v26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_BF818 != -1)
  {
LABEL_25:
    sub_E754();
  }

  v40 = sub_8CD0C();
  sub_33F4(v40, qword_C3DF8);
  v41 = sub_8CCEC();
  v42 = sub_8D12C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Disambiguating items were not of type INHomeFilter or incorrect slot set", v43, 2u);
  }

  v44 = *(v10 + qword_C2D78);
  sub_4B288();
LABEL_22:
  sub_115FC();
}

void sub_6CF18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v10 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25[-v12 - 8];

  v14 = sub_2670C(a2, a3);
  if ((v14 - 2) < 2)
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    sub_8BA6C();
    sub_115FC();

    __asm { BRAA            X8, X16 }
  }

  if (!v14)
  {
    if ([a4 unsupportedReason] == &dword_0 + 1)
    {
      sub_6D8B4(qword_C2D78);
      sub_4B5B0();
    }

    goto LABEL_16;
  }

  v17 = [a4 unsupportedReason];
  if (v17 == &dword_4)
  {
    v23 = *(v6 + qword_C2D78);
    sub_4B0E0();
    goto LABEL_16;
  }

  if (v17 == (&dword_0 + 2))
  {
    v20 = *(v6 + qword_C2D78);
    sub_2CA2C();
    sub_75920(v21, v13);

    sub_8C9FC();
    sub_E528(v6 + qword_C2D68, v25);
    v22 = sub_8C9EC();
    sub_4B5D8(v13, v22);

    sub_92C0(v13, &qword_C1CE0, &unk_91EC0);
    goto LABEL_16;
  }

  if (v17 != (&dword_0 + 1))
  {
LABEL_16:
    sub_115FC();
    return;
  }

  v18 = *(v6 + qword_C2D78);
  sub_2CCA0();
  sub_4B7B0();
  sub_115FC();
}

char *sub_6D1CC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    v14 = sub_8BA6C();

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    result = [a4 confirmationReason];
    if (result == &dword_0 + 1)
    {
      v16 = sub_6D8D8(qword_C2D78);
      sub_2CA20();
      v18 = *(v17 + 16);

      sub_4AD50(v16, v18 != 0);
    }
  }

  return result;
}

uint64_t sub_6D32C(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  switch([a3 code])
  {
    case 6uLL:
      sub_6D8D8(qword_C2D78);
      sub_6D8C4();
      sub_4B18C();
      goto LABEL_8;
    case 7uLL:
      sub_6D8D8(qword_C2D78);
      sub_6D8C4();
      sub_4B0E0();
      goto LABEL_8;
    case 8uLL:
      sub_6D8B4(qword_C2D78);
      return sub_4B260();
    case 9uLL:
      sub_6D8D8(qword_C2D78);
      sub_6D8C4();
      sub_4B00C();
LABEL_8:

      break;
    case 0xAuLL:
      sub_6D8B4(qword_C2D78);
      result = sub_4AF94();
      break;
    case 0xBuLL:
      sub_6D8B4(qword_C2D78);
      result = sub_4B0B8();
      break;
    case 0xCuLL:
      sub_6D8B4(qword_C2D78);
      result = sub_4B238();
      break;
    case 0xDuLL:
      sub_6D8B4(qword_C2D78);
      result = sub_4AFBC();
      break;
    case 0xEuLL:
      sub_6D8B4(qword_C2D78);
      result = sub_4AFE4();
      break;
    default:
      sub_2664(&qword_C2DD0, &qword_93558);
      v11 = sub_8BA6C();

      result = v11(a1, a2, a3, a4, a5);
      break;
  }

  return result;
}

void sub_6D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a2;
  v25[1] = a3;
  v5 = sub_8B02C();
  v6 = sub_3488(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664(&qword_C1CE0, &unk_91EC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v25 - v15;
  v17 = sub_622C((v3 + qword_C2D70), *(v3 + qword_C2D70 + 24));
  v18 = *(v3 + qword_C2D68 + 32);
  sub_622C((v3 + qword_C2D68), *(v3 + qword_C2D68 + 24));
  sub_8B5DC();
  v19 = *v17;
  sub_2D988();
  v21 = v20;
  (*(v8 + 8))(v12, v5);
  if (v21)
  {
    sub_8C97C();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_8C99C();
  sub_6270(v16, v22, 1, v23);
  v24 = *(v4 + qword_C2D78);
  sub_4B3F4(v16);
  sub_92C0(v16, &qword_C1CE0, &unk_91EC0);
  sub_115FC();
}

uint64_t sub_6D794()
{
  sub_2714((v0 + qword_C2D68));
  sub_2714((v0 + qword_C2D70));
  v1 = *(v0 + qword_C2D78);
}

uint64_t sub_6D7E4()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C2D68));
  sub_2714((v0 + qword_C2D70));
  v1 = *(v0 + qword_C2D78);

  return v0;
}

uint64_t sub_6D83C()
{
  v0 = sub_6D7E4();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_6D874()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_6D8D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_2CCA0();
}

uint64_t sub_6D8F0()
{
  sub_6608();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_8BA3C();
  v1[13] = v4;
  sub_115AC(v4);
  v1[14] = v5;
  v7 = *(v6 + 64);
  v1[15] = sub_E83C();
  v8 = sub_2664(&qword_C25C8, &qword_92700);
  v1[16] = v8;
  sub_115AC(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = sub_E83C();
  v12 = sub_44348();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_6D9F0()
{
  v55 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754();
  }

  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[11];
  v6 = sub_8CD0C();
  v0[19] = sub_33F4(v6, qword_C3DF8);
  v7 = sub_712D4();
  v8(v7);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[16];
  if (v11)
  {
    v15 = v0[14];
    v16 = v0[15];
    v51 = v0[13];
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v17 = 136315138;
    v52 = v10;
    sub_8BD2C();
    sub_8BA2C();
    v18 = sub_712C0();
    v19(v18, v51);
    v20 = sub_711E0();
    v21(v20);
    v22 = sub_862D8(v16, v1, &v54);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v9, v52, "#SendAnnouncementIntentHandledStrategy makeUnsupportedValueOutput for %s", v17, 0xCu);
    sub_2714(v53);
    sub_E890();
    sub_E890();
  }

  else
  {

    v23 = sub_711E0();
    v24(v23);
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[11];
  sub_8BD2C();
  v30 = sub_8BA2C();
  v32 = v31;
  (*(v28 + 8))(v26, v27);
  v33 = sub_2670C(v30, v32);
  if ((v33 - 2) >= 2)
  {
    if (v33)
    {
      v48 = swift_task_alloc();
      v0[20] = v48;
      *v48 = v0;
      v48[1] = sub_6DD68;
      v49 = v0[12];
      sub_71210(v0[11]);
      sub_7122C();

      return sub_6FE0C();
    }

    else
    {
      v45 = swift_task_alloc();
      v0[21] = v45;
      *v45 = v0;
      v45[1] = sub_6E030;
      v46 = v0[12];
      sub_71210(v0[11]);
      sub_7122C();

      return sub_70788();
    }
  }

  else
  {
    v34 = v0[19];
    v35 = sub_8CCEC();
    v36 = sub_8D11C();
    if (sub_443A4(v36))
    {
      v37 = sub_E8E0();
      sub_1D274(v37);
      sub_3D9B8(&dword_0, v38, v39, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v40 = v0[12];

    v41 = *(v40 + 56);
    v42 = swift_task_alloc();
    v0[26] = v42;
    *v42 = v0;
    sub_71188(v42);
    sub_7122C();

    return sub_4C878();
  }
}

uint64_t sub_6DD68()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 160);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[18];
    v11 = v3[15];

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_6DEAC()
{
  sub_71288();
  sub_71264();
  v1 = v0[3];
  v0[22] = v1;
  if (v1)
  {
    v2 = v0[12];
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    v0[23] = v4;
    v0[9] = v4;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v0[24] = v5;
    sub_712A0(v5, xmmword_8E860);
    v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v7 = v1;
    swift_task_alloc();
    sub_44358();
    v0[25] = v8;
    *v8 = v9;
    sub_711AC(v8);
    sub_711D0();
    sub_5A0BC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v0[19];
    v17 = sub_8CCEC();
    v18 = sub_8D11C();
    if (sub_443A4(v18))
    {
      v19 = sub_E8E0();
      sub_1D274(v19);
      sub_3D9B8(&dword_0, v20, v21, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v22 = v0[12];

    v23 = *(v22 + 56);
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    sub_71188(v24);
    sub_5A0BC();

    return sub_4C878();
  }
}

uint64_t sub_6E030()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 168);
  v8 = *v1;
  sub_E6F8();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[18];
    v11 = v3[15];

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_6E174()
{
  sub_71288();
  sub_71264();
  v1 = v0[6];
  v0[22] = v1;
  if (v1)
  {
    v2 = v0[12];
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    v0[23] = v4;
    v0[9] = v4;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464();
    v0[24] = v5;
    sub_712A0(v5, xmmword_8E860);
    v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v7 = v1;
    swift_task_alloc();
    sub_44358();
    v0[25] = v8;
    *v8 = v9;
    sub_711AC(v8);
    sub_711D0();
    sub_5A0BC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v0[19];
    v17 = sub_8CCEC();
    v18 = sub_8D11C();
    if (sub_443A4(v18))
    {
      v19 = sub_E8E0();
      sub_1D274(v19);
      sub_3D9B8(&dword_0, v20, v21, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v22 = v0[12];

    v23 = *(v22 + 56);
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    sub_71188(v24);
    sub_5A0BC();

    return sub_4C878();
  }
}

uint64_t sub_6E2F8()
{
  sub_6608();
  sub_E884();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[23];
  v5 = *v0;
  sub_E6F8();
  *v6 = v5;

  v7 = sub_44348();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6E414()
{
  sub_6608();

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  sub_65A0();

  return v3();
}

uint64_t sub_6E484()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  sub_E6F8();
  *v10 = v9;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6E590()
{
  sub_71288();
  sub_71264();
  v1 = v0[28];
  v2 = v0[12];
  v3 = sub_8B8FC();
  sub_60BD8(v3);
  v4 = sub_8B8EC();
  v0[29] = v4;
  v0[8] = v4;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464();
  v0[30] = v5;
  sub_712A0(v5, xmmword_8E860);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v7 = v1;
  swift_task_alloc();
  sub_44358();
  v0[31] = v8;
  *v8 = v9;
  v8[1] = sub_6E698;
  v10 = v0[10];
  sub_711D0();
  sub_5A0BC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}