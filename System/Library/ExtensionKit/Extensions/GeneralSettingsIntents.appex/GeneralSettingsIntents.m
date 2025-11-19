id sub_100001924()
{
  type metadata accessor for GeneralSettingsIntentsBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10001CB30 = result;
  return result;
}

uint64_t sub_100001980()
{
  v0 = sub_100001AE8();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for TwentyFourHourTimeToggleControl, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A58();
  sub_10000F948();
  return 0;
}

unint64_t sub_100001A58()
{
  result = qword_10001C710;
  if (!qword_10001C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C710);
  }

  return result;
}

unint64_t sub_100001AE8()
{
  result = qword_10001C718;
  if (!qword_10001C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C718);
  }

  return result;
}

id sub_100001B88(unsigned __int8 a1)
{
  v1 = 1;
  if (a1 > 0x17u)
  {
    if (a1 <= 0x1Au)
    {
      if (a1 == 24)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        v14 = [objc_allocWithZone(MTSSystemCommissionerPairingManager) init];
        v25[4] = sub_100008DBC;
        v25[5] = v13;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 1107296256;
        v25[2] = sub_100008038;
        v25[3] = &unk_100019340;
        v15 = _Block_copy(v25);

        [v14 fetchPairingsWithCompletionHandler:v15];
        _Block_release(v15);

        swift_beginAccess();
        v1 = *(v13 + 16);

        return (v1 & 1);
      }

      if (a1 != 25)
      {
        if (a1 == 26)
        {
          if (qword_10001C578 != -1)
          {
            swift_once();
          }

          v5 = qword_10001CB68;
          v6 = OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices;
          swift_beginAccess();
          v7 = *(v5 + v6);
          if ((v7 & 0xC000000000000001) != 0)
          {

            v8 = sub_10000FAE8();
          }

          else
          {
            v8 = *(v7 + 16);
          }

          v1 = v8 != 0;
        }

        return (v1 & 1);
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v3 = result;
        supportsSSHBButtonType = MobileGestalt_get_supportsSSHBButtonType();
        goto LABEL_30;
      }
    }

    else
    {
      if (a1 - 28 >= 4)
      {
        if (a1 == 27)
        {
          v3 = [objc_allocWithZone(CRCarPlayPreferences) init];
          supportsSSHBButtonType = [v3 isCarPlayAllowed];
          goto LABEL_30;
        }

        if (a1 != 32)
        {
          return (v1 & 1);
        }

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v9 = result;
          continuityCapability = MobileGestalt_get_continuityCapability();

          if (continuityCapability)
          {
            v11 = [objc_opt_self() currentDevice];
            v12 = [v11 userInterfaceIdiom];

            v1 = v12 == 0;
            return (v1 & 1);
          }

          goto LABEL_39;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v3 = result;
        supportsSSHBButtonType = MobileGestalt_get_continuityCapability();
LABEL_30:
        v1 = supportsSSHBButtonType;

        return (v1 & 1);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  if (a1 - 12 < 0xA)
  {
    v1 = !sub_1000082F4();
    return (v1 & 1);
  }

  if (a1 != 23)
  {
    return (v1 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_43;
  }

  v16 = result;
  v17 = MobileGestalt_copy_regionCode_obj();

  if (!v17)
  {
    goto LABEL_39;
  }

  v18 = sub_10000F9F8();
  v20 = v19;

  if (v18 == 18499 && v20 == 0xE200000000000000)
  {

    goto LABEL_35;
  }

  v21 = sub_10000FB98();

  if ((v21 & 1) == 0)
  {
LABEL_39:
    v1 = 0;
    return (v1 & 1);
  }

LABEL_35:
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = result;
  isSimulator = MobileGestalt_get_isSimulator();

  if (isSimulator)
  {
    goto LABEL_39;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    MobileGestalt_get_nfcRadio();

    goto LABEL_39;
  }

LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_100001F7C(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
      result = 0x74756F6241;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 14:
    case 20:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x444E415F45544144;
      break;
    case 9:
      v3 = 13;
      goto LABEL_20;
    case 10:
      result = 0x49564F52505F5654;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x7465736552;
      break;
    case 13:
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 29:
      result = 0xD000000000000025;
      break;
    case 18:
      v3 = 5;
LABEL_20:
      result = v3 | 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 21:
      result = 0x7566237465736552;
      break;
    case 22:
      result = 0x574F445455485323;
      break;
    case 23:
      result = 0x4B4E494C5F43464ELL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x5455425F454D4F48;
      break;
    case 26:
      result = 0x535245544E494F50;
      break;
    case 27:
      result = 0x59414C50524143;
      break;
    case 30:
      result = 0xD00000000000001DLL;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100002390(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100001F7C(*a1);
  v5 = v4;
  if (v3 == sub_100001F7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FB98();
  }

  return v8 & 1;
}

unint64_t sub_10000241C()
{
  result = qword_10001C730;
  if (!qword_10001C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C730);
  }

  return result;
}

Swift::Int sub_100002470()
{
  v1 = *v0;
  sub_10000FBC8();
  sub_100001F7C(v1);
  sub_10000FA08();

  return sub_10000FBD8();
}

uint64_t sub_1000024D4()
{
  sub_100001F7C(*v0);
  sub_10000FA08();
}

Swift::Int sub_100002528()
{
  v1 = *v0;
  sub_10000FBC8();
  sub_100001F7C(v1);
  sub_10000FA08();

  return sub_10000FBD8();
}

uint64_t sub_100002588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000083C4();
  *a2 = result;
  return result;
}

unint64_t sub_1000025B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001F7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002628(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002688@<X0>(_BYTE *a1@<X8>)
{

  result = sub_1000083C4();
  *a1 = result;
  return result;
}

unint64_t sub_1000026D4()
{
  result = qword_10001C748;
  if (!qword_10001C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C748);
  }

  return result;
}

unint64_t sub_10000272C()
{
  result = qword_10001C750;
  if (!qword_10001C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C750);
  }

  return result;
}

uint64_t sub_100002780()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CB38);
  sub_100008714(v0, qword_10001CB38);
  return sub_10000F8E8();
}

uint64_t sub_1000027E4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000F688();
  *a1 = v5;
  return result;
}

uint64_t sub_100002820(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10000F698();
}

void (*sub_100002858(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10000F678();
  return sub_1000028CC;
}

void sub_1000028CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002918()
{
  result = qword_10001C758;
  if (!qword_10001C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C758);
  }

  return result;
}

uint64_t sub_10000296C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008E2C();
  v5 = sub_1000087B0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000029DC()
{
  result = qword_10001C760;
  if (!qword_10001C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C760);
  }

  return result;
}

unint64_t sub_100002A34()
{
  result = qword_10001C768;
  if (!qword_10001C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C768);
  }

  return result;
}

unint64_t sub_100002A8C()
{
  result = qword_10001C770;
  if (!qword_10001C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C770);
  }

  return result;
}

uint64_t sub_100002B80(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008E2C();
  v7 = sub_100008E80();
  v8 = sub_1000087B0();
  *v5 = v2;
  v5[1] = sub_100002C4C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100002C4C()
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

uint64_t sub_100002D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008418();
  *a1 = result;
  return result;
}

uint64_t sub_100002D7C(uint64_t a1)
{
  v2 = sub_100002918();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002DBC()
{
  result = qword_10001C778;
  if (!qword_10001C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C778);
  }

  return result;
}

unint64_t sub_100002E14()
{
  result = qword_10001C780;
  if (!qword_10001C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C780);
  }

  return result;
}

unint64_t sub_100002E68()
{
  result = qword_10001C788;
  if (!qword_10001C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C788);
  }

  return result;
}

uint64_t sub_100002EBC()
{
  v0 = sub_100007FF0(&qword_10001C818, "6;");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000F8F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000F898();
  sub_10000874C(v7, qword_10001CB50);
  sub_100008714(v7, qword_10001CB50);
  sub_10000F8E8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10000F888();
}

uint64_t sub_100003028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v267 = a2;
  v268 = a1;
  v2 = sub_100007FF0(&qword_10001C810, "6;");
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v261 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v262 = &v240 - v7;
  v8 = __chkstk_darwin(v6);
  v259 = &v240 - v9;
  v10 = __chkstk_darwin(v8);
  v260 = &v240 - v11;
  v12 = __chkstk_darwin(v10);
  v258 = &v240 - v13;
  v14 = __chkstk_darwin(v12);
  v257 = &v240 - v15;
  v16 = __chkstk_darwin(v14);
  v256 = &v240 - v17;
  v18 = __chkstk_darwin(v16);
  v255 = &v240 - v19;
  v20 = __chkstk_darwin(v18);
  v253 = &v240 - v21;
  v22 = __chkstk_darwin(v20);
  v252 = &v240 - v23;
  v24 = __chkstk_darwin(v22);
  v254 = &v240 - v25;
  __chkstk_darwin(v24);
  v264 = &v240 - v26;
  v27 = sub_100007FF0(&qword_10001C818, "6;");
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v250 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v251 = &v240 - v32;
  v33 = __chkstk_darwin(v31);
  v248 = &v240 - v34;
  v35 = __chkstk_darwin(v33);
  v249 = &v240 - v36;
  v37 = __chkstk_darwin(v35);
  v247 = &v240 - v38;
  v39 = __chkstk_darwin(v37);
  v246 = &v240 - v40;
  v41 = __chkstk_darwin(v39);
  v245 = &v240 - v42;
  v43 = __chkstk_darwin(v41);
  v244 = &v240 - v44;
  v45 = __chkstk_darwin(v43);
  v242 = &v240 - v46;
  v47 = __chkstk_darwin(v45);
  v241 = &v240 - v48;
  v49 = __chkstk_darwin(v47);
  v243 = &v240 - v50;
  __chkstk_darwin(v49);
  v263 = &v240 - v51;
  v52 = sub_10000F8F8();
  v53 = *(v52 - 8);
  v265 = v52;
  v266 = v53;
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v56 = __chkstk_darwin(v55);
  v57 = __chkstk_darwin(v56);
  v58 = __chkstk_darwin(v57);
  v59 = __chkstk_darwin(v58);
  v60 = __chkstk_darwin(v59);
  v61 = __chkstk_darwin(v60);
  v62 = __chkstk_darwin(v61);
  v63 = __chkstk_darwin(v62);
  v64 = __chkstk_darwin(v63);
  v65 = __chkstk_darwin(v64);
  v66 = __chkstk_darwin(v65);
  v67 = __chkstk_darwin(v66);
  __chkstk_darwin(v67);
  switch(v268)
  {
    case 1:
    case 11:
      sub_10000F8E8();
      v93 = v263;
      sub_10000F8E8();
      v94 = v266 + 56;
      (*(v266 + 56))(v93, 0, 1, v265);
      v95 = v264;
      sub_10000F738();
      v96 = sub_10000F748();
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      sub_100007FF0(&qword_10001C820, "6;");
      v97 = *(v94 + 16);
      v98 = (*(v94 + 24) + 32) & ~*(v94 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 2:
    case 3:
    case 4:
    case 7:
    case 24:
    case 31:
      sub_10000F8E8();
      v125 = v263;
      sub_10000F8E8();
      v126 = v266 + 56;
      (*(v266 + 56))(v125, 0, 1, v265);
      v127 = v264;
      sub_10000F738();
      v128 = sub_10000F748();
      (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
      sub_100007FF0(&qword_10001C820, "6;");
      v129 = *(v126 + 16);
      v130 = (*(v126 + 24) + 32) & ~*(v126 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      goto LABEL_28;
    case 5:
      sub_10000F8E8();
      v145 = v263;
      sub_10000F8E8();
      v146 = v266 + 56;
      (*(v266 + 56))(v145, 0, 1, v265);
      v147 = v264;
      sub_10000F738();
      v148 = sub_10000F748();
      (*(*(v148 - 8) + 56))(v147, 0, 1, v148);
      sub_100007FF0(&qword_10001C820, "6;");
      v149 = *(v146 + 16);
      v150 = (*(v146 + 24) + 32) & ~*(v146 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 6:
      sub_10000F8E8();
      v165 = v263;
      sub_10000F8E8();
      v166 = v266 + 56;
      (*(v266 + 56))(v165, 0, 1, v265);
      v167 = v264;
      sub_10000F738();
      v168 = sub_10000F748();
      (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
      sub_100007FF0(&qword_10001C820, "6;");
      v169 = *(v166 + 16);
      v170 = (*(v166 + 24) + 32) & ~*(v166 + 24);
      *(swift_allocObject() + 16) = xmmword_100010350;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 8:
      sub_10000F8E8();
      v184 = v263;
      sub_10000F8E8();
      v185 = v266 + 56;
      (*(v266 + 56))(v184, 0, 1, v265);
      v186 = v264;
      sub_10000F738();
      v187 = sub_10000F748();
      (*(*(v187 - 8) + 56))(v186, 0, 1, v187);
      sub_100007FF0(&qword_10001C820, "6;");
      v188 = *(v185 + 16);
      v189 = (*(v185 + 24) + 32) & ~*(v185 + 24);
      *(swift_allocObject() + 16) = xmmword_100010330;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 9:
      sub_10000F8E8();
      v106 = v263;
      sub_10000F8E8();
      v107 = v266 + 56;
      (*(v266 + 56))(v106, 0, 1, v265);
      v108 = v264;
      sub_10000F738();
      v109 = sub_10000F748();
      (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
      sub_100007FF0(&qword_10001C820, "6;");
      v110 = *(v107 + 16);
      v111 = (*(v107 + 24) + 32) & ~*(v107 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_28;
    case 10:
      sub_10000F8E8();
      v178 = v263;
      sub_10000F8E8();
      v179 = v266 + 56;
      (*(v266 + 56))(v178, 0, 1, v265);
      v180 = v264;
      sub_10000F738();
      v181 = sub_10000F748();
      (*(*(v181 - 8) + 56))(v180, 0, 1, v181);
      sub_100007FF0(&qword_10001C820, "6;");
      v182 = *(v179 + 16);
      v183 = (*(v179 + 24) + 32) & ~*(v179 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      goto LABEL_34;
    case 12:
      sub_10000F8E8();
      v99 = v243;
      sub_10000F8E8();
      v100 = v266 + 56;
      (*(v266 + 56))(v99, 0, 1, v265);
      v101 = [objc_opt_self() currentDevice];
      [v101 userInterfaceIdiom];

      v102 = v254;
      sub_10000F738();
      v103 = sub_10000F748();
      (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
      sub_100007FF0(&qword_10001C820, "6;");
      v104 = *(v100 + 16);
      v105 = (*(v100 + 24) + 32) & ~*(v100 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 13:
      sub_10000F8E8();
      v158 = v241;
      sub_10000F8E8();
      v159 = v266 + 56;
      (*(v266 + 56))(v158, 0, 1, v265);
      v160 = [objc_opt_self() currentDevice];
      [v160 userInterfaceIdiom];

      v161 = v252;
      sub_10000F738();
      v162 = sub_10000F748();
      (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
      sub_100007FF0(&qword_10001C820, "6;");
      v163 = *(v159 + 16);
      v164 = (*(v159 + 24) + 32) & ~*(v159 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 14:
      sub_10000F8E8();
      v86 = v242;
      sub_10000F8E8();
      v87 = v266 + 56;
      (*(v266 + 56))(v86, 0, 1, v265);
      v88 = [objc_opt_self() currentDevice];
      [v88 userInterfaceIdiom];

      v89 = v253;
      sub_10000F738();
      v90 = sub_10000F748();
      (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
      sub_100007FF0(&qword_10001C820, "6;");
      v91 = *(v87 + 16);
      v92 = (*(v87 + 24) + 32) & ~*(v87 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 15:
      sub_10000F8E8();
      v118 = v244;
      sub_10000F8E8();
      v119 = v266 + 56;
      (*(v266 + 56))(v118, 0, 1, v265);
      v120 = [objc_opt_self() currentDevice];
      [v120 userInterfaceIdiom];

      v121 = v255;
      sub_10000F738();
      v122 = sub_10000F748();
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
      sub_100007FF0(&qword_10001C820, "6;");
      v123 = *(v119 + 16);
      v124 = (*(v119 + 24) + 32) & ~*(v119 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 16:
      sub_10000F8E8();
      v79 = v245;
      sub_10000F8E8();
      v80 = v266 + 56;
      (*(v266 + 56))(v79, 0, 1, v265);
      v81 = [objc_opt_self() currentDevice];
      [v81 userInterfaceIdiom];

      v82 = v256;
      sub_10000F738();
      v83 = sub_10000F748();
      (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
      sub_100007FF0(&qword_10001C820, "6;");
      v84 = *(v80 + 16);
      v85 = (*(v80 + 24) + 32) & ~*(v80 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 17:
      sub_10000F8E8();
      v131 = v246;
      sub_10000F8E8();
      v132 = v266 + 56;
      (*(v266 + 56))(v131, 0, 1, v265);
      v133 = [objc_opt_self() currentDevice];
      [v133 userInterfaceIdiom];

      v134 = v257;
      sub_10000F738();
      v135 = sub_10000F748();
      (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
      sub_100007FF0(&qword_10001C820, "6;");
      v136 = *(v132 + 16);
      v137 = (*(v132 + 24) + 32) & ~*(v132 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 18:
      sub_10000F8E8();
      v171 = v247;
      sub_10000F8E8();
      v172 = v266 + 56;
      (*(v266 + 56))(v171, 0, 1, v265);
      v173 = [objc_opt_self() currentDevice];
      [v173 userInterfaceIdiom];

      v174 = v258;
      sub_10000F738();
      v175 = sub_10000F748();
      (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
      sub_100007FF0(&qword_10001C820, "6;");
      v176 = *(v172 + 16);
      v177 = (*(v172 + 24) + 32) & ~*(v172 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 19:
      sub_10000F8E8();
      v208 = v249;
      sub_10000F8E8();
      v209 = v266 + 56;
      (*(v266 + 56))(v208, 0, 1, v265);
      v210 = [objc_opt_self() currentDevice];
      [v210 userInterfaceIdiom];

      v211 = v260;
      sub_10000F738();
      v212 = sub_10000F748();
      (*(*(v212 - 8) + 56))(v211, 0, 1, v212);
      sub_100007FF0(&qword_10001C820, "6;");
      v213 = *(v209 + 16);
      v214 = (*(v209 + 24) + 32) & ~*(v209 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 20:
      sub_10000F8E8();
      v138 = v248;
      sub_10000F8E8();
      v139 = v266 + 56;
      (*(v266 + 56))(v138, 0, 1, v265);
      v140 = [objc_opt_self() currentDevice];
      [v140 userInterfaceIdiom];

      v141 = v259;
      sub_10000F738();
      v142 = sub_10000F748();
      (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
      sub_100007FF0(&qword_10001C820, "6;");
      v143 = *(v139 + 16);
      v144 = (*(v139 + 24) + 32) & ~*(v139 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 21:
      sub_10000F8E8();
      v151 = v251;
      sub_10000F8E8();
      v152 = v266 + 56;
      (*(v266 + 56))(v151, 0, 1, v265);
      v153 = [objc_opt_self() currentDevice];
      [v153 userInterfaceIdiom];

      v154 = v262;
      sub_10000F738();
      v155 = sub_10000F748();
      (*(*(v155 - 8) + 56))(v154, 0, 1, v155);
      sub_100007FF0(&qword_10001C820, "6;");
      v156 = *(v152 + 16);
      v157 = (*(v152 + 24) + 32) & ~*(v152 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 22:
      sub_10000F8E8();
      v202 = v263;
      sub_10000F8E8();
      v203 = v266 + 56;
      (*(v266 + 56))(v202, 0, 1, v265);
      v204 = v264;
      sub_10000F738();
      v205 = sub_10000F748();
      (*(*(v205 - 8) + 56))(v204, 0, 1, v205);
      sub_100007FF0(&qword_10001C820, "6;");
      v206 = *(v203 + 16);
      v207 = (*(v203 + 24) + 32) & ~*(v203 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
LABEL_28:
      sub_10000F8E8();
      return sub_10000F758();
    case 23:
      sub_10000F8E8();
      v215 = v263;
      sub_10000F8E8();
      v216 = v266 + 56;
      (*(v266 + 56))(v215, 0, 1, v265);
      v217 = v264;
      sub_10000F738();
      v218 = sub_10000F748();
      (*(*(v218 - 8) + 56))(v217, 0, 1, v218);
      sub_100007FF0(&qword_10001C820, "6;");
      v219 = *(v216 + 16);
      v220 = (*(v216 + 24) + 32) & ~*(v216 + 24);
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 25:
      sub_10000F8E8();
      v112 = v263;
      sub_10000F8E8();
      v113 = v266 + 56;
      (*(v266 + 56))(v112, 0, 1, v265);
      v114 = v264;
      sub_10000F738();
      v115 = sub_10000F748();
      (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
      sub_100007FF0(&qword_10001C820, "6;");
      v116 = *(v113 + 16);
      v117 = (*(v113 + 24) + 32) & ~*(v113 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 26:
      sub_10000AC50();
      sub_10000F8E8();
      v233 = v250;
      sub_10000F8E8();
      v234 = v266 + 56;
      (*(v266 + 56))(v233, 0, 1, v265);
      v235 = v261;
      sub_10000F738();
      v236 = sub_10000F748();
      (*(*(v236 - 8) + 56))(v235, 0, 1, v236);
      sub_100007FF0(&qword_10001C820, "6;");
      v237 = *(v234 + 16);
      v238 = (*(v234 + 24) + 32) & ~*(v234 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000AC50();
      sub_10000F8E8();
      return sub_10000F758();
    case 27:
      sub_10000F8E8();
      v73 = v263;
      sub_10000F8E8();
      v74 = v266 + 56;
      (*(v266 + 56))(v73, 0, 1, v265);
      v75 = v264;
      sub_10000F738();
      v76 = sub_10000F748();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      sub_100007FF0(&qword_10001C820, "6;");
      v77 = *(v74 + 16);
      v78 = (*(v74 + 24) + 32) & ~*(v74 + 24);
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 28:
      sub_10000F8E8();
      v221 = v263;
      sub_10000F8E8();
      v222 = v266 + 56;
      (*(v266 + 56))(v221, 0, 1, v265);
      v223 = v264;
      sub_10000F738();
      v224 = sub_10000F748();
      (*(*(v224 - 8) + 56))(v223, 0, 1, v224);
      sub_100007FF0(&qword_10001C820, "6;");
      v225 = *(v222 + 16);
      v226 = (*(v222 + 24) + 32) & ~*(v222 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
LABEL_34:
      sub_10000F8E8();
      return sub_10000F758();
    case 29:
      sub_10000F8E8();
      v227 = v263;
      sub_10000F8E8();
      v228 = v266 + 56;
      (*(v266 + 56))(v227, 0, 1, v265);
      v229 = v264;
      sub_10000F738();
      v230 = sub_10000F748();
      (*(*(v230 - 8) + 56))(v229, 0, 1, v230);
      sub_100007FF0(&qword_10001C820, "6;");
      v231 = *(v228 + 16);
      v232 = (*(v228 + 24) + 32) & ~*(v228 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 30:
      sub_10000F8E8();
      v190 = v263;
      sub_10000F8E8();
      v191 = v266 + 56;
      (*(v266 + 56))(v190, 0, 1, v265);
      v192 = v264;
      sub_10000F738();
      v193 = sub_10000F748();
      (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
      sub_100007FF0(&qword_10001C820, "6;");
      v194 = *(v191 + 16);
      v195 = (*(v191 + 24) + 32) & ~*(v191 + 24);
      *(swift_allocObject() + 16) = xmmword_100010350;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_26;
    case 32:
      sub_10000F8E8();
      v196 = v263;
      sub_10000F8E8();
      v197 = v266 + 56;
      (*(v266 + 56))(v196, 0, 1, v265);
      v198 = v264;
      sub_10000F738();
      v199 = sub_10000F748();
      (*(*(v199 - 8) + 56))(v198, 0, 1, v199);
      sub_100007FF0(&qword_10001C820, "6;");
      v200 = *(v197 + 16);
      v201 = (*(v197 + 24) + 32) & ~*(v197 + 24);
      *(swift_allocObject() + 16) = xmmword_100010330;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
LABEL_26:
      sub_10000F8E8();
      break;
    default:
      sub_10000F8E8();
      v68 = v266 + 56;
      (*(v266 + 56))(v263, 1, 1, v265);
      v69 = v264;
      sub_10000F738();
      v70 = sub_10000F748();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      sub_100007FF0(&qword_10001C820, "6;");
      v71 = *(v68 + 16);
      v72 = (*(v68 + 24) + 32) & ~*(v68 + 24);
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      break;
  }

  return sub_10000F758();
}

uint64_t sub_100006C30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008EFC;

  return sub_100008804(a1);
}

uint64_t sub_100006CD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008ED8;

  return sub_1000089F0();
}

uint64_t sub_100006D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100006E3C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006E3C(uint64_t a1)
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

unint64_t sub_100006F3C()
{
  result = qword_10001C790;
  if (!qword_10001C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C790);
  }

  return result;
}

uint64_t sub_100006F90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007034;

  return sub_100008BD4();
}

uint64_t sub_100007034(uint64_t a1)
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

unint64_t sub_10000714C()
{
  result = qword_10001C798;
  if (!qword_10001C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C798);
  }

  return result;
}

unint64_t sub_1000071A0()
{
  result = qword_10001C7A0;
  if (!qword_10001C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7A0);
  }

  return result;
}

unint64_t sub_1000071F8()
{
  result = qword_10001C7A8;
  if (!qword_10001C7A8)
  {
    sub_100002628(&qword_10001C7B0, qword_1000106D8);
    sub_1000071A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7A8);
  }

  return result;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006F3C();
  *v6 = v2;
  v6[1] = sub_100007330;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100007330()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007424(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000074C8;

  return sub_100008CF4();
}

uint64_t sub_1000074C8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_1000075E4()
{
  result = qword_10001C7B8;
  if (!qword_10001C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7B8);
  }

  return result;
}

uint64_t sub_100007638()
{
  v0 = sub_100007FF0(&qword_10001C830, &qword_100010B20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100007FF0(&qword_10001C838, &qword_100010B28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002E68();
  sub_10000F7E8();
  v9._object = 0x8000000100013C60;
  v9._countAndFlagsBits = 0xD000000000000031;
  sub_10000F7D8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000F7C8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000F7D8(v10);
  return sub_10000F7F8();
}

uint64_t sub_1000077FC()
{
  v0 = qword_10001C720;

  return v0;
}

unint64_t sub_100007838()
{
  result = qword_10001C7C0;
  if (!qword_10001C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7C0);
  }

  return result;
}

unint64_t sub_100007890()
{
  result = qword_10001C7C8;
  if (!qword_10001C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7C8);
  }

  return result;
}

unint64_t sub_1000078EC()
{
  result = qword_10001C7D0;
  if (!qword_10001C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7D0);
  }

  return result;
}

uint64_t sub_100007940()
{
  sub_1000087B0();
  v1 = sub_10000F798();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000079B0()
{
  result = qword_10001C7D8;
  if (!qword_10001C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7D8);
  }

  return result;
}

unint64_t sub_100007A08()
{
  result = qword_10001C7E0;
  if (!qword_10001C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7E0);
  }

  return result;
}

unint64_t sub_100007A64()
{
  result = qword_10001C7E8;
  if (!qword_10001C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7E8);
  }

  return result;
}

unint64_t sub_100007ABC()
{
  result = qword_10001C7F0;
  if (!qword_10001C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7F0);
  }

  return result;
}

uint64_t sub_100007B58@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100008714(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100007C44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C8C(uint64_t a1)
{
  v2 = sub_100002E68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007CDC()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C808);
  }

  return result;
}

uint64_t sub_100007D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100007330;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007DFC(uint64_t a1)
{
  v2 = sub_100007A64();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100007E8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100007F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007FF0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100008038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100008DDC();
    v4 = sub_10000FA18();
  }

  v7 = a3;
  v6(v4, a3);
}

char *sub_1000080CC(char *a1, int64_t a2, char a3)
{
  result = sub_10000810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000080EC(char *a1, int64_t a2, char a3)
{
  result = sub_100008200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000810C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007FF0(&qword_10001C848, &qword_100010B40);
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

char *sub_100008200(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007FF0(&qword_10001C850, &qword_100010B50);
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

BOOL sub_1000082F4()
{
  keyExistsAndHasValidFormat = 0;
  v0 = sub_10000F9E8();
  v1 = sub_10000F9E8();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_1000083C4()
{
  v0 = sub_10000FBA8();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100008418()
{
  v20 = sub_10000F808();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100007FF0(&qword_10001C858, &qword_100010B60) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100007FF0(&qword_10001C818, "6;");
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10000F8F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100007FF0(&qword_10001C860, &qword_100010B68);
  sub_10000F8E8();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 33;
  v17 = sub_10000F648();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002E68();
  return sub_10000F6A8();
}

uint64_t sub_100008714(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000874C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000087B0()
{
  result = qword_10001C828;
  if (!qword_10001C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C828);
  }

  return result;
}

uint64_t sub_100008824()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (sub_100001B88(v7))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000080EC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_1000080EC((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v8 = *(&_swiftEmptyArrayStorage + 2);
  if (v8)
  {
    sub_1000080CC(0, v8, 0);
    v9 = *(&_swiftEmptyArrayStorage + 2);
    v10 = 32;
    do
    {
      v11 = *(&_swiftEmptyArrayStorage + v10);
      v12 = *(&_swiftEmptyArrayStorage + 3);
      if (v9 >= v12 >> 1)
      {
        sub_1000080CC((v12 > 1), v9 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
      *(&_swiftEmptyArrayStorage + v9 + 32) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_100008A0C()
{
  for (i = 0; i != 33; ++i)
  {
    v4 = *(&off_100019138 + i + 32);
    if (sub_100001B88(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000080EC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_1000080EC((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
    }
  }

  v5 = *(&_swiftEmptyArrayStorage + 2);
  if (v5)
  {
    sub_1000080CC(0, v5, 0);
    v6 = *(&_swiftEmptyArrayStorage + 2);
    v7 = 32;
    do
    {
      v8 = *(&_swiftEmptyArrayStorage + v7);
      v9 = *(&_swiftEmptyArrayStorage + 3);
      if (v6 >= v9 >> 1)
      {
        sub_1000080CC((v9 > 1), v6 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
      *(&_swiftEmptyArrayStorage + v6 + 32) = v8;
      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v10 = *(v0 + 8);

  return v10(&_swiftEmptyArrayStorage);
}

uint64_t sub_100008BF0()
{
  sub_1000080CC(0, 33, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100019138 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_1000080CC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 33);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008D10()
{
  v1 = 0;
  while (v1 != 33)
  {
    v2 = v1 + 1;
    v3 = &off_100019138 + v1;
    v4 = v3[32];
    v5 = sub_100001B88(v3[32]);
    v1 = v2;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v4 = 33;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_100008DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008DDC()
{
  result = qword_10001C840;
  if (!qword_10001C840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C840);
  }

  return result;
}

unint64_t sub_100008E2C()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

unint64_t sub_100008E80()
{
  result = qword_10001C870;
  if (!qword_10001C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C870);
  }

  return result;
}

unint64_t sub_100008F00(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (result)
    {
      if (result >> 62)
      {
        v5 = a3;
        result = sub_10000FB88();
        a3 = v5;
      }

      else
      {
        result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    v3 = result != 0;
    v4 = a3;
    result = swift_beginAccess();
    *(v4 + 16) = v3;
  }

  return result;
}

id sub_100008FC0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000901C()
{
  result = [objc_allocWithZone(type metadata accessor for GeneralSettingsPointerDeviceManager()) init];
  qword_10001CB68 = result;
  return result;
}

char *sub_10000904C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_token] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v10 = ObjectType;
    if (sub_10000FB88())
    {
      sub_10000AEFC(_swiftEmptyArrayStorage);
      v2 = v11;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v10;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices] = v2;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v12, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v7 = [v6 addPointerDeviceObserver:v5];

  v8 = *&v5[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_token];
  *&v5[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_token] = v7;

  swift_unknownObjectRelease();
  return v5;
}

void sub_100009204()
{
  sub_10000ABB4(0, &qword_10001C950, NSPredicate_ptr);
  sub_100007FF0(&qword_10001C958, &qword_100010BE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100010340;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10000ABFC();
  strcpy((v0 + 32), "UC Automouse");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  v1 = sub_10000FA88();

  v3 = sub_10000B590(v2, v1);

  swift_beginAccess();
  sub_10000933C(v3);
  swift_endAccess();
}

void sub_10000933C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10000FAD8();
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    sub_100009650();
    sub_10000FA78();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10000A70C();
      return;
    }

    while (1)
    {
      sub_1000096B8(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_10000FB08())
      {
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_100009650()
{
  result = qword_10001C940;
  if (!qword_10001C940)
  {
    sub_10000ABB4(255, &qword_10001C938, BKSMousePointerDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C940);
  }

  return result;
}

uint64_t sub_1000096B8(void *a1, void *a2)
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

    v9 = sub_10000FAF8();

    if (v9)
    {

      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10000FAE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000098F0(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100009AE0(v21 + 1);
    }

    v19 = v8;
    sub_100009D08(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  v11 = sub_10000FA98(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100009D8C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000FAA8();

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

Swift::Int sub_1000098F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100007FF0(&qword_10001C948, &qword_100010BE0);
    v2 = sub_10000FB48();
    v15 = v2;
    sub_10000FAD8();
    if (sub_10000FB08())
    {
      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100009AE0(v9 + 1);
        }

        v2 = v15;
        result = sub_10000FA98(*(v15 + 40));
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

      while (sub_10000FB08());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100009AE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB38();
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
      result = sub_10000FA98(*(v6 + 40));
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

unint64_t sub_100009D08(uint64_t a1, uint64_t a2)
{
  sub_10000FA98(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10000FAC8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100009D8C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100009AE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100009EFC();
      goto LABEL_12;
    }

    sub_10000A04C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000FA98(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000FAA8();

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
  sub_10000FBB8();
  __break(1u);
}

id sub_100009EFC()
{
  v1 = v0;
  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  v2 = *v0;
  v3 = sub_10000FB28();
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

uint64_t sub_10000A04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB38();
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
      result = sub_10000FA98(v17);
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

unint64_t *sub_10000A260(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_10000B1EC(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_10000A2F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB58();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_10000FA98(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

void sub_10000A4EC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_10000FAE8())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10000FAD8();
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    sub_100009650();
    sub_10000FA78();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_10000A70C();
      return;
    }

    while (1)
    {
      v18 = sub_10000A714(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_10000FB08())
      {
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_10000A714(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_10000FB18();

    if (v7)
    {
      v8 = sub_10000A8AC();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  v11 = sub_10000FA98(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = sub_10000FAA8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100009EFC();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10000AA14(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10000A8AC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_10000FAE8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1000098F0(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_10000FA98(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_10000FAA8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10000AA14(v9);
  result = sub_10000FAA8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000AA14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_10000FAB8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_10000FA98(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000ABB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10000ABFC()
{
  result = qword_10001C960;
  if (!qword_10001C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C960);
  }

  return result;
}

uint64_t sub_10000AC50()
{
  if (qword_10001C578 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = qword_10001CB68;
    v1 = OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if ((v2 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_10000FAD8();
      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      sub_100009650();
      sub_10000FA78();
      v4 = v23;
      v3 = v24;
      v6 = v25;
      v5 = v26;
      v7 = v27;
    }

    else
    {
      v8 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v6 = ~v8;
      v9 = -v8;
      v10 = v9 < 64 ? ~(-1 << v9) : -1;
      v7 = v10 & *(v2 + 56);
      v4 = v2;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v21 = v6;
    v11 = (v6 + 64) >> 6;
    if (v4 < 0)
    {
      break;
    }

LABEL_9:
    v12 = v5;
    v13 = v7;
    v14 = v5;
    if (v7)
    {
LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_20;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  while (sub_10000FB08())
  {
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    swift_dynamicCast();
    v16 = v22;
    v14 = v5;
    v15 = v7;
    if (!v22)
    {
      break;
    }

LABEL_17:
    v17 = [v16 senderDescriptor];
    v18 = [v17 hardwareType];

    if (v18 == 8)
    {
      sub_10000A70C();

      v19 = 1;
      goto LABEL_21;
    }

    v5 = v14;
    v7 = v15;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_20:
  sub_10000A70C();
  v19 = 0;
LABEL_21:

  return v19;
}

void sub_10000AEFC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000FB88())
    {
LABEL_3:
      sub_100007FF0(&qword_10001C948, &qword_100010BE0);
      v3 = sub_10000FB58();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000FB88();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10000FB68();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000FA98(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000FAA8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10000FA98(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000FAA8();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t *sub_10000B1EC(unint64_t *result, uint64_t a2, uint64_t a3, id a4)
{
  v18 = a2;
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = [a4 evaluateWithObject:{*(*(a3 + 48) + 8 * v16), v18}];
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10000A2F8(v19, v18, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B32C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24[1] = v24;
    __chkstk_darwin(v9);
    v11 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v27 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v7 = &GeneralSettingsIntentsBundleClass;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if ([v10 evaluateWithObject:*(*(a1 + 48) + 8 * v8)])
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_10000A2F8(v11, v25, v27, a1);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_10000A260(v22, v7, a1, v23);

  return v20;
}

Swift::Int sub_10000B590(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000B32C(a1, a2);
  }

  v2 = a2;
  sub_10000FAD8();
  if (sub_10000FB08())
  {
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    do
    {
      swift_dynamicCast();
      if ([v2 evaluateWithObject:v14])
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_100009AE0(v3 + 1);
        }

        result = sub_10000FA98(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (sub_10000FB08());
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10000B7A0()
{
  result = qword_10001C970;
  if (!qword_10001C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C970);
  }

  return result;
}

unint64_t sub_10000B7F4()
{
  result = qword_10001C978;
  if (!qword_10001C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C978);
  }

  return result;
}

uint64_t sub_10000B848()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CB70);
  sub_100008714(v0, qword_10001CB70);
  return sub_10000F8E8();
}

uint64_t sub_10000B8AC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000F688();
  *a1 = v5;
  return result;
}

uint64_t sub_10000B8E8(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10000F698();
}

void (*sub_10000B930(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_10000F678();
  return sub_10000F548;
}

unint64_t sub_10000B9A4()
{
  result = qword_10001C980;
  if (!qword_10001C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C980);
  }

  return result;
}

uint64_t sub_10000B9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F2CC();
  v5 = sub_10000E3AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000BA68()
{
  result = qword_10001C988;
  if (!qword_10001C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C988);
  }

  return result;
}

unint64_t sub_10000BAC0()
{
  result = qword_10001C990;
  if (!qword_10001C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C990);
  }

  return result;
}

uint64_t sub_10000BB64(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000F2CC();
  v8 = sub_10000F320();
  v9 = sub_10000E3AC();
  *v6 = v2;
  v6[1] = sub_100002C4C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000BC38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EAF4();
  *a1 = result;
  return result;
}

uint64_t sub_10000BC60(uint64_t a1)
{
  v2 = sub_10000B9A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000BCA0()
{
  result = qword_10001C998;
  if (!qword_10001C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C998);
  }

  return result;
}

uint64_t sub_10000BD38()
{
  v0 = sub_10000F898();
  sub_10000874C(v0, qword_10001CB88);
  sub_100008714(v0, qword_10001CB88);
  return sub_10000F878();
}

uint64_t sub_10000BD9C()
{
  v0 = sub_100007FF0(&qword_10001C810, "6;");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_100007FF0(&qword_10001C818, "6;");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_10000F8F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10000F8E8();
  sub_10000F8E8();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_10000F738();
  v13 = sub_10000F748();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100007FF0(&qword_10001C820, "6;");
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100010340;
  sub_10000F8E8();
  sub_10000F8E8();
  return sub_10000F758();
}

uint64_t sub_10000C074()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CBA0);
  sub_100008714(v0, qword_10001CBA0);
  return sub_10000F8E8();
}

uint64_t sub_10000C0D8()
{
  v0 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  sub_10000874C(v0, qword_10001CBB8);
  v1 = sub_100008714(v0, qword_10001CBB8);
  sub_10000F6C8();
  v2 = sub_10000F6D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000C198()
{
  result = swift_getKeyPath();
  qword_10001CBD0 = result;
  return result;
}

uint64_t sub_10000C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100007FF0(&qword_10001CAA8, &qword_1000114A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100007FF0(&qword_10001CAB0, &qword_1000114A8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100007FF0(&qword_10001CAB8, &qword_1000114B0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10000F648();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100007FF0(&qword_10001CAC0, &qword_1000114B8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000C3A4, 0, 0);
}

uint64_t sub_10000C3A4()
{
  v1 = v0[8];
  sub_10000F688();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000D848();
  *v3 = v0;
  v3[1] = sub_10000C474;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000F544, 0, &type metadata for TwentyFourHourTimeEntity, v4);
}

uint64_t sub_10000C474()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000C570, 0, 0);
}

uint64_t sub_10000C570()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10000F688();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10000F688();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10001CBD0;
  *(v0 + 176) = qword_10001CBD0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100007C44(&qword_10001CA80, &qword_10001CA88, &qword_100011470);
  *v6 = v0;
  v6[1] = sub_10000C6D0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000C6D0()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_10000CA8C;
  }

  else
  {
    v5 = sub_10000C824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C824()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10000F688();
  v0[6] = v0[5];
  v8 = sub_10000F868();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10000F8A8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000BCA0();
  sub_10000DA58();
  sub_10000F618();
  (*(v2 + 16))(v12, v1, v3);
  sub_10000F638();
  sub_10000F658();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000CA8C()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_10000CB54()
{
  v0 = sub_100007FF0(&qword_10001CAC8, &qword_1000114C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }

  sub_10000F728();

  sub_10000DA58();
  sub_100007C44(&qword_10001CAD0, &qword_10001CAC8, &qword_1000114C0);
  sub_10000F718();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10000CCC8(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_10000F678();
  return sub_10000CD3C;
}

uint64_t sub_10000CD40@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10000F688();
  *a1 = v5;
  return result;
}

uint64_t sub_10000CD7C(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10000F698();
}

void (*sub_10000CDB4(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10000F678();
  return sub_10000F548;
}

uint64_t sub_10000CE28()
{
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000CE88()
{
  result = qword_10001C9B0;
  if (!qword_10001C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B0);
  }

  return result;
}

unint64_t sub_10000CEE0()
{
  result = qword_10001C9B8;
  if (!qword_10001C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B8);
  }

  return result;
}

uint64_t sub_10000D014@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C598 != -1)
  {
    swift_once();
  }

  v2 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  v3 = sub_100008714(v2, qword_10001CBB8);

  return sub_10000F25C(v3, a1);
}

uint64_t sub_10000D098(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F534;

  return sub_10000C1C4(a1, v5, v4);
}

uint64_t sub_10000D144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EDEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000D18C()
{
  result = qword_10001C9C0;
  if (!qword_10001C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9C0);
  }

  return result;
}

unint64_t sub_10000D1E4()
{
  result = qword_10001C9C8;
  if (!qword_10001C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9C8);
  }

  return result;
}

uint64_t sub_10000D258()
{
  sub_10000FA58();
  *(v0 + 24) = sub_10000FA48();
  v2 = sub_10000FA38();

  return _swift_task_switch(sub_10000D2EC, v2, v1);
}

uint64_t sub_10000D2EC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_10000F938();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_10000F928();
  v6 = sub_10000F908();

  *v2 = v6 & 1;
  v7 = v0[1];

  return v7();
}

uint64_t sub_10000D3B4()
{
  sub_10000FA58();
  *(v0 + 16) = sub_10000FA48();
  v2 = sub_10000FA38();

  return _swift_task_switch(sub_10000D448, v2, v1);
}

uint64_t sub_10000D448()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = sub_10000F938();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_10000F928();
  sub_10000F918();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000D4E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10000F8F8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000D570, 0, 0);
}

uint64_t sub_10000D570()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100007FF0(&qword_10001C9A8, qword_100010D90);
  sub_10000F8E8();
  sub_100007C44(&qword_10001CA80, &qword_10001CA88, &qword_100011470);
  *v2 = sub_10000F8D8();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000D694()
{
  result = qword_10001C9D0;
  if (!qword_10001C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9D0);
  }

  return result;
}

uint64_t sub_10000D6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000DD68();
  *v5 = v2;
  v5[1] = sub_100007034;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000D79C()
{
  result = qword_10001C9D8;
  if (!qword_10001C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9D8);
  }

  return result;
}

unint64_t sub_10000D7F4()
{
  result = qword_10001C9E0;
  if (!qword_10001C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9E0);
  }

  return result;
}

unint64_t sub_10000D848()
{
  result = qword_10001C9E8;
  if (!qword_10001C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9E8);
  }

  return result;
}

uint64_t sub_10000D89C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000DD68();
  *v6 = v2;
  v6[1] = sub_100008EFC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000D950(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000DD68();
  *v5 = v2;
  v5[1] = sub_100008ED8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10000DA04()
{
  result = qword_10001C9F0;
  if (!qword_10001C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F0);
  }

  return result;
}

unint64_t sub_10000DA58()
{
  result = qword_10001C9F8;
  if (!qword_10001C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F8);
  }

  return result;
}

unint64_t sub_10000DAB0()
{
  result = qword_10001CA00;
  if (!qword_10001CA00)
  {
    sub_100002628(&qword_10001CA08, qword_100010FF0);
    sub_10000DA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA00);
  }

  return result;
}

uint64_t sub_10000DB34(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D694();
  *v6 = v2;
  v6[1] = sub_100007330;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000F534;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000DCA4()
{
  result = qword_10001CA10;
  if (!qword_10001CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA10);
  }

  return result;
}

unint64_t sub_10000DCFC()
{
  result = qword_10001CA18;
  if (!qword_10001CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA18);
  }

  return result;
}

unint64_t sub_10000DD68()
{
  result = qword_10001CA20;
  if (!qword_10001CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA20);
  }

  return result;
}

unint64_t sub_10000DDC0()
{
  result = qword_10001CA28;
  if (!qword_10001CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA28);
  }

  return result;
}

uint64_t sub_10000DE14(uint64_t a1)
{
  v2 = sub_10000D848();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004BLL, 0x8000000100013F10, a1, v2);
}

unint64_t sub_10000DE7C()
{
  result = qword_10001CA30;
  if (!qword_10001CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA30);
  }

  return result;
}

unint64_t sub_10000DED4()
{
  result = qword_10001CA38;
  if (!qword_10001CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA38);
  }

  return result;
}

unint64_t sub_10000DF30()
{
  result = qword_10001CA40;
  if (!qword_10001CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA40);
  }

  return result;
}

uint64_t sub_10000DF90@<X0>(uint64_t *a1@<X8>)
{
  sub_10000D1E4();
  result = sub_10000F668();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DFD0()
{
  sub_10000E3AC();
  v1 = sub_10000F818();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000E074@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100008714(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000E160(uint64_t a1)
{
  v2 = sub_10000D848();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E1B0()
{
  result = qword_10001CA58;
  if (!qword_10001CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA58);
  }

  return result;
}

uint64_t sub_10000E208(uint64_t a1)
{
  v2 = sub_10000DF30();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10000E264(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E270(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000E2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000E3AC()
{
  result = qword_10001CA78;
  if (!qword_10001CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA78);
  }

  return result;
}

uint64_t sub_10000E400@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100007FF0(&qword_10001CAF0, &qword_100011560);
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  __chkstk_darwin(v1);
  v4 = v20 - v3;
  v5 = sub_100007FF0(&qword_10001CAF8, &qword_100011568);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = sub_100007FF0(&qword_10001CB00, &qword_100011570);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  v20[1] = "Open 24-Hour Time Settings";
  swift_getKeyPath();
  sub_100007FF0(&qword_10001CB08, &qword_100011578);
  sub_100007FF0(&qword_10001CB10, &unk_100011580);
  sub_10000D1E4();
  sub_100007C44(&qword_10001CB18, &qword_10001CB08, &qword_100011578);
  sub_10000F3A0();
  sub_10000F9D8();
  sub_10000F958();
  v15 = sub_100007C44(&qword_10001CB28, &qword_10001CAF0, &qword_100011560);
  sub_10000F988();

  (*(v21 + 8))(v4, v1);
  v27 = v1;
  v28 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_10000F998();
  (*(v23 + 8))(v9, v17);
  v27 = v17;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v24;
  sub_10000F978();
  return (*(v25 + 8))(v14, v18);
}

uint64_t sub_10000E83C()
{
  v0 = sub_10000F958();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000E8A4@<X0>(uint64_t a1@<X8>)
{
  sub_10000F958();
  result = sub_10000F9B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_10000E920@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_10000F958();
    if (qword_10001C560 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_10000F958();
  if (qword_10001C560 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_10001CB30;
  sub_10000F9B8();
  sub_10000F9A8();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10000EAF4()
{
  v21[0] = sub_10000F808();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007FF0(&qword_10001C858, &qword_100010B60);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007FF0(&qword_10001C818, "6;");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10000F8F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007FF0(&qword_10001CA98, &qword_100011488);
  sub_10000F8E8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10000F648();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10000D848();
  return sub_10000F6A8();
}

uint64_t sub_10000EDEC()
{
  v0 = sub_100007FF0(&qword_10001CA90, &unk_100011478);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_10000F808();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007FF0(&qword_10001C858, &qword_100010B60);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100007FF0(&qword_10001C818, "6;");
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10000F8F8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100007FF0(&qword_10001CA98, &qword_100011488);
  sub_10000F8E8();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10000F648();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000D848();
  v28 = sub_10000F6A8();
  sub_100007FF0(&qword_10001CAA0, &qword_100011490);
  sub_10000F8E8();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_10000FA28();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10000F6B8();
  return v28;
}

uint64_t sub_10000F25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F2CC()
{
  result = qword_10001CAE0;
  if (!qword_10001CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAE0);
  }

  return result;
}

unint64_t sub_10000F320()
{
  result = qword_10001CAE8;
  if (!qword_10001CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAE8);
  }

  return result;
}

unint64_t sub_10000F3A0()
{
  result = qword_10001CB20;
  if (!qword_10001CB20)
  {
    sub_100002628(&qword_10001CB10, &unk_100011580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB20);
  }

  return result;
}

uint64_t sub_10000F41C()
{
  sub_100002628(&qword_10001CB00, &qword_100011570);
  sub_100002628(&qword_10001CAF8, &qword_100011568);
  sub_100002628(&qword_10001CAF0, &qword_100011560);
  sub_100007C44(&qword_10001CB28, &qword_10001CAF0, &qword_100011560);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}