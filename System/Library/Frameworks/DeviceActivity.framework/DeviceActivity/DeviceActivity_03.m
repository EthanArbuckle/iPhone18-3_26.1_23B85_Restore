uint64_t sub_237FDBDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_237FA4C34(v34, v13, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_237FA4C34(v36, v47, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          v39 = *(v48 + 24);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_237FA4C9C(v42, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          sub_237FA4C9C(v37, type metadata accessor for _DeviceActivityData.WebDomainActivity);
          if (v41 < v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_237FA4C34(a2, v13, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v22 = v47;
        sub_237FA4C34(a4, v47, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        v23 = *(v48 + 24);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_237FA4C9C(v22, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        sub_237FA4C9C(v13, type metadata accessor for _DeviceActivityData.WebDomainActivity);
        if (v25 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_237FDC7C8(&v52, &v51, &v50, type metadata accessor for _DeviceActivityData.WebDomainActivity);
  return 1;
}

uint64_t sub_237FDC2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_237FA4C34(v34, v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_237FA4C34(v36, v47, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          v39 = *(v48 + 28);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_237FA4C9C(v42, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          sub_237FA4C9C(v37, type metadata accessor for _DeviceActivityData.ApplicationActivity);
          if (v41 < v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_237FA4C34(a2, v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v22 = v47;
        sub_237FA4C34(a4, v47, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v23 = *(v48 + 28);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_237FA4C9C(v22, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        sub_237FA4C9C(v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v25 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_237FDC7C8(&v52, &v51, &v50, type metadata accessor for _DeviceActivityData.ApplicationActivity);
  return 1;
}

uint64_t sub_237FDC7C8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_237FDC8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FDC930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s14DeviceActivity0aB4DataV08CategoryB0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4DA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_237FC23F4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_237FC2644(v7, v8);
}

uint64_t _s14DeviceActivity01_aB4DataV08CategoryB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D8, &qword_238034408);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = v8;
  v28 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v17 = v28[5];
  v18 = *(v13 + 48);
  sub_237FA90E4(a1 + v17, v16, &qword_27DEE51D0, &qword_238034400);
  sub_237FA90E4(a2 + v17, &v16[v18], &qword_27DEE51D0, &qword_238034400);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_237FA90E4(v16, v12, &qword_27DEE51D0, &qword_238034400);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = &v16[v18];
      v21 = v27;
      (*(v5 + 32))(v27, v20, v4);
      sub_237FA41C0(&qword_27DEE5098);
      v22 = sub_238031E64();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v12, v4);
      sub_237FA5750(v16, &qword_27DEE51D0, &qword_238034400);
      if (v22)
      {
        goto LABEL_11;
      }

LABEL_14:
      v25 = 0;
      return v25 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_237FA5750(v16, &qword_27DEE51D8, &qword_238034408);
    goto LABEL_14;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_237FA5750(v16, &qword_27DEE51D0, &qword_238034400);
LABEL_11:
  v24 = v28;
  if (*(a1 + v28[6]) != *(a2 + v28[6]) || (sub_237FC3438(*(a1 + v28[7]), *(a2 + v28[7])) & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = sub_237FC3A10(*(a1 + v24[8]), *(a2 + v24[8]));
  return v25 & 1;
}

uint64_t sub_237FDCDF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_237FDCEF0()
{
  sub_238031C44();
  if (v0 <= 0x3F)
  {
    sub_237FDD144(319, &qword_27DEE5398, type metadata accessor for DeviceActivityData.ApplicationActivity);
    if (v1 <= 0x3F)
    {
      sub_237FDD144(319, &qword_27DEE53A0, type metadata accessor for DeviceActivityData.WebDomainActivity);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237FDCFF4()
{
  sub_237FDD0E0();
  if (v0 <= 0x3F)
  {
    sub_237FDD144(319, &qword_280C350E0, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    if (v1 <= 0x3F)
    {
      sub_237FDD144(319, &qword_280C350D0, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237FDD0E0()
{
  if (!qword_280C35100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF0, &unk_238033980);
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C35100);
    }
  }
}

void sub_237FDD144(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_238032024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_237FDD1AC()
{
  result = qword_27DEE53A8;
  if (!qword_27DEE53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53A8);
  }

  return result;
}

unint64_t sub_237FDD204()
{
  result = qword_280C34FC0;
  if (!qword_280C34FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FC0);
  }

  return result;
}

unint64_t sub_237FDD25C()
{
  result = qword_280C34FC8;
  if (!qword_280C34FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FC8);
  }

  return result;
}

uint64_t sub_237FDD2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036E70 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238036E90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2380324E4();

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

__n128 DeviceActivityData.Device.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48) + 1;
  if (v3 >= 6)
  {
    LOBYTE(v3) = 0;
  }

  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3;
  return result;
}

uint64_t static DeviceActivityData.Device.Model.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = MGCopyAnswer();
  if (result)
  {
    result = swift_dynamicCast();
    if (result && (v4 - 1) <= 8)
    {
      v3 = byte_2380350BE[v4 - 1];
    }

    else
    {
      v3 = 0;
    }

    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeviceActivityData.Device.Model.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if ((result + 1) < 6)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_237FDD570()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1 - 1);
  return sub_2380325F4();
}

uint64_t sub_237FDD5E8()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1 - 1);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.Device.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceActivityData.Device.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivityData.Device.coreDuetIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeviceActivityData.Device.coreDuetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DeviceActivityData.Device.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DeviceActivityData.Device.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static DeviceActivityData.Device.currentDeviceName.getter()
{
  result = MGCopyAnswer();
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeviceActivityData.Device.init(identifier:coreDuetIdentifier:name:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t DeviceActivityData.Device.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_238031ED4();
  if (!v4)
  {
    sub_2380325D4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    return MEMORY[0x2383E5730](v7 - 1);
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
  return MEMORY[0x2383E5730](v7 - 1);
}

uint64_t DeviceActivityData.Device.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_2380325B4();
  sub_238031ED4();
  if (!v4)
  {
    sub_2380325D4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v7 - 1);
  return sub_2380325F4();
}

uint64_t sub_237FDDA10()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_2380325B4();
  DeviceActivityData.Device.hash(into:)();
  return sub_2380325F4();
}

uint64_t sub_237FDDA74()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_2380325B4();
  DeviceActivityData.Device.hash(into:)();
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Device.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DeviceActivityData.Device.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.coreDuetIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _DeviceActivityData.Device.coreDuetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t _DeviceActivityData.Device.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t _DeviceActivityData.Device.init(identifier:coreDuetIdentifier:name:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_237FDDCB0()
{
  v1 = 0x696669746E656469;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0x6C65646F6DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_237FDDD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FDEBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FDDD5C(uint64_t a1)
{
  v2 = sub_237FDE738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FDDD98(uint64_t a1)
{
  v2 = sub_237FDE738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53B0, &qword_238034D28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v15[0] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FDE738();
  sub_238032614();
  v19 = 0;
  v13 = v15[5];
  sub_238032464();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_238032444();
  v17 = 2;
  sub_238032444();
  v16 = 3;
  sub_238032494();
  return (*(v4 + 8))(v7, v3);
}

uint64_t _DeviceActivityData.Device.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_238031ED4();
  if (!v4)
  {
    sub_2380325D4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    return MEMORY[0x2383E5730](v7);
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
  return MEMORY[0x2383E5730](v7);
}

uint64_t _DeviceActivityData.Device.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_2380325B4();
  sub_238031ED4();
  if (!v4)
  {
    sub_2380325D4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v7);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Device.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53B8, &qword_238034D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FDE738();
  sub_238032604();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = 0;
  v11 = sub_2380323F4();
  v25 = v12;
  v28 = 1;
  v23 = sub_2380323D4();
  v24 = v13;
  v27 = 2;
  v14 = sub_2380323D4();
  v16 = v15;
  v22 = v14;
  v26 = 3;
  v18 = sub_238032424();
  (*(v6 + 8))(v9, v5);
  v20 = v24;
  v19 = v25;
  *a2 = v11;
  a2[1] = v19;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v21;
  a2[5] = v16;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_237FDE454()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_2380325B4();
  sub_238031ED4();
  if (!v4)
  {
    sub_2380325D4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2380325D4();
    goto LABEL_6;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2380325D4();
  sub_238031ED4();
LABEL_6:
  MEMORY[0x2383E5730](v7);
  return sub_2380325F4();
}

BOOL _s14DeviceActivity01_aB4DataV0A0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_2380324E4() & 1) != 0))
    {
      return v6 == v11;
    }
  }

  else if (!v9)
  {
    return v6 == v11;
  }

  return 0;
}

BOOL _s14DeviceActivity0aB4DataV0A0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_2380324E4() & 1) != 0))
    {
      return v6 == v11;
    }
  }

  else if (!v9)
  {
    return v6 == v11;
  }

  return 0;
}

unint64_t sub_237FDE738()
{
  result = qword_280C35308;
  if (!qword_280C35308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35308);
  }

  return result;
}

unint64_t sub_237FDE790()
{
  result = qword_27DEE53C0;
  if (!qword_27DEE53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53C0);
  }

  return result;
}

unint64_t sub_237FDE7E8()
{
  result = qword_27DEE53C8;
  if (!qword_27DEE53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53C8);
  }

  return result;
}

unint64_t sub_237FDE840()
{
  result = qword_27DEE53D0;
  if (!qword_27DEE53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53D0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237FDE8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_237FDE8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237FDE984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237FDE9CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s6DeviceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_237FDEACC()
{
  result = qword_27DEE53D8;
  if (!qword_27DEE53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE53D8);
  }

  return result;
}

unint64_t sub_237FDEB24()
{
  result = qword_280C352F8;
  if (!qword_280C352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352F8);
  }

  return result;
}

unint64_t sub_237FDEB7C()
{
  result = qword_280C35300;
  if (!qword_280C35300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35300);
  }

  return result;
}

uint64_t sub_237FDEBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036EB0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

char *sub_237FDED4C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_237FB5A94(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_237FB5A94((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_237FDEE8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t static _DeviceActivityData.teamIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aApple;

  return v0;
}

uint64_t static _DeviceActivityData.teamIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aApple = a1;
  qword_27DEE53E8 = a2;
}

uint64_t sub_237FDF044()
{
  v0 = sub_238031CE4();
  __swift_allocate_value_buffer(v0, qword_27DEE9550);
  __swift_project_value_buffer(v0, qword_27DEE9550);
  return sub_238031CD4();
}

char *sub_237FDF090(uint64_t a1, char *a2)
{
  v49 = a2;
  v3 = sub_238031B64();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238031A64();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - v10;
  v12 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - v17;
  v19 = sub_238031654();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_238031B74();
  v43 = *(v24 - 8);
  v44 = v24;
  v25 = *(v43 + 64);
  MEMORY[0x28223BE20](v24);
  v40 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238031B44();
  sub_237FA4D64(a1, v18, type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v27 = v20[4];
  v39[0] = v19;
  v27(v23, v18, v19);
  v28 = v11;
  sub_238031634();
  v29 = v42;
  sub_238031604();
  sub_237FA4D64(a1, v16, type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v30 = qword_278A454B0[swift_getEnumCaseMultiPayload()];
  v31 = v20[1];
  v39[1] = v20 + 1;
  v31(v16, v19);
  v32 = v45;
  v33 = v46;
  v34 = v41;
  (*(v45 + 104))(v41, *v30, v46);
  v35 = v40;
  v51 = v40;
  v52 = v34;
  v53 = v28;
  v54 = v29;
  v49 = sub_237FDED4C(sub_237FDFEA4, v50, v49);
  v31(v23, v39[0]);
  (*(v32 + 8))(v34, v33);
  v36 = v48;
  v37 = *(v47 + 8);
  v37(v29, v48);
  v37(v28, v36);
  (*(v43 + 8))(v35, v44);
  return v49;
}

uint64_t sub_237FDF4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a5;
  v36 = a4;
  v37 = a3;
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = sub_238031A64();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = *a1;
  v25 = a1[1];
  v39 = 0;
  v34 = v24;
  result = sub_238010DB8(v24, v25);
  if ((result & 1) == 0)
  {
    *a6 = 0;
    a6[1] = 0;
    return result;
  }

  v32 = a6;
  v33 = v6;
  sub_2380319D4();
  sub_238031B24();
  sub_237FA90E4(v15, v13, &qword_27DEE51E0, &qword_2380365F0);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_237FA5750(v15, &qword_27DEE51E0, &qword_2380365F0);
    (*(v17 + 8))(v23, v16);
    result = sub_237FA5750(v13, &qword_27DEE51E0, &qword_2380365F0);
LABEL_7:
    v28 = v32;
LABEL_8:
    *v28 = 0;
    v28[1] = 0;
    return result;
  }

  (*(v17 + 32))(v21, v13, v16);
  sub_237FDFEC4();
  if (sub_238031E44())
  {
    v27 = *(v17 + 8);
    v27(v21, v16);
    sub_237FA5750(v15, &qword_27DEE51E0, &qword_2380365F0);
    result = (v27)(v23, v16);
    goto LABEL_7;
  }

  v29 = sub_238031E44();
  v30 = *(v17 + 8);
  v30(v21, v16);
  sub_237FA5750(v15, &qword_27DEE51E0, &qword_2380365F0);
  result = (v30)(v23, v16);
  v28 = v32;
  if (v29)
  {
    goto LABEL_8;
  }

  *v32 = v34;
  v28[1] = v25;
}

uint64_t sub_237FDF81C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_237FDF890(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_237FDF8EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_237FDF8EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_237FDF9B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_237FD4FB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_237FDF9B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_237FDFAC4(a5, a6);
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
    result = sub_2380322F4();
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

uint64_t sub_237FDFAC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_237FDFB10(a1, a2);
  sub_237FDFC40(&unk_284AE5A90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_237FDFB10(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_237FDFD2C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2380322F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_238031EF4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_237FDFD2C(v10, 0);
        result = sub_238032294();
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

uint64_t sub_237FDFC40(uint64_t result)
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

  result = sub_237FDFDA0(result, v12, 1, v3);
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

void *sub_237FDFD2C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F8, &qword_2380350D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_237FDFDA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F8, &qword_2380350D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_237FDFE94(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_237FDFEC4()
{
  result = qword_280C35028;
  if (!qword_280C35028)
  {
    sub_238031A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35028);
  }

  return result;
}

uint64_t sub_237FDFF38(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  return sub_238031CB4() & 1;
}

uint64_t sub_237FDFF94(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2380324E4() & 1;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t DeviceActivityData.User.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceActivityData.User(0);
  v5 = *(v4 + 24);
  v6 = sub_2380317D4();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *a2 = *a1;
  v7 = *(a1 + 24);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v7;
  v8 = type metadata accessor for _DeviceActivityData.User(0);
  v9 = *(v8 + 24);

  sub_237FC7B94(a1 + v9, a2 + v5);
  v10 = *(a1 + *(v8 + 28));
  result = sub_237FE1D00(a1);
  *(a2 + *(v4 + 28)) = v10 == 1;
  return result;
}

uint64_t DeviceActivityData.User.FamilyRole.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_237FE01B8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t DeviceActivityData.User.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DeviceActivityData.User(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t DeviceActivityData.User.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DeviceActivityData.User(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t DeviceActivityData.User.init(altDSID:appleID:nameComponents:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v19 = *a6;
  v11 = type metadata accessor for DeviceActivityData.User(0);
  v12 = *(v11 + 24);
  v13 = sub_2380317D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(&a7[v12], 1, 1, v13);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  sub_237FA5750(&a7[v12], &qword_27DEE5108, &qword_238033EE0);
  (*(v14 + 32))(&a7[v12], a5, v13);
  result = (v15)(&a7[v12], 0, 1, v13);
  a7[*(v11 + 28)] = v19;
  return result;
}

uint64_t DeviceActivityData.User.hash(into:)()
{
  v1 = sub_2380317D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if (v0[1])
  {
    v10 = *v0;
    sub_2380325D4();
    sub_238031ED4();
    if (v0[3])
    {
LABEL_3:
      v11 = v0[2];
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v12 = type metadata accessor for DeviceActivityData.User(0);
  sub_237FE1D5C(v0 + *(v12 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_2380325D4();
    sub_237FE1E90(&qword_27DEE5110, MEMORY[0x277CC8E50]);
    sub_238031E34();
    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x2383E5730](*(v0 + *(v12 + 28)));
}

uint64_t _DeviceActivityData.User.altDSID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DeviceActivityData.User.altDSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.User.appleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _DeviceActivityData.User.appleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_237FE0860@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_237FE1D5C(v4, a2);
}

uint64_t sub_237FE08C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);

  return sub_237FE1DCC(a1, v4);
}

uint64_t _DeviceActivityData.User.role.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.User(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t _DeviceActivityData.User.init(altDSID:appleID:nameComponents:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for _DeviceActivityData.User(0);
  v15 = *(v14 + 24);
  v16 = sub_2380317D4();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_237FE1DCC(a5, &a7[v15]);
  *&a7[*(v14 + 28)] = a6;
  return result;
}

uint64_t sub_237FE0AB4()
{
  v1 = 0x44495344746C61;
  v2 = 0x706D6F43656D616ELL;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 0x4449656C707061;
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

uint64_t sub_237FE0B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FE23E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FE0B5C(uint64_t a1)
{
  v2 = sub_237FE1E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FE0B98(uint64_t a1)
{
  v2 = sub_237FE1E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.User.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5400, &qword_2380350D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FE1E3C();
  sub_238032614();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_238032444();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19[14] = 1;
    sub_238032444();
    v16 = type metadata accessor for _DeviceActivityData.User(0);
    v17 = *(v16 + 24);
    v19[13] = 2;
    sub_2380317D4();
    sub_237FE1E90(&qword_280C35060, MEMORY[0x277CC8E50]);
    sub_238032454();
    v18 = *(v3 + *(v16 + 28));
    v19[12] = 3;
    sub_238032494();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.User.hash(into:)()
{
  v1 = sub_2380317D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if (v0[1])
  {
    v10 = *v0;
    sub_2380325D4();
    sub_238031ED4();
    if (v0[3])
    {
LABEL_3:
      v11 = v0[2];
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v12 = type metadata accessor for _DeviceActivityData.User(0);
  sub_237FE1D5C(v0 + *(v12 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_2380325D4();
    sub_237FE1E90(&qword_27DEE5110, MEMORY[0x277CC8E50]);
    sub_238031E34();
    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x2383E5730](*(v0 + *(v12 + 28)));
}

uint64_t sub_237FE10A0(void (*a1)(_BYTE *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.User.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5408, &qword_2380350E0);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for _DeviceActivityData.User(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = sub_2380317D4();
  v18 = *(*(v17 - 8) + 56);
  v35 = v16;
  v18(v15 + v16, 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FE1E3C();
  v20 = v36;
  sub_238032604();
  if (v20)
  {
    v36 = v20;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_237FA5750(v15 + v35, &qword_27DEE5108, &qword_238033EE0);
  }

  v31 = v11;
  v21 = v33;
  v40 = 0;
  *v15 = sub_2380323D4();
  v15[1] = v23;
  v39 = 1;
  v24 = sub_2380323D4();
  v36 = 0;
  v15[2] = v24;
  v15[3] = v25;
  v38 = 2;
  sub_237FE1E90(&qword_280C35358, MEMORY[0x277CC8E50]);
  v26 = v36;
  sub_2380323E4();
  v36 = v26;
  if (v26)
  {
    (*(v21 + 8))(v10, v34);
    goto LABEL_4;
  }

  sub_237FE1DCC(v6, v15 + v35);
  v37 = 3;
  v27 = v34;
  v28 = v36;
  v29 = sub_238032424();
  (*(v21 + 8))(v10, v27);
  v36 = v28;
  if (v28)
  {
    goto LABEL_4;
  }

  v30 = v32;
  *(v15 + *(v31 + 28)) = v29;
  sub_237FE1ED8(v15, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_237FE1D00(v15);
}

uint64_t sub_237FE14F8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FE155C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t _s14DeviceActivity0aB4DataV4UserV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_2380317D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5440, &qword_238035408);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v18)
  {
    goto LABEL_21;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v20)
  {
    goto LABEL_21;
  }

  v29 = type metadata accessor for DeviceActivityData.User(0);
  v21 = *(v29 + 24);
  v22 = *(v13 + 48);
  sub_237FE1D5C(a1 + v21, v16);
  sub_237FE1D5C(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_237FA5750(v16, &qword_27DEE5108, &qword_238033EE0);
LABEL_24:
      v24 = *(a1 + *(v29 + 28)) ^ *(a2 + *(v29 + 28)) ^ 1;
      return v24 & 1;
    }

    goto LABEL_20;
  }

  sub_237FE1D5C(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_20:
    sub_237FA5750(v16, &qword_27DEE5440, &qword_238035408);
    goto LABEL_21;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_237FE1E90(&qword_27DEE5448, MEMORY[0x277CC8E50]);
  v26 = sub_238031E64();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_237FA5750(v16, &qword_27DEE5108, &qword_238033EE0);
  if (v26)
  {
    goto LABEL_24;
  }

LABEL_21:
  v24 = 0;
  return v24 & 1;
}

BOOL _s14DeviceActivity01_aB4DataV4UserV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_2380317D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5440, &qword_238035408);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_2380324E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v28 = type metadata accessor for _DeviceActivityData.User(0);
  v21 = *(v28 + 24);
  v22 = *(v13 + 48);
  sub_237FE1D5C(a1 + v21, v16);
  sub_237FE1D5C(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_237FA5750(v16, &qword_27DEE5108, &qword_238033EE0);
      return *(a1 + *(v28 + 28)) == *(a2 + *(v28 + 28));
    }

    goto LABEL_20;
  }

  sub_237FE1D5C(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_20:
    sub_237FA5750(v16, &qword_27DEE5440, &qword_238035408);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_237FE1E90(&qword_27DEE5448, MEMORY[0x277CC8E50]);
  v25 = sub_238031E64();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_237FA5750(v16, &qword_27DEE5108, &qword_238033EE0);
  if (v25)
  {
    return *(a1 + *(v28 + 28)) == *(a2 + *(v28 + 28));
  }

  return 0;
}

uint64_t sub_237FE1D00(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.User(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FE1D5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FE1DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FE1E3C()
{
  result = qword_280C352D8;
  if (!qword_280C352D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352D8);
  }

  return result;
}

uint64_t sub_237FE1E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237FE1ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.User(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FE1F40()
{
  result = qword_27DEE5410;
  if (!qword_27DEE5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5410);
  }

  return result;
}

void sub_237FE2058()
{
  if (!qword_280C356C8)
  {
    sub_2380317D4();
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C356C8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_237FE2244()
{
  sub_237FD6BDC();
  if (v0 <= 0x3F)
  {
    sub_237FE2058();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_237FE22E0()
{
  result = qword_27DEE5438;
  if (!qword_27DEE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5438);
  }

  return result;
}

unint64_t sub_237FE2338()
{
  result = qword_280C352C8;
  if (!qword_280C352C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352C8);
  }

  return result;
}

unint64_t sub_237FE2390()
{
  result = qword_280C352D0;
  if (!qword_280C352D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352D0);
  }

  return result;
}

uint64_t sub_237FE23E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

uint64_t _DeviceActivityData.WebDomainActivity.init(domain:token:totalActivityDuration:isTrusted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  *(a5 + 1) = a2;
  result = sub_237FAD474(a3, &a5[v13]);
  *&a5[v12[6]] = a6;
  a5[v12[7]] = a4;
  return result;
}

double _DeviceActivityData.WebDomainActivity.update(using:)(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 24);
  result = *(a1 + v3) + *(v1 + v3);
  *(v1 + v3) = result;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  sub_237FE28D4(a1 + v16[5], v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_237FA5750(v7, &qword_27DEE51B0, &qword_2380343D0);
    v17 = *a1;
    v18 = a1[1];

    sub_238031C94();
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v19 = *a1;
    v20 = a1[1];
    (*(v9 + 16))(v13, v15, v8);

    sub_238031C84();
    (*(v9 + 8))(v15, v8);
  }

  v21 = *(a1 + v16[6]);
  v22 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(a2 + *(v22 + 20)) = v21;
  v23 = *(a1 + v16[7]);
  result = sub_237FAD548(a1);
  *(a2 + *(v22 + 24)) = v23;
  return result;
}

uint64_t sub_237FE28D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceActivityData.WebDomainActivity.webDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031CC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.WebDomainActivity.webDomain.setter(uint64_t a1)
{
  v3 = sub_238031CC4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.WebDomainActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DeviceActivityData.WebDomainActivity.init(_:totalActivityDuration:isTrusted:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_238031CC4();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static DeviceActivityData.WebDomainActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383E4DE0]() & 1) != 0 && (v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t DeviceActivityData.WebDomainActivity.hash(into:)()
{
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20]);
  sub_238031E34();
  v1 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  v3 = *(v0 + *(v1 + 24));
  return sub_2380325D4();
}

uint64_t DeviceActivityData.WebDomainActivity.hashValue.getter()
{
  sub_2380325B4();
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20]);
  sub_238031E34();
  v1 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2383E5750](*&v2);
  v3 = *(v0 + *(v1 + 24));
  sub_2380325D4();
  return sub_2380325F4();
}

uint64_t sub_237FE2E10(uint64_t a1, uint64_t a2)
{
  sub_2380325B4();
  sub_238031CC4();
  sub_237FE3B0C(&qword_280C34AD0, MEMORY[0x277CD4B20]);
  sub_238031E34();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x2383E5750](*&v4);
  v5 = *(v2 + *(a2 + 24));
  sub_2380325D4();
  return sub_2380325F4();
}

uint64_t sub_237FE2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x2383E4DE0]() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _DeviceActivityData.WebDomainActivity.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DeviceActivityData.WebDomainActivity.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _DeviceActivityData.WebDomainActivity.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 20);

  return sub_237FE28D4(v3, a1);
}

uint64_t _DeviceActivityData.WebDomainActivity.token.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) + 20);

  return sub_237FAD474(a1, v3);
}

uint64_t _DeviceActivityData.WebDomainActivity.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _DeviceActivityData.WebDomainActivity.isTrusted.setter(char a1)
{
  result = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_237FE31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FE3E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FE31FC(uint64_t a1)
{
  v2 = sub_237FAD2A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FE3238(uint64_t a1)
{
  v2 = sub_237FAD2A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.WebDomainActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5450, &qword_238035420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FAD2A4();
  sub_238032614();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_238032464();
  if (!v2)
  {
    v13 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
    v14 = v13[5];
    v18[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
    sub_237FAD424(&qword_280C34AE8);
    sub_238032454();
    v15 = *(v3 + v13[6]);
    v18[13] = 2;
    sub_238032484();
    v16 = *(v3 + v13[7]);
    v18[12] = 3;
    sub_238032474();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.WebDomainActivity.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_238031ED4();
  v13 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  sub_237FE28D4(v1 + v13[5], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_2380325D4();
    sub_237FAD424(&qword_280C34AE0);
    sub_238031E34();
    (*(v3 + 8))(v6, v2);
  }

  v14 = *(v1 + v13[6]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x2383E5750](*&v14);
  v15 = *(v1 + v13[7]);
  return sub_2380325D4();
}

uint64_t _DeviceActivityData.WebDomainActivity.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)();
  return sub_2380325F4();
}

uint64_t sub_237FE36E8()
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)();
  return sub_2380325F4();
}

uint64_t sub_237FE372C()
{
  sub_2380325B4();
  _DeviceActivityData.WebDomainActivity.hash(into:)();
  return sub_2380325F4();
}

uint64_t _s14DeviceActivity01_aB4DataV09WebDomainB0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B8, &qword_2380343D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2380324E4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v17 = v25[5];
  v18 = *(v13 + 48);
  sub_237FE28D4(a1 + v17, v16);
  sub_237FE28D4(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_237FA5750(v16, &qword_27DEE51B0, &qword_2380343D0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_237FE28D4(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_237FA5750(v16, &qword_27DEE51B8, &qword_2380343D8);
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_237FAD424(&qword_27DEE5090);
  v20 = sub_238031E64();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_237FA5750(v16, &qword_27DEE51B0, &qword_2380343D0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*(a1 + v25[6]) != *(a2 + v25[6]))
  {
    goto LABEL_13;
  }

  v22 = *(a1 + v25[7]) ^ *(a2 + v25[7]) ^ 1;
  return v22 & 1;
}

uint64_t sub_237FE3B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237FE3BC4()
{
  result = sub_238031CC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_237FE3C70()
{
  sub_237FE3D04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237FE3D04()
{
  if (!qword_280C350F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FE8, &unk_238035410);
    v0 = sub_2380321B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280C350F8);
    }
  }
}

unint64_t sub_237FE3D7C()
{
  result = qword_27DEE5480;
  if (!qword_27DEE5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5480);
  }

  return result;
}

unint64_t sub_237FE3DD4()
{
  result = qword_280C34F98;
  if (!qword_280C34F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F98);
  }

  return result;
}

unint64_t sub_237FE3E2C()
{
  result = qword_280C34FA0;
  if (!qword_280C34FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FA0);
  }

  return result;
}

uint64_t sub_237FE3E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238036DA0 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574737572547369 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_2380324E4();

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

uint64_t DeviceActivityDataLocating.localDeviceIdentifierURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DeviceActivityDataLocating.localStartDateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DeviceActivityDataLocating.localFirstWeekdayURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DeviceActivityDataLocating.localDataDirectory(segmentInterval:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  (*(a3 + 40))(a2, a3);
  sub_2380318F4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t DeviceActivityDataLocating.localMetadataURL(segmentInterval:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(a3 + 48))(&v13, a2, a3);
  sub_2380318F4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t DeviceActivityDataLocating.localActivitySegmentsDirectory(segmentInterval:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(a3 + 48))(&v13, a2, a3);
  sub_2380318F4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t DeviceActivityDataLocating.localActivitySegmentURL(segmentInterval:recordName:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v16[0]) = *a1;
  (*(a5 + 64))(v16, a4, a5);
  v16[0] = a2;
  v16[1] = a3;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_237FE48A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_237FE49BC()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_2380318F4();
  v11(v8, v0);
  sub_2380318F4();
  return (v11)(v10, v0);
}

uint64_t DeviceActivityDataLocating.cloudUserDirectory(userAltDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 80))(a3, a4);
  sub_2380318F4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t DeviceActivityDataLocating.cloudDeviceDirectory(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a4;
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a6 + 88))(a1, a2, a5, a6);
  sub_2380318F4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t DeviceActivityDataLocating.cloudDataDirectory(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[0] = a6;
  v20[1] = a8;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a5) = *a5;
  (*(a7 + 96))(a1, a2, a3, a4, v20[0], a7);
  sub_2380318F4();

  return (*(v15 + 8))(v18, v14);
}

uint64_t DeviceActivityDataLocating.cloudMetadataURL(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a6;
  v22 = a8;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a5;
  (*(a7 + 104))(a1, a2, a3, a4, &v23, v21, a7);
  sub_2380318F4();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_237FE5100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_237FACC88(a3, a4, v11);
  sub_2380318F4();

  v14 = *(v7 + 8);
  v14(v11, v6);
  sub_2380318F4();
  return (v14)(v13, v6);
}

uint64_t DeviceActivityDataLocating.cloudActivitySegmentsDirectory(userAltDSID:deviceIdentifier:segmentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a6;
  v22 = a8;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a5;
  (*(a7 + 104))(a1, a2, a3, a4, &v23, v21, a7);
  sub_2380318F4();
  return (*(v15 + 8))(v18, v14);
}

uint64_t DeviceActivityDataLocating.cloudActivitySegmentURL(userAltDSID:deviceIdentifier:segmentInterval:recordName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a8;
  v24 = a6;
  v25 = a9;
  v16 = sub_238031994();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26[0]) = *a5;
  (*(a10 + 120))(a1, a2, a3, a4, v26, v23, a10);
  v26[0] = v24;
  v26[1] = a7;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_237FE559C()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_2380318F4();
  v11(v8, v0);
  sub_2380318F4();
  return (v11)(v10, v0);
}

uint64_t DeviceActivityDataLocating.privateSyncStateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_237FE58C4()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_2380318F4();
  v11(v8, v0);
  sub_2380318F4();
  return (v11)(v10, v0);
}

uint64_t DeviceActivityDataLocating.sharedSyncStateURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DeviceActivityDataLocating.localTimeZoneURL.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  sub_2380318F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_237FE5E74()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_2380318F4();
  return (v8)(v7, v0);
}

uint64_t sub_237FE6028()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_2380318F4();
  return (v8)(v7, v0);
}

uint64_t sub_237FE61F4(unsigned __int8 *a1)
{
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_237FAC7A4();
  sub_2380318F4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_237FE62F8(unsigned __int8 *a1)
{
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_237FAC7A4();
  sub_2380318F4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_237FE6404()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_2380318F4();
  return (v8)(v7, v0);
}

uint64_t sub_237FE65B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a5) = *a5;
  sub_237FACC88(a3, a4, v12);
  sub_2380318F4();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_237FE6718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  LODWORD(a5) = *a5;
  sub_237FACC88(a3, a4, v13);
  sub_2380318F4();

  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_2380318F4();
  return (v16)(v15, v8);
}

uint64_t DeviceActivityDataLocations.baseDirectory.getter()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  return (*(v1 + 8))(v4, v0);
}

void sub_237FE6A40()
{
  v0 = sub_238031994();
  __swift_allocate_value_buffer(v0, qword_280C353C0);
  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_237FE6A8C();
}

void sub_237FE6A8C()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v7 - v2;
  v8 = 1;
  sub_238031EC4();
  v4 = container_system_group_path_for_identifier();

  if (v4)
  {
    v5 = sub_238031994();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_238031924();
    sub_237FE6EC0(v3);
    free(v4);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0xE000000000000000;
    sub_2380322B4();
    MEMORY[0x2383E5050](0xD00000000000002ALL, 0x8000000238037060);
    v7[1] = v8;
    type metadata accessor for container_error_t(0);
    sub_238032354();
    sub_238032364();
    __break(1u);
  }
}

uint64_t sub_237FE6C94()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t getEnumTagSinglePayload for DeviceActivityDataLocations(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceActivityDataLocations(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_237FE6EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FE6F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_23800F1F4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_2380321F4();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_23800F1F4((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12 - 1;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_237FC1560(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_237FC1560(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
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

uint64_t sub_237FE7148(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for _DeviceActivityData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_23800F214(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_23800F214(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_237FAB70C(v10, v12 + v19 + v16 * v14, type metadata accessor for _DeviceActivityData);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void sub_237FE7398(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_238032374())
  {
    v30 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v30;
    v23 = i;
    v24 = a3 & 0xC000000000000001;
    v21 = a5;
    v22 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24)
      {
        v17 = MEMORY[0x2383E5440](v15, a3);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(a3 + 8 * v15 + 32);
      }

      i = v17;
      v29 = v17;
      v27(&v29);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v30 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v21(v18 > 1, v19 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v19 + 1;
      sub_237FAB70C(v13, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v26);
      ++v15;
      if (a5 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_237FE7624(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_237FB5CAC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_237FE7718(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_237FB5E30(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for _DeviceActivityData(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_237FE7844(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id DeviceActivityDataSource.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_237FFCE24(0, &qword_280C356D0, 0x277D77B48);
  *a1 = v2;
  a1[1] = &off_284AE4AE8;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v4 = result;
    v9 = sub_237FFCE24(0, &qword_280C35378, 0x277CB8F48);
    v10 = &off_284AE4B38;
    *&v8 = v4;
    sub_237FB0034(&v8, (a1 + 2));
    v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    a1[10] = sub_237FFCE24(0, &qword_280C35368, 0x277D08280);
    a1[11] = &off_284AE4A88;
    a1[7] = v5;
    a1[15] = &type metadata for DeviceActivityDataStore;
    a1[16] = &protocol witness table for DeviceActivityDataStore;
    v6 = swift_allocObject();
    a1[12] = v6;
    v9 = &type metadata for DeviceActivityDataLocations;
    v10 = &protocol witness table for DeviceActivityDataLocations;
    sub_237FC1C9C(&v8, (v6 + 2));
    v6[9] = [objc_opt_self() defaultManager];
    v7 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v6[10] = v7;
    v6[7] = v2;
    v6[8] = &off_284AE4AE8;
    _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0();
    result = [objc_allocWithZone(MEMORY[0x277D77B48]) init];
    a1[20] = v2;
    a1[21] = &off_284AE4AE8;
    a1[17] = result;
    a1[22] = sub_237FFD10C;
    a1[23] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DeviceActivityDataSource.init(dataStoring:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237FFCE24(0, &qword_280C356D0, 0x277D77B48);
  *a2 = v4;
  a2[1] = &off_284AE4AE8;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v6 = result;
    v10 = sub_237FFCE24(0, &qword_280C35378, 0x277CB8F48);
    v11 = &off_284AE4B38;
    *&v9 = v6;
    sub_237FB0034(&v9, (a2 + 2));
    v7 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    a2[10] = sub_237FFCE24(0, &qword_280C35368, 0x277D08280);
    a2[11] = &off_284AE4A88;
    a2[7] = v7;
    sub_237FC1C9C(a1, (a2 + 12));
    v8 = [objc_allocWithZone(MEMORY[0x277D77B48]) init];
    a2[20] = v4;
    a2[21] = &off_284AE4AE8;
    a2[17] = v8;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    a2[22] = sub_237FFD10C;
    a2[23] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_237FE7BD8()
{
  v0 = [objc_opt_self() newConnection];
  [v0 activate];
  return v0;
}

uint64_t DeviceActivityDataSource.devicesByUser.getter()
{
  v2 = v0;
  v3 = type metadata accessor for _DeviceActivityData.User(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[15];
  v8 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
  v9 = (*(v8 + 128))(v7, v8);
  if (v1)
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v10 = sub_238031DB4();
    __swift_project_value_buffer(v10, qword_280C36C80);
    v11 = v1;
    v12 = sub_238031D94();
    v13 = sub_238032114();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136446210;
      v39[1] = v1;
      v16 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v17 = sub_238031EB4();
      v19 = sub_237FDF8EC(v17, v18, &v40);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_237FA1000, v12, v13, "Couldn't fetch devices by user: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2383E5E30](v15, -1, -1);
      MEMORY[0x2383E5E30](v14, -1, -1);
    }

    v20 = sub_237FD40EC(MEMORY[0x277D84F90]);
  }

  else
  {
    v20 = v9;
  }

  v21 = v2[15];
  v22 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v21);
  v23 = (*(v22 + 120))(v21, v22);
  v25 = v24;
  sub_237FAB488(v6);
  v27 = *v6;
  v26 = v6[1];

  sub_237FAB7D4(v6, type metadata accessor for _DeviceActivityData.User);
  if (v26)
  {
    if (*(v20 + 16) && (v28 = sub_237FA4E8C(v27, v26), (v29 & 1) != 0))
    {
      v30 = *(*(v20 + 56) + 8 * v28);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v31 = v30 + 40;
    v32 = *(v30 + 2) + 1;
    while (--v32)
    {
      if (*(v31 - 1) != v23 || *v31 != v25)
      {
        v31 += 2;
        if ((sub_2380324E4() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_237FB5A94(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = *(v30 + 2);
    v34 = *(v30 + 3);
    if (v35 >= v34 >> 1)
    {
      v30 = sub_237FB5A94((v34 > 1), v35 + 1, 1, v30);
    }

    *(v30 + 2) = v35 + 1;
    v36 = &v30[16 * v35];
    *(v36 + 4) = v23;
    *(v36 + 5) = v25;
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v20;
    sub_237FFBBFC(v30, v27, v26, isUniquelyReferenced_nonNull_native, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

    return v40;
  }

  else
  {
  }

  return v20;
}

uint64_t sub_237FE82DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = (*(v3[1] + 32))();
  v10 = v9;
  result = MGCopyAnswer();
  if (result)
  {
    v16[2] = result;
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v16[0];
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v16[1];
    }

    else
    {
      v14 = 0;
    }

    static DeviceActivityData.Device.Model.current.getter(v16);
    v15 = LOBYTE(v16[0]) - 1;
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v8;
    a3[3] = v10;
    a3[4] = v13;
    a3[5] = v14;
    a3[6] = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237FE8534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E8, &qword_2380358A0);
  __swift_allocate_value_buffer(v0, qword_280C35278);
  v1 = __swift_project_value_buffer(v0, qword_280C35278);
  v2 = type metadata accessor for _DeviceActivityData.User(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t DeviceActivityDataSource.localUser.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  (*(v12 + 8))(&v73, v11, v12);
  if (v74)
  {
    sub_237FB0034(&v73, v76);
    if (qword_280C353A0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v13 = sub_238031DB4();
      __swift_project_value_buffer(v13, qword_280C36C80);
      v14 = sub_238031D94();
      v15 = sub_238032114();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_237FA1000, v14, v15, "Found a primary Apple Account for the local user.", v16, 2u);
        MEMORY[0x2383E5E30](v16, -1, -1);
      }

      v17 = v2[10];
      v18 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v17);
      (*(v18 + 8))(&v73, v17, v18);
      v67 = a1;
      v66 = v10;
      v65 = v8;
      v28 = v74;
      v29 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      v30 = (*(v29 + 8))(v28, v29);
      v2 = v30;
      v31 = *(v30 + 16);
      if (!v31)
      {
        break;
      }

      v32 = 0;
      v33 = v30 + 32;
      while (v32 < v2[2])
      {
        sub_237FC1C9C(v33, &v68);
        v34 = v69;
        v35 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, v69);
        if ((*(v35 + 8))(v34, v35))
        {

          sub_237FB0034(&v68, v71);
          goto LABEL_18;
        }

        ++v32;
        __swift_destroy_boxed_opaque_existential_1Tm(&v68);
        v33 += 40;
        if (v31 == v32)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_16:

    v72 = 0;
    memset(v71, 0, sizeof(v71));
LABEL_18:
    sub_237FA90E4(v71, &v68, &qword_27DEE54A0, &qword_238035788);
    v36 = v69;
    if (v69)
    {
      v37 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v38 = (*(v37 + 16))(v36, v37);
      sub_237FA5750(v71, &qword_27DEE54A0, &qword_238035788);
      __swift_destroy_boxed_opaque_existential_1Tm(&v68);
      v64 = (v38 - 1) < 2;
      __swift_destroy_boxed_opaque_existential_1Tm(&v73);
    }

    else
    {
      sub_237FA5750(v71, &qword_27DEE54A0, &qword_238035788);
      sub_237FA5750(&v68, &qword_27DEE54A0, &qword_238035788);
      __swift_destroy_boxed_opaque_existential_1Tm(&v73);
      v64 = 0;
    }

    v39 = v77;
    v40 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v63 = (*(v40 + 8))(v39, v40);
    v62 = v41;
    v42 = v77;
    v43 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v61 = (*(v43 + 16))(v42, v43);
    v60 = v44;
    v45 = v77;
    v46 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v46 + 24))(v45, v46);
    v48 = v77;
    v47 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v47 + 32))(v48, v47);
    v49 = v77;
    v50 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v50 + 40))(v49, v50);
    v51 = sub_2380317D4();
    v52 = *(*(v51 - 8) + 56);
    v52(v65, 1, 1, v51);
    v53 = v66;
    sub_2380317C4();
    v52(v53, 0, 1, v51);
    v54 = type metadata accessor for _DeviceActivityData.User(0);
    v55 = *(v54 + 24);
    v56 = v67;
    v52(v67 + v55, 1, 1, v51);
    v57 = v62;
    *v56 = v63;
    v56[1] = v57;
    v58 = v60;
    v56[2] = v61;
    v56[3] = v58;
    sub_237FA39BC(v53, v56 + v55, &qword_27DEE5108, &qword_238033EE0);
    *(v56 + *(v54 + 28)) = v64;
    return __swift_destroy_boxed_opaque_existential_1Tm(v76);
  }

  else
  {
    sub_237FA5750(&v73, &qword_27DEE5498, &qword_238035780);
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v19 = sub_238031DB4();
    __swift_project_value_buffer(v19, qword_280C36C80);
    v20 = sub_238031D94();
    v21 = sub_238032114();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_237FA1000, v20, v21, "Did not find a primary Apple Account for the local user.", v22, 2u);
      MEMORY[0x2383E5E30](v22, -1, -1);
    }

    v23 = sub_2380317D4();
    v24 = *(*(v23 - 8) + 56);
    v24(v10, 1, 1, v23);
    v25 = type metadata accessor for _DeviceActivityData.User(0);
    v26 = *(v25 + 24);
    v24(a1 + v26, 1, 1, v23);
    *a1 = 0u;
    *(a1 + 1) = 0u;
    result = sub_237FA39BC(v10, a1 + v26, &qword_27DEE5108, &qword_238033EE0);
    *(a1 + *(v25 + 28)) = 0;
  }

  return result;
}

uint64_t DeviceActivityDataSource.requestActivity(filteredBy:refreshActivity:)(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FE8F20, 0, 0);
}

uint64_t sub_237FE8F20()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 80);
    v2 = sub_238031A64();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_237FE9074;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);

    return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v4, &unk_284AE5AB8);
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = DeviceActivityDataSource.activity(filteredBy:)(*(v0 + 64));
    v9 = *(v0 + 80);

    v10 = *(v0 + 8);

    return v10(v8);
  }
}

uint64_t sub_237FE9074()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  sub_237FA5750(*(v2 + 80), &qword_27DEE51E0, &qword_2380365F0);
  if (v0)
  {
    v5 = sub_237FE9328;
  }

  else
  {
    v5 = sub_237FE91B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237FE91B8()
{
  v1 = v0[9];
  v2 = *(v1 + 184);
  v3 = (*(v1 + 176))();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v0[6] = sub_237FFC7B8;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_237FC0DB8;
  v0[5] = &block_descriptor_0;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v3;

  [v4 proxyFromConnection:v8 withRetryCount:1 proxyHandler:v6];
  _Block_release(v6);

  v9 = v0[12];
  v10 = v0[9];
  v11 = DeviceActivityDataSource.activity(filteredBy:)(v0[8]);
  v12 = v0[10];

  v14 = v0[1];
  if (!v9)
  {
    v13 = v11;
  }

  return v14(v13);
}

uint64_t sub_237FE9328()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t DeviceActivityDataSource.refreshLocalActivity()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FE9428, 0, 0);
}

uint64_t sub_237FE9428()
{
  v1 = v0[3];
  v2 = sub_238031A64();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_237FE9508;
  v5 = v0[2];
  v4 = v0[3];

  return DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(v4, &unk_284AE5AB8);
}

uint64_t sub_237FE9508()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_237FA5750(v3, &qword_27DEE51E0, &qword_2380365F0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237FE967C, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_237FE967C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t DeviceActivityDataSource.activity(filteredBy:)(uint64_t a1)
{
  v128 = a1;
  v3 = type metadata accessor for _DeviceActivityData(0);
  v4 = *(v3 - 8);
  v122 = v3;
  v123 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v119 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v121 = &v117 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v118 = &v117 - v11;
  MEMORY[0x28223BE20](v10);
  v120 = &v117 - v12;
  v13 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _DeviceActivityData.User(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = MEMORY[0x277D84F90];
  sub_237FAB488(v20);
  v21 = v20[1];
  v126 = *v20;

  sub_237FAB7D4(v20, type metadata accessor for _DeviceActivityData.User);
  v22 = v1[15];
  v23 = v1[16];
  v127 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 12, v22);
  v24 = (*(v23 + 120))(v22, v23);
  if (v2)
  {

    v124 = 0;
    v26 = 0;
  }

  else
  {
    v26 = v25;
    v124 = v24;
  }

  v27 = 0;
  v28 = DeviceActivityDataSource.devicesByUser.getter();
  if (v21)
  {
    v29 = v26 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(v28 + 16);

    if (v30 && (v31 = sub_237FA4E8C(v126, v21), (v32 & 1) != 0))
    {
      v117 = v28;
      v23 = *(*(v28 + 56) + 8 * v31);
      v129[0] = v124;
      v129[1] = v26;
      MEMORY[0x28223BE20](v31);
      *(&v117 - 2) = v129;
      swift_bridgeObjectRetain_n();
      v33 = sub_237FDEE8C(sub_237FDFF94, (&v117 - 4), v23);

      if ((v33 & 1) == 0)
      {
        v59 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_62;
        }

        goto LABEL_102;
      }

      v28 = v117;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_238035770;
      *(v23 + 32) = v124;
      *(v23 + 40) = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129[0] = v28;
      sub_237FFBBFC(v23, v126, v21, isUniquelyReferenced_nonNull_native, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

      v28 = v129[0];
    }
  }

  while (1)
  {
    v35 = v128;
    sub_237FFD060(v128, v16, type metadata accessor for DeviceActivityFilter.SegmentInterval);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = sub_238031654();
    (*(*(v36 - 8) + 8))(v16, v36);
    v37 = type metadata accessor for DeviceActivityFilter(0);
    v38 = (v35 + v37[6]);
    v39 = v38[1];
    if (v39)
    {
      v40 = *v38;
      v41 = (v128 + v37[8]);
      v23 = v41[1];
      if (!v23)
      {

        if (!*(v28 + 16))
        {
          goto LABEL_88;
        }

        v51 = sub_237FA4E8C(v40, v39);
        if ((v52 & 1) == 0)
        {
          goto LABEL_88;
        }

        v53 = *(*(v28 + 56) + 8 * v51);
        LOBYTE(v129[0]) = EnumCaseMultiPayload;

        v54 = sub_237FEA514(v40, v39, v53, v128, v129);
        if (!v27)
        {
          v114 = v54;

          v93 = v114;
          goto LABEL_93;
        }

        goto LABEL_32;
      }

      v16 = *v41;
      if (!v21)
      {
        goto LABEL_75;
      }

      if (v40 != v126 || v39 != v21)
      {
        v42 = v37;
        v43 = sub_2380324E4();
        v37 = v42;
        if ((v43 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (!v26)
      {
        goto LABEL_75;
      }

      if (v16 != v124 || v23 != v26)
      {
        v44 = v40;
        v45 = v37;
        v46 = sub_2380324E4();
        v37 = v45;
        if ((v46 & 1) == 0)
        {
          v40 = v44;
LABEL_74:

LABEL_75:

          if (*(v28 + 16))
          {
            v124 = v40;
            v98 = sub_237FA4E8C(v40, v39);
            if (v99)
            {
              v126 = v27;
              v117 = v28;
              v100 = *(*(v28 + 56) + 8 * v98);
              v101 = (v100 + 40);
              v102 = *(v100 + 16) + 1;
              do
              {
                if (!--v102)
                {
                  sub_237FFC764();
                  swift_allocError();
                  *v113 = 2;
                  swift_willThrow();
                  goto LABEL_89;
                }

                if (*(v101 - 1) == v16 && v23 == *v101)
                {
                  break;
                }

                v101 += 2;
              }

              while ((sub_2380324E4() & 1) == 0);
              v104 = v127[15];
              v105 = v127[16];
              __swift_project_boxed_opaque_existential_1(v127 + 12, v104);
              LOBYTE(v129[0]) = EnumCaseMultiPayload;
              v106 = v120;
              v107 = v126;
              (*(v105 + 24))(v124, v39, v16, v23, v129, v104, v105);
              if (v107)
              {
                goto LABEL_89;
              }

              v108 = v118;
              sub_237FFD060(v106, v118, type metadata accessor for _DeviceActivityData);
              v109 = sub_237FB5E30(0, 1, 1, MEMORY[0x277D84F90]);
              v111 = *(v109 + 2);
              v110 = *(v109 + 3);
              if (v111 >= v110 >> 1)
              {
                v109 = sub_237FB5E30(v110 > 1, v111 + 1, 1, v109);
              }

              sub_237FAB7D4(v106, type metadata accessor for _DeviceActivityData);
              *(v109 + 2) = v111 + 1;
              v82 = sub_237FAB70C(v108, &v109[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v111], type metadata accessor for _DeviceActivityData);
              v130 = v109;
              goto LABEL_94;
            }
          }

LABEL_88:
          sub_237FFC764();
          swift_allocError();
          *v112 = 1;
          swift_willThrow();
LABEL_89:

          return v28;
        }
      }
    }

    if (*(v128 + v37[5] + 8))
    {
      break;
    }

    v126 = v27;

    v21 = v28 + 64;
    v55 = 1 << *(v28 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v28 + 64);
    v26 = (v55 + 63) >> 6;

    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    v124 = v26;
    while (v57)
    {
LABEL_43:
      v61 = __clz(__rbit64(v57)) | (v58 << 6);
      v62 = (*(v28 + 48) + 16 * v61);
      v63 = *v62;
      v64 = v62[1];
      v65 = *(*(v28 + 56) + 8 * v61);
      LOBYTE(v129[0]) = EnumCaseMultiPayload;

      v66 = v63;
      v67 = v126;
      v68 = sub_237FEA514(v66, v64, v65, v128, v129);
      v126 = v67;
      if (v67)
      {

        return v28;
      }

      v69 = v68;

      v16 = v69[2];
      v70 = v59;
      v23 = *(v59 + 2);
      v59 = &v16[v23];
      if (__OFADD__(v23, v16))
      {
        goto LABEL_98;
      }

      v71 = v21;
      v72 = v70;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v72;
      if (!v73 || (v75 = *(v72 + 3) >> 1, v75 < v59))
      {
        if (v23 <= v59)
        {
          v76 = &v16[v23];
        }

        else
        {
          v76 = v23;
        }

        v74 = sub_237FB5E30(v73, v76, 1, v72);
        v75 = *(v74 + 24) >> 1;
      }

      v21 = v71;
      v26 = v124;
      if (v69[2])
      {
        v77 = *(v74 + 16);
        if (v75 - v77 < v16)
        {
          goto LABEL_100;
        }

        v78 = v74 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v77;
        v59 = v74;
        swift_arrayInitWithCopy();

        if (v16)
        {
          v79 = *(v59 + 2);
          v80 = __OFADD__(v79, v16);
          v81 = &v16[v79];
          if (v80)
          {
            goto LABEL_101;
          }

          *(v59 + 2) = v81;
        }
      }

      else
      {
        v59 = v74;

        if (v16)
        {
          goto LABEL_99;
        }
      }

      v57 &= v57 - 1;
      v130 = v59;
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v26)
      {

        goto LABEL_94;
      }

      v57 = *(v21 + 8 * v60);
      ++v58;
      if (v57)
      {
        v58 = v60;
        goto LABEL_43;
      }
    }

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
    v23 = sub_237FB5A94(0, *(v23 + 16) + 1, 1, v23);
LABEL_62:
    v87 = *(v23 + 16);
    v86 = *(v23 + 24);
    if (v87 >= v86 >> 1)
    {
      v23 = sub_237FB5A94((v86 > 1), v87 + 1, 1, v23);
    }

    *(v23 + 16) = v87 + 1;
    v88 = v23 + 16 * v87;
    *(v88 + 32) = v124;
    *(v88 + 40) = v26;
    v89 = v117;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v129[0] = v89;
    sub_237FFBBFC(v23, v126, v21, v90, sub_237FCE9B0, sub_237FCD3A4, sub_238012028);

    v28 = v129[0];
    v27 = v59;
  }

  if (!*(v128 + v37[7]))
  {

    v83 = v127[15];
    v84 = v127[16];
    __swift_project_boxed_opaque_existential_1(v127 + 12, v83);
    LOBYTE(v129[0]) = EnumCaseMultiPayload;
    v85 = v121;
    (*(v84 + 16))(v126, v21, v129, v83, v84);
    if (!v27)
    {

      v94 = v119;
      sub_237FFD060(v85, v119, type metadata accessor for _DeviceActivityData);
      v95 = sub_237FB5E30(0, 1, 1, MEMORY[0x277D84F90]);
      v97 = *(v95 + 2);
      v96 = *(v95 + 3);
      if (v97 >= v96 >> 1)
      {
        v95 = sub_237FB5E30(v96 > 1, v97 + 1, 1, v95);
      }

      sub_237FAB7D4(v85, type metadata accessor for _DeviceActivityData);
      *(v95 + 2) = v97 + 1;
      v82 = sub_237FAB70C(v94, &v95[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v97], type metadata accessor for _DeviceActivityData);
      v130 = v95;
      goto LABEL_94;
    }

LABEL_32:

    goto LABEL_89;
  }

  if (v21 && *(v28 + 16) && (, v47 = sub_237FA4E8C(v126, v21), v49 = v48, , (v49 & 1) != 0))
  {

    v50 = *(*(v28 + 56) + 8 * v47);
  }

  else if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_238035770;
    *(v50 + 32) = v124;
    *(v50 + 40) = v26;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  LOBYTE(v129[0]) = EnumCaseMultiPayload;
  v91 = sub_237FEA514(v126, v21, v50, v128, v129);
  if (v27)
  {

    goto LABEL_89;
  }

  v92 = v91;

  v93 = v92;
LABEL_93:
  v82 = sub_237FE7718(v93);
LABEL_94:
  v115 = v130;
  MEMORY[0x28223BE20](v82);
  *(&v117 - 2) = v128;
  v28 = sub_237FE7148(sub_237FFC818, (&v117 - 4), v115);

  return v28;
}

void *sub_237FEA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = v5;
  v77 = a4;
  v75 = a2;
  v79 = a1;
  v10 = type metadata accessor for _DeviceActivityData(0);
  v11 = *(v10 - 8);
  v73 = v10;
  v74 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54F0, &qword_2380358A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v88 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v76 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v71 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  v92 = *a5;
  v26 = v7[15];
  v27 = v7[16];
  __swift_project_boxed_opaque_existential_1(v7 + 12, v26);
  v28 = (*(v27 + 120))(v26, v27);
  if (v6)
  {

    v28 = 0;
    v29 = 0;
  }

  v91 = 0;
  v30 = v75;
  v31 = v73;
  v84 = *(a3 + 16);
  if (v84)
  {
    v80 = v28;
    v87 = v29;
    v32 = 0;
    v89 = *(v74 + 56);
    v90 = v74 + 56;
    v71 = v85 + 48;
    v82 = (v74 + 48);
    v83 = a3 + 32;
    v86 = MEMORY[0x277D84F90];
    v33 = v88;
    v72 = v7;
    while (1)
    {
      v34 = (v83 + 16 * v32);
      v35 = *v34;
      v36 = v34[1];
      v89(v25, 1, 1, v31);
      if (v87 && (v35 == v80 ? (v37 = v87 == v36) : (v37 = 0), v37 || (sub_2380324E4() & 1) != 0))
      {
        v39 = v7[15];
        v38 = v7[16];
        __swift_project_boxed_opaque_existential_1(v7 + 12, v39);
        v93 = v92;
        v40 = v91;
        (*(v38 + 16))(v79, v30, &v93, v39, v38);
        if (v40)
        {

          sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);
          v91 = 0;
          v41 = 1;
        }

        else
        {
          v91 = 0;
          sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);
          v41 = 0;
        }

        v47 = v85;
        v33 = v88;
        v48 = v81;
        v89(v81, v41, 1, v31);
        v49 = v48;
      }

      else
      {
        if (!v30)
        {
          v47 = v85;
          goto LABEL_24;
        }

        v42 = v7[15];
        v43 = v7[16];
        __swift_project_boxed_opaque_existential_1(v7 + 12, v42);
        v94 = v92;
        v44 = *(v43 + 24);

        v45 = v91;
        v44(v79, v30, v35, v36, &v94, v42, v43);
        if (v45)
        {

          sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);
          v91 = 0;
          v46 = 1;
        }

        else
        {
          v91 = 0;
          sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);

          v46 = 0;
        }

        v31 = v73;
        v50 = v76;
        v89(v76, v46, 1, v73);
        v49 = v50;
        v7 = v72;
        v30 = v75;
        v47 = v85;
        v33 = v88;
      }

      sub_237FA5AE0(v49, v25, &qword_27DEE54F0, &qword_2380358A8);
LABEL_24:
      sub_237FA90E4(v25, v33, &qword_27DEE54F0, &qword_2380358A8);
      if ((*v82)(v33, 1, v31) != 1)
      {
        sub_237FAB70C(v33, v47, type metadata accessor for _DeviceActivityData);
        v51 = type metadata accessor for DeviceActivityFilter(0);
        v52 = *(v77 + *(v51 + 28));
        if (!v52)
        {
          goto LABEL_33;
        }

        v53 = v91;
        v54 = sub_237FE6F28(v52);
        v91 = v53;
        v55 = *(v54 + 16);
        if (v55)
        {
          v56 = v54;
          v57 = type metadata accessor for _DeviceActivityData.Metadata(0);
          v58 = v56;
          v30 = v75;
          v59 = *&v71[*(v57 + 28)];
          v60 = 32;
          while (v55)
          {
            v61 = *(v58 + v60);
            v60 += 8;
            --v55;
            if (v61 == v59)
            {
              goto LABEL_30;
            }
          }

          sub_237FAB7D4(v47, type metadata accessor for _DeviceActivityData);
          v69 = v25;
LABEL_40:
          sub_237FA5750(v69, &qword_27DEE54F0, &qword_2380358A8);
LABEL_41:
          v33 = v88;
          goto LABEL_6;
        }

LABEL_30:

        v62 = v77 + *(v51 + 20);
        v63 = v86;
        if ((*(v62 + 8) & 1) == 0 && !*v62)
        {
          v64 = v47 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 24);
          if (*(v64 + *(type metadata accessor for _DeviceActivityData.User(0) + 28)) != 1)
          {
            sub_237FAB7D4(v47, type metadata accessor for _DeviceActivityData);
            v69 = v25;
            goto LABEL_40;
          }

LABEL_33:
          v63 = v86;
        }

        sub_237FFD060(v47, v78, type metadata accessor for _DeviceActivityData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_237FB5E30(0, v63[2] + 1, 1, v63);
        }

        v65 = v63;
        v66 = v63[2];
        v86 = v65;
        v67 = v65[3];
        if (v66 >= v67 >> 1)
        {
          v86 = sub_237FB5E30(v67 > 1, v66 + 1, 1, v86);
        }

        sub_237FAB7D4(v47, type metadata accessor for _DeviceActivityData);
        sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);
        v68 = v86;
        v86[2] = v66 + 1;
        sub_237FAB70C(v78, v68 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v66, type metadata accessor for _DeviceActivityData);
        goto LABEL_41;
      }

      sub_237FA5750(v25, &qword_27DEE54F0, &qword_2380358A8);
      sub_237FA5750(v33, &qword_27DEE54F0, &qword_2380358A8);
LABEL_6:
      if (++v32 == v84)
      {

        return v86;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237FEACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FFD060(a1, v10, type metadata accessor for _DeviceActivityData.Metadata);
  v11 = type metadata accessor for _DeviceActivityData(0);
  v12 = sub_237FDF090(a2, *(a1 + *(v11 + 20)));
  sub_237FFD060(v10, a3, type metadata accessor for _DeviceActivityData.Metadata);
  v15 = v12;

  sub_237FC696C(&v15);
  if (v3)
  {

    __break(1u);
  }

  else
  {

    result = sub_237FAB7D4(v10, type metadata accessor for _DeviceActivityData.Metadata);
    *(a3 + *(v11 + 20)) = v15;
  }

  return result;
}

uint64_t DeviceActivityDataSource.refreshLocalActivity(since:segmentIntervals:)(uint64_t a1, uint64_t a2)
{
  v3[154] = v2;
  v3[153] = a2;
  v3[152] = a1;
  v4 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v3[155] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0) - 8) + 64) + 15;
  v3[162] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8) - 8) + 64) + 15;
  v3[163] = swift_task_alloc();
  v8 = sub_2380316C4();
  v3[164] = v8;
  v9 = *(v8 - 8);
  v3[165] = v9;
  v10 = *(v9 + 64) + 15;
  v3[166] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0) - 8);
  v3[167] = v11;
  v3[168] = *(v11 + 64);
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v12 = sub_238031654();
  v3[177] = v12;
  v13 = *(v12 - 8);
  v3[178] = v13;
  v14 = *(v13 + 64) + 15;
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();
  v3[181] = swift_task_alloc();
  v3[182] = swift_task_alloc();
  v3[183] = swift_task_alloc();
  v3[184] = swift_task_alloc();
  v15 = sub_238031B64();
  v3[185] = v15;
  v16 = *(v15 - 8);
  v3[186] = v16;
  v17 = *(v16 + 64) + 15;
  v3[187] = swift_task_alloc();
  v18 = sub_238031B74();
  v3[188] = v18;
  v19 = *(v18 - 8);
  v3[189] = v19;
  v20 = *(v19 + 64) + 15;
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v21 = *(type metadata accessor for _DeviceActivityData.User(0) - 8);
  v3[192] = v21;
  v3[193] = *(v21 + 64);
  v3[194] = swift_task_alloc();
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0) - 8) + 64) + 15;
  v3[199] = swift_task_alloc();
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();
  v23 = sub_238031A64();
  v3[204] = v23;
  v24 = *(v23 - 8);
  v3[205] = v24;
  v25 = *(v24 + 64) + 15;
  v3[206] = swift_task_alloc();
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[220] = swift_task_alloc();
  v3[221] = swift_task_alloc();
  v3[222] = swift_task_alloc();
  v3[223] = swift_task_alloc();
  v3[224] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237FEB404, 0, 0);
}

uint64_t sub_237FEB404()
{
  v493 = v0;
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1232);
  sub_238031A54();
  v4 = v3[15];
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v4);
  (*(v5 + 136))(v4, v5);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1624);
  v9 = *(v6 + 48);
  if (v9(v8, 1, v7) == 1)
  {
    sub_237FA5750(v8, &qword_27DEE51E0, &qword_2380365F0);
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v10 = sub_238031DB4();
    __swift_project_value_buffer(v10, qword_280C36C50);
    v11 = sub_238031D94();
    v12 = sub_2380320F4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1792);
    v15 = *(v0 + 1640);
    v16 = *(v0 + 1632);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_237FA1000, v11, v12, "Failed to compute local start date", v17, 2u);
      MEMORY[0x2383E5E30](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_45;
  }

  v18 = *(v0 + 1776);
  v452 = *(v0 + 1616);
  v462 = v7;
  v472 = v9;
  v19 = *(v0 + 1584);
  v20 = *(v0 + 1528);
  v21 = v7;
  v22 = *(v0 + 1496);
  v23 = *(v0 + 1488);
  v435 = *(v0 + 1792);
  v443 = *(v0 + 1480);
  v24 = *(v0 + 1232);
  v427 = *(v6 + 32);
  v427(*(v0 + 1784), v8, v21);
  DeviceActivityDataSource.localUser.getter(v19);
  sub_238031B44();
  sub_238031AC4();
  (*(v23 + 104))(v22, *MEMORY[0x277CC9968], v443);
  sub_238031B24();
  (*(v23 + 8))(v22, v443);
  if (v472(v452, 1, v462) == 1)
  {
    sub_237FA5750(*(v0 + 1616), &qword_27DEE51E0, &qword_2380365F0);
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v25 = sub_238031DB4();
    __swift_project_value_buffer(v25, qword_280C36C50);
    v26 = sub_238031D94();
    v27 = sub_2380320F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_237FA1000, v26, v27, "Failed to compute thirty days ago", v28, 2u);
      MEMORY[0x2383E5E30](v28, -1, -1);
    }

    v29 = *(v0 + 1792);
    v30 = *(v0 + 1784);
    v31 = *(v0 + 1776);
    v32 = *(v0 + 1640);
    v33 = *(v0 + 1632);
    v482 = *(v0 + 1584);
    v34 = *(v0 + 1528);
    v35 = *(v0 + 1512);
    v36 = *(v0 + 1504);

    v37 = *(v32 + 8);
    v37(v31, v33);
    (*(v35 + 8))(v34, v36);
    v37(v30, v33);
    v37(v29, v33);
    v38 = v482;
    goto LABEL_44;
  }

  v39 = *(v0 + 1632);
  v40 = *(v0 + 1600);
  v41 = *(v0 + 1216);
  v427(*(v0 + 1768), *(v0 + 1616), v39);
  sub_237FA90E4(v41, v40, &qword_27DEE51E0, &qword_2380365F0);
  if (v472(v40, 1, v39) == 1)
  {
    v463 = *(v0 + 1632);
    v42 = *(v0 + 1608);
    v43 = *(v0 + 1600);
    v44 = *(v0 + 1584);
    v45 = *(v0 + 1224);
    v46 = v3[15];
    v47 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v46);
    (*(v47 + 184))(*v44, v44[1], v45, v46, v47);
    if (v472(v43, 1, v463) != 1)
    {
      sub_237FA5750(*(v0 + 1600), &qword_27DEE51E0, &qword_2380365F0);
    }
  }

  else
  {
    v48 = *(v0 + 1640);
    v49 = *(v0 + 1632);
    v50 = *(v0 + 1608);
    v427(v50, *(v0 + 1600), v49);
    (*(v48 + 56))(v50, 0, 1, v49);
  }

  v51 = *(v0 + 1792);
  v52 = *(v0 + 1784);
  v53 = *(v0 + 1768);
  v54 = *(v0 + 1760);
  v55 = *(v0 + 1752);
  v56 = *(v0 + 1640);
  v57 = *(v0 + 1632);
  sub_237FFCDA8(&qword_280C35028, MEMORY[0x277CC9578]);
  v58 = sub_238031E54();
  v61 = *(v56 + 16);
  v59 = v56 + 16;
  v60 = v61;
  *(v0 + 1800) = v61;
  if (v58)
  {
    v62 = v53;
  }

  else
  {
    v62 = v52;
  }

  v60(v54, v62, v57);
  *(v0 + 1808) = v59 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v464 = v60;
  v60(v55, v51, v57);
  if ((sub_238031A14() & 1) == 0)
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 1792);
    v74 = *(v0 + 1784);
    v75 = *(v0 + 1768);
    v76 = *(v0 + 1664);
    v77 = *(v0 + 1656);
    v78 = *(v0 + 1648);
    v79 = *(v0 + 1632);
    v80 = sub_238031DB4();
    __swift_project_value_buffer(v80, qword_280C36C50);
    v60(v76, v74, v79);
    v60(v77, v75, v79);
    v60(v78, v73, v79);
    v81 = sub_238031D94();
    v421 = sub_238032114();
    v82 = os_log_type_enabled(v81, v421);
    v83 = *(v0 + 1792);
    v84 = *(v0 + 1784);
    v85 = *(v0 + 1776);
    v453 = *(v0 + 1760);
    v465 = *(v0 + 1768);
    v86 = *(v0 + 1664);
    v87 = *(v0 + 1656);
    v428 = *(v0 + 1648);
    v436 = *(v0 + 1752);
    v88 = *(v0 + 1640);
    v89 = *(v0 + 1632);
    v444 = *(v0 + 1608);
    v90 = *(v0 + 1512);
    v91 = *(v0 + 1504);
    v473 = v91;
    v483 = *(v0 + 1528);
    if (v82)
    {
      v417 = *(v0 + 1776);
      v92 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v492[0] = v402;
      *v92 = 136446722;
      sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578]);
      v413 = v83;
      v406 = v90;
      v410 = v84;
      v93 = sub_2380324C4();
      v95 = v94;
      v398 = v81;
      v96 = *(v88 + 8);
      v96(v86, v89);
      v97 = sub_237FDF8EC(v93, v95, v492);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2082;
      v98 = sub_2380324C4();
      v100 = v99;
      v96(v87, v89);
      v101 = sub_237FDF8EC(v98, v100, v492);

      *(v92 + 14) = v101;
      *(v92 + 22) = 2082;
      v102 = sub_2380324C4();
      v104 = v103;
      v96(v428, v89);
      v105 = sub_237FDF8EC(v102, v104, v492);

      *(v92 + 24) = v105;
      _os_log_impl(&dword_237FA1000, v398, v421, "Skipping refresh because query interval has invalid bounds using local start date: %{public}s, thirty days ago: %{public}s, now: %{public}s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v402, -1, -1);
      MEMORY[0x2383E5E30](v92, -1, -1);

      v96(v436, v89);
      v96(v453, v89);
      sub_237FA5750(v444, &qword_27DEE51E0, &qword_2380365F0);
      v96(v465, v89);
      v96(v417, v89);
      (*(v406 + 8))(v483, v473);
      v96(v410, v89);
      v96(v413, v89);
    }

    else
    {

      v109 = *(v88 + 8);
      v109(v428, v89);
      v109(v87, v89);
      v109(v86, v89);
      v109(v436, v89);
      v109(v453, v89);
      sub_237FA5750(v444, &qword_27DEE51E0, &qword_2380365F0);
      v109(v465, v89);
      v109(v85, v89);
      (*(v90 + 8))(v483, v473);
      v109(v84, v89);
      v109(v83, v89);
    }

    goto LABEL_43;
  }

  v63 = *(v0 + 1632);
  v64 = *(v0 + 1592);
  sub_237FA90E4(*(v0 + 1608), v64, &qword_27DEE51E0, &qword_2380365F0);
  v65 = v472(v64, 1, v63);
  v66 = *(v0 + 1760);
  v67 = *(v0 + 1632);
  v68 = *(v0 + 1592);
  if (v65 == 1)
  {
    v69 = *(v0 + 1744);
    sub_237FA5750(*(v0 + 1592), &qword_27DEE51E0, &qword_2380365F0);
    v70 = v69;
    v71 = v66;
    v72 = v67;
LABEL_29:
    v60(v70, v71, v72);
    goto LABEL_32;
  }

  v427(*(v0 + 1736), *(v0 + 1592), *(v0 + 1632));
  if (sub_238031E54())
  {
    v106 = *(v0 + 1760);
    v107 = *(v0 + 1744);
    v108 = *(v0 + 1632);
    (*(*(v0 + 1640) + 8))(*(v0 + 1736), v108);
    v70 = v107;
    v71 = v106;
    v72 = v108;
    goto LABEL_29;
  }

  v427(*(v0 + 1744), *(v0 + 1736), *(v0 + 1632));
LABEL_32:
  v110 = *(v0 + 1752);
  v111 = *(v0 + 1744);
  if ((sub_238031A14() & 1) == 0)
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v128 = *(v0 + 1760);
    v129 = *(v0 + 1752);
    v130 = *(v0 + 1744);
    v131 = *(v0 + 1688);
    v132 = *(v0 + 1680);
    v133 = *(v0 + 1672);
    v134 = *(v0 + 1632);
    v135 = sub_238031DB4();
    __swift_project_value_buffer(v135, qword_280C36C50);
    v60(v131, v130, v134);
    v60(v132, v128, v134);
    v60(v133, v129, v134);
    v136 = sub_238031D94();
    v418 = sub_238032114();
    v137 = os_log_type_enabled(v136, v418);
    v138 = *(v0 + 1792);
    v139 = *(v0 + 1784);
    v140 = *(v0 + 1776);
    v454 = *(v0 + 1760);
    v466 = *(v0 + 1768);
    v429 = *(v0 + 1744);
    v437 = *(v0 + 1752);
    v141 = *(v0 + 1688);
    v142 = *(v0 + 1680);
    v422 = *(v0 + 1672);
    v143 = *(v0 + 1640);
    v144 = *(v0 + 1632);
    v445 = *(v0 + 1608);
    v145 = *(v0 + 1512);
    v146 = *(v0 + 1504);
    v475 = v146;
    v485 = *(v0 + 1528);
    if (v137)
    {
      v414 = *(v0 + 1776);
      v147 = swift_slowAlloc();
      v399 = swift_slowAlloc();
      v492[0] = v399;
      *v147 = 136446722;
      sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578]);
      v403 = v145;
      v407 = v139;
      v148 = sub_2380324C4();
      v150 = v149;
      v151 = *(v143 + 8);
      v151(v141, v144);
      v152 = sub_237FDF8EC(v148, v150, v492);

      *(v147 + 4) = v152;
      *(v147 + 12) = 2082;
      v153 = sub_2380324C4();
      v155 = v154;
      v151(v142, v144);
      v156 = sub_237FDF8EC(v153, v155, v492);

      *(v147 + 14) = v156;
      *(v147 + 22) = 2082;
      v157 = sub_2380324C4();
      v159 = v158;
      v151(v422, v144);
      v160 = sub_237FDF8EC(v157, v159, v492);

      *(v147 + 24) = v160;
      _os_log_impl(&dword_237FA1000, v136, v418, "Skipping refresh because query start: %{public}s, is out of bounds: %{public}s - %{public}s", v147, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v399, -1, -1);
      MEMORY[0x2383E5E30](v147, -1, -1);

      v151(v429, v144);
      v151(v437, v144);
      v151(v454, v144);
      sub_237FA5750(v445, &qword_27DEE51E0, &qword_2380365F0);
      v151(v466, v144);
      v151(v414, v144);
      (*(v403 + 8))(v485, v475);
      v151(v407, v144);
      v151(v138, v144);
    }

    else
    {

      v166 = *(v143 + 8);
      v166(v422, v144);
      v166(v142, v144);
      v166(v141, v144);
      v166(v429, v144);
      v166(v437, v144);
      v166(v454, v144);
      sub_237FA5750(v445, &qword_27DEE51E0, &qword_2380365F0);
      v166(v466, v144);
      v166(v140, v144);
      (*(v145 + 8))(v485, v475);
      v166(v139, v144);
      v166(v138, v144);
    }

LABEL_43:
    v38 = *(v0 + 1584);
LABEL_44:
    sub_237FAB7D4(v38, type metadata accessor for _DeviceActivityData.User);
LABEL_45:
    v167 = *(v0 + 1792);
    v168 = *(v0 + 1784);
    v169 = *(v0 + 1776);
    v170 = *(v0 + 1768);
    v171 = *(v0 + 1760);
    v172 = *(v0 + 1752);
    v173 = *(v0 + 1744);
    v174 = *(v0 + 1736);
    v175 = *(v0 + 1728);
    v176 = *(v0 + 1720);
    v364 = *(v0 + 1712);
    v365 = *(v0 + 1704);
    v366 = *(v0 + 1696);
    v367 = *(v0 + 1688);
    v368 = *(v0 + 1680);
    v369 = *(v0 + 1672);
    v370 = *(v0 + 1664);
    v371 = *(v0 + 1656);
    v372 = *(v0 + 1648);
    v373 = *(v0 + 1624);
    v374 = *(v0 + 1616);
    v375 = *(v0 + 1608);
    v376 = *(v0 + 1600);
    v377 = *(v0 + 1592);
    v378 = *(v0 + 1584);
    v379 = *(v0 + 1576);
    v380 = *(v0 + 1568);
    v381 = *(v0 + 1560);
    v382 = *(v0 + 1552);
    v383 = *(v0 + 1528);
    v384 = *(v0 + 1520);
    v385 = *(v0 + 1496);
    v386 = *(v0 + 1472);
    v387 = *(v0 + 1464);
    v388 = *(v0 + 1456);
    v389 = *(v0 + 1448);
    v390 = *(v0 + 1440);
    v391 = *(v0 + 1432);
    v393 = *(v0 + 1408);
    v395 = *(v0 + 1400);
    v396 = *(v0 + 1392);
    v400 = *(v0 + 1384);
    v404 = *(v0 + 1376);
    v408 = *(v0 + 1368);
    v411 = *(v0 + 1360);
    v415 = *(v0 + 1352);
    v419 = *(v0 + 1328);
    v423 = *(v0 + 1304);
    v430 = *(v0 + 1296);
    v438 = *(v0 + 1288);
    v446 = *(v0 + 1280);
    v455 = *(v0 + 1272);
    v467 = *(v0 + 1264);
    v476 = *(v0 + 1256);
    v486 = *(v0 + 1248);

    v177 = *(v0 + 8);

    return v177();
  }

  if (qword_280C35388 != -1)
  {
LABEL_76:
    swift_once();
  }

  v112 = *(v0 + 1744);
  v113 = *(v0 + 1728);
  v114 = *(v0 + 1632);
  v115 = sub_238031DB4();
  __swift_project_value_buffer(v115, qword_280C36C50);
  v464(v113, v112, v114);
  v116 = sub_238031D94();
  v117 = sub_238032114();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v0 + 1728);
  v120 = *(v0 + 1640);
  v121 = *(v0 + 1632);
  if (v118)
  {
    v122 = swift_slowAlloc();
    v484 = swift_slowAlloc();
    v492[0] = v484;
    *v122 = 136446210;
    sub_237FFCDA8(&qword_280C35020, MEMORY[0x277CC9578]);
    v123 = sub_2380324C4();
    v125 = v124;
    v474 = v117;
    v126 = *(v120 + 8);
    v126(v119, v121);
    v127 = sub_237FDF8EC(v123, v125, v492);

    *(v122 + 4) = v127;
    _os_log_impl(&dword_237FA1000, v116, v474, "Refreshing DeviceActivity starting from: %{public}s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v484);
    MEMORY[0x2383E5E30](v484, -1, -1);
    MEMORY[0x2383E5E30](v122, -1, -1);
  }

  else
  {

    v126 = *(v120 + 8);
    v126(v119, v121);
  }

  *(v0 + 1816) = v126;
  v161 = *(v0 + 1752);
  v162 = *(v0 + 1712);
  v163 = *(v0 + 1632);
  v164 = *(v0 + 1472);
  v165 = *(v0 + 1224);
  v464(*(v0 + 1720), *(v0 + 1744), v163);
  v464(v162, v161, v163);
  sub_238031614();
  v492[0] = v165;

  sub_237FFBA84(v492);
  v179 = v492[0];
  *(v0 + 1824) = v492[0];
  v180 = *(v179 + 2);
  *(v0 + 1832) = v180;
  if (!v180)
  {
    v288 = *(v0 + 1424);

    v191 = *(v288 + 8);
LABEL_69:
    v291 = *(v0 + 1816);
    v460 = *(v0 + 1776);
    v469 = *(v0 + 1784);
    v292 = *(v0 + 1760);
    v293 = *(v0 + 1752);
    v294 = *(v0 + 1744);
    v295 = *(v0 + 1640);
    v296 = *(v0 + 1632);
    v426 = *(v0 + 1608);
    v434 = *(v0 + 1768);
    v479 = *(v0 + 1584);
    v489 = *(v0 + 1792);
    v297 = *(v0 + 1512);
    v298 = *(v0 + 1504);
    v442 = v298;
    v451 = *(v0 + 1528);
    v191(*(v0 + 1472), *(v0 + 1416));
    v291(v294, v296);
    v291(v293, v296);
    v291(v292, v296);
    sub_237FA5750(v426, &qword_27DEE51E0, &qword_2380365F0);
    v291(v434, v296);
    v291(v460, v296);
    (*(v297 + 8))(v451, v442);
    v291(v469, v296);
    v291(v489, v296);
    v38 = v479;
    goto LABEL_44;
  }

  v181 = 0;
  v416 = (v0 + 512);
  v420 = (v0 + 456);
  v409 = (v0 + 568);
  v412 = (v0 + 848);
  v405 = (v0 + 904);
  while (1)
  {
    *(v0 + 1840) = v181;
    v192 = *(v0 + 1824);
    if (v181 >= *(v192 + 16))
    {
      __break(1u);
      goto LABEL_76;
    }

    v193 = *(v0 + 1424);
    v194 = *(v0 + 1416);
    v195 = *(v0 + 1408);
    v196 = *(v193 + 56);
    v197 = *(v192 + v181 + 32);
    *(v0 + 1965) = v197;
    *(v0 + 1848) = v196;
    *(v0 + 1856) = (v193 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v477 = v196;
    v196(v195, 1, 1, v194);
    LODWORD(v464) = v197;
    if (v197)
    {
      if (v197 == 1)
      {
        v198 = *(v0 + 1472);
        v199 = *(v0 + 1464);
        v200 = *(v0 + 1328);
        v201 = *(v0 + 1320);
        v202 = *(v0 + 1312);
        v203 = *(v0 + 1296);
        (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v204 = sub_238031B94();
        (*(*(v204 - 8) + 56))(v203, 1, 1, v204);
        sub_2380316B4();
        DateInterval.rounded(to:)(v200, v199);
        (*(v201 + 8))(v200, v202);
      }

      else
      {
        v219 = *(v0 + 1520);
        v220 = *(v0 + 1512);
        v221 = *(v0 + 1504);
        v222 = *(v0 + 1464);
        v223 = *(v0 + 1328);
        v224 = *(v0 + 1320);
        v449 = *(v0 + 1472);
        v458 = *(v0 + 1312);
        v225 = *(v0 + 1304);
        v226 = *(v0 + 1296);
        sub_238031B44();
        (*(v220 + 56))(v225, 1, 1, v221);
        v227 = sub_238031B94();
        (*(*(v227 - 8) + 56))(v226, 1, 1, v227);
        sub_238031AE4();
        sub_2380316B4();
        DateInterval.rounded(to:)(v223, v222);
        (*(v224 + 8))(v223, v458);
        (*(v220 + 8))(v219, v221);
      }
    }

    else
    {
      v205 = *(v0 + 1720);
      v447 = *(v0 + 1632);
      v456 = *(v0 + 1816);
      v206 = *(v0 + 1472);
      v207 = *(v0 + 1464);
      v208 = *(v0 + 1328);
      v209 = *(v0 + 1320);
      v424 = *(v0 + 1312);
      v210 = *(v0 + 1296);
      v431 = *(v0 + 1640) + 8;
      v439 = *(v0 + 1784);
      v401 = *(*(v0 + 1512) + 56);
      v401(*(v0 + 1304), 1, 1, *(v0 + 1504));
      v211 = sub_238031B94();
      v397 = *(*(v211 - 8) + 56);
      v397(v210, 1, 1, v211);
      sub_2380316B4();
      DateInterval.rounded(to:)(v208, v207);
      v212 = *(v209 + 8);
      v212(v208, v424);
      sub_238031634();
      LOBYTE(v206) = sub_238031A04();
      v456(v205, v447);
      if (v206)
      {
        v448 = v212;
        v213 = *(v0 + 1720);
        v214 = *(v0 + 1464);
        v215 = *(v0 + 1456);
        v432 = *(v0 + 1424);
        v440 = *(v0 + 1416);
        v457 = *(v0 + 1408);
        v392 = *(v0 + 1504);
        v394 = *(v0 + 1400);
        v216 = *(v0 + 1328);
        v425 = *(v0 + 1312);
        v217 = *(v0 + 1304);
        v218 = *(v0 + 1296);
        sub_238031634();
        sub_238031624();
        v401(v217, 1, 1, v392);
        v397(v218, 1, 1, v211);
        sub_2380316B4();
        DateInterval.rounded(to:)(v216, v394);
        v448(v216, v425);
        (*(v432 + 8))(v215, v440);
        sub_237FA5750(v457, &qword_27DEE50C8, &qword_2380357C0);
        v477(v394, 0, 1, v440);
        sub_237FA5AE0(v394, v457, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    v228 = *(v0 + 1424);
    v229 = *(v0 + 1416);
    v230 = *(v0 + 1392);
    sub_237FA90E4(*(v0 + 1408), v230, &qword_27DEE50C8, &qword_2380357C0);
    if ((*(v228 + 48))(v230, 1, v229) == 1)
    {
      v231 = *(v0 + 1560);
      v232 = *(v0 + 1416);
      v233 = *(v0 + 1360);
      v234 = *(v0 + 1232);
      sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
      v477(v233, 1, 1, v232);
      DeviceActivityDataSource.localUser.getter(v231);
      v235 = v234[15];
      v236 = v234[16];
      __swift_project_boxed_opaque_existential_1(v234 + 12, v235);
      v237 = (*(v236 + 120))(v235, v236);
      v238 = *(v0 + 1232);
      sub_237FE82DC(v237, v239, v416);

      v240 = *(v0 + 528);
      *(v0 + 400) = *v416;
      *(v0 + 416) = v240;
      *(v0 + 432) = *(v0 + 544);
      *(v0 + 448) = *(v0 + 560);
      if (v464)
      {
        v241 = *(v0 + 1792);
        v242 = *(v0 + 1560);
        v243 = *(v0 + 1464);
        v244 = *(v0 + 1232);
        v245 = *(v0 + 416);
        *v409 = *(v0 + 400);
        *(v0 + 584) = v245;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v464;
        sub_237FF6740(v242, v409, (v0 + 1960), v243, v241);
        v246 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v246, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v247 = *(v0 + 1464);
        v248 = *(v0 + 1424);
        v249 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v191 = *(v248 + 8);
        v191(v247, v249);
        goto LABEL_51;
      }

      v303 = *(v0 + 1232);
      v304 = v303[15];
      v305 = v303[16];
      __swift_project_boxed_opaque_existential_1(v303 + 12, v304);
      v306 = (*(v305 + 120))(v304, v305);
      v336 = *(v0 + 1560);
      v337 = *(v0 + 1552);
      v338 = *(v0 + 1544);
      v339 = *(v0 + 1536);
      v340 = *(v0 + 1360);
      v341 = *(v0 + 1352);
      v342 = *(v0 + 1344);
      v471 = v342;
      v481 = v341;
      v343 = *(v0 + 1336);
      v344 = *(v0 + 1232);
      *(v0 + 1184) = v306;
      *(v0 + 1192) = v345;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v491 = *(v0 + 1184);
      *(v0 + 1920) = v491;
      v346 = *(v0 + 1192);
      *(v0 + 1928) = v346;
      sub_237FFD060(v336, v337, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v344, v0 + 16);
      sub_237FA90E4(v340, v341, &qword_27DEE50C8, &qword_2380357C0);
      v347 = (*(v339 + 80) + 16) & ~*(v339 + 80);
      v348 = (v338 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
      v349 = (v348 + 199) & 0xFFFFFFFFFFFFFFF8;
      v350 = (*(v343 + 80) + v349 + 56) & ~*(v343 + 80);
      v351 = swift_allocObject();
      *(v0 + 1936) = v351;
      sub_237FAB70C(v337, v351 + v347, type metadata accessor for _DeviceActivityData.User);
      v352 = (v351 + v348);
      v353 = *(v0 + 128);
      v352[6] = *(v0 + 112);
      v352[7] = v353;
      v354 = *(v0 + 96);
      v352[4] = *(v0 + 80);
      v352[5] = v354;
      v355 = *(v0 + 192);
      v352[10] = *(v0 + 176);
      v352[11] = v355;
      v356 = *(v0 + 160);
      v352[8] = *(v0 + 144);
      v352[9] = v356;
      v357 = *(v0 + 32);
      *v352 = *(v0 + 16);
      v352[1] = v357;
      v358 = *(v0 + 64);
      v352[2] = *(v0 + 48);
      v352[3] = v358;
      v359 = v351 + v349;
      *(v359 + 48) = *(v0 + 448);
      v360 = *(v0 + 432);
      *(v359 + 16) = *(v0 + 416);
      *(v359 + 32) = v360;
      *v359 = *(v0 + 400);
      sub_237FA5AE0(v481, v351 + v350, &qword_27DEE50C8, &qword_2380357C0);
      v361 = (v351 + ((v471 + v350 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v361 = v491;
      v361[1] = v346;
      sub_237FFC8DC(v0 + 400, v0 + 624);

      v362 = swift_task_alloc();
      *(v0 + 1944) = v362;
      *v362 = v0;
      v362[1] = sub_237FF2C14;
      v363 = *(v0 + 1232);
      v333 = sub_237FFC8C4;
      v334 = *(v0 + 1464);
      v335 = v351;
LABEL_72:

      return sub_237FF9244(v334, v333, v335);
    }

    v250 = *(v0 + 1784);
    v251 = *(v0 + 1720);
    v252 = *(v0 + 1712);
    v253 = *(v0 + 1632);
    v450 = *(v0 + 1808);
    v459 = *(v0 + 1576);
    v254 = *(v0 + 1448);
    v433 = *(v0 + 1800);
    v441 = *(v0 + 1440);
    v255 = *(v0 + 1424);
    v256 = *(v0 + 1416);
    v257 = *(v0 + 1384);
    v258 = *(v0 + 1232);
    (*(v255 + 32))(v254, *(v0 + 1392), v256);
    v433(v251, v250, v253);
    sub_238031604();
    sub_238031614();
    (*(v255 + 16))(v257, v254, v256);
    v477(v257, 0, 1, v256);
    DeviceActivityDataSource.localUser.getter(v459);
    v259 = v258[15];
    v260 = v258[16];
    __swift_project_boxed_opaque_existential_1(v258 + 12, v259);
    v261 = (*(v260 + 120))(v259, v260);
    v262 = *(v0 + 1232);
    sub_237FE82DC(v261, v263, v412);

    v264 = *(v0 + 864);
    *v420 = *v412;
    *(v0 + 472) = v264;
    *(v0 + 488) = *(v0 + 880);
    *(v0 + 504) = *(v0 + 896);
    if (!v464)
    {
      v299 = *(v0 + 1232);
      v300 = v299[15];
      v301 = v299[16];
      __swift_project_boxed_opaque_existential_1(v299 + 12, v300);
      v302 = (*(v301 + 120))(v300, v301);
      v307 = *(v0 + 1576);
      v308 = *(v0 + 1568);
      v309 = *(v0 + 1544);
      v310 = *(v0 + 1536);
      v311 = *(v0 + 1384);
      v312 = *(v0 + 1376);
      v470 = *(v0 + 1344);
      v480 = v312;
      v461 = *(v0 + 1336);
      v313 = *(v0 + 1232);
      *(v0 + 1200) = v302;
      *(v0 + 1208) = v314;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v490 = *(v0 + 1200);
      *(v0 + 1864) = v490;
      v315 = *(v0 + 1208);
      *(v0 + 1872) = v315;
      sub_237FFD060(v307, v308, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v313, v0 + 208);
      sub_237FA90E4(v311, v312, &qword_27DEE50C8, &qword_2380357C0);
      v316 = (*(v310 + 80) + 16) & ~*(v310 + 80);
      v317 = (v309 + v316 + 7) & 0xFFFFFFFFFFFFFFF8;
      v318 = (v317 + 199) & 0xFFFFFFFFFFFFFFF8;
      v319 = (*(v461 + 80) + v318 + 56) & ~*(v461 + 80);
      v320 = swift_allocObject();
      *(v0 + 1880) = v320;
      sub_237FAB70C(v308, v320 + v316, type metadata accessor for _DeviceActivityData.User);
      v321 = (v320 + v317);
      v322 = *(v0 + 320);
      v321[6] = *(v0 + 304);
      v321[7] = v322;
      v323 = *(v0 + 288);
      v321[4] = *(v0 + 272);
      v321[5] = v323;
      v324 = *(v0 + 384);
      v321[10] = *(v0 + 368);
      v321[11] = v324;
      v325 = *(v0 + 352);
      v321[8] = *(v0 + 336);
      v321[9] = v325;
      v326 = *(v0 + 224);
      *v321 = *(v0 + 208);
      v321[1] = v326;
      v327 = *(v0 + 256);
      v321[2] = *(v0 + 240);
      v321[3] = v327;
      v328 = v320 + v318;
      *(v328 + 48) = *(v0 + 504);
      v329 = *(v0 + 488);
      *(v328 + 16) = *(v0 + 472);
      *(v328 + 32) = v329;
      *v328 = *v420;
      sub_237FA5AE0(v480, v320 + v319, &qword_27DEE50C8, &qword_2380357C0);
      v330 = (v320 + ((v470 + v319 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v330 = v490;
      v330[1] = v315;
      sub_237FFC8DC(v420, v0 + 960);

      v331 = swift_task_alloc();
      *(v0 + 1888) = v331;
      *v331 = v0;
      v331[1] = sub_237FEE484;
      v332 = *(v0 + 1232);
      v333 = sub_237FFD128;
      v334 = *(v0 + 1440);
      v335 = v320;
      goto LABEL_72;
    }

    v265 = *(v0 + 1792);
    v266 = *(v0 + 1576);
    v267 = *(v0 + 1440);
    v268 = *(v0 + 1232);
    v269 = *(v0 + 472);
    *v405 = *v420;
    *(v0 + 920) = v269;
    *(v0 + 936) = *(v0 + 488);
    *(v0 + 952) = *(v0 + 504);
    *(v0 + 1962) = v464;
    sub_237FF6740(v266, v405, (v0 + 1962), v267, v265);
    sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
    sub_237FFC838(v420);
    v270 = *(v0 + 1704);
    v271 = *(v0 + 1696);
    v272 = *(v0 + 1464);
    v273 = *(v0 + 1440);
    sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
    sub_238031604();
    sub_238031604();
    if (sub_238031A04())
    {
      break;
    }

    v182 = *(v0 + 1816);
    v183 = *(v0 + 1704);
    v184 = *(v0 + 1632);
    v487 = *(v0 + 1464);
    v185 = *(v0 + 1448);
    v186 = *(v0 + 1440);
    v187 = *(v0 + 1424);
    v188 = *(v0 + 1416);
    v189 = *(v0 + 1640) + 8;
    v190 = *(v0 + 1408);
    v182(*(v0 + 1696), v184);
    v182(v183, v184);
    v191 = *(v187 + 8);
    v191(v186, v188);
    v191(v185, v188);
    sub_237FA5750(v190, &qword_27DEE50C8, &qword_2380357C0);
    v191(v487, v188);
LABEL_51:
    v181 = *(v0 + 1840) + 1;
    if (v181 == *(v0 + 1832))
    {
      v289 = *(v0 + 1824);

      v290 = *(v0 + 1424) + 8;
      goto LABEL_69;
    }
  }

  v478 = *(v0 + 1848);
  v488 = *(v0 + 1856);
  v468 = *(v0 + 1965);
  v274 = *(v0 + 1808);
  v275 = *(v0 + 1800);
  v276 = *(v0 + 1712);
  v277 = *(v0 + 1704);
  v278 = *(v0 + 1632);
  v279 = *(v0 + 1432);
  v280 = *(v0 + 1416);
  v281 = *(v0 + 1368);
  v275(*(v0 + 1720), *(v0 + 1696), v278);
  v275(v276, v277, v278);
  sub_238031614();
  *(v0 + 1963) = v468;
  v478(v281, 1, 1, v280);
  v282 = swift_task_alloc();
  *(v0 + 1904) = v282;
  *v282 = v0;
  v282[1] = sub_237FF0C78;
  v283 = *(v0 + 1792);
  v284 = *(v0 + 1584);
  v285 = *(v0 + 1432);
  v286 = *(v0 + 1368);
  v287 = *(v0 + 1232);

  return sub_237FF59F0(v284, (v0 + 1963), v285, v286, v283);
}

uint64_t sub_237FEE484()
{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v8 = *v1;
  *(*v1 + 1896) = v0;

  v4 = *(v2 + 1880);
  if (v0)
  {
    v5 = *(v2 + 1872);

    v6 = sub_237FF0708;
  }

  else
  {

    v6 = sub_237FEE5B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237FEE5B4()
{
  v1 = *(v0 + 1576);
  v2 = v1[1];
  v351 = (v0 + 456);
  if (v2)
  {
    v3 = *(v0 + 1896);
    v4 = *(v0 + 1280);
    v5 = *(v0 + 1232);
    v6 = *v1;
    v7 = v5[15];
    v8 = v5[16];
    __swift_project_boxed_opaque_existential_1(v5 + 12, v7);
    v9 = *(v0 + 456);
    v10 = *(v0 + 464);
    *(v0 + 1964) = 0;
    (*(v8 + 56))(v6, v2, v9, v10, v0 + 1964, v7, v8);
    v11 = *(v0 + 1872);
    if (v3)
    {
      v416 = *(v0 + 1864);
      v12 = *(v0 + 1808);
      v13 = *(v0 + 1800);
      v14 = *(v0 + 1792);
      v15 = *(v0 + 1632);
      v16 = *(v0 + 1576);
      v17 = *(v0 + 1288);
      v18 = *(v0 + 1240);

      sub_237FFD060(v16, v17 + v18[6], type metadata accessor for _DeviceActivityData.User);
      v13(v17 + v18[9], v14, v15);
      *(v17 + 16) = xmmword_238033ED0;
      *v17 = v416;
      *(v17 + 8) = v11;
      v19 = v0 + 456;
      sub_237FFC8DC(v351, v0 + 1072);
      sub_237FA38D0(0, 0xF000000000000000);
      *(v17 + 16) = xmmword_238033ED0;
      v20 = v17 + v18[7];
      v21 = *v351;
      v22 = *(v0 + 472);
      v23 = *(v0 + 488);
      *(v20 + 48) = *(v0 + 504);
      *(v20 + 16) = v22;
      *(v20 + 32) = v23;
      *v20 = v21;
      *(v17 + v18[8]) = 0;
    }

    else
    {
      v130 = *(v0 + 1792);
      v131 = *(v0 + 1640);
      v132 = *(v0 + 1632);
      v133 = *(v0 + 1576);
      v134 = *(v0 + 1288);
      v135 = *(v0 + 1280);
      v136 = *(v0 + 1240);
      v137 = *(v0 + 1872);

      sub_237FAB70C(v135, v134, type metadata accessor for _DeviceActivityData.Metadata);
      (*(v131 + 24))(v134 + v136[9], v130, v132);
      sub_237FFC938(v133, v134 + v136[6]);
      v138 = v134 + v136[7];
      v139 = *(v138 + 8);
      v140 = *(v138 + 24);
      v141 = *(v138 + 40);
      v19 = v0 + 456;
      sub_237FFC8DC(v351, v0 + 1128);

      v142 = *v351;
      v143 = *(v0 + 472);
      v144 = *(v0 + 488);
      *(v138 + 48) = *(v0 + 504);
      *(v138 + 16) = v143;
      *(v138 + 32) = v144;
      *v138 = v142;
    }

    v28 = (v0 + 1288);
    v145 = *(v0 + 1288);
    v146 = *(v0 + 1232);
    v147 = v146[15];
    v148 = v146[16];
    __swift_project_boxed_opaque_existential_1(v146 + 12, v147);
    (*(v148 + 64))(v145, v147, v148);
  }

  else
  {
    v417 = *(v0 + 1896);
    v374 = *(v0 + 1864);
    v383 = *(v0 + 1872);
    v24 = *(v0 + 1808);
    v25 = *(v0 + 1800);
    v26 = *(v0 + 1792);
    v27 = *(v0 + 1632);
    v28 = (v0 + 1272);
    v29 = *(v0 + 1272);
    v30 = *(v0 + 1240);
    v31 = *(v0 + 1232);
    v398 = v31[16];
    v407 = v31[15];
    __swift_project_boxed_opaque_existential_1(v31 + 12, v407);
    sub_237FFD060(v1, v29 + v30[6], type metadata accessor for _DeviceActivityData.User);
    v25(v29 + v30[9], v26, v27);
    *(v29 + 16) = xmmword_238033ED0;
    *v29 = v374;
    *(v29 + 8) = v383;
    sub_237FFC8DC(v0 + 456, v0 + 1016);
    sub_237FA38D0(0, 0xF000000000000000);
    *(v29 + 16) = xmmword_238033ED0;
    v32 = v29 + v30[7];
    v33 = *(v0 + 456);
    v34 = *(v0 + 472);
    v35 = *(v0 + 488);
    *(v32 + 48) = *(v0 + 504);
    *(v32 + 16) = v34;
    *(v32 + 32) = v35;
    *v32 = v33;
    *(v29 + v30[8]) = 0;
    (v398[8])(v29, v407);
    v19 = v0 + 456;
    if (v417)
    {
      sub_237FAB7D4(*v28, type metadata accessor for _DeviceActivityData.Metadata);
      v149 = *(v0 + 1576);
      sub_237FFC838(v19);
      sub_237FAB7D4(v149, type metadata accessor for _DeviceActivityData.User);
      v150 = *(v0 + 1824);
      v151 = *(v0 + 1816);
      v400 = *(v0 + 1784);
      v409 = *(v0 + 1792);
      v348 = *(v0 + 1752);
      v352 = *(v0 + 1760);
      v344 = *(v0 + 1744);
      v152 = *(v0 + 1632);
      v357 = *(v0 + 1608);
      v420 = *(v0 + 1584);
      v388 = *(v0 + 1528);
      v393 = *(v0 + 1776);
      v363 = *(v0 + 1512);
      v370 = *(v0 + 1768);
      v379 = *(v0 + 1504);
      v336 = *(v0 + 1464);
      v340 = *(v0 + 1472);
      v153 = *(v0 + 1448);
      v154 = *(v0 + 1440);
      v155 = *(v0 + 1424);
      v156 = *(v0 + 1416);
      v333 = *(v0 + 1408);
      v157 = *(v0 + 1640) + 8;
      sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);

      v158 = *(v155 + 8);
      v158(v154, v156);
      v158(v153, v156);
      sub_237FA5750(v333, &qword_27DEE50C8, &qword_2380357C0);
      v158(v336, v156);
      v158(v340, v156);
      v151(v344, v152);
      v151(v348, v152);
      v151(v352, v152);
      sub_237FA5750(v357, &qword_27DEE51E0, &qword_2380365F0);
      v151(v370, v152);
      v151(v393, v152);
      (*(v363 + 8))(v388, v379);
      v151(v400, v152);
      v151(v409, v152);
      sub_237FAB7D4(v420, type metadata accessor for _DeviceActivityData.User);
      v183 = *(v0 + 1792);
      v184 = *(v0 + 1784);
      v185 = *(v0 + 1776);
      v186 = *(v0 + 1768);
      v187 = *(v0 + 1760);
      v188 = *(v0 + 1752);
      v189 = *(v0 + 1744);
      v190 = *(v0 + 1736);
      v191 = *(v0 + 1728);
      v268 = *(v0 + 1720);
      v270 = *(v0 + 1712);
      v272 = *(v0 + 1704);
      v274 = *(v0 + 1696);
      v276 = *(v0 + 1688);
      v278 = *(v0 + 1680);
      v280 = *(v0 + 1672);
      v282 = *(v0 + 1664);
      v284 = *(v0 + 1656);
      v286 = *(v0 + 1648);
      v288 = *(v0 + 1624);
      v290 = *(v0 + 1616);
      v292 = *(v0 + 1608);
      v294 = *(v0 + 1600);
      v296 = *(v0 + 1592);
      v298 = *(v0 + 1584);
      v300 = *(v0 + 1576);
      v302 = *(v0 + 1568);
      v304 = *(v0 + 1560);
      v306 = *(v0 + 1552);
      v308 = *(v0 + 1528);
      v310 = *(v0 + 1520);
      v312 = *(v0 + 1496);
      v314 = *(v0 + 1472);
      v316 = *(v0 + 1464);
      v318 = *(v0 + 1456);
      v320 = *(v0 + 1448);
      v322 = *(v0 + 1440);
      v325 = *(v0 + 1432);
      v328 = *(v0 + 1408);
      v331 = *(v0 + 1400);
      v335 = *(v0 + 1392);
      v338 = *(v0 + 1384);
      v342 = *(v0 + 1376);
      v346 = *(v0 + 1368);
      v350 = *(v0 + 1360);
      v354 = *(v0 + 1352);
      v359 = *(v0 + 1328);
      v365 = *(v0 + 1304);
      v373 = *(v0 + 1296);
      v382 = *(v0 + 1288);
      v391 = *(v0 + 1280);
      v396 = *(v0 + 1272);
      v403 = *(v0 + 1264);
      v412 = *(v0 + 1256);
      v423 = *(v0 + 1248);

      v192 = *(v0 + 8);
LABEL_26:

      return v192();
    }
  }

  v392 = (v0 + 568);
  v399 = (v0 + 512);
  v323 = (v0 + 904);
  v326 = (v0 + 848);
  v36 = *v28;
  v37 = *(v0 + 1576);
  sub_237FFC838(v19);
  sub_237FAB7D4(v36, type metadata accessor for _DeviceActivityData.Metadata);
  sub_237FAB7D4(v37, type metadata accessor for _DeviceActivityData.User);
  while (2)
  {
    v38 = *(v0 + 1704);
    v39 = *(v0 + 1696);
    v40 = *(v0 + 1464);
    v41 = *(v0 + 1440);
    sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
    sub_238031604();
    sub_238031604();
    if (sub_238031A04())
    {
      v425 = *(v0 + 1856);
      v414 = *(v0 + 1848);
      v405 = *(v0 + 1965);
      v224 = *(v0 + 1808);
      v225 = *(v0 + 1800);
      v226 = *(v0 + 1712);
      v227 = *(v0 + 1704);
      v228 = *(v0 + 1632);
      v229 = *(v0 + 1432);
      v230 = *(v0 + 1416);
      v231 = *(v0 + 1368);
      v225(*(v0 + 1720), *(v0 + 1696), v228);
      v225(v226, v227, v228);
      sub_238031614();
      *(v0 + 1963) = v405;
      v414(v231, 1, 1, v230);
      v232 = swift_task_alloc();
      *(v0 + 1904) = v232;
      *v232 = v0;
      v232[1] = sub_237FF0C78;
      v233 = *(v0 + 1792);
      v234 = *(v0 + 1584);
      v235 = *(v0 + 1432);
      v236 = *(v0 + 1368);
      v237 = *(v0 + 1232);

      return sub_237FF59F0(v234, (v0 + 1963), v235, v236, v233);
    }

    else
    {
      v42 = *(v0 + 1816);
      v43 = *(v0 + 1704);
      v44 = *(v0 + 1632);
      v418 = *(v0 + 1464);
      v45 = *(v0 + 1448);
      v46 = *(v0 + 1440);
      v47 = *(v0 + 1424);
      v48 = *(v0 + 1416);
      v49 = *(v0 + 1640) + 8;
      v50 = *(v0 + 1408);
      v42(*(v0 + 1696), v44);
      v42(v43, v44);
      v51 = *(v47 + 8);
      v51(v46, v48);
      v51(v45, v48);
      sub_237FA5750(v50, &qword_27DEE50C8, &qword_2380357C0);
      for (result = (v51)(v418, v48); ; result = (v51)(v108, v110))
      {
        v53 = *(v0 + 1840) + 1;
        if (v53 == *(v0 + 1832))
        {
          v159 = *(v0 + 1824);

          v160 = *(v0 + 1424) + 8;
          v161 = *(v0 + 1816);
          v421 = *(v0 + 1792);
          v394 = *(v0 + 1776);
          v401 = *(v0 + 1784);
          v371 = *(v0 + 1768);
          v162 = *(v0 + 1760);
          v163 = *(v0 + 1752);
          v164 = *(v0 + 1744);
          v165 = *(v0 + 1640);
          v166 = *(v0 + 1632);
          v167 = *(v0 + 1608);
          v410 = *(v0 + 1584);
          v168 = *(v0 + 1512);
          v380 = *(v0 + 1504);
          v389 = *(v0 + 1528);
          v51(*(v0 + 1472), *(v0 + 1416));
          v161(v164, v166);
          v161(v163, v166);
          v161(v162, v166);
          sub_237FA5750(v167, &qword_27DEE51E0, &qword_2380365F0);
          v161(v371, v166);
          v161(v394, v166);
          (*(v168 + 8))(v389, v380);
          v161(v401, v166);
          v161(v421, v166);
          sub_237FAB7D4(v410, type metadata accessor for _DeviceActivityData.User);
          v169 = *(v0 + 1792);
          v170 = *(v0 + 1784);
          v171 = *(v0 + 1776);
          v172 = *(v0 + 1768);
          v173 = *(v0 + 1760);
          v174 = *(v0 + 1752);
          v175 = *(v0 + 1744);
          v176 = *(v0 + 1736);
          v177 = *(v0 + 1728);
          v178 = *(v0 + 1720);
          v269 = *(v0 + 1712);
          v271 = *(v0 + 1704);
          v273 = *(v0 + 1696);
          v275 = *(v0 + 1688);
          v277 = *(v0 + 1680);
          v279 = *(v0 + 1672);
          v281 = *(v0 + 1664);
          v283 = *(v0 + 1656);
          v285 = *(v0 + 1648);
          v287 = *(v0 + 1624);
          v289 = *(v0 + 1616);
          v291 = *(v0 + 1608);
          v293 = *(v0 + 1600);
          v295 = *(v0 + 1592);
          v297 = *(v0 + 1584);
          v299 = *(v0 + 1576);
          v301 = *(v0 + 1568);
          v303 = *(v0 + 1560);
          v305 = *(v0 + 1552);
          v307 = *(v0 + 1528);
          v309 = *(v0 + 1520);
          v311 = *(v0 + 1496);
          v313 = *(v0 + 1472);
          v315 = *(v0 + 1464);
          v317 = *(v0 + 1456);
          v319 = *(v0 + 1448);
          v321 = *(v0 + 1440);
          v324 = *(v0 + 1432);
          v327 = *(v0 + 1408);
          v330 = *(v0 + 1400);
          v334 = *(v0 + 1392);
          v337 = *(v0 + 1384);
          v341 = *(v0 + 1376);
          v345 = *(v0 + 1368);
          v349 = *(v0 + 1360);
          v353 = *(v0 + 1352);
          v358 = *(v0 + 1328);
          v364 = *(v0 + 1304);
          v372 = *(v0 + 1296);
          v381 = *(v0 + 1288);
          v390 = *(v0 + 1280);
          v395 = *(v0 + 1272);
          v402 = *(v0 + 1264);
          v411 = *(v0 + 1256);
          v422 = *(v0 + 1248);

          v192 = *(v0 + 8);
          goto LABEL_26;
        }

        *(v0 + 1840) = v53;
        v54 = *(v0 + 1824);
        if (v53 >= *(v54 + 16))
        {
          __break(1u);
          return result;
        }

        v55 = *(v0 + 1424);
        v56 = *(v0 + 1416);
        v57 = *(v0 + 1408);
        v58 = *(v55 + 56);
        v59 = *(v54 + v53 + 32);
        *(v0 + 1965) = v59;
        *(v0 + 1848) = v58;
        *(v0 + 1856) = (v55 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v419 = v58;
        v58(v57, 1, 1, v56);
        v408 = v59;
        if (v59)
        {
          if (v59 == 1)
          {
            v60 = *(v0 + 1472);
            v61 = *(v0 + 1464);
            v62 = *(v0 + 1328);
            v63 = *(v0 + 1320);
            v64 = *(v0 + 1312);
            v65 = *(v0 + 1296);
            (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
            v66 = sub_238031B94();
            (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
            sub_2380316B4();
            DateInterval.rounded(to:)(v62, v61);
            (*(v63 + 8))(v62, v64);
          }

          else
          {
            v81 = *(v0 + 1520);
            v82 = *(v0 + 1512);
            v83 = *(v0 + 1504);
            v368 = *(v0 + 1464);
            v84 = *(v0 + 1328);
            v85 = *(v0 + 1320);
            v377 = *(v0 + 1472);
            v386 = *(v0 + 1312);
            v86 = *(v0 + 1304);
            v87 = *(v0 + 1296);
            sub_238031B44();
            (*(v82 + 56))(v86, 1, 1, v83);
            v88 = sub_238031B94();
            (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
            sub_238031AE4();
            sub_2380316B4();
            DateInterval.rounded(to:)(v84, v368);
            (*(v85 + 8))(v84, v386);
            (*(v82 + 8))(v81, v83);
          }
        }

        else
        {
          v67 = *(v0 + 1720);
          v375 = *(v0 + 1632);
          v384 = *(v0 + 1816);
          v68 = *(v0 + 1472);
          v69 = *(v0 + 1464);
          v70 = *(v0 + 1328);
          v71 = *(v0 + 1320);
          v355 = *(v0 + 1312);
          v72 = *(v0 + 1296);
          v360 = *(v0 + 1640) + 8;
          v366 = *(v0 + 1784);
          v347 = *(*(v0 + 1512) + 56);
          v347(*(v0 + 1304), 1, 1, *(v0 + 1504));
          v73 = sub_238031B94();
          v339 = *(*(v73 - 8) + 56);
          v343 = v73;
          v339(v72, 1, 1);
          sub_2380316B4();
          DateInterval.rounded(to:)(v70, v69);
          v332 = *(v71 + 8);
          v332(v70, v355);
          sub_238031634();
          LOBYTE(v68) = sub_238031A04();
          v384(v67, v375);
          if (v68)
          {
            v74 = *(v0 + 1720);
            v75 = *(v0 + 1504);
            v76 = *(v0 + 1464);
            v77 = *(v0 + 1456);
            v376 = *(v0 + 1416);
            v385 = *(v0 + 1408);
            v329 = *(v0 + 1400);
            v78 = *(v0 + 1328);
            v361 = *(v0 + 1312);
            v367 = *(v0 + 1424);
            v79 = *(v0 + 1304);
            v80 = *(v0 + 1296);
            sub_238031634();
            sub_238031624();
            v347(v79, 1, 1, v75);
            (v339)(v80, 1, 1, v343);
            sub_2380316B4();
            DateInterval.rounded(to:)(v78, v329);
            v332(v78, v361);
            (*(v367 + 8))(v77, v376);
            sub_237FA5750(v385, &qword_27DEE50C8, &qword_2380357C0);
            v419(v329, 0, 1, v376);
            sub_237FA5AE0(v329, v385, &qword_27DEE50C8, &qword_2380357C0);
          }
        }

        v89 = *(v0 + 1424);
        v90 = *(v0 + 1416);
        v91 = *(v0 + 1392);
        sub_237FA90E4(*(v0 + 1408), v91, &qword_27DEE50C8, &qword_2380357C0);
        if ((*(v89 + 48))(v91, 1, v90) != 1)
        {
          break;
        }

        v92 = *(v0 + 1560);
        v93 = *(v0 + 1416);
        v94 = *(v0 + 1360);
        v95 = *(v0 + 1232);
        sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
        v419(v94, 1, 1, v93);
        DeviceActivityDataSource.localUser.getter(v92);
        v96 = v95[15];
        v97 = v95[16];
        __swift_project_boxed_opaque_existential_1(v95 + 12, v96);
        v98 = (*(v97 + 120))(v96, v97);
        v99 = *(v0 + 1232);
        sub_237FE82DC(v98, v100, v399);

        v101 = *(v0 + 528);
        *(v0 + 400) = *v399;
        *(v0 + 416) = v101;
        *(v0 + 432) = *(v0 + 544);
        *(v0 + 448) = *(v0 + 560);
        if (!v408)
        {
          v179 = *(v0 + 1232);
          v180 = v179[15];
          v181 = v179[16];
          __swift_project_boxed_opaque_existential_1(v179 + 12, v180);
          v182 = (*(v181 + 120))(v180, v181);
          v193 = *(v0 + 1560);
          v194 = *(v0 + 1552);
          v195 = *(v0 + 1544);
          v196 = *(v0 + 1536);
          v197 = *(v0 + 1360);
          v198 = *(v0 + 1352);
          v199 = *(v0 + 1344);
          v404 = v199;
          v413 = v198;
          v200 = *(v0 + 1336);
          v201 = *(v0 + 1232);
          *(v0 + 1184) = v182;
          *(v0 + 1192) = v202;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v424 = *(v0 + 1184);
          *(v0 + 1920) = v424;
          v203 = *(v0 + 1192);
          *(v0 + 1928) = v203;
          sub_237FFD060(v193, v194, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v201, v0 + 16);
          sub_237FA90E4(v197, v198, &qword_27DEE50C8, &qword_2380357C0);
          v204 = (*(v196 + 80) + 16) & ~*(v196 + 80);
          v205 = (v195 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
          v206 = (v205 + 199) & 0xFFFFFFFFFFFFFFF8;
          v207 = (*(v200 + 80) + v206 + 56) & ~*(v200 + 80);
          v208 = swift_allocObject();
          *(v0 + 1936) = v208;
          sub_237FAB70C(v194, v208 + v204, type metadata accessor for _DeviceActivityData.User);
          v209 = (v208 + v205);
          v210 = *(v0 + 128);
          v209[6] = *(v0 + 112);
          v209[7] = v210;
          v211 = *(v0 + 96);
          v209[4] = *(v0 + 80);
          v209[5] = v211;
          v212 = *(v0 + 192);
          v209[10] = *(v0 + 176);
          v209[11] = v212;
          v213 = *(v0 + 160);
          v209[8] = *(v0 + 144);
          v209[9] = v213;
          v214 = *(v0 + 32);
          *v209 = *(v0 + 16);
          v209[1] = v214;
          v215 = *(v0 + 64);
          v209[2] = *(v0 + 48);
          v209[3] = v215;
          v216 = v208 + v206;
          *(v216 + 48) = *(v0 + 448);
          v217 = *(v0 + 432);
          *(v216 + 16) = *(v0 + 416);
          *(v216 + 32) = v217;
          *v216 = *(v0 + 400);
          sub_237FA5AE0(v413, v208 + v207, &qword_27DEE50C8, &qword_2380357C0);
          v218 = (v208 + ((v404 + v207 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v218 = v424;
          v218[1] = v203;
          sub_237FFC8DC(v0 + 400, v0 + 624);

          v219 = swift_task_alloc();
          *(v0 + 1944) = v219;
          *v219 = v0;
          v219[1] = sub_237FF2C14;
          v220 = *(v0 + 1232);
          v221 = sub_237FFC8C4;
          v222 = *(v0 + 1464);
          v223 = v208;
          goto LABEL_29;
        }

        v102 = *(v0 + 1792);
        v103 = *(v0 + 1560);
        v104 = *(v0 + 1464);
        v105 = *(v0 + 1232);
        v106 = *(v0 + 416);
        *v392 = *(v0 + 400);
        *(v0 + 584) = v106;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v408;
        sub_237FF6740(v103, v392, (v0 + 1960), v104, v102);
        v107 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v107, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v108 = *(v0 + 1464);
        v109 = *(v0 + 1424);
        v110 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v51 = *(v109 + 8);
      }

      v356 = *(v0 + 1784);
      v362 = *(v0 + 1800);
      v111 = *(v0 + 1720);
      v112 = *(v0 + 1712);
      v113 = *(v0 + 1632);
      v378 = *(v0 + 1808);
      v387 = *(v0 + 1576);
      v114 = *(v0 + 1448);
      v369 = *(v0 + 1440);
      v115 = *(v0 + 1424);
      v116 = *(v0 + 1416);
      v117 = *(v0 + 1384);
      v118 = *(v0 + 1232);
      (*(v115 + 32))(v114, *(v0 + 1392), v116);
      v362(v111, v356, v113);
      sub_238031604();
      sub_238031614();
      (*(v115 + 16))(v117, v114, v116);
      v419(v117, 0, 1, v116);
      DeviceActivityDataSource.localUser.getter(v387);
      v119 = v118[15];
      v120 = v118[16];
      __swift_project_boxed_opaque_existential_1(v118 + 12, v119);
      v121 = (*(v120 + 120))(v119, v120);
      v122 = *(v0 + 1232);
      sub_237FE82DC(v121, v123, v326);

      v124 = *(v0 + 864);
      *v351 = *v326;
      *(v0 + 472) = v124;
      *(v0 + 488) = *(v0 + 880);
      *(v0 + 504) = *(v0 + 896);
      if (v408)
      {
        v125 = *(v0 + 1792);
        v126 = *(v0 + 1576);
        v127 = *(v0 + 1440);
        v128 = *(v0 + 1232);
        v129 = *(v0 + 472);
        *v323 = *v351;
        *(v0 + 920) = v129;
        *(v0 + 936) = *(v0 + 488);
        *(v0 + 952) = *(v0 + 504);
        *(v0 + 1962) = v408;
        sub_237FF6740(v126, v323, (v0 + 1962), v127, v125);
        sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v351);
        continue;
      }

      v238 = *(v0 + 1232);
      v239 = v238[15];
      v240 = v238[16];
      __swift_project_boxed_opaque_existential_1(v238 + 12, v239);
      v241 = (*(v240 + 120))(v239, v240);
      v242 = *(v0 + 1576);
      v243 = *(v0 + 1568);
      v244 = *(v0 + 1544);
      v245 = *(v0 + 1536);
      v246 = *(v0 + 1384);
      v247 = *(v0 + 1376);
      v406 = *(v0 + 1344);
      v415 = v247;
      v397 = *(v0 + 1336);
      v248 = *(v0 + 1232);
      *(v0 + 1200) = v241;
      *(v0 + 1208) = v249;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v426 = *(v0 + 1200);
      *(v0 + 1864) = v426;
      v250 = *(v0 + 1208);
      *(v0 + 1872) = v250;
      sub_237FFD060(v242, v243, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v248, v0 + 208);
      sub_237FA90E4(v246, v247, &qword_27DEE50C8, &qword_2380357C0);
      v251 = (*(v245 + 80) + 16) & ~*(v245 + 80);
      v252 = (v244 + v251 + 7) & 0xFFFFFFFFFFFFFFF8;
      v253 = (v252 + 199) & 0xFFFFFFFFFFFFFFF8;
      v254 = (*(v397 + 80) + v253 + 56) & ~*(v397 + 80);
      v255 = swift_allocObject();
      *(v0 + 1880) = v255;
      sub_237FAB70C(v243, v255 + v251, type metadata accessor for _DeviceActivityData.User);
      v256 = (v255 + v252);
      v257 = *(v0 + 320);
      v256[6] = *(v0 + 304);
      v256[7] = v257;
      v258 = *(v0 + 288);
      v256[4] = *(v0 + 272);
      v256[5] = v258;
      v259 = *(v0 + 384);
      v256[10] = *(v0 + 368);
      v256[11] = v259;
      v260 = *(v0 + 352);
      v256[8] = *(v0 + 336);
      v256[9] = v260;
      v261 = *(v0 + 224);
      *v256 = *(v0 + 208);
      v256[1] = v261;
      v262 = *(v0 + 256);
      v256[2] = *(v0 + 240);
      v256[3] = v262;
      v263 = v255 + v253;
      *(v263 + 48) = *(v0 + 504);
      v264 = *(v0 + 488);
      *(v263 + 16) = *(v0 + 472);
      *(v263 + 32) = v264;
      *v263 = *v351;
      sub_237FA5AE0(v415, v255 + v254, &qword_27DEE50C8, &qword_2380357C0);
      v265 = (v255 + ((v406 + v254 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v265 = v426;
      v265[1] = v250;
      sub_237FFC8DC(v351, v0 + 960);

      v266 = swift_task_alloc();
      *(v0 + 1888) = v266;
      *v266 = v0;
      v266[1] = sub_237FEE484;
      v267 = *(v0 + 1232);
      v221 = sub_237FFD128;
      v222 = *(v0 + 1440);
      v223 = v255;
LABEL_29:

      return sub_237FF9244(v222, v221, v223);
    }
  }
}

uint64_t sub_237FF0708()
{
  v83 = v0[237];
  v1 = v0[197];
  sub_237FFC838((v0 + 57));
  sub_237FAB7D4(v1, type metadata accessor for _DeviceActivityData.User);
  v2 = v0[228];
  v3 = v0[227];
  v74 = v0[222];
  v76 = v0[223];
  v60 = v0[219];
  v62 = v0[220];
  v58 = v0[218];
  v4 = v0[204];
  v64 = v0[201];
  v66 = v0[221];
  v78 = v0[198];
  v80 = v0[224];
  v68 = v0[189];
  v70 = v0[188];
  v72 = v0[191];
  v54 = v0[183];
  v56 = v0[184];
  v5 = v0[181];
  v6 = v0[180];
  v7 = v0[178];
  v8 = v0[177];
  v9 = v0[176];
  v10 = v0[205] + 8;
  sub_237FA5750(v0[173], &qword_27DEE50C8, &qword_2380357C0);

  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  sub_237FA5750(v9, &qword_27DEE50C8, &qword_2380357C0);
  v11(v54, v8);
  v11(v56, v8);
  v3(v58, v4);
  v3(v60, v4);
  v3(v62, v4);
  sub_237FA5750(v64, &qword_27DEE51E0, &qword_2380365F0);
  v3(v66, v4);
  v3(v74, v4);
  (*(v68 + 8))(v72, v70);
  v3(v76, v4);
  v3(v80, v4);
  sub_237FAB7D4(v78, type metadata accessor for _DeviceActivityData.User);
  v12 = v0[224];
  v13 = v0[223];
  v14 = v0[222];
  v15 = v0[221];
  v16 = v0[220];
  v17 = v0[219];
  v18 = v0[218];
  v19 = v0[217];
  v20 = v0[216];
  v21 = v0[215];
  v24 = v0[214];
  v25 = v0[213];
  v26 = v0[212];
  v27 = v0[211];
  v28 = v0[210];
  v29 = v0[209];
  v30 = v0[208];
  v31 = v0[207];
  v32 = v0[206];
  v33 = v0[203];
  v34 = v0[202];
  v35 = v0[201];
  v36 = v0[200];
  v37 = v0[199];
  v38 = v0[198];
  v39 = v0[197];
  v40 = v0[196];
  v41 = v0[195];
  v42 = v0[194];
  v43 = v0[191];
  v44 = v0[190];
  v45 = v0[187];
  v46 = v0[184];
  v47 = v0[183];
  v48 = v0[182];
  v49 = v0[181];
  v50 = v0[180];
  v51 = v0[179];
  v52 = v0[176];
  v53 = v0[175];
  v55 = v0[174];
  v57 = v0[173];
  v59 = v0[172];
  v61 = v0[171];
  v63 = v0[170];
  v65 = v0[169];
  v67 = v0[166];
  v69 = v0[163];
  v71 = v0[162];
  v73 = v0[161];
  v75 = v0[160];
  v77 = v0[159];
  v79 = v0[158];
  v81 = v0[157];
  v82 = v0[156];

  v22 = v0[1];

  return v22();
}

uint64_t sub_237FF0C78()
{
  v2 = *v1;
  v3 = *(*v1 + 1904);
  v7 = *v1;
  *(*v1 + 1912) = v0;

  if (v0)
  {
    v4 = *(v2 + 1824);
    sub_237FA5750(*(v2 + 1368), &qword_27DEE50C8, &qword_2380357C0);

    v5 = sub_237FF5474;
  }

  else
  {
    sub_237FA5750(*(v2 + 1368), &qword_27DEE50C8, &qword_2380357C0);
    v5 = sub_237FF0DC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237FF0DC8()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1632);
  v388 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1416);
  v398 = *(v0 + 1408);
  v408 = *(v0 + 1464);
  v7 = *(v0 + 1640) + 8;
  v8 = *(*(v0 + 1424) + 8);
  v8(*(v0 + 1432), v6);
  v1(v3, v4);
  v1(v2, v4);
  v8(v5, v6);
  v8(v388, v6);
  sub_237FA5750(v398, &qword_27DEE50C8, &qword_2380357C0);
  result = (v8)(v408, v6);
  v10 = *(v0 + 1840) + 1;
  if (v10 != *(v0 + 1832))
  {
    v333 = (v0 + 512);
    v338 = (v0 + 456);
    v324 = (v0 + 568);
    v328 = (v0 + 848);
    v320 = (v0 + 904);
    v32 = *(v0 + 1912);
    do
    {
      *(v0 + 1840) = v10;
      v39 = *(v0 + 1824);
      if (v10 >= *(v39 + 16))
      {
        __break(1u);
        return result;
      }

      v40 = *(v0 + 1424);
      v41 = *(v0 + 1416);
      v42 = *(v0 + 1408);
      v43 = *(v40 + 56);
      v44 = *(v39 + v10 + 32);
      *(v0 + 1965) = v44;
      *(v0 + 1848) = v43;
      *(v0 + 1856) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v401 = v43;
      v43(v42, 1, 1, v41);
      v383 = v44;
      v391 = v32;
      if (v44)
      {
        if (v44 == 1)
        {
          v45 = *(v0 + 1472);
          v46 = *(v0 + 1464);
          v47 = *(v0 + 1328);
          v48 = *(v0 + 1320);
          v49 = *(v0 + 1312);
          v50 = *(v0 + 1296);
          (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
          v51 = sub_238031B94();
          (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
          LOBYTE(v250) = 1;
          LOBYTE(v249) = 1;
          v248 = 0;
          LOBYTE(v247) = 0;
          LOBYTE(v246) = 0;
          LOBYTE(v245) = 0;
          LOBYTE(v244) = 0;
          LOBYTE(v243) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v47, v46);
          (*(v48 + 8))(v47, v49);
        }

        else
        {
          v66 = *(v0 + 1520);
          v67 = *(v0 + 1512);
          v68 = *(v0 + 1504);
          v69 = *(v0 + 1464);
          v70 = *(v0 + 1328);
          v71 = *(v0 + 1320);
          v367 = *(v0 + 1472);
          v376 = *(v0 + 1312);
          v72 = *(v0 + 1304);
          v73 = *(v0 + 1296);
          sub_238031B44();
          (*(v67 + 56))(v72, 1, 1, v68);
          v74 = sub_238031B94();
          (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
          LOBYTE(v250) = 1;
          LOBYTE(v249) = 0;
          v248 = sub_238031AE4();
          LOBYTE(v247) = 0;
          LOBYTE(v246) = 0;
          LOBYTE(v245) = 0;
          LOBYTE(v244) = 0;
          LOBYTE(v243) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v70, v69);
          (*(v71 + 8))(v70, v376);
          (*(v67 + 8))(v66, v68);
        }
      }

      else
      {
        v52 = *(v0 + 1720);
        v365 = *(v0 + 1632);
        v374 = *(v0 + 1816);
        v53 = *(v0 + 1472);
        v54 = *(v0 + 1464);
        v55 = *(v0 + 1328);
        v56 = *(v0 + 1320);
        v343 = *(v0 + 1312);
        v57 = *(v0 + 1296);
        v349 = *(v0 + 1640) + 8;
        v357 = *(v0 + 1784);
        v316 = *(*(v0 + 1512) + 56);
        v316(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v58 = sub_238031B94();
        v313 = *(*(v58 - 8) + 56);
        v313(v57, 1, 1, v58);
        LOBYTE(v250) = 1;
        LOBYTE(v249) = 1;
        v248 = 0;
        LOBYTE(v247) = 0;
        LOBYTE(v246) = 0;
        LOBYTE(v245) = 0;
        LOBYTE(v244) = 1;
        LOBYTE(v243) = 1;
        sub_2380316B4();
        DateInterval.rounded(to:)(v55, v54);
        v59 = *(v56 + 8);
        v59(v55, v343);
        sub_238031634();
        LOBYTE(v53) = sub_238031A04();
        v374(v52, v365);
        if (v53)
        {
          v366 = v59;
          v60 = *(v0 + 1720);
          v61 = *(v0 + 1464);
          v62 = *(v0 + 1456);
          v350 = *(v0 + 1424);
          v358 = *(v0 + 1416);
          v375 = *(v0 + 1408);
          v305 = *(v0 + 1504);
          v308 = *(v0 + 1400);
          v63 = *(v0 + 1328);
          v344 = *(v0 + 1312);
          v64 = *(v0 + 1304);
          v65 = *(v0 + 1296);
          sub_238031634();
          sub_238031624();
          v316(v64, 1, 1, v305);
          v313(v65, 1, 1, v58);
          LOBYTE(v250) = 1;
          LOBYTE(v249) = 1;
          v248 = 0;
          LOBYTE(v247) = 0;
          LOBYTE(v246) = 0;
          LOBYTE(v245) = 0;
          LOBYTE(v244) = 1;
          LOBYTE(v243) = 1;
          sub_2380316B4();
          DateInterval.rounded(to:)(v63, v308);
          v366(v63, v344);
          (*(v350 + 8))(v62, v358);
          sub_237FA5750(v375, &qword_27DEE50C8, &qword_2380357C0);
          v401(v308, 0, 1, v358);
          sub_237FA5AE0(v308, v375, &qword_27DEE50C8, &qword_2380357C0);
        }
      }

      v75 = *(v0 + 1424);
      v76 = *(v0 + 1416);
      v77 = *(v0 + 1392);
      sub_237FA90E4(*(v0 + 1408), v77, &qword_27DEE50C8, &qword_2380357C0);
      if ((*(v75 + 48))(v77, 1, v76) == 1)
      {
        v78 = *(v0 + 1560);
        v79 = *(v0 + 1416);
        v80 = *(v0 + 1360);
        v81 = *(v0 + 1232);
        sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
        v401(v80, 1, 1, v79);
        DeviceActivityDataSource.localUser.getter(v78);
        v82 = v81[15];
        v83 = v81[16];
        __swift_project_boxed_opaque_existential_1(v81 + 12, v82);
        v84 = (*(v83 + 120))(v82, v83);
        if (v391)
        {
          v136 = *(v0 + 1824);
          v137 = *(v0 + 1560);
          sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);

          sub_237FAB7D4(v137, type metadata accessor for _DeviceActivityData.User);
          v155 = *(v0 + 1816);
          v393 = *(v0 + 1784);
          v403 = *(v0 + 1792);
          v340 = *(v0 + 1752);
          v346 = *(v0 + 1760);
          v335 = *(v0 + 1744);
          v156 = *(v0 + 1632);
          v353 = *(v0 + 1608);
          v361 = *(v0 + 1768);
          v412 = *(v0 + 1584);
          v379 = *(v0 + 1528);
          v385 = *(v0 + 1776);
          v157 = *(v0 + 1512);
          v370 = *(v0 + 1504);
          v330 = *(v0 + 1472);
          v158 = *(v0 + 1464);
          v159 = *(v0 + 1424);
          v160 = *(v0 + 1416);
          v161 = *(v0 + 1640) + 8;
          sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
          v162 = *(v159 + 8);
          v162(v158, v160);
          v162(v330, v160);
          v155(v335, v156);
          v155(v340, v156);
          v155(v346, v156);
          sub_237FA5750(v353, &qword_27DEE51E0, &qword_2380365F0);
          v155(v361, v156);
          v155(v385, v156);
          (*(v157 + 8))(v379, v370);
          v155(v393, v156);
          v155(v403, v156);
LABEL_24:
          sub_237FAB7D4(v412, type metadata accessor for _DeviceActivityData.User);
          v163 = *(v0 + 1792);
          v164 = *(v0 + 1784);
          v165 = *(v0 + 1776);
          v166 = *(v0 + 1768);
          v167 = *(v0 + 1760);
          v168 = *(v0 + 1752);
          v169 = *(v0 + 1744);
          v170 = *(v0 + 1736);
          v171 = *(v0 + 1728);
          v251 = *(v0 + 1720);
          v253 = *(v0 + 1712);
          v255 = *(v0 + 1704);
          v257 = *(v0 + 1696);
          v259 = *(v0 + 1688);
          v261 = *(v0 + 1680);
          v263 = *(v0 + 1672);
          v265 = *(v0 + 1664);
          v267 = *(v0 + 1656);
          v269 = *(v0 + 1648);
          v271 = *(v0 + 1624);
          v273 = *(v0 + 1616);
          v275 = *(v0 + 1608);
          v277 = *(v0 + 1600);
          v279 = *(v0 + 1592);
          v281 = *(v0 + 1584);
          v283 = *(v0 + 1576);
          v285 = *(v0 + 1568);
          v287 = *(v0 + 1560);
          v289 = *(v0 + 1552);
          v291 = *(v0 + 1528);
          v293 = *(v0 + 1520);
          v295 = *(v0 + 1496);
          v297 = *(v0 + 1472);
          v299 = *(v0 + 1464);
          v301 = *(v0 + 1456);
          v303 = *(v0 + 1448);
          v306 = *(v0 + 1440);
          v309 = *(v0 + 1432);
          v311 = *(v0 + 1408);
          v314 = *(v0 + 1400);
          v318 = *(v0 + 1392);
          v322 = *(v0 + 1384);
          v326 = *(v0 + 1376);
          v331 = *(v0 + 1368);
          v336 = *(v0 + 1360);
          v341 = *(v0 + 1352);
          v347 = *(v0 + 1328);
          v354 = *(v0 + 1304);
          v362 = *(v0 + 1296);
          v371 = *(v0 + 1288);
          v380 = *(v0 + 1280);
          v386 = *(v0 + 1272);
          v394 = *(v0 + 1264);
          v404 = *(v0 + 1256);
          v413 = *(v0 + 1248);

          v31 = *(v0 + 8);
          goto LABEL_25;
        }

        v86 = *(v0 + 1232);
        sub_237FE82DC(v84, v85, v333);

        v87 = *(v0 + 528);
        *(v0 + 400) = *v333;
        *(v0 + 416) = v87;
        *(v0 + 432) = *(v0 + 544);
        *(v0 + 448) = *(v0 + 560);
        if (!v383)
        {
          v151 = *(v0 + 1232);
          v152 = v151[15];
          v153 = v151[16];
          __swift_project_boxed_opaque_existential_1(v151 + 12, v152);
          v154 = (*(v153 + 120))(v152, v153);
          v215 = *(v0 + 1560);
          v216 = *(v0 + 1552);
          v217 = *(v0 + 1544);
          v218 = *(v0 + 1536);
          v219 = *(v0 + 1360);
          v220 = *(v0 + 1352);
          v221 = *(v0 + 1344);
          v397 = v221;
          v407 = v220;
          v222 = *(v0 + 1336);
          v223 = *(v0 + 1232);
          *(v0 + 1184) = v154;
          *(v0 + 1192) = v224;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v416 = *(v0 + 1184);
          *(v0 + 1920) = v416;
          v225 = *(v0 + 1192);
          *(v0 + 1928) = v225;
          sub_237FFD060(v215, v216, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v223, v0 + 16);
          sub_237FA90E4(v219, v220, &qword_27DEE50C8, &qword_2380357C0);
          v226 = (*(v218 + 80) + 16) & ~*(v218 + 80);
          v227 = (v217 + v226 + 7) & 0xFFFFFFFFFFFFFFF8;
          v228 = (v227 + 199) & 0xFFFFFFFFFFFFFFF8;
          v229 = (*(v222 + 80) + v228 + 56) & ~*(v222 + 80);
          v230 = swift_allocObject();
          *(v0 + 1936) = v230;
          sub_237FAB70C(v216, v230 + v226, type metadata accessor for _DeviceActivityData.User);
          v231 = (v230 + v227);
          v232 = *(v0 + 128);
          v231[6] = *(v0 + 112);
          v231[7] = v232;
          v233 = *(v0 + 96);
          v231[4] = *(v0 + 80);
          v231[5] = v233;
          v234 = *(v0 + 192);
          v231[10] = *(v0 + 176);
          v231[11] = v234;
          v235 = *(v0 + 160);
          v231[8] = *(v0 + 144);
          v231[9] = v235;
          v236 = *(v0 + 32);
          *v231 = *(v0 + 16);
          v231[1] = v236;
          v237 = *(v0 + 64);
          v231[2] = *(v0 + 48);
          v231[3] = v237;
          v238 = v230 + v228;
          *(v238 + 48) = *(v0 + 448);
          v239 = *(v0 + 432);
          *(v238 + 16) = *(v0 + 416);
          *(v238 + 32) = v239;
          *v238 = *(v0 + 400);
          sub_237FA5AE0(v407, v230 + v229, &qword_27DEE50C8, &qword_2380357C0);
          v240 = (v230 + ((v397 + v229 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v240 = v416;
          v240[1] = v225;
          sub_237FFC8DC(v0 + 400, v0 + 624);

          v241 = swift_task_alloc();
          *(v0 + 1944) = v241;
          *v241 = v0;
          v241[1] = sub_237FF2C14;
          v242 = *(v0 + 1232);
          v212 = sub_237FFC8C4;
          v213 = *(v0 + 1464);
          v214 = v230;
          goto LABEL_31;
        }

        v88 = *(v0 + 1792);
        v89 = *(v0 + 1560);
        v90 = *(v0 + 1464);
        v91 = *(v0 + 1232);
        v92 = *(v0 + 416);
        *v324 = *(v0 + 400);
        *(v0 + 584) = v92;
        *(v0 + 600) = *(v0 + 432);
        *(v0 + 616) = *(v0 + 448);
        *(v0 + 1960) = v383;
        sub_237FF6740(v89, v324, (v0 + 1960), v90, v88);
        v93 = *(v0 + 1560);
        sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
        sub_237FAB7D4(v93, type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v0 + 400);
        v94 = *(v0 + 1464);
        v95 = *(v0 + 1424);
        v96 = *(v0 + 1416);
        sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
        v8 = *(v95 + 8);
        result = (v8)(v94, v96, v97, v98, v99, v100, v101, v102, 0, v243, 0, v244, 0, v245, 0, v246, 0, v247, v248, v249, 0, v250);
      }

      else
      {
        v103 = *(v0 + 1784);
        v104 = *(v0 + 1720);
        v105 = *(v0 + 1712);
        v106 = *(v0 + 1632);
        v368 = *(v0 + 1808);
        v377 = *(v0 + 1576);
        v107 = *(v0 + 1448);
        v351 = *(v0 + 1800);
        v359 = *(v0 + 1440);
        v108 = *(v0 + 1424);
        v109 = *(v0 + 1416);
        v110 = *(v0 + 1384);
        v111 = *(v0 + 1232);
        (*(v108 + 32))(v107, *(v0 + 1392), v109);
        v351(v104, v103, v106);
        sub_238031604();
        sub_238031614();
        (*(v108 + 16))(v110, v107, v109);
        v401(v110, 0, 1, v109);
        DeviceActivityDataSource.localUser.getter(v377);
        v112 = v111[15];
        v113 = v111[16];
        __swift_project_boxed_opaque_existential_1(v111 + 12, v112);
        v114 = (*(v113 + 120))(v112, v113);
        if (v391)
        {
          sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
          v142 = *(v0 + 1824);
          v143 = *(v0 + 1816);
          v392 = *(v0 + 1784);
          v402 = *(v0 + 1792);
          v334 = *(v0 + 1752);
          v339 = *(v0 + 1760);
          v329 = *(v0 + 1744);
          v144 = *(v0 + 1632);
          v345 = *(v0 + 1608);
          v412 = *(v0 + 1584);
          v378 = *(v0 + 1528);
          v384 = *(v0 + 1776);
          v352 = *(v0 + 1512);
          v360 = *(v0 + 1768);
          v369 = *(v0 + 1504);
          v321 = *(v0 + 1464);
          v325 = *(v0 + 1472);
          v145 = *(v0 + 1448);
          v146 = *(v0 + 1440);
          v147 = *(v0 + 1424);
          v148 = *(v0 + 1416);
          v317 = *(v0 + 1408);
          v149 = *(v0 + 1640) + 8;
          sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);

          v150 = *(v147 + 8);
          v150(v146, v148);
          v150(v145, v148);
          sub_237FA5750(v317, &qword_27DEE50C8, &qword_2380357C0);
          v150(v321, v148);
          v150(v325, v148);
          v143(v329, v144);
          v143(v334, v144);
          v143(v339, v144);
          sub_237FA5750(v345, &qword_27DEE51E0, &qword_2380365F0);
          v143(v360, v144);
          v143(v384, v144);
          (*(v352 + 8))(v378, v369);
          v143(v392, v144);
          v143(v402, v144);
          goto LABEL_24;
        }

        v116 = *(v0 + 1232);
        sub_237FE82DC(v114, v115, v328);

        v117 = *(v0 + 864);
        *v338 = *v328;
        *(v0 + 472) = v117;
        *(v0 + 488) = *(v0 + 880);
        *(v0 + 504) = *(v0 + 896);
        if (!v383)
        {
          v138 = *(v0 + 1232);
          v139 = v138[15];
          v140 = v138[16];
          __swift_project_boxed_opaque_existential_1(v138 + 12, v139);
          v141 = (*(v140 + 120))(v139, v140);
          v186 = *(v0 + 1576);
          v187 = *(v0 + 1568);
          v188 = *(v0 + 1544);
          v189 = *(v0 + 1536);
          v190 = *(v0 + 1384);
          v191 = *(v0 + 1376);
          v396 = *(v0 + 1344);
          v406 = v191;
          v387 = *(v0 + 1336);
          v192 = *(v0 + 1232);
          *(v0 + 1200) = v141;
          *(v0 + 1208) = v193;
          MEMORY[0x2383E5050](95, 0xE100000000000000);
          MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
          v415 = *(v0 + 1200);
          *(v0 + 1864) = v415;
          v194 = *(v0 + 1208);
          *(v0 + 1872) = v194;
          sub_237FFD060(v186, v187, type metadata accessor for _DeviceActivityData.User);
          sub_237FFC88C(v192, v0 + 208);
          sub_237FA90E4(v190, v191, &qword_27DEE50C8, &qword_2380357C0);
          v195 = (*(v189 + 80) + 16) & ~*(v189 + 80);
          v196 = (v188 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
          v197 = (v196 + 199) & 0xFFFFFFFFFFFFFFF8;
          v198 = (*(v387 + 80) + v197 + 56) & ~*(v387 + 80);
          v199 = swift_allocObject();
          *(v0 + 1880) = v199;
          sub_237FAB70C(v187, v199 + v195, type metadata accessor for _DeviceActivityData.User);
          v200 = (v199 + v196);
          v201 = *(v0 + 320);
          v200[6] = *(v0 + 304);
          v200[7] = v201;
          v202 = *(v0 + 288);
          v200[4] = *(v0 + 272);
          v200[5] = v202;
          v203 = *(v0 + 384);
          v200[10] = *(v0 + 368);
          v200[11] = v203;
          v204 = *(v0 + 352);
          v200[8] = *(v0 + 336);
          v200[9] = v204;
          v205 = *(v0 + 224);
          *v200 = *(v0 + 208);
          v200[1] = v205;
          v206 = *(v0 + 256);
          v200[2] = *(v0 + 240);
          v200[3] = v206;
          v207 = v199 + v197;
          *(v207 + 48) = *(v0 + 504);
          v208 = *(v0 + 488);
          *(v207 + 16) = *(v0 + 472);
          *(v207 + 32) = v208;
          *v207 = *v338;
          sub_237FA5AE0(v406, v199 + v198, &qword_27DEE50C8, &qword_2380357C0);
          v209 = (v199 + ((v396 + v198 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v209 = v415;
          v209[1] = v194;
          sub_237FFC8DC(v338, v0 + 960);

          v210 = swift_task_alloc();
          *(v0 + 1888) = v210;
          *v210 = v0;
          v210[1] = sub_237FEE484;
          v211 = *(v0 + 1232);
          v212 = sub_237FFD128;
          v213 = *(v0 + 1440);
          v214 = v199;
LABEL_31:

          return sub_237FF9244(v213, v212, v214);
        }

        v118 = *(v0 + 1792);
        v119 = *(v0 + 1576);
        v120 = *(v0 + 1440);
        v121 = *(v0 + 1232);
        v122 = *(v0 + 472);
        *v320 = *v338;
        *(v0 + 920) = v122;
        *(v0 + 936) = *(v0 + 488);
        *(v0 + 952) = *(v0 + 504);
        *(v0 + 1962) = v383;
        sub_237FF6740(v119, v320, (v0 + 1962), v120, v118);
        sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
        sub_237FFC838(v338);
        v123 = *(v0 + 1704);
        v124 = *(v0 + 1696);
        v125 = *(v0 + 1464);
        v126 = *(v0 + 1440);
        sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
        sub_238031604();
        sub_238031604();
        if (sub_238031A04())
        {
          v405 = *(v0 + 1848);
          v414 = *(v0 + 1856);
          v395 = *(v0 + 1965);
          v172 = *(v0 + 1808);
          v173 = *(v0 + 1800);
          v174 = *(v0 + 1712);
          v175 = *(v0 + 1704);
          v176 = *(v0 + 1632);
          v177 = *(v0 + 1432);
          v178 = *(v0 + 1416);
          v179 = *(v0 + 1368);
          v173(*(v0 + 1720), *(v0 + 1696), v176);
          v173(v174, v175, v176);
          sub_238031614();
          *(v0 + 1963) = v395;
          v405(v179, 1, 1, v178);
          v180 = swift_task_alloc();
          *(v0 + 1904) = v180;
          *v180 = v0;
          v180[1] = sub_237FF0C78;
          v181 = *(v0 + 1792);
          v182 = *(v0 + 1584);
          v183 = *(v0 + 1432);
          v184 = *(v0 + 1368);
          v185 = *(v0 + 1232);

          return sub_237FF59F0(v182, (v0 + 1963), v183, v184, v181);
        }

        v127 = *(v0 + 1816);
        v128 = *(v0 + 1704);
        v129 = *(v0 + 1632);
        v411 = *(v0 + 1464);
        v130 = *(v0 + 1448);
        v131 = *(v0 + 1440);
        v132 = *(v0 + 1424);
        v133 = *(v0 + 1416);
        v134 = *(v0 + 1640) + 8;
        v135 = *(v0 + 1408);
        v127(*(v0 + 1696), v129);
        v127(v128, v129);
        v8 = *(v132 + 8);
        v8(v131, v133);
        v8(v130, v133);
        sub_237FA5750(v135, &qword_27DEE50C8, &qword_2380357C0);
        result = (v8)(v411, v133, v33, v34, v35, v36, v37, v38, 0, v243, 0, v244, 0, v245, 0, v246, 0, v247, v248, v249, 0, v250);
      }

      v32 = 0;
      v10 = *(v0 + 1840) + 1;
    }

    while (v10 != *(v0 + 1832));
  }

  v11 = *(v0 + 1824);

  v12 = *(v0 + 1424) + 8;
  v13 = *(v0 + 1816);
  v381 = *(v0 + 1776);
  v389 = *(v0 + 1784);
  v14 = *(v0 + 1760);
  v15 = *(v0 + 1752);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1632);
  v19 = *(v0 + 1608);
  v399 = *(v0 + 1584);
  v409 = *(v0 + 1792);
  v372 = *(v0 + 1528);
  v20 = *(v0 + 1512);
  v355 = *(v0 + 1768);
  v363 = *(v0 + 1504);
  v8(*(v0 + 1472), *(v0 + 1416));
  v13(v16, v18);
  v13(v15, v18);
  v13(v14, v18);
  sub_237FA5750(v19, &qword_27DEE51E0, &qword_2380365F0);
  v13(v355, v18);
  v13(v381, v18);
  (*(v20 + 8))(v372, v363);
  v13(v389, v18);
  v13(v409, v18);
  sub_237FAB7D4(v399, type metadata accessor for _DeviceActivityData.User);
  v21 = *(v0 + 1792);
  v22 = *(v0 + 1784);
  v23 = *(v0 + 1776);
  v24 = *(v0 + 1768);
  v25 = *(v0 + 1760);
  v26 = *(v0 + 1752);
  v27 = *(v0 + 1744);
  v28 = *(v0 + 1736);
  v29 = *(v0 + 1728);
  v30 = *(v0 + 1720);
  v252 = *(v0 + 1712);
  v254 = *(v0 + 1704);
  v256 = *(v0 + 1696);
  v258 = *(v0 + 1688);
  v260 = *(v0 + 1680);
  v262 = *(v0 + 1672);
  v264 = *(v0 + 1664);
  v266 = *(v0 + 1656);
  v268 = *(v0 + 1648);
  v270 = *(v0 + 1624);
  v272 = *(v0 + 1616);
  v274 = *(v0 + 1608);
  v276 = *(v0 + 1600);
  v278 = *(v0 + 1592);
  v280 = *(v0 + 1584);
  v282 = *(v0 + 1576);
  v284 = *(v0 + 1568);
  v286 = *(v0 + 1560);
  v288 = *(v0 + 1552);
  v290 = *(v0 + 1528);
  v292 = *(v0 + 1520);
  v294 = *(v0 + 1496);
  v296 = *(v0 + 1472);
  v298 = *(v0 + 1464);
  v300 = *(v0 + 1456);
  v302 = *(v0 + 1448);
  v304 = *(v0 + 1440);
  v307 = *(v0 + 1432);
  v310 = *(v0 + 1408);
  v312 = *(v0 + 1400);
  v315 = *(v0 + 1392);
  v319 = *(v0 + 1384);
  v323 = *(v0 + 1376);
  v327 = *(v0 + 1368);
  v332 = *(v0 + 1360);
  v337 = *(v0 + 1352);
  v342 = *(v0 + 1328);
  v348 = *(v0 + 1304);
  v356 = *(v0 + 1296);
  v364 = *(v0 + 1288);
  v373 = *(v0 + 1280);
  v382 = *(v0 + 1272);
  v390 = *(v0 + 1264);
  v400 = *(v0 + 1256);
  v410 = *(v0 + 1248);

  v31 = *(v0 + 8);
LABEL_25:

  return v31();
}

uint64_t sub_237FF2C14()
{
  v2 = *v1;
  v3 = *(*v1 + 1944);
  v10 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v4 = v2[242];
    v5 = v2[241];
    v6 = v2[228];

    v7 = sub_237FF4F4C;
  }

  else
  {
    v8 = v2[242];

    v7 = sub_237FF2D58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237FF2D58()
{
  v1 = *(v0 + 1560);
  v2 = v1[1];
  if (v2)
  {
    v3 = *(v0 + 1952);
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1232);
    v6 = *v1;
    v7 = v5[15];
    v8 = v5[16];
    __swift_project_boxed_opaque_existential_1(v5 + 12, v7);
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    *(v0 + 1961) = 0;
    (*(v8 + 56))(v6, v2, v9, v10, v0 + 1961, v7, v8);
    v11 = *(v0 + 1928);
    if (v3)
    {
      v421 = *(v0 + 1920);
      v12 = *(v0 + 1808);
      v13 = *(v0 + 1800);
      v14 = *(v0 + 1792);
      v15 = *(v0 + 1632);
      v16 = *(v0 + 1560);
      v17 = *(v0 + 1264);
      v18 = *(v0 + 1240);

      sub_237FFD060(v16, v17 + v18[6], type metadata accessor for _DeviceActivityData.User);
      v13(v17 + v18[9], v14, v15);
      *(v17 + 16) = xmmword_238033ED0;
      *v17 = v421;
      *(v17 + 8) = v11;
      sub_237FFC8DC(v0 + 400, v0 + 736);
      sub_237FA38D0(0, 0xF000000000000000);
      *(v17 + 16) = xmmword_238033ED0;
      v19 = v17 + v18[7];
      v20 = *(v0 + 400);
      v21 = *(v0 + 416);
      v22 = *(v0 + 432);
      *(v19 + 48) = *(v0 + 448);
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      *(v17 + v18[8]) = 0;
    }

    else
    {
      v38 = *(v0 + 1792);
      v39 = *(v0 + 1640);
      v40 = *(v0 + 1632);
      v41 = *(v0 + 1560);
      v42 = *(v0 + 1264);
      v43 = *(v0 + 1256);
      v44 = *(v0 + 1240);
      v45 = *(v0 + 1928);

      sub_237FAB70C(v43, v42, type metadata accessor for _DeviceActivityData.Metadata);
      (*(v39 + 24))(v42 + v44[9], v38, v40);
      sub_237FFC938(v41, v42 + v44[6]);
      v46 = v42 + v44[7];
      v47 = *(v46 + 8);
      v48 = *(v46 + 24);
      v49 = *(v46 + 40);
      sub_237FFC8DC(v0 + 400, v0 + 792);

      v50 = *(v0 + 400);
      v51 = *(v0 + 416);
      v52 = *(v0 + 432);
      *(v46 + 48) = *(v0 + 448);
      *(v46 + 16) = v51;
      *(v46 + 32) = v52;
      *v46 = v50;
    }

    v53 = *(v0 + 1264);
    v54 = *(v0 + 1232);
    v55 = v54[15];
    v56 = v54[16];
    __swift_project_boxed_opaque_existential_1(v54 + 12, v55);
    (*(v56 + 64))(v53, v55, v56);
    v79 = (v0 + 1264);
  }

  else
  {
    v422 = *(v0 + 1952);
    v394 = *(v0 + 1920);
    v404 = *(v0 + 1928);
    v23 = *(v0 + 1808);
    v24 = *(v0 + 1800);
    v25 = *(v0 + 1792);
    v26 = *(v0 + 1632);
    v27 = *(v0 + 1248);
    v28 = *(v0 + 1240);
    v29 = *(v0 + 1232);
    v30 = v29[15];
    v31 = v29[16];
    __swift_project_boxed_opaque_existential_1(v29 + 12, v30);
    sub_237FFD060(v1, v27 + v28[6], type metadata accessor for _DeviceActivityData.User);
    v24(v27 + v28[9], v25, v26);
    *(v27 + 16) = xmmword_238033ED0;
    *v27 = v394;
    *(v27 + 8) = v404;
    sub_237FFC8DC(v0 + 400, v0 + 680);
    sub_237FA38D0(0, 0xF000000000000000);
    *(v27 + 16) = xmmword_238033ED0;
    v32 = v27 + v28[7];
    v33 = *(v0 + 400);
    v34 = *(v0 + 416);
    v35 = *(v0 + 432);
    *(v32 + 48) = *(v0 + 448);
    *(v32 + 16) = v34;
    *(v32 + 32) = v35;
    *v32 = v33;
    *(v27 + v28[8]) = 0;
    (*(v31 + 64))(v27, v30, v31);
    if (v422)
    {
      v36 = *(v0 + 1824);
      v37 = *(v0 + 1248);

      sub_237FAB7D4(v37, type metadata accessor for _DeviceActivityData.Metadata);
      v57 = *(v0 + 1560);
      v58 = *(v0 + 1360);
      sub_237FFC838(v0 + 400);
      sub_237FA5750(v58, &qword_27DEE50C8, &qword_2380357C0);
      sub_237FAB7D4(v57, type metadata accessor for _DeviceActivityData.User);
      v59 = *(v0 + 1816);
      v395 = *(v0 + 1784);
      v405 = *(v0 + 1792);
      v355 = *(v0 + 1752);
      v359 = *(v0 + 1760);
      v351 = *(v0 + 1744);
      v60 = *(v0 + 1632);
      v363 = *(v0 + 1608);
      v367 = *(v0 + 1768);
      v413 = *(v0 + 1584);
      v379 = *(v0 + 1528);
      v386 = *(v0 + 1776);
      v61 = *(v0 + 1512);
      v372 = *(v0 + 1504);
      v62 = *(v0 + 1472);
      v63 = *(v0 + 1464);
      v64 = *(v0 + 1424);
      v65 = *(v0 + 1416);
      v66 = *(v0 + 1640) + 8;
      sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
      v67 = *(v64 + 8);
      v67(v63, v65);
      v67(v62, v65);
      v59(v351, v60);
      v59(v355, v60);
      v59(v359, v60);
      sub_237FA5750(v363, &qword_27DEE51E0, &qword_2380365F0);
      v59(v367, v60);
      v59(v386, v60);
      (*(v61 + 8))(v379, v372);
      v59(v395, v60);
      v59(v405, v60);
      sub_237FAB7D4(v413, type metadata accessor for _DeviceActivityData.User);
      v68 = *(v0 + 1792);
      v69 = *(v0 + 1784);
      v70 = *(v0 + 1776);
      v71 = *(v0 + 1768);
      v72 = *(v0 + 1760);
      v73 = *(v0 + 1752);
      v74 = *(v0 + 1744);
      v75 = *(v0 + 1736);
      v76 = *(v0 + 1728);
      v279 = *(v0 + 1720);
      v280 = *(v0 + 1712);
      v282 = *(v0 + 1704);
      v284 = *(v0 + 1696);
      v286 = *(v0 + 1688);
      v288 = *(v0 + 1680);
      v290 = *(v0 + 1672);
      v292 = *(v0 + 1664);
      v294 = *(v0 + 1656);
      v296 = *(v0 + 1648);
      v298 = *(v0 + 1624);
      v300 = *(v0 + 1616);
      v302 = *(v0 + 1608);
      v304 = *(v0 + 1600);
      v306 = *(v0 + 1592);
      v308 = *(v0 + 1584);
      v310 = *(v0 + 1576);
      v312 = *(v0 + 1568);
      v314 = *(v0 + 1560);
      v316 = *(v0 + 1552);
      v318 = *(v0 + 1528);
      v320 = *(v0 + 1520);
      v322 = *(v0 + 1496);
      v324 = *(v0 + 1472);
      v326 = *(v0 + 1464);
      v328 = *(v0 + 1456);
      v330 = *(v0 + 1448);
      v332 = *(v0 + 1440);
      v334 = *(v0 + 1432);
      v337 = *(v0 + 1408);
      v340 = *(v0 + 1400);
      v342 = *(v0 + 1392);
      v345 = *(v0 + 1384);
      v348 = *(v0 + 1376);
      v352 = *(v0 + 1368);
      v356 = *(v0 + 1360);
      v360 = *(v0 + 1352);
      v364 = *(v0 + 1328);
      v368 = *(v0 + 1304);
      v373 = *(v0 + 1296);
      v380 = *(v0 + 1288);
      v387 = *(v0 + 1280);
      v396 = *(v0 + 1272);
      v406 = *(v0 + 1264);
      v414 = *(v0 + 1256);
      v77 = *(v0 + 1248);

      v78 = *(v0 + 8);
LABEL_11:

      return v78();
    }

    v79 = (v0 + 1248);
  }

  v80 = *v79;
  v81 = *(v0 + 1560);
  v82 = *(v0 + 1360);
  sub_237FFC838(v0 + 400);
  sub_237FAB7D4(v80, type metadata accessor for _DeviceActivityData.Metadata);
  sub_237FA5750(v82, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FAB7D4(v81, type metadata accessor for _DeviceActivityData.User);
  v83 = *(v0 + 1464);
  v84 = *(v0 + 1424);
  v85 = *(v0 + 1416);
  sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
  v86 = *(v84 + 8);
  result = v86(v83, v85);
  v88 = *(v0 + 1840) + 1;
  if (v88 == *(v0 + 1832))
  {
LABEL_10:
    v89 = *(v0 + 1824);

    v90 = *(v0 + 1424) + 8;
    v91 = *(v0 + 1816);
    v423 = *(v0 + 1792);
    v397 = *(v0 + 1776);
    v407 = *(v0 + 1784);
    v92 = *(v0 + 1760);
    v93 = *(v0 + 1752);
    v94 = *(v0 + 1744);
    v95 = *(v0 + 1640);
    v96 = *(v0 + 1632);
    v97 = *(v0 + 1608);
    v415 = *(v0 + 1584);
    v388 = *(v0 + 1528);
    v98 = *(v0 + 1512);
    v374 = *(v0 + 1768);
    v381 = *(v0 + 1504);
    v86(*(v0 + 1472), *(v0 + 1416));
    v91(v94, v96);
    v91(v93, v96);
    v91(v92, v96);
    sub_237FA5750(v97, &qword_27DEE51E0, &qword_2380365F0);
    v91(v374, v96);
    v91(v397, v96);
    (*(v98 + 8))(v388, v381);
    v91(v407, v96);
    v91(v423, v96);
    sub_237FAB7D4(v415, type metadata accessor for _DeviceActivityData.User);
    v99 = *(v0 + 1792);
    v100 = *(v0 + 1784);
    v101 = *(v0 + 1776);
    v102 = *(v0 + 1768);
    v103 = *(v0 + 1760);
    v104 = *(v0 + 1752);
    v105 = *(v0 + 1744);
    v106 = *(v0 + 1736);
    v107 = *(v0 + 1728);
    v108 = *(v0 + 1720);
    v281 = *(v0 + 1712);
    v283 = *(v0 + 1704);
    v285 = *(v0 + 1696);
    v287 = *(v0 + 1688);
    v289 = *(v0 + 1680);
    v291 = *(v0 + 1672);
    v293 = *(v0 + 1664);
    v295 = *(v0 + 1656);
    v297 = *(v0 + 1648);
    v299 = *(v0 + 1624);
    v301 = *(v0 + 1616);
    v303 = *(v0 + 1608);
    v305 = *(v0 + 1600);
    v307 = *(v0 + 1592);
    v309 = *(v0 + 1584);
    v311 = *(v0 + 1576);
    v313 = *(v0 + 1568);
    v315 = *(v0 + 1560);
    v317 = *(v0 + 1552);
    v319 = *(v0 + 1528);
    v321 = *(v0 + 1520);
    v323 = *(v0 + 1496);
    v325 = *(v0 + 1472);
    v327 = *(v0 + 1464);
    v329 = *(v0 + 1456);
    v331 = *(v0 + 1448);
    v333 = *(v0 + 1440);
    v335 = *(v0 + 1432);
    v338 = *(v0 + 1408);
    v341 = *(v0 + 1400);
    v343 = *(v0 + 1392);
    v346 = *(v0 + 1384);
    v349 = *(v0 + 1376);
    v353 = *(v0 + 1368);
    v357 = *(v0 + 1360);
    v361 = *(v0 + 1352);
    v365 = *(v0 + 1328);
    v369 = *(v0 + 1304);
    v375 = *(v0 + 1296);
    v382 = *(v0 + 1288);
    v389 = *(v0 + 1280);
    v398 = *(v0 + 1272);
    v408 = *(v0 + 1264);
    v416 = *(v0 + 1256);
    v424 = *(v0 + 1248);

    v78 = *(v0 + 8);
    goto LABEL_11;
  }

  v362 = (v0 + 512);
  v366 = (v0 + 456);
  v354 = (v0 + 568);
  v358 = (v0 + 848);
  v350 = (v0 + 904);
  while (1)
  {
    *(v0 + 1840) = v88;
    v109 = *(v0 + 1824);
    if (v88 >= *(v109 + 16))
    {
      __break(1u);
      return result;
    }

    v110 = *(v0 + 1424);
    v111 = *(v0 + 1416);
    v112 = *(v0 + 1408);
    v113 = *(v110 + 56);
    v114 = *(v109 + v88 + 32);
    *(v0 + 1965) = v114;
    *(v0 + 1848) = v113;
    *(v0 + 1856) = (v110 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v417 = v113;
    v113(v112, 1, 1, v111);
    v409 = v114;
    if (v114)
    {
      if (v114 == 1)
      {
        v115 = *(v0 + 1472);
        v116 = *(v0 + 1464);
        v117 = *(v0 + 1328);
        v118 = *(v0 + 1320);
        v119 = *(v0 + 1312);
        v120 = *(v0 + 1296);
        (*(*(v0 + 1512) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1504));
        v121 = sub_238031B94();
        (*(*(v121 - 8) + 56))(v120, 1, 1, v121);
        sub_2380316B4();
        DateInterval.rounded(to:)(v117, v116);
        (*(v118 + 8))(v117, v119);
      }

      else
      {
        v136 = *(v0 + 1520);
        v137 = *(v0 + 1512);
        v138 = *(v0 + 1504);
        v392 = *(v0 + 1472);
        v139 = *(v0 + 1464);
        v140 = *(v0 + 1328);
        v141 = *(v0 + 1320);
        v401 = *(v0 + 1312);
        v142 = *(v0 + 1304);
        v143 = *(v0 + 1296);
        sub_238031B44();
        (*(v137 + 56))(v142, 1, 1, v138);
        v144 = sub_238031B94();
        (*(*(v144 - 8) + 56))(v143, 1, 1, v144);
        sub_238031AE4();
        sub_2380316B4();
        DateInterval.rounded(to:)(v140, v139);
        (*(v141 + 8))(v140, v401);
        (*(v137 + 8))(v136, v138);
      }
    }

    else
    {
      v399 = *(v0 + 1816);
      v122 = *(v0 + 1720);
      v383 = *(v0 + 1784);
      v390 = *(v0 + 1632);
      v123 = *(v0 + 1472);
      v124 = *(v0 + 1464);
      v125 = *(v0 + 1328);
      v126 = *(v0 + 1320);
      v127 = *(v0 + 1296);
      v370 = *(v0 + 1312);
      v376 = *(v0 + 1640) + 8;
      v347 = *(*(v0 + 1512) + 56);
      v347(*(v0 + 1304), 1, 1, *(v0 + 1504));
      v128 = sub_238031B94();
      v344 = *(*(v128 - 8) + 56);
      v344(v127, 1, 1, v128);
      sub_2380316B4();
      DateInterval.rounded(to:)(v125, v124);
      v129 = *(v126 + 8);
      v129(v125, v370);
      sub_238031634();
      LOBYTE(v123) = sub_238031A04();
      v399(v122, v390);
      if (v123)
      {
        v391 = v129;
        v130 = *(v0 + 1720);
        v131 = *(v0 + 1464);
        v132 = *(v0 + 1456);
        v377 = *(v0 + 1424);
        v384 = *(v0 + 1416);
        v400 = *(v0 + 1408);
        v336 = *(v0 + 1504);
        v339 = *(v0 + 1400);
        v133 = *(v0 + 1328);
        v371 = *(v0 + 1312);
        v134 = *(v0 + 1304);
        v135 = *(v0 + 1296);
        sub_238031634();
        sub_238031624();
        v347(v134, 1, 1, v336);
        v344(v135, 1, 1, v128);
        sub_2380316B4();
        DateInterval.rounded(to:)(v133, v339);
        v391(v133, v371);
        (*(v377 + 8))(v132, v384);
        sub_237FA5750(v400, &qword_27DEE50C8, &qword_2380357C0);
        v417(v339, 0, 1, v384);
        sub_237FA5AE0(v339, v400, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    v145 = *(v0 + 1424);
    v146 = *(v0 + 1416);
    v147 = *(v0 + 1392);
    sub_237FA90E4(*(v0 + 1408), v147, &qword_27DEE50C8, &qword_2380357C0);
    if ((*(v145 + 48))(v147, 1, v146) != 1)
    {
      break;
    }

    v148 = *(v0 + 1560);
    v149 = *(v0 + 1416);
    v150 = *(v0 + 1360);
    v151 = *(v0 + 1232);
    sub_237FA5750(*(v0 + 1392), &qword_27DEE50C8, &qword_2380357C0);
    v417(v150, 1, 1, v149);
    DeviceActivityDataSource.localUser.getter(v148);
    v152 = v151[15];
    v153 = v151[16];
    __swift_project_boxed_opaque_existential_1(v151 + 12, v152);
    v154 = (*(v153 + 120))(v152, v153);
    v155 = *(v0 + 1232);
    sub_237FE82DC(v154, v156, v362);

    v157 = *(v0 + 528);
    *(v0 + 400) = *v362;
    *(v0 + 416) = v157;
    *(v0 + 432) = *(v0 + 544);
    *(v0 + 448) = *(v0 + 560);
    if (!v409)
    {
      v204 = *(v0 + 1232);
      v205 = v204[15];
      v206 = v204[16];
      __swift_project_boxed_opaque_existential_1(v204 + 12, v205);
      v207 = (*(v206 + 120))(v205, v206);
      v251 = *(v0 + 1560);
      v252 = *(v0 + 1552);
      v253 = *(v0 + 1544);
      v254 = *(v0 + 1536);
      v255 = *(v0 + 1360);
      v256 = *(v0 + 1352);
      v257 = *(v0 + 1344);
      v412 = v257;
      v420 = v256;
      v258 = *(v0 + 1336);
      v259 = *(v0 + 1232);
      *(v0 + 1184) = v207;
      *(v0 + 1192) = v260;
      MEMORY[0x2383E5050](95, 0xE100000000000000);
      MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
      v428 = *(v0 + 1184);
      *(v0 + 1920) = v428;
      v261 = *(v0 + 1192);
      *(v0 + 1928) = v261;
      sub_237FFD060(v251, v252, type metadata accessor for _DeviceActivityData.User);
      sub_237FFC88C(v259, v0 + 16);
      sub_237FA90E4(v255, v256, &qword_27DEE50C8, &qword_2380357C0);
      v262 = (*(v254 + 80) + 16) & ~*(v254 + 80);
      v263 = (v253 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
      v264 = (v263 + 199) & 0xFFFFFFFFFFFFFFF8;
      v265 = (*(v258 + 80) + v264 + 56) & ~*(v258 + 80);
      v266 = swift_allocObject();
      *(v0 + 1936) = v266;
      sub_237FAB70C(v252, v266 + v262, type metadata accessor for _DeviceActivityData.User);
      v267 = (v266 + v263);
      v268 = *(v0 + 128);
      v267[6] = *(v0 + 112);
      v267[7] = v268;
      v269 = *(v0 + 96);
      v267[4] = *(v0 + 80);
      v267[5] = v269;
      v270 = *(v0 + 192);
      v267[10] = *(v0 + 176);
      v267[11] = v270;
      v271 = *(v0 + 160);
      v267[8] = *(v0 + 144);
      v267[9] = v271;
      v272 = *(v0 + 32);
      *v267 = *(v0 + 16);
      v267[1] = v272;
      v273 = *(v0 + 64);
      v267[2] = *(v0 + 48);
      v267[3] = v273;
      v274 = v266 + v264;
      *(v274 + 48) = *(v0 + 448);
      v275 = *(v0 + 432);
      *(v274 + 16) = *(v0 + 416);
      *(v274 + 32) = v275;
      *v274 = *(v0 + 400);
      sub_237FA5AE0(v420, v266 + v265, &qword_27DEE50C8, &qword_2380357C0);
      v276 = (v266 + ((v412 + v265 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v276 = v428;
      v276[1] = v261;
      sub_237FFC8DC(v0 + 400, v0 + 624);

      v277 = swift_task_alloc();
      *(v0 + 1944) = v277;
      *v277 = v0;
      v277[1] = sub_237FF2C14;
      v278 = *(v0 + 1232);
      v248 = sub_237FFC8C4;
      v249 = *(v0 + 1464);
      v250 = v266;
      goto LABEL_34;
    }

    v158 = *(v0 + 1792);
    v159 = *(v0 + 1560);
    v160 = *(v0 + 1464);
    v161 = *(v0 + 1232);
    v162 = *(v0 + 416);
    *v354 = *(v0 + 400);
    *(v0 + 584) = v162;
    *(v0 + 600) = *(v0 + 432);
    *(v0 + 616) = *(v0 + 448);
    *(v0 + 1960) = v409;
    sub_237FF6740(v159, v354, (v0 + 1960), v160, v158);
    v163 = *(v0 + 1560);
    sub_237FA5750(*(v0 + 1360), &qword_27DEE50C8, &qword_2380357C0);
    sub_237FAB7D4(v163, type metadata accessor for _DeviceActivityData.User);
    sub_237FFC838(v0 + 400);
    v164 = *(v0 + 1464);
    v165 = *(v0 + 1424);
    v166 = *(v0 + 1416);
    sub_237FA5750(*(v0 + 1408), &qword_27DEE50C8, &qword_2380357C0);
    v86 = *(v165 + 8);
    result = v86(v164, v166);
LABEL_15:
    v88 = *(v0 + 1840) + 1;
    if (v88 == *(v0 + 1832))
    {
      goto LABEL_10;
    }
  }

  v378 = *(v0 + 1800);
  v167 = *(v0 + 1784);
  v168 = *(v0 + 1720);
  v169 = *(v0 + 1712);
  v170 = *(v0 + 1632);
  v402 = *(v0 + 1576);
  v171 = *(v0 + 1448);
  v385 = *(v0 + 1440);
  v393 = *(v0 + 1808);
  v172 = *(v0 + 1424);
  v173 = *(v0 + 1416);
  v174 = *(v0 + 1384);
  v175 = *(v0 + 1232);
  (*(v172 + 32))(v171, *(v0 + 1392), v173);
  v378(v168, v167, v170);
  sub_238031604();
  sub_238031614();
  (*(v172 + 16))(v174, v171, v173);
  v417(v174, 0, 1, v173);
  DeviceActivityDataSource.localUser.getter(v402);
  v176 = v175[15];
  v177 = v175[16];
  __swift_project_boxed_opaque_existential_1(v175 + 12, v176);
  v178 = (*(v177 + 120))(v176, v177);
  v179 = *(v0 + 1232);
  sub_237FE82DC(v178, v180, v358);

  v181 = *(v0 + 864);
  *v366 = *v358;
  *(v0 + 472) = v181;
  *(v0 + 488) = *(v0 + 880);
  *(v0 + 504) = *(v0 + 896);
  if (!v409)
  {
    v200 = *(v0 + 1232);
    v201 = v200[15];
    v202 = v200[16];
    __swift_project_boxed_opaque_existential_1(v200 + 12, v201);
    v203 = (*(v202 + 120))(v201, v202);
    v222 = *(v0 + 1576);
    v223 = *(v0 + 1568);
    v224 = *(v0 + 1544);
    v225 = *(v0 + 1536);
    v226 = *(v0 + 1384);
    v227 = *(v0 + 1376);
    v411 = *(v0 + 1344);
    v419 = v227;
    v403 = *(v0 + 1336);
    v228 = *(v0 + 1232);
    *(v0 + 1200) = v203;
    *(v0 + 1208) = v229;
    MEMORY[0x2383E5050](95, 0xE100000000000000);
    MEMORY[0x2383E5050](0x796C72756F48, 0xE600000000000000);
    v427 = *(v0 + 1200);
    *(v0 + 1864) = v427;
    v230 = *(v0 + 1208);
    *(v0 + 1872) = v230;
    sub_237FFD060(v222, v223, type metadata accessor for _DeviceActivityData.User);
    sub_237FFC88C(v228, v0 + 208);
    sub_237FA90E4(v226, v227, &qword_27DEE50C8, &qword_2380357C0);
    v231 = (*(v225 + 80) + 16) & ~*(v225 + 80);
    v232 = (v224 + v231 + 7) & 0xFFFFFFFFFFFFFFF8;
    v233 = (v232 + 199) & 0xFFFFFFFFFFFFFFF8;
    v234 = (*(v403 + 80) + v233 + 56) & ~*(v403 + 80);
    v235 = swift_allocObject();
    *(v0 + 1880) = v235;
    sub_237FAB70C(v223, v235 + v231, type metadata accessor for _DeviceActivityData.User);
    v236 = (v235 + v232);
    v237 = *(v0 + 320);
    v236[6] = *(v0 + 304);
    v236[7] = v237;
    v238 = *(v0 + 288);
    v236[4] = *(v0 + 272);
    v236[5] = v238;
    v239 = *(v0 + 384);
    v236[10] = *(v0 + 368);
    v236[11] = v239;
    v240 = *(v0 + 352);
    v236[8] = *(v0 + 336);
    v236[9] = v240;
    v241 = *(v0 + 224);
    *v236 = *(v0 + 208);
    v236[1] = v241;
    v242 = *(v0 + 256);
    v236[2] = *(v0 + 240);
    v236[3] = v242;
    v243 = v235 + v233;
    *(v243 + 48) = *(v0 + 504);
    v244 = *(v0 + 488);
    *(v243 + 16) = *(v0 + 472);
    *(v243 + 32) = v244;
    *v243 = *v366;
    sub_237FA5AE0(v419, v235 + v234, &qword_27DEE50C8, &qword_2380357C0);
    v245 = (v235 + ((v411 + v234 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v245 = v427;
    v245[1] = v230;
    sub_237FFC8DC(v366, v0 + 960);

    v246 = swift_task_alloc();
    *(v0 + 1888) = v246;
    *v246 = v0;
    v246[1] = sub_237FEE484;
    v247 = *(v0 + 1232);
    v248 = sub_237FFD128;
    v249 = *(v0 + 1440);
    v250 = v235;
LABEL_34:

    return sub_237FF9244(v249, v248, v250);
  }

  v182 = *(v0 + 1792);
  v183 = *(v0 + 1576);
  v184 = *(v0 + 1440);
  v185 = *(v0 + 1232);
  v186 = *(v0 + 472);
  *v350 = *v366;
  *(v0 + 920) = v186;
  *(v0 + 936) = *(v0 + 488);
  *(v0 + 952) = *(v0 + 504);
  *(v0 + 1962) = v409;
  sub_237FF6740(v183, v350, (v0 + 1962), v184, v182);
  sub_237FAB7D4(*(v0 + 1576), type metadata accessor for _DeviceActivityData.User);
  sub_237FFC838(v366);
  v187 = *(v0 + 1704);
  v188 = *(v0 + 1696);
  v189 = *(v0 + 1464);
  v190 = *(v0 + 1440);
  sub_237FA5750(*(v0 + 1384), &qword_27DEE50C8, &qword_2380357C0);
  sub_238031604();
  sub_238031604();
  if ((sub_238031A04() & 1) == 0)
  {
    v191 = *(v0 + 1816);
    v192 = *(v0 + 1704);
    v193 = *(v0 + 1632);
    v425 = *(v0 + 1464);
    v194 = *(v0 + 1448);
    v195 = *(v0 + 1440);
    v196 = *(v0 + 1424);
    v197 = *(v0 + 1416);
    v198 = *(v0 + 1640) + 8;
    v199 = *(v0 + 1408);
    v191(*(v0 + 1696), v193);
    v191(v192, v193);
    v86 = *(v196 + 8);
    v86(v195, v197);
    v86(v194, v197);
    sub_237FA5750(v199, &qword_27DEE50C8, &qword_2380357C0);
    result = v86(v425, v197);
    goto LABEL_15;
  }

  v426 = *(v0 + 1856);
  v418 = *(v0 + 1848);
  v410 = *(v0 + 1965);
  v208 = *(v0 + 1808);
  v209 = *(v0 + 1800);
  v210 = *(v0 + 1712);
  v211 = *(v0 + 1704);
  v212 = *(v0 + 1632);
  v213 = *(v0 + 1432);
  v214 = *(v0 + 1416);
  v215 = *(v0 + 1368);
  v209(*(v0 + 1720), *(v0 + 1696), v212);
  v209(v210, v211, v212);
  sub_238031614();
  *(v0 + 1963) = v410;
  v418(v215, 1, 1, v214);
  v216 = swift_task_alloc();
  *(v0 + 1904) = v216;
  *v216 = v0;
  v216[1] = sub_237FF0C78;
  v217 = *(v0 + 1792);
  v218 = *(v0 + 1584);
  v219 = *(v0 + 1432);
  v220 = *(v0 + 1368);
  v221 = *(v0 + 1232);

  return sub_237FF59F0(v218, (v0 + 1963), v219, v220, v217);
}