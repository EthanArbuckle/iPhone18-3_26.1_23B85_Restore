unint64_t sub_23A6A5A20()
{
  result = qword_27DF9CD08;
  if (!qword_27DF9CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD08);
  }

  return result;
}

unint64_t sub_23A6A5AD0()
{
  result = qword_27DF9CD10;
  if (!qword_27DF9CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD10);
  }

  return result;
}

unint64_t sub_23A6A5B78()
{
  result = qword_27DF9CD28;
  if (!qword_27DF9CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD28);
  }

  return result;
}

unint64_t sub_23A6A5BCC()
{
  result = qword_27DF9CD30;
  if (!qword_27DF9CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD30);
  }

  return result;
}

unint64_t sub_23A6A5C20()
{
  result = qword_27DF9CD38;
  if (!qword_27DF9CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD38);
  }

  return result;
}

uint64_t sub_23A6A5C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6A5CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6A5D3C()
{
  result = qword_27DF9CD50;
  if (!qword_27DF9CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD50);
  }

  return result;
}

void sub_23A6A5E00()
{
  sub_23A6A6248(319, &qword_27DF9CD60, MEMORY[0x277CC8E50], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68);
    if (v1 <= 0x3F)
    {
      sub_23A6A6194();
      if (v2 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78);
        if (v3 <= 0x3F)
        {
          sub_23A6A6248(319, &qword_27DF9CD80, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9CD88);
            if (v5 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9CD90);
              if (v6 <= 0x3F)
              {
                sub_23A6A61F4(319, &qword_27DF9CD98, &qword_27DF9CCF0, &qword_23A6E37C0);
                if (v7 <= 0x3F)
                {
                  sub_23A6A61F4(319, &qword_27DF9CDA0, &qword_27DF9CCE8, &qword_23A6E37B8);
                  if (v8 <= 0x3F)
                  {
                    sub_23A6A62AC(319, &qword_27DF9CDA8);
                    if (v9 <= 0x3F)
                    {
                      sub_23A6A62AC(319, &qword_27DF9CDB0);
                      if (v10 <= 0x3F)
                      {
                        sub_23A6A62AC(319, &qword_27DF9CDB8);
                        if (v11 <= 0x3F)
                        {
                          sub_23A6A62AC(319, &qword_27DF9CDC0);
                          if (v12 <= 0x3F)
                          {
                            sub_23A6A6248(319, &qword_27DF9CDC8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege, MEMORY[0x277D83940]);
                            if (v13 <= 0x3F)
                            {
                              sub_23A6A6248(319, &qword_27DF9CDD0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83940]);
                              if (v14 <= 0x3F)
                              {
                                sub_23A6A62AC(319, &qword_27DF9C7C8);
                                if (v15 <= 0x3F)
                                {
                                  sub_23A6A62AC(319, &qword_27DF9CDD8);
                                  if (v16 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A6A6194()
{
  if (!qword_27DF9CD70)
  {
    v0 = sub_23A6DF5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CD70);
    }
  }
}

void sub_23A6A61F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23A6DF954();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23A6A6248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23A6A62AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23A6DF954();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_23A6A62F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A691B9C(a1, a2);
  }

  return a1;
}

uint64_t sub_23A6A630C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_23A6A6360()
{
  result = qword_27DF9CE08;
  if (!qword_27DF9CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE08);
  }

  return result;
}

unint64_t sub_23A6A63B4()
{
  result = qword_27DF9CE18;
  if (!qword_27DF9CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE18);
  }

  return result;
}

unint64_t sub_23A6A6408()
{
  result = qword_27DF9CE20;
  if (!qword_27DF9CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE20);
  }

  return result;
}

unint64_t sub_23A6A645C()
{
  result = qword_27DF9CE28;
  if (!qword_27DF9CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE28);
  }

  return result;
}

uint64_t sub_23A6A64B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A6A64F8()
{
  result = qword_27DF9CE40;
  if (!qword_27DF9CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE40);
  }

  return result;
}

unint64_t sub_23A6A654C()
{
  result = qword_27DF9CE48;
  if (!qword_27DF9CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE48);
  }

  return result;
}

uint64_t sub_23A6A65A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.vehicleRestrictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0) + 20));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.vehicleEndorsements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0) + 24));
}

uint64_t sub_23A6A66A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_23A6DFC04() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.hash(into:)(uint64_t a1)
{
  sub_23A6A7238();
  v3 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  sub_23A6A716C(a1, *(v1 + *(v3 + 20)));
  return sub_23A6A716C(a1, *(v1 + *(v3 + 24)));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6A7238();
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  sub_23A6A716C(v3, *(v0 + *(v1 + 20)));
  sub_23A6A716C(v3, *(v0 + *(v1 + 24)));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23A69EED0(a1, a4, &qword_27DF9CE68, &unk_23A6E3910);
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_23A6A68B0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6A7238();
  sub_23A6A716C(v4, *(v1 + *(a1 + 20)));
  sub_23A6A716C(v4, *(v1 + *(a1 + 24)));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6914(uint64_t a1, uint64_t a2)
{
  sub_23A6A7238();
  sub_23A6A716C(a1, *(v2 + *(a2 + 20)));
  return sub_23A6A716C(a1, *(v2 + *(a2 + 24)));
}

uint64_t sub_23A6A6964(uint64_t a1, uint64_t a2)
{
  sub_23A6DFCE4();
  sub_23A6A7238();
  sub_23A6A716C(v5, *(v2 + *(a2 + 20)));
  sub_23A6A716C(v5, *(v2 + *(a2 + 24)));
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)()
{
  v1 = v0;
  v2 = sub_23A6DE0A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_23A6DF684();
  v19 = v1[2];
  v20 = v1[3];
  sub_23A6DF684();
  v21 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_23A646D48(v1 + *(v21 + 24), v16, &qword_27DF9CCC8, &qword_23A6E3C40);
  v22 = *(v3 + 48);
  if (v22(v16, 1, v2) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v3 + 8))(v7, v2);
  }

  sub_23A646D48(v1 + *(v21 + 28), v12, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v22(v12, 1, v2) == 1)
  {
    return sub_23A6DFD04();
  }

  (*(v3 + 32))(v7, v12, v2);
  sub_23A6DFD04();
  sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990]);
  sub_23A6DF5E4();
  return (*(v3 + 8))(v7, v2);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_23A69EED0(a5, a7 + *(v10 + 24), &qword_27DF9CCC8, &qword_23A6E3C40);
  return sub_23A69EED0(a6, a7 + *(v10 + 28), &qword_27DF9CCC8, &qword_23A6E3C40);
}

uint64_t sub_23A6A6EA0()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6EE4()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)();
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23A6A6FA4()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  return sub_23A6DF684();
}

uint64_t sub_23A6A7030()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DFD04();
  if (v2)
  {
    sub_23A6DF684();
  }

  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A70C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DFD04();
  if (v2)
  {
    sub_23A6DF684();
  }

  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A716C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE8A1E0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 2))
      {
        v6 = *(v5 - 3);
        sub_23A6DFD04();

        sub_23A6DF684();
      }

      else
      {
        sub_23A6DFD04();
      }

      sub_23A6DF684();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23A6A7238()
{
  v1 = sub_23A6DE0A4();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v34 - v22;
  sub_23A646D48(v0, &v34 - v22, &qword_27DF9CE68, &unk_23A6E3910);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    return sub_23A6DFD04();
  }

  sub_23A6A8484(v23, v18);
  sub_23A6DFD04();
  v25 = *v18;
  v26 = v18[1];
  sub_23A6DF684();
  v27 = v18[2];
  v28 = v18[3];
  sub_23A6DF684();
  sub_23A646D48(v18 + *(v13 + 24), v12, &qword_27DF9CCC8, &qword_23A6E3C40);
  v29 = v35;
  v30 = *(v35 + 48);
  if (v30(v12, 1, v1) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v31 = v37;
    (*(v29 + 32))(v37, v12, v1);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v29 + 8))(v31, v1);
  }

  v32 = v36;
  sub_23A646D48(v18 + *(v13 + 28), v36, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v30(v32, 1, v1) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v33 = v37;
    (*(v29 + 32))(v37, v32, v1);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v29 + 8))(v33, v1);
  }

  return sub_23A6A84E8(v18);
}

uint64_t sub_23A6A7690(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_23A6DFC04() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_23A6DFC04();
}

BOOL _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAK_AKtFZ_0(void *a1, void *a2)
{
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v44[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v44[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v44[-v26];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23A6DFC04() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23A6DFC04() & 1) == 0)
  {
    return 0;
  }

  v46 = v14;
  v48 = v23;
  v49 = v9;
  v47 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v28 = *(v47 + 24);
  v29 = *(v19 + 48);
  v50 = v5;
  sub_23A646D48(a1 + v28, v27, &qword_27DF9CCC8, &qword_23A6E3C40);
  v30 = v50;
  sub_23A646D48(a2 + v28, &v27[v29], &qword_27DF9CCC8, &qword_23A6E3C40);
  v31 = *(v30 + 48);
  if (v31(v27, 1, v4) != 1)
  {
    sub_23A646D48(v27, v18, &qword_27DF9CCC8, &qword_23A6E3C40);
    if (v31(&v27[v29], 1, v4) != 1)
    {
      (*(v30 + 32))(v49, &v27[v29], v4);
      sub_23A6A8034(&qword_27DF9CE10, MEMORY[0x277CC8990]);
      v45 = sub_23A6DF604();
      v33 = *(v30 + 8);
      v33(v49, v4);
      v33(v18, v4);
      sub_23A646DB0(v27, &qword_27DF9CCC8, &qword_23A6E3C40);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v30 + 8))(v18, v4);
LABEL_12:
    v32 = v27;
LABEL_20:
    sub_23A646DB0(v32, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  if (v31(&v27[v29], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_23A646DB0(v27, &qword_27DF9CCC8, &qword_23A6E3C40);
LABEL_14:
  v34 = *(v47 + 28);
  v35 = *(v19 + 48);
  v36 = a1 + v34;
  v37 = v48;
  sub_23A646D48(v36, v48, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(a2 + v34, v37 + v35, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v31(v37, 1, v4) == 1)
  {
    if (v31((v37 + v35), 1, v4) == 1)
    {
      sub_23A646DB0(v37, &qword_27DF9CCC8, &qword_23A6E3C40);
      return 1;
    }

    goto LABEL_19;
  }

  v38 = v46;
  sub_23A646D48(v37, v46, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v31((v37 + v35), 1, v4) == 1)
  {
    (*(v50 + 8))(v38, v4);
LABEL_19:
    v32 = v37;
    goto LABEL_20;
  }

  v41 = v49;
  v40 = v50;
  (*(v50 + 32))(v49, v37 + v35, v4);
  sub_23A6A8034(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v42 = sub_23A6DF604();
  v43 = *(v40 + 8);
  v43(v41, v4);
  v43(v38, v4);
  sub_23A646DB0(v37, &qword_27DF9CCC8, &qword_23A6E3C40);
  return (v42 & 1) != 0;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CEA0, &unk_23A6E3BA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v27 - v18;
  v21 = *(v20 + 56);
  sub_23A646D48(a1, &v27 - v18, &qword_27DF9CE68, &unk_23A6E3910);
  sub_23A646D48(a2, &v19[v21], &qword_27DF9CE68, &unk_23A6E3910);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_23A646DB0(v19, &qword_27DF9CE68, &unk_23A6E3910);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23A646D48(v19, v14, &qword_27DF9CE68, &unk_23A6E3910);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_23A6A84E8(v14);
LABEL_6:
    sub_23A646DB0(v19, &qword_27DF9CEA0, &unk_23A6E3BA0);
LABEL_10:
    v25 = 0;
    return v25 & 1;
  }

  sub_23A6A8484(&v19[v21], v9);
  v23 = _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAK_AKtFZ_0(v14, v9);
  sub_23A6A84E8(v9);
  sub_23A6A84E8(v14);
  sub_23A646DB0(v19, &qword_27DF9CE68, &unk_23A6E3910);
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  if ((sub_23A6A66A4(*(a1 + *(v24 + 20)), *(a2 + *(v24 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = sub_23A6A66A4(*(a1 + *(v24 + 24)), *(a2 + *(v24 + 24)));
  return v25 & 1;
}

uint64_t sub_23A6A8034(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23A6A80C8()
{
  result = qword_27DF9CE78;
  if (!qword_27DF9CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE78);
  }

  return result;
}

unint64_t sub_23A6A8120()
{
  result = qword_27DF9CE80;
  if (!qword_27DF9CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE80);
  }

  return result;
}

void sub_23A6A819C()
{
  sub_23A6A8380(319, &qword_27DF9CE88, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass);
  if (v0 <= 0x3F)
  {
    sub_23A6A8274(319, &qword_27DF9CE90);
    if (v1 <= 0x3F)
    {
      sub_23A6A8274(319, &qword_27DF9CE98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A6A8274(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23A6DF744();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23A6A82E8()
{
  sub_23A6A8380(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A6A8380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A6A83E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23A6A8434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A6A8484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6A84E8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DHSComplianceStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.vehicleCategoryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.issueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege() + 20);

  return sub_23A6A86D4(v3, a1);
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege()
{
  result = qword_27DFA0FC0;
  if (!qword_27DFA0FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A86D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege() + 24);

  return sub_23A6A86D4(v3, a1);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.codes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege() + 28));
}

uint64_t sub_23A6A87C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v9 = i[1];
      v8 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_23A6DFC04() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8 || (v5 != v9 || v6 != v8) && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24 - v17;
  v19 = *v2;
  v20 = v2[1];
  sub_23A6DF684();
  v21 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  sub_23A6A86D4(v2 + v21[5], v18);
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v5 + 8))(v9, v4);
  }

  sub_23A6A86D4(v2 + v21[6], v14);
  if (v22(v14, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v5 + 8))(v9, v4);
  }

  return sub_23A6A9934(a1, *(v2 + v21[7]));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.hashValue.getter()
{
  v1 = v0;
  v2 = sub_23A6DE0A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23[-v15 - 8];
  sub_23A6DFCE4();
  v17 = *v1;
  v18 = v1[1];
  sub_23A6DF684();
  v19 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  sub_23A6A86D4(v1 + v19[5], v16);
  v20 = *(v3 + 48);
  if (v20(v16, 1, v2) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v3 + 8))(v7, v2);
  }

  sub_23A6A86D4(v1 + v19[6], v12);
  if (v20(v12, 1, v2) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v3 + 8))(v7, v2);
  }

  sub_23A6A9934(v23, *(v1 + v19[7]));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  sub_23A6AA0A8(a3, a6 + v10[5]);
  result = sub_23A6AA0A8(a4, a6 + v10[6]);
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t sub_23A6A8F80(uint64_t a1, int *a2)
{
  v4 = v2;
  v6 = sub_23A6DE0A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v25 - v19;
  v21 = *v4;
  v22 = v4[1];
  sub_23A6DF684();
  sub_23A6A86D4(v4 + a2[5], v20);
  v23 = *(v7 + 48);
  if (v23(v20, 1, v6) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v7 + 32))(v11, v20, v6);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v7 + 8))(v11, v6);
  }

  sub_23A6A86D4(v4 + a2[6], v16);
  if (v23(v16, 1, v6) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v7 + 32))(v11, v16, v6);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v7 + 8))(v11, v6);
  }

  return sub_23A6A9934(a1, *(v4 + a2[7]));
}

uint64_t sub_23A6A9274(uint64_t a1, int *a2)
{
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24[-v17 - 8];
  sub_23A6DFCE4();
  v19 = *v2;
  v20 = v2[1];
  sub_23A6DF684();
  sub_23A6A86D4(v2 + a2[5], v18);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v5 + 8))(v9, v4);
  }

  sub_23A6A86D4(v2 + a2[6], v14);
  if (v21(v14, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v5 + 8))(v9, v4);
  }

  sub_23A6A9934(v24, *(v2 + a2[7]));
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.sign.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.value.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DF684();
  if (!v4)
  {
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    return sub_23A6DFD04();
  }

LABEL_3:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DFCE4();
  sub_23A6DF684();
  if (!v4)
  {
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A979C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_23A6A97B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DF684();
  if (!v4)
  {
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    return sub_23A6DFD04();
  }

LABEL_3:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6A986C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DFCE4();
  sub_23A6DF684();
  if (!v4)
  {
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A9934(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE8A1E0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v11 = *(v5 - 1);
      v10 = *v5;

      sub_23A6DF684();
      if (v8)
      {
        sub_23A6DFD04();
        sub_23A6DF684();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_23A6DFD04();
        if (!v10)
        {
LABEL_9:
          sub_23A6DFD04();
          goto LABEL_4;
        }
      }

      sub_23A6DFD04();
      sub_23A6DF684();
LABEL_4:

      v5 += 6;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16DrivingPrivilegeV4CodeV2eeoiySbAK_AKtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23A6DFC04() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16DrivingPrivilegeV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v57 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v52[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v52[-v25];
  v27 = *a1;
  v28 = a1[1];
  v59 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_23A6DFC04() & 1) == 0)
  {
    goto LABEL_18;
  }

  v56 = v9;
  v29 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege();
  v30 = v29[5];
  v31 = *(v18 + 48);
  sub_23A6A86D4(v59 + v30, v26);
  sub_23A6A86D4(a2 + v30, &v26[v31]);
  v58 = v5;
  v32 = *(v5 + 48);
  if (v32(v26, 1, v4) != 1)
  {
    sub_23A6A86D4(v26, v17);
    if (v32(&v26[v31], 1, v4) != 1)
    {
      v54 = v29;
      v55 = a2;
      v34 = v58;
      v35 = v56;
      (*(v58 + 32))(v56, &v26[v31], v4);
      sub_23A6AA3D4(&qword_27DF9CE10, MEMORY[0x277CC8990]);
      v53 = sub_23A6DF604();
      v36 = *(v34 + 8);
      v37 = v35;
      v29 = v54;
      v36(v37, v4);
      v36(v17, v4);
      sub_23A646DB0(v26, &qword_27DF9CCC8, &qword_23A6E3C40);
      if ((v53 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    (*(v58 + 8))(v17, v4);
LABEL_9:
    v33 = v26;
LABEL_17:
    sub_23A646DB0(v33, &qword_27DF9CDF0, &qword_23A6E3DA0);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  v55 = a2;
  sub_23A646DB0(v26, &qword_27DF9CCC8, &qword_23A6E3C40);
LABEL_11:
  v38 = v29[6];
  v39 = *(v18 + 48);
  sub_23A6A86D4(v59 + v38, v22);
  v40 = v55 + v38;
  v41 = v55;
  sub_23A6A86D4(v40, &v22[v39]);
  if (v32(v22, 1, v4) == 1)
  {
    if (v32(&v22[v39], 1, v4) == 1)
    {
      sub_23A646DB0(v22, &qword_27DF9CCC8, &qword_23A6E3C40);
LABEL_21:
      v43 = sub_23A6A87C0(*(v59 + v29[7]), *(v41 + v29[7]));
      return v43 & 1;
    }

    goto LABEL_16;
  }

  v42 = v57;
  sub_23A6A86D4(v22, v57);
  if (v32(&v22[v39], 1, v4) == 1)
  {
    (*(v58 + 8))(v42, v4);
LABEL_16:
    v33 = v22;
    goto LABEL_17;
  }

  v45 = v58;
  v46 = &v22[v39];
  v47 = v29;
  v48 = v56;
  (*(v58 + 32))(v56, v46, v4);
  sub_23A6AA3D4(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v49 = sub_23A6DF604();
  v50 = *(v45 + 8);
  v51 = v48;
  v29 = v47;
  v50(v51, v4);
  v50(v42, v4);
  sub_23A646DB0(v22, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v49)
  {
    goto LABEL_21;
  }

LABEL_18:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_23A6AA0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A6AA164()
{
  result = qword_27DF9CEA8;
  if (!qword_27DF9CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CEA8);
  }

  return result;
}

void sub_23A6AA1E0()
{
  sub_23A6AA274();
  if (v0 <= 0x3F)
  {
    sub_23A6AA2CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6AA274()
{
  if (!qword_27DF9CD80)
  {
    sub_23A6DE0A4();
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CD80);
    }
  }
}

void sub_23A6AA2CC()
{
  if (!qword_27DF9CEB0)
  {
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CEB0);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23A6AA330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23A6AA378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A6AA3D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.EyeColor.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t _s8EyeColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8EyeColorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.HairColor.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.jurisdiction.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.isoCountryCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v4)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DFCE4();
  if (v2)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AA8F8()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v4)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6AA9DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23A6DFCE4();
  if (v2)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16IssuingAuthorityV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23A6AABCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A6AAC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v7, **(&unk_278B544B8 + *v0), v1, v5);
  v8 = sub_23A6DEFA4();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t getEnumTagSinglePayload for ForegroundActiveState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ForegroundActiveState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A6AAF7C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v28 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A69A270(v7, v6);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  v10 = a1 >> 62;
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v11 = sub_23A6DECA4();
    v12 = sub_23A6DF874();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (v10)
      {
        v14 = sub_23A6DFB54();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_23A63D000, v11, v12, "Received a batch of [%ld] transaction(s)", v13, 0xCu);
      MEMORY[0x23EE8A960](v13, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v6, v8);
  }

  if (v10)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A6DFB54())
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23EE89F80](v16, a1);
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      sub_23A6DAFF0(v28);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_23A6ABAF8(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_23A6ABAF8((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[64 * v22];
      v24 = v28[0];
      v25 = v28[1];
      v26 = v28[3];
      *(v23 + 4) = v28[2];
      *(v23 + 5) = v26;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      ++v16;
      if (v20 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_27:
  swift_beginAccess();
  sub_23A6AB2AC(v17);
  swift_endAccess();
}

uint64_t sub_23A6AB2AC(uint64_t result)
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

  result = sub_23A6ABAF8(result, v11, 1, v3);
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

uint64_t sub_23A6AB3A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_23A6DCDF0();
  sub_23A69A270(v9, v8);
  v10 = sub_23A6DECC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v12 = a1;
    v13 = sub_23A6DECA4();
    v14 = sub_23A6DF874();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_23A63D000, v13, v14, "Received batch header:\n%@", v15, 0xCu);
      sub_23A646DB0(v16, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v16, -1, -1);
      MEMORY[0x23EE8A960](v15, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v18 = *(v2 + 24);
  *(v2 + 24) = a1;

  v19 = a1;
}

double sub_23A6AB5AC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v53 - v11;
  v13 = sub_23A6DE2F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 24);
  if (!v19)
  {
    v39 = sub_23A6DCDF0();
    sub_23A69A270(v39, v9);
    v40 = sub_23A6DECC4();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v9, 1, v40) == 1)
    {
      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v45 = sub_23A6DECA4();
      v46 = sub_23A6DF884();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23A63D000, v45, v46, "Batch header was not populated", v47, 2u);
        MEMORY[0x23EE8A960](v47, -1, -1);
      }

      (*(v41 + 8))(v9, v40);
    }

    goto LABEL_15;
  }

  v20 = v19;
  v21 = sub_23A6DEAA4();
  swift_beginAccess();
  if (v21 != *(*(v2 + 16) + 16))
  {
    v42 = sub_23A6DCDF0();
    sub_23A69A270(v42, v12);
    v43 = sub_23A6DECC4();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v12, 1, v43) == 1)
    {

      sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v48 = v20;

      v49 = sub_23A6DECA4();
      v50 = sub_23A6DF884();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        *(v51 + 4) = *(*(v2 + 16) + 16);

        *(v51 + 12) = 2048;
        *(v51 + 14) = sub_23A6DEAA4();

        _os_log_impl(&dword_23A63D000, v49, v50, "Transactions received [%ld] do not match the requested [%ld]", v51, 0x16u);
        MEMORY[0x23EE8A960](v51, -1, -1);
      }

      else
      {

        v49 = v48;
      }

      (*(v44 + 8))(v12, v43);
    }

LABEL_15:
    *(a1 + 64) = 0;
    *&v38 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return *&v38;
  }

  sub_23A6DEAB4();
  v54 = sub_23A6DE2C4();
  v23 = v22;
  (*(v14 + 8))(v18, v13);
  v24 = sub_23A6DEAA4();
  v25 = sub_23A6DEAC4();
  v27 = v26;
  v28 = sub_23A6DE224();
  v30 = v29;
  sub_23A691B9C(v25, v27);
  v31 = sub_23A6DEA94();
  v32 = sub_23A6DEA84();
  v34 = v33;
  v35 = *(v2 + 16);

  sub_23A645604(v54, v23, v24, v28, v30, v31, v32, v34, v55, v36);

  v37 = v55[3];
  *(a1 + 32) = v55[2];
  *(a1 + 48) = v37;
  *(a1 + 64) = v56;
  v38 = v55[1];
  *a1 = v55[0];
  *(a1 + 16) = v38;
  return *&v38;
}

uint64_t sub_23A6ABA88()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23A6ABAC8()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  return result;
}

char *sub_23A6ABAF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CEB8, &unk_23A6E4060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t static MobileNationalIDCardDataRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardDataRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardDataRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardDataRequest.retainedElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardDataRequest() + 20));
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest()
{
  result = qword_27DFA15D0;
  if (!qword_27DFA15D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDataRequest.nonRetainedElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardDataRequest() + 24));
}

uint64_t MobileNationalIDCardDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDataRequest.init(region:retainedElements:nonRetainedElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MobileNationalIDCardDataRequest();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static MobileNationalIDCardDataRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardDataRequest();
  if ((sub_23A6AC058(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_23A6AC058(v6, v7);
}

uint64_t sub_23A6AC058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_23A6AC4A0(v16, v13);
        sub_23A6AC4A0(v17, v8);
        sub_23A6AD06C(&qword_27DF9CEF0, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6AC504(v8);
        sub_23A6AC504(v13);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileNationalIDCardDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - v8;
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = type metadata accessor for MobileNationalIDCardDataRequest();
  v11 = *(v10 + 20);
  v21 = v0;
  v12 = *(v0 + v11);
  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v15 = *(v22 + 72);
    do
    {
      sub_23A6AC4A0(v14, v9);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v9);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v16 = *(v21 + *(v10 + 24));
  result = MEMORY[0x23EE8A1E0](*(v16 + 16));
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v20 = *(v22 + 72);
    do
    {
      sub_23A6AC4A0(v19, v5);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6AC504(v5);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_23A6AC4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6AC504(uint64_t a1)
{
  v2 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileNationalIDCardDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = type metadata accessor for MobileNationalIDCardDataRequest();
  v11 = *(v0 + *(v10 + 20));
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v14 = *(v20 + 72);
    do
    {
      sub_23A6AC4A0(v13, v9);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v9);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v15 = *(v0 + *(v10 + 24));
  MEMORY[0x23EE8A1E0](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v18 = *(v20 + 72);
    do
    {
      sub_23A6AC4A0(v17, v5);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v5);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6AC7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v22 = a2;
  v13 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v13 + 16));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v16 = *(v23 + 72);
    do
    {
      sub_23A6AC4A0(v15, v12);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v12);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v17 = *(v2 + *(v22 + 24));
  result = MEMORY[0x23EE8A1E0](*(v17 + 16));
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v21 = *(v23 + 72);
    do
    {
      sub_23A6AC4A0(v20, v8);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6AC504(v8);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_23A6ACA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v13 = a2;
  v14 = *(v2 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v17 = *(v23 + 72);
    do
    {
      sub_23A6AC4A0(v16, v12);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v12);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  v18 = *(v2 + *(v13 + 24));
  MEMORY[0x23EE8A1E0](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v21 = *(v23 + 72);
    do
    {
      sub_23A6AC4A0(v20, v8);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v8);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6ACD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6AC058(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_23A6AC058(v7, v8);
}

uint64_t static MobileDocumentRequest<>.nationalIDCardData(region:retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDataRequest();
  *(a4 + *(v9 + 20)) = a2;
  *(a4 + *(v9 + 24)) = a3;
}

uint64_t sub_23A6ACE70(uint64_t a1)
{
  result = sub_23A6AD06C(&qword_27DF9CED0, type metadata accessor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6ACF10(uint64_t a1)
{
  result = sub_23A6AD06C(&qword_27DF9CEE0, type metadata accessor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6ACF90()
{
  sub_23A6DE314();
  if (v0 <= 0x3F)
  {
    sub_23A6AD014();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6AD014()
{
  if (!qword_27DF9CEE8)
  {
    type metadata accessor for MobileNationalIDCardDataRequest.Element();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CEE8);
    }
  }
}

uint64_t sub_23A6AD06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Element()
{
  result = qword_27DFA17C0;
  if (!qword_27DFA17C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6AD264(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6AD324@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6AC4A0(v6, a3);
}

uint64_t static MobileNationalIDCardDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD50C()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD594()
{
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6AD618()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD6E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6AD760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDataRequest.Response.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response() + 20);
  v4 = sub_23A6DE314();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Response()
{
  result = qword_27DFA1950;
  if (!qword_27DFA1950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MobileNationalIDCardDataRequest.Response.== infix(_:_:)()
{
  if (static MobileNationalIDCardDataRequest.Response.DocumentElements.== infix(_:_:)())
  {
    v0 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response() + 20);

    JUMPOUT(0x23EE887F0);
  }

  return 0;
}

uint64_t MobileNationalIDCardDataRequest.Response.hash(into:)()
{
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  v0 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response() + 20);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  v0 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response() + 20);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23A6ADDE4(a1, a3);
  v5 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response() + 20);
  v6 = sub_23A6DE314();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_23A6ADB3C(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  v2 = *(a1 + 20);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADC28(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  v3 = *(a2 + 20);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6ADCFC(uint64_t a1, uint64_t a2)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  v3 = *(a2 + 20);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6ADE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static MobileNationalIDCardDataRequest.Response.DocumentElements.== infix(_:_:)())
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x23EE887F0);
  }

  return 0;
}

uint64_t sub_23A6ADEF8(uint64_t a1)
{
  result = sub_23A6ADF50(&qword_27DF9CC60, type metadata accessor for MobileNationalIDCardDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6ADF50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6ADFC0()
{
  result = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  if (v1 <= 0x3F)
  {
    result = sub_23A6DE314();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements() + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements()
{
  result = qword_27DFA1A60;
  if (!qword_27DFA1A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements() + 24));
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.age.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6DE0A4();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v34 - v11;
  v13 = sub_23A6DE0F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v34 - v22;
  sub_23A646D48(v2, &v34 - v22, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v14 + 32))(v18, v23, v13);
    sub_23A6DFD04();
    sub_23A6AF394(&qword_27DF9CCF8, MEMORY[0x277CC8E50]);
    sub_23A6DF5E4();
    (*(v14 + 8))(v18, v13);
  }

  v24 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v25 = (v2 + v24[5]);
  v26 = v36;
  if (v25[1] >> 60 == 15)
  {
    sub_23A6DFD04();
  }

  else
  {
    v27 = *v25;
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  sub_23A6A3D10(a1, *(v2 + v24[6]));
  v28 = v2 + v24[7];
  if (*(v28 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v29 = *v28;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v29);
  }

  sub_23A646D48(v2 + v24[8], v12, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((*(v26 + 48))(v12, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v30 = v35;
    (*(v26 + 32))(v35, v12, v4);
    sub_23A6DFD04();
    sub_23A6AF394(&qword_27DF9CD00, MEMORY[0x277CC8990]);
    sub_23A6DF5E4();
    (*(v26 + 8))(v30, v4);
  }

  if (*(v2 + v24[9]) == 4)
  {
    sub_23A6DFD04();
  }

  else
  {
    v37 = *(v2 + v24[9]);
    sub_23A6DFD04();
    sub_23A6AF0B4();
    sub_23A6DF5E4();
  }

  v31 = (v2 + v24[10]);
  if (!v31[1])
  {
    return sub_23A6DFD04();
  }

  v32 = *v31;
  sub_23A6DFD04();
  return sub_23A6DF684();
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6AE734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a8;
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v19 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v20 = (a9 + v19[5]);
  *v20 = a2;
  v20[1] = a3;
  *(a9 + v19[6]) = a4;
  v21 = a9 + v19[7];
  *v21 = a5;
  *(v21 + 8) = a6 & 1;
  result = sub_23A69EED0(a7, a9 + v19[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v19[9]) = v18;
  v23 = (a9 + v19[10]);
  *v23 = a10;
  v23[1] = a11;
  return result;
}

uint64_t sub_23A6AE828()
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6AE86C()
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

BOOL _s15ProximityReader31MobileNationalIDCardDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v74 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v78 = &v74 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v14);
  v79 = &v74 - v15;
  v16 = sub_23A6DE0F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v74 - v30;
  v33 = *(v32 + 56);
  v80 = a1;
  sub_23A646D48(a1, &v74 - v30, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(a2, &v31[v33], &qword_27DF9CCC0, &unk_23A6E3790);
  v34 = *(v17 + 48);
  if (v34(v31, 1, v16) == 1)
  {
    if (v34(&v31[v33], 1, v16) == 1)
    {
      sub_23A646DB0(v31, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v35 = &qword_27DF9CDF8;
    v36 = &qword_23A6E3900;
    v37 = v31;
LABEL_7:
    sub_23A646DB0(v37, v35, v36);
    return 0;
  }

  sub_23A646D48(v31, v26, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v34(&v31[v33], 1, v16) == 1)
  {
    (*(v17 + 8))(v26, v16);
    goto LABEL_6;
  }

  (*(v17 + 32))(v21, &v31[v33], v16);
  sub_23A6AF394(&qword_27DF9CE50, MEMORY[0x277CC8E50]);
  v38 = sub_23A6DF604();
  v39 = *(v17 + 8);
  v39(v21, v16);
  v39(v26, v16);
  sub_23A646DB0(v31, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v40 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v41 = v40[5];
  v42 = v80;
  v44 = *(v80 + v41);
  v43 = *(v80 + v41 + 8);
  v45 = (a2 + v41);
  v46 = *v45;
  v47 = v45[1];
  if (v43 >> 60 == 15)
  {
    if (v47 >> 60 == 15)
    {
      sub_23A693750(v44, v43);
      sub_23A693750(v46, v47);
      sub_23A6A62F8(v44, v43);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v44, v43);
    sub_23A693750(v46, v47);
    sub_23A6A62F8(v44, v43);
    sub_23A6A62F8(v46, v47);
    return 0;
  }

  if (v47 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v44, v43);
  sub_23A693750(v46, v47);
  v48 = sub_23A6A3EE8(v44, v43, v46, v47);
  sub_23A6A62F8(v46, v47);
  sub_23A6A62F8(v44, v43);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v42 + v40[6]), *(a2 + v40[6])) & 1) == 0)
  {
    return 0;
  }

  v49 = v40[7];
  v50 = (v42 + v49);
  v51 = *(v42 + v49 + 8);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 8);
  if (v51)
  {
    v55 = v78;
    v54 = v79;
    if (!v53)
    {
      return 0;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    v55 = v78;
    v54 = v79;
    if (v53)
    {
      return 0;
    }
  }

  v57 = v40;
  v58 = v40[8];
  v59 = *(v75 + 48);
  sub_23A646D48(v42 + v58, v54, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(a2 + v58, v54 + v59, &qword_27DF9CCC8, &qword_23A6E3C40);
  v60 = v76;
  v61 = *(v77 + 48);
  if (v61(v54, 1, v76) == 1)
  {
    if (v61(v54 + v59, 1, v60) == 1)
    {
      sub_23A646DB0(v54, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_23A646D48(v54, v55, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v61(v54 + v59, 1, v60) == 1)
  {
    (*(v77 + 8))(v55, v60);
LABEL_28:
    v35 = &qword_27DF9CDF0;
    v36 = &qword_23A6E3DA0;
    v37 = v54;
    goto LABEL_7;
  }

  v62 = v77;
  v63 = v74;
  (*(v77 + 32))(v74, v54 + v59, v60);
  sub_23A6AF394(&qword_27DF9CE10, MEMORY[0x277CC8990]);
  v64 = sub_23A6DF604();
  v65 = *(v62 + 8);
  v65(v63, v60);
  v65(v55, v60);
  sub_23A646DB0(v54, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v66 = v57[9];
  v67 = *(v42 + v66);
  v68 = *(a2 + v66);
  if (v67 == 4)
  {
    if (v68 != 4)
    {
      return 0;
    }
  }

  else
  {
    v82 = v67;
    if (v68 == 4)
    {
      return 0;
    }

    v81 = v68;
    sub_23A6AF340();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v69 = v57[10];
  v70 = (v42 + v69);
  v71 = *(v42 + v69 + 8);
  v72 = (a2 + v69);
  v73 = v72[1];
  if (v71)
  {
    return v73 && (*v70 == *v72 && v71 == v73 || (sub_23A6DFC04() & 1) != 0);
  }

  return !v73;
}

unint64_t sub_23A6AF0B4()
{
  result = qword_27DF9CF08;
  if (!qword_27DF9CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF08);
  }

  return result;
}

void sub_23A6AF178()
{
  sub_23A6AF2EC(319, &qword_27DF9CD60, MEMORY[0x277CC8E50]);
  if (v0 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68);
    if (v1 <= 0x3F)
    {
      sub_23A6A6194();
      if (v2 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78);
        if (v3 <= 0x3F)
        {
          sub_23A6AF2EC(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
          if (v4 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9CF18);
            if (v5 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9C7C8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A6AF2EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23A6AF340()
{
  result = qword_27DF9CF20;
  if (!qword_27DF9CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF20);
  }

  return result;
}

uint64_t sub_23A6AF394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6AF3DC@<X0>(char *a1@<X8>)
{
  v2 = sub_23A6DE404();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE414();
  result = (*(v3 + 88))(v7, v2);
  if (result == *MEMORY[0x277D436C8])
  {
    result = (*(v3 + 8))(v7, v2);
    goto LABEL_3;
  }

  if (result == *MEMORY[0x277D436D0])
  {
    *a1 = 0;
  }

  else
  {
    if (result == *MEMORY[0x277D43638])
    {
      v9 = 1;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436D8])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43630])
    {
      v9 = 5;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43670])
    {
      v9 = 9;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43680])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43658])
    {
      v9 = 8;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43640])
    {
      v9 = 7;
      goto LABEL_4;
    }

    v10 = result == *MEMORY[0x277D43648] || result == *MEMORY[0x277D43650];
    if (v10 || result == *MEMORY[0x277D436B8] || result == *MEMORY[0x277D43698] || result == *MEMORY[0x277D436C0] || result == *MEMORY[0x277D43688])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43660])
    {
      v9 = 2;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43690] || result == *MEMORY[0x277D43628] || result == *MEMORY[0x277D43668])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43678])
    {
      v9 = 4;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436A0])
    {
      v9 = 6;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436A8] || result == *MEMORY[0x277D436B0])
    {
LABEL_3:
      v9 = 3;
LABEL_4:
      *a1 = v9;
      return result;
    }

    *a1 = 0;
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_23A6AF6FC()
{
  sub_23A6AF3DC(v5);
  v0 = sub_23A6DF644();
  v5[0] = v0;
  v5[1] = v1;
  v2 = sub_23A6DE3F4();
  if (!v3)
  {
    return v0;
  }

  MEMORY[0x23EE89BB0](v2);

  MEMORY[0x23EE89BB0](41, 0xE100000000000000);
  MEMORY[0x23EE89BB0](10272, 0xE200000000000000);

  return v5[0];
}

void sub_23A6AF7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  (*(a4 + 24))(a3, a4);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 preferredLocalizations];

  v8 = sub_23A6DF734();
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];

    v11 = objc_allocWithZone(sub_23A6DEB14());

    sub_23A6DEB04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A6AF8E0@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Response();
  v89 = *(v1 - 8);
  v90 = v1;
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v86 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF28, &qword_23A6E4350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v88 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v91 = &v86 - v11;
  v12 = type metadata accessor for MobileNationalIDCardDataRequest.Response();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v94 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF30, &qword_23A6E4358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v97 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v100 = &v86 - v22;
  v95 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v23 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v24);
  v96 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MobileDriversLicenseDataRequest.Response();
  v92 = *(v26 - 8);
  v93 = v26;
  v27 = *(v92 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v87 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF38, &qword_23A6E4360);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v86 - v37;
  v39 = sub_23A6DEB84();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23A6DE8C4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v86 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v86 - v53;
  sub_23A6DEB94();
  if ((*(v40 + 88))(v44, v39) != *MEMORY[0x277D43BE8])
  {
    (*(v40 + 8))(v44, v39);
LABEL_7:
    v69 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
    v70 = *(*(v69 - 8) + 56);
    v71 = v101;
    return v70(v71, 1, 1, v69);
  }

  (*(v40 + 96))(v44, v39);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  (*(v46 + 32))(v54, v44, v45);
  v56 = sub_23A6DF0C4();
  (*(*(v56 - 8) + 8))(&v44[v55], v56);
  (*(v46 + 16))(v50, v54, v45);
  v57 = (*(v46 + 88))(v50, v45);
  v58 = v54;
  if (v57 != *MEMORY[0x277D43928])
  {
    if (v57 == *MEMORY[0x277D43920])
    {
      sub_23A6C21E8(v38);
      sub_23A646D48(v38, v34, &qword_27DF9CF38, &qword_23A6E4360);
      if ((*(v92 + 48))(v34, 1, v93) == 1)
      {
        sub_23A646DB0(v38, &qword_27DF9CF38, &qword_23A6E4360);
        (*(v46 + 8))(v54, v45);
        goto LABEL_7;
      }

      v76 = v87;
      sub_23A6B0348(v34, v87, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v77 = v96;
      sub_23A6B1B48(v76, v96, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      swift_storeEnumTagMultiPayload();
      v75 = v101;
      sub_23A69F310(v77, v101);
      sub_23A6B1BB0(v76, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v78 = &qword_27DF9CF38;
      v79 = &qword_23A6E4360;
      v80 = v38;
    }

    else
    {
      if (v57 != *MEMORY[0x277D43930])
      {
        v81 = *(v46 + 8);
        v81(v54, v45);
        v82 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
        (*(*(v82 - 8) + 56))(v101, 1, 1, v82);
        return (v81)(v50, v45);
      }

      v72 = v91;
      sub_23A6C5134(v91);
      v73 = v88;
      sub_23A646D48(v72, v88, &qword_27DF9CF28, &qword_23A6E4350);
      v74 = (*(v89 + 48))(v73, 1, v90);
      v75 = v101;
      if (v74 == 1)
      {
        sub_23A646DB0(v72, &qword_27DF9CF28, &qword_23A6E4350);
        (*(v46 + 8))(v54, v45);
        v69 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
        v70 = *(*(v69 - 8) + 56);
        v71 = v75;
        return v70(v71, 1, 1, v69);
      }

      v83 = v86;
      sub_23A6B0348(v73, v86, type metadata accessor for MobilePhotoIDDataRequest.Response);
      v84 = v96;
      sub_23A6B1B48(v83, v96, type metadata accessor for MobilePhotoIDDataRequest.Response);
      swift_storeEnumTagMultiPayload();
      sub_23A69F310(v84, v75);
      sub_23A6B1BB0(v83, type metadata accessor for MobilePhotoIDDataRequest.Response);
      v78 = &qword_27DF9CF28;
      v79 = &qword_23A6E4350;
      v80 = v72;
    }

    sub_23A646DB0(v80, v78, v79);
    (*(v46 + 8))(v54, v45);
    v85 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
    return (*(*(v85 - 8) + 56))(v75, 0, 1, v85);
  }

  v59 = v100;
  sub_23A6C4870(v100);
  v60 = v97;
  sub_23A646D48(v59, v97, &qword_27DF9CF30, &qword_23A6E4358);
  v61 = 1;
  v62 = (*(v98 + 48))(v60, 1, v99);
  v63 = v101;
  if (v62 != 1)
  {
    v64 = v94;
    sub_23A6B0348(v60, v94, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    v65 = v96;
    sub_23A6B1B48(v64, v96, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    swift_storeEnumTagMultiPayload();
    sub_23A69F310(v65, v63);
    sub_23A6B1BB0(v64, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    v61 = 0;
  }

  sub_23A646DB0(v59, &qword_27DF9CF30, &qword_23A6E4358);
  v66 = *(v46 + 8);
  v66(v58, v45);
  v67 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
  (*(*(v67 - 8) + 56))(v63, v61, 1, v67);
  return (v66)(v50, v45);
}

uint64_t sub_23A6B0348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B0594(uint64_t (*a1)(void, __n128), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v91 = sub_23A6DE9B4();
  v7 = *(v91 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v91, v9);
  v90 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v79 - v14;
  v16 = a1(0, v13);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v88 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v79 - v23;
  v25 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v80 = a2(0);
  v81 = v3;
  v26 = *(v3 + *(v80 + 20));
  v27 = *(v26 + 16);
  v89 = a3;
  v84 = v27;
  v85 = v7;
  v87 = v17;
  if (!v27)
  {
LABEL_17:
    v45 = *(v81 + *(v80 + 24));
    v86 = *(v45 + 16);
    if (!v86)
    {
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF48, &qword_23A6E4370);
      v68 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378) - 8);
      v69 = *(*v68 + 72);
      v70 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_23A6E2120;
      v72 = v71 + v70;
      v73 = v68[14];
      v74 = sub_23A6DE314();
      (*(*(v74 - 8) + 16))(v72, v81, v74);
      v75 = *MEMORY[0x277D43928];
      v76 = sub_23A6DE8C4();
      (*(*(v76 - 8) + 104))(v72, v75, v76);
      *(v72 + v73) = v25;

      v77 = sub_23A6B1960(v71);
      swift_setDeallocating();
      sub_23A646DB0(v72, &qword_27DF9CF50, &unk_23A6E4378);
      swift_deallocClassInstance();

      return v77;
    }

    v46 = 0;
    v47 = v87;
    v84 = v45 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v48 = (v85 + 16);
    v49 = (v85 + 8);
    while (1)
    {
      if (v46 >= *(v45 + 16))
      {
        goto LABEL_35;
      }

      v50 = v88;
      sub_23A6B1B48(v84 + *(v47 + 72) * v46, v88, a3);
      v51 = *v48;
      v52 = v90;
      (*v48)(v90, v50, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v25;
      v54 = sub_23A69CEA0(v52);
      v56 = v25[2];
      v57 = (v55 & 1) == 0;
      v43 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v43)
      {
        goto LABEL_36;
      }

      v59 = v55;
      if (v25[3] < v58)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v67 = v54;
      sub_23A69DDB4();
      v54 = v67;
      v25 = v92;
      if (v59)
      {
LABEL_19:
        *(v25[7] + v54) = 0;
        (*v49)(v90, v91);
        a3 = v89;
        sub_23A6B1BB0(v88, v89);
        goto LABEL_20;
      }

LABEL_28:
      v25[(v54 >> 6) + 8] |= 1 << v54;
      v61 = v85;
      v62 = v54;
      v64 = v90;
      v63 = v91;
      v51(v25[6] + *(v85 + 72) * v54, v90, v91);
      *(v25[7] + v62) = 0;
      (*(v61 + 8))(v64, v63);
      a3 = v89;
      sub_23A6B1BB0(v88, v89);
      v65 = v25[2];
      v43 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v43)
      {
        goto LABEL_38;
      }

      v25[2] = v66;
      v47 = v87;
LABEL_20:
      if (v86 == ++v46)
      {
        goto LABEL_32;
      }
    }

    sub_23A69D350(v58, isUniquelyReferenced_nonNull_native);
    v54 = sub_23A69CEA0(v90);
    if ((v59 & 1) != (v60 & 1))
    {
      goto LABEL_39;
    }

LABEL_27:
    v25 = v92;
    if (v59)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v28 = 0;
  v83 = v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v86 = (v7 + 16);
  v82 = (v7 + 8);
  while (v28 < *(v26 + 16))
  {
    v29 = v26;
    sub_23A6B1B48(v83 + *(v87 + 72) * v28, v24, a3);
    v30 = *v86;
    (*v86)(v15, v24, v91);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v25;
    v33 = sub_23A69CEA0(v15);
    v34 = v25[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_34;
    }

    v37 = v32;
    if (v25[3] >= v36)
    {
      if (v31)
      {
        v25 = v92;
        if (v32)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A69DDB4();
        v25 = v92;
        if (v37)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A69D350(v36, v31);
      v38 = sub_23A69CEA0(v15);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_39;
      }

      v33 = v38;
      v25 = v92;
      if (v37)
      {
LABEL_3:
        *(v25[7] + v33) = 1;
        (*v82)(v15, v91);
        a3 = v89;
        sub_23A6B1BB0(v24, v89);
        goto LABEL_4;
      }
    }

    v25[(v33 >> 6) + 8] |= 1 << v33;
    v40 = v85;
    v41 = v91;
    v30((v25[6] + *(v85 + 72) * v33), v15, v91);
    *(v25[7] + v33) = 1;
    (*(v40 + 8))(v15, v41);
    a3 = v89;
    sub_23A6B1BB0(v24, v89);
    v42 = v25[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_37;
    }

    v25[2] = v44;
LABEL_4:
    ++v28;
    v26 = v29;
    if (v84 == v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

double sub_23A6B0CCC@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v38[-v9];
  v11 = sub_23A6DEB84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v38[-v19];
  sub_23A6DEB94();
  if ((*(v12 + 88))(v20, v11) == *MEMORY[0x277D43BE0])
  {
    (*(v12 + 96))(v20, v11);
    a2(v43, *v20, v20[1], v20[2], v20[3]);
    result = *v43;
    v22 = v43[1];
    *a3 = v43[0];
    *(a3 + 16) = v22;
  }

  else
  {
    v23 = *(v12 + 8);
    v23(v20, v11);
    v24 = sub_23A6DCDF0();
    sub_23A646D48(v24, v10, &qword_27DF9D240, qword_23A6E1D30);
    v25 = sub_23A6DECC4();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v10, 1, v25) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v42 = v23;
      v27 = a1;
      v28 = sub_23A6DECA4();
      v29 = sub_23A6DF874();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v40 = v28;
        v31 = v30;
        v41 = swift_slowAlloc();
        *&v43[0] = v41;
        *v31 = 136315138;
        v39 = v29;
        sub_23A6DEB94();
        sub_23A6B1F2C(&qword_27DF9CF58, MEMORY[0x277D43BF0]);
        v32 = sub_23A6DFBD4();
        v34 = v33;
        v42(v16, v11);
        v35 = sub_23A657E78(v32, v34, v43);

        *(v31 + 4) = v35;
        v36 = v40;
        _os_log_impl(&dword_23A63D000, v40, v39, "Unexpected response returned. Expected raw data response but received: %s", v31, 0xCu);
        v37 = v41;
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x23EE8A960](v37, -1, -1);
        MEMORY[0x23EE8A960](v31, -1, -1);
      }

      else
      {
      }

      (*(v26 + 8))(v10, v25);
    }

    result = 0.0;
    *a3 = xmmword_23A6E4340;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_23A6B10F8(uint64_t (*a1)(void, __n128), uint64_t (*a2)(void), unsigned int *a3)
{
  v78 = a3;
  v89 = sub_23A6DE9B4();
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v89, v8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v77 - v13;
  v15 = a1(0, v12);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8, v18);
  v86 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v77 - v22;
  v24 = *v3;
  v84 = v3[1];
  v25 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v26 = *(v24 + 16);
  v87 = v16;
  v88 = a2;
  v83 = v6;
  v81 = v26;
  if (v26)
  {
    v27 = 0;
    v80 = v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v85 = (v6 + 16);
    v79 = (v6 + 8);
    do
    {
      if (v27 >= *(v24 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_23A6DFC54();
        __break(1u);
        return result;
      }

      sub_23A6B1B48(v80 + *(v16 + 72) * v27, v23, a2);
      v28 = *v85;
      (*v85)(v14, v23, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v25;
      v31 = sub_23A69CEA0(v14);
      v32 = v25[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_33;
      }

      v35 = v30;
      if (v25[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v25 = v90;
          if (v30)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_23A69DDB4();
          v25 = v90;
          if (v35)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_23A69D350(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_23A69CEA0(v14);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_38;
        }

        v31 = v36;
        v25 = v90;
        if (v35)
        {
LABEL_3:
          *(v25[7] + v31) = 1;
          (*v79)(v14, v89);
          a2 = v88;
          sub_23A6B1BB0(v23, v88);
          goto LABEL_4;
        }
      }

      v25[(v31 >> 6) + 8] |= 1 << v31;
      v38 = v83;
      v39 = v89;
      v28((v25[6] + *(v83 + 72) * v31), v14, v89);
      *(v25[7] + v31) = 1;
      (*(v38 + 8))(v14, v39);
      a2 = v88;
      sub_23A6B1BB0(v23, v88);
      v40 = v25[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_36;
      }

      v25[2] = v42;
LABEL_4:
      ++v27;
      v16 = v87;
    }

    while (v81 != v27);
  }

  v43 = *(v84 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = v84 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v46 = v82;
    v47 = (v83 + 16);
    v85 = (v83 + 8);
    while (v44 < *(v84 + 16))
    {
      v48 = v45 + *(v16 + 72) * v44;
      v49 = v86;
      sub_23A6B1B48(v48, v86, a2);
      v50 = *v47;
      (*v47)(v46, v49, v89);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v25;
      v52 = sub_23A69CEA0(v46);
      v54 = v25[2];
      v55 = (v53 & 1) == 0;
      v41 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v41)
      {
        goto LABEL_35;
      }

      v57 = v53;
      if (v25[3] >= v56)
      {
        if ((v51 & 1) == 0)
        {
          v66 = v52;
          sub_23A69DDB4();
          v52 = v66;
        }
      }

      else
      {
        sub_23A69D350(v56, v51);
        v52 = sub_23A69CEA0(v46);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_38;
        }
      }

      a2 = v88;
      v25 = v90;
      if (v57)
      {
        *(v90[7] + v52) = 0;
        (*v85)(v46, v89);
        sub_23A6B1BB0(v86, a2);
      }

      else
      {
        v59 = v45;
        v90[(v52 >> 6) + 8] |= 1 << v52;
        v60 = v83;
        v61 = v52;
        v62 = v89;
        v50(v25[6] + *(v83 + 72) * v52, v82, v89);
        *(v25[7] + v61) = 0;
        v63 = *(v60 + 8);
        v46 = v82;
        v63(v82, v62);
        sub_23A6B1BB0(v86, a2);
        v64 = v25[2];
        v41 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v41)
        {
          goto LABEL_37;
        }

        v25[2] = v65;
        v45 = v59;
      }

      ++v44;
      v16 = v87;
      if (v43 == v44)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF48, &qword_23A6E4370);
  v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378) - 8);
  v68 = *(*v67 + 72);
  v69 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23A6E2120;
  v71 = v70 + v69;
  v72 = v67[14];
  v73 = *v78;
  v74 = sub_23A6DE8C4();
  (*(*(v74 - 8) + 104))(v71, v73, v74);
  *(v71 + v72) = v25;

  v75 = sub_23A6B1960(v70);
  swift_setDeallocating();
  sub_23A646DB0(v71, &qword_27DF9CF50, &unk_23A6E4378);
  swift_deallocClassInstance();

  return v75;
}

void *sub_23A6B1814@<X0>(void *(*a1)(_OWORD *__return_ptr, void, void, void, void)@<X3>, __int128 *a2@<X8>)
{
  v4 = sub_23A6DEB84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A6DEB94();
  if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D43BE0])
  {
    (*(v5 + 96))(v9, v4);
    result = a1(v13, *v9, v9[1], v9[2], v9[3]);
    v11 = v13[0];
    v12 = v13[1];
  }

  else
  {
    result = (*(v5 + 8))(v9, v4);
    v11 = xmmword_23A6E4340;
    v12 = 0uLL;
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

unint64_t sub_23A6B1960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
    v9 = sub_23A6DFB84();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_23A646D48(v11, v7, &qword_27DF9CF50, &unk_23A6E4378);
      result = sub_23A69CDCC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_23A6DE8C4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23A6B1B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B1BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6B1C10(uint64_t a1)
{
  result = sub_23A6B1C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1C38()
{
  result = qword_27DF9CF60;
  if (!qword_27DF9CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF60);
  }

  return result;
}

uint64_t sub_23A6B1C8C(uint64_t a1)
{
  result = sub_23A6B1F2C(&qword_27DF9CEE0, type metadata accessor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1CE4(uint64_t a1)
{
  result = sub_23A6B1D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1D0C()
{
  result = qword_27DF9CF68;
  if (!qword_27DF9CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF68);
  }

  return result;
}

unint64_t sub_23A6B1D60(uint64_t a1)
{
  result = sub_23A6B1D88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1D88()
{
  result = qword_27DF9CF70;
  if (!qword_27DF9CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF70);
  }

  return result;
}

unint64_t sub_23A6B1DDC(uint64_t a1)
{
  result = sub_23A6B1E04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1E04()
{
  result = qword_27DF9CF78;
  if (!qword_27DF9CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF78);
  }

  return result;
}

uint64_t sub_23A6B1E58(uint64_t a1)
{
  result = sub_23A6B1F2C(&qword_27DF9CF80, type metadata accessor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1EB0(uint64_t a1)
{
  result = sub_23A6B1ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1ED8()
{
  result = qword_27DF9CF88;
  if (!qword_27DF9CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF88);
  }

  return result;
}

uint64_t sub_23A6B1F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6B1FA8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_23A6B1FE8()
{
  v0 = swift_allocObject();
  sub_23A6B2020();
  return v0;
}

uint64_t sub_23A6B2020()
{
  v1 = v0;
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF90, &unk_23A6E44A0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  if ([objc_opt_self() isMainThread])
  {
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 applicationState];
  }

  else
  {
    sub_23A691180(0, &qword_27DF9CF98, 0x277D85C78);
    v5 = sub_23A6DF8B4();
    type metadata accessor for State(0);
    v3 = 0;
    sub_23A6DF8C4();

    v4 = v17;
  }

  if (v4 >= 3)
  {
    sub_23A6DFB44();
    __break(1u);

    v15 = v1[2];

    v16 = v1[5];

    type metadata accessor for UIForegroundActiveArbiter();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *(v1 + 33) = 1u >> (8 * v4);
    *(v1 + 32) = 2 - v4;
    v6 = *MEMORY[0x277D76648];
    v7 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v6, sub_23A6B2764, v7);

    v8 = *MEMORY[0x277D76768];
    v9 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v8, sub_23A6B3258, v9);

    v10 = *MEMORY[0x277D76660];
    v11 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v10, sub_23A6B3260, v11);

    v12 = *MEMORY[0x277D76770];
    v13 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v12, sub_23A6B3268, v13);

    return v1;
  }

  return result;
}

void sub_23A6B23C4(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 applicationState];

  *a1 = v3;
}

uint64_t sub_23A6B2468()
{
  v0 = sub_23A6DE144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(result + 33) & 1) == 0)
    {
      *(result + 33) = 1;
      swift_beginAccess();
      *(v6 + 32) = 2;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(&v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v1 + 8))(v4, v0);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 2);
    }
  }

  return result;
}

uint64_t sub_23A6B276C()
{
  v0 = sub_23A6DE144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (*(result + 33) == 1)
    {
      *(result + 33) = 0;
      swift_beginAccess();
      *(v6 + 32) = 1;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(&v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v1 + 8))(v4, v0);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 1);
    }
  }

  return result;
}

uint64_t sub_23A6B2A68()
{
  v0 = sub_23A6DE144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(*result + 168))())
    {
      v21 = v1;
      swift_beginAccess();
      *(v6 + 32) = 0;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v8 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(&v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v9 = v22;
            v10 = [*(v6 + 24) objectForKey_];
            if (v10)
            {
              v11 = v10;
              swift_getObjectType();
              v12 = swift_conformsToProtocol2();
              if (v12)
              {
                v20 = v12;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_23A6B4038(0, v8[2] + 1, 1, v8);
                }

                v14 = v8[2];
                v13 = v8[3];
                v18 = v14 + 1;
                v19 = v14;
                if (v14 >= v13 >> 1)
                {
                  v8 = sub_23A6B4038((v13 > 1), v14 + 1, 1, v8);
                }

                v15 = v19;
                v8[2] = v18;
                v16 = &v8[2 * v15];
                v17 = v20;
                v16[4] = v11;
                v16[5] = v17;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      (*(v21 + 8))(v4, v0);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v8, 0);
    }
  }

  return result;
}

uint64_t sub_23A6B2D78()
{
  v0 = sub_23A6DE144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(*result + 168))() != 3)
    {
      swift_beginAccess();
      *(v6 + 32) = 3;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(&v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v1 + 8))(v4, v0);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 3);
    }
  }

  return result;
}

void sub_23A6B3098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() defaultCenter];
  v17 = a2;
  v18 = a3;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v15 = sub_23A6B3270;
  ObjectType = &block_descriptor_3;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 addObserverForName:a1 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);
  ObjectType = swift_getObjectType();
  *&aBlock = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_23A6B3F28(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_23A6B3F28((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  sub_23A6B3F18(&aBlock, &v10[32 * v13 + 32]);
  *(v3 + 16) = v10;
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_23A6B3270(uint64_t a1)
{
  v2 = sub_23A6DE064();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23A6DE054();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23A6B3364()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_23A648D94(v4, v9);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      [v5 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v4 += 32;
      --v2;
    }

    while (v2);

    v6 = *(v0 + 16);
  }

  v7 = *(v0 + 40);

  return v0;
}

uint64_t sub_23A6B3484()
{
  sub_23A6B3364();

  return swift_deallocClassInstance();
}

uint64_t sub_23A6B34B8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v6 = result;
    active = type metadata accessor for UIForegroundActiveArbiter();
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      v13[3] = active;
      v13[4] = &off_284D54638;
      v13[0] = v4;
      v12 = *(v10 + 16);
      swift_unknownObjectRetain();

      v12(v13, a2, ObjectType, v10);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v8 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_23A6B358C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = sub_23A6DCDF0();
  sub_23A69A270(v11, v10);
  v12 = sub_23A6DECC4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_23A69A2E0(v10);
  }

  else
  {
    v14 = sub_23A6507C0();
    v15 = sub_23A6DCFB0();
    sub_23A6DCFBC(v14 & 1, v3, 0xD00000000000001BLL, 0x800000023A6EB310, v15, v16);

    (*(v13 + 8))(v10, v12);
  }

  v17 = *(v3 + 40);
  os_unfair_lock_lock(v17 + 4);
  v18 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v20 = *(a2 + 8);
  v21 = v18;
  v20(ObjectType, a2);
  v22 = sub_23A6DF614();

  [v21 setObject:a1 forKey:v22];

  os_unfair_lock_unlock(v17 + 4);
}

void sub_23A6B3774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = sub_23A6DCDF0();
  sub_23A69A270(v10, v9);
  v11 = sub_23A6DECC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23A69A2E0(v9);
  }

  else
  {
    v13 = sub_23A6507C0();
    v14 = sub_23A6DCFB0();
    sub_23A6DCFBC(v13 & 1, v3, 0xD00000000000001DLL, 0x800000023A6EB330, v14, v15);

    (*(v12 + 8))(v9, v11);
  }

  v16 = *(v3 + 40);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = *(a2 + 8);
  v20 = v17;
  v19(ObjectType, a2);
  v21 = sub_23A6DF614();

  [v20 removeObjectForKey_];

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_23A6B3958()
{
  v1 = *(*v0 + 168);
  v1();
  sub_23A6765D8();
  sub_23A6DF714();
  v2 = sub_23A6DF714();
  v3 = 1;
  if (v7 != v6)
  {
    (v1)(v2);
    sub_23A6DF714();
    sub_23A6DF714();
    sub_23A691180(0, &qword_27DF9CF98, 0x277D85C78);
    v4 = sub_23A6DF8B4();
    sub_23A6DF8C4();

    return v7;
  }

  return v3;
}

void sub_23A6B3AB8(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  v13 = [v12 sharedApplication];
  v14 = [v13 applicationState];

  if (v14 >= 2)
  {
    v16 = sub_23A6DCDF0();
    sub_23A69A270(v16, v11);
    v17 = sub_23A6DECC4();
    v35 = *(v17 - 8);
    v18 = *(v35 + 48);
    if (v18(v11, 1, v17) == 1)
    {
      sub_23A69A2E0(v11);
    }

    else
    {
      v33 = a1;
      v34 = v1;
      v19 = sub_23A6DECA4();
      v20 = sub_23A6DF8A4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v32 = v12;
        v22 = v21;
        *v21 = 0;
        _os_log_impl(&dword_23A63D000, v19, v20, "isForegroundAfterTransition, still in background", v21, 2u);
        v23 = v22;
        v12 = v32;
        MEMORY[0x23EE8A960](v23, -1, -1);
      }

      (*(v35 + 8))(v11, v17);
      a1 = v33;
    }

    [objc_opt_self() sleepForTimeInterval_];
    sub_23A69A270(v16, v7);
    if (v18(v7, 1, v17) == 1)
    {
      sub_23A69A2E0(v7);
    }

    else
    {
      v24 = sub_23A6DECA4();
      v25 = sub_23A6DF8A4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v12;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23A63D000, v24, v25, "isForegroundAfterTransition, check again", v27, 2u);
        v28 = v27;
        v12 = v26;
        MEMORY[0x23EE8A960](v28, -1, -1);
      }

      (*(v35 + 8))(v7, v17);
    }

    v29 = [v12 sharedApplication];
    v30 = [v29 applicationState];

    v15 = v30 < 2;
  }

  else
  {
    v15 = 1;
  }

  *a1 = v15;
}

void sub_23A6B3EB0(uint64_t a1, unint64_t *a2)
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

void *sub_23A6B3EFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_OWORD *sub_23A6B3F18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_23A6B3F28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA48, &qword_23A6E2398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23A6B4038(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFB0, &qword_23A6E45A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFB8, &unk_23A6E45B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A6B4184@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A6B430C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23A6B41BC(unsigned __int8 a1)
{
  v1 = 0x756F72676B636162;
  v2 = 0x74616E696D726574;
  if (a1 != 3)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A6B4264()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x74616E696D726574;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

unint64_t sub_23A6B430C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_23A6B4330(unsigned int *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v106 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v104 = v92 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v99 = v92 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v109 = v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB88, qword_23A6E2C70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v92 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB90, &unk_23A6E46F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = v92 - v23;
  v25 = sub_23A6DE644();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v105 = v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = v92 - v32;
  sub_23A6DE7E4();
  v35 = *(a1 + 3);
  v34 = *(a1 + 4);
  v36 = sub_23A6DE314();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  v37 = v26;
  sub_23A6DE7D4();
  sub_23A646DB0(v19, &qword_27DF9CB88, qword_23A6E2C70);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_23A646DB0(v24, &qword_27DF9CB90, &unk_23A6E46F0);
    v38 = sub_23A6DCDF0();
    v39 = v106;
    sub_23A646D48(v38, v106, &qword_27DF9D240, qword_23A6E1D30);
    v40 = sub_23A6DECC4();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v39, 1, v40) == 1)
    {
      sub_23A646DB0(v39, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v53 = sub_23A6DECA4();
      v54 = sub_23A6DF884();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_23A63D000, v53, v54, "PaymentCardTransactionRequest - invalidCurrencyCode", v55, 2u);
        MEMORY[0x23EE8A960](v55, -1, -1);
      }

      (*(v41 + 8))(v39, v40);
    }

    sub_23A6763DC();
    swift_allocError();
    *v56 = xmmword_23A6E2C30;
    *(v56 + 16) = 3;
    return swift_willThrow();
  }

  (*(v26 + 32))(v33, v24, v25);
  v106 = *a1;
  v42 = *(a1 + 2);
  v102 = *(a1 + 3);
  v43 = *(a1 + 4);
  v44 = *(a1 + 5);
  v101 = *(a1 + 6);
  v100 = *(a1 + 7);
  v45 = *(a1 + 8);
  v46 = *(a1 + 9);
  v95 = sub_23A6DCDF0();
  v47 = v109;
  sub_23A646D48(v95, v109, &qword_27DF9D240, qword_23A6E1D30);
  v48 = sub_23A6DECC4();
  v96 = *(v48 - 8);
  v49 = *(v96 + 48);
  v98 = v48;
  v93 = v49;
  v94 = v96 + 48;
  v50 = (v49)(v47, 1);
  v51 = v106 | (v42 << 32);
  v106 = v33;
  v97 = v37;
  v103 = v25;
  if (v50 == 1)
  {
    sub_23A646DB0(v109, &qword_27DF9D240, qword_23A6E1D30);
    v52 = v98;
  }

  else
  {
    v92[1] = v51;
    v58 = v105;
    (*(v37 + 16))(v105, v33, v25);
    v59 = v109;
    v60 = sub_23A6DECA4();
    v61 = sub_23A6DF874();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v58;
      v63 = swift_slowAlloc();
      *v63 = 134218240;
      *(v63 + 4) = sub_23A6DF944();
      *(v63 + 12) = 2048;
      result = sub_23A6DE634();
      v64 = -result;
      if (__OFSUB__(0, result))
      {
LABEL_34:
        __break(1u);
        return result;
      }

      (*(v37 + 8))(v62, v103);
      *(v63 + 14) = v64;
      _os_log_impl(&dword_23A63D000, v60, v61, "validateAmount - requested: %ld, expected: %ld", v63, 0x16u);
      MEMORY[0x23EE8A960](v63, -1, -1);
    }

    else
    {
      (*(v37 + 8))(v58, v103);
    }

    v52 = v98;

    (*(v96 + 8))(v59, v52);
  }

  v65 = sub_23A6DF944();
  v66 = v106;
  result = sub_23A6DE634();
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v65 >= -result)
  {
    MEMORY[0x23EE89E00](10);
    sub_23A6DE634();
    sub_23A6DE1E4();
    v69 = sub_23A6DF934();
    v71 = v70;
    v73 = v72;
    v74 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v107[0] = v69;
    v107[1] = v71;
    v108 = v73;
    v75 = [v74 initWithDecimal_];
    v76 = [v75 integerValue];

    v77 = MEMORY[0x23EE89E00](0);
    if ((MEMORY[0x23EE89E10](v77) & 1) != 0 && v76 < 1000000000000)
    {
      return (*(v97 + 8))(v106, v103);
    }

    else
    {
      v78 = v99;
      sub_23A646D48(v95, v99, &qword_27DF9D240, qword_23A6E1D30);
      v79 = v93(v78, 1, v52);
      v80 = v97;
      if (v79 == 1)
      {
        sub_23A646DB0(v78, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v87 = sub_23A6DECA4();
        v88 = sub_23A6DF884();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_23A63D000, v87, v88, "PaymentCardTransactionRequest - invalidAmount", v89, 2u);
          MEMORY[0x23EE8A960](v89, -1, -1);
        }

        (*(v96 + 8))(v78, v52);
      }

      v90 = v106;
      sub_23A6763DC();
      swift_allocError();
      *v91 = xmmword_23A6E46D0;
      *(v91 + 16) = 3;
      swift_willThrow();
      return (*(v80 + 8))(v90, v103);
    }
  }

  else
  {
    v67 = v104;
    sub_23A646D48(v95, v104, &qword_27DF9D240, qword_23A6E1D30);
    if (v93(v67, 1, v52) == 1)
    {
      sub_23A646DB0(v67, &qword_27DF9D240, qword_23A6E1D30);
      v68 = v97;
    }

    else
    {
      v81 = sub_23A6DECA4();
      v82 = sub_23A6DF884();
      v83 = os_log_type_enabled(v81, v82);
      v68 = v97;
      if (v83)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_23A63D000, v81, v82, "validateAmount - too many decimal places", v84, 2u);
        v85 = v84;
        v66 = v106;
        MEMORY[0x23EE8A960](v85, -1, -1);
      }

      (*(v96 + 8))(v67, v52);
    }

    sub_23A6763DC();
    swift_allocError();
    *v86 = xmmword_23A6E46D0;
    *(v86 + 16) = 3;
    swift_willThrow();
    return (*(v68 + 8))(v66, v103);
  }
}

uint64_t sub_23A6B4DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v36 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_23A6DEC44();
    if (result < v11)
    {
      v13 = sub_23A6DCDF0();
      sub_23A646D48(v13, v6, &qword_27DF9D240, qword_23A6E1D30);
      v14 = sub_23A6DECC4();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v6, 1, v14) == 1)
      {
        sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v30 = sub_23A6DECA4();
        v31 = sub_23A6DF884();
        if (os_log_type_enabled(v30, v31))
        {
          a1 = swift_slowAlloc();
          *a1 = 0;
          _os_log_impl(&dword_23A63D000, v30, v31, "too many preferred AIDs", a1, 2u);
          MEMORY[0x23EE8A960](a1, -1, -1);
        }

        (*(v15 + 8))(v6, v14);
      }

      sub_23A6763DC();
      swift_allocError();
      *v32 = xmmword_23A6E46E0;
      *(v32 + 16) = 3;
      swift_willThrow();
      return a1;
    }

    for (i = (a1 + 40); ; i += 2)
    {
      v17 = *(i - 1);
      v18 = *i;
      v19 = *i >> 62;
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_29;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        v22 = v20 - v21;
        if (__OFSUB__(v20, v21))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (!v19)
        {
          if (BYTE6(v18) < 5uLL)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        if (__OFSUB__(HIDWORD(v17), v17))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        v22 = HIDWORD(v17) - v17;
      }

      result = sub_23A693764(*(i - 1), *i);
      if (v22 < 5)
      {
        goto LABEL_29;
      }

LABEL_18:
      if (v19 == 2)
      {
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_43;
        }

        if (v26 > 16)
        {
LABEL_29:
          v27 = sub_23A6DCDF0();
          sub_23A646D48(v27, v10, &qword_27DF9D240, qword_23A6E1D30);
          v28 = sub_23A6DECC4();
          v29 = *(v28 - 8);
          if ((*(v29 + 48))(v10, 1, v28) == 1)
          {
            sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            a1 = sub_23A6DECA4();
            v33 = sub_23A6DF884();
            if (os_log_type_enabled(a1, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 0;
              _os_log_impl(&dword_23A63D000, a1, v33, "invalid AID length", v34, 2u);
              MEMORY[0x23EE8A960](v34, -1, -1);
            }

            (*(v29 + 8))(v10, v28);
          }

          sub_23A6763DC();
          swift_allocError();
          *v35 = xmmword_23A6E46E0;
          *(v35 + 16) = 3;
          swift_willThrow();
          sub_23A691B9C(v17, v18);
          return a1;
        }
      }

      else if (v19 == 1)
      {
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_42;
        }

        if (HIDWORD(v17) - v17 > 16)
        {
          goto LABEL_29;
        }
      }

      else if (BYTE6(v18) > 0x10uLL)
      {
        goto LABEL_29;
      }

      result = sub_23A691B9C(v17, v18);
      if (!--v11)
      {

        return a1;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23A6B5230(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v54 = &v44 - v13;
  v14 = type metadata accessor for VASRequest.Merchant(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v48 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(a1 + 16) + 16);
  if (v19)
  {

    a2 = result;
  }

  else
  {
    v19 = *(a2 + 2);

    if (!v19)
    {

      v21 = 0x800000023A6EB4D0;
      sub_23A6763DC();
      swift_allocError();
      v23 = 0xD000000000000018;
LABEL_21:
      *v22 = v23;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
LABEL_22:
      swift_willThrow();
      return a2;
    }
  }

  if (v19 >= 0x33)
  {

    v21 = 0x800000023A6EB4B0;
    sub_23A6763DC();
    swift_allocError();
    v23 = 0xD00000000000001FLL;
    goto LABEL_21;
  }

  v45 = v9;
  v46 = v2;
  v47 = a1;
  v24 = 0;
  v50 = &a2[(*(v15 + 80) + 32) & ~*(v15 + 80)];
  v51 = a2;
  v25 = &qword_27DF9CB68;
  v26 = v48;
  v49 = v19;
  do
  {
    if (v24 >= *(a2 + 2))
    {
      __break(1u);
      return result;
    }

    sub_23A6B57B8(&v50[*(v15 + 72) * v24], v26);
    v28 = v54;
    sub_23A646D48(v26 + *(v14 + 20), v54, v25, &unk_23A6E4700);
    v29 = v25;
    v30 = sub_23A6DE1D4();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v28, 1, v30) == 1)
    {
      sub_23A6B581C(v26);
      result = sub_23A646DB0(v28, v29, &unk_23A6E4700);
      v25 = v29;
      a2 = v51;
      v27 = v49;
    }

    else
    {
      v32 = sub_23A6DE1B4();
      v34 = v33;
      (*(v31 + 8))(v28, v30);
      if ((v34 & 0x1000000000000000) != 0)
      {
        v35 = sub_23A6DF6D4();

        if (v35 >= 65)
        {
          goto LABEL_16;
        }
      }

      else
      {

        if ((v34 & 0x2000000000000000) == 0 && (v32 & 0xFFFFFFFFFFFFuLL) >= 0x41)
        {
LABEL_16:

          v52 = 0;
          v53 = 0xE000000000000000;
          sub_23A6DFA84();

          v52 = 0x746E61686372654DLL;
          v53 = 0xE900000000000020;
          a2 = v48;
          MEMORY[0x23EE89BB0](*v48, v48[1]);
          MEMORY[0x23EE89BB0](0xD00000000000001DLL, 0x800000023A6EB490);
          v36 = v52;
          v37 = v53;
          sub_23A6763DC();
          swift_allocError();
          *v38 = v36;
          *(v38 + 8) = v37;
          *(v38 + 16) = 1;
          swift_willThrow();
          sub_23A6B581C(a2);
          return a2;
        }
      }

      v26 = v48;
      result = sub_23A6B581C(v48);
      a2 = v51;
      v27 = v49;
      v25 = &qword_27DF9CB68;
    }

    ++v24;
  }

  while (v27 != v24);
  v39 = v47;
  v41 = *(v47 + 24);
  v40 = *(v47 + 32);

  if (sub_23A6DF694() >= 23)
  {

    sub_23A6763DC();
    swift_allocError();
    *v42 = 0xD000000000000029;
    *(v42 + 8) = 0x800000023A6EB460;
    *(v42 + 16) = 1;
    goto LABEL_22;
  }

  type metadata accessor for VASRequest(0);
  a2 = VASRequest.__allocating_init(vasMerchants:localizedVASType:)(a2, v41, v40);
  v43 = v45;
  (*(*v39 + 104))();
  (*(*a2 + 112))(v43);
  return a2;
}

uint64_t sub_23A6B57B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASRequest.Merchant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B581C(uint64_t a1)
{
  v2 = type metadata accessor for VASRequest.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A6B589C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_23A6DEB24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  a4[3](a3, a4);
  a4[4](a3, a4);
  v9 = objc_allocWithZone(sub_23A6DEB34());
  sub_23A6DEB44();
  a4[2](a3, a4);
  objc_allocWithZone(sub_23A6DEB74());

  return sub_23A6DEB64();
}

uint64_t sub_23A6B59E0()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A6DE8C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + *(type metadata accessor for MobileDocumentDisplayRequest() + 20));
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23A6B68E8(0, v14, 0);
    v15 = v23;
    v16 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    v21[1] = v8 + 32;
    v22 = v17;
    do
    {
      sub_23A6B698C(v16, v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      (*(v8 + 16))(v12, v6, v7);
      sub_23A6B692C(v6, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      v23 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23A6B68E8(v18 > 1, v19 + 1, 1);
        v15 = v23;
      }

      *(v15 + 16) = v19 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v12, v7);
      v16 += v22;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_23A6B5C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 20);
  v11 = type metadata accessor for MobileDocumentDisplayRequest.Options();
  sub_23A6B698C(v10 + *(v11 + 20), v9, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  v12 = sub_23A6DEB24();
  return (*(*(v12 - 8) + 32))(a2, v9, v12);
}

uint64_t sub_23A6B5DAC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v26 = a2;
  v27 = a3;
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_23A6DE9B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = *(*v3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v28 = MEMORY[0x277D84F90];
    sub_23A6B68A4(0, v17, 0);
    v18 = v28;
    v19 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    v24[1] = v11 + 32;
    v25 = v20;
    do
    {
      sub_23A6B698C(v19, v9, v26);
      (*(v11 + 16))(v15, v9, v10);
      sub_23A6B692C(v9, v27);
      v28 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23A6B68A4(v21 > 1, v22 + 1, 1);
        v18 = v28;
      }

      *(v18 + 16) = v22 + 1;
      (*(v11 + 32))(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v15, v10);
      v19 += v25;
      --v17;
    }

    while (v17);
  }

  return v18;
}

uint64_t sub_23A6B5FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFC0, &qword_23A6E4730);
  v0 = sub_23A6DE8C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23A6E2120;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x277D43920], v0);
  return v4;
}

uint64_t sub_23A6B6120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B698C(v2 + *(a1 + 20), v14, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6B69F4(v14, v9, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  v15 = sub_23A6DEB24();
  return (*(*(v15 - 8) + 32))(a2, v9, v15);
}

uint64_t sub_23A6B6260()
{
  v1 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A6DE9B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + *(type metadata accessor for MobileNationalIDCardDisplayRequest() + 20));
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23A6B68A4(0, v14, 0);
    v15 = v23;
    v16 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    v21[1] = v8 + 32;
    v22 = v17;
    do
    {
      sub_23A6B698C(v16, v6, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      (*(v8 + 16))(v12, v6, v7);
      sub_23A6B692C(v6, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      v23 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23A6B68A4(v18 > 1, v19 + 1, 1);
        v15 = v23;
      }

      *(v15 + 16) = v19 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v12, v7);
      v16 += v22;
      --v14;
    }

    while (v14);
  }

  return v15;
}

void *sub_23A6B64C4@<X0>(void *(*a1)(uint64_t *__return_ptr, char *)@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_23A6DEBB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEBC4();
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 != *MEMORY[0x277D43C10])
  {
    if (v10 == *MEMORY[0x277D43C00])
    {
      v14 = 1;
      v11 = &v14;
      goto LABEL_7;
    }

    if (v10 == *MEMORY[0x277D43C08])
    {
      v15 = 2;
      v11 = &v15;
      goto LABEL_7;
    }

    (*(v5 + 8))(v9, v4);
  }

  v16 = 0;
  v11 = &v16;
LABEL_7:
  result = a1(&v17, v11);
  *a2 = v17;
  return result;
}

uint64_t sub_23A6B663C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFC0, &qword_23A6E4730);
  v1 = sub_23A6DE8C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23A6E2120;
  v6 = sub_23A6DE314();
  (*(*(v6 - 8) + 16))(v5 + v4, v0, v6);
  (*(v2 + 104))(v5 + v4, *MEMORY[0x277D43928], v1);
  return v5;
}

uint64_t sub_23A6B6764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B698C(v2 + *(a1 + 24), v14, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6B69F4(v14, v9, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  v15 = sub_23A6DEB24();
  return (*(*(v15 - 8) + 32))(a2, v9, v15);
}

size_t sub_23A6B68A4(size_t a1, int64_t a2, char a3)
{
  result = sub_23A6B6BAC(a1, a2, a3, *v3, &qword_27DF9CFE0, &qword_23A6E47B8, MEMORY[0x277D43AE8]);
  *v3 = result;
  return result;
}

size_t sub_23A6B68E8(size_t a1, int64_t a2, char a3)
{
  result = sub_23A6B6BAC(a1, a2, a3, *v3, &qword_27DF9CFC0, &qword_23A6E4730, MEMORY[0x277D43938]);
  *v3 = result;
  return result;
}

uint64_t sub_23A6B692C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A6B698C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B69F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B6A5C(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFC8, type metadata accessor for MobileDocumentDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6AB4(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFD0, type metadata accessor for MobileDriversLicenseDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6B0C(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFD8, type metadata accessor for MobileNationalIDCardDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6B64(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_23A6B6BAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t type metadata accessor for DiscoveryErrorSheet()
{
  result = qword_27DFA2400;
  if (!qword_27DFA2400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6B6DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v53 = a2;
  v3 = type metadata accessor for DiscoveryErrorSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v50 = v7;
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D040, &qword_23A6E4928);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9, v12);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D048, &qword_23A6E4930);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v52 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v47 - v24;
  *v25 = sub_23A6DF224();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D050, &qword_23A6E4938) + 44)];
  v49 = v8;
  sub_23A6B7E0C(a1, v8);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = swift_allocObject();
  sub_23A6B7E70(v8, v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D058, &qword_23A6E4940);
  sub_23A6B7F34();
  sub_23A6DF514();
  v29 = v10[2];
  v30 = v51;
  v29(v51, v17, v9);
  *v26 = 0;
  v26[8] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D098, &qword_23A6E4960);
  v29(&v26[*(v31 + 48)], v30, v9);
  v32 = v10[1];
  v32(v17, v9);
  v32(v30, v9);
  v33 = v48;
  v34 = *v48;
  v35 = v48[1];
  v36 = v48[2];
  v37 = v48[3];

  sub_23A6B8E94(v34, v35, v36, v37, 0, &v54);
  v38 = v49;
  sub_23A6B7E0C(v33, v49);
  v39 = swift_allocObject();
  sub_23A6B7E70(v38, v39 + v27);
  v40 = v52;
  sub_23A646D48(v25, v52, &qword_27DF9D048, &qword_23A6E4930);
  v41 = v53;
  sub_23A646D48(v40, v53, &qword_27DF9D048, &qword_23A6E4930);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D0A0, &qword_23A6E4968) + 48);
  v43 = v54;
  v44 = v55;
  v57[0] = v54;
  v57[1] = v55;
  v58 = v56;
  *&v59 = 0;
  *(&v59 + 1) = sub_23A6B8228;
  v60 = v39;
  *(v42 + 64) = v39;
  *v42 = v43;
  *(v42 + 16) = v44;
  v45 = v59;
  *(v42 + 32) = v58;
  *(v42 + 48) = v45;
  sub_23A646D48(v57, v61, &qword_27DF9D0A8, &qword_23A6E4970);
  sub_23A646DB0(v25, &qword_27DF9D048, &qword_23A6E4930);
  v61[0] = v54;
  v61[1] = v55;
  v62 = v56;
  v63 = 0;
  v64 = 0;
  v65 = sub_23A6B8228;
  v66 = v39;
  sub_23A646DB0(v61, &qword_27DF9D0A8, &qword_23A6E4970);
  return sub_23A646DB0(v40, &qword_27DF9D048, &qword_23A6E4930);
}

uint64_t sub_23A6B72EC(uint64_t a1)
{
  v23 = sub_23A6DF214();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v22 - v10);
  v12 = sub_23A6DF114();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DiscoveryErrorSheet();
  sub_23A646D48(a1 + *(v18 + 28), v11, &qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v19 = *v11;
    sub_23A6DF894();
    v20 = sub_23A6DF364();
    sub_23A6DEC94();

    sub_23A6DF204();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v23);
  }

  sub_23A6DF104();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_23A6B7574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DF4F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DF4E4();
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v2);
  v23 = sub_23A6DF504();

  (*(v3 + 8))(v7, v2);
  sub_23A6DF554();
  sub_23A6DF0F4();
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v13 = v30;
  v12 = v31;
  v14 = [objc_opt_self() systemDarkGrayColor];
  v15 = sub_23A6DF4D4();
  KeyPath = swift_getKeyPath();
  v25 = v9;
  v24 = v11;
  v17 = sub_23A6DF384();
  result = sub_23A6DF0D4();
  *a1 = v23;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v12;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
  *(a1 + 104) = v22;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_23A6B7778@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23A6B77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for DiscoveryErrorSheet() + 28);

  return sub_23A6B782C(a7, v9);
}

uint64_t sub_23A6B782C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B78C0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23A6DF544();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFF0, &qword_23A6E47F8);
  sub_23A6B6DF8(v1, a1 + *(v4 + 44));
  v5 = sub_23A6DF174();
  v6 = sub_23A6DF384();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFF8, &unk_23A6E4800);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  v8[8] = v6;
  return result;
}

unint64_t sub_23A6B7968()
{
  result = qword_27DF9D000;
  if (!qword_27DF9D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D000);
  }

  return result;
}

uint64_t sub_23A6B79D8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for DiscoveryErrorSheet() + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  result = swift_storeEnumTagMultiPayload();
  strcpy(a1, "Unable to Open");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0xD000000000000037;
  *(a1 + 24) = 0x800000023A6EB5B0;
  *(a1 + 32) = nullsub_1;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_23A6B7A9C(uint64_t a1)
{
  v2 = sub_23A6B7DB8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23A6B7AE8(uint64_t a1)
{
  v2 = sub_23A6B7DB8();

  return MEMORY[0x28212D8E0](a1, v2);
}

void sub_23A6B7B5C()
{
  sub_23A6B7BF0();
  if (v0 <= 0x3F)
  {
    sub_23A6B7C40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23A6B7BF0()
{
  result = qword_27DF9D008;
  if (!qword_27DF9D008)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DF9D008);
  }

  return result;
}

void sub_23A6B7C40()
{
  if (!qword_27DF9D010)
  {
    sub_23A6DF114();
    v0 = sub_23A6DF0E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D010);
    }
  }
}

unint64_t sub_23A6B7CA8()
{
  result = qword_27DF9D018;
  if (!qword_27DF9D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9CFF8, &unk_23A6E4800);
    sub_23A6A64B0(&qword_27DF9D020, &qword_27DF9D028, &qword_23A6E4920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D018);
  }

  return result;
}

unint64_t sub_23A6B7D60()
{
  result = qword_27DF9D030;
  if (!qword_27DF9D030)
  {
    type metadata accessor for DiscoveryErrorSheet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D030);
  }

  return result;
}

unint64_t sub_23A6B7DB8()
{
  result = qword_27DF9D038;
  if (!qword_27DF9D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D038);
  }

  return result;
}

uint64_t sub_23A6B7E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryErrorSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B7E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryErrorSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B7ED4()
{
  v1 = *(type metadata accessor for DiscoveryErrorSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23A6B72EC(v2);
}

unint64_t sub_23A6B7F34()
{
  result = qword_27DF9D060;
  if (!qword_27DF9D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D058, &qword_23A6E4940);
    sub_23A6B7FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D060);
  }

  return result;
}

unint64_t sub_23A6B7FC0()
{
  result = qword_27DF9D068;
  if (!qword_27DF9D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D070, &qword_23A6E4948);
    sub_23A6B8078();
    sub_23A6A64B0(&qword_27DF9D088, &qword_27DF9D090, &qword_23A6E4958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D068);
  }

  return result;
}

unint64_t sub_23A6B8078()
{
  result = qword_27DF9D078;
  if (!qword_27DF9D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D080, &qword_23A6E4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D078);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for DiscoveryErrorSheet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23A6DF114();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A6B8228()
{
  v1 = *(type metadata accessor for DiscoveryErrorSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 40);
  return (*(v2 + 32))();
}

uint64_t sub_23A6B828C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A6DF194();
  *a1 = result;
  return result;
}

uint64_t sub_23A6B82B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_23A6DF1A4();
}

double sub_23A6B82E4@<D0>(uint64_t a1@<X8>)
{
  v93 = sub_23A6DF254();
  v127 = 1;
  v2 = *(v1 + 8);
  v130 = *v1;
  *v131 = v2;
  sub_23A677268();

  v3 = sub_23A6DF434();
  v5 = v4;
  v7 = v6;
  sub_23A6DF3E4();
  v8 = sub_23A6DF424();
  v10 = v9;
  v12 = v11;

  sub_23A6B99F0(v3, v5, v7 & 1);

  sub_23A6DF3C4();
  v13 = sub_23A6DF404();
  v103 = v14;
  v104 = v13;
  LOBYTE(v5) = v15;
  v105 = v16;
  sub_23A6B99F0(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v101 = swift_getKeyPath();
  v95 = v5 & 1;
  v172 = v5 & 1;
  v100 = sub_23A6DF394();
  v92 = *(v1 + 32);
  sub_23A6DF0D4();
  v18 = v17;
  v89 = v17;
  v86 = v19;
  v96 = v21;
  v97 = v20;
  v173 = 0;
  v98 = sub_23A6DF374();
  sub_23A6DF0D4();
  v23 = v22;
  v90 = v24;
  v91 = v22;
  v87 = v26;
  v88 = v25;
  v27 = v24;
  v175 = 0;
  v99 = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v178 = 0;
  v36 = *(v1 + 24);
  v130 = *(v1 + 16);
  *v131 = v36;

  v37 = sub_23A6DF434();
  v39 = v38;
  v41 = v40;
  sub_23A6DF3F4();
  v42 = sub_23A6DF424();
  v44 = v43;
  LOBYTE(v8) = v45;

  sub_23A6B99F0(v37, v39, v41 & 1);

  sub_23A6DF4A4();
  v46 = sub_23A6DF414();
  v48 = v47;
  v50 = v49;
  v85 = v51;

  sub_23A6B99F0(v42, v44, v8 & 1);

  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  LOBYTE(v37) = v50 & 1;
  v164 = v50 & 1;
  LOBYTE(v42) = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v55 = v54;
  v83 = v57;
  v84 = v56;
  v82 = v58;
  v165 = 0;
  v59 = sub_23A6DF374();
  sub_23A6DF0D4();
  v167 = 0;
  v152 = 1;
  *&__src[0] = v104;
  *(&__src[0] + 1) = v103;
  LOBYTE(__src[1]) = v95;
  *(&__src[1] + 1) = *v171;
  DWORD1(__src[1]) = *&v171[3];
  *(&__src[1] + 1) = v105;
  *&__src[2] = KeyPath;
  BYTE8(__src[2]) = 1;
  HIDWORD(__src[2]) = *&v170[3];
  *(&__src[2] + 9) = *v170;
  *&__src[3] = v101;
  *(&__src[3] + 1) = 0x3FE0000000000000;
  LOBYTE(__src[4]) = v100;
  DWORD1(__src[4]) = *&v174[3];
  *(&__src[4] + 1) = *v174;
  *(&__src[4] + 1) = v18;
  *&__src[5] = v86;
  *(&__src[5] + 1) = v97;
  *&__src[6] = v96;
  BYTE8(__src[6]) = 0;
  HIDWORD(__src[6]) = *&v177[3];
  *(&__src[6] + 9) = *v177;
  LOBYTE(__src[7]) = v98;
  DWORD1(__src[7]) = *&v176[3];
  *(&__src[7] + 1) = *v176;
  *(&__src[7] + 1) = v23;
  *&__src[8] = v88;
  *(&__src[8] + 1) = v27;
  *&__src[9] = v87;
  BYTE8(__src[9]) = 0;
  HIDWORD(__src[9]) = *(v180 + 3);
  *(&__src[9] + 9) = v180[0];
  LOBYTE(__src[10]) = v99;
  DWORD1(__src[10]) = *&v179[3];
  *(&__src[10] + 1) = *v179;
  *(&__src[10] + 1) = v29;
  *&__src[11] = v31;
  *(&__src[11] + 1) = v33;
  *&__src[12] = v35;
  BYTE8(__src[12]) = 0;
  *&v151[7] = __src[0];
  *&v151[71] = __src[4];
  *&v151[55] = __src[3];
  *&v151[39] = __src[2];
  *&v151[23] = __src[1];
  *&v151[135] = __src[8];
  *&v151[119] = __src[7];
  *&v151[103] = __src[6];
  *&v151[87] = __src[5];
  *&v151[192] = *(&__src[11] + 9);
  *&v151[183] = __src[11];
  *&v151[167] = __src[10];
  *&v151[151] = __src[9];
  *&v153 = v46;
  *(&v153 + 1) = v48;
  LOBYTE(v154) = v37;
  *(&v154 + 1) = *v163;
  DWORD1(v154) = *&v163[3];
  *(&v154 + 1) = v85;
  *&v155 = v52;
  BYTE8(v155) = 1;
  *(&v155 + 9) = *v162;
  HIDWORD(v155) = *&v162[3];
  *&v156 = v53;
  *(&v156 + 1) = 0x3FE0000000000000;
  LOBYTE(v157) = v42;
  DWORD1(v157) = *&v166[3];
  *(&v157 + 1) = *v166;
  *(&v157 + 1) = v55;
  *&v158 = v84;
  *(&v158 + 1) = v83;
  *&v159 = v82;
  BYTE8(v159) = 0;
  *(&v159 + 9) = v169[0];
  HIDWORD(v159) = *(v169 + 3);
  LOBYTE(v160) = v59;
  *(&v160 + 1) = *v168;
  DWORD1(v160) = *&v168[3];
  *(&v160 + 1) = v60;
  *v161 = v61;
  *&v161[8] = v62;
  *&v161[16] = v63;
  v161[24] = 0;
  *&v150[103] = v159;
  *&v150[119] = v160;
  *&v150[135] = *v161;
  *&v150[39] = v155;
  *&v150[55] = v156;
  *&v150[71] = v157;
  *&v150[87] = v158;
  *&v150[7] = v153;
  *&v150[23] = v154;
  *&v150[144] = *&v161[9];
  v149 = 1;
  *&v106 = v46;
  *(&v106 + 1) = v48;
  LOBYTE(v107) = v37;
  *(&v107 + 1) = *v163;
  DWORD1(v107) = *&v163[3];
  *(&v107 + 1) = v85;
  *&v108 = v52;
  BYTE8(v108) = 1;
  *(&v108 + 9) = *v162;
  HIDWORD(v108) = *&v162[3];
  v109 = v53;
  v110 = 0x3FE0000000000000;
  v111 = v42;
  *&v112[3] = *&v166[3];
  *v112 = *v166;
  v113 = v55;
  v114 = v84;
  v115 = v83;
  v116 = v82;
  v117 = 0;
  *v118 = v169[0];
  *&v118[3] = *(v169 + 3);
  v119 = v59;
  *&v120[3] = *&v168[3];
  *v120 = *v168;
  v121 = v60;
  v122 = v61;
  v123 = v62;
  v124 = v63;
  v125 = 0;
  sub_23A646D48(__src, &v130, &qword_27DF9D148, &qword_23A6E4C70);
  sub_23A646D48(&v153, &v130, &qword_27DF9D150, &unk_23A6E4C78);
  sub_23A646DB0(&v106, &qword_27DF9D150, &unk_23A6E4C78);
  v130 = v104;
  *v131 = v103;
  v131[8] = v95;
  *&v131[9] = *v171;
  *&v131[12] = *&v171[3];
  *&v131[16] = v105;
  *&v131[24] = KeyPath;
  v131[32] = 1;
  *v132 = *v170;
  *&v132[3] = *&v170[3];
  *&v132[7] = v101;
  *&v132[15] = 0x3FE0000000000000;
  v132[23] = v100;
  *&v132[27] = *&v174[3];
  *&v132[24] = *v174;
  *&v132[31] = v89;
  *&v132[39] = v86;
  *&v132[47] = v97;
  *&v132[55] = v96;
  v132[63] = 0;
  *v133 = *v177;
  *&v133[3] = *&v177[3];
  v133[7] = v98;
  *&v133[8] = *v176;
  *&v133[11] = *&v176[3];
  *&v133[15] = v91;
  *&v133[23] = v88;
  *&v133[31] = v90;
  *&v133[39] = v87;
  v133[47] = 0;
  *v134 = v180[0];
  *&v134[3] = *(v180 + 3);
  v134[7] = v99;
  *&v134[8] = *v179;
  *&v134[11] = *&v179[3];
  *&v134[15] = v29;
  *&v134[23] = v31;
  *&v134[31] = v33;
  *&v134[39] = v35;
  v134[47] = 0;
  sub_23A646DB0(&v130, &qword_27DF9D148, &qword_23A6E4C70);
  *(__src + 9) = *v151;
  *(&__src[4] + 9) = *&v151[64];
  *(&__src[3] + 9) = *&v151[48];
  *(&__src[2] + 9) = *&v151[32];
  *(&__src[1] + 9) = *&v151[16];
  *(&__src[8] + 9) = *&v151[128];
  *(&__src[7] + 9) = *&v151[112];
  *(&__src[6] + 9) = *&v151[96];
  *(&__src[5] + 9) = *&v151[80];
  *(&__src[12] + 9) = *&v151[192];
  *(&__src[11] + 9) = *&v151[176];
  *(&__src[10] + 9) = *&v151[160];
  *(&__src[9] + 9) = *&v151[144];
  *(&__src[20] + 9) = *&v150[112];
  *(&__src[21] + 9) = *&v150[128];
  *(&__src[22] + 9) = *&v150[144];
  *(&__src[16] + 9) = *&v150[48];
  *(&__src[17] + 9) = *&v150[64];
  *(&__src[18] + 9) = *&v150[80];
  *(&__src[19] + 9) = *&v150[96];
  *(&__src[15] + 9) = *&v150[32];
  *(&__src[13] + 9) = *v150;
  *(&__src[14] + 9) = *&v150[16];
  *v134 = *&v151[144];
  *&v134[16] = *&v151[160];
  *&v134[32] = *&v151[176];
  v135 = *&v151[192];
  *&v132[48] = *&v151[80];
  *v133 = *&v151[96];
  *&v133[16] = *&v151[112];
  *&v133[32] = *&v151[128];
  *&v131[17] = *&v151[16];
  *v132 = *&v151[32];
  *&v132[16] = *&v151[48];
  *&v132[32] = *&v151[64];
  *&v131[1] = *v151;
  v143 = *&v150[112];
  v144 = *&v150[128];
  v145 = *&v150[144];
  v139 = *&v150[48];
  v140 = *&v150[64];
  *&__src[0] = 0;
  BYTE8(__src[0]) = 1;
  *(&__src[23] + 9) = v153;
  HIDWORD(__src[23]) = *(&v153 + 3);
  *&__src[24] = 0;
  BYTE8(__src[24]) = 1;
  v130 = 0;
  v131[0] = 1;
  v141 = *&v150[80];
  v142 = *&v150[96];
  v138 = *&v150[32];
  v136 = *v150;
  v137 = *&v150[16];
  *v146 = v153;
  *&v146[3] = *(&v153 + 3);
  v147 = 0;
  v148 = 1;
  sub_23A646D48(__src, &v106, &qword_27DF9D0B0, &qword_23A6E49B0);
  sub_23A646DB0(&v130, &qword_27DF9D0B0, &qword_23A6E49B0);
  memcpy(&v126[7], __src, 0x189uLL);
  v64 = v127;
  if (v92)
  {
    v65 = [objc_opt_self() mainScreen];
    [v65 bounds];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    v181.origin.x = v67;
    v181.origin.y = v69;
    v181.size.width = v71;
    v181.size.height = v73;
    CGRectGetHeight(v181);
  }

  sub_23A6DF554();
  sub_23A6DF0F4();
  *&v128[7] = v106;
  *&v128[23] = v107;
  *&v128[39] = v108;
  v74 = sub_23A6DF174();
  v75 = sub_23A6DF384();
  if (v92)
  {
    sub_23A6B8E40();
  }

  v76 = sub_23A6DF524();
  v77 = sub_23A6DF554();
  v79 = v78;
  *a1 = v93;
  *(a1 + 8) = 0;
  *(a1 + 16) = v64;
  memcpy((a1 + 17), v126, 0x190uLL);
  v80 = *&v128[16];
  *(a1 + 417) = *v128;
  *(a1 + 433) = v80;
  result = *&v128[32];
  *(a1 + 449) = *&v128[32];
  *(a1 + 464) = *&v128[47];
  *(a1 + 472) = v74;
  *(a1 + 480) = v75;
  *(a1 + 488) = v76;
  *(a1 + 496) = v77;
  *(a1 + 504) = v79;
  return result;
}

unint64_t sub_23A6B8E40()
{
  result = qword_27DF9D0B8;
  if (!qword_27DF9D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0B8);
  }

  return result;
}

uint64_t sub_23A6B8E94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_23A6B8F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6B97BC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23A6B8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6B97BC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23A6B8FC8()
{
  sub_23A6B97BC();
  sub_23A6DF304();
  __break(1u);
}

void sub_23A6B8FF0(uint64_t a1@<X8>)
{
  strcpy(a1, "Unable to Open");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0xD000000000000037;
  *(a1 + 24) = 0x800000023A6EB5B0;
  *(a1 + 32) = 0;
}

uint64_t sub_23A6B9038(uint64_t a1)
{
  v2 = sub_23A6B9768();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23A6B9084(uint64_t a1)
{
  v2 = sub_23A6B9768();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_23A6B90D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A6DF1D4();
  *a1 = result;
  return result;
}

uint64_t sub_23A6B9124@<X0>(void *a1@<X8>)
{
  result = sub_23A6DF1B4();
  *a1 = v3;
  return result;
}

id sub_23A6B9178()
{
  v0 = sub_23A6DF564();
  v19 = *(v0 - 8);
  v1 = *(v19 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23A6DF584();
  v17 = *(v5 - 8);
  v18 = v5;
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_23A6B9810();
  v11 = sub_23A6DF8B4();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  aBlock[4] = sub_23A6B985C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A672F1C;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  sub_23A6DF574();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A6B9998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D138, &qword_23A6E4C08);
  sub_23A6A64B0(&qword_27DF9D140, &qword_27DF9D138, &qword_23A6E4C08);
  sub_23A6DF9A4();
  MEMORY[0x23EE89DC0](0, v9, v4, v13);
  _Block_release(v13);

  (*(v19 + 8))(v4, v0);
  (*(v17 + 8))(v9, v18);
  return v14;
}

unint64_t sub_23A6B9478()
{
  result = qword_27DF9D0C0;
  if (!qword_27DF9D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0C0);
  }

  return result;
}

unint64_t sub_23A6B9518()
{
  result = qword_27DF9D0C8;
  if (!qword_27DF9D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0D0, &qword_23A6E4BE0);
    sub_23A6B95D0();
    sub_23A6A64B0(&qword_27DF9D108, &qword_27DF9D110, &qword_23A6E4C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0C8);
  }

  return result;
}

unint64_t sub_23A6B95D0()
{
  result = qword_27DF9D0D8;
  if (!qword_27DF9D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0E0, &qword_23A6E4BE8);
    sub_23A6B965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0D8);
  }

  return result;
}

unint64_t sub_23A6B965C()
{
  result = qword_27DF9D0E8;
  if (!qword_27DF9D0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0F0, &qword_23A6E4BF0);
    sub_23A6A64B0(&qword_27DF9D0F8, &qword_27DF9D100, &qword_23A6E4BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0E8);
  }

  return result;
}

unint64_t sub_23A6B9714()
{
  result = qword_27DF9D118;
  if (!qword_27DF9D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D118);
  }

  return result;
}

unint64_t sub_23A6B9768()
{
  result = qword_27DF9D120;
  if (!qword_27DF9D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D120);
  }

  return result;
}

unint64_t sub_23A6B97BC()
{
  result = qword_27DF9D128;
  if (!qword_27DF9D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D128);
  }

  return result;
}

unint64_t sub_23A6B9810()
{
  result = qword_27DF9CF98;
  if (!qword_27DF9CF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9CF98);
  }

  return result;
}

void sub_23A6B985C()
{
  v1 = *(v0 + 16);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 superview];

    if (v4)
    {
      v5 = [objc_opt_self() clearColor];
      [v4 setBackgroundColor_];
    }
  }

  v6 = [v1 superview];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 superview];

    if (v8)
    {
      [v8 setUserInteractionEnabled_];
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A6B9998()
{
  result = qword_27DF9D130;
  if (!qword_27DF9D130)
  {
    sub_23A6DF564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D130);
  }

  return result;
}

uint64_t sub_23A6B99F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23A6B9A04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DF214();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for DiscoveryRotatedView();
  sub_23A646D48(v1 + *(v14 + 24), v13, &qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23A6DF114();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_23A6DF894();
    v18 = sub_23A6DF364();
    sub_23A6DEC94();

    sub_23A6DF204();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t type metadata accessor for DiscoveryRotatedView()
{
  result = qword_27DFA2740;
  if (!qword_27DFA2740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6B9C58@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = sub_23A6DF354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D158, &qword_23A6E4CB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = (v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D160, &qword_23A6E4CC0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D168, &qword_23A6E4CC8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v33 - v22;
  *v12 = sub_23A6DF544();
  v12[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D170, &qword_23A6E4CD0);
  sub_23A6B9F6C(v1, v12 + *(v25 + 44));
  sub_23A6DF554();
  sub_23A6DF184();
  sub_23A69EED0(v12, v18, &qword_27DF9D158, &qword_23A6E4CB8);
  v26 = &v18[*(v14 + 44)];
  v27 = v39;
  *(v26 + 4) = v38;
  *(v26 + 5) = v27;
  *(v26 + 6) = v40;
  v28 = v35;
  *v26 = v34;
  *(v26 + 1) = v28;
  v29 = v37;
  *(v26 + 2) = v36;
  *(v26 + 3) = v29;
  v30 = &v23[*(v19 + 36)];
  sub_23A6DF534();
  v31 = sub_23A6DF384();
  v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D178, qword_23A6E4CD8) + 36)] = v31;
  sub_23A69EED0(v18, v23, &qword_27DF9D160, &qword_23A6E4CC0);
  sub_23A6DF344();
  sub_23A6BAFF4();
  sub_23A6DF494();
  (*(v3 + 8))(v7, v2);
  return sub_23A646DB0(v23, &qword_27DF9D168, &qword_23A6E4CC8);
}

uint64_t sub_23A6B9F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a1;
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1A0, &qword_23A6E4D58);
  v4 = *(v3 - 8);
  v146 = v3;
  v147 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v142 = &KeyPath - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1A8, &unk_23A6E4D60);
  v8 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145, v9);
  v143 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v144 = &KeyPath - v13;
  v14 = sub_23A6DF244();
  v149 = *(v14 - 8);
  v150 = v14;
  v15 = *(v149 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v139 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23A6DF354();
  v19 = *(v18 - 8);
  v156 = v18;
  v157 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v152 = &KeyPath - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DiscoveryRotatedView();
  v141 = *(v23 - 8);
  v24 = *(v141 + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D040, &qword_23A6E4928);
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26, v29);
  v31 = &KeyPath - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &KeyPath - v34;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1B0, &qword_23A6E4D70);
  v36 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v37);
  v39 = &KeyPath - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1B8, &qword_23A6E4D78);
  v41 = *(v40 - 8);
  v137 = v40;
  v138 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  KeyPath = &KeyPath - v44;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1C0, &unk_23A6E4D80);
  v45 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136, v46);
  v135 = &KeyPath - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v153 = &KeyPath - v50;
  MEMORY[0x28223BE20](v51, v52);
  v155 = &KeyPath - v53;
  *v39 = sub_23A6DF224();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v54 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D050, &qword_23A6E4938) + 44)];
  sub_23A6BB5D8(a1, &KeyPath - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v56 = swift_allocObject();
  sub_23A6BB63C(&KeyPath - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D058, &qword_23A6E4940);
  sub_23A6B7F34();
  sub_23A6DF514();
  v57 = v27[2];
  v57(v31, v35, v26);
  *v54 = 0;
  v54[8] = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D098, &qword_23A6E4960);
  v57(&v54[*(v58 + 48)], v31, v26);
  v59 = v27[1];
  v59(v35, v26);
  v59(v31, v26);
  v60 = sub_23A6DF174();
  v61 = sub_23A6DF384();
  v62 = v154;
  v63 = &v39[*(v154 + 36)];
  *v63 = v60;
  v63[8] = v61;
  v64 = v152;
  sub_23A6DF334();
  v65 = sub_23A6BB700();
  v66 = KeyPath;
  sub_23A6DF494();
  v67 = *(v157 + 8);
  v157 += 8;
  v140 = v67;
  v67(v64, v156);
  sub_23A646DB0(v39, &qword_27DF9D1B0, &qword_23A6E4D70);
  sub_23A6DEC54();
  v68 = sub_23A6DF674();
  v70 = v69;

  *&v171 = v68;
  *(&v171 + 1) = v70;
  *&v160 = v62;
  *(&v160 + 1) = v65;
  v141 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeConformance2();
  v154 = sub_23A677268();
  v71 = v135;
  v72 = v137;
  sub_23A6DF484();

  (*(v138 + 8))(v66, v72);
  v73 = v139;
  sub_23A6DF234();
  v74 = v153;
  sub_23A6DF124();
  (*(v149 + 8))(v73, v150);
  sub_23A646DB0(v71, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A6DF134();
  sub_23A646DB0(v74, &qword_27DF9D1C0, &unk_23A6E4D80);
  v139 = sub_23A6DF254();
  v163 = 1;
  sub_23A6DF4E4();
  v75 = sub_23A6DF444();
  v77 = v76;
  LOBYTE(v71) = v78;
  sub_23A6DF3B4();
  v79 = sub_23A6DF424();
  v81 = v80;
  LOBYTE(v24) = v82;

  sub_23A6B99F0(v75, v77, v71 & 1);

  sub_23A6DF4B4();
  v83 = sub_23A6DF414();
  v85 = v84;
  LOBYTE(v74) = v86;

  sub_23A6B99F0(v79, v81, v24 & 1);

  sub_23A6DF3D4();
  v87 = sub_23A6DF404();
  v135 = v88;
  v136 = v87;
  LOBYTE(v75) = v89;
  v138 = v90;
  sub_23A6B99F0(v83, v85, v74 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v150) = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  LODWORD(v149) = v75 & 1;
  LOBYTE(v171) = v75 & 1;
  LOBYTE(v160) = 0;
  v99 = v151[1];
  *&v171 = *v151;
  *(&v171 + 1) = v99;

  v100 = sub_23A6DF434();
  v102 = v101;
  LOBYTE(v85) = v103;
  sub_23A6DF3F4();
  v104 = sub_23A6DF424();
  v106 = v105;
  LOBYTE(v81) = v107;

  sub_23A6B99F0(v100, v102, v85 & 1);

  sub_23A6DF4C4();
  v108 = sub_23A6DF414();
  v110 = v109;
  LOBYTE(v62) = v111;
  v113 = v112;

  sub_23A6B99F0(v104, v106, v81 & 1);

  v114 = swift_getKeyPath();
  v115 = swift_getKeyPath();
  v116 = v62 & 1;
  LOBYTE(v171) = v62 & 1;
  v188 = 1;
  v117 = v135;
  v118 = v136;
  *&v160 = v136;
  *(&v160 + 1) = v135;
  v161[0] = v149;
  *&v161[1] = v158;
  *&v161[4] = *(&v158 + 3);
  v119 = v138;
  v120 = KeyPath;
  *&v161[8] = v138;
  *&v161[16] = KeyPath;
  *&v161[24] = 0x3FE0000000000000;
  v161[32] = v150;
  *&v161[36] = *(v191 + 3);
  *&v161[33] = v191[0];
  *&v161[40] = v92;
  *&v161[48] = v94;
  *&v161[56] = v96;
  *&v161[64] = v98;
  v161[72] = 0;
  *(&v187[1] + 7) = *v161;
  *(v187 + 7) = v160;
  v187[5] = *&v161[57];
  *(&v187[4] + 7) = *&v161[48];
  *(&v187[3] + 7) = *&v161[32];
  *(&v187[2] + 7) = *&v161[16];
  *v164 = v108;
  *&v164[8] = v110;
  v164[16] = v116;
  *&v164[20] = *(v190 + 3);
  *&v164[17] = v190[0];
  *&v164[24] = v113;
  *&v164[32] = v114;
  v164[40] = 1;
  *&v164[44] = *&v189[3];
  *&v164[41] = *v189;
  *&v164[48] = v115;
  *&v164[56] = 0x3FE0000000000000;
  *&v186[55] = *&v164[48];
  *&v186[39] = *&v164[32];
  *&v186[23] = *&v164[16];
  *&v186[7] = *v164;
  v185 = 1;
  LODWORD(v137) = 1;
  v165 = v108;
  *v166 = v110;
  v166[8] = v116;
  *&v166[12] = *(v190 + 3);
  *&v166[9] = v190[0];
  *&v166[16] = v113;
  *&v166[24] = v114;
  v166[32] = 1;
  *(v167 + 3) = *&v189[3];
  LODWORD(v167[0]) = *v189;
  *(v167 + 7) = v115;
  *(v167 + 15) = 0x3FE0000000000000;
  sub_23A646D48(&v160, &v171, &qword_27DF9D1F8, &qword_23A6E4E08);
  sub_23A646D48(v164, &v171, &qword_27DF9D200, &qword_23A6E4E10);
  sub_23A646DB0(&v165, &qword_27DF9D200, &qword_23A6E4E10);
  *&v171 = v118;
  *(&v171 + 1) = v117;
  LOBYTE(v172) = v149;
  *(&v172 + 1) = v158;
  DWORD1(v172) = *(&v158 + 3);
  *(&v172 + 1) = v119;
  *&v173 = v120;
  *(&v173 + 1) = 0x3FE0000000000000;
  LOBYTE(v174) = v150;
  *(&v174 + 1) = v191[0];
  DWORD1(v174) = *(v191 + 3);
  *(&v174 + 1) = v92;
  *&v175 = v94;
  *(&v175 + 1) = v96;
  *&v176 = v98;
  BYTE8(v176) = 0;
  sub_23A646DB0(&v171, &qword_27DF9D1F8, &qword_23A6E4E08);
  *&v164[41] = v187[2];
  *&v164[57] = v187[3];
  *&v164[73] = v187[4];
  *&v164[89] = v187[5];
  *&v164[9] = v187[0];
  *&v164[25] = v187[1];
  *&v164[105] = *v186;
  *&v164[168] = *&v186[63];
  *&v164[153] = *&v186[48];
  *&v164[137] = *&v186[32];
  *&v164[121] = *&v186[16];
  *&v166[17] = v187[1];
  *&v166[1] = v187[0];
  v167[3] = v187[5];
  v167[2] = v187[4];
  v167[1] = v187[3];
  v167[0] = v187[2];
  *v164 = 0;
  v164[8] = v137;
  *&v164[176] = 0;
  v164[184] = 1;
  v165 = 0;
  v166[0] = v137;
  v167[4] = *v186;
  *&v168[15] = *&v186[63];
  *v168 = *&v186[48];
  v167[6] = *&v186[32];
  v167[5] = *&v186[16];
  v169 = 0;
  v170 = 1;
  sub_23A646D48(v164, &v171, &qword_27DF9D1D8, &qword_23A6E4D90);
  sub_23A646DB0(&v165, &qword_27DF9D1D8, &qword_23A6E4D90);
  *(&v162[8] + 7) = *&v164[128];
  *(&v162[9] + 7) = *&v164[144];
  *(&v162[10] + 7) = *&v164[160];
  v162[11] = *&v164[169];
  *(&v162[4] + 7) = *&v164[64];
  *(&v162[5] + 7) = *&v164[80];
  *(&v162[6] + 7) = *&v164[96];
  *(&v162[7] + 7) = *&v164[112];
  *(v162 + 7) = *v164;
  *(&v162[1] + 7) = *&v164[16];
  *(&v162[2] + 7) = *&v164[32];
  *(&v162[3] + 7) = *&v164[48];
  *&v161[129] = v162[8];
  *&v161[145] = v162[9];
  *&v161[161] = v162[10];
  *&v161[177] = *&v164[169];
  *&v161[65] = v162[4];
  *&v161[81] = v162[5];
  *&v161[97] = v162[6];
  *&v161[113] = v162[7];
  *&v161[1] = v162[0];
  *&v161[17] = v162[1];
  *&v161[33] = v162[2];
  v160 = v139;
  v161[0] = v163;
  *&v161[49] = v162[3];
  v121 = v152;
  sub_23A6DF334();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1E0, &qword_23A6E4D98);
  v123 = sub_23A6A64B0(&qword_27DF9D1E8, &qword_27DF9D1E0, &qword_23A6E4D98);
  v124 = v142;
  sub_23A6DF494();
  v140(v121, v156);
  v181 = *&v161[144];
  v182 = *&v161[160];
  v183 = *&v161[176];
  v184 = v161[192];
  v177 = *&v161[80];
  v178 = *&v161[96];
  v179 = *&v161[112];
  v180 = *&v161[128];
  v173 = *&v161[16];
  v174 = *&v161[32];
  v175 = *&v161[48];
  v176 = *&v161[64];
  v171 = v160;
  v172 = *v161;
  sub_23A646DB0(&v171, &qword_27DF9D1E0, &qword_23A6E4D98);
  v125 = v151[1];
  *&v160 = *v151;
  *(&v160 + 1) = v125;
  v158 = v122;
  v159 = v123;
  swift_getOpaqueTypeConformance2();
  v126 = v143;
  v127 = v146;
  sub_23A6DF484();
  (*(v147 + 8))(v124, v127);
  v128 = v144;
  sub_23A6DF134();
  sub_23A646DB0(v126, &qword_27DF9D1A8, &unk_23A6E4D60);
  v129 = v155;
  v130 = v153;
  sub_23A646D48(v155, v153, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A646D48(v128, v126, &qword_27DF9D1A8, &unk_23A6E4D60);
  v131 = v148;
  sub_23A646D48(v130, v148, &qword_27DF9D1C0, &unk_23A6E4D80);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1F0, &qword_23A6E4DA0);
  sub_23A646D48(v126, v131 + *(v132 + 48), &qword_27DF9D1A8, &unk_23A6E4D60);
  sub_23A646DB0(v128, &qword_27DF9D1A8, &unk_23A6E4D60);
  sub_23A646DB0(v129, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A646DB0(v126, &qword_27DF9D1A8, &unk_23A6E4D60);
  return sub_23A646DB0(v130, &qword_27DF9D1C0, &unk_23A6E4D80);
}

unint64_t sub_23A6BAFF4()
{
  result = qword_27DF9D180;
  if (!qword_27DF9D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D168, &qword_23A6E4CC8);
    sub_23A6BB0AC();
    sub_23A6A64B0(&qword_27DF9D198, &qword_27DF9D178, qword_23A6E4CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D180);
  }

  return result;
}

unint64_t sub_23A6BB0AC()
{
  result = qword_27DF9D188;
  if (!qword_27DF9D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D160, &qword_23A6E4CC0);
    sub_23A6A64B0(&qword_27DF9D190, &qword_27DF9D158, &qword_23A6E4CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D188);
  }

  return result;
}

uint64_t sub_23A6BB164(uint64_t a1)
{
  v2 = sub_23A6DF114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B9A04(v7);
  sub_23A6DF104();
  v8 = (*(v3 + 8))(v7, v2);
  v9 = *(a1 + 24);
  return (*(a1 + 16))(v8);
}

uint64_t sub_23A6BB248@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DF4F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DF4E4();
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v2);
  v23 = sub_23A6DF504();

  (*(v3 + 8))(v7, v2);
  sub_23A6DF554();
  sub_23A6DF0F4();
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v13 = v30;
  v12 = v31;
  v14 = [objc_opt_self() systemDarkGrayColor];
  v15 = sub_23A6DF4D4();
  KeyPath = swift_getKeyPath();
  v25 = v9;
  v24 = v11;
  v17 = sub_23A6DF384();
  result = sub_23A6DF0D4();
  *a1 = v23;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v12;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
  *(a1 + 104) = v22;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_23A6BB44C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23A6BB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for DiscoveryRotatedView() + 24);

  return sub_23A6B782C(a5, v7);
}

void sub_23A6BB544()
{
  sub_23A6B7BF0();
  if (v0 <= 0x3F)
  {
    sub_23A6B7C40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23A6BB5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryRotatedView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6BB63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryRotatedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6BB6A0()
{
  v1 = *(type metadata accessor for DiscoveryRotatedView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23A6BB164(v2);
}

unint64_t sub_23A6BB700()
{
  result = qword_27DF9D1C8;
  if (!qword_27DF9D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D1B0, &qword_23A6E4D70);
    sub_23A6A64B0(&qword_27DF9D1D0, &qword_27DF9D048, &qword_23A6E4930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D1C8);
  }

  return result;
}

uint64_t sub_23A6BB7B8@<X0>(void *a1@<X8>)
{
  v9 = sub_23A6DE714();
  v10 = v2;

  MEMORY[0x23EE89BB0](95, 0xE100000000000000);

  v3 = sub_23A6DE724();
  v5 = v4;

  MEMORY[0x23EE89BB0](v3, v5);

  v6 = sub_23A6DE704();

  return sub_23A64FD74(v6, v7, v9, v10, a1);
}

unint64_t sub_23A6BB890@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x5050403020100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23A6BB8BC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_23A6BB908(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *LayoutBundleManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultManager];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

void *LayoutBundleManager.init()()
{
  v1 = [objc_opt_self() defaultManager];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_23A6BBA48(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_23A6DE1D4();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23A6BBBFC, 0, 0);
}

uint64_t sub_23A6BBBFC()
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v2 = sub_23A6DCE38();
  sub_23A69A270(v2, v1);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[17];
  if (v6 == 1)
  {
    sub_23A646DB0(v0[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v0[5];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0x286C6C6174736E69, 0xEE00293A6D6F7266, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  sub_23A6DE1C4();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v17 = v0[16];
    sub_23A646DB0(v0[6], &qword_27DF9CB68, &unk_23A6E4700);
    sub_23A69A270(v2, v17);
    if (v5(v17, 1, v3) == 1)
    {
      sub_23A646DB0(v0[16], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = v0[16];
      v37 = sub_23A6DECA4();
      v38 = sub_23A6DF884();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_23A63D000, v37, v38, "install - unable to install layout bundle", v39, 2u);
        MEMORY[0x23EE8A960](v39, -1, -1);
      }

      v40 = v0[16];

      (*(v4 + 8))(v40, v3);
    }

    sub_23A691B48();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    v43 = v0[16];
    v42 = v0[17];
    v45 = v0[14];
    v44 = v0[15];
    v47 = v0[12];
    v46 = v0[13];
    v49 = v0[10];
    v48 = v0[11];
    v50 = v0[9];
    v51 = v0[6];

    v52 = v0[1];
    v53 = *MEMORY[0x277D85DE8];

    return v52();
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];
    v55 = v0[14];
    v56 = v0[10];
    v21 = v0[8];
    v22 = v0[7];
    v23 = v0[5];
    v57 = v0[9];
    (*(v21 + 32))(v0[15], v0[6], v22);
    v54 = *(v23 + 16);
    v0[18] = v54;
    v24 = [v54 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v25 = *(v21 + 8);
    v0[19] = v25;
    v0[20] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v20, v22);
    sub_23A6DEC34();
    sub_23A6DE194();

    v25(v19, v22);
    sub_23A6DE164();
    sub_23A6DE194();

    v25(v18, v22);
    v26 = [v54 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v25(v20, v22);
    sub_23A6DEC34();
    sub_23A6DE194();

    v25(v19, v22);
    sub_23A6DE184();
    sub_23A6DE164();
    v25(v19, v22);
    sub_23A6DE194();

    v25(v18, v22);
    v27 = sub_23A6DE1B4();
    sub_23A6BCA70(v27, v28);

    v29 = [v54 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v25(v19, v22);
    sub_23A6DEC34();
    sub_23A6DE194();

    v25(v18, v22);
    v30 = swift_task_alloc();
    v0[21] = v30;
    *v30 = v0;
    v30[1] = sub_23A6BC2A4;
    v31 = v0[15];
    v32 = v0[9];
    v33 = v0[5];
    v34 = *MEMORY[0x277D85DE8];

    return sub_23A6BCF14(v31, v32);
  }
}

uint64_t sub_23A6BC2A4()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 56);
  v11 = *v1;
  *(*v1 + 176) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_23A6BC76C;
  }

  else
  {
    v7 = sub_23A6BC450;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A6BC450()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[5];
  sub_23A6BF1B4(v0[14], v0[10]);
  if (v1)
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[7];
    v4(v0[10], v7);
    v4(v5, v7);
    v4(v6, v7);
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
    v46 = v0[6];

    v17 = v0[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v0[18];
    v21 = v0[14];
    sub_23A6DE1B4();
    v22 = sub_23A6DF614();

    v0[2] = 0;
    LODWORD(v20) = [v20 removeItemAtPath:v22 error:v0 + 2];

    v23 = v0[2];
    if (v20)
    {
      v24 = v23;
    }

    else
    {
      v25 = v23;
      v26 = sub_23A6DE124();

      swift_willThrow();
    }

    v27 = v0[19];
    v28 = v0[20];
    v29 = v0[17];
    v31 = v0[14];
    v30 = v0[15];
    v41 = v0[16];
    v42 = v0[13];
    v32 = v0[10];
    v43 = v0[12];
    v44 = v0[11];
    v33 = v0[7];
    v45 = v0[9];
    v47 = v0[6];
    v34 = v0[5];
    v35 = sub_23A6DE1B4();
    (*(*v34 + 104))(v35);
    v36 = sub_23A6DE1B4();
    v38 = v37;
    v27(v32, v33);
    v27(v31, v33);
    v27(v30, v33);

    v39 = v0[1];
    v40 = *MEMORY[0x277D85DE8];

    return v39(v36, v38);
  }
}

uint64_t sub_23A6BC76C()
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[7];
  v2(v0[10], v5);
  v2(v3, v5);
  v2(v4, v5);
  v19 = v0[22];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = v0[6];

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_23A6BC8B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = sub_23A6DCE38();
  sub_23A69A270(v7, v6);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    v10 = sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v11 = sub_23A6507C0();
    v12 = sub_23A6DCFB0();
    sub_23A6DCFBC(v11 & 1, v1, 0x292865766F6D6572, 0xE800000000000000, v12, v13);

    v10 = (*(v9 + 8))(v6, v8);
  }

  v14 = (*(*v1 + 96))(v10);
  sub_23A6BCA70(v14, v15);

  return (*(*v1 + 104))(0, 0);
}

void sub_23A6BCA70(void *a1, void *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v43 - v8;
  if (!a2 || (v10 = *(v2 + 16), v11 = sub_23A6DF614(), v12 = [v10 fileExistsAtPath_], v11, !v12))
  {
LABEL_22:
    v42 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = sub_23A6DF614();
  v45[0] = 0;
  v14 = [v10 contentsOfDirectoryAtPath:v13 error:v45];

  v15 = v45[0];
  if (!v14)
  {
    v30 = v45[0];
LABEL_15:
    v31 = sub_23A6DE124();

    swift_willThrow();
LABEL_17:
    v33 = sub_23A6DCE38();
    sub_23A69A270(v33, v9);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v9, 1, v34) == 1)
    {

      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF884();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = a1;
        v41 = v39;
        v45[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_23A657E78(v40, a2, v45);
        _os_log_impl(&dword_23A63D000, v36, v37, "removeBundle - unable to remove the bundle folder %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x23EE8A960](v41, -1, -1);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v35 + 8))(v9, v34);
    }

    goto LABEL_22;
  }

  v43 = v9;
  v44 = v10;
  v16 = sub_23A6DF734();
  v17 = v15;

  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v16 + 40);
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
      }

      v22 = *(v20 - 1);
      v21 = *v20;
      v45[0] = a1;
      v45[1] = a2;

      MEMORY[0x23EE89BB0](47, 0xE100000000000000);

      MEMORY[0x23EE89BB0](v22, v21);

      v23 = sub_23A6DF614();

      v45[0] = 0;
      LODWORD(v22) = [v44 removeItemAtPath:v23 error:v45];

      if (!v22)
      {
        break;
      }

      ++v19;
      v24 = v45[0];
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_9;
      }
    }

    v32 = v45[0];

    v31 = sub_23A6DE124();

    swift_willThrow();
    v9 = v43;
    goto LABEL_17;
  }

LABEL_9:

  v25 = sub_23A6DF614();
  v45[0] = 0;
  v26 = [v44 removeItemAtPath:v25 error:v45];

  v27 = v45[0];
  v9 = v43;
  if (!v26)
  {
    v44 = v45[0];
    v30 = v45[0];
    goto LABEL_15;
  }

  v28 = *MEMORY[0x277D85DE8];

  v29 = v27;
}