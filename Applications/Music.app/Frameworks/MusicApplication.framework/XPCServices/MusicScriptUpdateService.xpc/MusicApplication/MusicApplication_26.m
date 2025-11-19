uint64_t sub_100290358()
{
  v0 = sub_1004BC114();
  v4 = sub_1002903D8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1002903D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1004BD194();
    if (!v9 || (v10 = v9, v11 = sub_10028FD58(v9, 0), v12 = sub_100290530(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1004BBF74();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1004BBF74();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1004BD4C4();
LABEL_4:

  return sub_1004BBF74();
}

unint64_t sub_100290530(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100222480(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1004BC074();
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
          result = sub_1004BD4C4();
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

    result = sub_100222480(v12, a6, a7);
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

    result = sub_1004BC054();
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

uint64_t sub_100290750(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_1004B6B04();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  sub_1004BC474();
  v2[29] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v2[30] = v5;
  v2[31] = v6;

  return _swift_task_switch(sub_100290880, v5, v6);
}

id sub_100290880()
{
  v86 = v0;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560);
  UnfairLock.locked<A>(_:)(sub_1000F3384);
  v1 = v0[22];
  v0[32] = v1;
  if (!v1)
  {

    sub_10008A2E8();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 2;
    swift_willThrow();
LABEL_13:

    v22 = v0[1];
LABEL_14:

    return v22();
  }

  sub_100003ABC(&qword_100601318);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  v3 = ICURLBagKeyMusicCommon;
  *(inited + 32) = ICURLBagKeyMusicCommon;
  v4 = qword_100600638;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100609288;
  *(inited + 40) = qword_100609288;
  v7 = qword_100600640;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_100609290;
  *(inited + 48) = qword_100609290;
  v10 = v9;
  v11 = sub_10028D0D4(inited);
  v83 = v13;
  v84 = v1;
  v82 = v11;
  swift_setDeallocating();
  type metadata accessor for ICURLBagKey(0);
  swift_arrayDestroy();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1004C5070;
  *(v14 + 32) = v5;
  *(v14 + 40) = v8;
  v15 = qword_100600648;
  v16 = v5;
  v17 = v8;
  if (v15 != -1)
  {
    swift_once();
  }

  v18 = qword_100609298;
  *(v14 + 48) = qword_100609298;
  v19 = v18;
  v20 = sub_10028D0D4(v14);
  v0[33] = v21;
  v24 = v20;
  v25 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = HIBYTE(v25) & 0xF;
  v27 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v82;
  if (!v28)
  {
LABEL_79:

    sub_10008A2E8();
    swift_allocError();
    *v50 = v24;
    *(v50 + 8) = v25;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {

    v32 = sub_10028FDCC(v24, v25, 10);
    v52 = v51;

    v29 = v82;
    if (v52)
    {
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  if ((v25 & 0x2000000000000000) != 0)
  {
    v85[0] = v24;
    v85[1] = v25 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v26)
      {
        if (--v26)
        {
          v32 = 0;
          v42 = v85 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_107:
      __break(1u);
    }

    if (v24 != 45)
    {
      if (v26)
      {
        v32 = 0;
        v47 = v85;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v26)
    {
      if (--v26)
      {
        v32 = 0;
        v36 = v85 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v30 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = sub_1004BD4C4();
    v29 = v82;
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v39 = v30 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_77;
            }

            v41 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_77;
            }

            ++v39;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_77;
    }

    goto LABEL_106;
  }

  if (v31 == 45)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v33 = v30 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_77;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_77;
            }

            ++v33;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_69:
        LOBYTE(v26) = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v27)
  {
    v32 = 0;
    if (v30)
    {
      while (1)
      {
        v45 = *v30 - 48;
        if (v45 > 9)
        {
          goto LABEL_77;
        }

        v46 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_77;
        }

        v32 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_77;
        }

        ++v30;
        if (!--v27)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_77:
  v32 = 0;
  LOBYTE(v26) = 1;
LABEL_78:
  if (v26)
  {
    goto LABEL_79;
  }

LABEL_81:
  if (static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v29, v83))
  {

    v53 = swift_task_alloc();
    v0[34] = v53;
    *v53 = v0;
    v53[1] = sub_1002913D0;
    v54 = v0[23];

    return sub_10028D49C(v54);
  }

  else
  {
    v55 = v0[24];
    if (v55)
    {
      v56 = v0[28];
      v57 = v0[25];
      v58 = v0[26];
      (*(v58 + 16))(v56, v0[23], v57);
      v59 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v60 = swift_allocObject();
      (*(v58 + 32))(v60 + v59, v56, v57);
      v61 = objc_allocWithZone(_s23StoreProductCoordinatorCMa());

      v62 = v55;
      v63 = sub_10028EBB4(v82, v83, v32, &unk_1004D8AE0, v60);
      v64 = sub_10028F3D4();
      result = [v64 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v65 = result;

      v66 = [objc_opt_self() systemBlueColor];
      [v65 setTintColor:v66];

      v67 = v62;
      v68 = [v67 presentedViewController];
      v69 = v67;
      if (v68)
      {
        v70 = v67;
        do
        {
          v69 = v68;

          v68 = [v69 presentedViewController];
          v70 = v69;
        }

        while (v68);
      }

      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        v73 = swift_allocObject();
        *(v73 + 16) = v67;
        *(v73 + 24) = v64;
        v0[20] = sub_100291D38;
        v0[21] = v73;
        v0[16] = _NSConcreteStackBlock;
        v0[17] = 1107296256;
        v0[18] = sub_1000D6C80;
        v0[19] = &unk_1005BD400;
        v74 = _Block_copy(v0 + 16);
        v75 = v67;
        v76 = v64;

        [v72 dismissViewControllerAnimated:1 completion:v74];

        _Block_release(v74);
      }

      else
      {
        v78 = v67;
        v79 = [v78 presentedViewController];
        v80 = v78;
        if (v79)
        {
          v81 = v78;
          while (1)
          {
            v80 = v79;
            if (([v79 canPresentViewControllers] & 1) == 0)
            {
              break;
            }

            v79 = [v80 presentedViewController];
            v81 = v80;
            if (!v79)
            {
              goto LABEL_101;
            }
          }

          v80 = v81;
        }

LABEL_101:
        [v80 presentViewController:v64 animated:1 completion:0];

        v69 = v80;
      }

      v22 = v0[1];
      goto LABEL_14;
    }

    v77 = swift_task_alloc();
    v0[36] = v77;
    *v77 = v0;
    v77[1] = sub_1002915D8;

    return sub_10028D870(v24, v25);
  }
}

uint64_t sub_1002913D0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_100291728;
  }

  else
  {
    v5 = sub_100291538;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100291538()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002915D8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1002917C8;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100291E9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100291728()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002917C8()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10029187C()
{
  result = qword_1006092A8;
  if (!qword_1006092A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006092A8);
  }

  return result;
}

uint64_t sub_100291914(uint64_t a1, int a2)
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

uint64_t sub_10029195C(uint64_t result, int a2, int a3)
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

uint64_t sub_1002919AC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1002919C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100291A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100291A58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100291A84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100291ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10028F594(a1, v4, v5, v7, v6);
}

uint64_t sub_100291BA4()
{
  v1 = sub_1004B6B04();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100291C2C()
{
  v2 = *(sub_1004B6B04() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000136EC;

  return sub_10028D49C(v0 + v3);
}

uint64_t sub_100291CF8()
{

  return swift_deallocObject();
}

uint64_t sub_100291D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100291D58()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100291D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100291DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_10028EEF8(a1, v4, v5, v6);
}

uint64_t sub_100291E9C()
{

  return sub_100291538();
}

uint64_t *AccessibilityString.dolbyAtmosLabel.unsafeMutableAddressor()
{
  if (qword_100600670 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAtmosLabel;
}

uint64_t *AccessibilityString.dolbyAudioLabel.unsafeMutableAddressor()
{
  if (qword_100600678 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAudioLabel;
}

uint64_t *AccessibilityString.losslessLabel.unsafeMutableAddressor()
{
  if (qword_100600688 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.losslessLabel;
}

uint64_t *AccessibilityString.hiResLosslessLabel.unsafeMutableAddressor()
{
  if (qword_100600680 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.hiResLosslessLabel;
}

uint64_t static String.socialDisconnectMessage(networkName:)(uint64_t a1, void *a2)
{
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v16[-v10];
  v12 = sub_1004BBDF4();
  __chkstk_darwin(v12 - 8);
  sub_1004BBDE4();
  v17._object = 0x8000000100506B90;
  v17._countAndFlagsBits = 0xD000000000000017;
  sub_1004BBDD4(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_1004BBDC4(v18);
  v19._object = 0x8000000100506BB0;
  v19._countAndFlagsBits = 0x1000000000000060;
  sub_1004BBDD4(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  sub_1004BBDC4(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  sub_1004BBDD4(v21);
  sub_1004BBE04();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v13 = qword_100617118;
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  (*(v6 + 8))(v11, v5);
  return v14;
}

uint64_t MPModelTVShow.localizedEpisodeCount.getter()
{
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = sub_1004BBDF4();
  __chkstk_darwin(v9 - 8);
  sub_1004BBDE4();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1004BBDD4(v14);
  v13[1] = [v0 episodesCount];
  sub_1004BBDB4();
  v15._countAndFlagsBits = 0x65646F7369704520;
  v15._object = 0xEB00000000297328;
  sub_1004BBDD4(v15);
  sub_1004BBE04();
  (*(v3 + 16))(v6, v8, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v3 + 8))(v8, v2);
  return v11;
}

void *AccessibilityString.albumArtworkLabel.unsafeMutableAddressor()
{
  if (qword_100600658 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.albumArtworkLabel;
}

uint64_t sub_100292614()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  sub_1004BBDA4();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  v11(v5, v8, v1);
  v13 = v12;
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.playlistArtworkLabel = v14;
  unk_100618A90 = v16;
  return result;
}

uint64_t *AccessibilityString.playlistArtworkLabel.unsafeMutableAddressor()
{
  if (qword_100600660 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playlistArtworkLabel;
}

void *AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor()
{
  if (qword_100600668 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.qrCodeButtonLabel;
}

uint64_t sub_100292AB4()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  sub_1004BBDA4();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  v11(v5, v8, v1);
  v13 = v12;
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.favoriteBadgeLabel = v14;
  unk_100618AF0 = v16;
  return result;
}

uint64_t *AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor()
{
  if (qword_100600690 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteBadgeLabel;
}

void *AccessibilityString.popularBadgeLabel.unsafeMutableAddressor()
{
  if (qword_100600698 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.popularBadgeLabel;
}

void *AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1006006A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.immersiveBadgeLabel;
}

void *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1006006A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.nowPlayingWafeformLabel;
}

void *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1006006B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.pausedWafeformLabel;
}

void *AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006006B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteButtonLabel;
}

void *AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006006C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.undoFavoriteButtonLabel;
}

void *AccessibilityString.playbackPlayButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006006C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackPlayButtonLabel;
}

uint64_t sub_1002931E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v25[0] = a5;
  v6 = sub_1004B6E64();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  sub_1004BBDA4();
  v17 = *(v8 + 16);
  v17(v14, v16, v7);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v18 = qword_100617118;
  v17(v11, v14, v7);
  v19 = v18;
  sub_1004B6DF4();
  v20 = sub_1004BBED4();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v14, v7);
  result = (v23)(v16, v7);
  *a4 = v20;
  *v25[0] = v22;
  return result;
}

void *AccessibilityString.playbackShuffleButtonLabel.unsafeMutableAddressor()
{
  if (qword_1006006D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackShuffleButtonLabel;
}

uint64_t sub_100293498(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

id NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter()
{
  isa = sub_1004BC3D4().super.super.isa;
  v2 = sub_1004BBE24();
  [v0 setValue:isa forKey:v2];
}

uint64_t NSUserDefaults.applicationScriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = 0xD000000000000014;
  v6 = 0x8000000100506C60;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v5, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v2 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v2 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v2)
      {
        sub_1004B6AC4();
      }
    }
  }

  else
  {
    sub_10011CF58(&v7);
  }

  v4 = sub_1004B6B04();
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    sub_10011CF58(&v2);
    return 0;
  }

  return result;
}

void (*NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = sub_1004BBE24();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_100293808;
}

void sub_100293808(void **a1)
{
  v1 = *a1;
  isa = sub_1004BC3D4().super.super.isa;
  v2 = sub_1004BBE24();
  [v1 setValue:isa forKey:v2];
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = sub_1004BC3D4().super.super.isa;
  v2 = sub_1004BBE24();
  [v0 setValue:isa forKey:v2];
}

void (*NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = sub_1004BBE24();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_1002939EC;
}

void sub_1002939EC(void **a1)
{
  v1 = *a1;
  isa = sub_1004BC3D4().super.super.isa;
  v2 = sub_1004BBE24();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

uint64_t *DeviceCapabilities.deviceFamily.unsafeMutableAddressor()
{
  if (qword_1006006E0 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceFamily;
}

uint64_t *DeviceCapabilities.deviceModel.unsafeMutableAddressor()
{
  if (qword_1006006F0 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceModel;
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (qword_1006006E8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

id sub_100293BE4(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100293C30()
{
  result = os_variant_has_internal_content();
  static DeviceCapabilities.isInternalInstall = result;
  return result;
}

uint64_t sub_100293CC8()
{
  result = sub_100293CE8();
  static DeviceCapabilities.deviceType = result;
  return result;
}

uint64_t sub_100293CE8()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber != 11)
      {
        if (deviceClassNumber == 3)
        {
          return 2;
        }

        return 0;
      }

      return 4;
    }

    else
    {
      if (deviceClassNumber != 1)
      {
        if (deviceClassNumber == 2)
        {
          return 3;
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (qword_1006006E8 != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void sub_100293DE8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = sub_1004BBE64();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100293E9C()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (qword_1006006F8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t sub_10029401C()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (qword_100600700 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void sub_1002940C0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (qword_100600708 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

uint64_t sub_10029417C(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  sub_100003ABC(&qword_1006093C8);
  swift_dynamicCast();
  v40 = sub_10003D3B8(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFString(0);
        sub_100294830();
        v11 = v10;
        v12 = v4;
        v13 = sub_1004B71E4();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFString(0);
        sub_100294830();
        v15 = v10;
        v16 = v5;
        v17 = sub_1004B71E4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = sub_1000347B8(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            sub_100039AFC();
            v28 = v38;
          }
        }

        else
        {
          sub_100035E8C(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_1000347B8(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFString(0);
          sub_100294830();
          v18 = v10;
          v19 = v44;
          v20 = sub_1004B71E4();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFString(0);
          sub_100294830();
          v21 = v10;
          v22 = v43;
          v23 = sub_1004B71E4();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFString(0);
          sub_100294830();
          v24 = v42;
          v25 = sub_1004B71E4();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1004BDAA4();
  __break(1u);
  return result;
}

unint64_t sub_100294728()
{
  result = qword_100609390;
  if (!qword_100609390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609390);
  }

  return result;
}

unint64_t sub_100294780()
{
  result = qword_100609398;
  if (!qword_100609398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609398);
  }

  return result;
}

unint64_t sub_100294830()
{
  result = qword_1006093D0;
  if (!qword_1006093D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006093D0);
  }

  return result;
}

id sub_100294890()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor()) init];
  static EnvironmentMonitor.shared = result;
  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (qword_100600710 != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (qword_100600710 != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  sub_100294ABC();
  sub_1004B7104();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

uint64_t sub_1002949E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100294ABC();
  sub_1004B7104();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
  return result;
}

unint64_t sub_100294ABC()
{
  result = qword_1006093E8;
  if (!qword_1006093E8)
  {
    type metadata accessor for EnvironmentMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006093E8);
  }

  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor()
{
  result = qword_100609438;
  if (!qword_100609438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100294B60(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100294ABC();
    sub_1004B70F4();
  }

  return result;
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  sub_100294ABC();
  sub_1004B7104();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

uint64_t sub_100294CC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100294ABC();
  sub_1004B7104();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
  return result;
}

uint64_t sub_100294D94(uint64_t result)
{
  if (qword_1004D8E80[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_1004D8E80[result])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100294ABC();
    sub_1004B70F4();
  }

  return result;
}

Swift::Int sub_100294EF0()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004D8E80[v1]);
  return sub_1004BDBF4();
}

Swift::Int sub_100294F78()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004D8E80[v1]);
  return sub_1004BDBF4();
}

uint64_t sub_100294FC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_100295098()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = sub_1004BC4B4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  sub_10001F35C(0, 0, v4, &unk_1004D8E60, v7);

  sub_1000247E4(v4);
  return v8;
}

uint64_t sub_10029520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100003ABC(&qword_1006014F0);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002952A8, 0, 0);
}

uint64_t sub_1002952A8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = sub_1004BC4B4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_10001F35C(0, 0, v1, &unk_1004D8E68, v6);

  sub_1000247E4(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_10001F35C(0, 0, v1, &unk_1004D8E70, v9);

  sub_1000247E4(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100295670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100295690, 0, 0);
}

uint64_t sub_100295690()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  sub_1004BC474();
  *(v0 + 40) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_100295738, v2, v1);
}

uint64_t sub_100295738()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_100294ABC();
  sub_1004B7104();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_1004B70F4();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002958B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v3;
  v11 = a1;
  v12 = v3;
  sub_10001F35C(0, 0, v8, a3, v10);

  return sub_1000247E4(v8);
}

uint64_t sub_1002959E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1004BC4B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_10001F35C(0, 0, v10, a5, v12);

  return sub_1000247E4(v10);
}

uint64_t sub_100295B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100295B3C, 0, 0);
}

uint64_t sub_100295B3C()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = sub_100295D5C(v1);
    sub_1004BC474();
    *(v0 + 40) = sub_1004BC464();
    v4 = sub_1004BC3E4();
    v6 = v5;
    v1 = sub_100295BF4;
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100295BF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_100294ABC();
  sub_1004B7104();

  if (qword_1004D8E80[v1] != qword_1004D8E80[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_1004B70F4();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100295D5C(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t sub_100295E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_100295670(a1, v4, v5, v7, v6);
}

uint64_t sub_100295F00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_100295B1C(a1, v4, v5, v7, v6);
}

unint64_t sub_100295FC4()
{
  result = qword_100609408;
  if (!qword_100609408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609408);
  }

  return result;
}

uint64_t sub_100296020()
{
  result = sub_1004B7144();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002960D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_100295B1C(a1, v4, v5, v7, v6);
}

uint64_t sub_100296194()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002961D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_10029520C(a1, v4, v5, v6);
}

uint64_t sub_100296288()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (qword_100600718 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 status];

  return (v0 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v5 = v12;
  if (v12)
  {
    v6 = [v12 verificationURL];

    if (v6)
    {
      sub_1004B6A94();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = sub_1004B6B04();
    (*(*(v10 - 8) + 56))(v4, v7, 1, v10);
    return sub_10000F708(v4, a1);
  }

  else
  {
    v8 = sub_1004B6B04();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100296630()
{
  type metadata accessor for ExplicitRestrictionsController();
  swift_allocObject();
  result = sub_1002966CC();
  static ExplicitRestrictionsController.shared = result;
  return result;
}

uint64_t static ExplicitRestrictionsController.shared.getter()
{
  if (qword_100600718 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1002966CC()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100609478);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_100003ABC(&qword_1006051A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  sub_1004B8564();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  sub_100003ABC(&qword_100609470);
  sub_1004B8564();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (qword_100600720 != -1)
  {
    swift_once();
  }

  v13 = *algn_100618BC8;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = &_swiftEmptyArrayStorage;

  sub_100296B38();
  sub_100296C3C();
  sub_100296D84();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, sub_100297FFC, v16);
  swift_beginAccess();

  sub_1004BC274();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, sub_100298004, v19);
  swift_beginAccess();

  sub_1004BC274();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();

  return v1;
}

void sub_100296B38()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_100297294(v1);
}

uint64_t sub_100296C3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v7 && (v1 = [v7 treatment], v7, v1 == 1))
  {
    if (qword_100600720 != -1)
    {
      swift_once();
    }

    v2 = &qword_100618BD0;
  }

  else
  {
    if (qword_100600720 != -1)
    {
      swift_once();
    }

    v2 = &static ExplicitRestrictionsController.symbols;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
}

void sub_100296D84()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  sub_1004B85B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v10)
  {
    if (v4)
    {
      sub_100297F78();
      v6 = v4;
      v7 = sub_1004BCFA4();

      if (v7)
      {

        v5 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_100600728 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_100609450 object:v1];

  v5 = v4;
LABEL_11:
}

uint64_t sub_100296FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100296B38();
  }

  return result;
}

uint64_t sub_100296FFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100296D84();
    sub_100296C3C();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_100297140@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

void sub_1002971C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_100297294(v0);
}

void sub_100297294(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_100600728 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_100609458 object:v1];
  }
}

uint64_t sub_1002973A4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605D10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100297528@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

void sub_1002975AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100297DA4(v1);
}

void sub_1002975FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100297DA4(v1);
}

uint64_t sub_100297668(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100609558);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_100609478);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (qword_100600720 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_100297894()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  *algn_100618BC8 = 0xA400000000000000;
  qword_100618BD0 = 11768802;
  unk_100618BD8 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (qword_100600720 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100003ABC(&qword_1006051A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100003ABC(&qword_100609478);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100003ABC(&qword_1006051A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100003ABC(&qword_100609478);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString sub_100297B38()
{
  qword_100609450 = sub_1004BBE24();
  result = sub_1004BBE24();
  qword_100609458 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController()
{
  result = qword_1006094B0;
  if (!qword_1006094B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100297C5C()
{
  sub_1001B5C1C();
  if (v0 <= 0x3F)
  {
    sub_100297D40();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100297D40()
{
  if (!qword_1006094C0)
  {
    sub_100003B68(&qword_100609470);
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1006094C0);
    }
  }
}

void sub_100297DA4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_1004B85B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      sub_100297F78();
      v6 = v9;
      v7 = sub_1004BCFA4();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (qword_100600728 != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:qword_100609450 object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t sub_100297F78()
{
  result = qword_100609560;
  if (!qword_100609560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100609560);
  }

  return result;
}

uint64_t sub_100297FC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = sub_1004BC474();
  v2[3] = sub_1004BC464();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100298128;

  return v7(a1);
}

uint64_t sub_100298128(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004BC3E4();
    v7 = v6;
    v8 = sub_100298314;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004BC3E4();
    v7 = v9;
    v8 = sub_1002982AC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002982AC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100298314()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10029837C(uint64_t a1)
{
  v4 = *v1;
  v2[2] = sub_1004BC474();
  v2[3] = sub_1004BC464();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100298494;

  return v7(a1);
}

uint64_t sub_100298494(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004BC3E4();
    v7 = v6;
    v8 = sub_10029A084;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004BC3E4();
    v7 = v9;
    v8 = sub_10029A080;
  }

  return _swift_task_switch(v8, v5, v7);
}

id *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_100298730(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_100013414(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100019110(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_100019110((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = (v5 + 1);
      sub_100013414(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_1002987A0(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100298730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100609568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002987A0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100609568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_100298730(a1, &v3);
  if (v4)
  {
    sub_100013414(&v3, v5);
    sub_100003ABC(&qword_100601270);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C50A0;
    sub_100013414(v5, v1 + 32);
  }

  else
  {
    sub_1002987A0(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_1002988A0(uint64_t a1)
{
  sub_100003ABC(&qword_100601270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver();
  v6 = sub_1004B80A4();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_1004B6B04();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100298A74, 0, 0);
}

void sub_100298A74()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver() + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1004B8094();
  v7 = sub_1004BC964();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_100299D1C();
    v13 = sub_1004BD934();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100012018(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_100004C6C(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_10001342C(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_10001342C(v0 + 16, v0 + 56);
      v24 = sub_1004B8094();
      v25 = sub_1004BC964();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_100299D1C();
        v31 = sub_1004BD934();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_100012018(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_10001342C(v0 + 56, v0 + 216);
        sub_100003ABC(&qword_100601278);
        v35 = sub_1004BBF04();
        v37 = v36;
        sub_100004C6C(v0 + 56);
        v38 = sub_100012018(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100004C6C(v0 + 56);
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_100009178((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_100299168;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = sub_1004B8094();
    v40 = sub_1004BC964();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_100299D1C();
      v46 = sub_1004BD934();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_100012018(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_100003ABC(&qword_100601278);
      v50 = sub_1004BC2B4();
      v52 = sub_100012018(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_100299168(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_100299A9C;
  }

  else
  {
    v4 = sub_100299288;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100299288()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_10001342C(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_100019110(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_100019110((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = (v4 + 1);
    sub_100013414((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_10001342C(v0 + 16, v0 + 96);
  v5 = sub_1004B8094();
  v6 = sub_1004BC964();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_100299D1C();
    v12 = v1;
    v13 = sub_1004BD934();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_100012018(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_10001342C(v0 + 96, v0 + 136);
    sub_100003ABC(&qword_100601278);
    v18 = sub_1004BBF04();
    v20 = v19;
    sub_100004C6C(v0 + 96);
    v21 = sub_100012018(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004C6C(v0 + 96);
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_100004C6C(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_100004C6C(v0 + 16);
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_10001342C(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_10001342C(v0 + 16, v0 + 56);
        v31 = sub_1004B8094();
        v32 = sub_1004BC964();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_100299D1C();
          v38 = sub_1004BD934();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_100012018(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_10001342C(v0 + 56, v0 + 216);
          sub_100003ABC(&qword_100601278);
          v42 = sub_1004BBF04();
          v44 = v43;
          sub_100004C6C(v0 + 56);
          v45 = sub_100012018(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100004C6C(v0 + 56);
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_100009178((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_100299168;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = sub_1004B8094();
  v47 = sub_1004BC964();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_100299D1C();
    v53 = v1;
    v54 = sub_1004BD934();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_100012018(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_100003ABC(&qword_100601278);
    v59 = sub_1004BC2B4();
    v61 = sub_100012018(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_100299A9C()
{
  sub_100004C6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100299B34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100299BC8;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_100299BC8(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver()
{
  result = qword_1006095D0;
  if (!qword_1006095D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100299D1C()
{
  result = qword_100603C38;
  if (!qword_100603C38)
  {
    sub_1004B6B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603C38);
  }

  return result;
}

unint64_t sub_100299D78()
{
  result = qword_100609570;
  if (!qword_100609570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609570);
  }

  return result;
}

uint64_t sub_100299E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004B80B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100299ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004B80B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100299F74()
{
  sub_10029A008();
  if (v0 <= 0x3F)
  {
    sub_1004B80B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10029A008()
{
  if (!qword_1006095E0)
  {
    sub_100003B68(&qword_100601278);
    v0 = sub_1004BC3B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1006095E0);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LifecyclePatrol.didInit(_:)()
{
  v1 = v0;
  result = swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_10009F080();
    v3 = sub_1004BCB44();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_10029A5C4, v5);
  }

  return result;
}

uint64_t sub_10029A2D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10029A308()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_100600730 != -1)
      {
        swift_once();
      }

      v1 = sub_1004B80B4();
      sub_100007084(v1, qword_100609620);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v2 = sub_1004B8094();
      v3 = sub_1004BC994();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v4 = 136446722;
        swift_getObjectType();
        sub_100003ABC(&qword_100609700);
        v5 = sub_1004BBF04();
        v7 = sub_100012018(v5, v6, &v14);

        *(v4 + 4) = v7;
        *(v4 + 12) = 2082;
        v8 = sub_1004BBF04();
        v10 = sub_100012018(v8, v9, &v14);

        *(v4 + 14) = v10;
        *(v4 + 22) = 2082;
        v11 = sub_1004BBF04();
        v13 = sub_100012018(v11, v12, &v14);

        *(v4 + 24) = v13;
        _os_log_impl(&_mh_execute_header, v2, v3, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v4, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10029A584()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_1001898C4(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10029A6B4()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100609620);
  sub_100007084(v0, qword_100609620);
  return sub_1004B80A4();
}

unint64_t sub_10029A734(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601BB8);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10003D034(*(a1 + 48) + 40 * v12, v27);
        sub_100004DE4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10003D034(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100004DE4(v25 + 8, v20);
        sub_10029D8F4(v24);
        v21 = v18;
        sub_10003E13C(v20, v22);
        v13 = v21;
        sub_10003E13C(v22, v23);
        sub_10003E13C(v23, &v21);
        result = sub_1000346D4(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100004C6C(v10);
          result = sub_10003E13C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10003E13C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10029D8F4(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10029A9F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_1006097B8);
    v2 = sub_1004BD6F4();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10003D034(*(a1 + 48) + 40 * v12, v24);
        sub_100004DE4(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_10003D034(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_10029D8F4(v21);

          goto LABEL_23;
        }

        sub_100004DE4(v22 + 8, v20);
        sub_10029D8F4(v21);
        sub_100003ABC(&qword_1006015C8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000346D4(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10029ACAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601BF8);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_100004DE4(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_10003E13C(v22, v21);

        sub_100003ABC(&unk_100606220);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000346D4(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_10029AF10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  sub_10029B54C(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;
  if (v8)
  {
    v7 = sub_10029B7FC(v8, a1, a2);
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v5 + 11);
    sub_10029D95C(&v5[4]);
    os_unfair_lock_unlock(v5 + 11);
  }
}

uint64_t sub_10029B030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *sub_10029B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004B80B4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v20 = objc_opt_self();

  v21 = [v20 sharedBagProvider];
  LODWORD(a2) = [v21 useAMSBag];

  if (!a2)
  {
    if (qword_1005FFF20 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.musicBag;
    sub_1004B80C4();
    v35 = sub_1004B8094();
    v36 = sub_1004BC9A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "UserDefaults enabled as source for cached musicTabs.", v37, 2u);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  if (qword_1005FFF78 != -1)
  {
    swift_once();
  }

  v22 = static ICClientInfo.music;
  v23 = [static ICClientInfo.music bagProfile];
  if (!v23)
  {
LABEL_17:
    if (qword_1005FFF20 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.musicBag;
    sub_1004B80C4();
    v39 = sub_1004B8094();
    v40 = sub_1004BC994();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v41, 2u);
    }

    (*(v11 + 8))(v17, v10);
LABEL_22:
    v31 = 0;
    v33 = 0;
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v22 bagProfileVersion];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.musicBag;
  sub_1004B80C4();
  v28 = sub_1004B8094();
  v29 = sub_1004BC9A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "AMSBag enabled as source for cached musicTabs.", v30, 2u);
  }

  (*(v11 + 8))(v19, v10);
  v31 = [objc_opt_self() bagForProfile:v24 profileVersion:v26];

  v32 = v31;
  v33 = 1;
LABEL_23:
  sub_100003ABC(&qword_1006097D8);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;

  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v31;
  *(v42 + 40) = v33;
  sub_10029D980(v31);
  v5[2] = v42;
  return v5;
}

id sub_10029B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1004B80B4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;

      return v11;
    }

    v24 = result;
    v13 = qword_1005FFF20;
    v23 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.musicBag;
    sub_1004B80C4();
    v15 = sub_1004B8094();
    v16 = sub_1004BC994();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[1] = v3;
      v18 = v17;
      v22[0] = swift_slowAlloc();
      v25 = v22[0];
      *v18 = 136315394;
      v19 = sub_1004BDC84();
      v21 = sub_100012018(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_100012018(0xD000000000000021, 0x8000000100506F90, &v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v7 + 8))(v10, v24);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

id sub_10029B7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v91 = sub_1004B80B4();
  v90 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v89 = &v73 - v11;
  v93 = [objc_opt_self() uninitializedToken];
  v12 = *(v3 + 24);
  v13 = *(v4 + 32);
  sub_100003ABC(&unk_1006040A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = v12;
  *(inited + 40) = v13;

  sub_100019B70(inited);
  swift_setDeallocating();
  sub_1001B4A3C(inited + 32);
  isa = sub_1004BC654().super.isa;

  v16 = swift_allocObject();
  v17 = a1;
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = a2;
  v18[6] = a3;
  aBlock[4] = sub_10029DA40;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10029D870;
  aBlock[3] = &unk_1005BDAD8;
  v19 = _Block_copy(aBlock);

  v20 = [a1 cachedValuesForKeys:isa observationToken:&v93 updateHandler:v19];
  _Block_release(v19);

  v21 = sub_1004BBC44();
  if (*(v21 + 16) && (v22 = sub_1000346D4(v12, v13), (v23 & 1) != 0))
  {
    sub_100004DE4(*(v21 + 56) + 32 * v22, aBlock);

    sub_100003ABC(&qword_1006035B0);
    if (swift_dynamicCast())
    {
      v24 = *&v95[0];
      v25 = qword_1005FFF20;

      if (v25 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v26 = static OS_os_log.musicBag;
        v27 = v89;
        sub_1004B80C4();

        v28 = sub_1004B8094();
        v29 = sub_1004BC9A4();

        if (!os_log_type_enabled(v28, v29))
        {

          (*(v90 + 8))(v27, v91);
          return v17;
        }

        v76 = v29;
        v77 = v28;
        v30 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v96 = v74;
        v75 = v30;
        *v30 = 136315138;
        sub_100003ABC(&qword_1006097C8);
        v31 = sub_1004BD6C4();
        v32 = v31;
        v33 = 0;
        v34 = *(v24 + 64);
        v78 = v24 + 64;
        v35 = 1 << *(v24 + 32);
        v36 = v35 < 64 ? ~(-1 << v35) : -1;
        v37 = v36 & v34;
        v38 = (v35 + 63) >> 6;
        v88 = "v16@?0@NSDictionary8";
        v83 = v31 + 64;
        v81 = v17;
        v82 = v24;
        v80 = v31;
        v79 = v38;
        if ((v36 & v34) == 0)
        {
          break;
        }

        while (1)
        {
          v39 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_16:
          v42 = v39 | (v33 << 6);
          v43 = *(v24 + 56);
          v44 = (*(v24 + 48) + 16 * v42);
          v45 = v44[1];
          v86 = *v44;
          v87 = v42;
          v46 = *(v43 + 8 * v42);
          v24 = *(v46 + 16);
          if (v24)
          {
            v85 = v37;
            v92 = &_swiftEmptyArrayStorage;
            v84 = v45;

            sub_100015080(0, v24, 0);
            v10 = v92;
            v47 = 32;
            do
            {
              v48 = *(v46 + v47);
              *&v94[0] = 25705;
              *(&v94[0] + 1) = 0xE200000000000000;

              sub_1004BD3A4();
              if (*(v48 + 16) && (v49 = sub_100034774(aBlock), (v50 & 1) != 0))
              {
                sub_100004DE4(*(v48 + 56) + 32 * v49, v94);
                sub_10003D090(aBlock);
                sub_10003E13C(v94, v95);
                sub_100004DE4(v95, aBlock);
                if (swift_dynamicCast())
                {
                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                else
                {
                  *&v94[0] = 0;
                  *(&v94[0] + 1) = 0xE000000000000000;
                  sub_1004BD404(23);
                  v98._object = (v88 | 0x8000000000000000);
                  v98._countAndFlagsBits = 0xD000000000000014;
                  sub_1004BC024(v98);
                  sub_1004BD5C4();
                  v99._countAndFlagsBits = 62;
                  v99._object = 0xE100000000000000;
                  sub_1004BC024(v99);

                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                sub_100004C6C(v95);
              }

              else
              {
                sub_10003D090(aBlock);

                v51 = 0x204449206261743CLL;
                v52 = 0xEF3E746E65736261;
              }

              v92 = v10;
              v54 = v10[2];
              v53 = v10[3];
              if (v54 >= v53 >> 1)
              {
                sub_100015080((v53 > 1), v54 + 1, 1);
                v10 = v92;
              }

              v10[2] = v54 + 1;
              v55 = &v10[2 * v54];
              *(v55 + 4) = v51;
              *(v55 + 5) = v52;
              v47 += 8;
              --v24;
            }

            while (v24);

            v17 = v81;
            v32 = v80;
            v38 = v79;
            v37 = v85;
            v56 = v84;
          }

          else
          {

            v10 = &_swiftEmptyArrayStorage;
          }

          v57 = v87;
          *(v83 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
          v58 = (v32[6] + 16 * v57);
          *v58 = v86;
          v58[1] = v56;
          *(v32[7] + 8 * v57) = v10;
          v59 = v32[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            break;
          }

          v32[2] = v61;
          v24 = v82;
          if (!v37)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v40 = v33;
      while (1)
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          sub_100003ABC(&unk_100603590);
          v67 = sub_1004BBC54();
          v69 = v68;

          v70 = sub_100012018(v67, v69, &v96);

          v71 = v75;
          *(v75 + 1) = v70;
          v72 = v77;
          _os_log_impl(&_mh_execute_header, v77, v76, "AMSBag provided initial state of musicTabs: %s", v71, 0xCu);
          sub_100004C6C(v74);

          (*(v90 + 8))(v89, v91);
          return v17;
        }

        v41 = *(v78 + 8 * v33);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v37 = (v41 - 1) & v41;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_1005FFF20 != -1)
  {
LABEL_42:
    swift_once();
  }

  v62 = static OS_os_log.musicBag;
  sub_1004B80C4();
  v63 = sub_1004B8094();
  v64 = sub_1004BC9A4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v65, 2u);
  }

  (*(v90 + 8))(v10, v91);
  return v17;
}

id sub_10029C248(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10029D980(*a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void *sub_10029C2BC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*result)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = (*(a2 + 40))(result);

    goto LABEL_9;
  }

  v7 = result[1];

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = sub_1004BBE24();
  v9 = [a3 dictionaryForBagKey:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = sub_1004BBC44();

  v7 = sub_10029A9F0(v10);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sub_10029C3DC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_10029C4C0(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

id sub_10029C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1004B80B4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;

      return v11;
    }

    v28 = result;
    v13 = v12;
    v14 = qword_1005FFF20;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    sub_1004B80C4();
    v17 = sub_1004B8094();
    v18 = sub_1004BC994();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v27[2] = v3;
      v22 = v21;
      v29 = v21;
      *v20 = 136315138;
      v23 = sub_1004BDC84();
      v25 = sub_100012018(v23, v24, &v29);
      v27[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_100004C6C(v22);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v28);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_10029C73C()
{
  sub_10029C3DC();

  return swift_deallocClassInstance();
}

uint64_t sub_10029C794(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10029C7AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10029C7C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029C810(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10029C86C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_10029C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = sub_1004BA8F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BA924();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 16);
    v28 = v14;
    v29 = v10;
    if (v19 && (result = sub_1000346D4(a3, a4), (v20 & 1) != 0))
    {
      sub_100004DE4(*(a1 + 56) + 32 * result, aBlock);
      sub_100003ABC(&qword_1006035B0);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v18 + 16);
    __chkstk_darwin(result);
    *(&v27 - 2) = v21;
    os_unfair_lock_lock(v22 + 11);
    sub_10029DA68(&v22[4], aBlock);
    os_unfair_lock_unlock(v22 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_10009F080();
      v23 = sub_1004BCB44();
      v24 = swift_allocObject();
      v25 = v31;
      v24[2] = v30;
      v24[3] = v25;
      v24[4] = v21;
      aBlock[4] = sub_10029DAC4;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005BDB28;
      v26 = _Block_copy(aBlock);

      sub_1004BA914();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_1000F50DC();
      sub_100003ABC(&unk_100604C00);
      sub_1000E6118();
      sub_1004BD2D4();
      sub_1004BCB54();
      _Block_release(v26);

      (*(v29 + 8))(v12, v9);
      return (*(v28 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_10029CC58(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v113 = a3;
  v5 = sub_1004B80B4();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v94 - v9;
  v11 = *a1;
  v12 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_1005FFF20 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.musicBag;
    sub_1004B80C4();
    v52 = sub_1004B8094();
    v53 = sub_1004BC994();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v117[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_100012018(0xD000000000000047, 0x8000000100506F40, v117);
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v54, 0xCu);
      sub_100004C6C(v55);
    }

    (*(v111 + 8))(v8, v112);
    v56 = 0;
    goto LABEL_70;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v14;
  v15 = qword_1005FFF20;
  swift_bridgeObjectRetain_n();
  v107 = v11;
  if (v15 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v16 = *v12;
    sub_1004B80C4();

    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_69;
    }

    v98 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v120 = v20;
    v102 = v19;
    *v19 = 136315394;
    v109 = a2;
    v108 = v10;
    v99 = v17;
    v97 = v20;
    if (!v13)
    {
      break;
    }

    sub_100003ABC(&qword_1006097C8);
    v21 = sub_1004BD6C4();
    v22 = v21;
    v23 = 0;
    v24 = *(v13 + 64);
    v96 = v13 + 64;
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v12 = v26 & v24;
    v95 = (v25 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v21 + 64;
    v101 = v13;
    i = v21;
    if ((v26 & v24) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v30 = v27 | (v23 << 6);
        v31 = *(v13 + 56);
        v32 = (*(v13 + 48) + 16 * v30);
        v33 = v32[1];
        v110 = *v32;
        v34 = *(v31 + 8 * v30);
        v35 = *(v34 + 16);
        if (v35)
        {
          v105 = v30;
          v106 = v12;
          v119 = &_swiftEmptyArrayStorage;
          v104 = v33;

          sub_100015080(0, v35, 0);
          v10 = v119;
          v36 = 32;
          v37 = v34;
          v115 = v34;
          do
          {
            v38 = *(v37 + v36);
            *&v116[0] = 25705;
            *(&v116[0] + 1) = 0xE200000000000000;

            sub_1004BD3A4();
            if (*(v38 + 16) && (v39 = sub_100034774(v117), v37 = v115, (v40 & 1) != 0))
            {
              sub_100004DE4(*(v38 + 56) + 32 * v39, v116);
              sub_10003D090(v117);
              sub_10003E13C(v116, &v118);
              sub_100004DE4(&v118, v117);
              if (swift_dynamicCast())
              {
                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              else
              {
                *&v116[0] = 0;
                *(&v116[0] + 1) = 0xE000000000000000;
                sub_1004BD404(23);
                v121._object = (v114 | 0x8000000000000000);
                v121._countAndFlagsBits = 0xD000000000000014;
                sub_1004BC024(v121);
                sub_1004BD5C4();
                v122._countAndFlagsBits = 62;
                v122._object = 0xE100000000000000;
                sub_1004BC024(v122);
                v37 = v115;

                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              sub_100004C6C(&v118);
            }

            else
            {
              sub_10003D090(v117);

              v42 = 0x204449206261743CLL;
              v41 = 0xEF3E746E65736261;
            }

            v119 = v10;
            v44 = *(v10 + 16);
            v43 = *(v10 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_100015080((v43 > 1), v44 + 1, 1);
              v37 = v115;
              v10 = v119;
            }

            *(v10 + 16) = v44 + 1;
            v45 = (v10 + 16 * v44);
            *(v45 + 4) = v42;
            *(v45 + 5) = v41;
            v36 += 8;
            --v35;
          }

          while (v35);

          a2 = v109;
          v13 = v101;
          v22 = i;
          v12 = v106;
          v30 = v105;
          v46 = v104;
        }

        else
        {

          v10 = &_swiftEmptyArrayStorage;
        }

        *(v103 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v47 = (v22[6] + 16 * v30);
        *v47 = v110;
        v47[1] = v46;
        *(v22[7] + 8 * v30) = v10;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_73;
        }

        v22[2] = v50;
        v10 = v108;
      }

      while (v12);
    }

    v28 = v23;
    while (1)
    {
      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v23 >= v95)
      {
        goto LABEL_39;
      }

      v29 = *(v96 + 8 * v23);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v12 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v22 = 0;
LABEL_39:
  v117[0] = v22;
  v96 = sub_100003ABC(&qword_1006097D0);
  v57 = sub_1004BBF04();
  v59 = v58;

  v12 = sub_100012018(v57, v59, &v120);

  v60 = v102;
  *(v102 + 1) = v12;
  *(v60 + 6) = 2080;
  if (a2)
  {
    sub_100003ABC(&qword_1006097C8);
    v61 = sub_1004BD6C4();
    v62 = v61;
    v63 = *(a2 + 64);
    v95 = a2 + 64;
    v64 = 1 << *(a2 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v63;
    v67 = (v64 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v61 + 64;

    v10 = 0;
    v101 = v62;
    for (i = v67; v66; v62[2] = v88)
    {
      v68 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
LABEL_49:
      v71 = v68 | (v10 << 6);
      v72 = *(a2 + 56);
      v73 = (*(a2 + 48) + 16 * v71);
      v74 = v73[1];
      v110 = *v73;
      v13 = *(v72 + 8 * v71);
      v75 = *(v13 + 16);
      if (v75)
      {
        v105 = v71;
        v106 = v66;
        v119 = &_swiftEmptyArrayStorage;
        v104 = v74;

        sub_100015080(0, v75, 0);
        v12 = v119;
        v76 = 32;
        v77 = v13;
        v115 = v13;
        do
        {
          v78 = *(v77 + v76);
          *&v116[0] = 25705;
          *(&v116[0] + 1) = 0xE200000000000000;

          sub_1004BD3A4();
          if (*(v78 + 16) && (v79 = sub_100034774(v117), v77 = v115, (v80 & 1) != 0))
          {
            sub_100004DE4(*(v78 + 56) + 32 * v79, v116);
            sub_10003D090(v117);
            sub_10003E13C(v116, &v118);
            sub_100004DE4(&v118, v117);
            if (swift_dynamicCast())
            {
              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            else
            {
              *&v116[0] = 0;
              *(&v116[0] + 1) = 0xE000000000000000;
              sub_1004BD404(23);
              v123._object = (v114 | 0x8000000000000000);
              v123._countAndFlagsBits = 0xD000000000000014;
              sub_1004BC024(v123);
              sub_1004BD5C4();
              v124._countAndFlagsBits = 62;
              v124._object = 0xE100000000000000;
              sub_1004BC024(v124);
              v77 = v115;

              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            sub_100004C6C(&v118);
          }

          else
          {
            sub_10003D090(v117);

            v81 = 0x204449206261743CLL;
            v13 = 0xEF3E746E65736261;
          }

          v119 = v12;
          v83 = *(v12 + 16);
          v82 = *(v12 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_100015080((v82 > 1), v83 + 1, 1);
            v77 = v115;
            v12 = v119;
          }

          *(v12 + 16) = v83 + 1;
          v84 = v12 + 16 * v83;
          *(v84 + 32) = v81;
          *(v84 + 40) = v13;
          v76 += 8;
          --v75;
        }

        while (v75);

        a2 = v109;
        v62 = v101;
        v67 = i;
        v66 = v106;
        v71 = v105;
        v85 = v104;
      }

      else
      {

        v12 = &_swiftEmptyArrayStorage;
      }

      *(v103 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v86 = (v62[6] + 16 * v71);
      *v86 = v110;
      v86[1] = v85;
      *(v62[7] + 8 * v71) = v12;
      v87 = v62[2];
      v49 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v49)
      {
        goto LABEL_74;
      }
    }

    v69 = v10;
    while (1)
    {
      v10 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_72;
      }

      if (v10 >= v67)
      {

        v10 = v108;
        goto LABEL_68;
      }

      v70 = *(v95 + 8 * v10);
      v69 = (v69 + 1);
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v66 = (v70 - 1) & v70;
        goto LABEL_49;
      }
    }
  }

  v62 = 0;
LABEL_68:
  v117[0] = v62;
  v89 = sub_1004BBF04();
  v91 = sub_100012018(v89, v90, &v120);

  v92 = v102;
  *(v102 + 14) = v91;
  v93 = v99;
  _os_log_impl(&_mh_execute_header, v99, v98, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v92, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v111 + 8))(v10, v112);

  v56 = 1;
LABEL_70:
  *v113 = v56;
}

uint64_t sub_10029D870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004BBC44();

  v1(v2);
}

uint64_t sub_10029D8F4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006097C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10029D980(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10029D9C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10029D9F8()
{

  return swift_deallocObject();
}

uint64_t sub_10029DA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10029DA84()
{

  return swift_deallocObject();
}

uint64_t sub_10029DAF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10029DB3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10029DBE0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029DBFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OptimisticValue() + 28);
  v7 = type metadata accessor for OptimisticValue.Transaction();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_10029DD24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - v9;
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = *(v4 + 16);
  (v13)(&v29 - v11, v1, v3);
  v14 = v1 + *(a1 + 28);
  v15 = type metadata accessor for OptimisticValue.Transaction();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    (*(v4 + 24))(v14 + *(v15 + 28), v12, v3);
  }

  if (qword_100600738 != -1)
  {
    swift_once();
  }

  v16 = sub_1004B80B4();
  sub_100007084(v16, qword_1006097E0);
  (v13)(v10, v12, v3);
  v17 = sub_1004B8094();
  v18 = sub_1004BC9A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446210;
    (v29)(v7, v10, v3);
    v22 = sub_1004BBF04();
    v24 = v23;
    v29 = v12;
    v25 = *(v4 + 8);
    v25(v10, v3);
    v26 = sub_100012018(v22, v24, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Underlying value updated to %{public}s", v20, 0xCu);
    sub_100004C6C(v21);

    return (v25)(v29, v3);
  }

  else
  {

    v28 = *(v4 + 8);
    v28(v10, v3);
    return (v28)(v12, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction();
  v7 = sub_1004BD174();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v5 - 8);
  __chkstk_darwin(v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + *(a1 + 28), v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v12 + 16))(a2, v2, v5);
  }

  else
  {
    (*(v12 + 16))(v14, &v11[*(v6 + 32)], v5);
    (*(v15 + 8))(v11, v6);
    return (*(v12 + 32))(a2, v14, v5);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_10029FA90(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v10);
  return sub_10029E424;
}

void sub_10029E424(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_10029DD24(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_10029DD24(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v36 = &v34 - v13;
  v14 = *(v7 - 8);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v4, v7);
  v20(v17, v35, v7);
  sub_10029E95C(v19, v17, v7, a3);
  v21 = *(a2 + 28);
  v22 = sub_1004BD174();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);
  v23 = *(v9 + 16);
  v23(v4 + v21, a3, v8);
  (*(v9 + 56))(v4 + v21, 0, 1, v8);
  if (qword_100600738 != -1)
  {
    swift_once();
  }

  v24 = sub_1004B80B4();
  sub_100007084(v24, qword_1006097E0);
  v25 = v36;
  v23(v36, a3, v8);
  v26 = sub_1004B8094();
  v27 = sub_1004BC9A4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v8);
    v30 = sub_1004BBF04();
    v32 = v31;
    (*(v9 + 8))(v25, v8);
    v33 = sub_100012018(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    sub_100004C6C(v29);
  }

  else
  {

    (*(v9 + 8))(v25, v8);
  }
}

uint64_t sub_10029E95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v11 = *(*(a3 - 8) + 32);
  v11(a4 + *(v8 + 28), a1, a3);
  v9 = a4 + *(v8 + 32);

  return (v11)(v9, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_100600738 != -1)
    {
      swift_once();
    }

    v45 = sub_1004B80B4();
    sub_100007084(v45, qword_1006097E0);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_1004B8094();
    v50 = sub_1004BC9A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_1004BBF04();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_100012018(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Cancelled transaction: %{public}s", v51, 0xCu);
      sub_100004C6C(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 28)]);
    sub_10029DD24(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_100600738 != -1)
    {
      swift_once();
    }

    v45 = sub_1004B80B4();
    sub_100007084(v45, qword_1006097E0);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_1004B8094();
    v50 = sub_1004BC9A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_1004BBF04();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_100012018(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Completed transaction: %{public}s", v51, 0xCu);
      sub_100004C6C(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 32)]);
    sub_10029DD24(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OptimisticValue();
  OptimisticValue.value.getter(v10, v9);
  OptimisticValue.value.getter(v10, v7);
  v11 = sub_1004BBD84();
  v12 = *(v4 + 8);
  v12(v7, a3);
  v12(v9, a3);
  return v11 & 1;
}

uint64_t sub_10029FA0C()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006097E0);
  sub_100007084(v0, qword_1006097E0);
  return sub_1004B80A4();
}

uint64_t sub_10029FA90(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_10029DD24(a2);
}

uint64_t sub_10029FAF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction();
    result = sub_1004BD174();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10029FB90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1004B6D14() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_10029FE54(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1004B6D14();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_1002A027C()
{
  result = sub_1004B6D14();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A0304(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004B6D14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1002A0550(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1004B6D14() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002A0ABC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1002A0B44()
{
  v1 = *v0;
  sub_1004BDBA4();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1002A0BA8()
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v0);
  sub_1004BBF84();
}

Swift::Int sub_1002A0BFC()
{
  v1 = *v0;
  sub_1004BDBA4();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1002A0C5C@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_1002A0C8C@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1004BDA14();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1002A0D10()
{
  result = qword_1006098F8;
  if (!qword_1006098F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006098F8);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6);
}

uint64_t sub_1002A0E94(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_10007D35C(a1, *v4);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *v4;
      if (v4[1])
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v8(v10 | v9);
      sub_10003CC4C(v8);
    }

    v11 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = *v4;
    v14 = v4[1];
    v19[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v19[4] = sub_1001AA3A0();
    v19[5] = sub_1001AA3F4();
    LOBYTE(v19[0]) = v13;
    BYTE1(v19[0]) = v14;
    sub_1004BB944();
    if (!v15)
    {
      sub_1004BB974();
    }

    sub_10000E7F4();
    v16 = sub_1004BD224();
    v18 = v17;

    v20._countAndFlagsBits = v16;
    v20._object = v18;
    sub_1004BC024(v20);

    NSUserDefaults.encodeValue(_:forKey:)(v19);

    result = sub_100004C6C(v19);
    *(v2 + v11) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002A0E94(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_1002A1228;
}

void sub_1002A1228(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002A0E94(v6 | v4);

  free(v1);
}

uint64_t PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_100603CB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1004BBA84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_10000F778(a1, v6, &qword_100603CB0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100007214(a1, &qword_100603CB0);
    sub_100007214(v6, &qword_100603CB0);
LABEL_15:
    sub_10003CC4C(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1004BB1D4();
  sub_1004BB1C4();
  sub_1004BB064();

  v12 = sub_1004BB164();

  if ((v12 & 1) == 0)
  {
    sub_100007214(a1, &qword_100603CB0);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v10, v7);
  v39 = objc_opt_self();
  v13 = [v39 standardUserDefaults];
  v43 = 0x2D74726F53;
  v44 = 0xE500000000000000;
  v14 = sub_1004BB944();
  v40 = a1;
  if (!v15)
  {
    v14 = sub_1004BB974();
  }

  v49 = v14;
  v50 = v15;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 45;
  v46 = 0xE100000000000000;
  sub_10000E7F4();
  v16 = sub_1004BD224();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_1004BC024(v51);

  sub_1001AA3A0();
  sub_1001AA3F4();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v45);

  if ((v45 & 0xFF00) == 0x200)
  {
    v19 = [v39 standardUserDefaults];
    v20 = sub_1004BB944();
    if (!v21)
    {
      v20 = sub_1004BB974();
    }

    v43 = v20;
    v44 = v21;
    v49 = 46;
    v50 = 0xE100000000000000;
    v47 = 45;
    v48 = 0xE100000000000000;
    LOBYTE(v22) = 1;
    v23 = sub_1004BD224();
    v25 = v24;

    v26 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v23, v25);

    v27 = 0;
    if (v26 <= 6u)
    {
      switch(v26)
      {
        case 1u:
          v27 = 0;
          LOBYTE(v22) = 0;
          break;
        case 2u:
          v27 = 1;
          break;
        case 6u:
          v27 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v26)
    {
      case 7u:
        v27 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v22) = 0;
LABEL_21:
        v27 = 4;
        break;
    }
  }

  else
  {
    v27 = v45;
    v22 = BYTE1(v45) & 1;
  }

LABEL_25:
  v28 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v22;
  v49 = 0x2D74726F53;
  v50 = 0xE500000000000000;
  v29 = sub_1004BB944();
  if (!v30)
  {
    v29 = sub_1004BB974();
  }

  v31 = v29;
  v32 = v30;
  v39 = sub_1002A1A34();
  v47 = v31;
  v48 = v32;
  v45 = 46;
  v46 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  v33 = sub_1004BD224();
  v35 = v34;

  v52._countAndFlagsBits = v33;
  v52._object = v35;
  sub_1004BC024(v52);

  v36 = swift_allocObject();
  swift_weakInit();

  v37 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v49, 0, 0, sub_1002A1EA4, v36, &type metadata for String);

  sub_100007214(v40, &qword_100603CB0);

  (*(v8 + 8))(v10, v7);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v37;

  return v2;
}

unint64_t sub_1002A1A34()
{
  result = qword_100609928;
  if (!qword_100609928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100609928);
  }

  return result;
}

uint64_t sub_1002A1A80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002A1AB8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v6 = result;
      sub_10000F778(a1, v15, &qword_100605110);
      if (!v16)
      {

        return sub_100007214(v15, &qword_100605110);
      }

      if (swift_dynamicCast())
      {
        v8 = v14[1];
        v7 = v14[2];
        sub_1004B6524();
        swift_allocObject();
        sub_1004B6514();
        sub_1001AA3A0();
        sub_1004B6504();

        v9 = v15[0];
        v10 = v15[1];
        v11 = sub_1004BC4B4();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        sub_1004BC474();

        v12 = sub_1004BC464();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v6;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
        sub_1000FD6BC(0, 0, v4, &unk_1004D9650, v13);

        sub_100004D90(v8, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1002A1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_1004BC474();
  *(v5 + 48) = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_1002A1F48, v7, v6);
}

uint64_t sub_1002A1F48()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002A0E94(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  v1 = sub_100003ABC(&qword_100602308);
  __chkstk_darwin(v1 - 8);
  v72 = v58 - v2;
  v71 = type metadata accessor for Actions.SortPlaylist.Context();
  v70 = *(v71 - 8);
  v3 = __chkstk_darwin(v71);
  v68 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = v58 - v6;
  v69 = v7;
  __chkstk_darwin(v5);
  v63 = v58 - v8;
  v66 = sub_100003ABC(&qword_100601DE0);
  v65 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v62 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = v58 - v12;
  v13 = __chkstk_darwin(v11);
  v60 = v58 - v14;
  v64 = v15;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  v73 = v0;
  v58[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v59 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v77 = xmmword_1004C50A0;
  do
  {
    v76 = v19;
    v75 = v18;
    v20 = *(&off_1005A6890 + v18 + 32);
    v21 = *v59;
    v22 = v59[1];
    v23 = v72;
    sub_1004BB934();
    v24 = v71;
    v25 = *(v71 + 24);
    v26 = sub_1004BB914();
    v27 = v63;
    (*(*(v26 - 8) + 56))(&v63[v25], 1, 1, v26);
    *v27 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v28 = v73;

    sub_10007E618(v23, &v27[v25]);
    v29 = &v27[*(v24 + 28)];
    *v29 = sub_1002A2D50;
    v29[1] = v28;
    v30 = v67;
    sub_10007EA0C(v27, v67);
    v31 = v20 + 14;
    v74 = v20 + 14;
    v32 = v68;
    sub_10007EA0C(v27, v68);
    v33 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v34 = swift_allocObject();
    sub_10007ED68(v32, v34 + v33);
    sub_10007ED68(v30, v17);
    v35 = v66;
    v17[*(v66 + 36)] = v31;
    *&v17[v35[11]] = 0x4014000000000000;
    v36 = &v17[v35[10]];
    *v36 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v36[1] = 0;
    v37 = &v17[v35[12]];
    *v37 = &unk_1004CA8C0;
    *(v37 + 1) = v34;
    v38 = &v17[v35[13]];
    *v38 = &unk_1004CA8C8;
    *(v38 + 1) = 0;
    sub_1002A2F7C(v27);
    sub_100003ABC(&qword_100601358);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v40 = v60;
    sub_10000F778(v17, v60, &qword_100601DE0);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    sub_1002A2FD8(v40, v42 + v41);
    v43 = v61;
    sub_10000F778(v17, v61, &qword_100601DE0);
    v44 = swift_allocObject();
    sub_1002A2FD8(v43, v44 + v41);
    v45 = v62;
    sub_10000F778(v17, v62, &qword_100601DE0);
    v46 = swift_allocObject();
    sub_1002A2FD8(v45, v46 + v41);
    *(inited + 32) = v74;
    *(inited + 40) = sub_1002A3048;
    *(inited + 48) = v42;
    *(inited + 56) = sub_1002A30C4;
    *(inited + 64) = v44;
    *(inited + 72) = &unk_1004D94A8;
    *(inited + 80) = v46;
    v19 = v76;
    sub_100007214(v17, &qword_100601DE0);
    sub_100003ABC(&qword_100601260);
    v47 = swift_initStackObject();
    *(v47 + 16) = v77;
    *(v47 + 32) = inited;
    v48 = v47 + 32;
    v49 = sub_100024A8C(v47);
    swift_setDeallocating();
    sub_100007214(v48, &qword_100601268);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10001927C(0, v19[2] + 1, 1, v19);
    }

    v51 = v19[2];
    v50 = v19[3];
    v52 = v75;
    if (v51 >= v50 >> 1)
    {
      v19 = sub_10001927C((v50 > 1), v51 + 1, 1, v19);
    }

    v18 = v52 + 1;
    v19[2] = (v51 + 1);
    v19[v51 + 4] = v49;
  }

  while (v18 != 5);
  v53 = sub_100024A8C(v19);

  v54 = swift_initStackObject();
  *(v54 + 16) = v77;
  *(v54 + 32) = v53;
  v55 = v54 + 32;
  v56 = sub_100024A8C(v54);
  swift_setDeallocating();
  sub_100007214(v55, &qword_100601268);
  return v56;
}

uint64_t sub_1002A2770(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002A0E94(v6 | v4);
}

uint64_t static PlaylistSortingController.apply(for:to:)(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100603CB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1004BBA84();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  result = PlaylistSortingController.init(_:)(v4);
  if (result)
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

uint64_t PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_100003ABC(&qword_100609930);
      sub_1004BAC14();

      swift_getKeyPath();
      sub_1004BAC14();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_100003ABC(&qword_100609930);
        sub_1004BAC14();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_100003ABC(&qword_100609930);
      sub_1004BAC14();
    }

    swift_getKeyPath();
    sub_1004BAC14();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_100003ABC(&qword_100609930);
    sub_1004BAC14();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_100003ABC(&qword_100609930);
LABEL_13:
  sub_1004BAC14();
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004BBA84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003CC4C(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004BBA84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003CC4C(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return swift_deallocClassInstance();
}

uint64_t sub_1002A2CCC()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100609900);
  sub_100007084(v0, qword_100609900);
  return sub_1004B80A4();
}

uint64_t sub_1002A2D5C()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1002A2E98(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10007EA70(a1, a2, v2 + v7);
}

uint64_t sub_1002A2F7C(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002A2FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A3048@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_100003ABC(&qword_100601DE0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003E548(v4, a1);
}

uint64_t sub_1002A30C4()
{
  v1 = *(sub_100003ABC(&qword_100601DE0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10003E57C(v2);
}

uint64_t sub_1002A3134()
{
  v2 = *(sub_100003ABC(&qword_100601DE0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000136EC;

  return sub_10003EA90(v0 + v3);
}

uint64_t sub_1002A3284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009178(a1, a1[3]);
  result = sub_1004B7604();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1002A32EC@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100009178(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1002A3344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100009178(a1, a1[3]);
  result = sub_1004B7614();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController()
{
  result = qword_100609960;
  if (!qword_100609960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A33E0()
{
  result = sub_1004BBA84();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A3498()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002A34D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000136EC;

  return sub_1002A1EAC(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002A4000(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_10003E428(v1, *(v0 + 16));
  return v1;
}

void sub_1002A3658(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_100600748 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_100609A08;
    CGContextSetLineWidth(v19, *&qword_100609A08);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_100003ABC(&qword_100604618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C5070;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_10003E428(v6, v5);
  sub_1002A4000(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)()
{
  v1 = *v0;
  UIRoundToScale();
  return v2 * v1;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(id *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = a1[2];
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 - 1 > a1[3] >> 1)
    {
      a1 = sub_1000193D4(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_10013318C(0, 1, 0);
    sub_1004BCA44();
    v18 = a1[2];
    if (v18)
    {
      v19 = a1 + 5;
      do
      {
        sub_1004BCA54();
        v19 += 2;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002A4000(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_10003E428(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = sub_1004B6B64().super.isa;
  sub_100004D90(a1, a2);
  v11 = sub_1004BBE24();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = sub_1004BBE24();

  v14 = sub_1004BBE24();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_100600748 != -1)
    {
      swift_once();
    }

    v28 = *&qword_100609A08;
    v29 = v27 * *&qword_100609A08;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1002A4754;
    *(v32 + 24) = v31;
    aBlock[4] = sub_100124268;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011FE68;
    aBlock[3] = &unk_1005BDF70;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = sub_1004B6B74();
    v37 = v36;

    v38 = sub_1004B6B64().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_100004D90(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_10003E428(a1, a2);
                  v49 = v44;
                  sub_100004D90(a1, a2);

LABEL_21:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          sub_100004D90(v35, v37);
        }

        else
        {

          sub_100004D90(v35, v37);
        }
      }

      else
      {

        sub_100004D90(v35, v37);
      }
    }

    else
    {

      sub_100004D90(v35, v37);
    }

    v21 = sub_1002A4754;
LABEL_20:
    sub_100004D90(a1, a2);
    sub_10003CC4C(v21);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1002A4714()
{

  return swift_deallocObject();
}

uint64_t sub_1002A477C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_100600760 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)()
{

  return sub_1004B8024();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  v2 = sub_1004B80B4();
  __chkstk_darwin(v2 - 8);
  v3 = a1;
  sub_1004B80C4();
  return sub_1004B8004();
}

uint64_t sub_1002A4900()
{
  v0 = sub_1004B8034();
  sub_100007108(v0, static OSSignposter.launch);
  sub_100007084(v0, static OSSignposter.launch);
  return sub_1004B8024();
}

uint64_t sub_1002A4998(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B8034();

  return sub_100007084(v3, a2);
}

void sub_1002A4A10()
{
  v0 = sub_1004B80B4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004B8034();
  sub_100007108(v1, static OSSignposter.sharePlay);
  sub_100007084(v1, static OSSignposter.sharePlay);
  if (qword_100600760 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sharePlay;
  sub_1004B80C4();
  sub_1004B8004();
}

uint64_t sub_1002A4B28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B8034();
  v6 = sub_100007084(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1002A4BC0()
{
  sub_10012BAC0();
  result = sub_1004BD164();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_100600760 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_1002A4C84()
{
  sub_1002A9D4C(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_4[8 * v2];
  }

  else
  {
    sub_100089BAC(v8, v6);
    v4 = v7;
    sub_100009178(v6, v7);
    v5 = sub_1002A4D38(v4);
    sub_100004C6C(v6);
    return v5;
  }
}

uint64_t sub_1002A4D38(uint64_t a1)
{
  v106 = sub_1004BBA44();
  v105 = *(v106 - 8);
  v3 = __chkstk_darwin(v106);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v102 = &v96 - v5;
  v110 = sub_1004BB4D4();
  v104 = *(v110 - 8);
  v6 = __chkstk_darwin(v110);
  v103 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v96 - v8;
  v112 = sub_1004B7644();
  v109 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v108 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v143 = &v96 - v11;
  v115 = sub_1004B7BB4();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1004B7B64();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1004B7C34();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1004B7CF4();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1004BB744();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1004BB384();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1004BBA84();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1004BAD04();
  v130 = *(v134 - 8);
  __chkstk_darwin(v134);
  v142 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1004B7A34();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1004BB434();
  v135 = *(v141 - 8);
  v22 = __chkstk_darwin(v141);
  v140 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 - 8);
  v25 = __chkstk_darwin(v22);
  v101 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = __chkstk_darwin(v27);
  v139 = &v96 - v31;
  __chkstk_darwin(v30);
  v33 = &v96 - v32;
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v34 = sub_1004B80B4();
  v35 = sub_100007084(v34, static Logger.capabilityUpsell);
  v37 = v24 + 16;
  v36 = *(v24 + 16);
  v144 = v1;
  v36(v33, v1, a1);
  v99 = v35;
  v38 = sub_1004B8094();
  v39 = sub_1004BC974();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = v29;
    v41 = v40;
    v42 = swift_slowAlloc();
    v138 = v24;
    v96 = v42;
    v146 = v42;
    *v41 = 136315138;
    v36(v139, v33, a1);
    v43 = sub_1004BBF04();
    v97 = v18;
    v44 = a1;
    v46 = v45;
    v145 = *(v138 + 8);
    v145(v33, v44);
    v47 = sub_100012018(v43, v46, &v146);
    a1 = v44;
    v18 = v97;

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "MusicItem - mediaKind =%s", v41, 0xCu);
    sub_100004C6C(v96);

    v29 = v98;
  }

  else
  {

    v145 = *(v24 + 8);
    v145(v33, a1);
  }

  v48 = v141;
  v49 = v144;
  v141 = v37;
  v36(v29, v144, a1);
  v50 = v140;
  v51 = swift_dynamicCast();
  v53 = v142;
  v52 = v143;
  if (!v51)
  {
    v55 = v36;
    v56 = v136;
    v57 = v137;
    if (swift_dynamicCast())
    {
      (*(v133 + 8))(v56, v57);
      v54 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v58 = v134;
    if (swift_dynamicCast())
    {
      (*(v130 + 8))(v53, v58);
      v54 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v60 = v131;
    v59 = v132;
    if (swift_dynamicCast())
    {
      (*(v128 + 8))(v60, v59);
      v54 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v61 = v18;
    v62 = v129;
    if (swift_dynamicCast())
    {
      (*(v125 + 8))(v61, v62);
      v54 = 0x73676E6F73;
      goto LABEL_36;
    }

    v63 = v126;
    v64 = v127;
    if (swift_dynamicCast())
    {
      (*(v122 + 8))(v63, v64);
      v54 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v65 = v123;
    v66 = v124;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v65, v66);
      v54 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v67 = v120;
    v68 = v121;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v67, v68);
      v54 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v69 = v117;
    v70 = v118;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v113 + 8))(v69, v70);
      goto LABEL_36;
    }

    v71 = v114;
    v72 = v115;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v111 + 8))(v71, v72);
      goto LABEL_36;
    }

    v73 = v52;
    v74 = v112;
    if (swift_dynamicCast())
    {
      v75 = v109;
      v76 = v108;
      (*(v109 + 32))(v108, v73, v74);
      sub_1002A7D14(&v146);
    }

    else
    {
      v77 = v107;
      v74 = v110;
      if (!swift_dynamicCast())
      {
        v81 = v102;
        if (!swift_dynamicCast())
        {
          v85 = v55;
          v86 = v101;
          v85(v101, v49, a1);
          v87 = sub_1004B8094();
          v88 = sub_1004BC994();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v146 = v144;
            *v89 = 136315138;
            v85(v139, v86, a1);
            v90 = sub_1004BBF04();
            v91 = v86;
            v92 = v90;
            v94 = v93;
            v145(v91, a1);
            v95 = sub_100012018(v92, v94, &v146);

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v87, v88, "Unsupported MusicItem kind=%s", v89, 0xCu);
            sub_100004C6C(v144);
          }

          else
          {

            v145(v86, a1);
          }

          goto LABEL_35;
        }

        v82 = v100;
        (*(v105 + 32))(v100, v81, v106);
        sub_1002A7344(&v146);
        v83 = v147;
        if (v147)
        {
          v84 = v148;
          sub_100009178(&v146, v147);
          v54 = sub_1002A4D38(v83, v84);
          (*(v105 + 8))(v82, v106);
          goto LABEL_32;
        }

        (*(v105 + 8))(v82, v106);
LABEL_34:
        sub_100007214(&v146, &qword_100606290);
LABEL_35:
        v54 = 0;
        goto LABEL_36;
      }

      v75 = v104;
      v76 = v103;
      (*(v104 + 32))(v103, v77, v74);
      Track.musicItem.getter(&v146);
    }

    v78 = v147;
    if (v147)
    {
      v79 = v148;
      sub_100009178(&v146, v147);
      v54 = sub_1002A4D38(v78, v79);
      (*(v75 + 8))(v76, v74);
LABEL_32:
      sub_100004C6C(&v146);
      goto LABEL_36;
    }

    (*(v75 + 8))(v76, v74);
    goto LABEL_34;
  }

  (*(v135 + 8))(v50, v48);
  v54 = 0x736D75626C61;
LABEL_36:
  v145(v29, a1);
  return v54;
}

uint64_t sub_1002A5F44(uint64_t a1)
{
  v123 = sub_1004BBA44();
  v119 = *(v123 - 8);
  v2 = __chkstk_darwin(v123);
  v118 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v120 = &v114 - v4;
  v127 = sub_1004BB4D4();
  v122 = *(v127 - 8);
  v5 = __chkstk_darwin(v127);
  v121 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v114 - v7;
  v131 = sub_1004B7644();
  v126 = *(v131 - 8);
  v8 = __chkstk_darwin(v131);
  v125 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v114 - v10;
  v135 = sub_1004B7BB4();
  v129 = *(v135 - 8);
  v11 = __chkstk_darwin(v135);
  v128 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v114 - v13;
  v139 = sub_1004B7B64();
  v133 = *(v139 - 8);
  v14 = __chkstk_darwin(v139);
  v132 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v114 - v16;
  v143 = sub_1004B7C34();
  v137 = *(v143 - 8);
  v17 = __chkstk_darwin(v143);
  v136 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v114 - v19;
  v147 = sub_1004B7CF4();
  v141 = *(v147 - 8);
  v20 = __chkstk_darwin(v147);
  v140 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v146 = &v114 - v22;
  v151 = sub_1004BB744();
  v145 = *(v151 - 8);
  v23 = __chkstk_darwin(v151);
  v144 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v150 = &v114 - v25;
  v155 = sub_1004BB384();
  v149 = *(v155 - 8);
  v26 = __chkstk_darwin(v155);
  v148 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v154 = &v114 - v28;
  v159 = sub_1004BBA84();
  v153 = *(v159 - 8);
  v29 = __chkstk_darwin(v159);
  v152 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v158 = &v114 - v31;
  v161 = sub_1004BAD04();
  v157 = *(v161 - 8);
  v32 = __chkstk_darwin(v161);
  v156 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v114 - v34;
  v36 = sub_1004B7A34();
  v160 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v114 - v40;
  v42 = sub_1004BB434();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v49 = &v114 - v48;
  v50 = *(a1 - 8);
  v51 = __chkstk_darwin(v47);
  v114 = &v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v117 = &v114 - v54;
  __chkstk_darwin(v53);
  v56 = &v114 - v55;
  v162 = v50;
  v57 = v50 + 16;
  v58 = *(v50 + 16);
  v60 = v59;
  v116 = v57;
  v115 = v58;
  v58(&v114 - v55, v163, v59);
  if (swift_dynamicCast())
  {
    (*(v43 + 32))(v46, v49, v42);
    v61 = sub_1004BB3D4();
    v63 = v62;
    (*(v43 + 8))(v46, v42);
    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    v65 = v60;
    v66 = v162;
    goto LABEL_20;
  }

  v65 = v60;
  if (swift_dynamicCast())
  {
    v67 = v160;
    (*(v160 + 32))(v39, v41, v36);
    v64 = sub_1004B7A24();
    v69 = v68;
    (*(v67 + 8))(v39, v36);
LABEL_10:
    if (!v69)
    {
      v64 = 0;
    }

    v66 = v162;
    goto LABEL_20;
  }

  v70 = v161;
  if (swift_dynamicCast())
  {
    v72 = v156;
    v71 = v157;
    (*(v157 + 32))(v156, v35, v70);
    v64 = sub_1004BACB4();
    v69 = v73;
    (*(v71 + 8))(v72, v70);
    goto LABEL_10;
  }

  v75 = v158;
  v74 = v159;
  v76 = swift_dynamicCast();
  v66 = v162;
  if (v76)
  {
    v78 = v152;
    v77 = v153;
    (*(v153 + 32))(v152, v75, v74);
    v79 = sub_1004BB944();
LABEL_17:
    v64 = v79;
    v82 = v80;
    (*(v77 + 8))(v78, v74);
    goto LABEL_18;
  }

  v81 = v154;
  v74 = v155;
  if (swift_dynamicCast())
  {
    v78 = v148;
    v77 = v149;
    (*(v149 + 32))(v148, v81, v74);
    v79 = sub_1004BB2B4();
    goto LABEL_17;
  }

  v85 = v150;
  v84 = v151;
  if (swift_dynamicCast())
  {
    v86 = v145;
    v87 = v144;
    (*(v145 + 32))(v144, v85, v84);
    v64 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    (*(v86 + 8))(v87, v84);
    goto LABEL_20;
  }

  v88 = v146;
  v74 = v147;
  if (swift_dynamicCast())
  {
    v77 = v141;
    v78 = v140;
    (*(v141 + 32))(v140, v88, v74);
    v79 = sub_1004B7CE4();
    goto LABEL_17;
  }

  v89 = v142;
  v74 = v143;
  if (swift_dynamicCast())
  {
    v77 = v137;
    v78 = v136;
    (*(v137 + 32))(v136, v89, v74);
    v79 = sub_1004B7C24();
    goto LABEL_17;
  }

  v90 = v138;
  v74 = v139;
  if (swift_dynamicCast())
  {
    v77 = v133;
    v78 = v132;
    (*(v133 + 32))(v132, v90, v74);
    v79 = sub_1004B7B54();
    goto LABEL_17;
  }

  v91 = v134;
  v92 = v135;
  if (!swift_dynamicCast())
  {
    v96 = v130;
    v97 = v131;
    if (swift_dynamicCast())
    {
      v98 = v126;
      v99 = v125;
      (*(v126 + 32))(v125, v96, v97);
      sub_1002A7D14(&v164);
    }

    else
    {
      v100 = v124;
      v97 = v127;
      if (swift_dynamicCast())
      {
        v98 = v122;
        v99 = v121;
        (*(v122 + 32))(v121, v100, v97);
        Track.musicItem.getter(&v164);
      }

      else
      {
        v101 = v120;
        v97 = v123;
        if (!swift_dynamicCast())
        {
          if (qword_100600768 != -1)
          {
            swift_once();
          }

          v104 = sub_1004B80B4();
          sub_100007084(v104, static Logger.capabilityUpsell);
          v105 = v117;
          v106 = v115;
          v115(v117, v163, v65);
          v107 = sub_1004B8094();
          v108 = sub_1004BC994();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v164 = v163;
            *v109 = 136315138;
            v106(v114, v105, v65);
            v110 = sub_1004BBF04();
            v112 = v111;
            (*(v66 + 8))(v105, v65);
            v113 = sub_100012018(v110, v112, &v164);

            *(v109 + 4) = v113;
            _os_log_impl(&_mh_execute_header, v107, v108, "Unsupported MusicItem catalogID=%s", v109, 0xCu);
            sub_100004C6C(v163);
          }

          else
          {

            (*(v66 + 8))(v105, v65);
          }

          goto LABEL_40;
        }

        v98 = v119;
        v99 = v118;
        (*(v119 + 32))(v118, v101, v97);
        sub_1002A7344(&v164);
      }
    }

    v102 = v165;
    if (v165)
    {
      v103 = v166;
      sub_100009178(&v164, v165);
      v64 = sub_1002A5F44(v102, v103);
      (*(v98 + 8))(v99, v97);
      sub_100004C6C(&v164);
      goto LABEL_20;
    }

    (*(v98 + 8))(v99, v97);
    sub_100007214(&v164, &qword_100606290);
LABEL_40:
    v64 = 0;
    goto LABEL_20;
  }

  v93 = v129;
  v94 = v128;
  (*(v129 + 32))(v128, v91, v92);
  v64 = sub_1004B7BA4();
  v82 = v95;
  (*(v93 + 8))(v94, v92);
LABEL_18:
  if (!v82)
  {
    v64 = 0;
  }

LABEL_20:
  (*(v66 + 8))(v56, v65);
  return v64;
}