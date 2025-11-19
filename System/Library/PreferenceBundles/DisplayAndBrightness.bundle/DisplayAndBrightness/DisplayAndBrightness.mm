unint64_t sub_1F2C()
{
  result = qword_C290;
  if (!qword_C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C290);
  }

  return result;
}

uint64_t sub_1F9C(uint64_t a1)
{
  v2 = *(*(sub_3FAC() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_3F7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3DBC(0, &qword_C328, DBSSettingsController_ptr);
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3F8C();
  sub_3F6C();
  sub_3FDC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_3FEC();
  v13 = v12;
  LOBYTE(ObjCClassFromMetadata) = v14;
  sub_3D70(&qword_C2A8, &type metadata accessor for PreferencesControllerView);
  sub_3FFC();
  sub_3E04(v11, v13, ObjCClassFromMetadata & 1);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_3FAC();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_3FCC();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = sub_3F5C();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = *(*(sub_36C4(&qword_C2B8, &qword_46E0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v15 = sub_3F4C();
  v4[21] = v15;
  v16 = *(v15 - 8);
  v4[22] = v16;
  v17 = *(v16 + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_408C();
  v4[24] = sub_407C();
  v19 = sub_406C();

  return _swift_task_switch(sub_2498, v19, v18);
}

void sub_2498()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 56);
  sub_402C();
  sub_3F1C();
  (*(v6 + 8))(v4, v5);
  v8 = (*(v2 + 48))(v3, 1, v1);
  v9 = *(v0 + 56);
  if (v8 == 1)
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 48);

    sub_39DC(v11);
    sub_401C();
    sub_403C();
    (*(v14 + 8))(v12, v13);
LABEL_67:
    v102 = *(v0 + 184);
    v103 = *(v0 + 152);
    v104 = *(v0 + 160);
    v106 = *(v0 + 120);
    v105 = *(v0 + 128);
    v107 = *(v0 + 96);

    v108 = *(v0 + 8);

    v108();
    return;
  }

  v16 = *(v0 + 120);
  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  sub_401C();
  *(v0 + 16) = sub_3F2C();
  *(v0 + 24) = v17;
  *(v0 + 32) = 47;
  *(v0 + 40) = 0xE100000000000000;
  sub_3A44();
  v18 = sub_409C();

  v19 = 0;
  v20 = *(v18 + 16);
  v21 = _swiftEmptyArrayStorage;
LABEL_4:
  v22 = (v18 + 40 + 16 * v19);
  while (1)
  {
    if (v20 == v19)
    {

      v29 = _swiftEmptyArrayStorage[2];
      if (v29)
      {
LABEL_16:
        v109 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
        v110 = (*(v0 + 88) + 8);
        while (1)
        {
          v31 = *(v21 + 4);
          v30 = *(v21 + 5);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v29 - 1) > *(v21 + 3) >> 1)
          {
            v21 = sub_3BC4(isUniquelyReferenced_nonNull_native, v29, 1, v21);
          }

          sub_3D1C((v21 + 32));
          v33 = *(v21 + 2);
          memmove(v21 + 32, v21 + 48, 16 * v33 - 16);
          v34 = v33 - 1;
          *(v21 + 2) = v33 - 1;

          v35 = sub_3CD0(v31, v30);
          if (v35 == 9 || (v36 = v35, (sub_3178(v35) & 1) == 0))
          {
            v88 = *(v0 + 192);

            goto LABEL_66;
          }

          v37 = [objc_allocWithZone(PSSpecifier) init];
          v38 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
          [v37 setProperty:v38 forKey:v109];
          if (v36 == 2)
          {
          }

          else
          {
            v39 = sub_40BC();

            if ((v39 & 1) == 0)
            {
              if (v33 != 1)
              {
                goto LABEL_32;
              }

              v44 = *(v0 + 184);
              sub_3F3C();
              if (!v45)
              {
                goto LABEL_32;
              }

LABEL_31:
              v46 = sub_405C();

              [v38 setSpecifierIdentifierToScrollAndHighlight:v46];

              goto LABEL_32;
            }
          }

          v40 = [objc_opt_self() currentDevice];
          v41 = [v40 userInterfaceIdiom];

          if (v34)
          {
            goto LABEL_32;
          }

          v42 = *(v0 + 184);
          sub_3F3C();
          if (!v43)
          {
            goto LABEL_32;
          }

          if (v41 != &dword_0 + 1)
          {
            goto LABEL_31;
          }

LABEL_32:
          v47 = v36;
          if (v36 <= 3u)
          {
            if (v36 <= 1u)
            {
              v58 = *(v0 + 120);
              v59 = *(v0 + 96);
              v60 = *(v0 + 80);
              if (v47)
              {

                v61 = &unk_C308;
                v62 = DBSLargeTextController_ptr;
              }

              else
              {

                v61 = &unk_C318;
                v62 = DBSDeviceAppearanceScheduleController_ptr;
              }

              goto LABEL_56;
            }

            if (v36 != 2)
            {
              v75 = *(v0 + 120);
              v59 = *(v0 + 96);
              v60 = *(v0 + 80);

              v61 = &unk_C2F8;
              v62 = DBSColorTemperatureController_ptr;
LABEL_56:
              sub_3DBC(0, v61, v62);
              v87 = v37;
              sub_3F8C();
              sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe);
              sub_3FBC();

              (*v110)(v59, v60);
              goto LABEL_57;
            }

            v63 = [objc_opt_self() currentDevice];
            v64 = [v63 userInterfaceIdiom];

            if (v64 != &dword_0 + 1)
            {
              v86 = *(v0 + 120);
              v59 = *(v0 + 96);
              v60 = *(v0 + 80);
              v61 = &unk_C310;
              v62 = DBSDisplayZoomSelectionListController_ptr;
              goto LABEL_56;
            }

            v65 = [objc_opt_self() defaultManager];
            v66 = [v65 externalDisplayAvailable];

            v67 = sub_405C();
            if (v66)
            {
              v68 = *(v0 + 120);
              v69 = *(v0 + 96);
              v70 = *(v0 + 80);
              [v38 setSpecifierIdentifierToScrollAndSelect:v67];

              sub_3DBC(0, &qword_C2D8, DBSMainDisplayPreferencesController_ptr);
              v71 = v37;
              sub_3F8C();
              sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe);
              sub_3FBC();

              (*v110)(v69, v70);
              goto LABEL_57;
            }

            [*(v0 + 72) setSpecifierIdentifierToScrollAndSelect:v67];

            v29 = *(v21 + 2);
            if (!v29)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v36 <= 5u)
            {
              if (v36 != 4)
              {
                v77 = *(v0 + 64);
                [v77 updateAutoLockSpecifier];
                v78 = sub_405C();
                v79 = [v77 specifierForID:v78];

                if (!v79)
                {
                  goto LABEL_71;
                }

                v80 = *(v0 + 120);
                v81 = *(v0 + 96);
                v82 = *(v0 + 80);
                v83 = *(v0 + 64);

                v84 = sub_405C();
                [v79 setProperty:v83 forKey:v84];

                sub_3DBC(0, &qword_C2E8, DBSAutoLockViewController_ptr);
                v85 = v79;
                sub_3F8C();
                sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe);
                sub_3FBC();

                (*v110)(v81, v82);
                goto LABEL_57;
              }

              v72 = *(v0 + 120);
              v59 = *(v0 + 96);
              v60 = *(v0 + 80);

              v61 = &unk_C2F0;
              v62 = DBSColorScheduleController_ptr;
              goto LABEL_56;
            }

            if (v36 == 6)
            {
              v73 = *(v0 + 120);
              v54 = *(v0 + 96);
              v55 = *(v0 + 80);

              v56 = &unk_C2E0;
              v57 = DBSAlwaysOnViewController_ptr;
            }

            else
            {
              if (v36 != 7)
              {
                v76 = *(v0 + 120);
                v59 = *(v0 + 96);
                v60 = *(v0 + 80);

                v61 = &unk_C300;
                v62 = DBSLiquidGlassController_ptr;
                goto LABEL_56;
              }

              v48 = [objc_opt_self() defaultManager];
              v49 = [v48 externalDisplayAvailable];

              if (v49)
              {
                v50 = *(v0 + 120);
                v51 = *(v0 + 96);
                v52 = *(v0 + 80);
                sub_3DBC(0, &qword_C2D8, DBSMainDisplayPreferencesController_ptr);
                sub_3F9C();
                sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe);
                sub_3FBC();
                (*v110)(v51, v52);
              }

              v53 = *(v0 + 120);
              v54 = *(v0 + 96);
              v55 = *(v0 + 80);
              v56 = &unk_C2C8;
              v57 = DBSReferenceAndCalibrationController_ptr;
            }

            sub_3DBC(0, v56, v57);
            v74 = v37;
            sub_3F8C();
            sub_3D70(&qword_C2D0, &type metadata accessor for PreferencesControllerRecipe);
            sub_3FBC();

            (*v110)(v54, v55);
LABEL_57:
            v29 = *(v21 + 2);
            if (!v29)
            {
              goto LABEL_65;
            }
          }
        }
      }

      v89 = *(v0 + 184);
      sub_3F3C();
      if (v90)
      {
        v91 = *(v0 + 192);
        v92 = *(v0 + 72);

        v93 = sub_405C();

        [v92 setSpecifierIdentifierToScrollAndHighlight:v93];
      }

      else
      {
        v29 = _swiftEmptyArrayStorage[2];
        if (v29)
        {
          goto LABEL_16;
        }

LABEL_65:
        v94 = *(v0 + 192);
      }

LABEL_66:
      v96 = *(v0 + 176);
      v95 = *(v0 + 184);
      v97 = *(v0 + 168);
      v99 = *(v0 + 112);
      v98 = *(v0 + 120);
      v100 = *(v0 + 104);
      v101 = *(v0 + 48);
      sub_403C();
      (*(v99 + 8))(v98, v100);
      (*(v96 + 8))(v95, v97);
      goto LABEL_67;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    ++v19;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_3A98(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_3A98((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v23;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

id sub_3178(unsigned __int8 a1)
{
  v1 = a1;
  result = &dword_0 + 1;
  if (v1 <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v5 = [objc_allocWithZone(UISUserInterfaceStyleMode) initWithDelegate:0];
        [v5 modeValue];

        return UISUserInterfaceStyleModeValueIsAutomatic();
      }

      return result;
    }

    if (v1 == 2)
    {
      v6 = [objc_opt_self() currentDevice];
      blueLightReductionSupported = [v6 sf_deviceSupportsDisplayZoom];
LABEL_25:
      v13 = blueLightReductionSupported;

      return v13;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      blueLightReductionSupported = MobileGestalt_get_blueLightReductionSupported();
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  if (v1 <= 5)
  {
    if (v1 != 4)
    {
      result = [objc_opt_self() sharedConnection];
      if (result)
      {
        v14 = result;
        v15 = [result isAutoLockEnabled];

        if (v15)
        {
          v16 = [objc_opt_self() processInfo];
          v17 = [v16 isLowPowerModeEnabled];

          return (v17 ^ 1);
        }

        return 0;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      v9 = MobileGestalt_get_blueLightReductionSupported();

      if (v9)
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        if (qword_C330 != -1)
        {
          swift_once();
        }

        v10 = [qword_C338 blueLightClient];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 getBlueLightStatus:&v18];

          if (v12)
          {
            return (DWORD1(v18) == 2);
          }
        }
      }

      return 0;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v1 == 6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      blueLightReductionSupported = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      goto LABEL_25;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 == 7)
  {
    result = [objc_opt_self() mainDisplay];
    if (result)
    {
      v3 = result;
      v4 = [result availablePresets];

      if (v4)
      {

        return &dword_0 + 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_345C()
{
  v1 = sub_36C4(&qword_C298, &qword_46C0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v17 - v4;
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v7;
  v10 = v6;
  sub_36C4(&qword_C2A0, &qword_46C8);
  v11 = sub_3F7C();
  v12 = sub_3D70(&qword_C2A8, &type metadata accessor for PreferencesControllerView);
  v17[0] = v11;
  v17[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_404C();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  sub_38FC();
  v14 = v9;
  v15 = v10;
  sub_400C();
  return (*(v2 + 8))(v5, v1);
}

id sub_3668@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(DBSSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_36C4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_370C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3754(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3808;

  return sub_2248(a1, a2, v7, v6);
}

uint64_t sub_3808()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_38FC()
{
  result = qword_C2B0;
  if (!qword_C2B0)
  {
    sub_3960(&qword_C298, &qword_46C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2B0);
  }

  return result;
}

uint64_t sub_3960(uint64_t *a1, uint64_t *a2)
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

id sub_39A8()
{
  result = [objc_allocWithZone(CBClient) init];
  qword_C338 = result;
  return result;
}

uint64_t sub_39DC(uint64_t a1)
{
  v2 = sub_36C4(&qword_C2B8, &qword_46E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3A44()
{
  result = qword_C2C0;
  if (!qword_C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2C0);
  }

  return result;
}

char *sub_3A98(char *a1, int64_t a2, char a3)
{
  result = sub_3AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_3AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_36C4(&qword_C320, &qword_46E8);
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

char *sub_3BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_36C4(&qword_C320, &qword_46E8);
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

uint64_t sub_3CD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_84A8;
  v6._object = a2;
  v4 = sub_40AC(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3DBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_3E04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_3E14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3E20(uint64_t *a1, int a2)
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

uint64_t sub_3E68(uint64_t result, int a2, int a3)
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

uint64_t sub_3EB4()
{
  sub_3960(&qword_C298, &qword_46C0);
  sub_38FC();
  return swift_getOpaqueTypeConformance2();
}