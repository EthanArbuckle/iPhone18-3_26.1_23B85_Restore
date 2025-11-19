id sub_1000025E8(uint64_t a1)
{
  if (qword_10008AA18 != -1)
  {
    sub_1000619A8();
  }

  v2 = qword_10008AA10[a1];

  return v2;
}

void sub_10000263C(id a1)
{
  qword_10008AA10 = os_log_create("com.apple.AppDistributionLaunchAngel", "LaunchAngel");

  _objc_release_x1();
}

id sub_100002B0C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10008AA38;
  v7 = qword_10008AA38;
  if (!qword_10008AA38)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003304;
    v3[3] = &unk_10007E248;
    v3[4] = &v4;
    sub_100003304(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002BEC()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10008AA40;
  v8 = qword_10008AA40;
  if (!qword_10008AA40)
  {
    v1 = sub_100003138();
    v6[3] = dlsym(v1, "ASCLockupKindApp");
    qword_10008AA40 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_1000619BC();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class sub_1000030E0(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCMiniProductPageView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061B64();
  }

  qword_10008AA20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003138()
{
  v3[0] = 0;
  if (!qword_10008AA28)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003238;
    v3[4] = &unk_10007E280;
    v3[5] = v3;
    v4 = off_10007E268;
    v5 = 0;
    qword_10008AA28 = _sl_dlopen();
  }

  v0 = qword_10008AA28;
  v1 = v3[0];
  if (!qword_10008AA28)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100003238(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10008AA28 = result;
  return result;
}

Class sub_1000032AC(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061B8C();
  }

  qword_10008AA30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100003304(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061BB4();
  }

  qword_10008AA38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000335C(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000033AC(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupContextAppStoreInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000033FC(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupContextAppDistributionInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__n128 sub_10000344C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000345C(uint64_t a1, int a2)
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

uint64_t sub_10000347C(uint64_t result, int a2, int a3)
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

__n128 sub_1000034B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000034C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000034E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100003524()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
      return 0x100000000000002BLL;
    case 2:
      return 0x1000000000000086;
    case 3:
      return 0x1000000000000039;
    case 4:
      return 0x10000000000000BALL;
    case 5:
      return 0x100000000000002DLL;
    case 6:
      return 0x100000000000009DLL;
    case 7:
      return 0x1000000000000016;
    case 8:
      return 0x1000000000000033;
    case 9:
      return 0x1000000000000027;
    case 0xA:
      return 0x100000000000002DLL;
    case 0xB:
      return 0x100000000000003CLL;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (!(v4 | v1 | v3))
      {
        return 0x776F6C6C41;
      }

      v5 = v4 | v3;
      if (v1 == 1 && v5 == 0)
      {
        return 0x6C65636E6143;
      }

      if (v1 == 2 && !v5)
      {
        return 0x65756E69746E6F43;
      }

      if (v1 == 3 && !v5)
      {
        return 1701736260;
      }

      if (v1 == 4 && !v5)
      {
        return 0x6DA0C26E7261654CLL;
      }

      if (v1 == 5 && !v5)
      {
        return 0x69737365636F7250;
      }

      if (v1 == 6 && !v5)
      {
        return 0x100000000000002CLL;
      }

      result = 0x206C6C6174736E49;
      if (v1 == 7 && !v5)
      {
        return result;
      }

      if (v1 == 8 && !v5)
      {
        return 0xD000000000000017;
      }

      if (v1 == 9 && !v5)
      {
        return 0x1000000000000028;
      }

      if (v1 == 10 && !v5)
      {
        return 0xD000000000000024;
      }

      if (v1 == 11 && !v5)
      {
        return 0xD0000000000000AELL;
      }

      if (v1 == 12 && !v5)
      {
        return 0x6150207265746E45;
      }

      if (v1 == 13 && !v5)
      {
        return 0xD00000000000002ELL;
      }

      if (v1 == 14 && !v5)
      {
        return 0xD000000000000036;
      }

      if (v1 == 15 && !v5)
      {
        return 0x4449206863756F54;
      }

      if (v1 == 16 && !v5)
      {
        return 0xD000000000000021;
      }

      if (v1 == 17 && !v5)
      {
        return 0xD000000000000029;
      }

      if (v1 != 18 || v5)
      {
        if (v1 == 19 && !v5)
        {
          return 0xD000000000000017;
        }

        else if (v1 != 20 || v5)
        {
          if (v1 != 21 || v5)
          {
            if (v1 != 22 || v5)
            {
              return 0xD000000000000090;
            }

            else
            {
              return 0xD000000000000014;
            }
          }

          else
          {
            return 0xD00000000000005ALL;
          }
        }

        else
        {
          return 0x7461442072756F59;
        }
      }

      return result;
    default:
      return 0xD00000000000003BLL;
  }
}

unint64_t sub_100003A90()
{
  result = 0xD000000000000031;
  v2 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
    case 8:
      return 0xD000000000000035;
    case 2:
      return 0xD000000000000034;
    case 3:
      return 0xD000000000000039;
    case 4:
      return 0xD000000000000038;
    case 6:
      return 0xD000000000000030;
    case 7:
      return 0xD000000000000028;
    case 9:
      return 0xD000000000000029;
    case 0xA:
      return 0xD000000000000032;
    case 0xB:
      return 0xD00000000000003BLL;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (!(v4 | v2 | v3))
      {
        return 0xD000000000000023;
      }

      v5 = v4 | v3;
      if (v2 == 1 && !v5)
      {
        return 0xD000000000000024;
      }

      if (v2 == 2 && !v5)
      {
        return 0xD000000000000026;
      }

      if (v2 == 3 && !v5)
      {
        return 0xD000000000000022;
      }

      if (v2 == 4 && !v5)
      {
        return 0xD000000000000038;
      }

      if (v2 == 5 && !v5)
      {
        return 0xD000000000000028;
      }

      if (v2 == 6 && !v5)
      {
        return 0xD000000000000032;
      }

      if (v2 == 7 && !v5)
      {
        return 0xD00000000000002ELL;
      }

      if (v2 == 8 && !v5)
      {
        return 0xD000000000000036;
      }

      if (v2 == 9 && !v5)
      {
        return 0xD00000000000002CLL;
      }

      if (v2 != 10 || v5)
      {
        if (v2 != 11 || v5)
        {
          if (v2 != 12 || v5)
          {
            if (v2 != 13 || v5)
            {
              if (v2 == 14 && !v5)
              {
                return 0xD000000000000032;
              }

              if (v2 == 15 && !v5)
              {
                return 0xD000000000000024;
              }

              if (v2 == 16 && !v5)
              {
                return 0xD000000000000029;
              }

              else if (v2 != 17 || v5)
              {
                if (v2 != 18 || v5)
                {
                  if (v2 == 19 && !v5)
                  {
                    return 0xD000000000000035;
                  }

                  else if (v2 != 20 || v5)
                  {
                    if (v2 != 21 || v5)
                    {
                      if (v2 == 22 && v5 == 0)
                      {
                        return 0xD000000000000048;
                      }

                      else
                      {
                        return 0xD000000000000047;
                      }
                    }

                    else
                    {
                      return 0xD000000000000046;
                    }
                  }

                  else
                  {
                    return 0xD000000000000047;
                  }
                }

                else
                {
                  return 0xD00000000000002DLL;
                }
              }
            }

            else
            {
              return 0xD00000000000002ALL;
            }
          }

          else
          {
            return 0xD000000000000025;
          }
        }

        else
        {
          return 0xD000000000000033;
        }
      }

      return result;
    default:
      return result;
  }
}

unint64_t sub_100003EFC()
{
  v1 = 0;
  v3 = *v0;
  v2 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v6 > 5)
  {
    if (*(v0 + 32) > 8u)
    {
      if (v6 - 9 >= 2)
      {
        if (v6 != 11)
        {
          return v1;
        }

        sub_1000047BC(&qword_100089030, &qword_1000656D0);
        inited = swift_initStackObject();
        v12 = inited;
        *(inited + 16) = xmmword_100065650;
        *(inited + 32) = 0x65706F6C65766564;
        v13 = inited + 32;
        v14 = 0xED0000656D614E72;
        goto LABEL_24;
      }
    }

    else
    {
      if (v6 == 6)
      {
        goto LABEL_18;
      }

      if (v6 != 7)
      {
        if (v6 == 8)
        {
          sub_1000047BC(&qword_100089030, &qword_1000656D0);
          v7 = swift_initStackObject();
          v8 = v7;
          *(v7 + 16) = xmmword_100065660;
          *(v7 + 32) = 0x656D614E707061;
          *(v7 + 40) = 0xE700000000000000;
          *(v7 + 48) = v3;
          *(v7 + 56) = v2;
          *(v7 + 64) = 0x6C7074656B72616DLL;
          v9 = 0xEF656D614E656361;
          goto LABEL_11;
        }

        return v1;
      }
    }

    sub_1000047BC(&qword_100089030, &qword_1000656D0);
    inited = swift_initStackObject();
    v12 = inited;
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x656D614E707061;
    v13 = inited + 32;
    v14 = 0xE700000000000000;
    goto LABEL_24;
  }

  if (*(v0 + 32) <= 2u)
  {
    if (*(v0 + 32))
    {
      if (v6 != 1)
      {
        sub_1000047BC(&qword_100089030, &qword_1000656D0);
        v7 = swift_initStackObject();
        v8 = v7;
        *(v7 + 16) = xmmword_100065660;
        *(v7 + 32) = 1701667182;
        *(v7 + 40) = 0xE400000000000000;
        *(v7 + 48) = v3;
        *(v7 + 56) = v2;
        *(v7 + 64) = 0x726F4D6E7261656CLL;
        v9 = 0xED00006B6E694C65;
LABEL_11:
        *(v7 + 72) = v9;
        *(v7 + 80) = v5;
        *(v7 + 88) = v4;

        v10 = v8;
LABEL_19:
        v1 = sub_100059874(v10);
        swift_setDeallocating();
        sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
        swift_arrayDestroy();
        return v1;
      }

      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 1701667182;
      v13 = inited + 32;
      v14 = 0xE400000000000000;
    }

    else
    {
      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 0x726F4D6E7261656CLL;
      v13 = inited + 32;
      v14 = 0xED00006B6E694C65;
    }

LABEL_24:
    *(inited + 40) = v14;
    *(inited + 48) = v3;
    *(inited + 56) = v2;
    sub_100004804(v0, v17);
    v1 = sub_100059874(v12);
    swift_setDeallocating();
    sub_10000483C(v13);
    return v1;
  }

  switch(v6)
  {
    case 3u:
LABEL_15:
      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 0x6E69616D6F64;
      v13 = inited + 32;
      v14 = 0xE600000000000000;
      goto LABEL_24;
    case 4u:
LABEL_18:
      v15 = *(v0 + 8);

      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_100065660;
      strcpy((v10 + 32), "developerName");
      *(v10 + 46) = -4864;
      *(v10 + 48) = v3;
      *(v10 + 56) = v2;
      strcpy((v10 + 64), "learnMoreLink");
      *(v10 + 78) = -4864;
      *(v10 + 80) = v5;
      *(v10 + 88) = v4;
      goto LABEL_19;
    case 5u:
      goto LABEL_15;
  }

  return v1;
}

uint64_t sub_100004364(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000043D0(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000443C(void *a1, uint64_t a2)
{
  v4 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000044F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000456C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1000045CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000045F0(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088560, type metadata accessor for LAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000465C(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088560, type metadata accessor for LAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000046CC(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004A60(&qword_100088558, type metadata accessor for LAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000047BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000483C(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000048A4(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 0xB)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 sub_1000048C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000048D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 33))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000491C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t sub_100004968(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100004A60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100004ABC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100004C74()
{
  result = qword_100088588;
  if (!qword_100088588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088588);
  }

  return result;
}

uint64_t sub_100004D68(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v46 = type metadata accessor for OSSignpostID();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignposter();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v25 = v50;
  v26 = v47;
  *(v5 + 16) = v49;
  *(v5 + 24) = v26;
  *(v5 + 32) = v48;
  v27 = *(v13 + 16);
  v47 = v12;
  v27(v16, v25, v12);
  OSSignposter.init(logger:)();
  v28 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter;
  (*(v18 + 32))(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter, v24, v17);
  (*(v18 + 16))(v22, v5 + v28, v17);
  static OSSignpostID.exclusive.getter();
  v29 = OSSignposter.logHandle.getter();
  v30 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v42 = v22;
  v43 = v5;
  v41 = v18;
  v44 = v13;
  if ((v48 & 1) == 0)
  {
    v32 = v49;
    if (v49)
    {
LABEL_9:
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v34, v32, "", v33, 2u);

      v5 = v43;
      v13 = v44;
      v18 = v41;
      v22 = v42;
LABEL_10:

      v35 = v46;
      (*(v6 + 16))(v45, v11, v46);
      v36 = type metadata accessor for OSSignpostIntervalState();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v13 + 8))(v50, v47);
      (*(v6 + 8))(v11, v35);
      (*(v18 + 8))(v22, v17);
      *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval) = v39;
      return v5;
    }

    __break(1u);
  }

  if (v49 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v49 & 0xFFFFF800) != 0xD800)
  {
    if (v49 >> 16 <= 0x10)
    {
      v32 = &v51;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10000517C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin();
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter;
  (*(v10 + 16))(v13, v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter, v9);
  v37 = *(v0 + 16);
  v36 = *(v0 + 32);
  v15 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval;
  v16 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval);

  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v34 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v19 = v42;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v41 + 8))(v8, v19);
    v28 = *(v10 + 8);
    v28(v13, v9);
    v28((v1 + v14), v9);
    v29 = *(v1 + v15);

    return v1;
  }

  v35 = v16;
  v30 = v1;
  v31 = v15;
  v32 = v13;
  v33 = v14;
  v20 = v42;
  if ((v36 & 1) == 0)
  {
    v22 = v39;
    v21 = v40;
    v24 = v37;
    v23 = v38;
    if (v37)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v22 + 88))(v23, v21) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v22 + 8))(v23, v21);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v34, v27, v24, v25, v26, 2u);

      v19 = v20;
      v13 = v32;
      v14 = v33;
      v1 = v30;
      v15 = v31;
      goto LABEL_13;
    }

    __break(1u);
  }

  v23 = v38;
  v22 = v39;
  v21 = v40;
  if (v37 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 <= 0x10)
    {
      v24 = &v43;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10000554C()
{
  sub_10000517C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_100088698;
  if (!qword_100088698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000055F8()
{
  result = type metadata accessor for OSSignposter();
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

double sub_1000056A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100005740()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000057C0()
{
  v0 = (*(*(sub_1000047BC(&unk_100088F10, &qword_100065D60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_100007654(0, 0, v2, &unk_100065FE0, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100005934()
{
  sub_100010B54((v0 + 3));
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonFrame;
  v2 = sub_1000047BC(&qword_100088B98, &qword_100065FB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonsContentIsOverlapping;
  v4 = sub_1000047BC(&qword_100088B90, &qword_100065FB0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__isLandscape, v4);
  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_100005A90()
{
  sub_100005E90(319, &qword_100088780, type metadata accessor for CGRect, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100005B9C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100005B9C()
{
  if (!qword_100088788)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100088788);
    }
  }
}

uint64_t sub_100005C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100005D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LocalizedInstallSheetContent();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100005E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100005EF4()
{
  if (!qword_100088978)
  {
    type metadata accessor for InstallSheetConfirmationViewModel(255);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100088978);
    }
  }
}

uint64_t sub_100005FA4()
{
  v1 = sub_1000047BC(&qword_100088B90, &qword_100065FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - v4;
  v6 = sub_1000047BC(&qword_100088B98, &qword_100065FB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonFrame;
  type metadata accessor for CGRect(0);
  memset(v16, 0, sizeof(v16));
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonsContentIsOverlapping;
  LOBYTE(v16[0]) = 1;
  Published.init(initialValue:)();
  v13 = *(v2 + 32);
  v13(v0 + v12, v5, v1);
  v14 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__isLandscape;
  LOBYTE(v16[0]) = 0;
  Published.init(initialValue:)();
  v13(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_1000061B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000061F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v3 = type metadata accessor for InstallSheetConfirmationView(0);
  v4 = v3 - 8;
  v82 = *(v3 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin(v3);
  v83 = v6;
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000047BC(&qword_100088B28, &qword_100065EF8);
  v7 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = &v79 - v8;
  v9 = sub_1000047BC(&qword_100088B30, &unk_100065F00);
  v10 = *(v9 - 8);
  v93 = v9;
  v94 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v89 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v79 - v14;
  v91 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v15 = *(v91 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v91);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v19 = *(v90 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v90);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v79 - v27;
  v29 = sub_1000047BC(&qword_100088B38, &qword_100065F10);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v79 - v31;
  v92 = type metadata accessor for AttributedString();
  v33 = *(v92 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v92);
  v80 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v81 = &v79 - v37;
  v38 = *(v4 + 28);
  v84 = v2;
  v39 = v2 + v38;
  v41 = *(v39 + 16);
  v40 = *(v39 + 24);
  v42 = type metadata accessor for URL();
  (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
  (*(v19 + 104))(v22, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v90);
  (*(v15 + 104))(v18, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v91);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();
  v43 = v33;
  v44 = *(v33 + 56);
  v45 = v92;
  v44(v32, 0, 1, v92);
  v46 = v81;
  (*(v43 + 32))(v81, v32, v45);
  (*(v43 + 16))(v80, v46, v45);
  v47 = Text.init(_:)();
  v49 = v48;
  LOBYTE(v32) = v50;
  static Font.body.getter();
  v90 = Text.font(_:)();
  v80 = v51;
  v53 = v52;
  v91 = v54;

  sub_10000F77C(v47, v49, v32 & 1);

  KeyPath = swift_getKeyPath();
  v56 = v85;
  sub_10000F540(v84, v85, type metadata accessor for InstallSheetConfirmationView);
  v57 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v58 = swift_allocObject();
  sub_10000F6C0(v56, v58 + v57, type metadata accessor for InstallSheetConfirmationView);
  v59 = sub_1000047BC(&qword_100088B40, &qword_100065F48);
  v60 = v87;
  v61 = &v87[*(v59 + 36)];
  v62 = *(sub_1000047BC(&qword_100088B48, &qword_100065F50) + 28);
  OpenURLAction.init(handler:)();
  *v61 = KeyPath;
  v63 = v80;
  *v60 = v90;
  *(v60 + 8) = v63;
  *(v60 + 16) = v53 & 1;
  *(v60 + 24) = v91;
  LOBYTE(v47) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v64 = v60 + *(v86 + 36);
  *v64 = v47;
  *(v64 + 8) = v65;
  *(v64 + 16) = v66;
  *(v64 + 24) = v67;
  *(v64 + 32) = v68;
  *(v64 + 40) = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v43 + 8))(v46, v45);
  v69 = v89;
  sub_1000110B8(v60, v89, &qword_100088B28, &qword_100065EF8);
  v70 = v93;
  v71 = (v69 + *(v93 + 36));
  v72 = v101;
  v71[4] = v100;
  v71[5] = v72;
  v71[6] = v102;
  v73 = v97;
  *v71 = v96;
  v71[1] = v73;
  v74 = v99;
  v71[2] = v98;
  v71[3] = v74;
  v75 = v69;
  v76 = v88;
  sub_1000110B8(v75, v88, &qword_100088B30, &unk_100065F00);
  v77 = v95;
  sub_1000110B8(v76, v95, &qword_100088B30, &unk_100065F00);
  return (*(v94 + 56))(v77, 0, 1, v70);
}

uint64_t sub_100006AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v40 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v41 = v7;
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MainActor();
  v39 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v35 = v15 + 56;
  v36 = v16;
  v16(v12, 1, 1, v14);
  v33 = *(v5 + 16);
  v33(v8, a1, v4);
  v17 = static MainActor.shared.getter();
  v18 = *(v5 + 80);
  v32 = v13;
  v19 = swift_allocObject();
  v31 = a1;
  v20 = v19;
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  v34 = *(v5 + 32);
  v34(v19 + ((v18 + 32) & ~v18), v8, v4);
  v37 = v12;
  sub_100007654(0, 0, v12, &unk_100065F60, v20);

  v21 = (v38 + *(type metadata accessor for InstallSheetConfirmationView(0) + 24));
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v26 = v37;
    v36(v37, 1, 1, v14);
    v33(v8, v31, v4);
    swift_unknownObjectRetain();
    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = Strong;
    v34(v28 + ((v18 + 40) & ~v18), v8, v4);
    sub_100007654(0, 0, v26, &unk_100065F68, v28);

    swift_unknownObjectRelease();
  }

  static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_1000047BC(&qword_100088B50, &qword_100065F70);
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(sub_100006FE0, v9, v8);
}

uint64_t sub_100006FE0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    URL._bridgeToObjectiveC()((v0 + 80));
    v10 = v7;
    *(v0 + 248) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1000071E4;
    swift_continuation_init();
    *(v0 + 136) = v6;
    v8 = sub_1000104C4((v0 + 112));
    sub_1000047BC(&qword_100088B58, &qword_100065F78);
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v8, v4, v6);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100007580;
    *(v0 + 104) = &unk_10007E938;
    [v2 openURL:v10 configuration:0 completionHandler:?];
    (*(v3 + 8))(v8, v6);
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_1000071E4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_10000739C;
  }

  else
  {
    v6 = sub_100007314;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100007314()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];

  v4 = v0[21];

  v5 = v0[26];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000739C()
{
  v23 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];

  swift_willThrow();

  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  sub_1000105E8(v6, qword_10008C4D8);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[20];
    v16 = Error.localizedDescription.getter();
    v18 = sub_10000F78C(v16, v17, &v22);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to open learn more url: %{public}s", v11, 0xCu);
    sub_10001059C(v12);
  }

  else
  {
  }

  v19 = v0[26];

  v20 = v0[1];

  return v20();
}

void sub_100007580(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_100088B50, &qword_100065F70);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000047BC(&qword_100088B50, &qword_100065F70);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100007654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000047BC(&unk_100088F10, &qword_100065D60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100010668(a3, v26 - v10, &unk_100088F10, &qword_100065D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011C14(v11, &unk_100088F10, &qword_100065D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

      return v24;
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

  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100007954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100010668(a3, v27 - v11, &unk_100088F10, &qword_100065D60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100011C14(v12, &unk_100088F10, &qword_100065D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1000047BC(&qword_100088BA0, &qword_100065FD0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

      return v24;
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

  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1000047BC(&qword_100088BA0, &qword_100065FD0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100007C68@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for InstallSheetConfirmationView(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2 - 8);
  v38 = v4;
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000047BC(&qword_1000889B8, &qword_100065CF8);
  v5 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v7 = &v32 - v6;
  v8 = sub_1000047BC(&qword_1000889C0, &qword_100065D00);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v33 = sub_1000047BC(&qword_1000889C8, &qword_100065D08);
  v12 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v14 = &v32 - v13;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_1000047BC(&qword_1000889D0, &qword_100065D10);
  v16 = &v7[*(v15 + 44)];
  __chkstk_darwin(v15);
  static Axis.Set.vertical.getter();
  sub_1000047BC(&qword_1000889D8, &qword_100065D18);
  sub_10000B798();
  ScrollView.init(_:showsIndicators:content:)();
  v17 = static HorizontalAlignment.center.getter();
  v18 = &v16[*(sub_1000047BC(&qword_100088A28, &qword_100065D40) + 36)];
  sub_10000AE30(v1, v18);
  VerticalEdge.rawValue.getter();
  v19 = Edge.init(rawValue:)();
  v20 = static SafeAreaRegions.container.getter();

  v21 = v18 + *(sub_1000047BC(&qword_100088A30, &qword_100065D48) + 36);
  *v21 = v20;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v21 + 17) = v19;
  *(v21 + 24) = v17;
  sub_100012174(&qword_100088A38, &qword_1000889B8, &qword_100065CF8);
  View.interactiveDismissDisabled(_:)();
  sub_100011C14(v7, &qword_1000889B8, &qword_100065CF8);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v35 + 32))(v14, v11, v36);
  v22 = &v14[*(v33 + 36)];
  v23 = v46;
  *(v22 + 4) = v45;
  *(v22 + 5) = v23;
  *(v22 + 6) = v47;
  v24 = v42;
  *v22 = v41;
  *(v22 + 1) = v24;
  v25 = v44;
  *(v22 + 2) = v43;
  *(v22 + 3) = v25;
  v26 = v39;
  sub_10000F540(v1, v39, type metadata accessor for InstallSheetConfirmationView);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_10000F6C0(v26, v28 + v27, type metadata accessor for InstallSheetConfirmationView);
  v29 = v40;
  sub_1000110B8(v14, v40, &qword_1000889C8, &qword_100065D08);
  result = sub_1000047BC(&qword_100088A40, &qword_100065D58);
  v31 = (v29 + *(result + 36));
  *v31 = sub_10000B9E8;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

uint64_t sub_10000819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v172 = sub_1000047BC(&qword_100088A20, &qword_100065D38);
  v3 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v166 = v146 - v4;
  v163 = type metadata accessor for InstallMarketplaceButtons(0);
  v162 = *(v163 - 8);
  v5 = *(v162 + 64);
  __chkstk_darwin(v163);
  v152 = (v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000047BC(&qword_100088A68, &qword_100065DC8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v164 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = v146 - v11;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v146 - v18;
  v20 = sub_1000047BC(&qword_100088A70, &qword_100065DD0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v146 - v22;
  v154 = sub_1000047BC(&qword_100088A78, &qword_100065DD8);
  v24 = *(*(v154 - 1) + 64);
  __chkstk_darwin(v154);
  v156 = v146 - v25;
  v155 = sub_1000047BC(&qword_100088A80, &qword_100065DE0);
  v26 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v158 = v146 - v27;
  v157 = sub_1000047BC(&qword_100088A88, &qword_100065DE8);
  v28 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v174 = v146 - v29;
  v160 = sub_1000047BC(&qword_100088A90, &qword_100065DF0);
  v30 = *(*(v160 - 8) + 64);
  v31 = __chkstk_darwin(v160);
  v161 = v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v159 = v146 - v34;
  __chkstk_darwin(v33);
  v175 = v146 - v35;
  v167 = sub_1000047BC(&qword_100088A98, &qword_100065DF8);
  v36 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v170 = v146 - v37;
  v168 = sub_1000047BC(&qword_1000889F0, &qword_100065D20);
  v38 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v40 = v146 - v39;
  v41 = sub_1000047BC(&qword_1000889D8, &qword_100065D18);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v171 = v146 - v43;
  type metadata accessor for MainActor();
  v169 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v147 = type metadata accessor for InstallSheetConfirmationView(0);
  v44 = *(v147 + 24);
  v178 = a1;
  v45 = (a1 + v44);
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v45 + 16);
  v49 = type metadata accessor for InstallSheetConfirmationViewModel(0);
  v50 = sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  v151 = v46;
  v150 = v47;
  v149 = v48;
  v148 = v49;
  v146[1] = v50;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v179 == 1 && (v51 = [objc_opt_self() currentDevice], v52 = objc_msgSend(v51, "userInterfaceIdiom"), v51, v52 != 1))
  {
    *v40 = static HorizontalAlignment.center.getter();
    *(v40 + 1) = 0;
    v40[16] = 1;
    v128 = sub_1000047BC(&qword_100088AB0, &qword_100065E58);
    sub_100009228(v178, &v40[*(v128 + 44)]);
    v129 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v138 = &v40[*(sub_1000047BC(&qword_100088A00, &qword_100065D28) + 36)];
    *v138 = v129;
    *(v138 + 1) = v131;
    *(v138 + 2) = v133;
    *(v138 + 3) = v135;
    *(v138 + 4) = v137;
    v138[40] = 0;
    v139 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v140 = &v40[*(v168 + 36)];
    *v140 = v139;
    *(v140 + 1) = v141;
    *(v140 + 2) = v142;
    *(v140 + 3) = v143;
    *(v140 + 4) = v144;
    v140[40] = 0;
    sub_100010668(v40, v170, &qword_1000889F0, &qword_100065D20);
    swift_storeEnumTagMultiPayload();
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38);
    v119 = v171;
    _ConditionalContent<>.init(storage:)();
    v125 = v40;
    v126 = &qword_1000889F0;
    v127 = &qword_100065D20;
  }

  else
  {
    v53 = v178;
    sub_10000B580(v19);
    v54 = enum case for DynamicTypeSize.large(_:);
    v177 = v13[13];
    v177(v17, enum case for DynamicTypeSize.large(_:), v12);
    v176 = sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
    v55 = dispatch thunk of static Comparable.> infix(_:_:)();
    v58 = v13[1];
    v56 = v13 + 1;
    v57 = v58;
    v58(v17, v12);
    v58(v19, v12);
    if (v55)
    {
      v59 = static HorizontalAlignment.leading.getter();
    }

    else
    {
      v59 = static HorizontalAlignment.center.getter();
    }

    *v23 = v59;
    *(v23 + 1) = 0;
    v23[16] = 1;
    v60 = sub_1000047BC(&qword_100088AA0, &qword_100065E48);
    sub_10000A24C(v53, &v23[*(v60 + 44)]);
    sub_10000B580(v19);
    v177(v17, v54, v12);
    dispatch thunk of static Comparable.> infix(_:_:)();
    v57(v17, v12);
    v57(v19, v12);
    v61 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v153 = v56;
    v70 = v54;
    v71 = v156;
    sub_1000110B8(v23, v156, &qword_100088A70, &qword_100065DD0);
    v72 = v71 + v154[9];
    *v72 = v61;
    *(v72 + 8) = v63;
    *(v72 + 16) = v65;
    *(v72 + 24) = v67;
    *(v72 + 32) = v69;
    *(v72 + 40) = 0;
    v73 = static Edge.Set.horizontal.getter();
    v154 = objc_opt_self();
    v74 = [v154 currentDevice];
    [v74 userInterfaceIdiom];

    EdgeInsets.init(_all:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = v158;
    sub_1000110B8(v71, v158, &qword_100088A78, &qword_100065DD8);
    v84 = v83 + *(v155 + 36);
    *v84 = v73;
    *(v84 + 8) = v76;
    *(v84 + 16) = v78;
    *(v84 + 24) = v80;
    *(v84 + 32) = v82;
    *(v84 + 40) = 0;
    v85 = static Edge.Set.top.getter();
    sub_10000B580(v19);
    LODWORD(v156) = v70;
    v177(v17, v70, v12);
    v86 = dispatch thunk of static Comparable.> infix(_:_:)();
    v57(v17, v12);
    v57(v19, v12);
    if ((v86 & 1) == 0)
    {
      v87 = [v154 currentDevice];
      [v87 userInterfaceIdiom];
    }

    EdgeInsets.init(_all:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v174;
    sub_1000110B8(v83, v174, &qword_100088A80, &qword_100065DE0);
    v97 = v96 + *(v157 + 36);
    *v97 = v85;
    *(v97 + 8) = v89;
    *(v97 + 16) = v91;
    *(v97 + 24) = v93;
    *(v97 + 32) = v95;
    *(v97 + 40) = 0;
    v98 = static Edge.Set.top.getter();
    sub_10000B580(v19);
    v99 = v156;
    v177(v17, v156, v12);
    LOBYTE(v96) = dispatch thunk of static Comparable.> infix(_:_:)();
    v57(v17, v12);
    v57(v19, v12);
    if ((v96 & 1) == 0)
    {
      v100 = [v154 currentDevice];
      [v100 userInterfaceIdiom];
    }

    EdgeInsets.init(_all:)();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v109 = v159;
    sub_1000110B8(v174, v159, &qword_100088A88, &qword_100065DE8);
    v110 = v109 + *(v160 + 36);
    *v110 = v98;
    *(v110 + 8) = v102;
    *(v110 + 16) = v104;
    *(v110 + 24) = v106;
    *(v110 + 32) = v108;
    *(v110 + 40) = 0;
    sub_1000110B8(v109, v175, &qword_100088A90, &qword_100065DF0);
    v111 = v178;
    sub_10000B580(v19);
    v177(v17, v99, v12);
    LOBYTE(v109) = dispatch thunk of static Comparable.> infix(_:_:)();
    v57(v17, v12);
    v57(v19, v12);
    if (v109)
    {
      v112 = v163;
      v113 = v111 + *(v147 + 20);
      v114 = v152;
      sub_10000F540(v113, v152 + *(v163 + 24), type metadata accessor for LocalizedInstallSheetContent);
      v115 = StateObject.wrappedValue.getter();
      *v114 = swift_getKeyPath();
      sub_1000047BC(&qword_100089E40, &qword_100065D50);
      swift_storeEnumTagMultiPayload();
      v116 = v114 + *(v112 + 20);
      *v116 = sub_1000121CC;
      *(v116 + 1) = v115;
      v116[16] = 0;
      v117 = v165;
      sub_10000F6C0(v114, v165, type metadata accessor for InstallMarketplaceButtons);
      v118 = 0;
    }

    else
    {
      v118 = 1;
      v117 = v165;
      v112 = v163;
    }

    v119 = v171;
    (*(v162 + 56))(v117, v118, 1, v112);
    v120 = v175;
    v121 = v161;
    sub_100010668(v175, v161, &qword_100088A90, &qword_100065DF0);
    v122 = v164;
    sub_100010668(v117, v164, &qword_100088A68, &qword_100065DC8);
    v123 = v166;
    sub_100010668(v121, v166, &qword_100088A90, &qword_100065DF0);
    v124 = sub_1000047BC(&qword_100088AA8, &qword_100065E50);
    sub_100010668(v122, v123 + *(v124 + 48), &qword_100088A68, &qword_100065DC8);
    sub_100011C14(v122, &qword_100088A68, &qword_100065DC8);
    sub_100011C14(v121, &qword_100088A90, &qword_100065DF0);
    sub_100010668(v123, v170, &qword_100088A20, &qword_100065D38);
    swift_storeEnumTagMultiPayload();
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38);
    _ConditionalContent<>.init(storage:)();
    sub_100011C14(v123, &qword_100088A20, &qword_100065D38);
    sub_100011C14(v117, &qword_100088A68, &qword_100065DC8);
    v125 = v120;
    v126 = &qword_100088A90;
    v127 = &qword_100065DF0;
  }

  sub_100011C14(v125, v126, v127);
  sub_1000110B8(v119, v173, &qword_1000889D8, &qword_100065D18);
}

uint64_t sub_100009228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_1000047BC(&qword_100088AB8, &qword_100065E60);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v6 = (&v60 - v5);
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = sub_1000047BC(&qword_100088AC0, &qword_100065E68);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = sub_1000047BC(&qword_100088AC8, &qword_100065E70);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v61 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v60 - v25;
  type metadata accessor for MainActor();
  v60 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v26 = static VerticalAlignment.center.getter();
  *(v26 + 1) = 0x4040000000000000;
  v26[16] = 0;
  v27 = sub_1000047BC(&qword_100088AD0, &qword_100065E78);
  sub_100009868(a1, &v26[*(v27 + 44)]);
  sub_10000B580(v14);
  (*(v8 + 104))(v12, enum case for DynamicTypeSize.large(_:), v7);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v28 = dispatch thunk of static Comparable.> infix(_:_:)();
  v29 = *(v8 + 8);
  v29(v12, v7);
  v29(v14, v7);
  if (v28)
  {
    v30 = type metadata accessor for InstallSheetConfirmationView(0);
    v31 = *(v30 + 20);
    v32 = type metadata accessor for InstallMarketplaceButtons(0);
    sub_10000F540(a1 + v31, v6 + *(v32 + 24), type metadata accessor for LocalizedInstallSheetContent);
    v33 = a1 + *(v30 + 24);
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    type metadata accessor for InstallSheetConfirmationViewModel(0);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
    v37 = StateObject.wrappedValue.getter();
    *v6 = swift_getKeyPath();
    sub_1000047BC(&qword_100089E40, &qword_100065D50);
    swift_storeEnumTagMultiPayload();
    v38 = v6 + *(v32 + 20);
    *v38 = sub_1000121CC;
    *(v38 + 1) = v37;
    v38[16] = 0;
    LOBYTE(v32) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = v6 + *(sub_1000047BC(&qword_100088AE0, &qword_100065E88) + 36);
    *v47 = v32;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    LOBYTE(v32) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v48 = v64;
    v49 = v6 + *(v64 + 36);
    *v49 = v32;
    *(v49 + 1) = v50;
    *(v49 + 2) = v51;
    *(v49 + 3) = v52;
    *(v49 + 4) = v53;
    v49[40] = 0;
    sub_1000110B8(v6, v20, &qword_100088AB8, &qword_100065E60);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v48 = v64;
  }

  (*(v63 + 56))(v20, v54, 1, v48);
  v55 = v61;
  sub_100010668(v26, v61, &qword_100088AC8, &qword_100065E70);
  v56 = v62;
  sub_100010668(v20, v62, &qword_100088AC0, &qword_100065E68);
  v57 = v65;
  sub_100010668(v55, v65, &qword_100088AC8, &qword_100065E70);
  v58 = sub_1000047BC(&qword_100088AD8, &qword_100065E80);
  sub_100010668(v56, v57 + *(v58 + 48), &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v20, &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v26, &qword_100088AC8, &qword_100065E70);
  sub_100011C14(v56, &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v55, &qword_100088AC8, &qword_100065E70);
}

uint64_t sub_100009868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = type metadata accessor for MiniProductPageViewWrapper(0);
  v3 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000047BC(&qword_100088AE8, &qword_100065E90);
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = sub_1000047BC(&qword_100088AF0, &qword_100065E98);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = static HorizontalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = sub_1000047BC(&qword_100088AF8, &qword_100065EA0);
  sub_100009CFC(a1, &v20[*(v21 + 44)]);
  v22 = type metadata accessor for InstallSheetConfirmationView(0);
  v23 = a1 + *(v22 + 20);
  v24 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v25 = type metadata accessor for InstallSheetContext();
  (*(*(v25 - 8) + 16))(v5, v23 + v24, v25);
  v26 = a1 + *(v22 + 24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  *&v5[*(v38 + 20)] = StateObject.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F6C0(v5, v11, type metadata accessor for MiniProductPageViewWrapper);
  v30 = &v11[*(v39 + 36)];
  v31 = v48;
  *(v30 + 4) = v47;
  *(v30 + 5) = v31;
  *(v30 + 6) = v49;
  v32 = v44;
  *v30 = v43;
  *(v30 + 1) = v32;
  v33 = v46;
  *(v30 + 2) = v45;
  *(v30 + 3) = v33;
  sub_1000110B8(v11, v13, &qword_100088AE8, &qword_100065E90);
  sub_100010668(v20, v18, &qword_100088AF0, &qword_100065E98);
  v34 = v41;
  sub_100010668(v13, v41, &qword_100088AE8, &qword_100065E90);
  v35 = v42;
  sub_100010668(v18, v42, &qword_100088AF0, &qword_100065E98);
  v36 = sub_1000047BC(&qword_100088B00, &qword_100065EA8);
  sub_100010668(v34, v35 + *(v36 + 48), &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v13, &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v20, &qword_100088AF0, &qword_100065E98);
  sub_100011C14(v34, &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v18, &qword_100088AF0, &qword_100065E98);
}

uint64_t sub_100009CFC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v59 = sub_1000047BC(&qword_100088B08, &qword_100065EB0);
  v3 = *(*(v59 - 8) + 64);
  v4 = __chkstk_darwin(v59);
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v53 - v6;
  type metadata accessor for MainActor();
  v63 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(type metadata accessor for InstallSheetConfirmationView(0) + 20));
  v8 = v7[1];
  v71 = *v7;
  v72 = v8;
  sub_10000F728();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.largeTitle.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v53 = a1;

  sub_10000F77C(v9, v11, v13 & 1);

  v19 = Text.bold()();
  v56 = v19;
  v57 = v20;
  v64 = v21;
  LOBYTE(v9) = v22;
  v23 = v20;
  sub_10000F77C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v54 = KeyPath;
  v25 = static Edge.Set.bottom.getter();
  v26 = v25;
  v55 = v25;
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v97 = v9 & 1;
  v58 = v9 & 1;
  v93 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v98[3] + 7) = *(&v98[10] + 8);
  *(&v98[4] + 7) = *(&v98[11] + 8);
  *(&v98[5] + 7) = *(&v98[12] + 8);
  *(&v98[6] + 7) = *(&v98[13] + 8);
  *(v98 + 7) = *(&v98[7] + 8);
  *(&v98[1] + 7) = *(&v98[8] + 8);
  *(&v98[2] + 7) = *(&v98[9] + 8);
  v35 = v60;
  sub_1000061F8(v60);
  v36 = swift_getKeyPath();
  v37 = v35 + *(v59 + 36);
  *v37 = v36;
  *(v37 + 8) = 0;
  v38 = v61;
  sub_100010668(v35, v61, &qword_100088B08, &qword_100065EB0);
  *&v65 = v19;
  *(&v65 + 1) = v64;
  LOBYTE(v66) = v9 & 1;
  *(&v66 + 1) = *v96;
  DWORD1(v66) = *&v96[3];
  *(&v66 + 1) = v23;
  *&v67 = KeyPath;
  BYTE8(v67) = 0;
  *(&v67 + 9) = *v95;
  HIDWORD(v67) = *&v95[3];
  LOBYTE(v68) = v26;
  *(&v68 + 1) = *v94;
  DWORD1(v68) = *&v94[3];
  *(&v68 + 1) = v28;
  *&v69 = v30;
  *(&v69 + 1) = v32;
  *&v70[0] = v34;
  BYTE8(v70[0]) = 0;
  *(v70 + 9) = v98[0];
  *(&v70[1] + 9) = v98[1];
  *(&v70[4] + 9) = v98[4];
  *(&v70[5] + 9) = v98[5];
  *(&v70[6] + 9) = v98[6];
  *(&v70[7] + 1) = *(&v98[6] + 15);
  *(&v70[2] + 9) = v98[2];
  *(&v70[3] + 9) = v98[3];
  v39 = v65;
  v40 = v66;
  v41 = v68;
  v42 = v62;
  v62[2] = v67;
  v42[3] = v41;
  *v42 = v39;
  v42[1] = v40;
  v43 = v69;
  v44 = v70[0];
  v45 = v70[2];
  v42[6] = v70[1];
  v42[7] = v45;
  v42[4] = v43;
  v42[5] = v44;
  v46 = v70[3];
  v47 = v70[4];
  v48 = v70[7];
  v42[11] = v70[6];
  v42[12] = v48;
  v49 = v70[5];
  v42[9] = v47;
  v42[10] = v49;
  v42[8] = v46;
  v50 = sub_1000047BC(&qword_100088B18, &qword_100065EE8);
  sub_100010668(v38, v42 + *(v50 + 48), &qword_100088B08, &qword_100065EB0);
  v51 = v42 + *(v50 + 64);
  *v51 = 0;
  v51[8] = 1;
  sub_100010668(&v65, &v71, &qword_100088B20, &qword_100065EF0);
  sub_100011C14(v35, &qword_100088B08, &qword_100065EB0);
  sub_100011C14(v38, &qword_100088B08, &qword_100065EB0);
  v71 = v56;
  v72 = v64;
  v73 = v58;
  *v74 = *v96;
  *&v74[3] = *&v96[3];
  v75 = v57;
  v76 = v54;
  v77 = 0;
  *v78 = *v95;
  *&v78[3] = *&v95[3];
  v79 = v55;
  *v80 = *v94;
  *&v80[3] = *&v94[3];
  v81 = v28;
  v82 = v30;
  v83 = v32;
  v84 = v34;
  v85 = 0;
  v90 = v98[4];
  v91 = v98[5];
  v92[0] = v98[6];
  *(v92 + 15) = *(&v98[6] + 15);
  v86 = v98[0];
  v87 = v98[1];
  v88 = v98[2];
  v89 = v98[3];
  sub_100011C14(&v71, &qword_100088B20, &qword_100065EF0);
}

uint64_t sub_10000A24C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v114 = a2;
  v103 = type metadata accessor for MiniProductPageViewWrapper(0);
  v3 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v106 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000047BC(&qword_100088AE8, &qword_100065E90);
  v5 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v108 = &v91 - v6;
  v107 = sub_1000047BC(&qword_100088B70, &qword_100065F90);
  v7 = *(*(v107 - 8) + 64);
  v8 = __chkstk_darwin(v107);
  v113 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v109 = &v91 - v11;
  __chkstk_darwin(v10);
  v112 = &v91 - v12;
  v13 = sub_1000047BC(&qword_100088B78, &qword_100065F98);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v102 = &v91 - v15;
  v101 = sub_1000047BC(&qword_100088B08, &qword_100065EB0);
  v16 = *(*(v101 - 8) + 64);
  v17 = __chkstk_darwin(v101);
  v111 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v99 = &v91 - v20;
  __chkstk_darwin(v19);
  v120 = &v91 - v21;
  v98 = type metadata accessor for DynamicTypeSize();
  v117 = *(v98 - 8);
  v22 = *(v117 + 64);
  v23 = __chkstk_darwin(v98);
  v97 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = &v91 - v25;
  type metadata accessor for MainActor();
  v110 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for InstallSheetConfirmationView(0);
  v94 = (a1 + *(v26 + 20));
  v95 = v26;
  v27 = *(v94 + 1);
  *&v153 = *v94;
  *(&v153 + 1) = v27;
  sub_10000F728();

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v121 = a1;
  v32 = v31;
  static Font.largeTitle.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;

  sub_10000F77C(v28, v30, v32 & 1);

  v38 = Text.bold()();
  v118 = v39;
  v119 = v38;
  v115 = v40;
  v104 = v41;
  sub_10000F77C(v33, v35, v37 & 1);

  v42 = v96;
  sub_10000B580(v96);
  v93 = enum case for DynamicTypeSize.large(_:);
  v43 = v117;
  v92 = *(v117 + 104);
  v45 = v97;
  v44 = v98;
  v92(v97);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v100 = dispatch thunk of static Comparable.> infix(_:_:)();
  v46 = *(v43 + 8);
  v46(v45, v44);
  v46(v42, v44);
  KeyPath = swift_getKeyPath();
  LODWORD(v117) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v115 &= 1u;
  v145 = v115;
  v141 = 0;
  v55 = v102;
  sub_1000061F8(v102);
  sub_10000B580(v42);
  (v92)(v45, v93, v44);
  LOBYTE(v28) = dispatch thunk of static Comparable.> infix(_:_:)();
  v46(v45, v44);
  v46(v42, v44);
  LOBYTE(v30) = (v28 & 1) == 0;
  v56 = swift_getKeyPath();
  v57 = v99;
  sub_1000110B8(v55, v99, &qword_100088B78, &qword_100065F98);
  v58 = v57 + *(v101 + 36);
  *v58 = v56;
  *(v58 + 8) = v30;
  v59 = v120;
  sub_1000110B8(v57, v120, &qword_100088B08, &qword_100065EB0);
  v60 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v61 = type metadata accessor for InstallSheetContext();
  v62 = v106;
  (*(*(v61 - 8) + 16))(v106, &v94[v60], v61);
  v63 = (v121 + *(v95 + 24));
  v64 = *v63;
  v65 = v63[1];
  v66 = *(v63 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  *(v62 + *(v103 + 20)) = StateObject.wrappedValue.getter();
  v67 = objc_opt_self();
  v68 = [v67 currentDevice];
  [v68 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v108;
  sub_10000F6C0(v62, v108, type metadata accessor for MiniProductPageViewWrapper);
  v70 = (v69 + *(v105 + 36));
  v71 = v151;
  v70[4] = v150;
  v70[5] = v71;
  v70[6] = v152;
  v72 = v147;
  *v70 = v146;
  v70[1] = v72;
  v73 = v149;
  v70[2] = v148;
  v70[3] = v73;
  v74 = [v67 currentDevice];
  [v74 userInterfaceIdiom];

  static Alignment.center.getter();
  LOBYTE(v74) = (v100 & 1) == 0;
  LODWORD(v121) = v74;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = v109;
  sub_1000110B8(v69, v109, &qword_100088AE8, &qword_100065E90);
  v76 = (v75 + *(v107 + 36));
  v77 = v158;
  v76[4] = v157;
  v76[5] = v77;
  v76[6] = v159;
  v78 = v154;
  *v76 = v153;
  v76[1] = v78;
  v79 = v156;
  v76[2] = v155;
  v76[3] = v79;
  v80 = v112;
  sub_1000110B8(v75, v112, &qword_100088B70, &qword_100065F90);
  v81 = v111;
  sub_100010668(v59, v111, &qword_100088B08, &qword_100065EB0);
  v82 = v113;
  sub_100010668(v80, v113, &qword_100088B70, &qword_100065F90);
  *&v122 = v119;
  *(&v122 + 1) = v118;
  LOBYTE(v123) = v115;
  *(&v123 + 1) = *v144;
  DWORD1(v123) = *&v144[3];
  v83 = v104;
  *(&v123 + 1) = v104;
  *&v124 = KeyPath;
  BYTE8(v124) = v74;
  HIDWORD(v124) = *&v143[3];
  *(&v124 + 9) = *v143;
  LOBYTE(v125) = v117;
  DWORD1(v125) = *&v142[3];
  *(&v125 + 1) = *v142;
  *(&v125 + 1) = v48;
  *&v126[0] = v50;
  *(&v126[0] + 1) = v52;
  *&v126[1] = v54;
  BYTE8(v126[1]) = 0;
  v84 = v123;
  v85 = v114;
  *v114 = v122;
  v85[1] = v84;
  v86 = v124;
  v87 = v125;
  v88 = v126[0];
  *(v85 + 73) = *(v126 + 9);
  v85[3] = v87;
  v85[4] = v88;
  v85[2] = v86;
  v89 = sub_1000047BC(&qword_100088B80, &qword_100065FA0);
  sub_100010668(v81, v85 + *(v89 + 48), &qword_100088B08, &qword_100065EB0);
  sub_100010668(v82, v85 + *(v89 + 64), &qword_100088B70, &qword_100065F90);
  sub_100010668(&v122, v127, &qword_100088B88, &qword_100065FA8);
  sub_100011C14(v80, &qword_100088B70, &qword_100065F90);
  sub_100011C14(v120, &qword_100088B08, &qword_100065EB0);
  sub_100011C14(v82, &qword_100088B70, &qword_100065F90);
  sub_100011C14(v81, &qword_100088B08, &qword_100065EB0);
  v127[0] = v119;
  v127[1] = v118;
  v128 = v115;
  *v129 = *v144;
  *&v129[3] = *&v144[3];
  v130 = v83;
  v131 = KeyPath;
  v132 = v121;
  *v133 = *v143;
  *&v133[3] = *&v143[3];
  v134 = v117;
  *v135 = *v142;
  *&v135[3] = *&v142[3];
  v136 = v48;
  v137 = v50;
  v138 = v52;
  v139 = v54;
  v140 = 0;
  sub_100011C14(v127, &qword_100088B88, &qword_100065FA8);
}

uint64_t sub_10000AE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = type metadata accessor for InstallMarketplaceButtons(0);
  v3 = *(*(v34 - 8) + 64);
  (__chkstk_darwin)();
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1000047BC(&qword_100088A48, &qword_100065D88);
  v6 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v32 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = sub_1000047BC(&qword_100088A50, &qword_100065D90);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17 - 8);
  v20 = &v32 - v19;
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000B580(v16);
  (*(v10 + 104))(v14, enum case for DynamicTypeSize.large(_:), v9);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v21 = dispatch thunk of static Comparable.> infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v22(v16, v9);
  if (v21)
  {
    swift_storeEnumTagMultiPayload();
    sub_10000F4F8(&qword_100088A60, type metadata accessor for InstallMarketplaceButtons);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v23 = type metadata accessor for InstallSheetConfirmationView(0);
    v24 = v34;
    sub_10000F540(a1 + *(v23 + 20), v5 + *(v34 + 24), type metadata accessor for LocalizedInstallSheetContent);
    v25 = (a1 + *(v23 + 24));
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 16);
    type metadata accessor for InstallSheetConfirmationViewModel(0);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
    v29 = StateObject.wrappedValue.getter();
    *v5 = swift_getKeyPath();
    sub_1000047BC(&qword_100089E40, &qword_100065D50);
    swift_storeEnumTagMultiPayload();
    v30 = v5 + *(v24 + 20);
    *v30 = sub_10000F60C;
    *(v30 + 1) = v29;
    v30[16] = 0;
    sub_10000F540(v5, v8, type metadata accessor for InstallMarketplaceButtons);
    swift_storeEnumTagMultiPayload();
    sub_10000F4F8(&qword_100088A60, type metadata accessor for InstallMarketplaceButtons);
    _ConditionalContent<>.init(storage:)();
    sub_10000F614(v5);
  }

  sub_1000110B8(v20, v35, &qword_100088A50, &qword_100065D90);
}

uint64_t sub_10000B328(uint64_t a1)
{
  v2 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for InstallSheetConfirmationView(0) + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = Strong;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_100007654(0, 0, v5, &unk_100065D68, v14);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10000B580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_1000047BC(&qword_100089E40, &qword_100065D50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = (&v16 - v10);
  sub_100010668(v2, &v16 - v10, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_10000B798()
{
  result = qword_1000889E0;
  if (!qword_1000889E0)
  {
    sub_10000B850(&qword_1000889D8, &qword_100065D18);
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889E0);
  }

  return result;
}

uint64_t sub_10000B850(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000B898()
{
  result = qword_1000889E8;
  if (!qword_1000889E8)
  {
    sub_10000B850(&qword_1000889F0, &qword_100065D20);
    sub_10000B924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889E8);
  }

  return result;
}

unint64_t sub_10000B924()
{
  result = qword_1000889F8;
  if (!qword_1000889F8)
  {
    sub_10000B850(&qword_100088A00, &qword_100065D28);
    sub_100012174(&qword_100088A08, &qword_100088A10, &qword_100065D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889F8);
  }

  return result;
}

uint64_t sub_10000B9E8()
{
  v1 = *(type metadata accessor for InstallSheetConfirmationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000B328(v2);
}

uint64_t sub_10000BA48@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for InstallMarketplaceButtons(0);
  v3 = v2 - 8;
  v70 = *(v2 - 8);
  v69 = *(v70 + 64);
  __chkstk_darwin(v2);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Material();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  __chkstk_darwin(v5);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_100088C50, &qword_1000660F0);
  v9 = *(v8 - 8);
  v65 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v64 = &v63 - v11;
  v12 = sub_1000047BC(&qword_100088C58, &qword_1000660F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = sub_1000047BC(&qword_100088C60, &qword_100066100);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v22 = sub_1000047BC(&qword_100088C68, &qword_100066108);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = &v63 - v25;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v27 = sub_1000047BC(&qword_100088C70, &qword_100066110);
  sub_10000C008(v1, &v16[*(v27 + 44)]);
  v28 = static Edge.Set.horizontal.getter();
  v29 = v1;
  sub_10000E74C();
  EdgeInsets.init(_all:)();
  v30 = &v16[*(v13 + 44)];
  *v30 = v28;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  LOBYTE(v13) = static Edge.Set.bottom.getter();
  v35 = [objc_opt_self() currentDevice];
  [v35 userInterfaceIdiom];

  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1000110B8(v16, v21, &qword_100088C58, &qword_1000660F8);
  v44 = &v21[*(v18 + 44)];
  *v44 = v13;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = v63;
  static Material.thin.getter();
  v46 = v1 + *(v3 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v72)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = v64;
  (*(v66 + 32))(v64, v45, v67);
  *(v51 + *(v65 + 44)) = v50;
  v52 = static Edge.Set.all.getter();
  v53 = &v26[*(v23 + 44)];
  sub_1000110B8(v51, v53, &qword_100088C50, &qword_1000660F0);
  *(v53 + *(sub_1000047BC(&qword_100088C78, &qword_100066118) + 36)) = v52;
  sub_1000110B8(v21, v26, &qword_100088C60, &qword_100066100);
  v54 = v68;
  sub_10000F540(v29, v68, type metadata accessor for InstallMarketplaceButtons);
  v55 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v56 = swift_allocObject();
  sub_10000F6C0(v54, v56 + v55, type metadata accessor for InstallMarketplaceButtons);
  v57 = static Alignment.center.getter();
  v59 = v58;
  v60 = v71;
  sub_1000110B8(v26, v71, &qword_100088C68, &qword_100066108);
  result = sub_1000047BC(&qword_100088C80, &qword_100066120);
  v62 = (v60 + *(result + 36));
  *v62 = sub_100011124;
  v62[1] = v56;
  v62[2] = v57;
  v62[3] = v59;
  return result;
}

uint64_t sub_10000C008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1000047BC(&qword_100088C88, &qword_100066128);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v73 - v5;
  v76 = sub_1000047BC(&qword_100088C90, &qword_100066130);
  v7 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v78 = &v73 - v8;
  v85 = sub_1000047BC(&qword_100088C98, &qword_100066138);
  v9 = *(*(v85 - 8) + 64);
  v10 = __chkstk_darwin(v85);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v73 - v12;
  v83 = sub_1000047BC(&qword_100088CA0, &qword_100066140);
  v13 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v73 - v14;
  v15 = sub_1000047BC(&qword_100088CA8, &qword_100066148);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v73 - v17;
  v74 = sub_1000047BC(&qword_100088CB0, &qword_100066150);
  v19 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v21 = &v73 - v20;
  v82 = sub_1000047BC(&qword_100088CB8, &qword_100066158);
  v22 = *(*(v82 - 8) + 64);
  v23 = __chkstk_darwin(v82);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v75 = &v73 - v26;
  v27 = sub_1000047BC(&qword_100088CC0, &qword_100066160);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v81 = &v73 - v29;
  type metadata accessor for MainActor();
  v80 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = a1;
  v31 = a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 20);
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v87 == 1 && (v35 = [objc_opt_self() currentDevice], v36 = objc_msgSend(v35, "userInterfaceIdiom"), v35, v36 != 1))
  {
    *v18 = static VerticalAlignment.center.getter();
    *(v18 + 1) = 0x4040000000000000;
    v18[16] = 0;
    v56 = sub_1000047BC(&qword_100088D08, &qword_100066178);
    sub_10000C988(v30, &v18[*(v56 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000110B8(v18, v21, &qword_100088CA8, &qword_100066148);
    v57 = &v21[*(v74 + 36)];
    v58 = v92;
    *(v57 + 4) = v91;
    *(v57 + 5) = v58;
    *(v57 + 6) = v93;
    v59 = v88;
    *v57 = v87;
    *(v57 + 1) = v59;
    v60 = v90;
    *(v57 + 2) = v89;
    *(v57 + 3) = v60;
    v61 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    sub_1000110B8(v21, v25, &qword_100088CB0, &qword_100066150);
    v70 = &v25[*(v82 + 36)];
    *v70 = v61;
    *(v70 + 1) = v63;
    *(v70 + 2) = v65;
    *(v70 + 3) = v67;
    *(v70 + 4) = v69;
    v70[40] = 0;
    v53 = &qword_100088CB8;
    v54 = &qword_100066158;
    v71 = v25;
    v55 = v75;
    sub_1000110B8(v71, v75, &qword_100088CB8, &qword_100066158);
    sub_100010668(v55, v84, &qword_100088CB8, &qword_100066158);
    swift_storeEnumTagMultiPayload();
    sub_1000114E0();
    sub_100011624();
    v50 = v81;
  }

  else
  {
    v37 = [objc_opt_self() currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v38 == 1)
    {
      v39 = 0x4028000000000000;
    }

    else
    {
      v39 = 0x4024000000000000;
    }

    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = v39;
    v6[16] = 0;
    v40 = sub_1000047BC(&qword_100088CC8, &qword_100066168);
    sub_10000D350(v30, &v6[*(v40 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v41 = v78;
    sub_1000110B8(v6, v78, &qword_100088C88, &qword_100066128);
    v42 = (v41 + *(v76 + 36));
    v43 = v92;
    v42[4] = v91;
    v42[5] = v43;
    v42[6] = v93;
    v44 = v88;
    *v42 = v87;
    v42[1] = v44;
    v45 = v90;
    v42[2] = v89;
    v42[3] = v45;
    sub_1000047BC(&qword_100088CD0, &qword_100066170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065660;
    v47 = static Edge.Set.leading.getter();
    *(inited + 32) = v47;
    v48 = static Edge.Set.trailing.getter();
    *(inited + 33) = v48;
    v49 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v47)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v48)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    v50 = v81;
    v51 = v77;
    sub_1000110B8(v41, v77, &qword_100088C90, &qword_100066130);
    v52 = v51 + *(v85 + 36);
    *v52 = v49;
    *(v52 + 8) = 0u;
    *(v52 + 24) = 0u;
    *(v52 + 40) = 1;
    v53 = &qword_100088C98;
    v54 = &qword_100066138;
    v55 = v79;
    sub_1000110B8(v51, v79, &qword_100088C98, &qword_100066138);
    sub_100010668(v55, v84, &qword_100088C98, &qword_100066138);
    swift_storeEnumTagMultiPayload();
    sub_1000114E0();
    sub_100011624();
  }

  _ConditionalContent<>.init(storage:)();
  sub_100011C14(v55, v53, v54);
  sub_1000110B8(v50, v86, &qword_100088CC0, &qword_100066160);
}

uint64_t sub_10000C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v94 = sub_1000047BC(&qword_100088D10, &qword_100066180);
  v3 = *(*(v94 - 8) + 64);
  v4 = __chkstk_darwin(v94);
  v97 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v95 = v72 - v7;
  __chkstk_darwin(v6);
  v96 = v72 - v8;
  v89 = type metadata accessor for BorderedProminentButtonStyle();
  v99 = *(v89 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v89);
  v79 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InstallMarketplaceButtons(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = v14;
  v16 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000047BC(&qword_100088D18, &qword_100066188);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v90 = sub_1000047BC(&qword_100088D20, &qword_100066190);
  v21 = *(*(v90 - 8) + 64);
  v22 = __chkstk_darwin(v90);
  v93 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v91 = v72 - v25;
  __chkstk_darwin(v24);
  v27 = v72 - v26;
  type metadata accessor for MainActor();
  v92 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v88 = type metadata accessor for InstallMarketplaceButtons;
  sub_10000F540(a1, v16, type metadata accessor for InstallMarketplaceButtons);
  v28 = v16;
  v82 = v16;
  v86 = *(v12 + 80);
  v29 = (v86 + 16) & ~v86;
  v87 = v15;
  v30 = swift_allocObject();
  v85 = type metadata accessor for InstallMarketplaceButtons;
  v31 = sub_10000F6C0(v28, v30 + v29, type metadata accessor for InstallMarketplaceButtons);
  __chkstk_darwin(v31);
  v84 = sub_1000047BC(&qword_100088D28, &qword_100066198);
  v83 = sub_100011A20();
  Button.init(action:label:)();
  v32 = &v20[*(v17 + 36)];
  v80 = type metadata accessor for RoundedRectangle();
  v33 = *(v80 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v77 = enum case for RoundedCornerStyle.continuous(_:);
  v76 = type metadata accessor for RoundedCornerStyle();
  v35 = *(v76 - 8);
  v75 = *(v35 + 104);
  v78 = v35 + 104;
  v75(&v32[v33], v34, v76);
  __asm { FMOV            V0.2D, #8.0 }

  v74 = _Q0;
  *v32 = _Q0;
  v73 = sub_1000047BC(&qword_100088D48, &qword_1000661A8);
  *&v32[*(v73 + 36)] = 256;
  v41 = v79;
  BorderedProminentButtonStyle.init()();
  v72[2] = sub_100011B30();
  v72[1] = sub_10000F4F8(&qword_100088D70, &type metadata accessor for BorderedProminentButtonStyle);
  v42 = v89;
  View.buttonStyle<A>(_:)();
  v43 = v27;
  v44 = *(v99 + 8);
  v99 += 8;
  v72[0] = v44;
  v44(v41, v42);
  sub_100011C14(v20, &qword_100088D18, &qword_100066188);
  static Color.gray.getter();
  v45 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v47 = sub_1000047BC(&qword_100088D78, &qword_1000661E8);
  v48 = *(v47 + 36);
  v81 = v43;
  v49 = (v43 + v48);
  *v49 = KeyPath;
  v49[1] = v45;
  v50 = static Color.blue.getter();
  v51 = v90;
  *(v43 + *(v90 + 36)) = v50;
  v52 = v82;
  sub_10000F540(a1, v82, v88);
  v53 = swift_allocObject();
  v54 = sub_10000F6C0(v52, v53 + v29, v85);
  __chkstk_darwin(v54);
  Button.init(action:label:)();
  v55 = &v20[*(v17 + 36)];
  v75(&v55[*(v80 + 20)], v77, v76);
  *v55 = v74;
  *&v55[*(v73 + 36)] = 256;
  BorderedProminentButtonStyle.init()();
  v56 = v91;
  View.buttonStyle<A>(_:)();
  (v72[0])(v41, v42);
  sub_100011C14(v20, &qword_100088D18, &qword_100066188);
  v57 = static Color.blue.getter();
  v58 = swift_getKeyPath();
  v59 = (v56 + *(v47 + 36));
  *v59 = v58;
  v59[1] = v57;
  *(v56 + *(v51 + 36)) = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v95;
  sub_1000110B8(v56, v95, &qword_100088D20, &qword_100066190);
  v61 = (v60 + *(v94 + 36));
  v62 = v105;
  v61[4] = v104;
  v61[5] = v62;
  v61[6] = v106;
  v63 = v101;
  *v61 = v100;
  v61[1] = v63;
  v64 = v103;
  v61[2] = v102;
  v61[3] = v64;
  v65 = v96;
  sub_1000110B8(v60, v96, &qword_100088D10, &qword_100066180);
  v66 = v81;
  v67 = v93;
  sub_100010668(v81, v93, &qword_100088D20, &qword_100066190);
  v68 = v97;
  sub_100010668(v65, v97, &qword_100088D10, &qword_100066180);
  v69 = v98;
  sub_100010668(v67, v98, &qword_100088D20, &qword_100066190);
  v70 = sub_1000047BC(&qword_100088D80, &qword_1000661F0);
  sub_100010668(v68, v69 + *(v70 + 48), &qword_100088D10, &qword_100066180);
  sub_100011C14(v65, &qword_100088D10, &qword_100066180);
  sub_100011C14(v66, &qword_100088D20, &qword_100066190);
  sub_100011C14(v68, &qword_100088D10, &qword_100066180);
  sub_100011C14(v67, &qword_100088D20, &qword_100066190);
}

uint64_t sub_10000D350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v125 = type metadata accessor for PlainButtonStyle();
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  __chkstk_darwin(v125);
  v122 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1000047BC(&qword_100088D88, &qword_100066208);
  v5 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v128 = &v95 - v6;
  v126 = sub_1000047BC(&qword_100088D90, &qword_100066210);
  v7 = *(*(v126 - 8) + 64);
  v8 = __chkstk_darwin(v126);
  v130 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v127 = &v95 - v11;
  __chkstk_darwin(v10);
  v129 = &v95 - v12;
  v115 = type metadata accessor for BorderedProminentButtonStyle();
  v111 = *(v115 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v115);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InstallMarketplaceButtons(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = v19;
  v21 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1000047BC(&qword_100088D18, &qword_100066188);
  v22 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v24 = &v95 - v23;
  v103 = sub_1000047BC(&qword_100088D20, &qword_100066190);
  v25 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v27 = &v95 - v26;
  v114 = sub_1000047BC(&qword_100088D98, &qword_100066218);
  v28 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v117 = &v95 - v29;
  v116 = sub_1000047BC(&qword_100088DA0, &qword_100066220);
  v30 = *(*(v116 - 8) + 64);
  v31 = __chkstk_darwin(v116);
  v121 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v105 = &v95 - v34;
  __chkstk_darwin(v33);
  v119 = &v95 - v35;
  type metadata accessor for MainActor();
  v120 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v113 = type metadata accessor for InstallMarketplaceButtons;
  v36 = a1;
  sub_10000F540(a1, v21, type metadata accessor for InstallMarketplaceButtons);
  v37 = *(v17 + 80);
  v107 = v21;
  v112 = v20;
  v104 = (v37 + 16) & ~v37;
  v38 = swift_allocObject();
  v110 = type metadata accessor for InstallMarketplaceButtons;
  v39 = sub_10000F6C0(v21, v38 + ((v37 + 16) & ~v37), type metadata accessor for InstallMarketplaceButtons);
  v102 = v36;
  __chkstk_darwin(v39);
  v109 = sub_1000047BC(&qword_100088D28, &qword_100066198);
  v108 = sub_100011A20();
  Button.init(action:label:)();
  v40 = v118;
  v41 = &v24[*(v118 + 36)];
  v106 = type metadata accessor for RoundedRectangle();
  v42 = *(v106 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v100 = enum case for RoundedCornerStyle.continuous(_:);
  v99 = type metadata accessor for RoundedCornerStyle();
  v44 = *(v99 - 8);
  v98 = *(v44 + 104);
  v101 = v44 + 104;
  v98(&v41[v42], v43, v99);
  __asm { FMOV            V0.2D, #8.0 }

  v97 = _Q0;
  *v41 = _Q0;
  v96 = sub_1000047BC(&qword_100088D48, &qword_1000661A8);
  *&v41[*(v96 + 36)] = 256;
  BorderedProminentButtonStyle.init()();
  v95 = sub_100011B30();
  sub_10000F4F8(&qword_100088D70, &type metadata accessor for BorderedProminentButtonStyle);
  v50 = v115;
  View.buttonStyle<A>(_:)();
  (*(v111 + 8))(v15, v50);
  sub_100011C14(v24, &qword_100088D18, &qword_100066188);
  v51 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v53 = &v27[*(sub_1000047BC(&qword_100088D78, &qword_1000661E8) + 36)];
  *v53 = KeyPath;
  v53[1] = v51;
  *&v27[*(v103 + 36)] = static Color.white.getter();
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  v54 = objc_opt_self();
  v55 = [v54 currentDevice];
  [v55 userInterfaceIdiom];

  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v27;
  v65 = v117;
  sub_1000110B8(v64, v117, &qword_100088D20, &qword_100066190);
  v66 = v65 + *(v114 + 36);
  *v66 = KeyPath;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  v67 = [v54 currentDevice];
  [v67 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v105;
  sub_1000110B8(v65, v105, &qword_100088D98, &qword_100066218);
  v69 = (v68 + *(v116 + 36));
  v70 = v137;
  v69[4] = v136;
  v69[5] = v70;
  v69[6] = v138;
  v71 = v133;
  *v69 = v132;
  v69[1] = v71;
  v72 = v135;
  v69[2] = v134;
  v69[3] = v72;
  v73 = v119;
  sub_1000110B8(v68, v119, &qword_100088DA0, &qword_100066220);
  v74 = v107;
  sub_10000F540(v102, v107, v113);
  v75 = v104;
  v76 = swift_allocObject();
  v77 = sub_10000F6C0(v74, v76 + v75, v110);
  __chkstk_darwin(v77);
  Button.init(action:label:)();
  v78 = &v24[*(v40 + 36)];
  v98(&v78[*(v106 + 20)], v100, v99);
  *v78 = v97;
  *&v78[*(v96 + 36)] = 256;
  v79 = v122;
  PlainButtonStyle.init()();
  sub_10000F4F8(&qword_100088DA8, &type metadata accessor for PlainButtonStyle);
  v80 = v128;
  v81 = v125;
  View.buttonStyle<A>(_:)();
  (*(v124 + 8))(v79, v81);
  sub_100011C14(v24, &qword_100088D18, &qword_100066188);
  *&v80[*(v123 + 36)] = static Color.blue.getter();
  v82 = [v54 currentDevice];
  [v82 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v83 = v80;
  v84 = v127;
  sub_1000110B8(v83, v127, &qword_100088D88, &qword_100066208);
  v85 = (v84 + *(v126 + 36));
  v86 = v144;
  v85[4] = v143;
  v85[5] = v86;
  v85[6] = v145;
  v87 = v140;
  *v85 = v139;
  v85[1] = v87;
  v88 = v142;
  v85[2] = v141;
  v85[3] = v88;
  v89 = v129;
  sub_1000110B8(v84, v129, &qword_100088D90, &qword_100066210);
  v90 = v121;
  sub_100010668(v73, v121, &qword_100088DA0, &qword_100066220);
  v91 = v130;
  sub_100010668(v89, v130, &qword_100088D90, &qword_100066210);
  v92 = v131;
  sub_100010668(v90, v131, &qword_100088DA0, &qword_100066220);
  v93 = sub_1000047BC(&qword_100088DB0, &qword_100066228);
  sub_100010668(v91, v92 + *(v93 + 48), &qword_100088D90, &qword_100066210);
  sub_100011C14(v89, &qword_100088D90, &qword_100066210);
  sub_100011C14(v73, &qword_100088DA0, &qword_100066220);
  sub_100011C14(v91, &qword_100088D90, &qword_100066210);
  sub_100011C14(v90, &qword_100088DA0, &qword_100066220);
}

__n128 sub_10000E114@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 24) + 32);
  sub_10000F728();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v9 = Text.bold()();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10000F77C(v4, v6, v8 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  result = v26;
  *(a2 + 128) = v20;
  *(a2 + 144) = v21;
  *(a2 + 160) = v22;
  *(a2 + 176) = v23;
  *(a2 + 64) = v26;
  *(a2 + 80) = v17;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  return result;
}

uint64_t sub_10000E2FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a5;
  v7 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = Strong;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v17;
    *(v19 + 40) = a4;
    sub_100007654(0, 0, v10, v22, v19);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

__n128 sub_10000E564@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 24) + 48);
  sub_10000F728();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v9 = Text.bold()();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10000F77C(v4, v6, v8 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  result = v26;
  *(a2 + 128) = v20;
  *(a2 + 144) = v21;
  *(a2 + 160) = v22;
  *(a2 + 176) = v23;
  *(a2 + 64) = v26;
  *(a2 + 80) = v17;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  return result;
}

double sub_10000E74C()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  sub_10000B580(&v13 - v6);
  (*(v1 + 104))(v5, enum case for DynamicTypeSize.large(_:), v0);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize);
  v8 = dispatch thunk of static Comparable.> infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 0.0;
  if ((v8 & 1) == 0)
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    result = 88.0;
    if (v12 != 1)
    {
      return 20.0;
    }
  }

  return result;
}

uint64_t sub_10000E914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v19 = a1;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallMarketplaceButtons(0);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = static Color.clear.getter();
  sub_10000F540(v18, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstallMarketplaceButtons);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v4);
  v12 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v13 = (v9 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_10000F6C0(v10, v14 + v12, type metadata accessor for InstallMarketplaceButtons);
  (*(v5 + 32))(v14 + v13, v7, v4);

  *a3 = v11;
  a3[1] = sub_100011414;
  a3[2] = v14;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_10000EB84(uint64_t a1)
{
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel);
  StateObject.wrappedValue.getter();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v20[0] = v12;
  v20[1] = v14;
  v20[2] = v16;
  v20[3] = v18;
  static Published.subscript.setter();
}

uint64_t sub_10000EDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10005CCA8(a1, v4, v5, v6);
}

double sub_10000EE94@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10000EF14(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v6 = a1[1];

  return static Published.subscript.setter();
}

uint64_t sub_10000EFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F030(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10000F1C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F2B8;

  return v7(a1);
}

uint64_t sub_10000F2B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F3B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F3E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_10000F1C0(a1, v5);
}

uint64_t sub_10000F4C0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F614(uint64_t a1)
{
  v2 = type metadata accessor for InstallMarketplaceButtons(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F6C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000F728()
{
  result = qword_100088B10;
  if (!qword_100088B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088B10);
  }

  return result;
}

uint64_t sub_10000F77C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000F78C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F858(v11, 0, 0, 1, a1, a2);
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
    sub_100010538(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001059C(v11);
  return v7;
}

unint64_t sub_10000F858(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F964(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10000F964(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F9B0(a1, a2);
  sub_10000FAE0(&off_10007E3B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F9B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000FBCC(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FBCC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000FAE0(uint64_t result)
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

  result = sub_10000FC40(result, v12, 1, v3);
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

void *sub_10000FBCC(uint64_t a1, uint64_t a2)
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

  sub_1000047BC(&qword_100088B68, &qword_100065F88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000047BC(&qword_100088B68, &qword_100065F88);
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

uint64_t sub_10000FD34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000FDEC()
{
  v1 = type metadata accessor for InstallSheetConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 5);

  v12 = *(v8 + 7);

  v13 = *(v8 + 9);

  v14 = *(v8 + 11);

  v15 = *(v8 + 13);

  v16 = *(v8 + 15);

  v17 = *(v8 + 17);

  v18 = *(v8 + 19);

  v19 = *(v8 + 21);

  v20 = *(v8 + 23);

  v21 = *(v8 + 25);

  v22 = *(v8 + 27);

  v23 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v24 = type metadata accessor for InstallSheetContext();
  (*(*(v24 - 8) + 8))(&v8[v23], v24);
  v25 = v5 + *(v1 + 24);
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = v25[16];
  sub_10000B9E0();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InstallSheetConfirmationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100006AE0(a1, v6, a2);
}

uint64_t sub_100010058()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001011C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_100006EE0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10001020C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100010300()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000103CC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000121F4;

  return sub_10005C298(a1, v6, v7, v8, v1 + v5);
}

uint64_t *sub_1000104C4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100010538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001059C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100010624(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000047BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000106D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000107C4;

  return v6(v2 + 32);
}

uint64_t sub_1000107C4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000108D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_1000106D0(a1, v5);
}

uint64_t sub_100010990(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001020C;

  return sub_1000106D0(a1, v5);
}

uint64_t sub_100010A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10005C83C(a1, v4, v5, v6);
}

uint64_t sub_100010B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100010CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100010E2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_100005E90(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v7 <= 0x3F)
  {
    a4(319);
    if (v8 <= 0x3F)
    {
      a5(319);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100010F14()
{
  result = qword_100088C40;
  if (!qword_100088C40)
  {
    sub_10000B850(&qword_100088A40, &qword_100065D58);
    sub_100010FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088C40);
  }

  return result;
}

unint64_t sub_100010FA0()
{
  result = qword_100088C48;
  if (!qword_100088C48)
  {
    sub_10000B850(&qword_1000889C8, &qword_100065D08);
    sub_10000B850(&qword_1000889B8, &qword_100065CF8);
    sub_100012174(&qword_100088A38, &qword_1000889B8, &qword_100065CF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088C48);
  }

  return result;
}

uint64_t sub_1000110B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000047BC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for InstallMarketplaceButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000E914(a1, v6, a2);
}

uint64_t sub_1000111A4()
{
  v1 = type metadata accessor for InstallMarketplaceButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = v9 + *(v1 + 20);
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_10000B9E0();
  v17 = v9 + *(v1 + 24);
  v18 = *(v17 + 1);

  v19 = *(v17 + 3);

  v20 = *(v17 + 5);

  v21 = *(v17 + 7);

  v22 = *(v17 + 9);

  v23 = *(v17 + 11);

  v24 = *(v17 + 13);

  v25 = *(v17 + 15);

  v26 = *(v17 + 17);

  v27 = *(v17 + 19);

  v28 = *(v17 + 21);

  v29 = *(v17 + 23);

  v30 = *(v17 + 25);

  v31 = *(v17 + 27);

  v32 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v33 = type metadata accessor for InstallSheetContext();
  (*(*(v33 - 8) + 8))(&v17[v32], v33);
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_100011414()
{
  v1 = *(type metadata accessor for InstallMarketplaceButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10000EB84(v0 + v2);
}

unint64_t sub_1000114E0()
{
  result = qword_100088CD8;
  if (!qword_100088CD8)
  {
    sub_10000B850(&qword_100088CB8, &qword_100066158);
    sub_10001156C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CD8);
  }

  return result;
}

unint64_t sub_10001156C()
{
  result = qword_100088CE0;
  if (!qword_100088CE0)
  {
    sub_10000B850(&qword_100088CB0, &qword_100066150);
    sub_100012174(&qword_100088CE8, &qword_100088CA8, &qword_100066148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CE0);
  }

  return result;
}

unint64_t sub_100011624()
{
  result = qword_100088CF0;
  if (!qword_100088CF0)
  {
    sub_10000B850(&qword_100088C98, &qword_100066138);
    sub_1000116B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CF0);
  }

  return result;
}

unint64_t sub_1000116B0()
{
  result = qword_100088CF8;
  if (!qword_100088CF8)
  {
    sub_10000B850(&qword_100088C90, &qword_100066130);
    sub_100012174(&qword_100088D00, &qword_100088C88, &qword_100066128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CF8);
  }

  return result;
}

uint64_t sub_100011768()
{
  v1 = type metadata accessor for InstallMarketplaceButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_10000B9E0();
  v12 = v5 + *(v1 + 24);
  v13 = *(v12 + 1);

  v14 = *(v12 + 3);

  v15 = *(v12 + 5);

  v16 = *(v12 + 7);

  v17 = *(v12 + 9);

  v18 = *(v12 + 11);

  v19 = *(v12 + 13);

  v20 = *(v12 + 15);

  v21 = *(v12 + 17);

  v22 = *(v12 + 19);

  v23 = *(v12 + 21);

  v24 = *(v12 + 23);

  v25 = *(v12 + 25);

  v26 = *(v12 + 27);

  v27 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v28 = type metadata accessor for InstallSheetContext();
  (*(*(v28 - 8) + 8))(&v12[v27], v28);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100011A20()
{
  result = qword_100088D30;
  if (!qword_100088D30)
  {
    sub_10000B850(&qword_100088D28, &qword_100066198);
    sub_100011AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D30);
  }

  return result;
}

unint64_t sub_100011AAC()
{
  result = qword_100088D38;
  if (!qword_100088D38)
  {
    sub_10000B850(&qword_100088D40, &qword_1000661A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D38);
  }

  return result;
}

unint64_t sub_100011B30()
{
  result = qword_100088D50;
  if (!qword_100088D50)
  {
    sub_10000B850(&qword_100088D18, &qword_100066188);
    sub_100012174(&qword_100088D58, &qword_100088D60, &qword_1000661B0);
    sub_100012174(&qword_100088D68, &qword_100088D48, &qword_1000661A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D50);
  }

  return result;
}

uint64_t sub_100011C14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000047BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011C74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100011CA0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100011D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000121F4;

  return sub_10005B180(a1, v4, v5, v6, v7);
}

uint64_t sub_100011E70(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100011EC0()
{
  result = qword_100088DB8;
  if (!qword_100088DB8)
  {
    sub_10000B850(&qword_100088C80, &qword_100066120);
    sub_100011F78();
    sub_100012174(&qword_100088DF0, &qword_100088DF8, &qword_100066248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DB8);
  }

  return result;
}

unint64_t sub_100011F78()
{
  result = qword_100088DC0;
  if (!qword_100088DC0)
  {
    sub_10000B850(&qword_100088C68, &qword_100066108);
    sub_100012030();
    sub_100012174(&qword_100088DE8, &qword_100088C78, &qword_100066118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DC0);
  }

  return result;
}

unint64_t sub_100012030()
{
  result = qword_100088DC8;
  if (!qword_100088DC8)
  {
    sub_10000B850(&qword_100088C60, &qword_100066100);
    sub_1000120BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DC8);
  }

  return result;
}

unint64_t sub_1000120BC()
{
  result = qword_100088DD0;
  if (!qword_100088DD0)
  {
    sub_10000B850(&qword_100088C58, &qword_1000660F8);
    sub_100012174(&qword_100088DD8, &qword_100088DE0, &qword_100066240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DD0);
  }

  return result;
}

uint64_t sub_100012174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000123B8(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for LicenseResolutionViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v10[4] = sub_100013750;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10005F9E8;
  v10[3] = &unk_10007ECA8;
  v7 = _Block_copy(v10);
  v8 = v1;
  v9 = v4;

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

void sub_100012544(char a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LicenseResolutionViewController();
  v44.receiver = v1;
  v44.super_class = v8;
  objc_msgSendSuper2(&v44, "viewDidAppear:", a1 & 1);
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000105E8(v9, qword_10008C4C0);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v13 = 136446467;
    v14 = LicenseResolutionContext.logKey.getter();
    v16 = sub_10000F78C(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2085;
    LicenseResolutionContext.url.getter();
    sub_1000136EC();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_10000F78C(v17, v19, aBlock);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Activating license resolution sheet: %{sensitive}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  LicenseResolutionContext.url.getter();
  v21 = objc_allocWithZone(SFSafariViewController);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v21 initWithURL:v23];

  (*(v4 + 8))(v7, v3);
  v26 = v25;
  [v26 setModalPresentationStyle:2];
  [v26 setDelegate:v10];
  v27 = [v26 presentationController];

  if (v27)
  {
    [v27 setDelegate:v10];
  }

  v28 = [v10 view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v28 window];

  if (v30)
  {
    v31 = [v30 _rootSheetPresentationController];

    if (v31)
    {
      [v31 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  v32 = [objc_opt_self() blackColor];
  v33 = v32;
  v34 = 0.8;
  if (*(v10 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad))
  {
    v34 = 0.4;
  }

  v35 = [v32 colorWithAlphaComponent:v34];

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v10;
  *(v37 + 24) = v35;
  aBlock[4] = sub_100013750;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005F9E8;
  aBlock[3] = &unk_10007EC58;
  v38 = _Block_copy(aBlock);
  v39 = v10;
  v40 = v35;

  [v36 animateWithDuration:v38 animations:0.3];
  _Block_release(v38);

  [v39 presentViewController:v26 animated:1 completion:0];
}

void sub_100012A8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100012B6C(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100012C50()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = LicenseResolutionContext.logKey.getter();
    v9 = sub_10000F78C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Completing license resolution request", v5, 0xCu);
    sub_10001059C(v6);
  }

  v10 = [objc_opt_self() clearColor];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v10;
  v23 = sub_10001363C;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10005F9E8;
  v22 = &unk_10007EBB8;
  v13 = _Block_copy(&v19);
  v14 = v2;
  v15 = v10;

  [v11 animateWithDuration:v13 animations:0.3];
  _Block_release(v13);

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v23 = sub_100013694;
  v24 = v16;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10005F9E8;
  v22 = &unk_10007EC08;
  v17 = _Block_copy(&v19);
  v18 = v14;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_100012F50(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_10001369C(v3);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_10001369C(v6);
}

id sub_1000130C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LicenseResolutionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LicenseResolutionViewController()
{
  result = qword_100088E40;
  if (!qword_100088E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000131CC()
{
  result = type metadata accessor for LicenseResolutionContext();
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

uint64_t sub_100013290()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100013324, v2, v1);
}

uint64_t sub_100013324()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100012C50();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100013548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001020C;

  return sub_100013270(a1, v4, v5, v6);
}

uint64_t sub_100013644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001365C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001369C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000136AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000136EC()
{
  result = qword_100089F70;
  if (!qword_100089F70)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089F70);
  }

  return result;
}

uint64_t sub_100013788()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running OAuth web authentication task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 32) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 24);
    v14 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v15 = v12;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithSceneProvidingProcess:v15 configurationIdentifier:v16];
    *(v0 + 40) = v17;

    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *(v18 + 16) = v13;
    *(v18 + 24) = v17;
    v19 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    *(v0 + 56) = v20;
    v21 = sub_1000047BC(&qword_100088FD8, &qword_100066380);
    *v20 = v0;
    v20[1] = sub_100013B58;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1000157C4, v18, v21);
  }

  else
  {
    v22 = *(v0 + 24);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 24);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = *(v25 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey);
      *(v26 + 4) = v28;
      *v27 = v28;
      v29 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] No identity", v26, 0xCu);
      sub_100011C14(v27, &qword_100088FD0, &qword_1000673F0);
    }

    v30 = sub_100059874(&_swiftEmptyArrayStorage);
    v31 = *(v0 + 8);

    return v31(v30);
  }
}

uint64_t sub_100013B58()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100013C70, 0, 0);
}

uint64_t sub_100013C70()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_100013CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&unk_100088FE0, &qword_100066388);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35[-v9];
  v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v7 + 32))(v14 + v13, v10, v6);
  v40 = sub_1000158D4;
  v41 = v14;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100043F50;
  v39 = &unk_10007ED20;
  v15 = _Block_copy(&aBlock);
  v16 = objc_opt_self();

  v17 = [v16 responderWithHandler:v15];
  _Block_release(v15);

  v18 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v17];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v18;
  v20 = v18;
  sub_10004DA58(inited);
  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  sub_10001596C();
  sub_1000159B8(&qword_100089370, sub_10001596C);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v11 setActions:isa];

  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for OAuthAuthorizationContext();
  sub_1000159B8(&unk_100089000, &type metadata accessor for OAuthAuthorizationContext);
  v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v28 = v27;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v37 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v29 + 96) = &type metadata for Data;
  *(v29 + 72) = v26;
  *(v29 + 80) = v28;
  sub_100015A00(v26, v28);
  sub_100059988(v29);
  swift_setDeallocating();
  sub_100011C14(v29 + 32, &qword_100089010, &qword_1000663A0);
  v30 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setUserInfo:v30];

  v31 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v11];
  v32 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle) = v31;
  v33 = v31;

  [v33 registerObserver:a2];
  v34 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v33 activateWithContext:v34];

  sub_100015A54(v26, v28);
}

void sub_10001438C(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = type metadata accessor for URLQueryItem();
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v68);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000047BC(&qword_100089018, &qword_1000663A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [a1 info];
  if (!v20)
  {
    v71 = 0u;
    v72 = 0u;
LABEL_11:
    v25 = &unk_100089020;
    v26 = &unk_1000663B0;
    v27 = &v71;
    goto LABEL_12;
  }

  v21 = v5;
  v63 = v17;
  v22 = v20;
  v23 = [v20 objectForSetting:2];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v71 = v69;
  v72 = v70;
  if (!*(&v70 + 1))
  {
    goto LABEL_11;
  }

  v24 = v21;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000105E8(v28, qword_10008C4C0);
    v29 = v19;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *&v29[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] No response provided, defaulting to cancel.", v32, 0xCu);
      sub_100011C14(v33, &qword_100088FD0, &qword_1000673F0);
    }

    *&v71 = sub_100059874(&_swiftEmptyArrayStorage);
    sub_1000047BC(&unk_100088FE0, &qword_100066388);
    CheckedContinuation.resume(returning:)();

    return;
  }

  URLComponents.init(string:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v25 = &qword_100089018;
    v26 = &qword_1000663A8;
    v27 = v12;
LABEL_12:
    sub_100011C14(v27, v25, v26);
    goto LABEL_13;
  }

  v36 = v63;
  (*(v14 + 32))(v63, v12, v13);
  v37 = URLComponents.queryItems.getter();
  if (!v37)
  {
    (*(v14 + 8))(v36, v13);
    goto LABEL_13;
  }

  v59 = v14;
  v60 = v13;
  v61 = v19;
  v62 = a3;
  v38 = *(v37 + 16);
  v58 = v37;
  if (v38)
  {
    v40 = *(v24 + 16);
    v39 = v24 + 16;
    v41 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v66 = *(v39 + 56);
    v67 = v40;
    v65 = (v39 - 8);
    v42 = &_swiftEmptyArrayStorage;
    v43 = v68;
    v64 = v39;
    v40(v8, v41, v68);
    while (1)
    {
      v44 = URLQueryItem.value.getter();
      if (v45)
      {
        v46 = v44;
        v47 = v45;
        v48 = URLQueryItem.name.getter();
        v50 = v49;
        (*v65)(v8, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100014DB4(0, v42[2] + 1, 1, v42);
        }

        v52 = v42[2];
        v51 = v42[3];
        if (v52 >= v51 >> 1)
        {
          v42 = sub_100014DB4((v51 > 1), v52 + 1, 1, v42);
        }

        v42[2] = v52 + 1;
        v53 = &v42[4 * v52];
        v53[4] = v48;
        v53[5] = v50;
        v53[6] = v46;
        v53[7] = v47;
        v43 = v68;
      }

      else
      {
        (*v65)(v8, v43);
      }

      v41 += v66;
      if (!--v38)
      {
        break;
      }

      v67(v8, v41, v43);
    }
  }

  else
  {
    v42 = &_swiftEmptyArrayStorage;
  }

  if (v42[2])
  {
    sub_1000047BC(&qword_100089028, &qword_1000663B8);
    v54 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v54 = &_swiftEmptyDictionarySingleton;
  }

  v55 = v61;
  v56 = v60;
  v57 = v59;
  *&v71 = v54;
  sub_100014EE8(v42, 1, &v71);

  sub_1000047BC(&unk_100088FE0, &qword_100066388);
  CheckedContinuation.resume(returning:)();

  (*(v57 + 8))(v63, v56);
}

id sub_100014A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OAuthAuthorizationTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OAuthAuthorizationTask()
{
  result = qword_100088F60;
  if (!qword_100088F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014B78()
{
  result = type metadata accessor for OAuthAuthorizationContext();
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

void sub_100014C80()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void *sub_100014DB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000047BC(&qword_100089030, &qword_1000656D0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100014EE8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v49 = *(result + 48);
    v10 = *a3;

    result = sub_100057E50(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v50 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_10005877C(v15, v5 & 1);
      v17 = *v4;
      result = sub_100057E50(v8, v7);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      sub_1000582BC();
      result = v26;
      v19 = *v50;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v50;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v37 = *v4;

        result = sub_100057E50(v7, v9);
        v39 = *(v37 + 16);
        v40 = (v38 & 1) == 0;
        v14 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v38;
        if (*(v37 + 24) < v41)
        {
          sub_10005877C(v41, 1);
          v42 = *v4;
          result = sub_100057E50(v7, v9);
          if ((v8 & 1) != (v43 & 1))
          {
            goto LABEL_5;
          }
        }

        v44 = *v4;
        if (v8)
        {
          v31 = 16 * result;
          v32 = (v44[7] + 16 * result);
          v34 = *v32;
          v33 = v32[1];

          v35 = (v44[7] + v31);
          v36 = v35[1];
          *v35 = v34;
          v35[1] = v33;
        }

        else
        {
          v44[(result >> 6) + 8] |= 1 << result;
          v45 = (v44[6] + 16 * result);
          *v45 = v7;
          v45[1] = v9;
          v46 = (v44[7] + 16 * result);
          *v46 = v3;
          v46[1] = v6;
          v47 = v44[2];
          v14 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v44[2] = v48;
        }

        v5 += 4;
        --v16;
        v4 = v50;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    v28 = (v19[7] + 16 * result);
    *v28 = v49;
    v28[1] = v9;
    v29 = v19[2];
    v14 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v30;
    goto LABEL_12;
  }

  return result;
}

void sub_1000151C0()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_100015318()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_100014C80();
}

void sub_100015468(uint64_t a1)
{
  sub_100014C80();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_1000157CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015804()
{
  v1 = sub_1000047BC(&unk_100088FE0, &qword_100066388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000158D4(void *a1)
{
  v3 = *(sub_1000047BC(&unk_100088FE0, &qword_100066388) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10001438C(a1, v4, v5);
}

uint64_t sub_100015954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001596C()
{
  result = qword_100088FF0;
  if (!qword_100088FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100088FF0);
  }

  return result;
}

uint64_t sub_1000159B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100015A54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100015AA8()
{
  v1 = [objc_allocWithZone(type metadata accessor for LaunchAngelService()) init];
  v2 = type metadata accessor for LaunchAngelServiceDelegate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate_service] = v1;
  v12.receiver = v3;
  v12.super_class = v2;
  v4 = objc_msgSendSuper2(&v12, "init");
  v10[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100015DBC;
  *(v5 + 24) = v10;
  aBlock[4] = sub_100015DD4;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D04;
  aBlock[3] = &unk_10007ED70;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_self();

  v8 = [v7 listenerWithConfigurator:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v8;
    *(v0 + 24) = v4;
    return v0;
  }

  return result;
}

id sub_100015C44(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_100015D04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100015D58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100015DD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100015DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallSheetContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100015F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for InstallSheetContext();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for LocalizedCombinedApprovalAndInstallContent()
{
  result = qword_100089198;
  if (!qword_100089198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000160BC()
{
  type metadata accessor for InstallSheetContext();
  if (v0 <= 0x3F)
  {
    sub_100016184();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100016184()
{
  if (!qword_1000891A8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000891A8);
    }
  }
}

__n128 sub_1000161E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000161FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000162A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[116] = a4;
  v4[115] = a3;
  v4[114] = a2;
  v4[113] = a1;
  v5 = type metadata accessor for InstallSheetContext.InstallType();
  v4[117] = v5;
  v6 = *(v5 - 8);
  v4[118] = v6;
  v7 = *(v6 + 64) + 15;
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();

  return _swift_task_switch(sub_100016388, 0, 0);
}

uint64_t sub_100016388()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = type metadata accessor for InstallSheetContext();
  *(v0 + 976) = v4;
  v5 = *(v4 - 8);
  *(v0 + 984) = v5;
  (*(v5 + 16))(v3, v2, v4);
  v6 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  *(v0 + 992) = v6;
  v7 = v3 + *(v6 + 20);
  InstallSheetContext.Source.WebInstallContext.iconURL.getter();
  v8 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  v9 = (v3 + *(v6 + 24));
  *v9 = v8;
  v9[1] = v10;
  *(v0 + 16) = 9;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 12;
  v11 = swift_task_alloc();
  *(v0 + 1000) = v11;
  *v11 = v0;
  v11[1] = sub_1000164CC;
  v12 = *(v0 + 928);

  return sub_100049C9C(v0 + 16);
}

uint64_t sub_1000164CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1000);
  v6 = *v2;
  *(v3 + 1008) = a1;
  *(v3 + 1016) = a2;

  return _swift_task_switch(sub_1000165D0, 0, 0);
}

uint64_t sub_1000165D0()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  String.append(_:)(*(v0 + 1008));
  v7._countAndFlagsBits = 10333;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = InstallSheetContext.learnMoreURL.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  *(v0 + 1024) = 91;
  *(v0 + 1032) = 0xE100000000000000;
  v10 = (v6 + *(v1 + 52));
  *v10 = 91;
  v10[1] = 0xE100000000000000;
  InstallSheetContext.type.getter();
  v11 = (*(v3 + 88))(v2, v4);
  if (v11 == enum case for InstallSheetContext.InstallType.app(_:))
  {
    v12 = *(v0 + 1016);
    v13 = *(v0 + 920);

    v14 = InstallSheetContext.Source.WebInstallContext.domain.getter();
    *(v0 + 1040) = v15;
    *(v0 + 336) = v14;
    *(v0 + 344) = v15;
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    *(v0 + 368) = 5;
    v16 = swift_task_alloc();
    *(v0 + 1048) = v16;
    *v16 = v0;
    v16[1] = sub_100016864;
    v17 = *(v0 + 928);
    v18 = v0 + 336;
  }

  else
  {
    if (v11 != enum case for InstallSheetContext.InstallType.marketplace(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v19 = *(v0 + 1016);
    v20 = *(v0 + 920);

    v21 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
    *(v0 + 1136) = v22;
    *(v0 + 56) = v21;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = v22;
    *(v0 + 88) = 11;
    v23 = swift_task_alloc();
    *(v0 + 1144) = v23;
    *v23 = v0;
    v23[1] = sub_100017028;
    v24 = *(v0 + 928);
    v18 = v0 + 56;
  }

  return sub_100049C9C(v18);
}

uint64_t sub_100016864(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1048);
  v5 = *(*v2 + 1040);
  v7 = *v2;
  *(v3 + 1056) = a1;
  *(v3 + 1064) = a2;

  return _swift_task_switch(sub_100016988, 0, 0);
}

uint64_t sub_100016988()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 920);
  v5 = (*(v0 + 904) + *(*(v0 + 992) + 28));
  *v5 = *(v0 + 1056);
  v5[1] = v1;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v0 + 1072) = v7;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  *(v0 + 392) = v3;
  *(v0 + 400) = v2;
  *(v0 + 408) = 6;

  v8 = swift_task_alloc();
  *(v0 + 1080) = v8;
  *v8 = v0;
  v8[1] = sub_100016A74;
  v9 = *(v0 + 928);

  return sub_100049C9C(v0 + 376);
}

uint64_t sub_100016A74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1080);
  v5 = *(*v2 + 1072);
  v6 = *(*v2 + 1032);
  v8 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = a2;

  return _swift_task_switch(sub_100016BB4, 0, 0);
}

uint64_t sub_100016BB4()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 904) + *(*(v0 + 992) + 32);
  *v2 = *(v0 + 1088);
  *(v2 + 8) = v1;
  *(v2 + 16) = 0;
  *(v0 + 416) = 7;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1104) = v3;
  *v3 = v0;
  v3[1] = sub_100016C80;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 416);
}

uint64_t sub_100016C80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1104);
  v6 = *v2;
  *(v3 + 1112) = a1;
  *(v3 + 1120) = a2;

  return _swift_task_switch(sub_100016D84, 0, 0);
}

uint64_t sub_100016D84()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 992);
  v3 = *(v0 + 904);
  v4 = (v3 + *(v2 + 36));
  *v4 = *(v0 + 1112);
  v4[1] = v1;
  *(v3 + *(v2 + 68)) = 0;
  *(v0 + 456) = 18;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 12;
  v5 = swift_task_alloc();
  *(v0 + 1128) = v5;
  *v5 = v0;
  v5[1] = sub_100016E54;
  v6 = *(v0 + 928);

  return sub_100049C9C(v0 + 456);
}

uint64_t sub_100016E54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[107] = v2;
  v4[108] = a1;
  v4[109] = a2;
  v5 = v3[141];
  v7 = *v2;

  return _swift_task_switch(sub_100016F5C, 0, 0);
}

uint64_t sub_100016F5C()
{
  v1 = *(v0 + 872);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 56));
  *v2 = *(v0 + 864);
  v2[1] = v1;
  *(v0 + 496) = 1;
  *(v0 + 504) = 0;
  *(v0 + 520) = 0;
  *(v0 + 512) = 0;
  *(v0 + 528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1296) = v3;
  *v3 = v0;
  v3[1] = sub_100017D00;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100017028(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1144);
  v5 = *(*v2 + 1136);
  v7 = *v2;
  *(v3 + 1152) = a1;
  *(v3 + 1160) = a2;

  return _swift_task_switch(sub_10001714C, 0, 0);
}

uint64_t sub_10001714C()
{
  v1 = *(v0 + 1160);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 28));
  *v2 = *(v0 + 1152);
  v2[1] = v1;
  *(v0 + 96) = 20;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1168) = v3;
  *v3 = v0;
  v3[1] = sub_100017218;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 96);
}

uint64_t sub_100017218(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1168);
  v9 = *v2;
  v3[147] = a1;
  v3[148] = a2;

  v3[17] = 21;
  v5 = (v3 + 17);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *(v5 + 32) = 12;
  v6 = swift_task_alloc();
  *(v5 + 1056) = v6;
  *v6 = v9;
  v6[1] = sub_100017368;
  v7 = *(v5 + 792);

  return sub_100049C9C(v5);
}

uint64_t sub_100017368(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1192);
  v9 = *v2;
  v3[150] = a1;
  v3[151] = a2;

  v3[22] = 22;
  v5 = (v3 + 22);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *(v5 + 32) = 12;
  v6 = swift_task_alloc();
  *(v5 + 1040) = v6;
  *v6 = v9;
  v6[1] = sub_1000174B8;
  v7 = *(v5 + 752);

  return sub_100049C9C(v5);
}

uint64_t sub_1000174B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1216);
  v9 = *v2;
  v3[153] = a1;
  v3[154] = a2;

  v3[27] = 23;
  v5 = (v3 + 27);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *(v5 + 32) = 12;
  v6 = swift_task_alloc();
  *(v5 + 1024) = v6;
  *v6 = v9;
  v6[1] = sub_100017608;
  v7 = *(v5 + 712);

  return sub_100049C9C(v5);
}

uint64_t sub_100017608(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1240);
  v6 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = a2;

  return _swift_task_switch(sub_10001770C, 0, 0);
}

uint64_t sub_10001770C()
{
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1256);
  v20 = *(v0 + 1208);
  v21 = *(v0 + 1224);
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v23 = *(v0 + 992);
  v24 = *(v0 + 1232);
  v22 = *(v0 + 904);
  sub_1000047BC(&qword_100089218, &qword_1000664B8);
  v4 = (type metadata accessor for BulletPoint(0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100065660;
  v8 = v7 + v6;
  UUID.init()();
  v9 = (v8 + v4[7]);
  *v9 = 0xD000000000000020;
  v9[1] = 0x8000000100069480;
  v10 = (v8 + v4[8]);
  *v10 = v3;
  v10[1] = v2;
  v11 = (v8 + v4[9]);
  *v11 = v1;
  v11[1] = v20;
  v12 = v8 + v5;
  UUID.init()();
  v13 = (v12 + v4[7]);
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001000694B0;
  v14 = (v12 + v4[8]);
  *v14 = v21;
  v14[1] = v24;
  v15 = (v12 + v4[9]);
  *v15 = v25;
  v15[1] = v26;
  v16 = v22 + *(v23 + 32);
  *v16 = v7;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 12;
  v17 = swift_task_alloc();
  *(v0 + 1264) = v17;
  *v17 = v0;
  v17[1] = sub_100017954;
  v18 = *(v0 + 928);

  return sub_100049C9C(v0 + 256);
}

uint64_t sub_100017954(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v6 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = a2;

  return _swift_task_switch(sub_100017A58, 0, 0);
}

uint64_t sub_100017A58()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 992);
  v3 = *(v0 + 904);
  v4 = (v3 + *(v2 + 36));
  *v4 = *(v0 + 1272);
  v4[1] = v1;
  *(v3 + *(v2 + 68)) = 1;
  *(v0 + 296) = 19;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 12;
  v5 = swift_task_alloc();
  *(v0 + 1288) = v5;
  *v5 = v0;
  v5[1] = sub_100017B2C;
  v6 = *(v0 + 928);

  return sub_100049C9C(v0 + 296);
}

uint64_t sub_100017B2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[110] = v2;
  v4[111] = a1;
  v4[112] = a2;
  v5 = v3[161];
  v7 = *v2;

  return _swift_task_switch(sub_100017C34, 0, 0);
}

uint64_t sub_100017C34()
{
  v1 = *(v0 + 896);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 56));
  *v2 = *(v0 + 888);
  v2[1] = v1;
  *(v0 + 496) = 1;
  *(v0 + 504) = 0;
  *(v0 + 520) = 0;
  *(v0 + 512) = 0;
  *(v0 + 528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1296) = v3;
  *v3 = v0;
  v3[1] = sub_100017D00;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100017D00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1296);
  v6 = *v2;
  *(v3 + 1304) = a1;
  *(v3 + 1312) = a2;

  return _swift_task_switch(sub_100017E04, 0, 0);
}

uint64_t sub_100017E04()
{
  v1 = *(v0 + 1312);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 40));
  *v2 = *(v0 + 1304);
  v2[1] = v1;
  *(v0 + 536) = 3;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 552) = 0;
  *(v0 + 568) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1320) = v3;
  *v3 = v0;
  v3[1] = sub_100017ED4;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 536);
}

uint64_t sub_100017ED4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1320);
  v6 = *v2;
  *(v3 + 1328) = a1;
  *(v3 + 1336) = a2;

  return _swift_task_switch(sub_100017FD8, 0, 0);
}

uint64_t sub_100017FD8()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 920);
  v3 = (*(v0 + 904) + *(*(v0 + 992) + 44));
  *v3 = *(v0 + 1328);
  v3[1] = v1;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v0 + 1344) = v5;
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 7;
  v6 = swift_task_alloc();
  *(v0 + 1352) = v6;
  *v6 = v0;
  v6[1] = sub_1000180B0;
  v7 = *(v0 + 928);

  return sub_100049C9C(v0 + 576);
}

uint64_t sub_1000180B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1352);
  v5 = *(*v2 + 1344);
  v7 = *v2;
  *(v3 + 1360) = a1;
  *(v3 + 1368) = a2;

  return _swift_task_switch(sub_1000181D4, 0, 0);
}

uint64_t sub_1000181D4()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 920);
  v3 = (*(v0 + 904) + *(*(v0 + 992) + 48));
  *v3 = *(v0 + 1360);
  v3[1] = v1;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v0 + 1376) = v5;
  *(v0 + 616) = v4;
  *(v0 + 624) = v5;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 9;
  v6 = swift_task_alloc();
  *(v0 + 1384) = v6;
  *v6 = v0;
  v6[1] = sub_1000182B0;
  v7 = *(v0 + 928);

  return sub_100049C9C(v0 + 616);
}

uint64_t sub_1000182B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1384);
  v5 = *(*v2 + 1376);
  v7 = *v2;
  *(v3 + 1392) = a1;
  *(v3 + 1400) = a2;

  return _swift_task_switch(sub_1000183D4, 0, 0);
}

uint64_t sub_1000183D4()
{
  v1 = *(v0 + 1400);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 60));
  *v2 = *(v0 + 1392);
  v2[1] = v1;
  *(v0 + 656) = 5;
  *(v0 + 664) = 0;
  *(v0 + 680) = 0;
  *(v0 + 672) = 0;
  *(v0 + 688) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1408) = v3;
  *v3 = v0;
  v3[1] = sub_1000184A4;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 656);
}

uint64_t sub_1000184A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1408);
  v6 = *v2;
  *(v3 + 1416) = a1;
  *(v3 + 1424) = a2;

  return _swift_task_switch(sub_1000185A8, 0, 0);
}

uint64_t sub_1000185A8()
{
  v1 = *(v0 + 1424);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 64));
  *v2 = *(v0 + 1416);
  v2[1] = v1;
  *(v0 + 696) = 12;
  *(v0 + 704) = 0;
  *(v0 + 720) = 0;
  *(v0 + 712) = 0;
  *(v0 + 728) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1432) = v3;
  *v3 = v0;
  v3[1] = sub_100018674;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 696);
}

uint64_t sub_100018674(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1432);
  v6 = *v2;
  *(v3 + 1440) = a1;
  *(v3 + 1448) = a2;

  return _swift_task_switch(sub_100018778, 0, 0);
}

uint64_t sub_100018778()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 912);
  v7 = (*(v0 + 904) + *(*(v0 + 992) + 72));
  *v7 = *(v0 + 1440);
  v7[1] = v1;
  InstallSheetContext.type.getter();
  *(v0 + 52) = enum case for InstallSheetContext.InstallType.marketplace(_:);
  v8 = *(v4 + 104);
  *(v0 + 1456) = v8;
  *(v0 + 1464) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v3);
  v9 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 49) = v9 & 1;
  v10 = *(v4 + 8);
  *(v0 + 1472) = v10;
  *(v0 + 1480) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v9)
  {
    v11 = 14;
  }

  else
  {
    v11 = 13;
  }

  v10(v3, v5);
  v10(v2, v5);
  *(v0 + 736) = v11;
  *(v0 + 744) = 0;
  *(v0 + 760) = 0;
  *(v0 + 752) = 0;
  *(v0 + 768) = 12;
  v12 = swift_task_alloc();
  *(v0 + 1488) = v12;
  *v12 = v0;
  v12[1] = sub_100018904;
  v13 = *(v0 + 928);

  return sub_100049C9C(v0 + 736);
}

uint64_t sub_100018904(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1488);
  if (*(*v2 + 49))
  {
    v5 = 14;
  }

  else
  {
    v5 = 13;
  }

  v7 = *v2;
  *(v3 + 1496) = a1;
  *(v3 + 1504) = a2;

  sub_100018FBC(v5, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100018A34, 0, 0);
}

uint64_t sub_100018A34()
{
  v1 = *(v0 + 1504);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 76));
  *v2 = *(v0 + 1496);
  v2[1] = v1;
  *(v0 + 776) = 15;
  *(v0 + 784) = 0;
  *(v0 + 800) = 0;
  *(v0 + 792) = 0;
  *(v0 + 808) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1512) = v3;
  *v3 = v0;
  v3[1] = sub_100018B04;
  v4 = *(v0 + 928);

  return sub_100049C9C(v0 + 776);
}

uint64_t sub_100018B04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1512);
  v6 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = a2;

  return _swift_task_switch(sub_100018C08, 0, 0);
}

uint64_t sub_100018C08()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 52);
  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v9 = *(v0 + 936);
  v10 = *(v0 + 912);
  v11 = (*(v0 + 904) + *(*(v0 + 992) + 80));
  *v11 = *(v0 + 1520);
  v11[1] = v1;
  InstallSheetContext.type.getter();
  v5(v8, v6, v9);
  v12 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 50) = v12 & 1;
  if (v12)
  {
    v13 = 17;
  }

  else
  {
    v13 = 16;
  }

  v3(v8, v9);
  v3(v7, v9);
  *(v0 + 816) = v13;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 12;
  v14 = swift_task_alloc();
  *(v0 + 1536) = v14;
  *v14 = v0;
  v14[1] = sub_100018D64;
  v15 = *(v0 + 928);

  return sub_100049C9C(v0 + 816);
}

uint64_t sub_100018D64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1536);
  if (*(*v2 + 50))
  {
    v5 = 17;
  }

  else
  {
    v5 = 16;
  }

  v7 = *v2;
  *(v3 + 1544) = a1;
  *(v3 + 1552) = a2;

  sub_100018FBC(v5, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100018E94, 0, 0);
}

uint64_t sub_100018E94()
{
  v1 = v0[193];
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v15 = v0[194];
  v16 = v0[119];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[114];
  v10 = v0[113];

  v11 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  (*(*(v11 - 8) + 8))(v8, v11);
  (*(v3 + 8))(v9, v4);
  v12 = (v10 + *(v2 + 84));
  *v12 = v1;
  v12[1] = v15;

  v13 = v0[1];

  return v13();
}

uint64_t sub_100018FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xBu)
  {
    if (((1 << a5) & 0xEAB) != 0)
    {
    }

    else
    {
    }
  }

  return result;
}

id sub_100019264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100019450()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window] = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() bagForProfile:v6 profileVersion:v7];

  *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_bag] = v8;
  v9 = v8;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for LocalizationJetPack();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    swift_defaultActor_initialize();

    *(v16 + 112) = 0;
    v17 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
    (*(v11 + 32))(v16 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url, v5, v10);
    *(v16 + 120) = v9;
    *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer] = v16;
    v19.receiver = v0;
    v19.super_class = ObjectType;
    return objc_msgSendSuper2(&v19, "init");
  }

  return result;
}

void sub_100019740(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v90 - v8;
  v10 = sub_1000047BC(&unk_100089360, &qword_100066520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v90 - v12;
  v14 = type metadata accessor for InstallSheetContext();
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v20 = [a1 configurationContext];
  if (v20)
  {
    v92 = v9;
    v93 = v13;
    v96 = v20;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_1000105E8(v21, qword_10008C4C0);
    v23 = a2;
    v95 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v97 = v23;

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v91 = v15;
      v28 = v14;
      v29 = a1;
      v30 = v27;
      *v26 = 138412290;
      v31 = v97;
      *(v26 + 4) = v97;
      *v27 = v31;
      v32 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Handling install confirmation sheet request", v26, 0xCu);
      sub_100011C14(v30, &qword_100088FD0, &qword_1000673F0);
      a1 = v29;
      v14 = v28;
      v15 = v91;
    }

    v33 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
    v34 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v35 = *&v3[v34];
    *&v3[v34] = v33;

    v36 = v96;
    v37 = [v96 userInfo];
    if (v37)
    {
      v38 = v37;
      v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v98 = 0x44747865746E6F63;
      v99 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v39 + 16) && (v40 = sub_100057EC8(v100), (v41 & 1) != 0))
      {
        sub_100010538(*(v39 + 56) + 32 * v40, v101);
        sub_10001E2FC(v100);

        if (swift_dynamicCast())
        {
          v42 = v99;
          v91 = v98;
          v43 = type metadata accessor for PropertyListDecoder();
          v44 = *(v43 + 48);
          v45 = *(v43 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_10001E350(&qword_100089380, &type metadata accessor for InstallSheetContext);
          v46 = v93;
          v90 = v42;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          v77 = v94;
          (*(v94 + 56))(v46, 0, 1, v14);
          v97 = *(v77 + 32);
          (v97)(v19, v46, v14);
          v78 = type metadata accessor for TaskPriority();
          (*(*(v78 - 8) + 56))(v92, 1, 1, v78);
          (*(v77 + 16))(v17, v19, v14);
          type metadata accessor for MainActor();
          v95 = v3;
          v79 = v96;
          v93 = a1;
          v80 = static MainActor.shared.getter();
          v81 = *(v77 + 80);
          v96 = v19;
          v82 = (v81 + 32) & ~v81;
          v83 = (v15 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
          v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
          v85 = swift_allocObject();
          v86 = v17;
          v87 = v14;
          v88 = v85;
          *(v85 + 16) = v80;
          *(v85 + 24) = &protocol witness table for MainActor;
          (v97)(v85 + v82, v86, v87);
          *(v88 + v83) = v95;
          *(v88 + v84) = v79;
          v89 = v92;
          *(v88 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v93;
          sub_100007654(0, 0, v89, &unk_100066530, v88);
          sub_100015A54(v91, v90);

          (*(v77 + 8))(v96, v87);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v100);
      }
    }

    v54 = a1;
    v55 = v97;
    v56 = v36;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v100[0] = v61;
      *v59 = 138412546;
      *(v59 + 4) = v55;
      *v60 = v55;
      *(v59 + 12) = 2082;
      v62 = v55;
      v63 = [v56 userInfo];
      if (v63)
      {
        v64 = v63;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v65 = Dictionary.description.getter();
      v67 = v66;

      v68 = sub_10000F78C(v65, v67, v100);

      *(v59 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%@] Invalid context: %{public}s", v59, 0x16u);
      sub_100011C14(v60, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v61);
    }

    v69 = [v54 activationContext];
    if (v69)
    {
      v70 = v69;
      v71 = [v69 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v72 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = sub_10005FA2C(v72);

      if (v73)
      {
        if ([v73 canSendResponse])
        {
          v74 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v74 setObject:isa forSetting:1];

          v76 = [objc_opt_self() responseWithInfo:v74];
          [v73 sendResponse:v76];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000105E8(v47, qword_10008C4C0);
    v48 = a2;
    v97 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v48;
      *v51 = v48;
      v52 = v48;
      _os_log_impl(&_mh_execute_header, v97, v49, "[%@] No configuration context provided.", v50, 0xCu);
      sub_100011C14(v51, &qword_100088FD0, &qword_1000673F0);
    }

    v53 = v97;
  }
}

void sub_10001A268(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_100089390, &qword_100066540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v95 - v8;
  v10 = type metadata accessor for LicenseResolutionContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v95 - v16;
  v18 = [a1 configurationContext];
  if (v18)
  {
    v19 = v18;
    v99 = v15;
    v100 = v17;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_1000105E8(v20, qword_10008C4C0);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v102 = v22;

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v101 = v21;
      v27 = v19;
      v28 = v3;
      v29 = v9;
      v30 = v11;
      v31 = v10;
      v32 = a1;
      v33 = v26;
      *v25 = 138412290;
      v34 = v102;
      *(v25 + 4) = v102;
      *v26 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Handling license resolution sheet request", v25, 0xCu);
      sub_100011C14(v33, &qword_100088FD0, &qword_1000673F0);
      a1 = v32;
      v10 = v31;
      v11 = v30;
      v9 = v29;
      v3 = v28;
      v19 = v27;
    }

    v36 = objc_allocWithZone(UIWindow);
    v101 = a1;
    v37 = [v36 initWithWindowScene:a1];
    v38 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v39 = *(v3 + v38);
    *(v3 + v38) = v37;

    v40 = [v19 userInfo];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v104 = 0x44747865746E6F63;
      v105 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v43 = sub_100057EC8(v106), (v44 & 1) != 0))
      {
        sub_100010538(*(v42 + 56) + 32 * v43, v107);
        sub_10001E2FC(v106);

        if (swift_dynamicCast())
        {
          v45 = v105;
          v98 = v104;
          v46 = type metadata accessor for JSONDecoder();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_10001E350(&qword_100089398, &type metadata accessor for LicenseResolutionContext);
          v97 = v45;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          (*(v11 + 56))(v9, 0, 1, v10);
          v78 = v100;
          (*(v11 + 32))(v100, v9, v10);
          v79 = v11;
          v102 = *(v11 + 16);
          (v102)(v99, v78, v10);
          v80 = type metadata accessor for LicenseResolutionViewController();
          v81 = objc_allocWithZone(v80);
          v82 = &v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          *v82 = 0;
          v82[1] = 0;
          v96 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad;
          v83 = [objc_opt_self() currentDevice];
          v84 = [v83 userInterfaceIdiom];

          v81[v96] = v84 == 1;
          v85 = v99;
          (v102)(&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_sheetContext], v99, v10);
          v103.receiver = v81;
          v103.super_class = v80;
          v86 = objc_msgSendSuper2(&v103, "initWithNibName:bundle:", 0, 0);
          v87 = *(v11 + 8);
          v102 = v79 + 1;
          v87(v85, v10);
          v88 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v89 = &v86[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          v90 = *&v86[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          v91 = *&v86[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction + 8];
          *v89 = sub_10001E7C0;
          *(v89 + 1) = v88;

          sub_10001369C(v90);

          v92 = *(v3 + v38);
          if (v92)
          {
            [v92 setRootViewController:v86];
            v93 = *(v3 + v38);
            if (v93)
            {
              [v93 makeKeyAndVisible];
            }
          }

          v94 = v101;
          [v101 setDesiredHardwareButtonEvents:16];
          [v94 setAllowsMenuButtonDismissal:0];
          [v94 setAllowsAlertStacking:1];
          [v94 setDismissalAnimationStyle:2];
          [v94 setReachabilityDisabled:1];
          sub_100015A54(v98, v97);

          v87(v100, v10);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v106);
      }
    }

    v56 = v102;
    v57 = v19;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v106[0] = v62;
      *v60 = 138412546;
      *(v60 + 4) = v56;
      *v61 = v56;
      *(v60 + 12) = 2082;
      v63 = v56;
      v64 = [v57 userInfo];
      if (v64)
      {
        v65 = v64;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v66 = Dictionary.description.getter();
      v68 = v67;

      v69 = sub_10000F78C(v66, v68, v106);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%@] Invalid context: %{public}s", v60, 0x16u);
      sub_100011C14(v61, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v62);
    }

    v70 = [v101 activationContext];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = sub_10005FA2C(v73);

      if (v74)
      {
        if ([v74 canSendResponse])
        {
          v75 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v75 setObject:isa forSetting:1];

          v77 = [objc_opt_self() responseWithInfo:v75];
          [v74 sendResponse:v77];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000105E8(v49, qword_10008C4C0);
    v50 = a2;
    v102 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v102, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v50;
      *v53 = v50;
      v54 = v50;
      _os_log_impl(&_mh_execute_header, v102, v51, "[%@] No configuration context provided.", v52, 0xCu);
      sub_100011C14(v53, &qword_100088FD0, &qword_1000673F0);
    }

    v55 = v102;
  }
}

void sub_10001AE10(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_1000893A0, &qword_100066548);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v89 - v8;
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = [a1 configurationContext];
  if (v18)
  {
    v19 = v18;
    v91 = v15;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_1000105E8(v20, qword_10008C4C0);
    v22 = a2;
    v92 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v94 = v22;

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v93 = v9;
      v27 = v19;
      v28 = v3;
      v29 = v17;
      v30 = v11;
      v31 = v10;
      v32 = a1;
      v33 = v26;
      *v25 = 138412290;
      v34 = v94;
      *(v25 + 4) = v94;
      *v26 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Handling OAuth authentication sheet request", v25, 0xCu);
      sub_100011C14(v33, &qword_100088FD0, &qword_1000673F0);
      a1 = v32;
      v10 = v31;
      v11 = v30;
      v17 = v29;
      v3 = v28;
      v19 = v27;
      v9 = v93;
    }

    v36 = objc_allocWithZone(UIWindow);
    v93 = a1;
    v37 = [v36 initWithWindowScene:a1];
    v38 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v39 = *(v3 + v38);
    *(v3 + v38) = v37;

    v40 = [v19 userInfo];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v95 = 0x44747865746E6F63;
      v96 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v43 = sub_100057EC8(v97), (v44 & 1) != 0))
      {
        sub_100010538(*(v42 + 56) + 32 * v43, v98);
        sub_10001E2FC(v97);

        if (swift_dynamicCast())
        {
          v45 = v96;
          v90 = v95;
          v46 = type metadata accessor for JSONDecoder();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_10001E350(&qword_1000893A8, &type metadata accessor for OAuthAuthorizationContext);
          v89 = v45;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          (*(v11 + 56))(v9, 0, 1, v10);
          (*(v11 + 32))(v17, v9, v10);
          v78 = v91;
          (*(v11 + 16))(v91, v17, v10);
          v79 = objc_allocWithZone(type metadata accessor for OAuthAuthorizationViewController());
          v80 = v19;
          v81 = sub_100043834(v80, v78);

          v82 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = &v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
          v85 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
          v84 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction + 8];
          *v83 = sub_10001E7C0;
          *(v83 + 1) = v82;

          sub_10001369C(v85);

          v86 = *(v3 + v38);
          if (v86)
          {
            [v86 setRootViewController:v81];
            v87 = *(v3 + v38);
            if (v87)
            {
              [v87 makeKeyAndVisible];
            }
          }

          v88 = v93;
          [v93 setDesiredHardwareButtonEvents:16];
          [v88 setAllowsMenuButtonDismissal:0];
          [v88 setAllowsAlertStacking:1];
          [v88 setDismissalAnimationStyle:2];
          [v88 setReachabilityDisabled:1];
          sub_100015A54(v90, v89);

          (*(v11 + 8))(v17, v10);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v97);
      }
    }

    v56 = v94;
    v57 = v19;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v97[0] = v62;
      *v60 = 138412546;
      *(v60 + 4) = v56;
      *v61 = v56;
      *(v60 + 12) = 2082;
      v63 = v56;
      v64 = [v57 userInfo];
      if (v64)
      {
        v65 = v64;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v66 = Dictionary.description.getter();
      v68 = v67;

      v69 = sub_10000F78C(v66, v68, v97);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%@] Invalid context: %{public}s", v60, 0x16u);
      sub_100011C14(v61, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v62);
    }

    v70 = [v93 activationContext];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = sub_10005FA2C(v73);

      if (v74)
      {
        if ([v74 canSendResponse])
        {
          v75 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v75 setObject:isa forSetting:1];

          v77 = [objc_opt_self() responseWithInfo:v75];
          [v74 sendResponse:v77];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000105E8(v49, qword_10008C4C0);
    v50 = a2;
    v94 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v50;
      *v53 = v50;
      v54 = v50;
      _os_log_impl(&_mh_execute_header, v94, v51, "[%@] No configuration context provided.", v52, 0xCu);
      sub_100011C14(v53, &qword_100088FD0, &qword_1000673F0);
    }

    v55 = v94;
  }
}

void sub_10001B8D4(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_1000893B0, &qword_100066550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v89 - v8;
  v10 = type metadata accessor for ConfirmationSheetContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = [a1 configurationContext];
  if (v18)
  {
    v19 = v18;
    v91 = v15;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_1000105E8(v20, qword_10008C4C0);
    v22 = a2;
    v92 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v94 = v22;

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v93 = v9;
      v27 = v19;
      v28 = v3;
      v29 = v17;
      v30 = v11;
      v31 = v10;
      v32 = a1;
      v33 = v26;
      *v25 = 138412290;
      v34 = v94;
      *(v25 + 4) = v94;
      *v26 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Handling confirmation sheet request", v25, 0xCu);
      sub_100011C14(v33, &qword_100088FD0, &qword_1000673F0);
      a1 = v32;
      v10 = v31;
      v11 = v30;
      v17 = v29;
      v3 = v28;
      v19 = v27;
      v9 = v93;
    }

    v36 = objc_allocWithZone(UIWindow);
    v93 = a1;
    v37 = [v36 initWithWindowScene:a1];
    v38 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v39 = *(v3 + v38);
    *(v3 + v38) = v37;

    v40 = [v19 userInfo];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v95 = 0x44747865746E6F63;
      v96 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v42 + 16) && (v43 = sub_100057EC8(v97), (v44 & 1) != 0))
      {
        sub_100010538(*(v42 + 56) + 32 * v43, v98);
        sub_10001E2FC(v97);

        if (swift_dynamicCast())
        {
          v45 = v96;
          v90 = v95;
          v46 = type metadata accessor for PropertyListDecoder();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_10001E350(&qword_1000893B8, &type metadata accessor for ConfirmationSheetContext);
          v89 = v45;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          (*(v11 + 56))(v9, 0, 1, v10);
          (*(v11 + 32))(v17, v9, v10);
          v78 = v91;
          (*(v11 + 16))(v91, v17, v10);
          v79 = objc_allocWithZone(type metadata accessor for ConfirmationSheetContainerViewController());
          v80 = v19;
          v81 = sub_10005FB48(v80, v78);
          v82 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = &v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
          v85 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
          v84 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction + 8];
          *v83 = sub_10001E770;
          v83[1] = v82;

          sub_10001369C(v85);

          v86 = *(v3 + v38);
          if (v86)
          {
            [v86 setRootViewController:v81];
            v87 = *(v3 + v38);
            if (v87)
            {
              [v87 makeKeyAndVisible];
            }
          }

          v88 = v93;
          [v93 setDesiredHardwareButtonEvents:16];
          [v88 setAllowsMenuButtonDismissal:0];
          [v88 setAllowsAlertStacking:1];
          [v88 setDismissalAnimationStyle:2];
          [v88 setReachabilityDisabled:1];
          sub_100015A54(v90, v89);

          (*(v11 + 8))(v17, v10);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v97);
      }
    }

    v56 = v94;
    v57 = v19;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v97[0] = v62;
      *v60 = 138412546;
      *(v60 + 4) = v56;
      *v61 = v56;
      *(v60 + 12) = 2082;
      v63 = v56;
      v64 = [v57 userInfo];
      if (v64)
      {
        v65 = v64;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v66 = Dictionary.description.getter();
      v68 = v67;

      v69 = sub_10000F78C(v66, v68, v97);

      *(v60 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%@] Invalid context: %{public}s", v60, 0x16u);
      sub_100011C14(v61, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v62);
    }

    v70 = [v93 activationContext];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = sub_10005FA2C(v73);

      if (v74)
      {
        if ([v74 canSendResponse])
        {
          v75 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v75 setObject:isa forSetting:1];

          v77 = [objc_opt_self() responseWithInfo:v75];
          [v74 sendResponse:v77];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000105E8(v49, qword_10008C4C0);
    v50 = a2;
    v94 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v50;
      *v53 = v50;
      v54 = v50;
      _os_log_impl(&_mh_execute_header, v94, v51, "[%@] No configuration context provided.", v52, 0xCu);
      sub_100011C14(v53, &qword_100088FD0, &qword_1000673F0);
    }

    v55 = v94;
  }
}

uint64_t sub_10001C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001E098(a5);
}

uint64_t sub_10001C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = *(*(type metadata accessor for LocalizedInstallSheetContent() - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for InstallSheetContext();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = *(*(type metadata accessor for LocalizedCombinedApprovalAndInstallContent() - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v13 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v7[22] = v13;
  v14 = *(v13 - 8);
  v7[23] = v14;
  v15 = *(v14 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v16 = type metadata accessor for FeatureFlag();
  v7[26] = v16;
  v17 = *(v16 - 8);
  v7[27] = v17;
  v18 = *(v17 + 64) + 15;
  v7[28] = swift_task_alloc();
  v19 = *(*(type metadata accessor for Bag() - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v20 = type metadata accessor for InstallSheetContext.Source();
  v7[30] = v20;
  v21 = *(v20 - 8);
  v7[31] = v21;
  v22 = *(v21 + 64) + 15;
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v23 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v7[34] = v23;
  v24 = *(v23 - 8);
  v7[35] = v24;
  v25 = *(v24 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v26 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[40] = static MainActor.shared.getter();
  v28 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[41] = v28;
  v7[42] = v27;

  return _swift_task_switch(sub_10001C9B8, v28, v27);
}

uint64_t sub_10001C9B8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[11];
  InstallSheetContext.source.getter();
  v5 = *(v3 + 88);
  if (v5(v1, v2) == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v47 = v0[39];
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    v10 = v0[33];
    v11 = v0[29];
    v12 = v0[12];
    (*(v0[31] + 96))(v10, v0[30]);
    (*(v9 + 32))(v6, v10, v8);
    v13 = *(v12 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_bag);
    Bag.init(from:)();
    (*(v9 + 16))(v7, v6, v8);
    sub_10005618C(v11, v7, v47);
    (*(v9 + 8))(v6, v8);
    v14 = 0;
  }

  else
  {
    (*(v0[31] + 8))(v0[33], v0[30]);
    v14 = 1;
  }

  v15 = v0[39];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];
  v19 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  (*(*(v19 - 8) + 56))(v15, v14, 1, v19);
  (*(v17 + 104))(v16, enum case for FeatureFlag.newInstallSheetFlow(_:), v18);
  v20 = isFeatureEnabled(_:)();
  (*(v17 + 8))(v16, v18);
  if (v20)
  {
    v21 = v0[32];
    v22 = v0[30];
    v23 = v0[11];
    InstallSheetContext.source.getter();
    v24 = v5(v21, v22);
    v25 = v0[31];
    v26 = v0[32];
    v27 = v0[30];
    if (v24 == enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      v29 = v0[24];
      v28 = v0[25];
      v30 = v0[22];
      v31 = v0[23];
      v33 = v0[18];
      v32 = v0[19];
      v34 = v0[17];
      v35 = v0[11];
      v48 = v0[12];
      (*(v25 + 96))(v26, v27);
      (*(v31 + 32))(v28, v26, v30);
      (*(v33 + 16))(v32, v35, v34);
      (*(v31 + 16))(v29, v28, v30);
      v36 = *(v48 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer);

      v37 = swift_task_alloc();
      v0[43] = v37;
      *v37 = v0;
      v37[1] = sub_10001CDDC;
      v38 = v0[24];
      v39 = v0[21];
      v40 = v0[19];

      return sub_1000162A4(v39, v40, v38, v36);
    }

    (*(v25 + 8))(v0[32], v27);
  }

  v42 = v0[12];
  (*(v0[18] + 16))(v0[19], v0[11], v0[17]);
  v43 = *(v42 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer);

  v44 = swift_task_alloc();
  v0[44] = v44;
  *v44 = v0;
  v44[1] = sub_10001D264;
  v45 = v0[19];
  v46 = v0[16];

  return sub_10004EB64(v46, v45, v43);
}

uint64_t sub_10001CDDC()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return _swift_task_switch(sub_10001CEFC, v4, v3);
}

uint64_t sub_10001CEFC()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  sub_10001E6A8(v4, v5, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  sub_10001E5E4(v2, v3);
  v9 = objc_allocWithZone(type metadata accessor for CombinedApprovalAndInstallViewController());
  v10 = sub_10001E7C8(v7, v5, v3);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v10[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  v13 = *&v10[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  v14 = *&v10[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction + 8];
  *v12 = sub_10001E7C0;
  *(v12 + 1) = v11;

  sub_10001369C(v13);

  v15 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v16 = *(v8 + v15);
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[21];
  if (v16)
  {
    swift_endAccess();
    [v16 setRootViewController:v10];

    sub_10001E710(v20, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    (*(v19 + 8))(v17, v18);
  }

  else
  {
    sub_10001E710(v0[21], type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    (*(v19 + 8))(v17, v18);
    swift_endAccess();
  }

  v21 = v0[12];
  v22 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (v23)
  {
    [v23 makeKeyAndVisible];
  }

  v24 = v0[38];
  v25 = v0[39];
  v26 = v0[36];
  v27 = v0[37];
  v29 = v0[32];
  v28 = v0[33];
  v30 = v0[28];
  v31 = v0[29];
  v36 = v0[24];
  v37 = v0[21];
  v38 = v0[20];
  v32 = v0[19];
  v39 = v0[16];
  v40 = v0[15];
  v33 = v0[14];
  [v33 setDesiredHardwareButtonEvents:{16, v0[25]}];
  [v33 setAllowsMenuButtonDismissal:0];
  [v33 setAllowsAlertStacking:1];
  [v33 setDismissalAnimationStyle:2];
  [v33 setReachabilityDisabled:1];
  sub_100011C14(v25, &qword_100089388, &qword_100067A70);

  v34 = v0[1];

  return v34();
}

uint64_t sub_10001D264()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v6 = *v0;

  v3 = *(v1 + 336);
  v4 = *(v1 + 328);

  return _swift_task_switch(sub_10001D384, v4, v3);
}

uint64_t sub_10001D384()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  sub_10001E6A8(v4, v5, type metadata accessor for LocalizedInstallSheetContent);
  sub_10001E5E4(v2, v3);
  v9 = objc_allocWithZone(type metadata accessor for InstallConfirmationViewController());
  v10 = v7;
  v11 = sub_10005F648(v10, v5, v3);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v11[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  v14 = *&v11[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  v15 = *&v11[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction + 8];
  *v13 = sub_10001E68C;
  v13[1] = v12;

  sub_10001369C(v14);

  v16 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v17 = *(v8 + v16);
  v18 = v0[16];
  if (v17)
  {
    swift_endAccess();
    [v17 setRootViewController:v11];

    sub_10001E710(v18, type metadata accessor for LocalizedInstallSheetContent);
  }

  else
  {
    sub_10001E710(v0[16], type metadata accessor for LocalizedInstallSheetContent);
    swift_endAccess();
  }

  v19 = v0[12];
  v20 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (v21)
  {
    [v21 makeKeyAndVisible];
  }

  v22 = v0[38];
  v23 = v0[39];
  v24 = v0[36];
  v25 = v0[37];
  v27 = v0[32];
  v26 = v0[33];
  v28 = v0[28];
  v29 = v0[29];
  v34 = v0[24];
  v35 = v0[21];
  v36 = v0[20];
  v30 = v0[19];
  v37 = v0[16];
  v38 = v0[15];
  v31 = v0[14];
  [v31 setDesiredHardwareButtonEvents:{16, v0[25]}];
  [v31 setAllowsMenuButtonDismissal:0];
  [v31 setAllowsAlertStacking:1];
  [v31 setDismissalAnimationStyle:2];
  [v31 setReachabilityDisabled:1];
  sub_100011C14(v23, &qword_100089388, &qword_100067A70);

  v32 = v0[1];

  return v32();
}

void sub_10001D6BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

void sub_10001D718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

id sub_10001D774()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001D82C(void *a1, void *a2, void *a3)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000105E8(v6, qword_10008C4C0);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[2] = v9;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Application: %@, configuration for connecting scene session: %@, options: %@", v12, 0x20u);
    sub_1000047BC(&qword_100088FD0, &qword_1000673F0);
    swift_arrayDestroy();
  }

  v17 = [v8 role];
  v18 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v17];

  sub_10001E778(0, &qword_1000893C8, SBSUIRemoteAlertScene_ptr);
  [v18 setSceneClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for AppDistributionRemoteAlertSceneDelegate();
  [v18 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v18;
}

void sub_10001DA54(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for LogKey());
  v3 = sub_100055C40();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 configurationIdentifier];
    if (!v7)
    {
LABEL_5:
      if (qword_100088438 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000105E8(v13, qword_10008C4C0);
      v48 = v6;
      v14 = v3;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v50 = v19;
        *v17 = 138412546;
        *(v17 + 4) = v14;
        *v18 = v14;
        *(v17 + 12) = 2082;
        v20 = v14;
        v21 = [v5 configurationIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v49[0] = v23;
        v49[1] = v25;
        sub_1000047BC(&unk_100089350, &unk_100066510);
        v43 = String.init<A>(describing:)();
        v45 = sub_10000F78C(v43, v44, &v50);

        *(v17 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Invalid configuration identifier %{public}s", v17, 0x16u);
        sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);

        sub_10001059C(v19);

        return;
      }

      goto LABEL_31;
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v52._countAndFlagsBits = v9;
    v52._object = v11;
    v12 = sub_10002979C(v52);
    if (v12 == 4)
    {

      goto LABEL_5;
    }

    v33 = v12;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000105E8(v34, qword_10008C4C0);

    v48 = v3;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v6;
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v37 = 138412546;
      *(v37 + 4) = v48;
      *v38 = v48;
      *(v37 + 12) = 2082;
      v40 = v48;
      v41 = sub_10000F78C(v9, v11, v49);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Scene requested with identifier %{public}s", v37, 0x16u);
      sub_100011C14(v38, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v39);
      v6 = v47;
    }

    else
    {
    }

    if (v33 > 1u)
    {
      if (v33 == 2)
      {
        sub_10001AE10(v5, v48);
      }

      else
      {
        sub_10001B8D4(v5, v48);
      }
    }

    else if (v33)
    {
      sub_10001A268(v5, v48);
    }

    else
    {
      sub_100019740(v5, v48);
    }

LABEL_31:
    v42 = v48;
    goto LABEL_32;
  }

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000105E8(v26, qword_10008C4C0);
  v27 = a1;
  v46 = v3;
  v48 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v46;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v46;
    v30[1] = v27;
    v31 = v27;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v48, v28, "[%@] Expected scene to be SBSUIRemoteAlertScene but got %@", v29, 0x16u);
    sub_1000047BC(&qword_100088FD0, &qword_1000673F0);
    swift_arrayDestroy();

    goto LABEL_31;
  }

  v42 = v46;
LABEL_32:
}

void sub_10001E098(const char *a1)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_10001E188()
{
  v1 = v0;
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidDisconnect", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

unint64_t sub_10001E294()
{
  result = qword_100089370;
  if (!qword_100089370)
  {
    sub_10001E778(255, &qword_100088FF0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089370);
  }

  return result;
}

uint64_t sub_10001E350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E398()
{
  v1 = type metadata accessor for InstallSheetContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10001E498(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InstallSheetContext() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001020C;

  return sub_10001C64C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_10001E5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089388, &qword_100067A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E654()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001E778(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *sub_10001E7C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  *v11 = 0;
  v11[1] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController] = 0;
  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response] = 0;
  v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v3[v13] = v15 == 1;
  sub_100010668(a3, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics], &qword_100089388, &qword_100067A70);
  v16 = [a1 actions];
  if (v16)
  {
    sub_10001596C();
    sub_100022474(&qword_100089370, sub_10001596C);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_10005FA2C(v17);
  }

  v18 = *&v3[v12];
  *&v3[v12] = v16;

  sub_100022410(a2, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent]);
  v19 = type metadata accessor for CombinedApprovalAndInstallViewController();
  v25.receiver = v3;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  sub_100022410(a2, v10);
  objc_allocWithZone(type metadata accessor for CombinedApprovalAndInstallSheetViewController());
  v21 = v20;
  v22 = sub_10004050C(v10, v20, &off_10007EE78);

  sub_100011C14(a3, &qword_100089388, &qword_100067A70);
  sub_1000223B0(a2, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  v23 = *&v21[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController];
  *&v21[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController] = v22;

  return v21;
}

void sub_10001EB10(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CombinedApprovalAndInstallViewController();
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v4 setModalPresentationStyle:2];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 window];

  if (v7)
  {
    v8 = [v7 _rootSheetPresentationController];

    if (v8)
    {
      [v8 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  v9 = [objc_opt_self() blackColor];
  v10 = v9;
  v11 = 0.8;
  if (v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad])
  {
    v11 = 0.4;
  }

  v12 = [v9 colorWithAlphaComponent:v11];

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  v18[4] = sub_10002253C;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10005F9E8;
  v18[3] = &unk_10007EF98;
  v15 = _Block_copy(v18);
  v16 = v1;
  v17 = v12;

  [v13 animateWithDuration:v15 animations:0.3];
  _Block_release(v15);

  [v16 presentViewController:v4 animated:1 completion:0];
}

uint64_t sub_10001EED4(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 264) = a1;
  v3 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v4 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext.Source();
  *(v2 + 88) = v7;
  v8 = *(v7 - 8);
  *(v2 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  v10 = *(*(sub_1000047BC(&qword_100089388, &qword_100067A70) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v11 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  *(v2 + 128) = v11;
  v12 = *(v11 - 8);
  *(v2 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 152) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 160) = v14;
  *(v2 + 168) = v15;

  return _swift_task_switch(sub_10001F134, v14, v15);
}