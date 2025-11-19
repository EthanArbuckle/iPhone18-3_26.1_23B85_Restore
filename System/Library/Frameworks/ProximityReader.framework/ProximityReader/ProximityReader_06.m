uint64_t sub_23A6D6668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDriversLicenseRawDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6D58A4(v6, a3);
}

uint64_t static MobileDriversLicenseRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseRawDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D6850()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D68D8()
{
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D695C()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D6A28(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D6A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileDriversLicenseRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDriversLicenseRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

uint64_t static MobileDriversLicenseRawDataRequest.Response.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileDriversLicenseRawDataRequest.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileDriversLicenseRawDataRequest.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D6C34()
{
  result = qword_27DF9D590;
  if (!qword_27DF9D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D590);
  }

  return result;
}

uint64_t static MobileNationalIDCardRawDataRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardRawDataRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardRawDataRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardRawDataRequest.retainedElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardRawDataRequest() + 20));
}

uint64_t type metadata accessor for MobileNationalIDCardRawDataRequest()
{
  result = qword_27DFA5540;
  if (!qword_27DFA5540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardRawDataRequest() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.nonRetainedElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardRawDataRequest() + 24));
}

uint64_t MobileNationalIDCardRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardRawDataRequest() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardRawDataRequest.init(region:retainedElements:nonRetainedElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MobileNationalIDCardRawDataRequest();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static MobileNationalIDCardRawDataRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest();
  if ((sub_23A6D70C8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_23A6D70C8(v6, v7);
}

uint64_t sub_23A6D70C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
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
        sub_23A6D7510(v16, v13);
        sub_23A6D7510(v17, v8);
        sub_23A6D80EC(&qword_27DF9D5C0, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6D7574(v8);
        sub_23A6D7574(v13);
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

uint64_t MobileNationalIDCardRawDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - v8;
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = type metadata accessor for MobileNationalIDCardRawDataRequest();
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
      sub_23A6D7510(v14, v9);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v9);
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
      sub_23A6D7510(v19, v5);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D7574(v5);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_23A6D7510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D7574(uint64_t a1)
{
  v2 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileNationalIDCardRawDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
  sub_23A6DF5E4();
  v10 = type metadata accessor for MobileNationalIDCardRawDataRequest();
  v11 = *(v0 + *(v10 + 20));
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v14 = *(v20 + 72);
    do
    {
      sub_23A6D7510(v13, v9);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v9);
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
      sub_23A6D7510(v17, v5);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v5);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D7864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
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
      sub_23A6D7510(v15, v12);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v12);
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
      sub_23A6D7510(v20, v8);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6D7574(v8);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_23A6D7AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6D80EC(&qword_27DF9CEC0, MEMORY[0x277CC9698]);
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
      sub_23A6D7510(v16, v12);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v12);
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
      sub_23A6D7510(v20, v8);
      sub_23A6D80EC(&qword_27DF9D598, type metadata accessor for MobileNationalIDCardRawDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6D7574(v8);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D7D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6D70C8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_23A6D70C8(v7, v8);
}

uint64_t static MobileDocumentRequest<>.nationalIDCardRawData(region:retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardRawDataRequest();
  *(a4 + *(v9 + 20)) = a2;
  *(a4 + *(v9 + 24)) = a3;
}

unint64_t sub_23A6D7E9C()
{
  result = qword_27DF9D5A0;
  if (!qword_27DF9D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5A0);
  }

  return result;
}

uint64_t sub_23A6D7EF0(uint64_t a1)
{
  result = sub_23A6D80EC(&qword_27DF9D5A8, type metadata accessor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6D7F90(uint64_t a1)
{
  result = sub_23A6D80EC(&qword_27DF9CF80, type metadata accessor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6D8010()
{
  sub_23A6DE314();
  if (v0 <= 0x3F)
  {
    sub_23A6D8094();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6D8094()
{
  if (!qword_27DF9D5B8)
  {
    type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9D5B8);
    }
  }
}

uint64_t sub_23A6D80EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MobileNationalIDCardRawDataRequest.Element()
{
  result = qword_27DFA5750;
  if (!qword_27DFA5750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D831C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D83DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileNationalIDCardRawDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6D7510(v6, a3);
}

uint64_t static MobileNationalIDCardRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardRawDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D85C4()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D864C()
{
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D86D0()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D879C(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D879C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileNationalIDCardRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileNationalIDCardRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

uint64_t static MobileNationalIDCardRawDataRequest.Response.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobileNationalIDCardRawDataRequest.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobileNationalIDCardRawDataRequest.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6D89A8()
{
  result = qword_27DF9D5C8;
  if (!qword_27DF9D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5C8);
  }

  return result;
}

uint64_t MobilePhotoIDRawDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MobilePhotoIDRawDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobilePhotoIDRawDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobilePhotoIDRawDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D8B18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D8B18(v2, v3);
}

uint64_t sub_23A6D8B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
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
        sub_23A6D8EB4(v16, v13);
        sub_23A6D8EB4(v17, v8);
        sub_23A6D9724(&qword_27DF9D5F0);
        v19 = sub_23A6DF604();
        sub_23A6D8F18(v8);
        sub_23A6D8F18(v13);
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

uint64_t MobilePhotoIDRawDataRequest.hash(into:)()
{
  v1 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6D8EB4(v14, v10);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6D8EB4(v18, v5);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      result = sub_23A6D8F18(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6D8EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6D8F18(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobilePhotoIDRawDataRequest.hashValue.getter()
{
  v1 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v14, v10);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v17, v6);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D916C()
{
  v1 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  MEMORY[0x23EE8A1E0](*(*v0 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v15 = *(v21 + 72);
    do
    {
      sub_23A6D8EB4(v14, v10);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_23A6D8EB4(v18, v5);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      result = sub_23A6D8F18(v5);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_23A6D9358()
{
  v1 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v14, v10);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v10);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v16 = *(v12 + 16);
  if (v16)
  {
    v17 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_23A6D8EB4(v17, v6);
      sub_23A6D9724(&qword_27DF9D5D0);
      sub_23A6DF5E4();
      sub_23A6D8F18(v6);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6D9550(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_23A6D8B18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6D8B18(v2, v3);
}

uint64_t static MobileDocumentRequest<>.photoIDRawData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6D95EC()
{
  result = qword_27DF9D5D8;
  if (!qword_27DF9D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5D8);
  }

  return result;
}

unint64_t sub_23A6D9640(uint64_t a1)
{
  result = sub_23A6D9668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6D9668()
{
  result = qword_27DF9D5E0;
  if (!qword_27DF9D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5E0);
  }

  return result;
}

unint64_t sub_23A6D96C0()
{
  result = qword_27DF9D5E8;
  if (!qword_27DF9D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5E8);
  }

  return result;
}

uint64_t sub_23A6D9724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MobilePhotoIDRawDataRequest.Element();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MobilePhotoIDRawDataRequest.Element()
{
  result = qword_27DFA5CC0;
  if (!qword_27DFA5CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6D99F8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6D9AB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobilePhotoIDRawDataRequest.Element();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_23A6D8EB4(v6, a3);
}

uint64_t static MobilePhotoIDRawDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobilePhotoIDRawDataRequest.Element.hash(into:)()
{
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t MobilePhotoIDRawDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9CA0()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9D28()
{
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6D9DAC()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6D9E78(&qword_27DF9CC10, MEMORY[0x277D43AE8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6D9E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobilePhotoIDRawDataRequest.Response.responseData.getter()
{
  v1 = *v0;
  sub_23A693764(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobilePhotoIDRawDataRequest.Response.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_23A693764(v1, *(v0 + 24));
  return v1;
}

uint64_t static MobilePhotoIDRawDataRequest.Response.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_23A6A3EE8(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_23A6A3EE8(v2, v3, v4, v5);
}

uint64_t MobilePhotoIDRawDataRequest.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DE244();

  return sub_23A6DE244();
}

uint64_t MobilePhotoIDRawDataRequest.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23A6DFCE4();
  sub_23A6DE244();
  sub_23A6DE244();
  return sub_23A6DFD14();
}

unint64_t sub_23A6DA084()
{
  result = qword_27DF9D5F8;
  if (!qword_27DF9D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D5F8);
  }

  return result;
}

uint64_t sub_23A6DA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23A6DE784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_37;
    case 1:
      v11 = xmmword_23A6E6DA0;
      goto LABEL_36;
    case 2:
      v11 = xmmword_23A6E1D00;
      goto LABEL_36;
    case 3:
      v11 = xmmword_23A6E1CB0;
      goto LABEL_36;
    case 4:
      v11 = xmmword_23A6E6D90;
      goto LABEL_36;
    case 5:
      v11 = xmmword_23A6E6D80;
      goto LABEL_36;
    case 6:
      v11 = xmmword_23A6E4E50;
      goto LABEL_36;
    case 7:
      v11 = xmmword_23A6E6D70;
      goto LABEL_36;
    case 8:
      v11 = xmmword_23A6E6D60;
      goto LABEL_36;
    case 9:
      v11 = xmmword_23A6E1CA0;
      goto LABEL_36;
    case 10:
      v11 = xmmword_23A6E1D10;
      goto LABEL_36;
    case 11:
      v11 = xmmword_23A6E6CB0;
      goto LABEL_36;
    case 12:
      v11 = xmmword_23A6E46D0;
      goto LABEL_36;
    case 13:
      v11 = xmmword_23A6E2C30;
      goto LABEL_36;
    case 14:
      v11 = xmmword_23A6E6C90;
      goto LABEL_36;
    case 16:
      v11 = xmmword_23A6E6D50;
      goto LABEL_36;
    case 18:
      v11 = xmmword_23A6E6D40;
      goto LABEL_36;
    case 19:
      v11 = xmmword_23A6E6D30;
      goto LABEL_36;
    case 20:
    case 21:
    case 22:
    case 23:
      v11 = xmmword_23A6E6CE0;
      goto LABEL_36;
    case 24:
      *a2 = 0xD00000000000001FLL;
      *(a2 + 8) = 0x800000023A6EB4B0;
      *(a2 + 16) = 0;
      return result;
    case 25:
      v11 = xmmword_23A6E6D20;
      goto LABEL_36;
    case 26:
    case 27:
      v11 = xmmword_23A6E1CD0;
      goto LABEL_36;
    case 28:
      v11 = xmmword_23A6E1CE0;
      goto LABEL_36;
    case 29:
      v11 = xmmword_23A6E6D00;
      goto LABEL_36;
    case 30:
      v11 = xmmword_23A6E6CF0;
      goto LABEL_36;
    case 31:
      v11 = xmmword_23A6E1CC0;
      goto LABEL_36;
    case 32:
      v11 = xmmword_23A6E6D10;
      goto LABEL_36;
    case 33:
    case 34:
      v11 = xmmword_23A6E1CF0;
      goto LABEL_36;
    case 35:
      v11 = xmmword_23A6E6CC0;
      goto LABEL_36;
    case 36:
      v12 = MEMORY[0x277D43830];
      goto LABEL_21;
    case 37:
      v12 = MEMORY[0x277D43840];
LABEL_21:
      v13 = result;
      (*(v5 + 104))(v10, *v12, result);
      v14 = sub_23A6DE774();
      result = (*(v5 + 8))(v10, v13);
      *a2 = v14;
      *(a2 + 8) = 0;
      v15 = 2;
      goto LABEL_38;
    case 42:
      v11 = xmmword_23A6E6CA0;
      goto LABEL_36;
    default:
      v11 = xmmword_23A6E6CD0;
LABEL_36:
      *a2 = v11;
LABEL_37:
      v15 = 3;
LABEL_38:
      *(a2 + 16) = v15;
      return result;
  }
}

unint64_t sub_23A6DA3C0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >= 0xA)
  {
    sub_23A6DFA84();

    v2 = sub_23A6DE8E4();
    MEMORY[0x23EE89BB0](v2);

    result = sub_23A6DFB44();
    __break(1u);
  }

  else
  {
    *a2 = result + 1;
    *(a2 + 8) = 1;
  }

  return result;
}

unint64_t sub_23A6DA480@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

__n128 sub_23A6DA494@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE5E4();
  v8 = sub_23A6DE2C4();
  v55 = v9;
  v56 = v8;
  (*(v3 + 8))(v7, v2);
  v10 = sub_23A6DE584();
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_23A691B9C(v10, v11);
      if (v15 == v14)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    sub_23A691B9C(v10, v11);
  }

  else
  {
    if (!v12)
    {
      v13 = v11;
      sub_23A691B9C(v10, v11);
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v17 = sub_23A6DE584();
      v19 = v18;
      v54 = sub_23A6DE224();
      v21 = v20;
      sub_23A691B9C(v17, v19);
      goto LABEL_12;
    }

    v16 = v10;
    sub_23A691B9C(v10, v11);
    if (v16 != v16 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v54 = 0;
  v21 = 0;
LABEL_12:
  v22 = sub_23A6DE5F4();
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      sub_23A691B9C(v22, v23);
      if (v27 == v26)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    sub_23A691B9C(v22, v23);
  }

  else
  {
    if (!v24)
    {
      v25 = v23;
      sub_23A691B9C(v22, v23);
      if ((v25 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v29 = sub_23A6DE5F4();
      v31 = v30;
      v32 = sub_23A6DE224();
      v34 = v33;
      sub_23A691B9C(v29, v31);
      goto LABEL_23;
    }

    v28 = v22;
    sub_23A691B9C(v22, v23);
    if (v28 != v28 >> 32)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v32 = 0;
  v34 = 0;
LABEL_23:
  v35 = sub_23A6DE594();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = sub_23A6DE594();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = sub_23A6DE5C4();
  sub_23A6DA820(v42, &v61);
  v43 = sub_23A6DE5B4();
  v44 = sub_23A6DE5D4();
  v45 = sub_23A6DE604();
  if (v46)
  {
    v47 = 4;
  }

  else
  {
    sub_23A6DAA20(v45, MEMORY[0x277D439F0], "Unknown card effective state: %s", v58);
    v47 = v58[0];
  }

  v60 = v47;
  v48 = sub_23A6DE614();
  if (v49)
  {
    v50 = 4;
  }

  else
  {
    sub_23A6DAA20(v48, MEMORY[0x277D43A00], "Unknown card expiration state: %s", v58);
    v50 = v58[0];
  }

  v57 = v50;
  sub_23A644940(v56, v55, v54, v21, v32, v34, v39, v41, v58, &v61, v43 & 1, v44 & 1, &v60, &v57);
  v51 = *v59;
  *(a1 + 32) = v58[2];
  *(a1 + 48) = v51;
  *(a1 + 61) = *&v59[13];
  result = v58[1];
  *a1 = v58[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A6DA820@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v20 - v8;
  if (a1 >= 3)
  {
    v10 = sub_23A6DCDF0();
    sub_23A69A270(v10, v9);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      result = sub_23A69A2E0(v9);
    }

    else
    {
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = a1;
        v21 = v16;
        *v15 = 136315138;
        v17 = sub_23A6DF634();
        v19 = sub_23A657E78(v17, v18, &v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23A63D000, v13, v14, "Unknown read outcome: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      result = (*(v12 + 8))(v9, v11);
    }

    LOBYTE(a1) = 2;
  }

  *a2 = a1;
  return result;
}

uint64_t sub_23A6DAA20@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(unint64_t)@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v25 - v12;
  if (a1 >= 4)
  {
    v14 = sub_23A6DCDF0();
    sub_23A69A270(v14, v13);
    v15 = sub_23A6DECC4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      result = sub_23A69A2E0(v13);
    }

    else
    {
      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = a3;
        v20 = v19;
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;
        v22 = a2(a1);
        v24 = sub_23A657E78(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_23A63D000, v17, v18, v25, v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x23EE8A960](v21, -1, -1);
        MEMORY[0x23EE8A960](v20, -1, -1);
      }

      result = (*(v16 + 8))(v13, v15);
    }

    LOBYTE(a1) = 3;
  }

  *a4 = a1;
  return result;
}

char *sub_23A6DAC24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE5E4();
  v8 = sub_23A6DE2C4();
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  v11 = sub_23A6DE5A4();
  v12 = v11;
  if (v11 >> 62)
  {
    v39 = v11;
    v40 = sub_23A6DFB54();
    v12 = v39;
    v13 = v40;
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14._rawValue = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_15:

    v38._countAndFlagsBits = v8;
    v38._object = v10;
    return j___s15ProximityReader13VASReadResultV2id7entriesACSS_SayAC9ReadEntryVGtcfC(v38, v14);
  }

  v15 = v12;
  rawValue = MEMORY[0x277D84F90];
  result = sub_23A6DAEB4(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v42 = v10;
    v43 = v8;
    v17 = 0;
    v14._rawValue = rawValue;
    v18 = v15;
    v44 = a1;
    v45 = v15 & 0xC000000000000001;
    v19 = v15;
    v20 = v13;
    do
    {
      if (v45)
      {
        v21 = MEMORY[0x23EE89F80](v17, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = sub_23A6DE6D4();
      v25 = v24;
      v26 = sub_23A6DE6C4();
      v28 = v27;
      v29 = sub_23A6DE6B4();
      VASReadResult.ReadEntry.Status.init(rawValue:)(v29);
      v30 = v47[0];
      if (LOBYTE(v47[0]) == 8)
      {
        v30 = 0;
      }

      v46 = v30;
      sub_23A6939D8(v23, v25, v26, v28, &v46, v47);

      v31 = v47[0];
      v32 = v47[1];
      v33 = v48;
      v34 = v49;
      rawValue = v14._rawValue;
      v36 = *(v14._rawValue + 2);
      v35 = *(v14._rawValue + 3);
      if (v36 >= v35 >> 1)
      {
        v41 = v48;
        sub_23A6DAEB4((v35 > 1), v36 + 1, 1);
        v33 = v41;
        v14._rawValue = rawValue;
      }

      ++v17;
      *(v14._rawValue + 2) = v36 + 1;
      v37 = v14._rawValue + 40 * v36;
      *(v37 + 4) = v31;
      *(v37 + 5) = v32;
      *(v37 + 3) = v33;
      v37[64] = v34;
      v18 = v19;
    }

    while (v20 != v17);
    v8 = v43;
    v10 = v42;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_23A6DAEB4(char *a1, int64_t a2, char a3)
{
  result = sub_23A6DAED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A6DAED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D600, &unk_23A6E6DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A6DAFF0@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v1 = sub_23A6DE2F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEA54();
  v7 = sub_23A6DE2C4();
  v9 = v8;
  (*(v2 + 8))(v6, v1);
  v10 = sub_23A6DEA34();
  v12 = v11;
  v13 = sub_23A6DE224();
  v15 = v14;
  sub_23A691B9C(v10, v12);
  v16 = sub_23A6DEA44();
  v18 = v17;
  v19 = sub_23A6DE224();
  v21 = v20;
  sub_23A691B9C(v16, v18);
  v22 = sub_23A6DEA64();
  v24 = v23;
  v25 = sub_23A6DE224();
  v27 = v26;
  sub_23A691B9C(v22, v24);
  return sub_23A6456F8(v7, v9, v13, v15, v19, v21, v25, v27, v30);
}

uint64_t sub_23A6DB1A8@<X0>(char *a1@<X8>)
{
  v2 = sub_23A6DE294();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A6DE9D4();
  sub_23A6DE9C4();
  return sub_23A64ED08(v7, v6, a1);
}

uint64_t sub_23A6DB238@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v55 = &v50[-v6];
  v7 = sub_23A6DE784();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_23A6DE014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_23A6DE794();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DE7A4();
  result = (*(v19 + 88))(v23, v18);
  if (result == *MEMORY[0x277D438D8])
  {
    result = (*(v19 + 96))(v23, v18);
    *a1 = *v23;
    *(a1 + 8) = 0;
    return result;
  }

  v54 = v7;
  v25 = a1;
  if (result == *MEMORY[0x277D43890])
  {
    (*(v19 + 96))(v23, v18);
    v26 = *v23;
    sub_23A6DDFE4();
    v27 = sub_23A6DE004();
    (*(v13 + 8))(v17, v12);
    v28 = (v56 + 8);
    if (v26 == v27)
    {
      v29 = MEMORY[0x277D43848];
    }

    else
    {
      v29 = MEMORY[0x277D43840];
    }

    v33 = v54;
    (*(v56 + 104))(v11, *v29, v54);
    v32 = sub_23A6DE774();
    result = (*v28)(v11, v33);
    goto LABEL_10;
  }

  if (result == *MEMORY[0x277D43878])
  {
    v30 = v56;
    v31 = v54;
    (*(v56 + 104))(v11, *MEMORY[0x277D43830], v54);
    v32 = sub_23A6DE774();
    result = (*(v30 + 8))(v11, v31);
LABEL_10:
    *v25 = v32;
    *(v25 + 8) = 0;
    return result;
  }

  if (result == *MEMORY[0x277D43888])
  {
    *a1 = 0;
LABEL_14:
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D438D0])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D43880])
  {
    *a1 = 2;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D43898])
  {
    *a1 = 3;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438C8])
  {
    *a1 = 8;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438C0])
  {
    *a1 = 9;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438A8])
  {
    *a1 = 4;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438A0])
  {
    *a1 = 5;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438B0])
  {
    *a1 = 6;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x277D438B8])
  {
    *a1 = 7;
    goto LABEL_14;
  }

  v34 = sub_23A6DCDF0();
  v35 = v55;
  sub_23A69A270(v34, v55);
  v36 = sub_23A6DECC4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v53 = v36;
  if (v38(v35, 1) == 1)
  {
    sub_23A646DB0(v35, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v39 = v1;
    v40 = sub_23A6DECA4();
    v41 = sub_23A6DF884();
    v52 = v39;

    v42 = v40;
    v51 = v41;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v52;
      *(v43 + 4) = v52;
      *v44 = v45;
      v46 = v45;
      _os_log_impl(&dword_23A63D000, v42, v51, "Unknown store error: %@", v43, 0xCu);
      sub_23A646DB0(v44, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v44, -1, -1);
      MEMORY[0x23EE8A960](v43, -1, -1);
    }

    (*(v37 + 8))(v35, v53);
  }

  v47 = v54;
  v48 = v56;
  (*(v56 + 104))(v11, *MEMORY[0x277D43838], v54);
  v49 = sub_23A6DE774();
  (*(v48 + 8))(v11, v47);
  *a1 = v49;
  *(a1 + 8) = 0;
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_23A6DB930(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, unsigned __int8 *a8)
{
  v83 = a8;
  v80 = a7;
  v78 = a6;
  v79 = a1;
  v81 = a3;
  v82 = a4;
  v71 = sub_23A6DEAD4();
  v70 = *(v71 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v71, v11);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v69 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for PaymentCardTransactionRequest();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v67 - v34;
  v77 = *v83;
  v83 = a2;
  sub_23A646D48(a2, v20, &qword_27DF9CB80, &unk_23A6E6DC0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v36 = v35;
    sub_23A646DB0(v20, &qword_27DF9CB80, &unk_23A6E6DC0);
    sub_23A6DC2F8();
    v37 = sub_23A6DF8E4();
    v38 = v37;
    v76 = v37;
    if (a5)
    {
      v39 = *(*a5 + 104);
      v40 = v37;

      v42 = a5;
      v39(v41);
    }

    else
    {
      v42 = 0;
      v56 = sub_23A6DE324();
      (*(*(v56 - 8) + 56))(v31, 1, 1, v56);
      v57 = v38;
    }

    v35 = v36;
    sub_23A6DC344(v31, v36);
    v72 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0xE000000000000000;
    v43 = v42;
  }

  else
  {
    v43 = a5;
    sub_23A6DC6A8(v20, v26);
    v87 = *v26;
    v88 = *(v26 + 4);
    v44 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v84 = v87;
    LODWORD(v85) = v88;
    v45 = [v44 initWithDecimal_];
    v75 = v26[40];
    v46 = *(v26 + 4);
    v74 = *(v26 + 3);
    v47 = v21[8];
    v72 = v26[v21[9]];
    sub_23A646D48(&v26[v47], v35, &qword_27DF9C7B0, &qword_23A6E11D0);
    v48 = &v26[v21[10]];
    v49 = v48[32];
    v76 = v45;
    v73 = v46;
    if (v49 == 255)
    {
      v58 = v45;
    }

    else
    {
      v50 = *(v48 + 1);
      v84 = *v48;
      v85 = v50;
      v86 = v49;
      v51 = v68;
      sub_23A6DBF4C(v68);
      v52 = v70;
      v53 = v69;
      v54 = v71;
      (*(v70 + 32))(v69, v51, v71);
      LOBYTE(v84) = v26[40];
      v55 = v45;

      sub_23A6DC818(v53, &v84);
      (*(v52 + 8))(v53, v54);
    }

    sub_23A6DCD64(v26, type metadata accessor for PaymentCardTransactionRequest);
  }

  sub_23A6DE6A4();
  v59 = v35;
  sub_23A6DE694();
  if (v43)
  {
    v61 = v43[3];
    v60 = v43[4];
    v62 = v43[2];

    sub_23A6DC3B4(v63);
  }

  else
  {
    sub_23A6DC3B4(v78);
  }

  v64 = v76;
  v65 = sub_23A6DE834();

  sub_23A646DB0(v83, &qword_27DF9CB80, &unk_23A6E6DC0);
  sub_23A646DB0(v59, &qword_27DF9C7B0, &qword_23A6E11D0);
  return v65;
}

uint64_t sub_23A6DBF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE8D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v10);
  v14 = &v37 - v12;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = *(v1 + 32);
  if (v19 <= 2)
  {
    if (!*(v1 + 32))
    {
      *a1 = v15;
      v20 = MEMORY[0x277D43B68];
      goto LABEL_15;
    }

    if (v19 == 1)
    {
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      v20 = MEMORY[0x277D43B48];
      goto LABEL_15;
    }

    v23 = HIDWORD(v15);
    v37 = v16 >> 16;
    v38 = HIDWORD(v16);
    v39 = HIWORD(v16);
    v40 = v17 >> 16;
    v41 = HIDWORD(v17);
    v42 = HIWORD(v17);
    v24 = v11;
    (*(v4 + 104))(&v37 - v12, **(&unk_278B54520 + v15), v11, v13);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D620, &qword_23A6E6DD0);
    v26 = a1 + *(v25 + 48);
    v27 = *(v25 + 64);
    (*(v4 + 32))(a1, v14, v24);
    *v26 = v23;
    *(v26 + 4) = v16;
    v28 = v38;
    *(v26 + 6) = v37;
    *(v26 + 8) = v28;
    v29 = v40;
    *(v26 + 10) = v39;
    *(v26 + 12) = v17;
    *(v26 + 14) = v29;
    v30 = v42;
    *(v26 + 16) = v41;
    *(v26 + 18) = v30;
    *(a1 + v27) = v18;
    v22 = MEMORY[0x277D43B58];
LABEL_11:
    v31 = *v22;
    v32 = sub_23A6DEAD4();
    return (*(*(v32 - 8) + 104))(a1, v31, v32);
  }

  if (v19 == 3)
  {
    v21 = v11;
    (*(v4 + 104))(v8, **(&unk_278B54520 + v15), v11, v13);
    (*(v4 + 32))(a1, v8, v21);
    v22 = MEMORY[0x277D43B50];
    goto LABEL_11;
  }

  if (v19 == 4)
  {
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    v20 = MEMORY[0x277D43B40];
  }

  else if (v17 | v16 | v15 | v18)
  {
    v20 = MEMORY[0x277D43B70];
  }

  else
  {
    v20 = MEMORY[0x277D43B60];
  }

LABEL_15:
  v34 = *v20;
  v35 = sub_23A6DEAD4();
  v36 = *(*(v35 - 8) + 104);

  return v36(a1, v34, v35);
}

unint64_t sub_23A6DC2F8()
{
  result = qword_27DF9D608;
  if (!qword_27DF9D608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9D608);
  }

  return result;
}

uint64_t sub_23A6DC344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6DC3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for VASRequest.Merchant(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v32 = MEMORY[0x277D84F90];
    sub_23A6DFAD4();
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v27 = *(v8 + 72);
    v28 = v7;
    v29 = v6;
    do
    {
      sub_23A6B57B8(v15, v12);
      v23 = v12[1];
      v31 = *v12;
      sub_23A646D48(v12 + *(v7 + 20), v6, &qword_27DF9CB68, &unk_23A6E4700);
      v24 = sub_23A6DE1D4();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 48))(v6, 1, v24);
      v30 = v23;

      if (v26 == 1)
      {
        sub_23A646DB0(v6, &qword_27DF9CB68, &unk_23A6E4700);
      }

      else
      {
        sub_23A6DE154();
        (*(v25 + 8))(v6, v24);
      }

      v16 = v28;
      v17 = *(v28 + 28);
      v18 = *(v12 + *(v28 + 24));
      v20 = *(v12 + v17);
      v19 = *(v12 + v17 + 8);
      v21 = objc_allocWithZone(sub_23A6DE8A4());

      sub_23A6DE894();
      sub_23A6DCD64(v12, type metadata accessor for VASRequest.Merchant);
      sub_23A6DFAB4();
      v22 = *(v32 + 16);
      sub_23A6DFAE4();
      v7 = v16;
      sub_23A6DFAF4();
      sub_23A6DFAC4();
      v15 += v27;
      --v13;
      v6 = v29;
    }

    while (v13);
    return v32;
  }

  return result;
}

uint64_t sub_23A6DC6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardTransactionRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6DC70C(uint64_t a1)
{
  sub_23A6DE6A4();
  v2 = *(type metadata accessor for PaymentCardVerificationRequest() + 24);
  sub_23A6DE694();
  sub_23A6DC2F8();
  sub_23A6DF8E4();
  v3 = *a1;
  v4 = *(a1 + 8);

  sub_23A6DEC64();
  v7 = *(a1 + 16);
  v5 = sub_23A6DE834();
  sub_23A6DCD64(a1, type metadata accessor for PaymentCardVerificationRequest);
  return v5;
}

uint64_t sub_23A6DC818(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v42[-v7];
  v9 = sub_23A6DEAD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v42[-v18];
  v20 = *a2;
  v21 = *(v10 + 16);
  v21(&v42[-v18], a1, v9, v17);
  v22 = (*(v10 + 88))(v19, v9);
  if (v22 != *MEMORY[0x277D43B68] && v22 != *MEMORY[0x277D43B48])
  {
    if (v22 == *MEMORY[0x277D43B58])
    {
      (*(v10 + 96))(v19, v9);
      v24 = sub_23A6DE8D4();
      (*(*(v24 - 8) + 8))(v19, v24);
    }

    else if (v22 == *MEMORY[0x277D43B50])
    {
      (*(v10 + 8))(v19, v9);
    }

    else if (v22 != *MEMORY[0x277D43B40] && v22 != *MEMORY[0x277D43B60])
    {
      if (v22 == *MEMORY[0x277D43B70])
      {
        v50 = v20;
        v49 = 1;
        if (static PaymentCardTransactionRequest.TransactionType.== infix(_:_:)(&v50, &v49))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v27 = sub_23A6DCDF0();
        sub_23A646D48(v27, v8, &qword_27DF9D240, qword_23A6E1D30);
        v28 = sub_23A6DECC4();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v8, 1, v28) == 1)
        {
          sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
          (*(v10 + 8))(v19, v9);
        }

        else
        {
          (v21)(v14, a1, v9);
          v30 = sub_23A6DECA4();
          v31 = sub_23A6DF884();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v45 = v32;
            v46 = swift_slowAlloc();
            v51 = v46;
            *v32 = 136315138;
            sub_23A6DCD20(&qword_27DF9D610);
            v44 = v30;
            v33 = sub_23A6DFBD4();
            v35 = v34;
            v43 = v31;
            v36 = *(v10 + 8);
            v36(v14, v9);
            v37 = sub_23A657E78(v33, v35, &v51);

            v39 = v44;
            v38 = v45;
            *(v45 + 1) = v37;
            v40 = v38;
            _os_log_impl(&dword_23A63D000, v39, v43, "Unknown transaction description type: %s", v38, 0xCu);
            v41 = v46;
            __swift_destroy_boxed_opaque_existential_1Tm(v46);
            MEMORY[0x23EE8A960](v41, -1, -1);
            MEMORY[0x23EE8A960](v40, -1, -1);
          }

          else
          {

            v36 = *(v10 + 8);
            v36(v14, v9);
          }

          (*(v29 + 8))(v8, v28);
          v36(v19, v9);
        }
      }

      return 0;
    }
  }

  v48 = v20;
  v47 = 0;
  if (static PaymentCardTransactionRequest.TransactionType.== infix(_:_:)(&v48, &v47))
  {
LABEL_15:
    sub_23A6DCD20(&qword_27DF9D618);
    return sub_23A6DF5C4();
  }

  return 0;
}

uint64_t sub_23A6DCD20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23A6DEAD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A6DCD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A6DCE5C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  sub_23A6DECB4();
  v5 = sub_23A6DECC4();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_23A6DCF30(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23A6DCF90()
{
  result = MCGestaltIsInternalBuild();
  byte_27DFA5EE8 = result;
  return result;
}

void sub_23A6DCFBC(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27DFA5DE0 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27DFA5EE8;
  if (byte_27DFA5EE8 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x23EE89BB0](8250, 0xE200000000000000);
      MEMORY[0x23EE89BB0](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_23A6DECA4();
    v12 = sub_23A6DF8A4();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_23A6DF5F4();
      sub_23A677268();
      v14 = sub_23A6DF974();
      v16 = v15;

      v17 = sub_23A6DD3AC(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D628, &qword_23A6E6DD8);
      v41 = sub_23A6DF634();
      v42 = v24;
      MEMORY[0x23EE89BB0](45, 0xE100000000000000);
      v25 = MEMORY[0x23EE89B50](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x23EE89BB0](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x23EE89BB0](v28, v29);
      }

      else
      {
        MEMORY[0x23EE89BD0](v28, v29);

        v30 = sub_23A6DFBD4();
        MEMORY[0x23EE89BB0](v30);
      }

      v31 = sub_23A657E78(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_23A657E78(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_23A63D000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE8A960](v36, -1, -1);
      MEMORY[0x23EE8A960](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_23A6DD3AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_23A6DF6B4();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_23A6DF704();
}

uint64_t sub_23A6DD4A8()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  *(v0 + 32) = *v1;
  v3 = *(*v2 + 152);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_23A6DD5DC;

  return v7(v0 + 16);
}

uint64_t sub_23A6DD5DC(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A6DD73C, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_23A6DD73C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23A67EFA4();
  swift_allocError();
  *v3 = v1;
  *(v3 + 8) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t PaymentCardReaderStore.fetchStoredPaymentCardReadResultBatch(size:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_23A6DD7E4, 0, 0);
}

uint64_t sub_23A6DD7E4()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  v0[6] = *v1;
  v3 = *(*v2 + 160);

  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23A6DD91C;
  v6 = v0[4];
  v7 = v0[5];

  return (v9)(v6, v7, v0 + 2);
}

uint64_t sub_23A6DD91C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6DD73C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_23A6DDA84()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  *(v0 + 32) = *v1;
  v3 = *(*v2 + 168);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_23A6DDBB8;

  return v7(v0 + 16);
}

uint64_t sub_23A6DDBB8()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A6DDFE0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t PaymentCardReaderStore.resolveBatch(batchDeletionToken:)(void *a1)
{
  v2 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 40) = v2;
  return MEMORY[0x2822009F8](sub_23A6DDD28, 0, 0);
}

uint64_t sub_23A6DDD28()
{
  v1 = sub_23A67832C();
  v2 = *v1;
  v0[6] = *v1;
  v3 = *(*v2 + 176);

  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23A6DDE60;
  v7 = v0[4];
  v6 = v0[5];

  return (v9)(v7, v6, v0 + 2);
}

uint64_t sub_23A6DDE60(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A6DDFE0, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }
}