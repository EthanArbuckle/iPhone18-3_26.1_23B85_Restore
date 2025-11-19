uint64_t ElectricVehicleSimulator.Configuration.deviceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ElectricVehicleSimulator.Configuration.guidanceToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleSimulator.Configuration.init(guidanceToken:deviceID:seed:chargingProbability:minSessionsPerDay:maxSessionsPerDay:minChargingDurationMinutes:maxChargingDurationMinutes:allowCrossDaySessions:minChargingPowerWatts:maxChargingPowerWatts:batteryCapacityWh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a10;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a14;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  v16 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v17 = sub_238278BC0();
  v18 = *(*(v17 - 8) + 32);

  return v18(a9 + v16, a1, v17);
}

uint64_t _s9EnergyKit24ElectricVehicleSimulatorC16DailyAggregationV4date10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278B70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricVehicleSimulator.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_23821AC2C(a1, v5 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v6 = *(a1 + 16);
  sub_23821AC94(a1, type metadata accessor for ElectricVehicleSimulator.Configuration);
  *(v5 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v6;
  return v5;
}

uint64_t ElectricVehicleSimulator.init(configuration:)(uint64_t a1)
{
  sub_23821AC2C(a1, v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v3 = *(a1 + 16);
  sub_23821AC94(a1, type metadata accessor for ElectricVehicleSimulator.Configuration);
  *(v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v3;
  return v1;
}

void *sub_238216E10()
{
  v55 = sub_238278C50();
  v1 = *(v55 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_238278B70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = sub_238278C60();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v58 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  sub_238278B50();
  v19 = v18;
  sub_238278B50();
  if (v19 <= -1.0)
  {
    goto LABEL_33;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v20 <= -1.0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v20 >= 1.84467441e19)
  {
    goto LABEL_37;
  }

  *(v56 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v20 + v19 + *(v56 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 16);
  sub_238278BD0();
  sub_238278BD0();
  v53 = sub_23821B4AC(&qword_27DEF68D8, MEMORY[0x277CC9578]);
  v21 = sub_238278FD0();
  v44 = v9;
  if ((v21 & 1) == 0)
  {
    v51 = *MEMORY[0x277CC9968];
    v49 = (v1 + 8);
    v50 = (v1 + 104);
    v52 = (v9 + 8);
    v47 = (v9 + 32);
    v48 = (v9 + 48);
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = sub_238217514(v14);
      if (v0)
      {
        v43 = *v52;
        (*v52)(v57, v8);
        v43(v14, v8);
        (*(v45 + 8))(v58, v46);
      }

      v24 = v23;
      v25 = v7;
      v26 = *(v23 + 16);
      v27 = v22[2];
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= v22[3] >> 1)
      {
        if (*(v24 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v37 = v27 + v26;
        }

        else
        {
          v37 = v27;
        }

        v22 = sub_23821937C(isUniquelyReferenced_nonNull_native, v37, 1, v22, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
        if (*(v24 + 16))
        {
LABEL_15:
          v30 = (v22[3] >> 1) - v22[2];
          v31 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
          if (v30 < v26)
          {
            goto LABEL_31;
          }

          v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v33 = *(v31 + 72);
          swift_arrayInitWithCopy();

          if (v26)
          {
            v34 = v22[2];
            v35 = __OFADD__(v34, v26);
            v36 = v34 + v26;
            if (v35)
            {
              goto LABEL_32;
            }

            v22[2] = v36;
          }

          goto LABEL_24;
        }
      }

      if (v26)
      {
        goto LABEL_30;
      }

LABEL_24:
      v39 = v54;
      v38 = v55;
      (*v50)(v54, v51, v55);
      sub_238278C30();
      v40 = v39;
      v7 = v25;
      (*v49)(v40, v38);
      if ((*v48)(v25, 1, v8) == 1)
      {
        goto LABEL_38;
      }

      (*v52)(v14, v8);

      (*v47)(v14, v25, v8);
      if (sub_238278FD0())
      {
        goto LABEL_26;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_26:
  v59 = v22;

  sub_238219558(&v59);
  if (!v0)
  {
    v41 = *(v44 + 8);
    v41(v57, v8);
    v41(v14, v8);
    (*(v45 + 8))(v58, v46);

    return v59;
  }

LABEL_39:

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

size_t sub_238217514(uint64_t a1)
{
  v4 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v49 = *(Event - 8);
  v50 = Event;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](Event);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v52 = a1;
  v53 = v1;
  v15 = v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config;
  v16 = *(v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 16);
  result = sub_238278B50();
  v19 = v18 / 86400.0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (v19 <= -1.0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v20 = 1103515245 * (v16 + v19) + 12345;
  if (vcvtd_n_f64_u64(v20, 0x40uLL) < *(v15 + 24))
  {
    v21 = *(v15 + 32);
    v22 = *(v15 + 40);
    if (v22 >= v21)
    {
      v23 = __OFSUB__(v22, v21);
      v24 = v22 - v21;
      if (!v23)
      {
        v23 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (!v23)
        {
          v26 = 1103515245 * v20 + 12345;
          v27 = vcvtd_n_f64_u64(v26, 0x40uLL) * v25 + v21;
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v27 > -9.22337204e18)
            {
              if (v27 < 9.22337204e18)
              {
                v54 = 1103515245 * v26 + 12345;
                v28 = vcvtd_n_f64_u64(v54, 0x40uLL) * 71.0 + 20.0;
                if (v28 != INFINITY)
                {
                  if (v28 > -9.22337204e18)
                  {
                    if (v28 < 9.22337204e18)
                    {
                      v48 = v14;
                      v29 = v27;
                      if ((v27 & 0x8000000000000000) == 0)
                      {
                        if (v29)
                        {
                          v46 = v12;
                          v47 = v7;
                          v30 = 0;
                          v51 = v28;
                          v31 = MEMORY[0x277D84F90];
                          while (1)
                          {
                            if (v30 >= v29)
                            {
                              __break(1u);
LABEL_42:
                              __break(1u);
LABEL_43:
                              __break(1u);
LABEL_44:
                              __break(1u);
LABEL_45:
                              __break(1u);
LABEL_46:
                              __break(1u);
LABEL_47:
                              __break(1u);
                              goto LABEL_48;
                            }

                            v32 = v30 + 1;
                            if (__OFADD__(v30, 1))
                            {
                              goto LABEL_42;
                            }

                            result = sub_23821C254(v52, &v54, v51);
                            if (v2)
                            {

                              return v31;
                            }

                            v33 = result;
                            v34 = *(result + 16);
                            v35 = v31[2];
                            v36 = v35 + v34;
                            if (__OFADD__(v35, v34))
                            {
                              goto LABEL_43;
                            }

                            result = swift_isUniquelyReferenced_nonNull_native();
                            if ((result & 1) != 0 && v36 <= v31[3] >> 1)
                            {
                              if (*(v33 + 16))
                              {
                                goto LABEL_24;
                              }
                            }

                            else
                            {
                              if (v35 <= v36)
                              {
                                v41 = v35 + v34;
                              }

                              else
                              {
                                v41 = v35;
                              }

                              result = sub_23821937C(result, v41, 1, v31, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
                              v31 = result;
                              if (*(v33 + 16))
                              {
LABEL_24:
                                if ((v31[3] >> 1) - v31[2] < v34)
                                {
                                  goto LABEL_45;
                                }

                                v37 = (*(v49 + 80) + 32) & ~*(v49 + 80);
                                v38 = *(v49 + 72);
                                swift_arrayInitWithCopy();

                                if (v34)
                                {
                                  v39 = v31[2];
                                  v23 = __OFADD__(v39, v34);
                                  v40 = v39 + v34;
                                  if (v23)
                                  {
                                    goto LABEL_46;
                                  }

                                  v31[2] = v40;
                                }

                                goto LABEL_33;
                              }
                            }

                            if (v34)
                            {
                              goto LABEL_44;
                            }

LABEL_33:
                            v42 = *(v33 + 16);
                            if (v42)
                            {
                              v43 = v46;
                              sub_23821AC2C(v33 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * (v42 - 1), v46, type metadata accessor for ElectricVehicleLoadEvent);

                              v44 = v48;
                              sub_23821EB58(v43, v48, type metadata accessor for ElectricVehicleLoadEvent);
                              v45 = v47;
                              sub_23821AC2C(v44 + *(v50 + 28), v47, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
                              sub_23821AC94(v44, type metadata accessor for ElectricVehicleLoadEvent);
                              v51 = *v45;
                              result = sub_23821AC94(v45, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
                              v30 = v32;
                            }

                            else
                            {

                              ++v30;
                            }

                            if (v32 == v29)
                            {
                              return v31;
                            }
                          }
                        }

                        return MEMORY[0x277D84F90];
                      }

LABEL_59:
                      __break(1u);
                      return result;
                    }

LABEL_58:
                    __break(1u);
                    goto LABEL_59;
                  }

LABEL_57:
                  __break(1u);
                  goto LABEL_58;
                }

LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_238217A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v97 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v80 = *(v104 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = v75 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v90 = *(v102 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = v75 - v7;
  v100 = sub_238278BC0();
  v91 = *(v100 - 8);
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v100);
  v99 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = v75 - v11;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v92 = *(Event - 8);
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](Event);
  v81 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238278C50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v75 - v21;
  v23 = sub_238278B70();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v88 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v75 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v75 - v31;
  v87 = sub_238278C60();
  v86 = *(v87 - 8);
  v33 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v35 = v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  sub_238278BD0();
  (*(v15 + 104))(v18, *MEMORY[0x277CC9968], v14);
  v85 = v35;
  sub_238278C30();
  (*(v15 + 8))(v18, v14);
  result = (*(v24 + 48))(v22, 1, v23);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v37 = *(v24 + 32);
  v83 = v24 + 32;
  v82 = v37;
  v38 = (v37)(v30, v22, v23);
  MEMORY[0x28223BE20](v38);
  v75[-2] = v32;
  v75[-1] = v30;
  v84 = v30;
  v39 = v96;

  v40 = sub_23821841C(sub_238219600, &v75[-4], v39);
  v105 = MEMORY[0x277D84FA0];
  v41 = *(v40 + 16);
  if (v41)
  {
    v76 = v32;
    v77 = v24;
    v78 = v23;
    v79 = a3;
    v42 = *(Event + 28);
    v97 = *(Event + 24);
    v43 = v81;
    v44 = &v81[v42];
    v45 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v46 = v45[6];
    Event = v45[5];
    v96 = v46;
    v47 = objc_opt_self();
    v48 = 0;
    v93 = v45[7];
    v94 = v47;
    v49 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v75[1] = v40;
    v50 = v40 + v49;
    v89 = *(v92 + 72);
    v92 = v91 + 16;
    v91 += 8;
    v90 += 8;
    v51 = (v80 + 8);
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    while (1)
    {
      sub_23821AC2C(v50, v43, type metadata accessor for ElectricVehicleLoadEvent);
      v57 = v99;
      v56 = v100;
      (*v92)(v99, v43 + v97, v100);
      v58 = v98;
      sub_23821A94C(v98, v57);
      (*v91)(v58, v56);
      if (qword_27DEF68A0 != -1)
      {
        swift_once();
      }

      v60 = v101;
      v59 = v102;
      sub_2382789E0();
      sub_2382789D0();
      v62 = v61;
      (*v90)(v60, v59);
      v63 = [v94 milliwatts];
      v65 = v103;
      v64 = v104;
      sub_2382789E0();

      sub_2382789D0();
      v67 = v66;
      (*v51)(v65, v64);
      LOBYTE(v63) = v44[v93];
      result = sub_23821AC94(v43, type metadata accessor for ElectricVehicleLoadEvent);
      if (v63)
      {
        v54 = v54 + v62;
        if (v67 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v55 = v55 + v62;
        if (v67 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v53 = v53 + v67;
      if (v52 <= v67)
      {
        v52 = v67;
      }

LABEL_4:
      v50 += v89;
      if (!--v41)
      {

        a3 = v79;
        v23 = v78;
        v24 = v77;
        v32 = v76;
        goto LABEL_17;
      }
    }
  }

  v48 = 0;
  v52 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
LABEL_17:
  result = (*(v86 + 8))(v85, v87);
  v69 = *(v105 + 16);
  v70 = v88;
  if ((v69 * 90) >> 64 != (90 * v69) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  (*(v24 + 16))(v88, v32, v23);

  v71 = v84;
  if (v48 < 1)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v53 / v48;
  }

  v82(a3, v70, v23);
  v73 = type metadata accessor for ElectricVehicleSimulator.DailyAggregation(0);
  *(a3 + v73[5]) = v55;
  *(a3 + v73[6]) = v54;
  *(a3 + v73[7]) = v69;
  *(a3 + v73[8]) = v72;
  *(a3 + v73[9]) = v52;
  *(a3 + v73[10]) = 90 * v69;
  v74 = *(v24 + 8);
  v74(v71, v23);
  return (v74)(v32, v23);
}

uint64_t sub_23821841C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v26 = *(Event - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](Event - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_23821AC2C(a3 + v16 + v17 * v14, v13, type metadata accessor for ElectricVehicleLoadEvent);
      v18 = a1(v13);
      if (v3)
      {
        sub_23821AC94(v13, type metadata accessor for ElectricVehicleLoadEvent);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_23821EB58(v13, v25, type metadata accessor for ElectricVehicleLoadEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23821C048(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23821C048(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_23821EB58(v25, v15 + v16 + v21 * v17, type metadata accessor for ElectricVehicleLoadEvent);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_23821AC94(v13, type metadata accessor for ElectricVehicleLoadEvent);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_2382186A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a2;
  v88 = a3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v82 = *(v103 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v78 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v81 = *(v101 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v78 - v7;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v80 = *(Event - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](Event);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238278C50();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68F0, &qword_23827A328);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v96 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  v87 = sub_238278B70();
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  v23 = MEMORY[0x28223BE20](v87);
  v85 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v92 = &v78 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v78 - v27;
  v84 = sub_238278C60();
  v83 = *(v84 - 8);
  v29 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  v32 = v12[13];
  LODWORD(v95) = *MEMORY[0x277CC9980];
  v94 = v32;
  v32(v15);
  v99 = a1;
  sub_238278BE0();
  v33 = v12[1];
  v97 = v12 + 1;
  v98 = v11;
  v93 = v33;
  v33(v15, v11);
  v34 = sub_238278AA0();
  v35 = *(v34 - 8);
  v90 = *(v35 + 48);
  result = v90(v21, 1, v34);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_238278A90();
  v91 = v28;
  v37 = *(v35 + 8);
  v37(v21, v34);
  v38 = v98;
  v94(v15, v95, v98);
  v39 = v96;
  sub_238278BE0();
  v93(v15, v38);
  result = v90(v39, 1, v34);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v40 = v31;
  v41 = v92;
  sub_238278A70();
  v42 = (v37)(v39, v34);
  MEMORY[0x28223BE20](v42);
  *(&v78 - 2) = v91;
  *(&v78 - 1) = v41;
  v43 = v89;

  v44 = sub_23821841C(sub_23821EC28, (&v78 - 4), v43);
  v45 = *(v44 + 16);
  if (v45)
  {
    v90 = v31;
    v46 = &v10[*(Event + 28)];
    v47 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v48 = v47[6];
    v98 = v47[5];
    v99 = v48;
    v49 = objc_opt_self();
    LODWORD(v93) = 0;
    v50 = 0;
    v96 = v47[7];
    v97 = v49;
    v51 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v89 = v44;
    v52 = v44 + v51;
    v94 = *(v80 + 72);
    v95 = (v81 + 8);
    v53 = (v82 + 8);
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    while (1)
    {
      sub_23821AC2C(v52, v10, type metadata accessor for ElectricVehicleLoadEvent);
      v58 = v10;
      if (qword_27DEF68A0 != -1)
      {
        swift_once();
      }

      v59 = v100;
      v60 = v101;
      sub_2382789E0();
      sub_2382789D0();
      v62 = v61;
      (*v95)(v59, v60);
      v63 = [v97 milliwatts];
      v65 = v102;
      v64 = v103;
      sub_2382789E0();

      sub_2382789D0();
      v67 = v66;
      (*v53)(v65, v64);
      LOBYTE(v63) = v96[v46];
      result = sub_23821AC94(v58, type metadata accessor for ElectricVehicleLoadEvent);
      v10 = v58;
      if (v63)
      {
        v56 = v56 + v62;
        if (v67 <= 0.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v57 = v57 + v62;
        if (v67 <= 0.0)
        {
          goto LABEL_5;
        }
      }

      if (__OFADD__(v50++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v55 = v55 + v67;
      if (v54 <= v67)
      {
        v54 = v67;
      }

      LODWORD(v93) = 1;
LABEL_5:
      v52 += v94;
      if (!--v45)
      {

        v40 = v90;
        v69 = v93;
        goto LABEL_18;
      }
    }
  }

  v69 = 0;
  v50 = 0;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
LABEL_18:
  (*(v83 + 8))(v40, v84);
  v70 = v86;
  v71 = v85;
  v72 = v91;
  v73 = v87;
  (*(v86 + 16))(v85, v91, v87);
  if (v50 < 1)
  {
    v74 = 0.0;
  }

  else
  {
    v74 = v55 / v50;
  }

  v75 = v88;
  (*(v70 + 32))(v88, v71, v73);
  v76 = type metadata accessor for ElectricVehicleSimulator.HourlyAggregation(0);
  *(v75 + v76[5]) = v57;
  *(v75 + v76[6]) = v56;
  *(v75 + v76[7]) = v74;
  *(v75 + v76[8]) = v54;
  *(v75 + v76[9]) = v69 & 1;
  v77 = *(v70 + 8);
  v77(v92, v73);
  return (v77)(v72, v73);
}

uint64_t sub_238219040()
{
  v0 = *(type metadata accessor for ElectricVehicleLoadEvent(0) + 20);
  sub_238278B70();
  sub_23821B4AC(&qword_27DEF68D8, MEMORY[0x277CC9578]);
  if (sub_238278FD0())
  {
    return 0;
  }

  else
  {
    return sub_238278B40() & 1;
  }
}

uint64_t ElectricVehicleSimulator.__deallocating_deinit()
{
  sub_23821AC94(v0 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2382191B4(uint64_t result, uint64_t a2)
{
  v3 = 1103515245 * *v2 + 12345;
  *v2 = v3;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = vcvtd_n_f64_u64(v3, 0x40uLL) * v6 + result;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_238219250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6960, &qword_23827A4A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_23821937C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_238219558(void **a1)
{
  v2 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23821C240(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_238219620(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_238219600()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_238219040() & 1;
}

uint64_t sub_238219620(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_238279560();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectricVehicleLoadEvent(0);
        v6 = sub_238279100();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_238219994(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23821974C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23821974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v8 = *(*(Event - 8) + 64);
  v9 = MEMORY[0x28223BE20](Event);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = Event;
    while (1)
    {
      sub_23821AC2C(v24, v18, type metadata accessor for ElectricVehicleLoadEvent);
      sub_23821AC2C(v21, v14, type metadata accessor for ElectricVehicleLoadEvent);
      v26 = *(v25 + 20);
      v27 = sub_238278B40();
      sub_23821AC94(v14, type metadata accessor for ElectricVehicleLoadEvent);
      result = sub_23821AC94(v18, type metadata accessor for ElectricVehicleLoadEvent);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_23821EB58(v24, v11, type metadata accessor for ElectricVehicleLoadEvent);
      v25 = Event;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23821EB58(v11, v21, type metadata accessor for ElectricVehicleLoadEvent);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238219994(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v116 = *(Event - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](Event);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_23821A2C0(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_23821A854(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_23821A7C8(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_23821A854(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = Event;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_23821AC2C(v114 + v25 * v24, v19, type metadata accessor for ElectricVehicleLoadEvent);
      v27 = v26 + v25 * v21;
      v28 = v120;
      sub_23821AC2C(v27, v120, type metadata accessor for ElectricVehicleLoadEvent);
      v29 = *(Event + 20);
      LODWORD(v115) = sub_238278B40();
      sub_23821AC94(v28, type metadata accessor for ElectricVehicleLoadEvent);
      result = sub_23821AC94(v19, type metadata accessor for ElectricVehicleLoadEvent);
      v106 = v21;
      v30 = v21 + 2;
      v117 = v25;
      v31 = v114 + v25 * (v21 + 2);
      while (v20 != v30)
      {
        sub_23821AC2C(v31, v19, type metadata accessor for ElectricVehicleLoadEvent);
        v32 = v120;
        sub_23821AC2C(v5, v120, type metadata accessor for ElectricVehicleLoadEvent);
        v33 = *(v121 + 20);
        v34 = sub_238278B40() & 1;
        sub_23821AC94(v32, type metadata accessor for ElectricVehicleLoadEvent);
        result = sub_23821AC94(v19, type metadata accessor for ElectricVehicleLoadEvent);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      Event = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v35 = v117 * (v20 - 1);
          v36 = v20;
          v37 = v20 * v117;
          v115 = v20;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_23821EB58(v41 + v40, v111, type metadata accessor for ElectricVehicleLoadEvent);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23821EB58(v111, v41 + v35, type metadata accessor for ElectricVehicleLoadEvent);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          Event = v121;
          v23 = v39;
          v20 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v20 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v23 + a4;
    }

    if (v43 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v20;
    v89 = v23;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v20 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v20;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    a4 = type metadata accessor for ElectricVehicleLoadEvent;
    sub_23821AC2C(v5, v19, type metadata accessor for ElectricVehicleLoadEvent);
    v95 = v120;
    sub_23821AC2C(v92, v120, type metadata accessor for ElectricVehicleLoadEvent);
    v96 = *(Event + 20);
    v97 = sub_238278B40();
    sub_23821AC94(v95, type metadata accessor for ElectricVehicleLoadEvent);
    result = sub_23821AC94(v19, type metadata accessor for ElectricVehicleLoadEvent);
    if (v97)
    {
      break;
    }

    Event = v121;
LABEL_85:
    v21 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_238219250(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v44 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      result = sub_238219250((v44 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * a4];
    *(v45 + 4) = v23;
    *(v45 + 5) = v21;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v22[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v22[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v22[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v22[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v22 + 4);
            v49 = *(v22 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v22[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v22;
        v86 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_23821A2C0(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v22[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_23821A854(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        result = sub_23821A7C8(v47);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    Event = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for ElectricVehicleLoadEvent;
    v98 = v119;
    sub_23821EB58(v5, v119, type metadata accessor for ElectricVehicleLoadEvent);
    Event = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_23821EB58(v98, v92, type metadata accessor for ElectricVehicleLoadEvent);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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
  return result;
}

uint64_t sub_23821A2C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v8 = *(*(Event - 8) + 64);
  v9 = MEMORY[0x28223BE20](Event);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v46 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v42 = a1;
      v43 = a4;
      v41 = -v14;
      do
      {
        v39 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v44 = v28;
        v45 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v25;
          v31 = Event;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v46;
          sub_23821AC2C(v33, v46, type metadata accessor for ElectricVehicleLoadEvent);
          v35 = v47;
          sub_23821AC2C(v29, v47, type metadata accessor for ElectricVehicleLoadEvent);
          v36 = *(v31 + 20);
          LOBYTE(v31) = sub_238278B40();
          sub_23821AC94(v35, type metadata accessor for ElectricVehicleLoadEvent);
          sub_23821AC94(v34, type metadata accessor for ElectricVehicleLoadEvent);
          if (v31)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v27;
            a3 = v32;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v44;
          v30 = v33 > v43;
          v29 = v45;
          v26 = v41;
          if (!v30)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v32 >= v44)
        {
          a3 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v41;
          a1 = v42;
          v25 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v32;
          a2 = v45;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v46;
        sub_23821AC2C(a2, v46, type metadata accessor for ElectricVehicleLoadEvent);
        v22 = v47;
        sub_23821AC2C(a4, v47, type metadata accessor for ElectricVehicleLoadEvent);
        v23 = *(Event + 20);
        v24 = sub_238278B40();
        sub_23821AC94(v22, type metadata accessor for ElectricVehicleLoadEvent);
        sub_23821AC94(v21, type metadata accessor for ElectricVehicleLoadEvent);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_23821A868(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_23821A7C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23821A854(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23821A868(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ElectricVehicleLoadEvent(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23821A94C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_238278FA0();
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
      sub_23821B4AC(&qword_27DEF6948, MEMORY[0x277CC95F0]);
      v23 = sub_238278FE0();
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
    sub_23821B850(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23821AC2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821AC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23821AD1C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23821AD54()
{
  result = type metadata accessor for ElectricVehicleSimulator.Configuration(319);
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

uint64_t sub_23821AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23821AF70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23821B014()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23821B164(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23821B1D4()
{
  result = sub_238278B70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278B70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23821B358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278B70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23821B410()
{
  result = sub_238278B70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23821B4F4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238278BC0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  result = sub_238279380();
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
      sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0]);
      result = sub_238278FA0();
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

uint64_t sub_23821B850(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_23821B4F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23821BAF4();
      goto LABEL_12;
    }

    sub_23821BD2C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0]);
  v15 = sub_238278FA0();
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
      sub_23821B4AC(&qword_27DEF6948, MEMORY[0x277CC95F0]);
      v23 = sub_238278FE0();
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
  result = sub_2382795B0();
  __break(1u);
  return result;
}

void *sub_23821BAF4()
{
  v1 = v0;
  v2 = sub_238278BC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  v7 = *v0;
  v8 = sub_238279370();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
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
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_23821BD2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238278BC0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  v10 = sub_238279380();
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
      sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0]);
      result = sub_238278FA0();
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

size_t sub_23821C048(size_t a1, int64_t a2, char a3)
{
  result = sub_23821C068(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23821C068(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6958, &qword_23827A4A0);
  v10 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23821C254(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v392 = a1;
  v390 = a3;
  v366 = sub_238278C50();
  v334 = *(v366 - 8);
  v6 = *(v334 + 64);
  MEMORY[0x28223BE20](v366);
  v365 = &v317 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v324 = &v317 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v344 = &v317 - v13;
  MEMORY[0x28223BE20](v12);
  v359 = &v317 - v14;
  v371 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v15 = *(*(v371 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v371);
  v325 = &v317 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v326 = &v317 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v384 = &v317 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v383 = &v317 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v360 = &v317 - v25;
  MEMORY[0x28223BE20](v24);
  v387 = (&v317 - v26);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v375 = *(v397 - 8);
  v27 = *(v375 + 64);
  v28 = MEMORY[0x28223BE20](v397);
  v323 = &v317 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v345 = &v317 - v31;
  MEMORY[0x28223BE20](v30);
  v394 = (&v317 - v32);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v374 = *(v396 - 8);
  v33 = *(v374 + 64);
  v34 = MEMORY[0x28223BE20](v396);
  v332 = &v317 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v385 = &v317 - v37;
  MEMORY[0x28223BE20](v36);
  v395 = &v317 - v38;
  v370 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v39 = *(*(v370 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v370);
  v330 = &v317 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v322 = (&v317 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v331 = &v317 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v382 = &v317 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v343 = (&v317 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v381 = &v317 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v379 = &v317 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v358 = &v317 - v55;
  MEMORY[0x28223BE20](v54);
  v399 = &v317 - v56;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v347 = *(Event - 8);
  v57 = *(v347 + 64);
  v58 = MEMORY[0x28223BE20](Event);
  v321 = &v317 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v319 = &v317 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v320 = &v317 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v342 = &v317 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v341 = &v317 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = &v317 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v340 = (&v317 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v348 = &v317 - v74;
  MEMORY[0x28223BE20](v73);
  v333 = &v317 - v75;
  v386 = sub_238278C00();
  v369 = *(v386 - 8);
  v76 = *(v369 + 64);
  MEMORY[0x28223BE20](v386);
  v372 = &v317 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_238278C10();
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v82 = &v317 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_238278BF0();
  v84 = *(v83 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  v87 = (&v317 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  v89 = *(*(v88 - 8) + 64);
  v90 = MEMORY[0x28223BE20](v88 - 8);
  v327 = &v317 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v90);
  v346 = &v317 - v93;
  MEMORY[0x28223BE20](v92);
  v95 = &v317 - v94;
  v400 = sub_238278B70();
  v391 = *(v400 - 8);
  v96 = *(v391 + 64);
  v97 = MEMORY[0x28223BE20](v400);
  v329 = &v317 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v97);
  v335 = &v317 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v380 = &v317 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v389 = &v317 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v388 = &v317 - v106;
  MEMORY[0x28223BE20](v105);
  v337 = &v317 - v107;
  v318 = sub_238278C60();
  v317 = *(v318 - 8);
  v108 = *(v317 + 64);
  MEMORY[0x28223BE20](v318);
  v377 = &v317 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = sub_238278BC0();
  v336 = *(v376 - 8);
  v110 = *(v336 + 64);
  MEMORY[0x28223BE20](v376);
  v373 = &v317 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278BB0();
  v398 = a2;
  v367 = sub_2382191B4(0, 59);
  v112 = &v393[OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config];
  v113 = v393[OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 64];
  v393 += OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config;
  if (v113)
  {
    v114 = 23;
  }

  else
  {
    v115 = ((*(v112 + 7) * 0x7777777777777777) >> 64) - *(v112 + 7);
    v116 = (v115 >> 5) + (v115 >> 63);
    if (v116 <= -23)
    {
      v116 = -23;
    }

    v114 = v116 + 23;
  }

  v363 = sub_2382191B4(0, v114);
  sub_238278C40();
  v117 = *MEMORY[0x277CC9878];
  v118 = *(v84 + 104);
  v361 = v87;
  v364 = v83;
  v118(v87, v117, v83);
  v119 = *MEMORY[0x277CC9900];
  v120 = *(v79 + 104);
  v362 = v78;
  v120(v82, v119, v78);
  v121 = v369;
  v122 = v372;
  v123 = v386;
  (*(v369 + 104))(v372, *MEMORY[0x277CC98E8], v386);
  sub_238278C20();
  v125 = *(v121 + 8);
  v124 = (v121 + 8);
  v125(v122, v123);
  (*(v79 + 8))(v82, v362);
  (*(v84 + 8))(v361, v364);
  v126 = v391;
  v127 = *(v391 + 48);
  v128 = v400;
  v364 = v391 + 48;
  v363 = v127;
  if (v127(v95, 1, v400) == 1)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v129 = *(v126 + 32);
  v362 = v126 + 32;
  v361 = v129;
  v129(v337, v95, v128);
  v130 = v393;
  v131 = *(v393 + 6);
  v132 = *(v393 + 7);
  if (v132 < v131)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v133 = v398;
  v134 = sub_2382191B4(v131, v132);
  v3 = v130[9];
  v4 = v130[10];
  if (v3 > v4)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v386 = v134;
  v338 = 1103515245 * *v133 + 12345;
  *v133 = v338;
  v369 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v372 = objc_opt_self();
  v135 = [v372 milliwatts];
  v124 = sub_23821EB10(0, &qword_27DEF6970, 0x277CCAE30);
  sub_2382789C0();
  if (qword_27DEF68A0 != -1)
  {
LABEL_113:
    swift_once();
  }

  v136 = qword_27DEF7170;
  v137 = sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
  v138 = v136;
  v139 = v394;
  sub_2382789C0();
  v140 = sub_2382789B0();
  v141 = [v372 milliwatts];
  v367 = v124;
  v142 = sub_2382792F0();

  if ((v142 & 1) == 0)
  {
    goto LABEL_143;
  }

  v143 = sub_2382789B0();
  v357 = v137;
  v144 = sub_2382792F0();

  if ((v144 & 1) == 0)
  {
    goto LABEL_143;
  }

  v145 = sub_2382789B0();
  v146 = [v145 symbol];

  v147 = sub_238279000();
  v149 = v148;

  if (v147 == 6838125 && v149 == 0xE300000000000000)
  {

    v151 = v394;
  }

  else
  {
    v146 = sub_238279590();

    v151 = v394;
    if ((v146 & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  v152 = v390;
  v153 = v395;
  if (v390 <= 0x64)
  {
    v356 = v138;
    v154 = v358;
    *v358 = v390;
    v155 = v370;
    v156 = *(v374 + 32);
    v157 = v154 + *(v370 + 20);
    v374 += 32;
    v353 = v156;
    v156(v157, v153, v396);
    v158 = *(v375 + 32);
    v159 = v154 + *(v155 + 24);
    v375 += 32;
    v352 = v158;
    v158(v159, v151, v397);
    *(v154 + *(v155 + 28)) = 0;
    sub_23821EB58(v154, v399, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    v160 = v336 + 16;
    v161 = *(v336 + 16);
    v162 = v387;
    v163 = v376;
    v161(v387, v373, v376);
    v164 = v371;
    v165 = v162 + *(v371 + 24);
    v351 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v166 = &v165[*(v351 + 20)];
    v167 = v393;
    v355 = v160;
    v354 = v161;
    v161(v166, &v393[v369], v163);
    *v165 = 1;
    *(v162 + *(v164 + 20)) = 0;
    v394 = *(v126 + 16);
    v395 = (v126 + 16);
    (v394)(v388, v337, v400);
    sub_23821AC2C(v399, v379, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    v168 = v162;
    v169 = v360;
    sub_23821AC2C(v168, v360, type metadata accessor for ElectricVehicleLoadEvent.Session);
    v170 = *v167;
    v171 = v167[1];

    v172 = v359;
    sub_238278B80();
    v174 = v336 + 48;
    v173 = *(v336 + 48);
    v350 = v336 + 48;
    v349 = v173;
    LODWORD(v164) = v173(v172, 1, v376);
    sub_23821EBC0(v172);
    v175 = HIBYTE(v171) & 0xF;
    v398 = v171;
    v392 = v170;
    if (v164 != 1)
    {
      goto LABEL_33;
    }

    if ((v171 & 0x2000000000000000) != 0)
    {
      v176 = HIBYTE(v171) & 0xF;
    }

    else
    {
      v176 = v170 & 0xFFFFFFFFFFFFLL;
    }

    if (v176)
    {
      if ((v171 & 0x1000000000000000) == 0)
      {
        if (v176 <= 64)
        {
          goto LABEL_24;
        }

        goto LABEL_118;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_238279060() <= 64)
    {
LABEL_24:
      v177 = v398;

      v178 = v378;
      v179 = sub_23822DECC(v170, v177);
      v378 = v178;

      if (v179)
      {
        sub_23822DE84(v170, v177);
        if (!v180)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v181 = sub_238278FC0();

        if ((v181 & 1) == 0)
        {
          sub_23822DE84(v170, v398);
          if (!v182)
          {
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v183 = sub_238278FB0();

          if ((v183 & 1) == 0)
          {
            goto LABEL_124;
          }
        }

        sub_23822D660(v170, v398);
        if (!v184)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v185 = sub_238278FC0();

        if ((v185 & 1) == 0)
        {
          sub_23822D660(v170, v398);
          if (!v186)
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v187 = sub_238278FB0();

          if ((v187 & 1) == 0)
          {
            goto LABEL_125;
          }
        }

LABEL_33:
        v328 = HIBYTE(v171) & 0xF;
        v188 = Event;
        v189 = v169;
        v190 = v348;
        v191 = v400;
        (v394)(&v348[*(Event + 20)], v388, v400);
        sub_23821AC2C(v189, v190 + v188[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
        v192 = v379;
        sub_23821AC2C(v379, v190 + v188[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        *(v190 + v188[9]) = 1;
        sub_238278BB0();
        sub_23821AC94(v189, type metadata accessor for ElectricVehicleLoadEvent.Session);
        sub_23821AC94(v192, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        v193 = *(v126 + 8);
        v126 += 8;
        v194 = v388;
        v388 = v193;
        (v193)(v194, v191);
        sub_23821AC94(v387, type metadata accessor for ElectricVehicleLoadEvent.Session);
        sub_23821AC94(v399, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        v195 = (v190 + v188[8]);
        v149 = v392;
        v196 = v398;
        *v195 = v392;
        v195[1] = v196;
        v197 = v333;
        sub_23821EB58(v190, v333, type metadata accessor for ElectricVehicleLoadEvent);
        v139 = v340;
        sub_23821AC2C(v197, v340, type metadata accessor for ElectricVehicleLoadEvent);
        v150 = sub_23821937C(0, 1, 1, MEMORY[0x277D84F90], &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
        v151 = v150[2];
        v152 = v150[3];
        v146 = v151 + 1;
        if (v151 < v152 >> 1)
        {
          goto LABEL_34;
        }

        goto LABEL_115;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  __break(1u);
LABEL_115:
  v150 = sub_23821937C(v152 > 1, v146, 1, v150, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
LABEL_34:
  v198 = v328;
  v150[2] = v146;
  v199 = (*(v347 + 80) + 32) & ~*(v347 + 80);
  v387 = v150;
  v348 = v199;
  v347 = *(v347 + 72);
  sub_23821EB58(v139, v150 + v199 + v347 * v151, type metadata accessor for ElectricVehicleLoadEvent);
  v200 = v389;
  (v394)(v389, v337, v400);
  LODWORD(v360) = *MEMORY[0x277CC99A0];
  v358 = *(v334 + 104);
  v359 = (v334 + 104);
  v201 = v386;
  v391 = v126;
  if (v386 >= 1)
  {
    v202 = (v4 - v3) * vcvtd_n_f64_u64(v338, 0x40uLL);
    v340 = (v334 + 8);
    v203 = v149 & 0xFFFFFFFFFFFFLL;
    if ((v398 & 0x2000000000000000) != 0)
    {
      v203 = v198;
    }

    v338 = v203;
    v4 = v3 + v202;
    v3 = 0.0;
    v339 = v70;
    while (1)
    {
      v386 = v201;
      v70 = (v201 >= 0xF ? 15 : v201);
      v204 = v365;
      v205 = v366;
      (v358)(v365, v360, v366);
      v206 = v346;
      sub_238278C30();
      (*v340)(v204, v205);
      v207 = v400;
      if (v363(v206, 1, v400) == 1)
      {
        goto LABEL_128;
      }

      (v388)(v200, v207);
      v361(v200, v206, v207);
      v208 = v4 * (v70 / 60.0);
      v209 = v208 / *(v393 + 11) * 100.0;
      v210 = v345;
      v124 = v372;
      if (COERCE__INT64(fabs(v209)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      if (v209 <= -9.22337204e18)
      {
        goto LABEL_103;
      }

      if (v209 >= 9.22337204e18)
      {
        goto LABEL_104;
      }

      if (__OFADD__(v390, v209))
      {
        goto LABEL_105;
      }

      v379 = v70;
      v3 = v3 + v208;
      v399 = v390 + v209;
      if (v399 >= 100)
      {
        v211 = 100;
      }

      else
      {
        v211 = v390 + v209;
      }

      v212 = [v372 milliwatts];
      sub_2382789C0();
      v213 = v356;
      v126 = v357;
      sub_2382789C0();
      v214 = sub_2382789B0();
      v215 = [v124 milliwatts];
      v216 = sub_2382792F0();

      if ((v216 & 1) == 0)
      {
        goto LABEL_143;
      }

      v217 = sub_2382789B0();
      v218 = sub_2382792F0();

      v219 = v211;
      v220 = v400;
      v70 = v393;
      if ((v218 & 1) == 0)
      {
        goto LABEL_143;
      }

      v221 = sub_2382789B0();
      v222 = [v221 symbol];

      v124 = sub_238279000();
      v224 = v223;

      if (v124 == 6838125 && v224 == 0xE300000000000000)
      {

        v225 = v397;
      }

      else
      {
        v226 = sub_238279590();

        v225 = v397;
        if ((v226 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v399 < 0)
      {
        goto LABEL_106;
      }

      v227 = v343;
      v390 = v219;
      *v343 = v219;
      v228 = v370;
      v353(v227 + *(v370 + 20), v385, v396);
      v352(v227 + *(v228 + 24), v210, v225);
      *(v227 + *(v228 + 28)) = 0;
      v229 = v381;
      sub_23821EB58(v227, v381, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      v230 = v383;
      v124 = v376;
      v231 = v354;
      v354(v383, v373, v376);
      v232 = v371;
      v233 = (v230 + *(v371 + 24));
      v231(&v233[*(v351 + 20)], &v70[v369], v124);
      v126 = 1;
      *v233 = 1;
      *(v230 + *(v232 + 20)) = 2;
      (v394)(v380, v389, v220);
      sub_23821AC2C(v229, v382, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      sub_23821AC2C(v230, v384, type metadata accessor for ElectricVehicleLoadEvent.Session);
      v234 = v398;

      v235 = v344;
      v236 = v392;
      sub_238278B80();
      LODWORD(v233) = v349(v235, 1, v124);
      sub_23821EBC0(v235);
      if (v233 == 1)
      {
        if (!v338)
        {
          goto LABEL_107;
        }

        if ((v234 & 0x1000000000000000) != 0)
        {
          if (sub_238279060() > 64)
          {
LABEL_76:
            __break(1u);
            break;
          }
        }

        else if (v338 > 64)
        {
          goto LABEL_76;
        }

        v237 = v378;
        v238 = sub_23822DECC(v236, v234);
        v378 = v237;

        if ((v238 & 1) == 0)
        {
          goto LABEL_108;
        }

        sub_23822DE84(v236, v234);
        if (!v239)
        {
          goto LABEL_129;
        }

        v240 = sub_238278FC0();

        if ((v240 & 1) == 0)
        {
          sub_23822DE84(v236, v234);
          if (!v241)
          {
            goto LABEL_131;
          }

          v242 = sub_238278FB0();

          if ((v242 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        sub_23822D660(v236, v234);
        if (!v243)
        {
          goto LABEL_130;
        }

        v244 = sub_238278FC0();

        if ((v244 & 1) == 0)
        {
          sub_23822D660(v236, v234);
          if (!v245)
          {
            goto LABEL_132;
          }

          v246 = sub_238278FB0();

          if ((v246 & 1) == 0)
          {
            goto LABEL_110;
          }
        }
      }

      v247 = Event;
      v248 = v341;
      v249 = v380;
      v250 = v400;
      (v394)(&v341[*(Event + 20)], v380, v400);
      v251 = v384;
      sub_23821AC2C(v384, &v248[v247[6]], type metadata accessor for ElectricVehicleLoadEvent.Session);
      v252 = v382;
      sub_23821AC2C(v382, &v248[v247[7]], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      *&v248[v247[9]] = 1;
      sub_238278BB0();
      sub_23821AC94(v251, type metadata accessor for ElectricVehicleLoadEvent.Session);
      sub_23821AC94(v252, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      (v388)(v249, v250);
      sub_23821AC94(v383, type metadata accessor for ElectricVehicleLoadEvent.Session);
      sub_23821AC94(v381, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      v253 = &v248[v247[8]];
      v254 = v398;
      *v253 = v392;
      v253[1] = v254;
      v255 = v248;
      v256 = v339;
      sub_23821EB58(v255, v339, type metadata accessor for ElectricVehicleLoadEvent);
      v257 = v342;
      sub_23821AC2C(v256, v342, type metadata accessor for ElectricVehicleLoadEvent);
      v258 = v387;
      v260 = v387[2];
      v259 = v387[3];
      if (v260 >= v259 >> 1)
      {
        v258 = sub_23821937C(v259 > 1, v260 + 1, 1, v387, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
      }

      sub_23821AC94(v256, type metadata accessor for ElectricVehicleLoadEvent);
      *(v258 + 16) = v260 + 1;
      v387 = v258;
      sub_23821EB58(v257, &v348[v258 + v260 * v347], type metadata accessor for ElectricVehicleLoadEvent);
      if (v399 <= 99)
      {
        v201 = v386 - v379;
        v126 = v391;
        v200 = v389;
        if (v386 > v379)
        {
          continue;
        }
      }

      break;
    }
  }

  v261 = v390;
  v262 = v365;
  v263 = v366;
  (v358)(v365, v360, v366);
  v264 = v327;
  sub_238278C30();
  (*(v334 + 8))(v262, v263);
  v265 = v400;
  if (v363(v264, 1, v400) == 1)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v361(v335, v264, v265);
  v266 = v372;
  v267 = [v372 milliwatts];
  sub_2382789C0();
  v268 = v356;
  v269 = v323;
  sub_2382789C0();
  v270 = sub_2382789B0();
  v271 = [v266 milliwatts];
  v272 = sub_2382792F0();

  v174 = v325;
  if ((v272 & 1) == 0)
  {
    goto LABEL_143;
  }

  v273 = sub_2382789B0();
  v274 = sub_2382792F0();

  v275 = v378;
  if ((v274 & 1) == 0)
  {
    goto LABEL_143;
  }

  v276 = sub_2382789B0();
  v277 = [v276 symbol];

  v278 = sub_238279000();
  v280 = v279;

  if (v278 == 6838125 && v280 == 0xE300000000000000)
  {

    v281 = v397;
    goto LABEL_84;
  }

  v282 = sub_238279590();

  v281 = v397;
  if ((v282 & 1) == 0)
  {
LABEL_143:
    result = sub_238279410();
    __break(1u);
    return result;
  }

LABEL_84:
  v378 = v275;
  v283 = v322;
  *v322 = v261;
  v284 = v370;
  v353(v283 + *(v370 + 20), v332, v396);
  v352(v283 + *(v284 + 24), v269, v281);
  *(v283 + *(v284 + 28)) = 0;
  v285 = v331;
  sub_23821EB58(v283, v331, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v175 = v326;
  v286 = v376;
  v287 = v354;
  v354(v326, v373, v376);
  v288 = v371;
  v289 = (v175 + *(v371 + 24));
  v287(&v289[*(v351 + 20)], &v393[v369], v286);
  *v289 = 1;
  *(v175 + *(v288 + 20)) = 1;
  (v394)(v329, v335, v400);
  sub_23821AC2C(v285, v330, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  sub_23821AC2C(v175, v174, type metadata accessor for ElectricVehicleLoadEvent.Session);
  v126 = v398;

  v290 = v324;
  v170 = v392;
  sub_238278B80();
  LODWORD(v289) = v349(v290, 1, v286);
  sub_23821EBC0(v290);
  if (v289 != 1)
  {
    goto LABEL_100;
  }

  if ((v126 & 0x2000000000000000) != 0)
  {
    v291 = v328;
  }

  else
  {
    v291 = v170 & 0xFFFFFFFFFFFFLL;
  }

  if (v291)
  {
    if ((v126 & 0x1000000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_121;
  }

LABEL_120:
  __break(1u);
LABEL_121:
  v291 = sub_238279060();
LABEL_90:
  v292 = v378;
  if (v291 > 64)
  {
    __break(1u);
    goto LABEL_123;
  }

  v293 = sub_23822DECC(v170, v126);

  if ((v293 & 1) == 0)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_23822DE84(v170, v126);
  if (!v294)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v295 = sub_238278FC0();

  if ((v295 & 1) == 0)
  {
    sub_23822DE84(v170, v126);
    if (!v296)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v297 = sub_238278FB0();

    if ((v297 & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  sub_23822D660(v170, v126);
  if (!v298)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v299 = sub_238278FC0();

  v378 = v292;
  if ((v299 & 1) == 0)
  {
    sub_23822D660(v170, v126);
    if (!v300)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v301 = sub_238278FB0();

    if ((v301 & 1) == 0)
    {
      goto LABEL_127;
    }
  }

LABEL_100:
  v302 = Event;
  v303 = v319;
  v304 = v329;
  v305 = v400;
  (v394)(&v319[*(Event + 20)], v329, v400);
  sub_23821AC2C(v174, v303 + v302[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
  v306 = v330;
  sub_23821AC2C(v330, v303 + v302[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  *(v303 + v302[9]) = 1;
  sub_238278BB0();
  sub_23821AC94(v174, type metadata accessor for ElectricVehicleLoadEvent.Session);
  sub_23821AC94(v306, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  (v388)(v304, v305);
  sub_23821AC94(v175, type metadata accessor for ElectricVehicleLoadEvent.Session);
  sub_23821AC94(v331, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v307 = (v303 + v302[8]);
  v308 = v398;
  *v307 = v392;
  v307[1] = v308;
  v309 = v320;
  sub_23821EB58(v303, v320, type metadata accessor for ElectricVehicleLoadEvent);
  v310 = v321;
  sub_23821AC2C(v309, v321, type metadata accessor for ElectricVehicleLoadEvent);
  v311 = v387;
  v313 = v387[2];
  v312 = v387[3];
  if (v313 >= v312 >> 1)
  {
    v311 = sub_23821937C(v312 > 1, v313 + 1, 1, v387, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
  }

  v314 = v337;
  sub_23821AC94(v309, type metadata accessor for ElectricVehicleLoadEvent);
  v315 = v388;
  (v388)(v335, v305);
  v315(v389, v305);
  sub_23821AC94(v333, type metadata accessor for ElectricVehicleLoadEvent);
  v315(v314, v305);
  (*(v317 + 8))(v377, v318);
  (*(v336 + 8))(v373, v376);
  *(v311 + 16) = v313 + 1;
  sub_23821EB58(v310, &v348[v311 + v313 * v347], type metadata accessor for ElectricVehicleLoadEvent);
  return v311;
}

uint64_t sub_23821EB10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23821EB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821EBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23821EC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v75 = a2;
  v3 = sub_238278B70();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v6 = *(*(v78 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v78);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v71 - v9;
  v10 = sub_238278BC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v73 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v17 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v22 = *(*(v77 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v77);
  v81 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = &v71 - v25;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v27 = v2 + *(Event + 24);
  v28 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v30 = *(v28 + 20);
  v29 = *(v28 + 24);
  if (*(v27 + v30) == 1)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  LODWORD(v76) = v31;
  v79 = Event;
  v80 = v2;
  v32 = (v2 + *(Event + 32));
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v27 + v29);
  sub_23821F324(v27 + v29, v21, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  v36 = *(v18 + 28);
  v85 = v11;
  v86 = v10;
  v37 = *(v11 + 32);
  v37(v16, &v21[v36], v10);
  if ((v34 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v34) & 0xF;
  }

  else
  {
    result = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((v34 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_21;
  }

LABEL_10:
  v39 = v87;
  *v87 = 2;
  *(v39 + 1) = v33;
  *(v39 + 2) = v34;
  v40 = v35;
  v41 = v86;
  v37(&v39[*(v77 + 32)], v16, v86);
  v39[24] = v76;
  v39[25] = v40;
  v42 = *(v27 + v30);

  ElectricalLoadEvent.Session.State.init(rawValue:)(v42);
  LOBYTE(v42) = v89;
  v44 = v85 + 16;
  v43 = *(v85 + 16);
  v45 = v88;
  result = v43(v88, v27, v41);
  v46 = v79;
  *(v45 + *(v78 + 20)) = v42;
  v47 = v80;
  v48 = (v80 + *(v46 + 28));
  v49 = *v48;
  if ((*v48 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v51 = *(v48 + v50[7]);
  v52 = v50[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  result = sub_2382789D0();
  v54 = v53;
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v53 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v53 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v55 = v50[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  result = sub_2382789D0();
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v56 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v56 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v49 <= 0x64)
  {
    v77 = v54;
    v78 = v56;
    v57 = *(v46 + 20);
    v76 = v49;
    LODWORD(v79) = v51;
    v58 = v82;
    v59 = v43;
    v71 = v43;
    v60 = *(v83 + 16);
    v60(v82, v47 + v57, v84);
    sub_23821F324(v87, v81, type metadata accessor for ElectricalLoadEvent.DeviceState);
    v61 = v73;
    v62 = v86;
    v59(v73, v72, v86);
    v80 = v44;
    v63 = v74;
    sub_23821F324(v88, v74, type metadata accessor for ElectricalLoadEvent.Session);
    v64 = type metadata accessor for ElectricalLoadEvent(0);
    v65 = v75;
    v66 = v58;
    v67 = v84;
    v60((v75 + v64[5]), v66, v84);
    sub_23821F324(v63, v65 + v64[6], type metadata accessor for ElectricalLoadEvent.Session);
    v68 = v81;
    sub_23821F324(v81, v65 + v64[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
    v69 = v65 + v64[8];
    v70 = v77;
    *v69 = v76;
    *(v69 + 8) = v70;
    *(v69 + 16) = 0;
    *(v69 + 24) = v78;
    *(v69 + 32) = 0;
    *(v69 + 33) = v79;
    *(v65 + v64[10]) = 1;
    v71(v65 + v64[9], v61, v62);
    sub_238278BB0();
    sub_23821F38C(v63, type metadata accessor for ElectricalLoadEvent.Session);
    (*(v85 + 8))(v61, v62);
    sub_23821F38C(v68, type metadata accessor for ElectricalLoadEvent.DeviceState);
    (*(v83 + 8))(v82, v67);
    sub_23821F38C(v88, type metadata accessor for ElectricalLoadEvent.Session);
    return sub_23821F38C(v87, type metadata accessor for ElectricalLoadEvent.DeviceState);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23821F324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821F38C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23821F3EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v64 = a2;
  v3 = sub_238278B70();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v6 = *(*(v68 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v68);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v61 - v9;
  v10 = sub_238278BC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v22 = *(*(v67 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v67);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v76 = &v61 - v25;
  v26 = type metadata accessor for ElectricHVACLoadEvent(0);
  v27 = &v2[v26[6]];
  v28 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  v29 = *(v28 + 24);
  v66 = *(v28 + 20);
  v65 = v27[v66] != 1;
  v30 = v26[8];
  v69 = v2;
  v31 = &v2[v30];
  v32 = *v31;
  v33 = *(v31 + 1);
  v34 = v27[v29];
  sub_23821F9C8(&v27[v29], v21, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  v35 = *(v18 + 28);
  v75 = v11;
  v36 = *(v11 + 32);
  v37 = &v21[v35];
  v38 = v16;
  v39 = v16;
  v40 = v10;
  v36(v39, v37, v10);
  if ((v33 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v33) & 0xF;
  }

  else
  {
    result = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((v33 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_12;
  }

LABEL_7:
  v42 = v34;
  v43 = v76;
  *v76 = 1;
  *(v43 + 1) = v32;
  *(v43 + 2) = v33;
  v36(&v43[*(v67 + 32)], v38, v40);
  v43[24] = v65;
  v43[25] = v42;
  v44 = v27[v66];

  ElectricalLoadEvent.Session.State.init(rawValue:)(v44);
  LOBYTE(v44) = v78;
  v45 = *(v75 + 16);
  v46 = v77;
  result = v45(v77, v27, v40);
  v47 = v69;
  *(v46 + *(v68 + 20)) = v44;
  v48 = *&v47[v26[7]];
  if ((v48 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v48 <= 0x64)
  {
    v68 = *&v47[v26[7]];
    v49 = v26[5];
    v50 = v72;
    v51 = *(v73 + 16);
    v51(v72, &v47[v49], v74);
    sub_23821F9C8(v76, v70, type metadata accessor for ElectricalLoadEvent.DeviceState);
    v45(v71, v62, v40);
    v52 = v63;
    sub_23821F9C8(v77, v63, type metadata accessor for ElectricalLoadEvent.Session);
    Event = type metadata accessor for ElectricalLoadEvent(0);
    v54 = Event[5];
    v69 = v45;
    v55 = v64;
    v56 = v50;
    v57 = v74;
    v51((v64 + v54), v56, v74);
    sub_23821F9C8(v52, v55 + Event[6], type metadata accessor for ElectricalLoadEvent.Session);
    v58 = v70;
    sub_23821F9C8(v70, v55 + Event[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
    v59 = v55 + Event[8];
    *v59 = v68;
    *(v59 + 8) = 0;
    *(v59 + 16) = 1;
    *(v59 + 24) = 0;
    *(v59 + 32) = 1;
    *(v55 + Event[10]) = 1;
    v60 = v71;
    (v69)(v55 + Event[9], v71, v40);
    sub_238278BB0();
    sub_23821F38C(v52, type metadata accessor for ElectricalLoadEvent.Session);
    (*(v75 + 8))(v60, v40);
    sub_23821F38C(v58, type metadata accessor for ElectricalLoadEvent.DeviceState);
    (*(v73 + 8))(v72, v57);
    sub_23821F38C(v77, type metadata accessor for ElectricalLoadEvent.Session);
    return sub_23821F38C(v76, type metadata accessor for ElectricalLoadEvent.DeviceState);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23821F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ElectricalLoadEvent.DeviceState.init(type:deviceID:state:wasFollowingGuidance:guidanceToken:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a3) & 0xF;
  }

  else
  {
    result = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!result)
  {
    __break(1u);
LABEL_9:
    v16 = a2;
    v17 = a3;
    result = sub_238279060();
    a2 = v16;
    a3 = v17;
    if (result <= 64)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v8 = a6;
  v7 = a5;
  v10 = *a1;
  v9 = *a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (result <= 64)
  {
LABEL_7:
    *a7 = v10;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    v14 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
    v15 = sub_238278BC0();
    result = (*(*(v15 - 8) + 32))(a7 + v14, v8, v15);
    *(a7 + 24) = v9;
    *(a7 + 25) = v7 & 1;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

EnergyKit::ElectricalLoadEvent::Session::State __swiftcall ElectricalLoadEvent.Session.State.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t ElectricalLoadEvent.Session.init(state:id:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + *(type metadata accessor for ElectricalLoadEvent.Session(0) + 20)) = v5;
  v6 = sub_238278BC0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3, a2, v6);
}

uint64_t ElectricalLoadEvent.init(timestamp:deviceState:electricalMeasurement:venueID:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v25 = a3[1];
  v11 = *(a3 + 16);
  v24 = a3[3];
  v22 = *(a3 + 33);
  v23 = *(a3 + 32);
  Event = type metadata accessor for ElectricalLoadEvent(0);
  v13 = Event[5];
  v14 = sub_238278B70();
  v27 = *(v14 - 8);
  (*(v27 + 16))(a6 + v13, a1, v14);
  sub_23821FF1C(a5, a6 + Event[6], type metadata accessor for ElectricalLoadEvent.Session);
  v15 = a2;
  sub_23821FF1C(a2, a6 + Event[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
  v16 = a6 + Event[8];
  *v16 = v10;
  *(v16 + 8) = v25;
  *(v16 + 16) = v11;
  *(v16 + 24) = v24;
  *(v16 + 32) = v23;
  *(v16 + 33) = v22;
  *(a6 + Event[10]) = 1;
  v17 = Event[9];
  v18 = sub_238278BC0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a6 + v17, a4, v18);
  sub_238278BB0();
  sub_23821FF84(a5, type metadata accessor for ElectricalLoadEvent.Session);
  (*(v19 + 8))(a4, v18);
  sub_23821FF84(v15, type metadata accessor for ElectricalLoadEvent.DeviceState);
  v20 = *(v27 + 8);

  return v20(a1, v14);
}

uint64_t sub_23821FF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821FF84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

EnergyKit::ElectricalLoadEvent::State __swiftcall ElectricalLoadEvent.State.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 4)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t sub_2382200F4()
{
  v1 = 6710895;
  v2 = 0x656767756C706E75;
  if (*v0 != 2)
  {
    v2 = 0x64656767756C70;
  }

  if (*v0)
  {
    v1 = 28271;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238220160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238227B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238220194(uint64_t a1)
{
  v2 = sub_2382208B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382201D0(uint64_t a1)
{
  v2 = sub_2382208B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220218(uint64_t a1)
{
  v2 = sub_238220A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220254(uint64_t a1)
{
  v2 = sub_238220A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220290@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2382202CC(uint64_t a1)
{
  v2 = sub_2382209AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220308(uint64_t a1)
{
  v2 = sub_2382209AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220344(uint64_t a1)
{
  v2 = sub_238220904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220380(uint64_t a1)
{
  v2 = sub_238220904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382203BC(uint64_t a1)
{
  v2 = sub_238220958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382203F8(uint64_t a1)
{
  v2 = sub_238220958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6980, &qword_23827A4C0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6988, &qword_23827A4C8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6990, &qword_23827A4D0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6998, &qword_23827A4D8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69A0, &qword_23827A4E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382208B0();
  sub_238279640();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_238220958();
      v24 = v33;
      sub_2382794E0();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_238220904();
      v24 = v36;
      sub_2382794E0();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2382209AC();
    v24 = v30;
    sub_2382794E0();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_238220A00();
  sub_2382794E0();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2382208B0()
{
  result = qword_27DEF69A8;
  if (!qword_27DEF69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69A8);
  }

  return result;
}

unint64_t sub_238220904()
{
  result = qword_27DEF69B0;
  if (!qword_27DEF69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69B0);
  }

  return result;
}

unint64_t sub_238220958()
{
  result = qword_27DEF69B8;
  if (!qword_27DEF69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69B8);
  }

  return result;
}

unint64_t sub_2382209AC()
{
  result = qword_27DEF69C0;
  if (!qword_27DEF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69C0);
  }

  return result;
}

unint64_t sub_238220A00()
{
  result = qword_27DEF69C8;
  if (!qword_27DEF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69C8);
  }

  return result;
}

uint64_t ElectricalLoadEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69D0, &qword_23827A4E8);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69D8, &qword_23827A4F0);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69E0, &qword_23827A4F8);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69E8, &qword_23827A500);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F0, &qword_23827A508);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2382208B0();
  v23 = v55;
  sub_238279630();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_2382794D0();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_2382793F0();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v33 = &type metadata for ElectricalLoadEvent.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_2382209AC();
          v39 = v44;
          sub_238279440();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_238220A00();
          v35 = v44;
          sub_238279440();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_1(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_238220958();
        v38 = v44;
        sub_238279440();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_238220904();
        v40 = v44;
        sub_238279440();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_2382210DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238221114()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238221148()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

EnergyKit::ElectricalLoadEvent::DeviceType __swiftcall ElectricalLoadEvent.DeviceType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t sub_2382212DC()
{
  v1 = 1667331688;
  if (*v0 != 1)
  {
    v1 = 0x6369727463656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_238221338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238227C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23822136C(uint64_t a1)
{
  v2 = sub_2382218B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382213A8(uint64_t a1)
{
  v2 = sub_2382218B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382213E4(uint64_t a1)
{
  v2 = sub_23822190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221420(uint64_t a1)
{
  v2 = sub_23822190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822145C(uint64_t a1)
{
  v2 = sub_238221960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221498(uint64_t a1)
{
  v2 = sub_238221960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382214D4(uint64_t a1)
{
  v2 = sub_2382219B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221510(uint64_t a1)
{
  v2 = sub_2382219B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.DeviceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A00, &qword_23827A518);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A08, &qword_23827A520);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A10, &qword_23827A528);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A18, &qword_23827A530);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382218B8();
  sub_238279640();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_238221960();
      v12 = v26;
      sub_2382794E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23822190C();
      v12 = v29;
      sub_2382794E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2382219B4();
    sub_2382794E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2382218B8()
{
  result = qword_27DEF6A20;
  if (!qword_27DEF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A20);
  }

  return result;
}

unint64_t sub_23822190C()
{
  result = qword_27DEF6A28;
  if (!qword_27DEF6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A28);
  }

  return result;
}

unint64_t sub_238221960()
{
  result = qword_27DEF6A30;
  if (!qword_27DEF6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A30);
  }

  return result;
}

unint64_t sub_2382219B4()
{
  result = qword_27DEF6A38;
  if (!qword_27DEF6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A38);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A40, &qword_23827A538);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A48, &qword_23827A540);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A50, &qword_23827A548);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A58, &qword_23827A550);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382218B8();
  v18 = v49;
  sub_238279630();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_2382794D0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_238221960();
          v33 = v40;
          sub_238279440();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_23822190C();
          v37 = v40;
          sub_238279440();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_2382219B4();
        v35 = v40;
        sub_238279440();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_2382793F0();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
  *v28 = &type metadata for ElectricalLoadEvent.DeviceType;
  sub_238279450();
  sub_2382793E0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.power.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.energy.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_238222054()
{
  v1 = 0x6C6576656CLL;
  v2 = 0x796772656E65;
  if (*v0 != 2)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0)
  {
    v1 = 0x7265776F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2382220C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238227D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2382220FC(uint64_t a1)
{
  v2 = sub_2382223A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238222138(uint64_t a1)
{
  v2 = sub_2382223A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A60, &qword_23827A558);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v17 = v1[1];
  v16 = *(v1 + 16);
  v15 = v1[3];
  v10 = *(v1 + 32);
  v14[0] = *(v1 + 33);
  v14[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382223A8();
  sub_238279640();
  v22 = 0;
  sub_238279540();
  if (!v2)
  {
    v12 = v14[0];
    v21 = 1;
    sub_2382794F0();
    v20 = 2;
    sub_2382794F0();
    v19 = v12;
    v18 = 3;
    sub_2382223FC();
    sub_238279550();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2382223A8()
{
  result = qword_27DEF6A68;
  if (!qword_27DEF6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A68);
  }

  return result;
}

unint64_t sub_2382223FC()
{
  result = qword_27DEF6A70;
  if (!qword_27DEF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A70);
  }

  return result;
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A78, &qword_23827A560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382223A8();
  sub_238279630();
  if (!v2)
  {
    v26 = 0;
    v11 = sub_2382794B0();
    v25 = 1;
    v12 = sub_238279460();
    v21 = v13;
    v14 = v12;
    v24 = 2;
    v15 = sub_238279460();
    v20 = v16;
    v19 = v15;
    v22 = 3;
    sub_238222688();
    sub_2382794C0();
    (*(v6 + 8))(v9, v5);
    v18 = v23;
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v21 & 1;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20 & 1;
    *(a2 + 33) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_238222688()
{
  result = qword_27DEF6A80;
  if (!qword_27DEF6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A80);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceState.deviceID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ElectricalLoadEvent.DeviceState.guidanceToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricalLoadEvent.DeviceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2382228A0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6574617473;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x65636E6164697567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238222940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238227EFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238222974(uint64_t a1)
{
  v2 = sub_238222C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382229B0(uint64_t a1)
{
  v2 = sub_238222C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.DeviceState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A88, &qword_23827A568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238222C80();
  sub_238279640();
  v16[15] = *v3;
  v16[14] = 0;
  sub_238222CD4();
  sub_238279550();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v16[13] = 1;
    sub_238279500();
    v16[12] = *(v3 + 24);
    v16[11] = 2;
    sub_238222D28();
    sub_238279550();
    v14 = *(v3 + 25);
    v16[10] = 3;
    sub_238279510();
    v15 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
    v16[9] = 4;
    sub_238278BC0();
    sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_238222C80()
{
  result = qword_27DEF6A90;
  if (!qword_27DEF6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A90);
  }

  return result;
}

unint64_t sub_238222CD4()
{
  result = qword_27DEF6A98;
  if (!qword_27DEF6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A98);
  }

  return result;
}

unint64_t sub_238222D28()
{
  result = qword_27DEF6AA0;
  if (!qword_27DEF6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AA0);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_238278BC0();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AB0, &qword_23827A570);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238222C80();
  v32 = v10;
  v16 = v33;
  sub_238279630();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v27 = v6;
  v17 = v30;
  v39 = 0;
  sub_2382231E4();
  v18 = v31;
  sub_2382794C0();
  v19 = v14;
  *v14 = v40;
  v38 = 1;
  *(v14 + 1) = sub_238279470();
  *(v14 + 2) = v20;
  v36 = 2;
  sub_238223238();
  sub_2382794C0();
  v14[24] = v37;
  v35 = 3;
  v21 = sub_238279480();
  v22 = v33;
  v19[25] = v21 & 1;
  v34 = 4;
  sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  v23 = v19;
  v24 = v27;
  sub_2382794C0();
  (*(v17 + 8))(v32, v18);
  (*(v28 + 32))(v23 + *(v11 + 32), v24, v3);
  sub_23821FF1C(v23, v29, type metadata accessor for ElectricalLoadEvent.DeviceState);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_23821FF84(v23, type metadata accessor for ElectricalLoadEvent.DeviceState);
}

unint64_t sub_2382231E4()
{
  result = qword_27DEF6AB8;
  if (!qword_27DEF6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AB8);
  }

  return result;
}

unint64_t sub_238223238()
{
  result = qword_27DEF6AC0;
  if (!qword_27DEF6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AC0);
  }

  return result;
}

uint64_t sub_23822328C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238223304(uint64_t a1)
{
  v2 = sub_238223918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238223340(uint64_t a1)
{
  v2 = sub_238223918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822337C(uint64_t a1)
{
  v2 = sub_2382239C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382233B8(uint64_t a1)
{
  v2 = sub_2382239C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382233F4()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69676562;
  }
}

uint64_t sub_238223440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2382280B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238223468(uint64_t a1)
{
  v2 = sub_2382238C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382234A4(uint64_t a1)
{
  v2 = sub_2382238C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382234E0(uint64_t a1)
{
  v2 = sub_23822396C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822351C(uint64_t a1)
{
  v2 = sub_23822396C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AD0, &qword_23827A578);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AD8, &qword_23827A580);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AE0, &qword_23827A588);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AE8, &qword_23827A590);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382238C4();
  sub_238279640();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23822396C();
      v12 = v26;
      sub_2382794E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_238223918();
      v12 = v29;
      sub_2382794E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2382239C0();
    sub_2382794E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2382238C4()
{
  result = qword_27DEF6AF0;
  if (!qword_27DEF6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AF0);
  }

  return result;
}

unint64_t sub_238223918()
{
  result = qword_27DEF6AF8;
  if (!qword_27DEF6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AF8);
  }

  return result;
}

unint64_t sub_23822396C()
{
  result = qword_27DEF6B00;
  if (!qword_27DEF6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B00);
  }

  return result;
}

unint64_t sub_2382239C0()
{
  result = qword_27DEF6B08;
  if (!qword_27DEF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B08);
  }

  return result;
}

uint64_t _s9EnergyKit19ElectricalLoadEventV10DeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricalLoadEvent.Session.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B10, &qword_23827A598);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B18, &qword_23827A5A0);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B20, &qword_23827A5A8);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B28, &qword_23827A5B0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382238C4();
  v18 = v49;
  sub_238279630();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_2382794D0();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_23822396C();
          v33 = v40;
          sub_238279440();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_238223918();
          v37 = v40;
          sub_238279440();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_2382239C0();
        v35 = v40;
        sub_238279440();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_2382793F0();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
  *v28 = &type metadata for ElectricalLoadEvent.Session.State;
  sub_238279450();
  sub_2382793E0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t ElectricalLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricalLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_238224098()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t sub_2382240DC()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_238224108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2382241E4(uint64_t a1)
{
  v2 = sub_23822442C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238224220(uint64_t a1)
{
  v2 = sub_23822442C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B30, &qword_23827A5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822442C();
  sub_238279640();
  v12[15] = 0;
  sub_238278BC0();
  sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ElectricalLoadEvent.Session(0) + 20));
    v12[13] = 1;
    sub_238224480();
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23822442C()
{
  result = qword_27DEF6B38;
  if (!qword_27DEF6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B38);
  }

  return result;
}

unint64_t sub_238224480()
{
  result = qword_27DEF6B40;
  if (!qword_27DEF6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B40);
  }

  return result;
}

uint64_t ElectricalLoadEvent.Session.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_238278BC0();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B48, &qword_23827A5C0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822442C();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2382794C0();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_238224850();
  sub_2382794C0();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_23821FF1C(v22, v27, type metadata accessor for ElectricalLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23821FF84(v22, type metadata accessor for ElectricalLoadEvent.Session);
}

unint64_t sub_238224850()
{
  result = qword_27DEF6B50;
  if (!qword_27DEF6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B50);
  }

  return result;
}

uint64_t _s9EnergyKit21ElectricHVACLoadEventV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278BC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricalLoadEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent(0) + 20);
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ElectricalLoadEvent.electricalMeasurement.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ElectricalLoadEvent(0) + 32));
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u64[1];
  v6 = v3[2].n128_u8[0];
  v7 = v3[2].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u64[1] = v5;
  a1[2].n128_u8[0] = v6;
  a1[2].n128_u8[1] = v7;
  return result;
}

uint64_t ElectricalLoadEvent.venueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent(0) + 36);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_238224B4C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x444965756E6576;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x7453656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238224C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2382281C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238224C60(uint64_t a1)
{
  v2 = sub_2382250AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238224C9C(uint64_t a1)
{
  v2 = sub_2382250AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B58, &qword_23827A5C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382250AC();
  sub_238279640();
  LOBYTE(v24) = 0;
  sub_238278BC0();
  sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    Event = type metadata accessor for ElectricalLoadEvent(0);
    v11 = Event[5];
    LOBYTE(v24) = 1;
    sub_238278B70();
    sub_23822328C(&qword_27DEF6B68, MEMORY[0x277CC9578]);
    sub_238279550();
    v12 = Event[6];
    LOBYTE(v24) = 2;
    type metadata accessor for ElectricalLoadEvent.Session(0);
    sub_23822328C(&qword_27DEF6B70, type metadata accessor for ElectricalLoadEvent.Session);
    sub_238279550();
    v13 = Event[7];
    LOBYTE(v24) = 3;
    type metadata accessor for ElectricalLoadEvent.DeviceState(0);
    sub_23822328C(&qword_27DEF6B78, type metadata accessor for ElectricalLoadEvent.DeviceState);
    sub_238279550();
    v14 = (v3 + Event[8]);
    v15 = *(v14 + 16);
    v16 = *(v14 + 3);
    v17 = *(v14 + 32);
    v18 = *(v14 + 33);
    v24 = *v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = 4;
    sub_238225100();
    sub_238279550();
    v19 = Event[9];
    LOBYTE(v24) = 5;
    sub_238279550();
    v20 = *(v3 + Event[10]);
    LOBYTE(v24) = 6;
    sub_238279540();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2382250AC()
{
  result = qword_27DEF6B60;
  if (!qword_27DEF6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B60);
  }

  return result;
}

unint64_t sub_238225100()
{
  result = qword_27DEF6B80;
  if (!qword_27DEF6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B80);
  }

  return result;
}

uint64_t ElectricalLoadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238278B70();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_238278BC0();
  v60 = *(v64 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v64);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B88, &qword_23827A5D0);
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v49 - v18;
  Event = type metadata accessor for ElectricalLoadEvent(0);
  v21 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382250AC();
  v65 = v19;
  v25 = v66;
  sub_238279630();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v14;
  v52 = v10;
  v66 = Event;
  LOBYTE(v67) = 0;
  v26 = sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  v27 = v61;
  sub_2382794C0();
  v49[2] = v26;
  v28 = *(v60 + 32);
  v50 = v23;
  v29 = v27;
  v30 = v60 + 32;
  v31 = v64;
  v28(v23, v29, v64);
  LOBYTE(v67) = 1;
  sub_23822328C(&qword_27DEF6B90, MEMORY[0x277CC9578]);
  v32 = v52;
  v33 = v59;
  sub_2382794C0();
  v49[0] = v28;
  v49[1] = v30;
  v34 = v50;
  (*(v58 + 32))(&v50[v66[5]], v32, v33);
  LOBYTE(v67) = 2;
  sub_23822328C(&qword_27DEF6B98, type metadata accessor for ElectricalLoadEvent.Session);
  v35 = v57;
  v61 = 0;
  sub_2382794C0();
  v36 = a1;
  v37 = v62;
  sub_238225A14(v35, v34 + v66[6], type metadata accessor for ElectricalLoadEvent.Session);
  LOBYTE(v67) = 3;
  sub_23822328C(&qword_27DEF6BA0, type metadata accessor for ElectricalLoadEvent.DeviceState);
  v38 = v55;
  sub_2382794C0();
  v39 = v34;
  v40 = v66;
  sub_238225A14(v38, v39 + v66[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
  v72 = 4;
  sub_238225A7C();
  sub_2382794C0();
  v41 = v68;
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v45 = v39 + v40[8];
  *v45 = v67;
  *(v45 + 16) = v41;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 33) = v44;
  LOBYTE(v67) = 5;
  v46 = v51;
  sub_2382794C0();
  (v49[0])(v39 + v40[9], v46, v31);
  LOBYTE(v67) = 6;
  v47 = sub_2382794B0();
  (*(v37 + 8))(v65, v63);
  *(v39 + v40[10]) = v47;
  sub_23821FF1C(v39, v53, type metadata accessor for ElectricalLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_23821FF84(v39, type metadata accessor for ElectricalLoadEvent);
}

uint64_t sub_238225A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_238225A7C()
{
  result = qword_27DEF6BA8;
  if (!qword_27DEF6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BA8);
  }

  return result;
}

unint64_t sub_238225AD4()
{
  result = qword_27DEF6BB0;
  if (!qword_27DEF6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BB0);
  }

  return result;
}

unint64_t sub_238225B2C()
{
  result = qword_27DEF6BB8;
  if (!qword_27DEF6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BB8);
  }

  return result;
}

unint64_t sub_238225B84()
{
  result = qword_27DEF6BC0;
  if (!qword_27DEF6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BC0);
  }

  return result;
}

uint64_t sub_238225C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_238278B70();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for ElectricalLoadEvent.Session(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8] + 33);
          if (v17 >= 2)
          {
            return v17 - 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238225E14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ElectricalLoadEvent.Session(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 33) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238225FB0()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    result = sub_238278B70();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ElectricalLoadEvent.Session(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ElectricalLoadEvent.DeviceState(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2382260D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23822611C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_238226188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238226248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2382262EC()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238226398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238226464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23822651C()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.Session.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.Session.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.DeviceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.DeviceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2382269F4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_238226A84(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ElectricVehicleLoadEvent.ElectricalMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricVehicleLoadEvent.ElectricalMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238226D08()
{
  result = qword_27DEF6BF8;
  if (!qword_27DEF6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BF8);
  }

  return result;
}

unint64_t sub_238226D60()
{
  result = qword_27DEF6C00;
  if (!qword_27DEF6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C00);
  }

  return result;
}

unint64_t sub_238226DB8()
{
  result = qword_27DEF6C08;
  if (!qword_27DEF6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C08);
  }

  return result;
}

unint64_t sub_238226E10()
{
  result = qword_27DEF6C10;
  if (!qword_27DEF6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C10);
  }

  return result;
}

unint64_t sub_238226E68()
{
  result = qword_27DEF6C18;
  if (!qword_27DEF6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C18);
  }

  return result;
}

unint64_t sub_238226EC0()
{
  result = qword_27DEF6C20;
  if (!qword_27DEF6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C20);
  }

  return result;
}

unint64_t sub_238226F18()
{
  result = qword_27DEF6C28;
  if (!qword_27DEF6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C28);
  }

  return result;
}

unint64_t sub_238226F70()
{
  result = qword_27DEF6C30;
  if (!qword_27DEF6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C30);
  }

  return result;
}

unint64_t sub_238226FC8()
{
  result = qword_27DEF6C38;
  if (!qword_27DEF6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C38);
  }

  return result;
}

unint64_t sub_238227020()
{
  result = qword_27DEF6C40;
  if (!qword_27DEF6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C40);
  }

  return result;
}

unint64_t sub_238227078()
{
  result = qword_27DEF6C48;
  if (!qword_27DEF6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C48);
  }

  return result;
}

unint64_t sub_2382270D0()
{
  result = qword_27DEF6C50;
  if (!qword_27DEF6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C50);
  }

  return result;
}

unint64_t sub_238227128()
{
  result = qword_27DEF6C58;
  if (!qword_27DEF6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C58);
  }

  return result;
}

unint64_t sub_238227180()
{
  result = qword_27DEF6C60;
  if (!qword_27DEF6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C60);
  }

  return result;
}

unint64_t sub_2382271D8()
{
  result = qword_27DEF6C68;
  if (!qword_27DEF6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C68);
  }

  return result;
}

unint64_t sub_238227230()
{
  result = qword_27DEF6C70;
  if (!qword_27DEF6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C70);
  }

  return result;
}

unint64_t sub_238227288()
{
  result = qword_27DEF6C78;
  if (!qword_27DEF6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C78);
  }

  return result;
}

unint64_t sub_2382272E0()
{
  result = qword_27DEF6C80;
  if (!qword_27DEF6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C80);
  }

  return result;
}

unint64_t sub_238227338()
{
  result = qword_27DEF6C88;
  if (!qword_27DEF6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C88);
  }

  return result;
}

unint64_t sub_238227390()
{
  result = qword_27DEF6C90;
  if (!qword_27DEF6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C90);
  }

  return result;
}

unint64_t sub_2382273E8()
{
  result = qword_27DEF6C98;
  if (!qword_27DEF6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C98);
  }

  return result;
}

unint64_t sub_238227440()
{
  result = qword_27DEF6CA0;
  if (!qword_27DEF6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CA0);
  }

  return result;
}

unint64_t sub_238227498()
{
  result = qword_27DEF6CA8;
  if (!qword_27DEF6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CA8);
  }

  return result;
}

unint64_t sub_2382274F0()
{
  result = qword_27DEF6CB0;
  if (!qword_27DEF6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CB0);
  }

  return result;
}

unint64_t sub_238227548()
{
  result = qword_27DEF6CB8;
  if (!qword_27DEF6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CB8);
  }

  return result;
}

unint64_t sub_2382275A0()
{
  result = qword_27DEF6CC0;
  if (!qword_27DEF6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CC0);
  }

  return result;
}

unint64_t sub_2382275F8()
{
  result = qword_27DEF6CC8;
  if (!qword_27DEF6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CC8);
  }

  return result;
}

unint64_t sub_238227650()
{
  result = qword_27DEF6CD0;
  if (!qword_27DEF6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CD0);
  }

  return result;
}

unint64_t sub_2382276A8()
{
  result = qword_27DEF6CD8;
  if (!qword_27DEF6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CD8);
  }

  return result;
}

unint64_t sub_238227700()
{
  result = qword_27DEF6CE0;
  if (!qword_27DEF6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CE0);
  }

  return result;
}

unint64_t sub_238227758()
{
  result = qword_27DEF6CE8;
  if (!qword_27DEF6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CE8);
  }

  return result;
}

unint64_t sub_2382277B0()
{
  result = qword_27DEF6CF0;
  if (!qword_27DEF6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CF0);
  }

  return result;
}

unint64_t sub_238227808()
{
  result = qword_27DEF6CF8;
  if (!qword_27DEF6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CF8);
  }

  return result;
}

unint64_t sub_238227860()
{
  result = qword_27DEF6D00;
  if (!qword_27DEF6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D00);
  }

  return result;
}

unint64_t sub_2382278B8()
{
  result = qword_27DEF6D08;
  if (!qword_27DEF6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D08);
  }

  return result;
}

unint64_t sub_238227910()
{
  result = qword_27DEF6D10;
  if (!qword_27DEF6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D10);
  }

  return result;
}

unint64_t sub_238227968()
{
  result = qword_27DEF6D18;
  if (!qword_27DEF6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D18);
  }

  return result;
}

unint64_t sub_2382279C0()
{
  result = qword_27DEF6D20;
  if (!qword_27DEF6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D20);
  }

  return result;
}

unint64_t sub_238227A18()
{
  result = qword_27DEF6D28;
  if (!qword_27DEF6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D28);
  }

  return result;
}

unint64_t sub_238227A70()
{
  result = qword_27DEF6D30;
  if (!qword_27DEF6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D30);
  }

  return result;
}

unint64_t sub_238227AC8()
{
  result = qword_27DEF6D38;
  if (!qword_27DEF6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D38);
  }

  return result;
}

uint64_t sub_238227B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656767756C706E75 && a2 == 0xE900000000000064 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656767756C70 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_238227C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667331688 && a2 == 0xE400000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369727463656C65 && a2 == 0xEF656C6369686556)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_238227D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_238227EFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238280F40 == a2 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2382280B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69676562 && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2382281C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238280F60 == a2 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444965756E6576 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

EnergyKit::ElectricHVACLoadEvent::ElectricalMeasurement __swiftcall ElectricHVACLoadEvent.ElectricalMeasurement.init(stage:)(EnergyKit::ElectricHVACLoadEvent::ElectricalMeasurement stage)
{
  if (stage.stage > 0x64)
  {
    __break(1u);
  }

  else
  {
    v1->stage = stage.stage;
  }

  return stage;
}

uint64_t sub_2382284A4()
{
  sub_238279600();
  MEMORY[0x2383ED500](0);
  return sub_238279620();
}

uint64_t sub_238228510()
{
  sub_238279600();
  MEMORY[0x2383ED500](0);
  return sub_238279620();
}

uint64_t sub_238228564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238279590();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2382285E8(uint64_t a1)
{
  v2 = sub_238228798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228624(uint64_t a1)
{
  v2 = sub_238228798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D40, &qword_23827B920);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279640();
  sub_238279530();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_238228798()
{
  result = qword_27DEF6D48;
  if (!qword_27DEF6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D48);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.ElectricalMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D50, &qword_23827B928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279630();
  if (!v2)
  {
    v11 = sub_2382794A0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238228958(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D40, &qword_23827B920);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279640();
  sub_238279530();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238228AA4(uint64_t a1)
{
  v2 = sub_238229044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228AE0(uint64_t a1)
{
  v2 = sub_238229044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228B1C(uint64_t a1)
{
  v2 = sub_2382290EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228B58(uint64_t a1)
{
  v2 = sub_2382290EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228B94(uint64_t a1)
{
  v2 = sub_238228FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228BD0(uint64_t a1)
{
  v2 = sub_238228FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228C0C(uint64_t a1)
{
  v2 = sub_238229098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228C48(uint64_t a1)
{
  v2 = sub_238229098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D58, &qword_23827B930);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D60, &qword_23827B938);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D68, &qword_23827B940);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D70, &qword_23827B948);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228FF0();
  sub_238279640();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_238229098();
      v12 = v26;
      sub_2382794E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_238229044();
      v12 = v29;
      sub_2382794E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2382290EC();
    sub_2382794E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_238228FF0()
{
  result = qword_27DEF6D78;
  if (!qword_27DEF6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D78);
  }

  return result;
}

unint64_t sub_238229044()
{
  result = qword_27DEF6D80;
  if (!qword_27DEF6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D80);
  }

  return result;
}

unint64_t sub_238229098()
{
  result = qword_27DEF6D88;
  if (!qword_27DEF6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D88);
  }

  return result;
}

unint64_t sub_2382290EC()
{
  result = qword_27DEF6D90;
  if (!qword_27DEF6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D90);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricHVACLoadEvent.Session.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D98, &qword_23827B950);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DA0, &qword_23827B958);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DA8, &qword_23827B960);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DB0, &unk_23827B968);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_238228FF0();
  v20 = v43;
  sub_238279630();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_2382794D0();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_238228428();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_2382793F0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v30 = &type metadata for ElectricHVACLoadEvent.Session.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_238229098();
          sub_238279440();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_238229044();
          v33 = v22;
          sub_238279440();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_2382290EC();
        sub_238279440();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.init(wasFollowingGuidance:guidanceToken:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0) + 20);
  v7 = sub_238278BC0();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  *a3 = a1;
  return result;
}

unint64_t sub_2382298E8()
{
  if (*v0)
  {
    result = 0x65636E6164697567;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_238229934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000238280F40 == a2 || (sub_238279590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_238279590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_238229A24(uint64_t a1)
{
  v2 = sub_238229C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238229A60(uint64_t a1)
{
  v2 = sub_238229C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DB8, &qword_23827B978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238229C54();
  sub_238279640();
  v11 = *v3;
  v14[15] = 0;
  sub_238279510();
  if (!v2)
  {
    v12 = *(type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0) + 20);
    v14[14] = 1;
    sub_238278BC0();
    sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_238229C54()
{
  result = qword_27DEF6DC0;
  if (!qword_27DEF6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DC0);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_238278BC0();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DC8, &qword_23827B980);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238229C54();
  sub_238279630();
  if (!v2)
  {
    v23 = v10;
    v16 = v26;
    v15 = v27;
    v30 = 0;
    v17 = v28;
    v18 = sub_238279480();
    v22 = v13;
    *v13 = v18 & 1;
    v29 = 1;
    sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
    sub_2382794C0();
    (*(v16 + 8))(v9, v17);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v6, v15);
    sub_23822BE00(v19, v25, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238229FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ElectricHVACLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ElectricHVACLoadEvent.Session.init(id:state:guidanceState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  *(a4 + *(v8 + 20)) = v7;
  v9 = sub_238278BC0();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  return sub_23822BE00(a3, a4 + *(v8 + 24), type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
}

uint64_t sub_23822A150()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x65636E6164697567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23822A1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23822D348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23822A1D0(uint64_t a1)
{
  v2 = sub_23822A490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822A20C(uint64_t a1)
{
  v2 = sub_23822A490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DD0, &qword_23827B988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822A490();
  sub_238279640();
  v14[15] = 0;
  sub_238278BC0();
  sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
    v14[14] = *(v3 + *(v11 + 20));
    v14[13] = 1;
    sub_23822A4E4();
    sub_238279550();
    v12 = *(v11 + 24);
    v14[12] = 2;
    type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    sub_238229FA8(&qword_27DEF6DE8, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23822A490()
{
  result = qword_27DEF6DD8;
  if (!qword_27DEF6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DD8);
  }

  return result;
}

unint64_t sub_23822A4E4()
{
  result = qword_27DEF6DE0;
  if (!qword_27DEF6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DE0);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238278BC0();
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DF0, &unk_23827B990);
  v27 = *(v31 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822A490();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v27;
  v18 = v28;
  v23 = v15;
  v24 = a1;
  v35 = 0;
  sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  v19 = v29;
  sub_2382794C0();
  (*(v18 + 32))(v23, v19, v30);
  v33 = 1;
  sub_23822A994();
  sub_2382794C0();
  v20 = v23;
  v23[*(v12 + 20)] = v34;
  v32 = 2;
  sub_238229FA8(&qword_27DEF6E00, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  sub_2382794C0();
  (*(v17 + 8))(v11, v31);
  sub_23822BE00(v6, v20 + *(v12 + 24), type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  sub_23822A9E8(v20, v25, type metadata accessor for ElectricHVACLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_23822BEBC(v20, type metadata accessor for ElectricHVACLoadEvent.Session);
}

unint64_t sub_23822A994()
{
  result = qword_27DEF6DF8;
  if (!qword_27DEF6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DF8);
  }

  return result;
}

uint64_t sub_23822A9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23822AAB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ElectricHVACLoadEvent.measurement.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ElectricHVACLoadEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ElectricHVACLoadEvent.deviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for ElectricHVACLoadEvent(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ElectricHVACLoadEvent.init(timestamp:measurement:session:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = *a2;
  sub_238278B80();
  v17 = sub_238278BC0();
  LODWORD(a2) = (*(*(v17 - 8) + 48))(v15, 1, v17);
  sub_23821EBC0(v15);
  if (a2 != 1)
  {
    goto LABEL_17;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a5) & 0xF;
  }

  else
  {
    result = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a5 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_8;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_20;
  }

LABEL_8:
  result = sub_23822DE84(a4, a5);
  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = sub_238278FC0();

  if ((v20 & 1) == 0)
  {
    result = sub_23822DE84(a4, a5);
    if (!v21)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = sub_238278FB0();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  result = sub_23822D660(a4, a5);
  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = sub_238278FC0();

  if (v24)
  {
    goto LABEL_16;
  }

  result = sub_23822D660(a4, a5);
  if (v25)
  {
    v26 = sub_238278FB0();

    if ((v26 & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_16:

    v27 = sub_23822AF5C(a4, a5);

    if (v27)
    {
LABEL_17:
      v28 = type metadata accessor for ElectricHVACLoadEvent(0);
      v29 = v28[5];
      v30 = sub_238278B70();
      v31 = *(v30 - 8);
      (*(v31 + 16))(a6 + v29, a1, v30);
      sub_23822A9E8(a3, a6 + v28[6], type metadata accessor for ElectricHVACLoadEvent.Session);
      *(a6 + v28[7]) = v16;
      *(a6 + v28[9]) = 1;
      sub_238278BB0();
      sub_23822BEBC(a3, type metadata accessor for ElectricHVACLoadEvent.Session);
      result = (*(v31 + 8))(a1, v30);
      v32 = (a6 + v28[8]);
      *v32 = a4;
      v32[1] = a5;
      return result;
    }

    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23822AF5C(uint64_t a1, unint64_t a2)
{
  v37 = sub_238278A40();
  v4 = *(*(v37 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = HIBYTE(a2) & 0xF;
  v39 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v12;
  if (v12)
  {
    v13 = 0;
    v32 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v33 = a2 & 0xFFFFFFFFFFFFFFLL;
    v14 = (v9 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_2382793A0();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v38[0] = v39;
          v38[1] = v33;
          v16 = v38 + v13;
        }

        else
        {
          v15 = v32;
          if ((v39 & 0x1000000000000000) == 0)
          {
            v15 = sub_238279400();
          }

          v16 = (v15 + v13);
        }

        v19 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v26 = (__clz(v19 ^ 0xFF) - 24);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v28 = ((v19 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3Fu;
            v18 = 3;
          }

          else
          {
            v29 = ((v19 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3Fu;
            v18 = 4;
          }

          goto LABEL_14;
        }

        if (v26 == 1)
        {
LABEL_13:
          v18 = 1;
        }

        else
        {
          v27 = v16[1] & 0x3F | ((v19 & 0x1F) << 6);
          v18 = 2;
        }
      }

LABEL_14:
      v20 = v35;
      sub_238278A10();
      v21 = v36;
      sub_238278A00();
      sub_238278A20();
      v22 = *v14;
      v23 = v21;
      v24 = v37;
      (*v14)(v23, v37);
      v22(v20, v24);
      v25 = sub_238278A30();
      v22(v11, v24);
      if (v25)
      {
        v13 += v18;
        if (v13 < v34)
        {
          continue;
        }
      }

      return v25 & 1;
    }
  }

  v25 = 1;
  return v25 & 1;
}