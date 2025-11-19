uint64_t sub_100001D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for ServiceKind.airPurifier(_:) && v9 != enum case for ServiceKind.fan(_:) && v9 != enum case for ServiceKind.faucet(_:) && v9 != enum case for ServiceKind.heaterCooler(_:) && v9 != enum case for ServiceKind.humidifierDehumidifier(_:) && v9 != enum case for ServiceKind.irrigationSystem(_:))
  {
    if (v9 != enum case for ServiceKind.lightbulb(_:))
    {
      if (v9 == enum case for ServiceKind.microphone(_:))
      {
        goto LABEL_13;
      }

      if (v9 == enum case for ServiceKind.outlet(_:))
      {
        goto LABEL_11;
      }

      if (v9 == enum case for ServiceKind.speaker(_:))
      {
LABEL_13:
        v10 = &enum case for CharacteristicKind.mute(_:);
        goto LABEL_8;
      }

      if (v9 != enum case for ServiceKind.switch(_:))
      {
        if (v9 != enum case for ServiceKind.targetControl(_:) && v9 != enum case for ServiceKind.television(_:) && v9 != enum case for ServiceKind.valve(_:) && v9 != enum case for ServiceKind.ventilationFan(_:))
        {
          v15 = sub_10009D464();
          (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
          return (*(v5 + 8))(v8, v4);
        }

        goto LABEL_7;
      }
    }

LABEL_11:
    v10 = &enum case for CharacteristicKind.powerState(_:);
    goto LABEL_8;
  }

LABEL_7:
  v10 = &enum case for CharacteristicKind.active(_:);
LABEL_8:
  v11 = *v10;
  v12 = sub_10009D464();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t sub_10000209C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for ServiceKind.door(_:))
  {
    if (v9 == enum case for ServiceKind.faucet(_:))
    {
      goto LABEL_4;
    }

    if (v9 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v10 = &enum case for CharacteristicKind.targetDoorState(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.heaterCooler(_:))
    {
      v10 = &enum case for CharacteristicKind.targetHeaterCoolerState(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.humidifierDehumidifier(_:))
    {
      v10 = &enum case for CharacteristicKind.targetHumidifierDehumidifierState(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.lockMechanism(_:))
    {
      v10 = &enum case for CharacteristicKind.targetLockMechanismState(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.securitySystem(_:))
    {
      v10 = &enum case for CharacteristicKind.targetSecuritySystemState(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.thermostat(_:))
    {
      v10 = &enum case for CharacteristicKind.targetHeatingCoolingMode(_:);
      goto LABEL_17;
    }

    if (v9 == enum case for ServiceKind.valve(_:))
    {
LABEL_4:
      v10 = &enum case for CharacteristicKind.active(_:);
      goto LABEL_17;
    }

    if (v9 != enum case for ServiceKind.window(_:) && v9 != enum case for ServiceKind.windowCovering(_:))
    {
      v16 = enum case for CharacteristicKind.active(_:);
      v17 = sub_10009D464();
      v18 = *(v17 - 8);
      (*(v18 + 104))(a1, v16, v17);
      (*(v18 + 56))(a1, 0, 1, v17);
      return (*(v5 + 8))(v8, v4);
    }
  }

  v10 = &enum case for CharacteristicKind.targetPosition(_:);
LABEL_17:
  v11 = *v10;
  v12 = sub_10009D464();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t sub_100002408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009D1C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for ServiceKind.door(_:))
  {
    if (v9 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v10 = &enum case for CharacteristicKind.currentDoorState(_:);
      goto LABEL_11;
    }

    if (v9 == enum case for ServiceKind.lockMechanism(_:))
    {
      v10 = &enum case for CharacteristicKind.currentLockMechanismState(_:);
      goto LABEL_11;
    }

    if (v9 == enum case for ServiceKind.securitySystem(_:))
    {
      v10 = &enum case for CharacteristicKind.currentSecuritySystemState(_:);
      goto LABEL_11;
    }

    if (v9 == enum case for ServiceKind.thermostat(_:))
    {
      v10 = &enum case for CharacteristicKind.currentHeatingCooling(_:);
      goto LABEL_11;
    }

    if (v9 != enum case for ServiceKind.window(_:) && v9 != enum case for ServiceKind.windowCovering(_:))
    {
      v16 = enum case for CharacteristicKind.powerState(_:);
      v17 = sub_10009D464();
      v18 = *(v17 - 8);
      (*(v18 + 104))(a1, v16, v17);
      (*(v18 + 56))(a1, 0, 1, v17);
      return (*(v5 + 8))(v8, v4);
    }
  }

  v10 = &enum case for CharacteristicKind.currentPosition(_:);
LABEL_11:
  v11 = *v10;
  v12 = sub_10009D464();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t sub_100002700()
{
  v1 = v0;
  v2 = sub_10009D1C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ServiceKind.airPurifier(_:))
  {
    goto LABEL_2;
  }

  if (v7 != enum case for ServiceKind.door(_:))
  {
    if (v7 == enum case for ServiceKind.fan(_:))
    {
LABEL_2:
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v8 = sub_10009D464();
      v9 = *(v8 - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_10009F8D0;
      v14 = &enum case for CharacteristicKind.rotationSpeed(_:);
LABEL_3:
      (*(v9 + 104))(v12 + v11, *v14, v8);
      return v13;
    }

    if (v7 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v8 = sub_10009D464();
      v9 = *(v8 - 8);
      v22 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_10009F8D0;
      v14 = &enum case for CharacteristicKind.obstructionDetected(_:);
      goto LABEL_3;
    }

    if (v7 == enum case for ServiceKind.heaterCooler(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v23 = sub_10009D464();
      v24 = *(v23 - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10009F900;
      v27 = v13 + v26;
      v28 = *(v24 + 104);
      v28(v27, enum case for CharacteristicKind.currentTemperature(_:), v23);
      v28(v27 + v25, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v23);
      v28(v27 + 2 * v25, enum case for CharacteristicKind.heatingThreshold(_:), v23);
      v28(v27 + 3 * v25, enum case for CharacteristicKind.coolingThreshold(_:), v23);
      return v13;
    }

    if (v7 == enum case for ServiceKind.humidifierDehumidifier(_:))
    {
      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v29 = sub_10009D464();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = 4 * v31;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10009F8E0;
      v34 = v13 + v32;
      v35 = *(v30 + 104);
      v35(v34, enum case for CharacteristicKind.active(_:), v29);
      v35(v34 + v31, enum case for CharacteristicKind.rotationSpeed(_:), v29);
      v35(v34 + 2 * v31, enum case for CharacteristicKind.humidifierThreshold(_:), v29);
      v35(v34 + 3 * v31, enum case for CharacteristicKind.dehumidifierThreshold(_:), v29);
      v36 = &enum case for CharacteristicKind.currentHumidifierDehumidifierState(_:);
    }

    else
    {
      if (v7 == enum case for ServiceKind.irrigationSystem(_:))
      {
        sub_100003714(&qword_1000C0B50, &qword_10009F948);
        v37 = sub_10009D464();
        v38 = *(v37 - 8);
        v39 = *(v38 + 72);
        v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10009F8F0;
        v41 = v13 + v40;
        v42 = *(v38 + 104);
        v42(v41, enum case for CharacteristicKind.inUse(_:), v37);
        v42(v41 + v39, enum case for CharacteristicKind.programMode(_:), v37);
        return v13;
      }

      if (v7 == enum case for ServiceKind.lightbulb(_:))
      {
        sub_100003714(&qword_1000C0B50, &qword_10009F948);
        v8 = sub_10009D464();
        v9 = *(v8 - 8);
        v43 = *(v9 + 72);
        v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v12 = swift_allocObject();
        v13 = v12;
        *(v12 + 16) = xmmword_10009F8D0;
        v14 = &enum case for CharacteristicKind.brightness(_:);
        goto LABEL_3;
      }

      if (v7 != enum case for ServiceKind.thermostat(_:))
      {
        if (v7 == enum case for ServiceKind.valve(_:))
        {
          sub_100003714(&qword_1000C0B50, &qword_10009F948);
          v8 = sub_10009D464();
          v9 = *(v8 - 8);
          v47 = *(v9 + 72);
          v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v12 = swift_allocObject();
          v13 = v12;
          *(v12 + 16) = xmmword_10009F8D0;
          v14 = &enum case for CharacteristicKind.inUse(_:);
          goto LABEL_3;
        }

        if (v7 == enum case for ServiceKind.ventilationFan(_:))
        {
          goto LABEL_2;
        }

        if (v7 != enum case for ServiceKind.window(_:) && v7 != enum case for ServiceKind.windowCovering(_:))
        {
          sub_100003714(&qword_1000C0B50, &qword_10009F948);
          v48 = sub_10009D464();
          v49 = *(v48 - 8);
          v50 = *(v49 + 72);
          v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_10009F8D0;
          (*(v49 + 104))(v13 + v51, enum case for CharacteristicKind.powerState(_:), v48);
          (*(v3 + 8))(v6, v2);
          return v13;
        }

        goto LABEL_5;
      }

      sub_100003714(&qword_1000C0B50, &qword_10009F948);
      v29 = sub_10009D464();
      v44 = *(v29 - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v33 = 4 * v45;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10009F8E0;
      v34 = v13 + v46;
      v35 = *(v44 + 104);
      v35(v34, enum case for CharacteristicKind.currentTemperature(_:), v29);
      v35(v34 + v45, enum case for CharacteristicKind.targetTemperature(_:), v29);
      v35(v34 + 2 * v45, enum case for CharacteristicKind.currentHeatingCooling(_:), v29);
      v35(v34 + 3 * v45, enum case for CharacteristicKind.heatingThreshold(_:), v29);
      v36 = &enum case for CharacteristicKind.coolingThreshold(_:);
    }

    v35(v34 + v33, *v36, v29);
    return v13;
  }

LABEL_5:
  sub_100003714(&qword_1000C0B50, &qword_10009F948);
  v15 = sub_10009D464();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10009F8F0;
  v19 = v13 + v18;
  v20 = *(v16 + 104);
  v20(v19, enum case for CharacteristicKind.positionState(_:), v15);
  v20(v19 + v17, enum case for CharacteristicKind.obstructionDetected(_:), v15);
  return v13;
}

void *sub_1000031AC()
{
  v0 = sub_100003714(&qword_1000C0B30, &qword_10009F938);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v52 = &v48 - v5;
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_10009D464();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v50 = &v48 - v14;
  v15 = __chkstk_darwin(v13);
  v49 = &v48 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - v21;
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  v55 = &_swiftEmptySetSingleton;
  sub_100001D78(v7);
  v25 = *(v9 + 48);
  v26 = v25(v7, 1, v8);
  v53 = v19;
  if (v26 == 1)
  {
    sub_100003900(v7);
  }

  else
  {
    (*(v9 + 32))(v24, v7, v8);
    (*(v9 + 16))(v19, v24, v8);
    sub_100003968(v22, v19);
    v27 = *(v9 + 8);
    v27(v22, v8);
    v27(v24, v8);
  }

  v28 = v52;
  sub_10000209C(v52);
  v29 = v25;
  if (v25(v28, 1, v8) == 1)
  {
    sub_100003900(v28);
    v30 = v53;
  }

  else
  {
    v31 = v49;
    (*(v9 + 32))(v49, v28, v8);
    v30 = v53;
    (*(v9 + 16))(v53, v31, v8);
    sub_100003968(v22, v30);
    v32 = *(v9 + 8);
    v32(v22, v8);
    v32(v31, v8);
  }

  v33 = v54;
  sub_100002408(v54);
  if (v29(v33, 1, v8) == 1)
  {
    sub_100003900(v33);
  }

  else
  {
    v34 = v50;
    (*(v9 + 32))(v50, v33, v8);
    (*(v9 + 16))(v30, v34, v8);
    sub_100003968(v22, v30);
    v35 = *(v9 + 8);
    v35(v22, v8);
    v35(v34, v8);
  }

  v36 = sub_100002700();
  if (v36)
  {
    v37 = v30;
    v52 = v36;
    v38 = *(v36 + 16);
    v39 = v51;
    if (v38)
    {
      v40 = v22;
      v43 = *(v9 + 16);
      v42 = v9 + 16;
      v41 = v43;
      v44 = v52 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
      v54 = *(v42 + 56);
      v45 = (v42 - 8);
      do
      {
        v41(v39, v44, v8);
        v41(v37, v39, v8);
        sub_100003968(v40, v37);
        v46 = *v45;
        (*v45)(v40, v8);
        v46(v39, v8);
        v44 += v54;
        --v38;
      }

      while (v38);
    }
  }

  return v55;
}

uint64_t sub_100003714(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000375C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000037A4()
{
  result = qword_1000C0B20;
  if (!qword_1000C0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0B20);
  }

  return result;
}

uint64_t sub_100003810(__int128 *a1)
{
  v2 = *a1;
  if (sub_10009C33C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100003898(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_10009C33C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100003900(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0B30, &qword_10009F938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003968(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind);
  v36 = a2;
  v13 = sub_10009E4F4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100006DC0(&qword_1000C0B40, &type metadata accessor for CharacteristicKind);
      v23 = sub_10009E534();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000054CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100003C48(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v4 = type metadata accessor for WidgetTileInfo();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v53 - v10;
  v56 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10009EDD4();
  sub_10001ADCC();
  v13 = sub_10009EE04();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_45:
    v47 = v56;
    v48 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v55;
    sub_100006850(a2, v55);
    v58 = *v47;
    sub_100005794(v50, v15, isUniquelyReferenced_nonNull_native);
    v51 = v57;
    *v47 = v58;
    sub_1000068B4(a2, v51);
    return 1;
  }

  v16 = ~v14;
  v17 = *(v5 + 72);
  while (1)
  {
    sub_100006850(*(v11 + 48) + v17 * v15, v9);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_43;
    }

    v18 = v4[6];
    v19 = *&v9[v18];
    v20 = *&v9[v18 + 8];
    v21 = (a2 + v18);
    v22 = v19 == *v21 && v20 == v21[1];
    if (!v22 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v23 = v4[7];
    v24 = &v9[v23];
    v25 = *&v9[v23 + 8];
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_43;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v27)
    {
      goto LABEL_43;
    }

    v29 = v4[8];
    v30 = *&v9[v29];
    v31 = *&v9[v29 + 8];
    v32 = (a2 + v29);
    v33 = v30 == *v32 && v31 == v32[1];
    if (!v33 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v34 = v4[9];
    v35 = *&v9[v34];
    v36 = *&v9[v34 + 8];
    v37 = (a2 + v34);
    if ((v35 != *v37 || v36 != v37[1]) && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v38 = v4[12];
    v39 = *&v9[v38];
    v40 = *(a2 + v38);
    if ((sub_10009E134() & 1) == 0 || v9[v4[13]] != *(a2 + v4[13]))
    {
      goto LABEL_43;
    }

    v41 = v4[15];
    v42 = *&v9[v41];
    v43 = v9[v41 + 8];
    v44 = (a2 + v41);
    v45 = *v44;
    v46 = *(v44 + 8);
    if (v43 <= 1)
    {
      if (v43)
      {
        if (v46 == 1)
        {
          goto LABEL_42;
        }
      }

      else if (!*(v44 + 8))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v43 == 2)
    {
      if (v46 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v43 == 3)
    {
      break;
    }

    v54 = *v44;
    sub_100006918(v9);
    if (v46 == 4 && !v54)
    {
      goto LABEL_47;
    }

LABEL_44:
    v15 = (v15 + 1) & v16;
    if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (v46 != 3)
  {
    goto LABEL_43;
  }

LABEL_42:
  v54 = *v44;
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
LABEL_43:
    sub_100006918(v9);
    goto LABEL_44;
  }

  sub_100006918(v9);
LABEL_47:
  sub_100006918(a2);
  sub_100006850(*(v11 + 48) + v17 * v15, v57);
  return 0;
}

uint64_t sub_100004038(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_10009EA24();

    if (v17)
    {

      sub_100007330(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_10009EA14();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_10000458C(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_100004ECC(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_100005448(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_100007330(0, a3, a4);
    v19 = sub_10009E8D4(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_10009E8E4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_100005B58(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000042AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_10009E4F4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100006DC0(&qword_1000C0BE8, &type metadata accessor for UUID);
      v23 = sub_10009E534();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100005CE8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int sub_10000458C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_100003714(a3, a4);
    v10 = sub_10009EA94();
    v23 = v10;
    sub_10009E9D4();
    if (sub_10009EA44())
    {
      sub_100007330(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100004ECC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_10009E8D4(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_10009EA44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_10000478C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10009D464();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0B48, &qword_10009F940);
  result = sub_10009EA84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind);
      result = sub_10009E4F4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100004AE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetTileInfo();
  v46 = *(v4 - 1);
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EA84();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v2;
    v44 = result + 56;
    v45 = v8;
    if (v16)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v8 + 48);
        v47 = *(v46 + 72);
        sub_1000068B4(v21 + v47 * (v18 | (v12 << 6)), v7);
        v22 = *(v11 + 40);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
        sub_10009E504();
        v23 = &v7[v4[6]];
        v24 = *v23;
        v25 = *(v23 + 1);
        sub_10009E624();
        v26 = &v7[v4[7]];
        if (*(v26 + 1))
        {
          v27 = *v26;
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        v28 = &v7[v4[8]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_10009E624();
        v31 = &v7[v4[9]];
        v32 = *v31;
        v33 = *(v31 + 1);
        sub_10009E624();
        v34 = *&v7[v4[12]];
        sub_10009E144();
        sub_10009EDF4(v7[v4[13]]);
        v35 = &v7[v4[15]];
        v36 = *v35;
        v37 = v35[8];
        if (v37 <= 1)
        {
          if (v37)
          {
            v38 = 2;
          }

          else
          {
            v38 = 1;
          }

          goto LABEL_26;
        }

        if (v37 == 2)
        {
          break;
        }

        if (v37 == 3)
        {
          v38 = 4;
LABEL_26:
          sub_10009EDE4(v38);
          sub_10009E8F4();
          goto LABEL_27;
        }

        sub_10009EDE4(0);
LABEL_27:
        sub_10009EE04();
        v39 = -1 << *(v11 + 32);
        v40 = v44;
        v41 = sub_10009E9B4();
        *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        result = sub_1000068B4(v7, *(v11 + 48) + v41 * v47);
        ++*(v11 + 16);
        v8 = v45;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v38 = 3;
      goto LABEL_26;
    }

LABEL_9:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v42 = 1 << *(v8 + 32);
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    v2 = v43;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_100004ECC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100003714(a2, a3);
  result = sub_10009EA84();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_10009E8D4(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1000050EC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10009CF14();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0BE0, "tz");
  result = sub_10009EA84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
      result = sub_10009E4F4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_100005448(uint64_t a1, uint64_t a2)
{
  sub_10009E8D4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10009E9B4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1000054CC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000478C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000062FC(&type metadata accessor for CharacteristicKind, &qword_1000C0B48, &qword_10009F940);
      goto LABEL_12;
    }

    sub_100006534(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind);
  v15 = sub_10009E4F4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100006DC0(&qword_1000C0B40, &type metadata accessor for CharacteristicKind);
      v23 = sub_10009E534();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10009ED64();
  __break(1u);
  return result;
}

uint64_t sub_100005794(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WidgetTileInfo();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v58 = v9;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a3)
  {
    sub_100004AE8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100005FB0();
      goto LABEL_54;
    }

    sub_100006974(v13 + 1);
  }

  v15 = *v4;
  v16 = *(*v4 + 40);
  sub_10009EDD4();
  sub_10001ADCC();
  v17 = sub_10009EE04();
  v18 = -1 << *(v15 + 32);
  a2 = v17 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    while (1)
    {
      sub_100006850(*(v15 + 48) + v20 * a2, v12);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_35;
      }

      v21 = v8[6];
      v22 = *&v12[v21];
      v23 = *&v12[v21 + 8];
      v24 = (a1 + v21);
      v25 = v22 == *v24 && v23 == v24[1];
      if (!v25 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_35;
      }

      v26 = v8[7];
      v27 = &v12[v26];
      v28 = *&v12[v26 + 8];
      v29 = (a1 + v26);
      v30 = v29[1];
      if (v28)
      {
        if (!v30)
        {
          goto LABEL_35;
        }

        v31 = *v27 == *v29 && v28 == v30;
        if (!v31 && (sub_10009ED34() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v30)
      {
        goto LABEL_35;
      }

      v32 = v8[8];
      v33 = *&v12[v32];
      v34 = *&v12[v32 + 8];
      v35 = (a1 + v32);
      v36 = v33 == *v35 && v34 == v35[1];
      if (!v36 && (sub_10009ED34() & 1) == 0 || ((v37 = v8[9], v38 = *&v12[v37], v39 = *&v12[v37 + 8], v40 = (a1 + v37), v38 != *v40) || v39 != v40[1]) && (sub_10009ED34() & 1) == 0 || (v41 = v8[12], v42 = *&v12[v41], v43 = *(a1 + v41), (sub_10009E134() & 1) == 0) || v12[v8[13]] != *(a1 + v8[13]))
      {
LABEL_35:
        sub_100006918(v12);
        goto LABEL_36;
      }

      v44 = v8[15];
      v45 = *&v12[v44];
      v46 = v12[v44 + 8];
      v47 = (a1 + v44);
      v48 = *v47;
      v49 = *(v47 + 8);
      if (v46 <= 1)
      {
        if (v46)
        {
          if (v49 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (*(v47 + 8))
        {
          goto LABEL_35;
        }

        goto LABEL_52;
      }

      if (v46 == 2)
      {
        break;
      }

      if (v46 == 3)
      {
        if (v49 != 3)
        {
          goto LABEL_35;
        }

LABEL_52:
        v57 = *v47;
        sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
        v50 = sub_10009E8E4();
        sub_100006918(v12);
        if (v50)
        {
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      v57 = *v47;
      sub_100006918(v12);
      if (v49 == 4 && !v57)
      {
LABEL_53:
        sub_10009ED64();
        __break(1u);
        goto LABEL_54;
      }

LABEL_36:
      a2 = (a2 + 1) & v19;
      if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (v49 != 2)
    {
      goto LABEL_35;
    }

    goto LABEL_52;
  }

LABEL_54:
  v51 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000068B4(a1, *(v51 + 48) + *(v58 + 72) * a2);
  v53 = *(v51 + 16);
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (v54)
  {
    __break(1u);
  }

  else
  {
    *(v51 + 16) = v55;
  }

  return result;
}

void sub_100005B58(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100004ECC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100006194(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100006E08(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_10009E8D4(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100007330(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_10009E8E4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10009ED64();
  __break(1u);
}

uint64_t sub_100005CE8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000050EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000062FC(&type metadata accessor for UUID, &qword_1000C0BE0, "tz");
      goto LABEL_12;
    }

    sub_100007014(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
  v15 = sub_10009E4F4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100006DC0(&qword_1000C0BE8, &type metadata accessor for UUID);
      v23 = sub_10009E534();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10009ED64();
  __break(1u);
  return result;
}

void *sub_100005FB0()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetTileInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  v7 = *v0;
  v8 = sub_10009EA74();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_100006850(*(v7 + 48) + v22, v6);
        result = sub_1000068B4(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

id sub_100006194(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003714(a1, a2);
  v4 = *v2;
  v5 = sub_10009EA74();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000062FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_100003714(a2, a3);
  v12 = *v3;
  v13 = sub_10009EA74();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_100006534(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10009D464();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0B48, &qword_10009F940);
  v10 = sub_10009EA84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100006DC0(&qword_1000C0B38, &type metadata accessor for CharacteristicKind);
      result = sub_10009E4F4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100006850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006918(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006974(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetTileInfo();
  v45 = *(v4 - 1);
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EA84();
  v11 = result;
  if (*(v8 + 16))
  {
    v42 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = result + 56;
    v44 = v8;
    if (v16)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v8 + 48);
        v46 = *(v45 + 72);
        sub_100006850(v21 + v46 * (v18 | (v12 << 6)), v7);
        v22 = *(v11 + 40);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
        sub_10009E504();
        v23 = &v7[v4[6]];
        v24 = *v23;
        v25 = *(v23 + 1);
        sub_10009E624();
        v26 = &v7[v4[7]];
        if (*(v26 + 1))
        {
          v27 = *v26;
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        v28 = &v7[v4[8]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_10009E624();
        v31 = &v7[v4[9]];
        v32 = *v31;
        v33 = *(v31 + 1);
        sub_10009E624();
        v34 = *&v7[v4[12]];
        sub_10009E144();
        sub_10009EDF4(v7[v4[13]]);
        v35 = &v7[v4[15]];
        v36 = *v35;
        v37 = v35[8];
        if (v37 <= 1)
        {
          v8 = v44;
          if (v37)
          {
            v38 = 2;
          }

          else
          {
            v38 = 1;
          }

          goto LABEL_26;
        }

        v8 = v44;
        if (v37 == 2)
        {
          break;
        }

        if (v37 == 3)
        {
          v38 = 4;
LABEL_26:
          sub_10009EDE4(v38);
          sub_10009E8F4();
          goto LABEL_27;
        }

        sub_10009EDE4(0);
LABEL_27:
        sub_10009EE04();
        v39 = -1 << *(v11 + 32);
        v40 = v43;
        v41 = sub_10009E9B4();
        *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        result = sub_1000068B4(v7, *(v11 + 48) + v41 * v46);
        ++*(v11 + 16);
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v38 = 3;
      goto LABEL_26;
    }

LABEL_9:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v42;
        goto LABEL_31;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v11;
  }

  return result;
}

__n128 sub_100006D18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006D28(uint64_t a1, int a2)
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

uint64_t sub_100006D48(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_1000C0BD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000C0BD8);
    }
  }
}

uint64_t sub_100006DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006E08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100003714(a2, a3);
  result = sub_10009EA84();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_10009E8D4(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_100007014(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10009CF14();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0BE0, "tz");
  v10 = sub_10009EA84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100006DC0(&qword_1000C0B68, &type metadata accessor for UUID);
      result = sub_10009E4F4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100007330(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100007378()
{
  v1 = sub_10009E124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 applicationData];
  v7 = [v6 dictionary];

  sub_100003714(&qword_1000C0C10, &qword_10009F9A8);
  v8 = sub_10009E4C4();

  if (!*(v8 + 16) || (v9 = sub_10001B558(0xD00000000000001FLL, 0x80000001000A4090), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_unknownObjectRetain();

  v23[1] = v11;
  sub_100003714(&qword_1000C0C18, &qword_10009F9B0);
  if (swift_dynamicCast())
  {
    v12 = v23[0];
    if (*(v23[0] + 16))
    {
      v13 = sub_10001B558(114, 0xE100000000000000);
      if (v14)
      {
        if (*(v12 + 16))
        {
          v15 = *(*(v12 + 56) + 8 * v13);
          v16 = sub_10001B558(103, 0xE100000000000000);
          if (v17)
          {
            if (*(v12 + 16))
            {
              v18 = *(*(v12 + 56) + 8 * v16);
              v19 = sub_10001B558(98, 0xE100000000000000);
              if (v20)
              {
                v21 = *(*(v12 + 56) + 8 * v19);

                (*(v2 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1);
                return sub_10009E1D4();
              }
            }
          }
        }
      }
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000075D4(uint64_t a1)
{
  v67 = a1;
  v2 = sub_10009D464();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = __chkstk_darwin(v7);
  v66 = &v64 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v64 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v64 - v16;
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = sub_10009D1C4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for ServiceKind.door(_:))
  {
LABEL_2:
    v26 = v3[13];
    v26(v19, enum case for CharacteristicKind.targetPosition(_:), v2);
    v27 = sub_100016C54(v19, v67);
    v29 = v28;
    v30 = v3[1];
    v30(v19, v2);
    if ((v29 & 1) == 0)
    {
      v31 = v2;
      v26(v19, enum case for CharacteristicKind.currentPosition(_:), v2);
      v32 = sub_100016C54(v19, v67);
      v34 = v33;
      v30(v19, v31);
      if ((v34 & 1) == 0)
      {
        v26(v19, enum case for CharacteristicKind.obstructionDetected(_:), v31);
        v35 = sub_100016EAC(v19, v67);
        v30(v19, v31);
        if (v35 == 2 || (v35 & 1) == 0)
        {
          v36 = v27 == v32;
          goto LABEL_7;
        }
      }
    }

LABEL_30:
    LOBYTE(v37) = 0;
    return v37 & 1;
  }

  v64 = v1;
  v38 = v67;
  v39 = v2;
  if (v25 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    (v3[13])(v17, enum case for CharacteristicKind.currentDoorState(_:), v2);
    v40 = sub_100016C54(v17, v38);
    v42 = v41;
    (v3[1])(v17, v2);
    if ((v42 & 1) == 0 && v40 < 5)
    {
      v37 = 0xCu >> v40;
      return v37 & 1;
    }

    goto LABEL_30;
  }

  if (v25 == enum case for ServiceKind.lockMechanism(_:))
  {
    v43 = v3[13];
    v43(v14, enum case for CharacteristicKind.currentLockMechanismState(_:), v2);
    v44 = sub_100016C54(v14, v38);
    v46 = v45;
    v47 = v3[1];
    v47(v14, v2);
    if ((v46 & 1) == 0)
    {
      v48 = v66;
      v43(v66, enum case for CharacteristicKind.targetLockMechanismState(_:), v2);
      v49 = sub_100016C54(v48, v38);
      v51 = v50;
      v47(v48, v2);
      if ((v51 & 1) == 0)
      {
        if (v44 == 1)
        {
          LOBYTE(v37) = v49 == 0;
          return v37 & 1;
        }

        if (!v44)
        {
          LOBYTE(v37) = v49 == 1;
          return v37 & 1;
        }
      }
    }

    goto LABEL_30;
  }

  if (v25 != enum case for ServiceKind.securitySystem(_:))
  {
    if (v25 != enum case for ServiceKind.window(_:) && v25 != enum case for ServiceKind.windowCovering(_:))
    {
      (*(v21 + 8))(v24, v20);
      goto LABEL_30;
    }

    goto LABEL_2;
  }

  v52 = v3[13];
  v53 = v39;
  v52(v9, enum case for CharacteristicKind.currentSecuritySystemState(_:), v39);
  v54 = sub_100016C54(v9, v38);
  v56 = v55;
  v57 = v3[1];
  v57(v9, v53);
  if (v56)
  {
    goto LABEL_30;
  }

  v58 = v65;
  v52(v65, enum case for CharacteristicKind.targetSecuritySystemState(_:), v53);
  v59 = sub_100016C54(v58, v38);
  v61 = v60;
  v57(v58, v53);
  if (v61)
  {
    goto LABEL_30;
  }

  if (v59 <= 1 || v59 != 3)
  {
    if (v54 == 3)
    {
      LOBYTE(v37) = 1;
      return v37 & 1;
    }

    goto LABEL_30;
  }

  v36 = v54 == 3;
LABEL_7:
  LOBYTE(v37) = !v36;
  return v37 & 1;
}

uint64_t sub_100007BC0(void *a1, uint64_t a2)
{
  v304 = a2;
  v3 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v266 = &v243[-v5];
  v6 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v289 = &v243[-v8];
  v288 = sub_10009D5A4();
  v9 = *(v288 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v288);
  v299 = &v243[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v298 = &v243[-v14];
  v15 = __chkstk_darwin(v13);
  v297 = &v243[-v16];
  __chkstk_darwin(v15);
  v296 = &v243[-v17];
  v18 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v251 = &v243[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v243[-v22];
  v24 = sub_100003714(&qword_1000C0C38, &qword_10009F9F0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v257 = &v243[-v26];
  v27 = sub_10009D1C4();
  v284 = *(v27 - 8);
  v28 = *(v284 + 8);
  __chkstk_darwin(v27);
  v290 = &v243[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v293 = type metadata accessor for WidgetTileInfo();
  v265 = *(v293 - 8);
  v30 = *(v265 + 64);
  v31 = __chkstk_darwin(v293);
  v262 = &v243[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v256 = &v243[-v34];
  __chkstk_darwin(v33);
  v287 = &v243[-v35];
  v305 = sub_10009CF14();
  v36 = *(v305 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v305);
  v303 = &v243[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v42 = &v243[-v41];
  v43 = __chkstk_darwin(v40);
  v250 = &v243[-v44];
  v45 = __chkstk_darwin(v43);
  v295 = &v243[-v46];
  v47 = __chkstk_darwin(v45);
  v294 = &v243[-v48];
  v49 = __chkstk_darwin(v47);
  v51 = &v243[-v50];
  __chkstk_darwin(v49);
  v53 = &v243[-v52];
  v308 = &_swiftEmptySetSingleton;
  v246 = a1;
  v54 = [a1 serviceGroups];
  v245 = sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v55 = sub_10009E6A4();

  v307 = _swiftEmptyArrayStorage;
  if (v55 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    v258 = v23;
    v259 = v27;
    v291 = v51;
    if (i)
    {
      v285 = v9;
      v9 = 0;
      v301 = v55 & 0xFFFFFFFFFFFFFF8;
      v302 = v55 & 0xC000000000000001;
      v286 = (v55 + 32);
      v292 = (v36 + 8);
      v23 = &qword_1000C0BE8;
      v300 = v55;
      while (1)
      {
        if (v302)
        {
          v57 = sub_10009EAE4();
        }

        else
        {
          if (v9 >= *(v301 + 16))
          {
            goto LABEL_88;
          }

          v57 = v286[v9];
        }

        v58 = v57;
        v59 = __OFADD__(v9++, 1);
        if (v59)
        {
          break;
        }

        v27 = i;
        v60 = [v57 uniqueIdentifier];
        sub_10009CF04();

        v61 = 0;
        v62 = *(v304 + 16);
        do
        {
          if (v62 == v61)
          {
            (*v292)(v53, v305);

            goto LABEL_6;
          }

          v51 = v61 + 1;
          v63 = v304 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v61;
          sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
          v64 = sub_10009E534();
          v61 = v51;
        }

        while ((v64 & 1) == 0);
        (*v292)(v53, v305);
        sub_10009EB34();
        v65 = v307[2];
        sub_10009EB64();
        sub_10009EB74();
        sub_10009EB44();
LABEL_6:
        i = v27;
        v55 = v300;
        if (v9 == v27)
        {
          v23 = v307;
          v27 = v259;
          v51 = v291;
          v9 = v285;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_18:

    v66 = (v23 >> 62) & 1;
    if (v23 < 0)
    {
      LODWORD(v66) = 1;
    }

    v244 = v66;
    v53 = v266;
    if (v66 == 1)
    {
      v55 = sub_10009EBA4();
    }

    else
    {
      v55 = *(v23 + 16);
    }

    v260 = v23;
    if (v55)
    {
      v67 = 0;
      v264 = v23 & 0xC000000000000001;
      v261 = (v284 + 48);
      v247 = (v284 + 32);
      v248 = v284 + 56;
      v286 = (v36 + 16);
      v249 = (v36 + 32);
      v285 = (v9 + 16);
      v254 = (v9 + 8);
      v253 = (v36 + 8);
      v252 = v284 + 8;
      v300 = _swiftEmptyArrayStorage;
      v255 = v42;
      v263 = v55;
      while (1)
      {
        if (v264)
        {
          v68 = sub_10009EAE4();
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v67 >= *(v23 + 16))
          {
            goto LABEL_90;
          }

          v68 = *(v23 + 8 * v67 + 32);
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_89;
          }
        }

        v301 = v69;
        v302 = v67;
        v9 = v68;
        v55 = [v68 services];
        v292 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v70 = sub_10009E6A4();

        if (v70 >> 62)
        {
          if (sub_10009EBA4())
          {
LABEL_31:
            if ((v70 & 0xC000000000000001) != 0)
            {
              v71 = sub_10009EAE4();
              v42 = v258;
              v23 = v290;
            }

            else
            {
              v42 = v258;
              v23 = v290;
              if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

              v71 = *(v70 + 32);
            }

            v72 = [v9 uniqueIdentifier];
            sub_10009CF04();

            v73 = [v9 name];
            v283 = sub_10009E5C4();
            v282 = v74;

            v75 = [v71 associatedServiceType];
            if (v75)
            {
              v76 = v75;
              sub_10009E5C4();

              v77 = v257;
              sub_10009E614();

              if ((*v261)(v77, 1, v27) != 1)
              {
                (*v247)(v23, v77, v27);
                goto LABEL_40;
              }
            }

            else
            {
              v77 = v257;
              (*v248)(v257, 1, 1, v27);
            }

            sub_10009E904();
            if ((*v261)(v77, 1, v27) != 1)
            {
              sub_1000160CC(v77, &qword_1000C0C38, &qword_10009F9F0);
            }

LABEL_40:
            sub_10009E924();
            if (v78)
            {
              sub_10009D124();
              v79 = sub_10009D134();
              v80 = *(v79 - 8);
              if ((*(v80 + 48))(v42, 1, v79) != 1)
              {
                v281 = sub_10009D114();
                v280 = v81;
                (*(v80 + 8))(v42, v79);
                goto LABEL_45;
              }
            }

            else
            {
              v82 = sub_10009D134();
              (*(*(v82 - 8) + 56))(v42, 1, 1, v82);
            }

            sub_1000160CC(v42, &qword_1000C0C30, &qword_10009F9E8);
            v281 = sub_10009D1B4();
            v280 = v83;
LABEL_45:
            sub_10009E924();
            v84 = v305;
            if (v85)
            {
              v86 = v251;
              sub_10009D124();
              v87 = sub_10009D134();
              v88 = *(v87 - 8);
              if ((*(v88 + 48))(v86, 1, v87) == 1)
              {
                sub_1000160CC(v86, &qword_1000C0C30, &qword_10009F9E8);
                goto LABEL_48;
              }

              v278 = sub_10009D104();
              v277 = v90;
              (*(v88 + 8))(v86, v87);
            }

            else
            {
LABEL_48:
              v278 = sub_10009D194();
              v277 = v89;
            }

            sub_10001050C(&IconSymbol.offStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolDeactivatedRenderingMode.getter, v296);
            sub_10001050C(&IconSymbol.onStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolActivatedRenderingMode.getter, v297);
            v91 = sub_10009D184();
            v92 = *v286;
            (*v286)(v294, v51, v84);
            v279 = v91;

            v93 = [v71 accessory];
            if (v93)
            {
              v94 = v93;
              v95 = [v93 uniqueIdentifier];

              v96 = v250;
              sub_10009CF04();

              (*v249)(v295, v96, v84);
            }

            else
            {
              v92(v295, v51, v84);
            }

            v97 = [v71 accessory];
            if (v97 && (v98 = v97, v99 = [v97 room], v98, v99))
            {
              v100 = [v99 name];

              v270 = sub_10009E5C4();
              v269 = v101;
            }

            else
            {
              v270 = 0;
              v269 = 0;
            }

            v102 = *v285;
            v103 = v288;
            (*v285)(v298, v296, v288);
            v102(v299, v297, v103);
            v104 = [v71 accessory];
            v284 = v71;
            if (v104)
            {
              v105 = v104;
              v268 = [v104 isReachable];
            }

            else
            {
              v268 = 0;
            }

            v106 = type metadata accessor for WidgetPredictionAnalyticsInfo();
            v107 = *(*(v106 - 8) + 56);
            v107(v289, 1, 1, v106);
            v108 = v9;
            v267 = v9;
            v276 = sub_10001C968(_swiftEmptyArrayStorage);
            v109 = v293;
            v110 = *(v293 + 72);
            v111 = sub_10009D3F4();
            v112 = v256;
            (*(*(v111 - 8) + 56))(&v256[v110], 1, 1, v111);
            v275 = v109[19];
            v107((v112 + v275), 1, 1, v106);
            v113 = v109[21];
            v274 = v109[20];
            v272 = (v112 + v113);
            v114 = v109[22];
            v273 = v109[23];
            v271 = (v112 + v114);
            v9 = v305;
            v92(v112, v294, v305);
            v92((v112 + v109[5]), v295, v9);
            v115 = (v112 + v109[6]);
            v116 = v282;
            *v115 = v283;
            v115[1] = v116;
            v117 = (v112 + v109[7]);
            v118 = v269;
            *v117 = v270;
            v117[1] = v118;
            v119 = (v112 + v109[8]);
            v120 = v280;
            *v119 = v281;
            v119[1] = v120;
            v121 = (v112 + v109[9]);
            v122 = v277;
            *v121 = v278;
            v121[1] = v122;
            v123 = v288;
            v102((v112 + v109[10]), v298, v288);
            v102((v112 + v109[11]), v299, v123);
            *(v112 + v109[12]) = v279;
            *(v112 + v109[13]) = v268;
            v124 = v112 + v109[15];
            *v124 = v108;
            *(v124 + 8) = 1;

            v125 = v267;
            v126 = [v125 services];
            v127 = sub_10009E6A4();

            v307 = v127;
            sub_100003714(&qword_1000C0C50, &qword_10009F9F8);
            sub_100014C64();
            sub_10009E7C4();

            v128 = sub_10009D244();

            v129 = *v254;
            (*v254)(v299, v123);
            v129(v298, v123);
            v130 = *v253;
            (*v253)(v295, v9);
            v130(v294, v9);
            v129(v297, v123);
            v129(v296, v123);
            v27 = v259;
            (*v252)(v290, v259);
            v130(v291, v9);
            *(v112 + v109[14]) = v128 & 1;
            *(v112 + v109[16]) = v276;
            *(v112 + v109[17]) = 0;
            *(v112 + v274) = 2;
            v131 = v272;
            *v272 = 0;
            *(v131 + 8) = 1;
            v132 = v271;
            *v271 = 0;
            v132[1] = 0;
            *(v112 + v273) = 2;
            sub_100014CC8(v289, v112 + v275);
            sub_1000068B4(v112, v287);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v300 = sub_100064F4C(0, v300[2] + 1, 1, v300);
            }

            v23 = v260;
            v53 = v266;
            v42 = v255;
            v134 = v300[2];
            v133 = v300[3];
            v51 = v291;
            if (v134 >= v133 >> 1)
            {
              v300 = sub_100064F4C(v133 > 1, v134 + 1, 1, v300);
            }

            v135 = v300;
            v300[2] = v134 + 1;
            sub_1000068B4(v287, v135 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v134);
            goto LABEL_25;
          }
        }

        else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

LABEL_25:
        v67 = v302 + 1;
        v55 = v263;
        if (v301 == v263)
        {
          goto LABEL_72;
        }
      }
    }

    v300 = _swiftEmptyArrayStorage;
LABEL_72:
    sub_100015A5C(v300);

    v292 = v308[2];
    v55 = [v246 actionSets];
    sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
    v136 = sub_10009E6A4();

    v137 = v136;
    v307 = _swiftEmptyArrayStorage;
    if (v136 >> 62)
    {
      v55 = v136;
      v27 = sub_10009EBA4();
      v137 = v136;
      if (!v27)
      {
LABEL_97:
        v142 = _swiftEmptyArrayStorage;
        goto LABEL_98;
      }
    }

    else
    {
      v27 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_97;
      }
    }

    v53 = 0;
    v301 = v137 & 0xFFFFFFFFFFFFFF8;
    v302 = v137 & 0xC000000000000001;
    v298 = v137;
    v299 = (v137 + 32);
    v300 = (v36 + 8);
    v9 = &qword_1000C0BE8;
LABEL_76:
    if (v302)
    {
      v138 = sub_10009EAE4();
    }

    else
    {
      if (v53 >= *(v301 + 16))
      {
        goto LABEL_92;
      }

      v138 = *&v299[8 * v53];
    }

    v23 = v138;
    v59 = __OFADD__(v53++, 1);
    if (!v59)
    {
      break;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v55 = [v138 uniqueIdentifier];
  sub_10009CF04();

  v139 = 0;
  v51 = *(v304 + 16);
  do
  {
    if (v51 == v139)
    {
      (*v300)(v42, v305);

      if (v53 != v27)
      {
        goto LABEL_76;
      }

      goto LABEL_86;
    }

    v140 = v139 + 1;
    v55 = v304 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v139;
    sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
    v141 = sub_10009E534();
    v139 = v140;
  }

  while ((v141 & 1) == 0);
  (*v300)(v42, v305);
  sub_10009EB34();
  v55 = v307[2];
  sub_10009EB64();
  sub_10009EB74();
  sub_10009EB44();
  if (v53 != v27)
  {
    goto LABEL_76;
  }

LABEL_86:
  v142 = v307;
  v53 = v266;
LABEL_98:

  v143 = (v142 >> 62) & 1;
  if (v142 < 0)
  {
    LODWORD(v143) = 1;
  }

  LODWORD(v291) = v143;
  v144 = v142;
  v299 = v142;
  if (v143 == 1)
  {
    goto LABEL_151;
  }

  v145 = *(v142 + 16);
LABEL_102:
  v146 = _swiftEmptyArrayStorage;
  if (v145)
  {
    v147 = 0;
    v148 = v144 & 0xC000000000000001;
    v149 = (v265 + 48);
    do
    {
      if (v148)
      {
        v150 = sub_10009EAE4();
      }

      else
      {
        if (v147 >= *(v144 + 16))
        {
          goto LABEL_148;
        }

        v150 = *(v144 + 8 * v147 + 32);
      }

      v151 = v150;
      v152 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        goto LABEL_147;
      }

      sub_10000A450(v150, v53);

      if ((*v149)(v53, 1, v293) == 1)
      {
        sub_1000160CC(v53, &qword_1000C0C20, &qword_1000A1E30);
      }

      else
      {
        sub_1000068B4(v53, v262);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_100064F4C(0, v146[2] + 1, 1, v146);
        }

        v154 = v146[2];
        v153 = v146[3];
        if (v154 >= v153 >> 1)
        {
          v146 = sub_100064F4C(v153 > 1, v154 + 1, 1, v146);
        }

        v146[2] = v154 + 1;
        sub_1000068B4(v262, v146 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v154);
        v53 = v266;
      }

      ++v147;
      v144 = v299;
    }

    while (v152 != v145);
  }

  sub_100015A5C(v146);

  v293 = v308[2];
  v155 = [v246 serviceGroups];
  v156 = sub_10009E6A4();

  v307 = _swiftEmptyArrayStorage;
  if (v156 >> 62)
  {
    v157 = sub_10009EBA4();
    if (v157)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v157 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v157)
    {
LABEL_119:
      v158 = 0;
      v297 = (v156 & 0xFFFFFFFFFFFFFF8);
      v298 = (v156 & 0xC000000000000001);
      v296 = (v156 + 32);
      v302 = v36 + 32;
      v295 = v156;
      v294 = v157;
      while (1)
      {
        if (v298)
        {
          v160 = sub_10009EAE4();
          v59 = __OFADD__(v158, 1);
          v161 = v158 + 1;
          if (v59)
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (v158 >= *(v297 + 2))
          {
            goto LABEL_150;
          }

          v160 = *&v296[8 * v158];
          v59 = __OFADD__(v158, 1);
          v161 = v158 + 1;
          if (v59)
          {
            goto LABEL_149;
          }
        }

        v300 = v160;
        v162 = [v160 services];
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v163 = sub_10009E6A4();

        if (v163 >> 62)
        {
          v164 = sub_10009EBA4();
          v301 = v161;
          if (v164)
          {
LABEL_127:
            v165 = 0;
            v53 = v163 & 0xC000000000000001;
            v159 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (v53)
              {
                v166 = sub_10009EAE4();
              }

              else
              {
                if (v165 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_146;
                }

                v166 = *(v163 + 8 * v165 + 32);
              }

              v167 = v166;
              v168 = v165 + 1;
              if (__OFADD__(v165, 1))
              {
                break;
              }

              v169 = [v166 uniqueIdentifier];
              sub_10009CF04();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v159 = sub_100064F74(0, v159[2] + 1, 1, v159);
              }

              v171 = v159[2];
              v170 = v159[3];
              if (v171 >= v170 >> 1)
              {
                v159 = sub_100064F74(v170 > 1, v171 + 1, 1, v159);
              }

              v159[2] = v171 + 1;
              (*(v36 + 32))(v159 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v171, v303, v305);
              ++v165;
              if (v168 == v164)
              {
                goto LABEL_121;
              }
            }

            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            v173 = sub_10009EBA4();
            v144 = v299;
            v145 = v173;
            goto LABEL_102;
          }
        }

        else
        {
          v164 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v301 = v161;
          if (v164)
          {
            goto LABEL_127;
          }
        }

        v159 = _swiftEmptyArrayStorage;
LABEL_121:

        sub_1000615AC(v159);
        v158 = v301;
        if (v301 == v294)
        {
          v172 = v307;
          goto LABEL_154;
        }
      }
    }
  }

  v172 = _swiftEmptyArrayStorage;
LABEL_154:
  v303 = v172;

  v174 = [v246 accessories];
  v300 = sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v175 = sub_10009E6A4();

  if (v175 >> 62)
  {
    goto LABEL_228;
  }

  v176 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_156:
  v177 = _swiftEmptyArrayStorage;
  if (v176)
  {
    v178 = 0;
    v301 = v175 & 0xFFFFFFFFFFFFFF8;
    v302 = v175 & 0xC000000000000001;
    do
    {
      if (v302)
      {
        v179 = sub_10009EAE4();
      }

      else
      {
        if (v178 >= *(v301 + 16))
        {
          goto LABEL_221;
        }

        v179 = *(v175 + 8 * v178 + 32);
      }

      v180 = v179;
      v181 = v178 + 1;
      if (__OFADD__(v178, 1))
      {
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        v176 = sub_10009EBA4();
        goto LABEL_156;
      }

      v182 = [v179 uniqueIdentifiersForBridgedAccessories];
      if (v182)
      {
        v183 = v182;
        v184 = sub_10009E6A4();

        v180 = v183;
      }

      else
      {
        v184 = _swiftEmptyArrayStorage;
      }

      v185 = v184[2];
      v186 = v177[2];
      v187 = v186 + v185;
      if (__OFADD__(v186, v185))
      {
        goto LABEL_222;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v187 <= v177[3] >> 1)
      {
        if (v184[2])
        {
          goto LABEL_176;
        }
      }

      else
      {
        if (v186 <= v187)
        {
          v189 = v186 + v185;
        }

        else
        {
          v189 = v186;
        }

        v177 = sub_100064F74(isUniquelyReferenced_nonNull_native, v189, 1, v177);
        if (v184[2])
        {
LABEL_176:
          v190 = v177[2];
          if ((v177[3] >> 1) - v190 < v185)
          {
            goto LABEL_226;
          }

          v191 = v177 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v190;
          swift_arrayInitWithCopy();

          if (v185)
          {
            v192 = v177[2];
            v59 = __OFADD__(v192, v185);
            v193 = v192 + v185;
            if (v59)
            {
              goto LABEL_227;
            }

            v177[2] = v193;
          }

          goto LABEL_159;
        }
      }

      if (v185)
      {
        goto LABEL_223;
      }

LABEL_159:
      ++v178;
    }

    while (v181 != v176);
  }

  v194 = [v246 accessories];
  v195 = sub_10009E6A4();

  v307 = _swiftEmptyArrayStorage;
  if (v195 >> 62)
  {
    v36 = sub_10009EBA4();
  }

  else
  {
    v36 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v196 = v260;
  if (v36)
  {
    v175 = 0;
    do
    {
      if ((v195 & 0xC000000000000001) != 0)
      {
        v197 = sub_10009EAE4();
      }

      else
      {
        if (v175 >= *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_225;
        }

        v197 = *(v195 + 8 * v175 + 32);
      }

      v198 = v197;
      v199 = v175 + 1;
      if (__OFADD__(v175, 1))
      {
        goto LABEL_224;
      }

      v200 = sub_10000ADD8(v197, v304, v303, v177);

      sub_100060F3C(v200);
      ++v175;
    }

    while (v199 != v36);
  }

  sub_100015A5C(v307);

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v201 = sub_10009D924();
  sub_100015B68(v201, qword_1000C8278);

  v202 = sub_10009D904();
  v203 = sub_10009E844();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = v292;
    v205 = v293 - v292;
    v206 = swift_slowAlloc();
    *v206 = 134219008;
    *(v206 + 4) = v204;
    *(v206 + 12) = 2048;
    if (v244)
    {
      v207 = sub_10009EBA4();
    }

    else
    {
      v207 = *(v196 + 16);
    }

    *(v206 + 14) = v207;

    *(v206 + 22) = 2048;
    *(v206 + 24) = v205;
    *(v206 + 32) = 2048;
    if (v291)
    {
      v208 = sub_10009EBA4();
    }

    else
    {
      v208 = *(v299 + 2);
    }

    *(v206 + 34) = v208;

    *(v206 + 42) = 2048;
    result = swift_beginAccess();
    v210 = v292 + v205;
    if (__OFADD__(v292, v205))
    {
      __break(1u);
    }

    else
    {
      v211 = v308[2];
      v59 = __OFSUB__(v211, v210);
      v212 = v211 - v210;
      if (!v59)
      {
        *(v206 + 44) = v212;
        _os_log_impl(&_mh_execute_header, v202, v203, "Added: %ld serviceGroups (out of %ld), %ld action sets (out of %ld) and %ld accessories/services to widgetTileInfos", v206, 0x34u);

        goto LABEL_205;
      }
    }

    __break(1u);
    return result;
  }

LABEL_205:
  v213 = sub_10009D904();
  v214 = sub_10009E844();
  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v307 = v216;
    *v215 = 136315138;
    swift_beginAccess();

    sub_10000CB84(v217);

    v218 = sub_10009E6B4();
    v220 = v219;

    v221 = sub_10002AD68(v218, v220, &v307);

    *(v215 + 4) = v221;
    _os_log_impl(&_mh_execute_header, v213, v214, "widgetTileInfos UUIDs: %s", v215, 0xCu);
    sub_100015F44(v216);
  }

  v222 = v304;
  v223 = sub_10000A120(v304, &v308);
  v307 = &_swiftEmptySetSingleton;
  v224 = sub_100015BA0(v223, &v307);

  v225 = v224[2];
  swift_beginAccess();
  v226 = v308;
  if (v225 == v308[2])
  {
  }

  else
  {

    v228 = sub_100015DDC(v227);

    if (v226[2] <= *(v228 + 16) >> 3)
    {
      v306 = v228;

      sub_10001070C(v231);

      v230 = v306;
    }

    else
    {

      v230 = sub_100010B08(v229, v228);
    }

    v232 = sub_10009D904();
    v233 = sub_10009E844();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 134218496;
      *(v234 + 4) = *(v222 + 16);

      *(v234 + 12) = 2048;
      *(v234 + 14) = v226[2];
      *(v234 + 22) = 2048;
      *(v234 + 24) = v224[2];

      _os_log_impl(&_mh_execute_header, v232, v233, "WidgetTileInfos output inconsistency - uuids:%ld widgetTileInfos:%ld sortedWidgetTileInfos: %ld", v234, 0x20u);
    }

    else
    {
    }

    v235 = sub_10009D904();
    v236 = sub_10009E824();

    if (os_log_type_enabled(v235, v236))
    {
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v306 = v238;
      *v237 = 136315138;
      sub_10000CB84(v230);

      v239 = sub_10009E6B4();
      v241 = v240;

      v242 = sub_10002AD68(v239, v241, &v306);

      *(v237 + 4) = v242;
      _os_log_impl(&_mh_execute_header, v235, v236, "Rejected these widgets out for some reason: %s", v237, 0xCu);
      sub_100015F44(v238);
    }

    else
    {
    }
  }

  return v224;
}

void *sub_10000A120(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v30 = type metadata accessor for WidgetTileInfo();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v30);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v28 = &v26 - v12;
  v13 = *(a1 + 16);
  v31 = a2;
  swift_beginAccess();
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = sub_10009CF14();
  v16 = *(v14 - 8);
  v15 = v14 - 8;
  v27 = v8;
  v17 = (v8 + 48);
  v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = *(v16 + 72);
  v20 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *v31;
    __chkstk_darwin(v15);
    *(&v26 - 2) = v18;

    sub_10000D8A0(sub_100015FEC, v21, v7);

    if ((*v17)(v7, 1, v30) == 1)
    {
      v15 = sub_1000160CC(v7, &qword_1000C0C20, &qword_1000A1E30);
    }

    else
    {
      v22 = v28;
      sub_1000068B4(v7, v28);
      sub_1000068B4(v22, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100064F4C(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_100064F4C(v23 > 1, v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      v15 = sub_1000068B4(v29, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24);
    }

    v18 += v19;
    --v13;
  }

  while (v13);
  return v20;
}

uint64_t sub_10000A450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v100 - v5;
  v7 = sub_10009CF14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v100 - v13;
  v14 = [a1 actions];
  v15 = sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
  sub_10001607C(&qword_1000C0CC0, &qword_1000C0CB8, HMAction_ptr);
  v110 = v15;
  v16 = sub_10009E754();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_10009EA14();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  if (!v17)
  {
    v24 = type metadata accessor for WidgetTileInfo();
    v25 = *(*(v24 - 8) + 56);
    v26 = v24;
    v27 = v109;

    return v25(v27, 1, 1, v26);
  }

  v107 = v12;
  v102 = v6;
  v105 = v8;
  v18 = [a1 actions];
  v19 = sub_10009E754();

  v108 = a1;
  v106 = v7;
  v104 = v19;
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_10009E794();
    v19 = v112[1];
    v20 = v112[2];
    v21 = v112[3];
    v22 = v112[4];
    v23 = v112[5];
  }

  else
  {
    v29 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v23 = v31 & *(v19 + 56);

    v22 = 0;
  }

  v103 = v21;
  v32 = (v21 + 64) >> 6;
  while (1)
  {
    if (v19 < 0)
    {
      v39 = sub_10009EA44();
      if (!v39 || (v111 = v39, swift_dynamicCast(), v38 = v112[0], v36 = v22, v37 = v23, !v112[0]))
      {
LABEL_36:
        sub_100015F9C();

        v59 = v108;
        v60 = [v108 uniqueIdentifier];
        v61 = v107;
        sub_10009CF04();

        v62 = [v59 name];
        v63 = sub_10009E5C4();
        v103 = v64;
        v104 = v63;

        v101 = sub_10009E804();
        v110 = v65;
        v66 = sub_100007378();
        if (!v66)
        {
          v66 = sub_10009E184();
        }

        v100 = v66;
        v68 = v105;
        v67 = v106;
        v69 = *(v105 + 16);
        v70 = v109;
        v69(v109, v61, v106);
        v71 = type metadata accessor for WidgetTileInfo();
        v69(v70 + v71[5], v61, v67);
        v72 = v71[10];
        v73 = enum case for StaticRenderingMode.monochrome(_:);
        v74 = sub_10009D5A4();
        v75 = *(*(v74 - 8) + 104);
        v75(v70 + v72, v73, v74);
        v75(v70 + v71[11], enum case for StaticRenderingMode.hierarchical(_:), v74);
        v76 = type metadata accessor for WidgetPredictionAnalyticsInfo();
        v77 = *(*(v76 - 8) + 56);
        v78 = v102;
        v77(v102, 1, 1, v76);
        v79 = sub_10001C968(_swiftEmptyArrayStorage);
        (*(v68 + 8))(v107, v67);
        v80 = v71[18];
        v81 = sub_10009D3F4();
        (*(*(v81 - 8) + 56))(v70 + v80, 1, 1, v81);
        v82 = v71[19];
        v77((v70 + v82), 1, 1, v76);
        v83 = v71[20];
        v84 = v71[21];
        v85 = v71[22];
        v86 = v71[23];
        v87 = (v70 + v71[6]);
        v88 = v103;
        *v87 = v104;
        v87[1] = v88;
        v89 = (v70 + v71[7]);
        *v89 = 0;
        v89[1] = 0;
        v90 = (v70 + v71[8]);
        v91 = v100;
        v92 = v101;
        v93 = v110;
        *v90 = v101;
        v90[1] = v93;
        v94 = (v70 + v71[9]);
        *v94 = v92;
        v94[1] = v93;
        *(v70 + v71[12]) = v91;
        *(v70 + v71[13]) = 1;
        v95 = v70 + v84;
        v96 = v70 + v71[15];
        v97 = v108;
        *v96 = v108;
        *(v96 + 8) = 2;
        *(v70 + v71[14]) = 1;
        *(v70 + v71[16]) = v79;
        v98 = (v70 + v85);
        *(v70 + v71[17]) = 0;
        *(v70 + v83) = 2;
        *v95 = 0;
        *(v95 + 8) = 1;
        *v98 = 0;
        v98[1] = 0;
        *(v70 + v86) = 2;
        v99 = v97;

        sub_100014CC8(v78, v70 + v82);
        return (*(*(v71 - 1) + 56))(v70, 0, 1, v71);
      }
    }

    else
    {
      v34 = v22;
      v35 = v23;
      v36 = v22;
      if (!v23)
      {
        while (1)
        {
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v36 >= v32)
          {
            goto LABEL_36;
          }

          v35 = *(v20 + 8 * v36);
          ++v34;
          if (v35)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_24:
      v37 = (v35 - 1) & v35;
      v38 = *(*(v19 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v38)
      {
        goto LABEL_36;
      }
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v38;
    }

    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      break;
    }

    if (v40)
    {
      v33 = v40;
    }

    else
    {
      v33 = 0;
    }

LABEL_18:

    v22 = v36;
    v23 = v37;
  }

  v33 = v42;
  if (!v40)
  {
    goto LABEL_18;
  }

  sub_100015F9C();

  if (qword_1000C0A90 == -1)
  {
    goto LABEL_33;
  }

LABEL_40:
  swift_once();
LABEL_33:
  v43 = sub_10009D924();
  sub_100015B68(v43, qword_1000C8278);
  v44 = v108;
  v45 = sub_10009D904();
  v46 = sub_10009E844();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v109;
  v50 = v105;
  v49 = v106;
  if (v47)
  {
    v51 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_10002AD68(0xD000000000000015, 0x80000001000A4100, v112);
    *(v51 + 12) = 2080;
    v52 = [v44 uniqueIdentifier];
    v53 = v101;
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
    v54 = sub_10009ED04();
    v56 = v55;
    (*(v50 + 8))(v53, v49);
    v57 = sub_10002AD68(v54, v56, v112);

    *(v51 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Ignoring action set %s with unsupportedActions (media playback, apple media accessory etc).", v51, 0x16u);
    swift_arrayDestroy();
  }

  v58 = type metadata accessor for WidgetTileInfo();
  return (*(*(v58 - 8) + 56))(v48, 1, 1, v58);
}

void *sub_10000ADD8(unint64_t isa, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v251 = a4;
  v250 = a3;
  v6 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v246 = &v241 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v241 - v10;
  v253 = type metadata accessor for WidgetTileInfo();
  v252 = *(v253 - 8);
  v12 = *(v252 + 64);
  v13 = __chkstk_darwin(v253);
  v242 = &v241 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v245 = &v241 - v16;
  v17 = __chkstk_darwin(v15);
  v243 = &v241 - v18;
  v19 = __chkstk_darwin(v17);
  v244 = &v241 - v20;
  v21 = __chkstk_darwin(v19);
  v248 = &v241 - v22;
  v23 = __chkstk_darwin(v21);
  v249 = &v241 - v24;
  __chkstk_darwin(v23);
  v268 = (&v241 - v25);
  v26 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v241 - v28;
  v30 = sub_10009D4F4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v241 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v241 - v36;
  v38 = sub_10009CF14();
  v269 = *(v38 - 8);
  v270 = v38;
  v39 = *(v269 + 64);
  v40 = __chkstk_darwin(v38);
  v271 = &v241 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v241 - v42;
  v273 = &_swiftEmptySetSingleton;
  v258 = 0;
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v44 = sub_10009E894();
  v259 = isa;
  if (v44)
  {
    if (!a2 || (v45 = [isa uniqueIdentifier], sub_10009CF04(), v45, LOBYTE(v45) = sub_100024418(v43, a2), (*(v269 + 8))(v43, v270), (v45 & 1) != 0))
    {
      sub_10009E7D4();
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {
        sub_1000160CC(v29, &qword_1000C0C80, &qword_1000A1E10);
      }

      else
      {
        (*(v31 + 32))(v37, v29, v30);
        sub_10000E9E8(isa, v37, v11);
        if ((*(v252 + 48))(v11, 1, v253) != 1)
        {
          v202 = v268;
          sub_1000068B4(v11, v268);
          if (qword_1000C0A90 != -1)
          {
            swift_once();
          }

          v203 = sub_10009D924();
          sub_100015B68(v203, qword_1000C8278);
          (*(v31 + 16))(v35, v37, v30);
          v204 = v259;
          v205 = sub_10009D904();
          v206 = sub_10009E844();

          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            v275 = v271;
            *v207 = 136315650;
            *(v207 + 4) = sub_10002AD68(0xD000000000000047, 0x80000001000A40B0, &v275);
            *(v207 + 12) = 2080;
            v208 = [v204 uniqueIdentifier];
            v267 = v205;
            v209 = v208;
            sub_10009CF04();

            sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
            LODWORD(v266) = v206;
            v210 = v43;
            v211 = v270;
            v212 = sub_10009ED04();
            v214 = v213;
            (*(v269 + 8))(v210, v211);
            v215 = sub_10002AD68(v212, v214, &v275);

            *(v207 + 14) = v215;
            *(v207 + 22) = 2080;
            sub_100015FA4(&qword_1000C0C98, &type metadata accessor for StaticMatterDevice);
            v216 = sub_10009ED04();
            v218 = v217;
            v219 = *(v31 + 8);
            v219(v35, v30);
            v220 = sub_10002AD68(v216, v218, &v275);

            *(v207 + 24) = v220;
            v221 = v267;
            _os_log_impl(&_mh_execute_header, v267, v266, "%s for accessory %s - MatterDevice: %s", v207, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v219 = *(v31 + 8);
            v219(v35, v30);
          }

          v222 = v248;
          sub_100006850(v202, v248);
          v223 = v249;
          sub_100003C48(v249, v222);
          sub_100006918(v223);
          sub_100006918(v202);
          v219(v37, v30);
          return v273;
        }

        (*(v31 + 8))(v37, v30);
        sub_1000160CC(v11, &qword_1000C0C20, &qword_1000A1E30);
        isa = v259;
      }
    }
  }

  v46 = [isa hf_visibleServices];
  v47 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  sub_10001607C(&qword_1000C0C88, &qword_1000C0C48, HMService_ptr);
  v48 = sub_10009E754();

  v262 = v47;
  v257 = v43;
  v256 = a2;
  if ((v48 & 0xC000000000000001) != 0)
  {
    v50 = &_swiftEmptySetSingleton;
    v275 = &_swiftEmptySetSingleton;
    sub_10009E9D4();
    v51 = sub_10009EA44();
    if (v51)
    {
      isa = &type metadata for Swift.AnyObject;
      v52 = -1;
      do
      {
        v272 = v51;
        swift_dynamicCast();
        v53 = [v274 hf_isSensorService];
        v54 = v274;
        if (v53)
        {
        }

        else
        {
          v55 = *(v50 + 16);
          if (*(v50 + 24) <= v55)
          {
            sub_100004EB8(v55 + 1);
          }

          v50 = v275;
          v56 = sub_10009E8D4(v275[5]);
          v57 = v50 + 56;
          v58 = -1 << *(v50 + 32);
          v59 = v56 & ~v58;
          v60 = v59 >> 6;
          if (((-1 << v59) & ~*(v50 + 56 + 8 * (v59 >> 6))) == 0)
          {
            v62 = 0;
            v63 = (63 - v58) >> 6;
            while (++v60 != v63 || (v62 & 1) == 0)
            {
              v64 = v60 == v63;
              if (v60 == v63)
              {
                v60 = 0;
              }

              v62 |= v64;
              v65 = *(v57 + 8 * v60);
              if (v65 != -1)
              {
                v61 = __clz(__rbit64(~v65)) + (v60 << 6);
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            v83 = sub_10009EBA4();
            goto LABEL_51;
          }

          v61 = __clz(__rbit64((-1 << v59) & ~*(v50 + 56 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
          *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
          *(*(v50 + 48) + 8 * v61) = v54;
          ++*(v50 + 16);
        }

        v51 = sub_10009EA44();
      }

      while (v51);
    }

    v52 = v269;
  }

  else
  {
    v66 = *(v48 + 32);
    v67 = ((1 << v66) + 63) >> 6;
    if ((v66 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v238 = swift_slowAlloc();
        v239 = v67;
        v240 = v258;
        v50 = sub_1000149B0(v238, v239, v48, sub_10000F518);
        v258 = v240;

        v52 = v269;
        goto LABEL_44;
      }
    }

    v268 = &v241;
    __chkstk_darwin(v49);
    v69 = &v241 - ((v68 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v69, v68);
    v70 = 0;
    v71 = 0;
    v72 = 1 << *(v48 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v52 = v73 & *(v48 + 56);
    v74 = (v72 + 63) >> 6;
    v50 = &NSObject__properties;
    while (v52)
    {
      v75 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_39:
      isa = v75 | (v71 << 6);
      if (([*(*(v48 + 48) + 8 * isa) hf_isSensorService] & 1) == 0)
      {
        *&v69[(isa >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << isa;
        v78 = __OFADD__(v70++, 1);
        if (v78)
        {
          __break(1u);
          goto LABEL_43;
        }
      }
    }

    v76 = v71;
    v52 = v269;
    while (1)
    {
      v71 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_135;
      }

      if (v71 >= v74)
      {
        break;
      }

      v77 = *(v48 + 56 + 8 * v71);
      ++v76;
      if (v77)
      {
        v75 = __clz(__rbit64(v77));
        v52 = (v77 - 1) & v77;
        goto LABEL_39;
      }
    }

LABEL_43:
    v50 = sub_100013C2C(v69, v67, v70, v48);
  }

LABEL_44:
  v79 = v259;
  if ((v50 & 0xC000000000000001) == 0)
  {
    if (*(v50 + 16) < 2)
    {
      goto LABEL_46;
    }

LABEL_48:
    v254 = sub_10009E7E4();
    v80 = v254 & 1;
    v81 = &v276;
    goto LABEL_49;
  }

  if (sub_10009EA14() >= 2)
  {
    goto LABEL_48;
  }

LABEL_46:
  v247 = 0;
  v80 = 1;
  v81 = &v277 + 4;
LABEL_49:
  *(v81 - 64) = v80;
  v82 = [v79 services];
  isa = sub_10009E6A4();

  if (isa >> 62)
  {
    goto LABEL_138;
  }

  v83 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_51:
  v255 = isa;
  if (v83)
  {
    v84 = 0;
    v264 = isa & 0xFFFFFFFFFFFFFF8;
    v265 = isa & 0xC000000000000001;
    v263 = isa + 32;
    v85 = (v52 + 32);
    v86 = _swiftEmptyArrayStorage;
    v261 = v50;
    v260 = v83;
    while (1)
    {
      if (v265)
      {
        v87 = sub_10009EAE4();
      }

      else
      {
        if (v84 >= *(v264 + 16))
        {
          goto LABEL_132;
        }

        v87 = *(v263 + 8 * v84);
      }

      isa = v87;
      v78 = __OFADD__(v84, 1);
      v88 = (v84 + 1);
      if (v78)
      {
        goto LABEL_131;
      }

      v268 = v88;
      v89 = [v87 linkedServices];
      if (v89)
      {
        v266 = isa;
        v90 = v89;
        v91 = sub_10009E6A4();

        if (v91 >> 62)
        {
          v92 = sub_10009EBA4();
          v267 = v86;
          if (v92)
          {
LABEL_62:
            v93 = 0;
            v94 = v91 & 0xFFFFFFFFFFFFFF8;
            v95 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v91 & 0xC000000000000001) != 0)
              {
                v96 = sub_10009EAE4();
              }

              else
              {
                if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_118;
                }

                v96 = *(v91 + 8 * v93 + 32);
              }

              v52 = v96;
              v97 = v93 + 1;
              if (__OFADD__(v93, 1))
              {
                break;
              }

              v98 = [v96 uniqueIdentifier];
              sub_10009CF04();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v95 = sub_100064F74(0, v95[2] + 1, 1, v95);
              }

              v100 = v95[2];
              v99 = v95[3];
              if (v100 >= v99 >> 1)
              {
                v95 = sub_100064F74(v99 > 1, v100 + 1, 1, v95);
              }

              v95[2] = v100 + 1;
              v52 = v269;
              (*(v269 + 32))(v95 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v269 + 72) * v100, v271, v270);
              ++v93;
              if (v97 == v92)
              {
                goto LABEL_78;
              }
            }

            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

        else
        {
          v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v267 = v86;
          if (v92)
          {
            goto LABEL_62;
          }
        }

        v95 = _swiftEmptyArrayStorage;
LABEL_78:

        v50 = v261;
        v86 = v267;
        v83 = v260;
      }

      else
      {

        v95 = _swiftEmptyArrayStorage;
      }

      v101 = v95[2];
      isa = v86[2].isa;
      v102 = isa + v101;
      if (__OFADD__(isa, v101))
      {
        goto LABEL_133;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v102 <= (v86[3].isa >> 1))
      {
        if (!v95[2])
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (isa <= v102)
        {
          v104 = isa + v101;
        }

        else
        {
          v104 = isa;
        }

        v86 = sub_100064F74(isUniquelyReferenced_nonNull_native, v104, 1, v86);
        if (!v95[2])
        {
LABEL_53:

          if (v101)
          {
            goto LABEL_134;
          }

          goto LABEL_54;
        }
      }

      v105 = v86[2].isa;
      if (((v86[3].isa >> 1) - v105) < v101)
      {
        goto LABEL_136;
      }

      v106 = v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v105;
      swift_arrayInitWithCopy();

      if (v101)
      {
        v107 = v86[2].isa;
        v78 = __OFADD__(v107, v101);
        v108 = (v107 + v101);
        if (v78)
        {
          goto LABEL_137;
        }

        v86[2].isa = v108;
      }

LABEL_54:
      v84 = v268;
      if (v268 == v83)
      {
        goto LABEL_93;
      }
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_93:

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v109 = sub_10009D924();
  v110 = sub_100015B68(v109, qword_1000C8278);
  v111 = v259;

  v271 = v110;
  v112 = sub_10009D904();
  v113 = sub_10009E844();

  v114 = os_log_type_enabled(v112, v113);
  v268 = v111;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    *v115 = 136316162;
    *(v115 + 4) = sub_10002AD68(0xD000000000000047, 0x80000001000A40B0, &v275);
    v267 = v86;
    *(v115 + 12) = 2080;
    v116 = [v111 uniqueIdentifier];
    v117 = v257;
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
    v118 = v270;
    v119 = sub_10009ED04();
    v121 = v120;
    (*(v269 + 8))(v117, v118);
    v122 = sub_10002AD68(v119, v121, &v275);

    *(v115 + 14) = v122;
    *(v115 + 22) = 2080;
    v123 = v258;
    sub_10000CF24(v50);
    v258 = v123;
    v124 = sub_10009E6B4();
    v126 = v125;

    v127 = sub_10002AD68(v124, v126, &v275);

    *(v115 + 24) = v127;
    *(v115 + 32) = 1024;
    *(v115 + 34) = v247;
    *(v115 + 38) = 2080;
    v86 = v267;
    v128 = sub_10009E6B4();
    v130 = sub_10002AD68(v128, v129, &v275);

    *(v115 + 40) = v130;
    _os_log_impl(&_mh_execute_header, v112, v113, "%s for accessory %s - allVisibleServices: %s needToBeShownAsSeparateTile: %{BOOL}d linkedServiceIDs: %s", v115, 0x30u);
    swift_arrayDestroy();
  }

  v131 = v256;
  if (v254)
  {
    v132 = v268;
    v133 = [v268 services];
    v134 = sub_10009E6A4();

    v135 = v132;

    v136 = v250;

    v137 = v251;

    sub_100014D38(v134, v136, v137, v135, v50, v86, v131, &v273);

    swift_bridgeObjectRelease_n();

    v138 = v135;
    v139 = sub_10009D904();
    v140 = sub_10009E844();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      *v141 = 136315394;
      swift_beginAccess();

      sub_10000CB84(v142);

      v143 = v270;
      v144 = sub_10009E6B4();
      v146 = v145;

      v147 = sub_10002AD68(v144, v146, &v275);

      *(v141 + 4) = v147;
      *(v141 + 12) = 2080;
      v148 = [v138 uniqueIdentifier];
      v149 = v257;
      sub_10009CF04();

      sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
      v150 = sub_10009ED04();
      v152 = v151;
      (*(v269 + 8))(v149, v143);
      v153 = sub_10002AD68(v150, v152, &v275);

      *(v141 + 14) = v153;
      _os_log_impl(&_mh_execute_header, v139, v140, "Returning widgetTileInfo for services %s of accessory %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    return v273;
  }

  v154 = v257;
  v155 = v268;
  v156 = v269;
  if (!v131 || (v157 = [v268 uniqueIdentifier], sub_10009CF04(), v157, LOBYTE(v157) = sub_100024418(v154, v131), (*(v156 + 8))(v154, v270), (v157 & 1) != 0))
  {
    v158 = v246;
    sub_10000F550(v155, v246);
    if ((*(v252 + 48))(v158, 1, v253) != 1)
    {
      v94 = v244;
      sub_1000068B4(v158, v244);
      v193 = v248;
      sub_100006850(v94, v248);
      v194 = v249;
      sub_100003C48(v249, v193);
      sub_100006918(v194);
      v52 = v243;
      sub_100006850(v94, v243);
      v85 = sub_10009D904();
      v195 = sub_10009E844();
      if (os_log_type_enabled(v85, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v275 = v197;
        *v196 = 136315138;
        sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
        v198 = sub_10009ED04();
        v200 = v199;
        sub_100006918(v52);
        v201 = sub_10002AD68(v198, v200, &v275);

        *(v196 + 4) = v201;
        _os_log_impl(&_mh_execute_header, v85, v195, "Returning widgetTileInfo for accessory %s", v196, 0xCu);
        sub_100015F44(v197);
      }

      else
      {
LABEL_119:

        sub_100006918(v52);
      }

      v192 = v94;
      goto LABEL_129;
    }

    sub_1000160CC(v158, &qword_1000C0C20, &qword_1000A1E30);
  }

  v159 = v155;
  v160 = [v155 hf_primaryService];
  if (v160)
  {
    v161 = v160;
    if (v131 && (v162 = [v160 uniqueIdentifier], sub_10009CF04(), v162, LOBYTE(v162) = sub_100024418(v154, v131), (*(v156 + 8))(v154, v270), (v162 & 1) == 0))
    {
    }

    else
    {
      v163 = [v161 uniqueIdentifier];
      sub_10009CF04();

      v164 = [v161 name];
      v165 = sub_10009E5C4();
      v167 = v166;

      v168 = v245;
      sub_10000F8B0(v161, v154, v165, v167, 0, 255, v245);

      v169 = *(v156 + 8);
      (v169)(v154, v270);
      v170 = [v159 hf_primaryService];
      if (v170)
      {

        v171 = v248;
        sub_100006850(v168, v248);
        v172 = v249;
        sub_100003C48(v249, v171);
        v173 = v172;
        v174 = v245;
        sub_100006918(v173);
        v175 = v242;
        sub_100006850(v174, v242);
        v176 = v159;
        v177 = sub_10009D904();
        v178 = sub_10009E844();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          LODWORD(v269) = v178;
          v180 = v179;
          v271 = swift_slowAlloc();
          v275 = v271;
          *v180 = 136315394;
          sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
          v267 = v169;
          v268 = v177;
          v181 = v270;
          v182 = sub_10009ED04();
          v184 = v183;
          sub_100006918(v175);
          v185 = sub_10002AD68(v182, v184, &v275);

          *(v180 + 4) = v185;
          *(v180 + 12) = 2080;
          v186 = [v176 uniqueIdentifier];
          sub_10009CF04();

          v187 = sub_10009ED04();
          v189 = v188;
          (v267)(v154, v181);
          v190 = sub_10002AD68(v187, v189, &v275);

          *(v180 + 14) = v190;
          v191 = v268;
          _os_log_impl(&_mh_execute_header, v268, v269, "Returning widgetTileInfo for primary service %s of accessory %s", v180, 0x16u);
          swift_arrayDestroy();

          v192 = v245;
        }

        else
        {

          sub_100006918(v175);
          v192 = v174;
        }

LABEL_129:
        sub_100006918(v192);
        return v273;
      }

      sub_100006918(v168);
    }
  }

  v224 = v159;
  v225 = sub_10009D904();
  v226 = sub_10009E844();

  if (os_log_type_enabled(v225, v226))
  {
    v227 = swift_slowAlloc();
    v228 = v156;
    v229 = swift_slowAlloc();
    v275 = v229;
    *v227 = 136315138;
    v230 = [v224 uniqueIdentifier];
    sub_10009CF04();

    sub_100015FA4(&qword_1000C0C90, &type metadata accessor for UUID);
    v231 = v154;
    v232 = v270;
    v233 = sub_10009ED04();
    v235 = v234;
    (*(v228 + 8))(v231, v232);
    v236 = sub_10002AD68(v233, v235, &v275);

    *(v227 + 4) = v236;
    _os_log_impl(&_mh_execute_header, v225, v226, "Returning no widgetTileInfo for accessory %s", v227, 0xCu);
    sub_100015F44(v229);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10000CB84(uint64_t a1)
{
  v3 = type metadata accessor for WidgetTileInfo();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = _swiftEmptyArrayStorage;
  sub_10001BC00(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_10009E994();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_100006850(*(a1 + 48) + *(v42 + 72) * v17, v41);
    (*v39)(v10, v22, v6);
    sub_100006918(v22);
    v45 = v12;
    v23 = v6;
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      sub_10001BC00(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    v12[2] = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100015F90(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_100015F90(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_10000CF24(uint64_t a1)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_10009EA14();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_10001BC00(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_10009E9C4();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_10009E994();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_100014A40(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uniqueIdentifier];
        sub_10009CF04();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_10001BC00(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_10009E9E4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_100003714(&qword_1000C0CA8, &qword_10009FA08);
          v14 = sub_10009E784();
          sub_10009EA54();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_100015F90(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_100015F90(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_100015F90(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D330(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_100003714(&qword_1000C0C70, &qword_10009FA00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v46 - v13;
  __chkstk_darwin(v12);
  v16 = v46 - v15;
  v17 = sub_10009CF14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + *(type metadata accessor for WidgetTileInfo() + 60);
  if (*(v22 + 8))
  {
    return sub_10009CEF4() & 1;
  }

  v48 = v14;
  v49 = v16;
  v50 = v11;
  v51 = v6;
  v24 = *v22;
  v25 = [*v22 uniqueIdentifier];
  sub_10009CF04();

  LOBYTE(v25) = sub_10009CEF4();
  v26 = *(v18 + 8);
  v47 = v21;
  v26(v21, v17);
  if ((v25 & 1) == 0)
  {
    v28 = v17;
    v46[0] = v26;
    v46[1] = v18 + 8;
    v29 = v49;
    (*(v18 + 16))(v49, v52, v17);
    v52 = v18;
    v30 = *(v18 + 56);
    v31 = 1;
    v30(v29, 0, 1, v28);
    v32 = [v24 accessory];
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      v35 = [v32 uniqueIdentifier];

      v36 = v48;
      sub_10009CF04();

      v30 = v34;
      v31 = 0;
      v37 = v50;
    }

    else
    {
      v37 = v50;
      v36 = v48;
    }

    v38 = v47;
    v30(v36, v31, 1, v28);
    v39 = *(v3 + 48);
    v40 = v51;
    sub_10001600C(v29, v51);
    sub_10001600C(v36, v40 + v39);
    v41 = v28;
    v42 = *(v52 + 48);
    if (v42(v40, 1, v28) == 1)
    {
      sub_1000160CC(v36, &qword_1000C0C78, &qword_1000A0390);
      v43 = v51;
      sub_1000160CC(v29, &qword_1000C0C78, &qword_1000A0390);
      if (v42(v43 + v39, 1, v28) == 1)
      {
        sub_1000160CC(v43, &qword_1000C0C78, &qword_1000A0390);
        v27 = 1;
        return v27 & 1;
      }
    }

    else
    {
      sub_10001600C(v40, v37);
      if (v42(v40 + v39, 1, v28) != 1)
      {
        (*(v52 + 32))(v38, v40 + v39, v28);
        sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
        v27 = sub_10009E534();
        v45 = v46[0];
        (v46[0])(v38, v41);
        sub_1000160CC(v36, &qword_1000C0C78, &qword_1000A0390);
        sub_1000160CC(v29, &qword_1000C0C78, &qword_1000A0390);
        v45(v50, v41);
        sub_1000160CC(v40, &qword_1000C0C78, &qword_1000A0390);
        return v27 & 1;
      }

      v44 = v37;
      sub_1000160CC(v36, &qword_1000C0C78, &qword_1000A0390);
      v43 = v51;
      sub_1000160CC(v29, &qword_1000C0C78, &qword_1000A0390);
      (v46[0])(v44, v28);
    }

    sub_1000160CC(v43, &qword_1000C0C70, &qword_10009FA00);
    v27 = 0;
    return v27 & 1;
  }

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10000D8A0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for WidgetTileInfo();
  v26 = *(v23 - 8);
  v5 = *(v26 + 64);
  v6 = __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_100006850(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10);
      sub_1000068B4(v10, v8);
      v18 = v25(v8);
      if (v3)
      {
        sub_100006918(v8);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_100006918(v8);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1000068B4(v8, v24);
    v20 = v21;
    v19 = 0;
    return (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v24;
        return (*(v26 + 56))(v20, v19, 1, v23);
      }

      v13 = *(a2 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10000DAC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10000DBE0(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = *(a1 + 16);
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
  result = sub_10009E774();
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v12, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_1000042AC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DE40(void *a1)
{
  v2 = sub_10009CF14();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  v4 = __chkstk_darwin(v2);
  v100 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v90 - v6;
  v8 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v97 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v90 - v12;
  v91 = a1;
  v14 = [a1 serviceGroups];
  v15 = sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v16 = sub_10009E6A4();

  v95 = v7;
  v96 = v15;
  if (v16 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = sub_10009EAE4();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v23 = sub_10009E6A4();

      if (v23 >> 62)
      {
        if (sub_10009EBA4())
        {
LABEL_14:

          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = sub_10009EAE4();
          }

          else
          {
            if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v26 = *(v23 + 32);
          }

          v27 = v26;

          v28 = [v20 uniqueIdentifier];
          v29 = v95;
          sub_10009CF04();

          v30 = [v20 name];
          v31 = sub_10009E5C4();
          v33 = v32;

          sub_10000F8B0(v27, v29, v31, v33, v20, 1, v13);

          (*(v98 + 8))(v29, v99);
          v34 = type metadata accessor for WidgetTileInfo();
          (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
          sub_1000160CC(v13, &qword_1000C0C20, &qword_1000A1E30);
          return 1;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v24 = type metadata accessor for WidgetTileInfo();
      (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
      sub_1000160CC(v13, &qword_1000C0C20, &qword_1000A1E30);
      ++v18;
      if (v21 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v35 = [v91 actionSets];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  v36 = sub_10009E6A4();

  if (v36 >> 62)
  {
    goto LABEL_35;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v97;
  if (!v37)
  {
LABEL_36:

    v44 = [v91 serviceGroups];
    v45 = sub_10009E6A4();

    v46 = v45;
    v101 = _swiftEmptyArrayStorage;
    if (v45 >> 62)
    {
      goto LABEL_68;
    }

    for (j = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v46 = v61)
    {
      v48 = 0;
      v94 = v46 & 0xFFFFFFFFFFFFFF8;
      v95 = v46 & 0xC000000000000001;
      v90 = v46;
      v92 = j;
      v93 = v46 + 32;
      while (1)
      {
        if (v95)
        {
          v46 = sub_10009EAE4();
          v50 = __OFADD__(v48, 1);
          v51 = (v48 + 1);
          if (v50)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v48 >= *(v94 + 16))
          {
            goto LABEL_67;
          }

          v46 = *(v93 + 8 * v48);
          v50 = __OFADD__(v48, 1);
          v51 = (v48 + 1);
          if (v50)
          {
            goto LABEL_66;
          }
        }

        v96 = v46;
        v97 = v51;
        v52 = [v46 services];
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        v53 = sub_10009E6A4();

        if (v53 >> 62)
        {
          break;
        }

        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v54)
        {
          goto LABEL_46;
        }

LABEL_39:
        v49 = _swiftEmptyArrayStorage;
LABEL_40:

        v46 = sub_1000615AC(v49);
        v48 = v97;
        if (v97 == v92)
        {
          v97 = v101;
          goto LABEL_70;
        }
      }

      v46 = sub_10009EBA4();
      v54 = v46;
      if (!v46)
      {
        goto LABEL_39;
      }

LABEL_46:
      v55 = 0;
      v49 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v46 = sub_10009EAE4();
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v46 = *(v53 + 8 * v55 + 32);
        }

        v56 = v46;
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        v58 = [v46 uniqueIdentifier];
        sub_10009CF04();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_100064F74(0, v49[2] + 1, 1, v49);
        }

        v60 = v49[2];
        v59 = v49[3];
        if (v60 >= v59 >> 1)
        {
          v49 = sub_100064F74(v59 > 1, v60 + 1, 1, v49);
        }

        v49[2] = v60 + 1;
        v46 = (*(v98 + 32))(v49 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v60, v100, v99);
        ++v55;
        if (v57 == v54)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v61 = v46;
      j = sub_10009EBA4();
    }

    v97 = _swiftEmptyArrayStorage;
LABEL_70:

    v62 = [v91 accessories];
    v96 = sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    v63 = sub_10009E6A4();

    if (v63 >> 62)
    {
      goto LABEL_102;
    }

    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
LABEL_103:
      v66 = _swiftEmptyArrayStorage;
LABEL_104:

      v82 = [v91 accessories];
      v83 = sub_10009E6A4();

      if (v83 >> 62)
      {
LABEL_119:
        v84 = sub_10009EBA4();
      }

      else
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (k = 0; v84 != k; ++k)
      {
        if ((v83 & 0xC000000000000001) != 0)
        {
          v86 = sub_10009EAE4();
        }

        else
        {
          if (k >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v86 = *(v83 + 8 * k + 32);
        }

        v87 = v86;
        if (__OFADD__(k, 1))
        {
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v88 = sub_10000ADD8(v86, 0, v97, v66);

        v89 = v88[2];

        if (v89)
        {

          return 1;
        }
      }

      return 0;
    }

LABEL_72:
    v65 = 0;
    v100 = (v63 & 0xC000000000000001);
    v66 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v100)
      {
        v67 = sub_10009EAE4();
      }

      else
      {
        if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v67 = *(v63 + 8 * v65 + 32);
      }

      v68 = v67;
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        v64 = sub_10009EBA4();
        if (!v64)
        {
          goto LABEL_103;
        }

        goto LABEL_72;
      }

      v70 = [v67 uniqueIdentifiersForBridgedAccessories];
      if (v70)
      {
        v71 = v70;
        v72 = sub_10009E6A4();

        v68 = v71;
      }

      else
      {
        v72 = _swiftEmptyArrayStorage;
      }

      v73 = v72[2];
      v74 = v66[2];
      v75 = v74 + v73;
      if (__OFADD__(v74, v73))
      {
        goto LABEL_98;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v75 <= v66[3] >> 1)
      {
        if (v72[2])
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v74 <= v75)
        {
          v77 = v74 + v73;
        }

        else
        {
          v77 = v74;
        }

        v66 = sub_100064F74(isUniquelyReferenced_nonNull_native, v77, 1, v66);
        if (v72[2])
        {
LABEL_91:
          v78 = v66[2];
          if ((v66[3] >> 1) - v78 < v73)
          {
            goto LABEL_100;
          }

          v79 = v66 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v78;
          swift_arrayInitWithCopy();

          if (v73)
          {
            v80 = v66[2];
            v50 = __OFADD__(v80, v73);
            v81 = v80 + v73;
            if (v50)
            {
              goto LABEL_101;
            }

            v66[2] = v81;
          }

          goto LABEL_74;
        }
      }

      if (v73)
      {
        goto LABEL_99;
      }

LABEL_74:
      ++v65;
      if (v69 == v64)
      {
        goto LABEL_104;
      }
    }
  }

LABEL_23:
  v39 = 0;
  while (1)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v40 = sub_10009EAE4();
    }

    else
    {
      if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v40 = *(v36 + 8 * v39 + 32);
    }

    v41 = v40;
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v37 = sub_10009EBA4();
      v38 = v97;
      if (!v37)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    sub_10000A450(v40, v38);

    v43 = type metadata accessor for WidgetTileInfo();
    if ((*(*(v43 - 8) + 48))(v38, 1, v43) != 1)
    {
      break;
    }

    sub_1000160CC(v38, &qword_1000C0C20, &qword_1000A1E30);
    ++v39;
    if (v42 == v37)
    {
      goto LABEL_36;
    }
  }

  sub_1000160CC(v38, &qword_1000C0C20, &qword_1000A1E30);
  return 1;
}

uint64_t sub_10000E9E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v120 = a3;
  v4 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v127 = &v105 - v6;
  v7 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v136 = &v105 - v9;
  v10 = sub_10009D5A4();
  v125 = *(v10 - 8);
  v126 = v10;
  v11 = *(v125 + 64);
  v12 = __chkstk_darwin(v10);
  v135 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v105 - v14;
  v119 = sub_10009D7F4();
  v117 = *(v119 - 8);
  v15 = *(v117 + 64);
  v16 = __chkstk_darwin(v119);
  v124 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v123 = &v105 - v19;
  v20 = __chkstk_darwin(v18);
  v116 = &v105 - v21;
  __chkstk_darwin(v20);
  v113 = &v105 - v22;
  v114 = sub_10009D804();
  v23 = *(v114 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v114);
  v118 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v115 = &v105 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v105 - v30;
  __chkstk_darwin(v29);
  v33 = &v105 - v32;
  v34 = sub_10009CF14();
  v133 = *(v34 - 8);
  v134 = v34;
  v35 = v133[8];
  v36 = __chkstk_darwin(v34);
  v132 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v131 = &v105 - v38;
  v39 = sub_10009D4F4();
  v40 = *(v39 - 8);
  v41 = v40;
  v121 = v39;
  v122 = v40;
  v42 = *(v40 + 64);
  v43 = __chkstk_darwin(v39);
  v106 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v105 - v45;
  v47 = sub_10009D3F4();
  v129 = *(v47 - 8);
  v130 = v47;
  v48 = *(v129 + 64);
  __chkstk_darwin(v47);
  v50 = &v105 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v46, a2, v39);
  sub_100015FA4(&qword_1000C0CA0, &type metadata accessor for StaticMatterDevice);
  sub_10009D404();
  v51 = v128;
  v52 = [v128 uniqueIdentifier];
  sub_10009CF04();

  v53 = [v51 uniqueIdentifier];
  sub_10009CF04();

  v112 = sub_10009D3C4();
  v111 = v54;
  v110 = sub_10009D3D4();
  v109 = v55;
  sub_10009D3E4();
  v56 = v113;
  sub_10009D7C4();
  v57 = *(v23 + 8);
  v58 = v114;
  v57(v33, v114);
  v108 = sub_10009D7E4();
  v107 = v59;
  v60 = *(v117 + 8);
  v61 = v119;
  v60(v56, v119);
  sub_10009D3E4();
  v62 = v116;
  sub_10009D7B4();
  v57(v31, v58);
  v117 = sub_10009D7E4();
  v113 = v63;
  v60(v62, v61);
  v64 = v115;
  sub_10009D3E4();
  v65 = v123;
  sub_10009D7C4();
  v57(v64, v58);
  sub_10009D7D4();
  v60(v65, v61);
  v66 = v118;
  sub_10009D3E4();
  v67 = v124;
  sub_10009D7B4();
  v57(v66, v58);
  v68 = v120;
  v69 = v135;
  sub_10009D7D4();
  v60(v67, v61);
  v70 = sub_10009D3B4();
  LOBYTE(v53) = sub_10009D3A4();
  v71 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v72 = *(*(v71 - 8) + 56);
  v72(v136, 1, 1, v71);
  v124 = sub_10001C968(_swiftEmptyArrayStorage);
  v73 = type metadata accessor for WidgetTileInfo();
  (*(v129 + 56))(v68 + v73[18], 1, 1, v130);
  v123 = v73[19];
  v72(&v123[v68], 1, 1, v71);
  v74 = v134;
  v75 = v133[2];
  v75(v68, v131, v134);
  v75(v68 + v73[5], v132, v74);
  v76 = (v68 + v73[6]);
  v77 = v111;
  *v76 = v112;
  v76[1] = v77;
  v78 = (v68 + v73[7]);
  v79 = v109;
  *v78 = v110;
  v78[1] = v79;
  v80 = (v68 + v73[8]);
  v81 = v107;
  *v80 = v108;
  v80[1] = v81;
  v82 = (v68 + v73[9]);
  v83 = v113;
  *v82 = v117;
  v82[1] = v83;
  v84 = v126;
  v85 = v125;
  v86 = *(v125 + 16);
  v86(v68 + v73[10], v137, v126);
  v87 = v69;
  v88 = v84;
  v86(v68 + v73[11], v87, v84);
  v89 = v122;
  *(v68 + v73[12]) = v70;
  *(v68 + v73[13]) = v53 & 1;
  v90 = v68 + v73[15];
  v91 = v128;
  *v90 = v128;
  *(v90 + 8) = 3;

  v92 = v91;
  v93 = v127;
  sub_10009E7D4();
  v94 = v93;
  v95 = v121;
  if ((*(v89 + 48))(v94, 1, v121) == 1)
  {
    sub_1000160CC(v94, &qword_1000C0C80, &qword_1000A1E10);
    LODWORD(v128) = 0;
  }

  else
  {
    v96 = v106;
    (*(v89 + 32))(v106, v94, v95);
    LODWORD(v128) = sub_10009D4B4();
    (*(v89 + 8))(v96, v95);
  }

  v97 = v73[20];
  v98 = v68 + v73[21];
  v99 = v73[23];
  v100 = (v68 + v73[22]);
  v101 = *(v85 + 8);
  v101(v135, v88);
  v101(v137, v88);
  v102 = v133[1];
  v103 = v134;
  v102(v132, v134);
  v102(v131, v103);
  (*(v129 + 8))(v50, v130);
  *(v68 + v73[14]) = v128 & 1;
  *(v68 + v73[16]) = v124;
  *(v68 + v73[17]) = 0;
  *(v68 + v97) = 2;
  *v98 = 0;
  *(v98 + 8) = 1;
  *v100 = 0;
  v100[1] = 0;
  *(v68 + v99) = 2;
  sub_100014CC8(v136, &v123[v68]);
  return (*(*(v73 - 1) + 56))(v68, 0, 1, v73);
}

uint64_t sub_10000F550@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_10009D4F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  if (sub_10009E894())
  {
    sub_10009E7D4();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v17, v12, v13);
      sub_10000E9E8(a1, v17, a2);
      return (*(v14 + 8))(v17, v13);
    }

    sub_1000160CC(v12, &qword_1000C0C80, &qword_1000A1E10);
  }

  v18 = [a1 hf_primaryService];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 uniqueIdentifier];
    sub_10009CF04();

    v21 = [a1 name];
    v22 = sub_10009E5C4();
    v24 = v23;

    sub_10000F8B0(v19, v8, v22, v24, 0, 255, a2);

    (*(v5 + 8))(v8, v4);
    v25 = type metadata accessor for WidgetTileInfo();
    return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
  }

  else
  {
    v27 = type metadata accessor for WidgetTileInfo();
    return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }
}

uint64_t sub_10000F8B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v126) = a6;
  v127 = a3;
  v128 = a4;
  v125 = a2;
  v119 = a7;
  v9 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v131 = &v108 - v11;
  v136 = sub_10009CF14();
  v12 = *(v136 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v136);
  v117 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v142 = &v108 - v17;
  __chkstk_darwin(v16);
  v141 = &v108 - v18;
  v19 = sub_10009D5A4();
  v133 = *(v19 - 8);
  v134 = v19;
  v20 = v133[8];
  v21 = __chkstk_darwin(v19);
  v132 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v138 = &v108 - v24;
  v25 = __chkstk_darwin(v23);
  v140 = &v108 - v26;
  __chkstk_darwin(v25);
  v139 = &v108 - v27;
  v28 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v108 - v33;
  v35 = sub_100003714(&qword_1000C0C38, &qword_10009F9F0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v108 - v37;
  v39 = sub_10009D1C4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v137 = &v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = [a1 associatedServiceType];
  v129 = v40;
  v130 = v39;
  if (v43)
  {
    v44 = v43;
    sub_10009E5C4();

    v39 = v130;
    sub_10009E614();
    v40 = v129;

    if ((*(v40 + 48))(v38, 1, v39) != 1)
    {
      (*(v40 + 32))(v137, v38, v39);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v40 + 56))(v38, 1, 1, v39);
  }

  sub_10009E904();
  if ((*(v40 + 48))(v38, 1, v39) != 1)
  {
    sub_1000160CC(v38, &qword_1000C0C38, &qword_10009F9F0);
  }

LABEL_7:
  v135 = v12;
  sub_10009E924();
  if (v45)
  {
    sub_10009D124();
    v46 = sub_10009D134();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v34, 1, v46) != 1)
    {
      v48 = sub_10009D114();
      v123 = v49;
      v124 = v48;
      (*(v47 + 8))(v34, v46);
      goto LABEL_12;
    }
  }

  else
  {
    v50 = sub_10009D134();
    (*(*(v50 - 8) + 56))(v34, 1, 1, v50);
  }

  sub_1000160CC(v34, &qword_1000C0C30, &qword_10009F9E8);
  v51 = sub_10009D1B4();
  v123 = v52;
  v124 = v51;
LABEL_12:
  v53 = v135;
  sub_10009E924();
  if (!v54)
  {
LABEL_15:
    v122 = sub_10009D194();
    v121 = v57;
    goto LABEL_17;
  }

  sub_10009D124();
  v55 = sub_10009D134();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v32, 1, v55) == 1)
  {
    sub_1000160CC(v32, &qword_1000C0C30, &qword_10009F9E8);
    goto LABEL_15;
  }

  v122 = sub_10009D104();
  v121 = v58;
  (*(v56 + 8))(v32, v55);
LABEL_17:
  sub_10001050C(&IconSymbol.offStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolDeactivatedRenderingMode.getter, v139);
  sub_10001050C(&IconSymbol.onStateSymbolRenderingMode.getter, &ServiceKind.iconSymbolActivatedRenderingMode.getter, v140);
  v59 = sub_10009D184();
  v60 = *(v53 + 16);
  v61 = v125;
  v62 = v136;
  v60(v141, v125, v136);
  v120 = v59;

  v63 = [a1 accessory];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 uniqueIdentifier];

    v66 = v117;
    sub_10009CF04();

    (*(v53 + 32))(v142, v66, v62);
  }

  else
  {
    v60(v142, v61, v62);
  }

  v67 = [a1 accessory];
  if (v67 && (v68 = v67, v69 = [v67 room], v68, v69))
  {
    v70 = [v69 name];

    v125 = sub_10009E5C4();
    v117 = v71;
  }

  else
  {
    v125 = 0;
    v117 = 0;
  }

  v72 = v134;
  v73 = v133[2];
  v73(v138, v139, v134);
  v73(v132, v140, v72);
  v74 = [a1 accessory];
  v118 = v60;
  if (v74)
  {
    v75 = v74;
    v116 = [v74 isReachable];
  }

  else
  {
    v116 = 0;
  }

  v76 = a5;
  v77 = v126;
  v78 = v126;
  if (v126 == 0xFF)
  {
    v79 = a1;
    v78 = 0;
    v76 = a1;
  }

  v109 = v76;
  v110 = v78;
  v80 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v81 = *(*(v80 - 8) + 56);
  v81(v131, 1, 1, v80);
  sub_10001612C(a5, v77);
  v126 = sub_10001C968(_swiftEmptyArrayStorage);
  v82 = type metadata accessor for WidgetTileInfo();
  v83 = v82[18];
  v84 = sub_10009D3F4();
  v85 = v119;
  (*(*(v84 - 8) + 56))(v119 + v83, 1, 1, v84);
  v115 = v82[19];
  v81(v85 + v115, 1, 1, v80);
  v86 = v82[21];
  v114 = v82[20];
  v112 = (v85 + v86);
  v87 = v82[22];
  v113 = v82[23];
  v111 = (v85 + v87);
  v88 = v136;
  v89 = v118;
  v118(v85, v141, v136);
  v89(v85 + v82[5], v142, v88);
  v90 = (v85 + v82[6]);
  v91 = v128;
  *v90 = v127;
  v90[1] = v91;
  v92 = (v85 + v82[7]);
  v93 = v117;
  *v92 = v125;
  v92[1] = v93;
  v94 = (v85 + v82[8]);
  v95 = v123;
  *v94 = v124;
  v94[1] = v95;
  v96 = (v85 + v82[9]);
  v97 = v121;
  *v96 = v122;
  v96[1] = v97;
  v98 = v134;
  v73((v85 + v82[10]), v138, v134);
  v99 = v132;
  v73((v85 + v82[11]), v132, v98);
  *(v85 + v82[12]) = v120;
  *(v85 + v82[13]) = v116;
  v100 = v85 + v82[15];
  v101 = v109;
  *v100 = v109;
  LOBYTE(v81) = v110;
  *(v100 + 8) = v110;
  v102 = v101;

  LOBYTE(v81) = sub_10001792C(v101, v81);

  v103 = v133[1];
  v103(v99, v98);
  v103(v138, v98);
  v104 = *(v135 + 8);
  v104(v142, v88);
  v104(v141, v88);
  v103(v140, v98);
  v103(v139, v98);
  (*(v129 + 8))(v137, v130);
  *(v85 + v82[14]) = v81 & 1;
  *(v85 + v82[16]) = v126;
  *(v85 + v82[17]) = 0;
  *(v85 + v114) = 2;
  v105 = v112;
  *v112 = 0;
  *(v105 + 8) = 1;
  v106 = v111;
  *v111 = 0;
  v106[1] = 0;
  *(v85 + v113) = 2;
  return sub_100014CC8(v131, v85 + v115);
}

uint64_t sub_10001050C@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_100003714(&qword_1000C0C30, &qword_10009F9E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_10009D5A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009E924();
  if (!v16)
  {
    return a2(v15);
  }

  v17 = a2;
  v18 = a1;
  sub_10009D124();
  v19 = sub_10009D134();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    v15 = sub_1000160CC(v9, &qword_1000C0C30, &qword_10009F9E8);
    a2 = v17;
    return a2(v15);
  }

  v18();
  (*(v20 + 8))(v9, v19);
  return (*(v11 + 32))(a3, v14, v10);
}

uint64_t sub_10001070C(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for WidgetTileInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_1000160CC(v6, &qword_1000C0C20, &qword_1000A1E30))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_100006850(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12);
      sub_100012614(v12, v6);
      sub_100006918(v12);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000108EC(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = sub_10009CF14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1000129B0(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100010B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v145 = &v140 - v9;
  v10 = type metadata accessor for WidgetTileInfo();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v159 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v165 = &v140 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v140 - v17;
  __chkstk_darwin(v16);
  v21 = &v140 - v20;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v142 = v8;
  v141 = 0;
  v23 = a1 + 56;
  v22 = *(a1 + 56);
  v24 = -1 << *(a1 + 32);
  v154 = ~v24;
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v169 = v25 & v22;
  v143 = (63 - v24) >> 6;
  v153 = (v19 + 7);
  v155 = v19;
  v152 = (v19 + 6);
  v170 = (a2 + 56);
  v26 = a1;

  v28 = 0;
  v171 = a2;
  v172 = v10;
  v151 = v26;
  for (i = v23; ; v23 = i)
  {
    v29 = v169;
    v30 = v28;
    if (v169)
    {
LABEL_15:
      v34 = (v29 - 1) & v29;
      v35 = v145;
      sub_100006850(*(v26 + 48) + v155[9] * (__clz(__rbit64(v29)) | (v30 << 6)), v145);
      v36 = 0;
      v32 = v30;
    }

    else
    {
      v31 = v143 <= v28 + 1 ? v28 + 1 : v143;
      v32 = v31 - 1;
      v33 = v28;
      while (1)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_177;
        }

        if (v30 >= v143)
        {
          break;
        }

        v29 = *(v23 + 8 * v30);
        ++v33;
        if (v29)
        {
          goto LABEL_15;
        }
      }

      v34 = 0;
      v36 = 1;
      v35 = v145;
    }

    v149 = *v153;
    v149(v35, v36, 1, v10);
    v173 = v26;
    v174 = v23;
    v175 = v154;
    v176 = v32;
    v161 = v34;
    v177 = v34;
    v148 = *v152;
    if (v148(v35, 1, v10) == 1)
    {
      sub_1000160CC(v35, &qword_1000C0C20, &qword_1000A1E30);
      sub_100015F9C();
      return v171;
    }

    v160 = v32;
    sub_1000068B4(v35, v21);
    v37 = v171;
    v38 = *(v171 + 40);
    sub_10009EDD4();
    v39 = sub_10009CF14();
    v40 = sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
    v147 = v39;
    v146 = v40;
    sub_10009E504();
    v41 = &v21[*(v10 + 24)];
    v43 = *v41;
    v42 = *(v41 + 1);
    sub_10009E624();
    v44 = &v21[*(v10 + 28)];
    v45 = *v44;
    v46 = *(v44 + 1);
    if (v46)
    {
      sub_10009EDF4(1u);
      sub_10009E624();
    }

    else
    {
      sub_10009EDF4(0);
    }

    v47 = &v21[*(v10 + 32)];
    v48 = *(v47 + 1);
    v168 = *v47;
    v167 = v48;
    sub_10009E624();
    v49 = &v21[*(v10 + 36)];
    v50 = *(v49 + 1);
    v164 = *v49;
    v163 = v50;
    sub_10009E624();
    v162 = *&v21[*(v10 + 48)];
    sub_10009E144();
    v51 = v21[*(v10 + 52)];
    LODWORD(v157) = v51;
    sub_10009EDF4(v51);
    v52 = &v21[*(v10 + 60)];
    v53 = *v52;
    v54 = v52[8];
    v166 = v45;
    v156 = v53;
    v158 = v54;
    if (v54 <= 1)
    {
      v55 = v54 ? 2 : 1;
    }

    else if (v54 == 2)
    {
      v55 = 3;
    }

    else
    {
      if (v54 != 3)
      {
        sub_10009EDE4(0);
        goto LABEL_30;
      }

      v55 = 4;
    }

    sub_10009EDE4(v55);
    sub_10009E8F4();
LABEL_30:
    v56 = sub_10009EE04();
    v57 = -1 << *(v37 + 32);
    v10 = v56 & ~v57;
    a2 = v10 >> 6;
    v30 = 1 << v10;
    if (((1 << v10) & v170[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_100006918(v21);
    v28 = v160;
    v169 = v161;
    v26 = v151;
    v10 = v172;
  }

  v58 = ~v57;
  v169 = v155[9];
  v59 = v158 == 4 && v156 == 0;
  v60 = v59;
  LODWORD(v144) = v60;
  while (1)
  {
    sub_100006850(*(v171 + 48) + v169 * v10, v18);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_79;
    }

    v61 = &v18[v172[6]];
    v62 = *v61 == v43 && *(v61 + 1) == v42;
    if (!v62 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_79;
    }

    v63 = &v18[v172[7]];
    v64 = *(v63 + 1);
    if (v64)
    {
      if (!v46)
      {
        goto LABEL_79;
      }

      v65 = *v63 == v166 && v64 == v46;
      if (!v65 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (v46)
    {
      goto LABEL_79;
    }

    v66 = &v18[v172[8]];
    v67 = *v66 == v168 && *(v66 + 1) == v167;
    if (!v67 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_79;
    }

    v68 = &v18[v172[9]];
    v69 = *v68 == v164 && *(v68 + 1) == v163;
    if (!v69 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_79;
    }

    v70 = *&v18[v172[12]];
    if ((sub_10009E134() & 1) == 0 || v157 != v18[v172[13]])
    {
      goto LABEL_79;
    }

    v71 = &v18[v172[15]];
    v72 = *v71;
    v73 = v71[8];
    if (v73 <= 1)
    {
      if (v73)
      {
        if (v158 == 1)
        {
          goto LABEL_78;
        }
      }

      else if (!v158)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v73 == 2)
    {
      break;
    }

    if (v73 != 3)
    {
      sub_100006918(v18);
      if (v144)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    }

    if (v158 == 3)
    {
      goto LABEL_78;
    }

LABEL_79:
    sub_100006918(v18);
LABEL_80:
    v10 = (v10 + 1) & v58;
    a2 = v10 >> 6;
    v30 = 1 << v10;
    if ((v170[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v158 != 2)
  {
    goto LABEL_79;
  }

LABEL_78:
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_100006918(v18);
LABEL_86:
  v75 = sub_100006918(v21);
  v76 = v171;
  v77 = *(v171 + 32);
  v144 = ((1 << v77) + 63) >> 6;
  v27 = 8 * v144;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v140 = &v140;
    __chkstk_darwin(v75);
    v79 = &v140 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v170, v78);
    v80 = *&v79[8 * a2] & ~v30;
    v81 = *(v76 + 16);
    v155 = v79;
    *&v79[8 * a2] = v80;
    v145 = v81 - 1;
LABEL_89:
    v30 = v151;
    v82 = v142;
    a2 = v172;
    v83 = i;
    v84 = v143;
    v10 = v160;
    v85 = v161;
LABEL_90:
    if (v85)
    {
      break;
    }

    if (v84 <= (v10 + 1))
    {
      v87 = (v10 + 1);
    }

    else
    {
      v87 = v84;
    }

    v88 = (v87 - 1);
    while (1)
    {
      v86 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v86 >= v84)
      {
        v90 = 0;
        v91 = 1;
        v10 = v88;
        goto LABEL_101;
      }

      v85 = *(v83 + 8 * v86);
      ++v10;
      if (v85)
      {
        v10 = v86;
        goto LABEL_100;
      }
    }

LABEL_177:
    __break(1u);
LABEL_178:
    v136 = v27;

    v137 = v136;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v138 = swift_slowAlloc();
      memcpy(v138, v170, v137);
      v139 = v141;
      v74 = sub_100012C58(v138, v144, v171, v10, &v173);

      if (v139)
      {
        goto LABEL_183;
      }

LABEL_174:
      sub_100015F9C();
      return v74;
    }

    v76 = v171;
  }

  v86 = v10;
LABEL_100:
  v89 = __clz(__rbit64(v85));
  v90 = (v85 - 1) & v85;
  sub_100006850(*(v30 + 48) + (v89 | (v86 << 6)) * v169, v82);
  v91 = 0;
LABEL_101:
  v149(v82, v91, 1, a2);
  v173 = v30;
  v174 = v83;
  v175 = v154;
  v176 = v10;
  v177 = v90;
  if (v148(v82, 1, a2) == 1)
  {
    sub_1000160CC(v82, &qword_1000C0C20, &qword_1000A1E30);
    v74 = sub_100013894(v155, v144, v145, v76);
    goto LABEL_174;
  }

  v92 = v82;
  v93 = v165;
  sub_1000068B4(v92, v165);
  v94 = *(v76 + 40);
  sub_10009EDD4();
  sub_10009E504();
  v95 = (v93 + *(a2 + 24));
  v96 = *v95;
  v97 = v95[1];
  sub_10009E624();
  v98 = (v93 + *(a2 + 28));
  v99 = v98[1];
  v167 = *v98;
  if (v99)
  {
    sub_10009EDF4(1u);
    sub_10009E624();
  }

  else
  {
    sub_10009EDF4(0);
  }

  v100 = v165;
  v101 = (v165 + *(a2 + 32));
  v102 = v101[1];
  v168 = *v101;
  sub_10009E624();
  v103 = (v100 + *(a2 + 36));
  v104 = v103[1];
  v166 = *v103;
  v164 = v104;
  sub_10009E624();
  v163 = *(v100 + *(a2 + 48));
  sub_10009E144();
  v105 = *(v100 + *(a2 + 52));
  v158 = v105;
  sub_10009EDF4(v105);
  v106 = v100 + *(a2 + 60);
  v107 = *v106;
  v108 = *(v106 + 8);
  v160 = v10;
  v161 = v90;
  v157 = v107;
  LODWORD(v162) = v108;
  if (v108 <= 1)
  {
    if (v108)
    {
      v109 = 2;
    }

    else
    {
      v109 = 1;
    }

    goto LABEL_114;
  }

  if (v108 == 2)
  {
    v109 = 3;
LABEL_114:
    sub_10009EDE4(v109);
    sub_10009E8F4();
    goto LABEL_115;
  }

  if (v108 == 3)
  {
    v109 = 4;
    goto LABEL_114;
  }

  sub_10009EDE4(0);
LABEL_115:
  v110 = sub_10009EE04();
  v111 = -1 << *(v76 + 32);
  v112 = v110 & ~v111;
  v113 = v112 >> 6;
  v114 = 1 << v112;
  if (((1 << v112) & v170[v112 >> 6]) == 0)
  {
LABEL_88:
    sub_100006918(v165);
    v76 = v171;
    goto LABEL_89;
  }

  v115 = ~v111;
  v117 = v162 == 4 && v157 == 0;
  LODWORD(v156) = v117;
  v118 = v159;
  while (2)
  {
    sub_100006850(*(v171 + 48) + v112 * v169, v118);
    if ((sub_10009CEF4() & 1) == 0 || ((v119 = (v118 + v172[6]), *v119 == v96) ? (v120 = v119[1] == v97) : (v120 = 0), !v120 && (sub_10009ED34() & 1) == 0))
    {
LABEL_164:
      sub_100006918(v118);
LABEL_165:
      v112 = (v112 + 1) & v115;
      v113 = v112 >> 6;
      v114 = 1 << v112;
      if ((v170[v112 >> 6] & (1 << v112)) == 0)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  v121 = (v118 + v172[7]);
  v122 = v121[1];
  if (v122)
  {
    v118 = v159;
    if (!v99)
    {
      goto LABEL_164;
    }

    v123 = *v121 == v167 && v122 == v99;
    if (!v123 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v118 = v159;
    if (v99)
    {
      goto LABEL_164;
    }
  }

  v124 = (v118 + v172[8]);
  v125 = *v124 == v168 && v124[1] == v102;
  if (!v125 && (sub_10009ED34() & 1) == 0)
  {
    goto LABEL_164;
  }

  v126 = (v118 + v172[9]);
  v127 = *v126 == v166 && v126[1] == v164;
  if (!v127 && (sub_10009ED34() & 1) == 0)
  {
    goto LABEL_164;
  }

  v128 = *(v118 + v172[12]);
  if ((sub_10009E134() & 1) == 0 || v158 != *(v118 + v172[13]))
  {
    goto LABEL_164;
  }

  v129 = v118 + v172[15];
  v130 = *v129;
  v131 = *(v129 + 8);
  if (v131 <= 1)
  {
    if (v131)
    {
      v132 = v162 == 1;
      goto LABEL_161;
    }

    v118 = v159;
    if (v162)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  if (v131 == 2)
  {
    v132 = v162 == 2;
    goto LABEL_161;
  }

  if (v131 != 3)
  {
    v118 = v159;
    sub_100006918(v159);
    if (v156)
    {
      goto LABEL_169;
    }

    goto LABEL_165;
  }

  v132 = v162 == 3;
LABEL_161:
  v118 = v159;
  if (!v132)
  {
    goto LABEL_164;
  }

LABEL_163:
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
    goto LABEL_164;
  }

  sub_100006918(v118);
LABEL_169:
  sub_100006918(v165);
  v133 = v155[v113];
  v155[v113] = v133 & ~v114;
  v59 = (v133 & v114) == 0;
  v76 = v171;
  a2 = v172;
  v30 = v151;
  v82 = v142;
  v83 = i;
  v84 = v143;
  v10 = v160;
  v85 = v161;
  if (v59)
  {
    goto LABEL_90;
  }

  v134 = v145 - 1;
  if (!__OFSUB__(v145, 1))
  {
    --v145;
    if (!v134)
    {

      v74 = &_swiftEmptySetSingleton;
      goto LABEL_174;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_183:

  __break(1u);
  return result;
}

void *sub_100011BB0(uint64_t a1, void *a2)
{
  v5 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v68 - v10);
  v12 = sub_10009CF14();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v88 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = (&v68 - v17);
  __chkstk_darwin(v16);
  v83 = (&v68 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v69 = v11;
  v71 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v82 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v90 = (v24 & v21);
  v75 = (63 - v23) >> 6;
  v89 = v19 + 16;
  v80 = (v19 + 48);
  v81 = (v19 + 56);
  v79 = (v19 + 32);
  v85 = a2 + 7;
  v70 = v19;
  v91 = (v19 + 8);

  v26 = 0;
  v72 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v90;
    v28 = v26;
    if (v90)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v69;
      (*(v70 + 16))(v69, *(a1 + 48) + *(v70 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v69;
    }

    v77 = *v81;
    v77(v32, v33, 1, v12);
    v92 = a1;
    v93 = v22;
    v94 = v82;
    v95 = v30;
    v96 = v2;
    v76 = *v80;
    if (v76(v32, 1, v12) == 1)
    {
      sub_1000160CC(v32, &qword_1000C0C78, &qword_1000A0390);
      goto LABEL_52;
    }

    v74 = *v79;
    v74(v83, v32, v12);
    v34 = a2[5];
    v73 = sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
    v35 = sub_10009E4F4();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) != 0)
    {
      break;
    }

    (*v91)(v83, v12);
LABEL_22:
    v26 = v30;
    v90 = v2;
  }

  v68 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = ~v36;
  v37 = *(v70 + 72);
  v86 = *(v70 + 16);
  v87 = v37;
  while (1)
  {
    v86(v18, a2[6] + v87 * v26, v12);
    v38 = sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
    v39 = sub_10009E534();
    v90 = *v91;
    v90(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v84;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v85[v26 >> 6]) == 0)
    {
      a1 = v72;
      v90(v83, v12);
      goto LABEL_22;
    }
  }

  v84 = v38;
  v40 = (v90)(v83, v12);
  v41 = *(a2 + 32);
  v68 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v68;
  a1 = v72;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v69 = &v68;
    __chkstk_darwin(v40);
    v43 = &v68 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v85, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v83 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v71;
    v47 = i;
    v48 = v75;
LABEL_26:
    v70 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v86(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v87, v12);
      v53 = 0;
LABEL_39:
      v77(v26, v53, 1, v12);
      v92 = a1;
      v93 = v47;
      v94 = v82;
      v95 = v30;
      v96 = v2;
      if (v76(v26, 1, v12) == 1)
      {
        sub_1000160CC(v26, &qword_1000C0C78, &qword_1000A0390);
        a2 = sub_100013E20(v83, v68, v70, a2);
        goto LABEL_52;
      }

      v74(v88, v26, v12);
      v54 = a2[5];
      v55 = sub_10009E4F4();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v85[v58 >> 6]) != 0)
      {
        v86(v18, v56[6] + v58 * v87, v12);
        v59 = sub_10009E534();
        v90(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v85[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v86(v18, v56[6] + v58 * v87, v12);
            v61 = sub_10009E534();
            v90(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v90(v88, v12);
        v62 = v83[v28];
        v83[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
        if ((v62 & v22) != 0)
        {
          v46 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v90(v88, v12);
        a2 = v56;
        a1 = v72;
        v26 = v71;
        v47 = i;
        v48 = v75;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v83 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v83;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v85, v65);
  a2 = sub_1000133C0(v67, v68, v83, v26, &v92);

LABEL_52:
  sub_100015F9C();
  return a2;
}

uint64_t sub_100012614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for WidgetTileInfo();
  v55 = *(v4 - 1);
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_10009EDD4();
  sub_10001ADCC();
  v10 = sub_10009EE04();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v55 + 56))(v54, 1, 1, v4);
  }

  v13 = ~v11;
  v14 = *(v55 + 72);
  while (1)
  {
    sub_100006850(*(v8 + 48) + v14 * v12, v7);
    if ((sub_10009CEF4() & 1) == 0)
    {
      goto LABEL_43;
    }

    v15 = v4[6];
    v16 = *&v7[v15];
    v17 = *&v7[v15 + 8];
    v18 = (a1 + v15);
    v19 = v16 == *v18 && v17 == v18[1];
    if (!v19 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v20 = v4[7];
    v21 = &v7[v20];
    v22 = *&v7[v20 + 8];
    v23 = (a1 + v20);
    v24 = v23[1];
    if (v22)
    {
      if (!v24)
      {
        goto LABEL_43;
      }

      v25 = *v21 == *v23 && v22 == v24;
      if (!v25 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v24)
    {
      goto LABEL_43;
    }

    v26 = v4[8];
    v27 = *&v7[v26];
    v28 = *&v7[v26 + 8];
    v29 = (a1 + v26);
    v30 = v27 == *v29 && v28 == v29[1];
    if (!v30 && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v31 = v4[9];
    v32 = *&v7[v31];
    v33 = *&v7[v31 + 8];
    v34 = (a1 + v31);
    if ((v32 != *v34 || v33 != v34[1]) && (sub_10009ED34() & 1) == 0)
    {
      goto LABEL_43;
    }

    v35 = v4[12];
    v36 = *&v7[v35];
    v37 = *(a1 + v35);
    if ((sub_10009E134() & 1) == 0 || v7[v4[13]] != *(a1 + v4[13]))
    {
      goto LABEL_43;
    }

    v38 = v4[15];
    v39 = *&v7[v38];
    v40 = v7[v38 + 8];
    v41 = (a1 + v38);
    v42 = *v41;
    v43 = *(v41 + 8);
    if (v40 <= 1)
    {
      if (v40)
      {
        if (v43 == 1)
        {
          goto LABEL_42;
        }
      }

      else if (!*(v41 + 8))
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v40 == 2)
    {
      if (v43 != 2)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v40 == 3)
    {
      break;
    }

    v52 = *v41;
    sub_100006918(v7);
    if (v43 == 4 && !v52)
    {
      goto LABEL_47;
    }

LABEL_44:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v55 + 56))(v54, 1, 1, v4);
    }
  }

  if (v43 != 3)
  {
    goto LABEL_43;
  }

LABEL_42:
  v52 = *v41;
  sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
  if ((sub_10009E8E4() & 1) == 0)
  {
LABEL_43:
    sub_100006918(v7);
    goto LABEL_44;
  }

  sub_100006918(v7);
LABEL_47:
  v45 = v53;
  v46 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v45;
  v56 = *v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100005FB0();
    v48 = v56;
  }

  v49 = v54;
  sub_1000068B4(*(v48 + 48) + v14 * v12, v54);
  sub_100014148(v12);
  v50 = v55;
  *v45 = v56;
  return (*(v50 + 56))(v49, 0, 1, v4);
}

uint64_t sub_1000129B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
  v35 = a1;
  v13 = sub_10009E4F4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
      v22 = sub_10009E534();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000062D4();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10001453C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

char *sub_100012C58(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v86 = a5;
  v75[0] = a2;
  v8 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v81 = v75 - v10;
  v11 = type metadata accessor for WidgetTileInfo();
  v12 = *(*(v11 - 1) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = v75 - v17;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20) & ((-1 << a4) - 1);
  v77 = a1;
  *(a1 + v20) = v21;
  v22 = v19 - 1;
  v80 = (v23 + 56);
  v82 = v23;
  v79 = (v23 + 48);
  v97 = a3;
  v96 = a3 + 56;
LABEL_2:
  v76 = v22;
LABEL_4:
  while (2)
  {
    v25 = *v86;
    v24 = v86[1];
    v27 = v86[2];
    v26 = v86[3];
    v28 = v86[4];
    v95 = v27;
    if (v28)
    {
      v29 = v26;
LABEL_13:
      v33 = (v28 - 1) & v28;
      v34 = v81;
      sub_100006850(*(v25 + 48) + *(v82 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v81);
      v35 = 0;
      v32 = v29;
LABEL_14:
      (*v80)(v34, v35, 1, v11);
      v36 = v86;
      *v86 = v25;
      v36[1] = v24;
      v36[2] = v95;
      v36[3] = v32;
      v36[4] = v33;
      if ((*v79)(v34, 1, v11) == 1)
      {
        sub_1000160CC(v34, &qword_1000C0C20, &qword_1000A1E30);
        v74 = v97;

        return sub_100013894(v77, v75[0], v76, v74);
      }

      sub_1000068B4(v34, v18);
      v37 = *(v97 + 40);
      sub_10009EDD4();
      sub_10009CF14();
      sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
      sub_10009E504();
      v38 = &v18[v11[6]];
      v39 = *v38;
      v94 = *(v38 + 1);
      v95 = v39;
      sub_10009E624();
      v40 = &v18[v11[7]];
      v41 = *v40;
      v42 = *(v40 + 1);
      if (v42)
      {
        sub_10009EDF4(1u);
        sub_10009E624();
      }

      else
      {
        sub_10009EDF4(0);
      }

      v43 = &v18[v11[8]];
      v44 = *v43;
      v91 = *(v43 + 1);
      v92 = v44;
      sub_10009E624();
      v45 = &v18[v11[9]];
      v46 = *v45;
      v88 = *(v45 + 1);
      v89 = v46;
      sub_10009E624();
      v87 = *&v18[v11[12]];
      sub_10009E144();
      v84 = v18[v11[13]];
      sub_10009EDF4(v84);
      v47 = &v18[v11[15]];
      v48 = *v47;
      v49 = v47[8];
      v83 = v48;
      v85 = v49;
      if (v49 <= 1)
      {
        if (v49)
        {
          v50 = 2;
        }

        else
        {
          v50 = 1;
        }
      }

      else if (v49 == 2)
      {
        v50 = 3;
      }

      else
      {
        if (v49 != 3)
        {
          sub_10009EDE4(0);
LABEL_28:
          v51 = sub_10009EE04();
          v52 = -1 << *(v97 + 32);
          v53 = v51 & ~v52;
          v54 = v53 >> 6;
          v55 = 1 << v53;
          if (((1 << v53) & *(v96 + 8 * (v53 >> 6))) == 0)
          {
LABEL_3:
            result = sub_100006918(v18);
            continue;
          }

          v93 = v42;
          v90 = v41;
          v56 = ~v52;
          v57 = *(v82 + 72);
          v59 = v85 == 4 && v83 == 0;
          v78 = v59;
          while (1)
          {
            sub_100006850(*(v97 + 48) + v57 * v53, v15);
            if ((sub_10009CEF4() & 1) == 0)
            {
              goto LABEL_77;
            }

            v60 = &v15[v11[6]];
            v61 = *v60 == v95 && *(v60 + 1) == v94;
            if (!v61 && (sub_10009ED34() & 1) == 0)
            {
              goto LABEL_77;
            }

            v62 = &v15[v11[7]];
            v63 = *(v62 + 1);
            if (v63)
            {
              if (!v93)
              {
                goto LABEL_77;
              }

              v64 = *v62 == v90 && v63 == v93;
              if (!v64 && (sub_10009ED34() & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            else if (v93)
            {
              goto LABEL_77;
            }

            v65 = &v15[v11[8]];
            v66 = *v65 == v92 && *(v65 + 1) == v91;
            if (!v66 && (sub_10009ED34() & 1) == 0)
            {
              goto LABEL_77;
            }

            v67 = &v15[v11[9]];
            v68 = *v67 == v89 && *(v67 + 1) == v88;
            if (!v68 && (sub_10009ED34() & 1) == 0)
            {
              goto LABEL_77;
            }

            v69 = *&v15[v11[12]];
            if ((sub_10009E134() & 1) == 0 || v84 != v15[v11[13]])
            {
              goto LABEL_77;
            }

            v70 = &v15[v11[15]];
            v71 = *v70;
            v72 = v70[8];
            if (v72 <= 1)
            {
              if (v72)
              {
                if (v85 == 1)
                {
                  goto LABEL_76;
                }
              }

              else if (!v85)
              {
                goto LABEL_76;
              }

LABEL_77:
              sub_100006918(v15);
              goto LABEL_78;
            }

            if (v72 == 2)
            {
              break;
            }

            if (v72 == 3)
            {
              if (v85 != 3)
              {
                goto LABEL_77;
              }

LABEL_76:
              sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
              if (sub_10009E8E4())
              {
                sub_100006918(v15);
LABEL_82:
                result = sub_100006918(v18);
                v73 = v77[v54];
                v77[v54] = v73 & ~v55;
                if ((v73 & v55) != 0)
                {
                  v22 = v76 - 1;
                  if (__OFSUB__(v76, 1))
                  {
                    goto LABEL_88;
                  }

                  if (v76 == 1)
                  {
                    return &_swiftEmptySetSingleton;
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }

              goto LABEL_77;
            }

            sub_100006918(v15);
            if (v78)
            {
              goto LABEL_82;
            }

LABEL_78:
            v53 = (v53 + 1) & v56;
            v54 = v53 >> 6;
            v55 = 1 << v53;
            if ((*(v96 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v85 != 2)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v50 = 4;
      }

      sub_10009EDE4(v50);
      sub_10009E8F4();
      goto LABEL_28;
    }

    break;
  }

  v30 = (v27 + 64) >> 6;
  if (v30 <= v26 + 1)
  {
    v31 = v26 + 1;
  }

  else
  {
    v31 = (v27 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      v33 = 0;
      v35 = 1;
      v34 = v81;
      goto LABEL_14;
    }

    v28 = *(v24 + 8 * v29);
    ++v26;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void *sub_1000133C0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_10009CF14();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000160CC(v12, &qword_1000C0C78, &qword_1000A0390);
          v48 = v64;

          return sub_100013E20(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
        v38 = sub_10009E4F4();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_100015FA4(&qword_1000C0BE8, &type metadata accessor for UUID);
        v46 = sub_10009E534();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

char *sub_100013894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetTileInfo();
  v43 = *(v8 - 1);
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003714(&qword_1000C0B58, &qword_10009F950);
  result = sub_10009EAA4();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v41 = result + 56;
  v42 = a4;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v44 = (v14 - 1) & v14;
LABEL_16:
    v19 = *(a4 + 48);
    v45 = *(v43 + 72);
    sub_100006850(v19 + v45 * (v16 | (v15 << 6)), v11);
    v20 = *(v12 + 5);
    sub_10009EDD4();
    sub_10009CF14();
    sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
    sub_10009E504();
    v21 = &v11[v8[6]];
    v22 = *v21;
    v23 = *(v21 + 1);
    sub_10009E624();
    v24 = &v11[v8[7]];
    if (*(v24 + 1))
    {
      v25 = *v24;
      sub_10009EDF4(1u);
      sub_10009E624();
    }

    else
    {
      sub_10009EDF4(0);
    }

    v26 = &v11[v8[8]];
    v27 = *v26;
    v28 = *(v26 + 1);
    sub_10009E624();
    v29 = &v11[v8[9]];
    v30 = *v29;
    v31 = *(v29 + 1);
    sub_10009E624();
    v32 = *&v11[v8[12]];
    sub_10009E144();
    sub_10009EDF4(v11[v8[13]]);
    v33 = &v11[v8[15]];
    v34 = *v33;
    v35 = v33[8];
    if (v35 <= 1)
    {
      a4 = v42;
      if (v35)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }
    }

    else
    {
      a4 = v42;
      if (v35 == 2)
      {
        v36 = 3;
      }

      else
      {
        if (v35 != 3)
        {
          sub_10009EDE4(0);
          goto LABEL_29;
        }

        v36 = 4;
      }
    }

    sub_10009EDE4(v36);
    sub_10009E8F4();
LABEL_29:
    sub_10009EE04();
    v37 = -1 << v12[32];
    v38 = v41;
    v39 = sub_10009E9B4();
    *&v38[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
    result = sub_1000068B4(v11, *(v12 + 6) + v39 * v45);
    ++*(v12 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_34;
    }

    v14 = v44;
    if (!a3)
    {
LABEL_31:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_31;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v44 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100013C2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003714(&qword_1000C0B70, &qword_10009F958);
  result = sub_10009EAA4();
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
    result = sub_10009E8D4(v16);
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

uint64_t sub_100013E20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_10009CF14();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003714(&qword_1000C0BE0, "tz");
  result = sub_10009EAA4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
    result = sub_10009E4F4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}